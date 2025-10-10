"""
Simplified Natural Language Agent FastAPI Service with Redis Chat Support and Kafka Integration
Provides chat endpoints with conversation history management and Kafka message processing
"""
import json
import logging
import asyncio
import os
from datetime import datetime, timezone
from typing import Dict, Any, Optional, List
from contextlib import asynccontextmanager

import redis
from fastapi import FastAPI, HTTPException, status
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel, Field
import uvicorn

from config import settings, get_redis_connection_params
from simple_agent import execute_simple_agent

# Import shared models
from models import ChatMessage, MessageRole, MessageMetadata

# Import Kafka processing
from message_processor import MessageProcessor

# Configure logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)

# Global connections and status
redis_client: Optional[redis.Redis] = None
chat_processor: Optional[MessageProcessor] = None
viz_processor: Optional[MessageProcessor] = None
chat_task: Optional[asyncio.Task] = None
viz_task: Optional[asyncio.Task] = None
neo4j_connected: bool = False
neo4j_stats: Dict[str, Any] = {}


class ChatRequest(BaseModel):
    """Request model for chat endpoint"""
    thread_id: str = Field(..., description="Unique conversation thread identifier")
    message: str = Field(..., description="User's message")
    user_id: Optional[str] = Field(None, description="Optional user identifier")


class ChatResponse(BaseModel):
    """Response model for chat endpoint"""
    success: bool
    thread_id: str
    message_count: int
    user_message: ChatMessage
    agent_message: ChatMessage


class ThreadInfo(BaseModel):
    """Thread metadata"""
    thread_id: str
    created_at: str
    last_activity: str
    message_count: int
    status: str = "active"


class ChatHistoryResponse(BaseModel):
    """Response model for chat history"""
    thread_id: str
    message_count: int
    messages: List[ChatMessage]


# Lifespan management
@asynccontextmanager
async def lifespan(app: FastAPI):
    """Lifespan event handler for FastAPI application"""
    global redis_client, chat_processor, viz_processor, chat_task, viz_task, neo4j_connected, neo4j_stats
    
    # Startup
    logger.info("Starting Natural Language Agent service with Kafka...")
    
    # Test Neo4j connection
    try:
        from langchain_neo4j import Neo4jGraph
        
        neo4j_uri = os.getenv('NEO4J_URI', 'bolt://localhost:7687')
        neo4j_user = os.getenv('NEO4J_USER', 'neo4j')
        neo4j_password = os.getenv('NEO4J_PASSWORD', 'password')
        neo4j_database = os.getenv('NEO4J_DATABASE', 'neo4j')
        
        logger.info(f"Testing Neo4j connection to {neo4j_uri}...")
        
        # Test connection
        graph = Neo4jGraph(
            url=neo4j_uri,
            username=neo4j_user,
            password=neo4j_password,
            database=neo4j_database,
            enhanced_schema=False
        )
        
        # Run test query
        result = graph.query("MATCH (n) RETURN count(n) as total")
        total_nodes = result[0]['total'] if result else 0
        
        # Get node statistics
        company_count = graph.query("MATCH (c:Company) RETURN count(c) as count")
        companies = company_count[0]['count'] if company_count else 0
        
        neo4j_connected = True
        neo4j_stats.update({
            'uri': neo4j_uri,
            'database': neo4j_database,
            'total_nodes': total_nodes,
            'companies': companies
        })
        
        logger.info(f"✅ Neo4j connection successful!")
        logger.info(f"   Database: {neo4j_database}")
        logger.info(f"   Total nodes: {total_nodes}")
        logger.info(f"   Companies: {companies}")
        
        # Get sample node types
        node_types = graph.query("MATCH (n) RETURN DISTINCT labels(n) as types LIMIT 5")
        if node_types:
            types_list = [str(record['types']) for record in node_types]
            logger.info(f"   Node types: {', '.join(types_list)}")
            neo4j_stats['node_types'] = types_list
            
    except Exception as e:
        neo4j_connected = False
        logger.error(f"❌ Failed to connect to Neo4j: {e}")
        logger.warning("Service will run without Neo4j connection - queries will fail")
    # Initialize Redis connection  
    try:
        redis_params = get_redis_connection_params()
        redis_client = redis.Redis(**redis_params)
        
        # Test Redis connection
        redis_client.ping()
        logger.info("Redis connection established successfully")
        
    except redis.ConnectionError as e:
        logger.error(f"Failed to connect to Redis: {e}")
        logger.warning("Service will run without Redis support")
    except Exception as e:
        logger.error(f"Unexpected error during startup: {e}")
    
    # Start Kafka consumers in background (2 processors for concurrent processing)
    try:
        # Chat processor - handles chat.requests topic
        chat_processor = MessageProcessor(
            topics=['chat.requests'],
            max_concurrent=5  # 5 concurrent chat threads
        )
        await chat_processor.startup()
        chat_task = asyncio.create_task(chat_processor.process_messages())
        logger.info("Chat processor started (max_concurrent=5)")

        # Visualization processor - handles visualization.requests topic
        viz_processor = MessageProcessor(
            topics=['visualization.requests'],
            max_concurrent=10  # 10 concurrent visualization requests
        )
        await viz_processor.startup()
        viz_task = asyncio.create_task(viz_processor.process_messages())
        logger.info("Visualization processor started (max_concurrent=10)")

        logger.info("Both Kafka processors running in parallel")

    except Exception as e:
        logger.error(f"Failed to start Kafka consumers: {e}")
        logger.warning("Service will run without Kafka support")
    
    yield
    
    # Shutdown
    logger.info("Shutting down Natural Language Agent service...")

    # Stop both Kafka processors
    if chat_task and not chat_task.done():
        chat_task.cancel()
        try:
            await chat_task
        except asyncio.CancelledError:
            pass

    if viz_task and not viz_task.done():
        viz_task.cancel()
        try:
            await viz_task
        except asyncio.CancelledError:
            pass

    if chat_processor:
        await chat_processor.shutdown()
        logger.info("Chat processor stopped")

    if viz_processor:
        await viz_processor.shutdown()
        logger.info("Visualization processor stopped")
    
    if redis_client:
        redis_client.close()
        logger.info("Redis connection closed")


# FastAPI app
app = FastAPI(
    title="CSE Natural Language Agent - Chat Service",
    description="Simplified chat service with Redis-backed conversation history",
    version="2.0.0",
    lifespan=lifespan
)

# Add CORS middleware
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


# Helper Functions
def store_message(message: ChatMessage) -> bool:
    """Store a message in Redis"""
    if not redis_client:
        logger.warning("Redis not available, message not stored")
        return False
    
    try:
        # Store message in thread list
        thread_key = f"chat:{message.thread_id}:messages"
        message_json = json.dumps(message.model_dump(mode='json', exclude_none=True), default=str)
        redis_client.rpush(thread_key, message_json)
        
        # Update thread metadata
        metadata_key = f"chat:{message.thread_id}:metadata"
        timestamp_str = message.timestamp.isoformat()
        
        # Use pipeline for atomic operations and reducing network operations by batching together transactions
        pipe = redis_client.pipeline()
        pipe.hset(metadata_key, mapping={
            "last_activity": timestamp_str,
            "status": "active"
        })
        pipe.hincrby(metadata_key, "message_count", 1)
        
        # Set TTL on both keys
        ttl_seconds = settings.redis_ttl_hours * 3600
        pipe.expire(thread_key, ttl_seconds)
        pipe.expire(metadata_key, ttl_seconds)
        
        # Execute pipeline
        pipe.execute()
        
        # Set created_at if this is the first message
        if not redis_client.hexists(metadata_key, "created_at"):
            redis_client.hset(metadata_key, "created_at", timestamp_str)
        
        return True
        
    except Exception as e:
        logger.error(f"Failed to store message: {e}")
        return False


def get_thread_messages(thread_id: str, limit: Optional[int] = None) -> List[ChatMessage]:
    """Retrieve messages for a thread"""
    if not redis_client:
        return []
    
    try:
        thread_key = f"chat:{thread_id}:messages"
        
        # Get messages (0 to -1 means all messages)
        if limit:
            messages_json = redis_client.lrange(thread_key, -limit, -1)
        else:
            messages_json = redis_client.lrange(thread_key, 0, -1)
        
        messages = []
        for msg_json in messages_json:
            try:
                msg_data = json.loads(msg_json)
                # Convert timestamp string back to datetime
                if 'timestamp' in msg_data:
                    msg_data['timestamp'] = datetime.fromisoformat(msg_data['timestamp'])
                messages.append(ChatMessage(**msg_data))
            except Exception as e:
                logger.warning(f"Failed to parse message: {e}")
                continue
        
        return messages
        
    except Exception as e:
        logger.error(f"Failed to retrieve messages: {e}")
        return []


def get_thread_metadata(thread_id: str) -> Optional[Dict[str, Any]]:
    """Get thread metadata"""
    if not redis_client:
        return None
    
    try:
        metadata_key = f"chat:{thread_id}:metadata"
        metadata = redis_client.hgetall(metadata_key)
        return metadata if metadata else None
    except Exception as e:
        logger.error(f"Failed to get thread metadata: {e}")
        return None




# API Endpoints
@app.get("/")
async def root():
    """Root endpoint with service information"""
    return {
        "service": "CSE Natural Language Agent - Chat Service",
        "version": "2.0.0",
        "description": "Simplified chat service with Redis-backed conversation history",
        "endpoints": {
            "chat": "/chat",
            "chat_history": "/chat/history/{thread_id}",
            "threads": "/chat/threads",
            "health": "/health"
        }
    }


@app.post("/chat", response_model=ChatResponse)
async def chat(request: ChatRequest):
    """
    Main chat endpoint - accepts user message and returns agent response
    """
    try:
        # Create user message
        user_message = ChatMessage(
            thread_id=request.thread_id,
            role=MessageRole.USER,
            content=request.message,
            metadata=MessageMetadata(user_id=request.user_id) if request.user_id else None
        )
        
        # Store user message
        store_message(user_message)
        
        # Generate agent response using LangGraph agent
        agent_content = await execute_simple_agent(request.thread_id, request.message, redis_client)
        
        # Create agent message
        agent_message = ChatMessage(
            thread_id=request.thread_id,
            role=MessageRole.AGENT,
            content=agent_content,
            metadata=MessageMetadata(
                agent_type="langgraph",
                model="gpt-4o-mini",
                processing_time=0.1  # Could calculate actual time if needed
            )
        )
        
        # Store agent message
        store_message(agent_message)
        
        # Get message count
        metadata = get_thread_metadata(request.thread_id)
        message_count = int(metadata.get("message_count", 2)) if metadata else 2
        
        return ChatResponse(
            success=True,
            thread_id=request.thread_id,
            message_count=message_count,
            user_message=user_message,
            agent_message=agent_message
        )
        
    except Exception as e:
        logger.error(f"Chat endpoint error: {e}")
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail=str(e)
        )


@app.get("/chat/history/{thread_id}", response_model=ChatHistoryResponse)
async def get_chat_history(thread_id: str, limit: Optional[int] = None):
    """
    Retrieve conversation history for a thread
    """
    try:
        messages = get_thread_messages(thread_id, limit)
        
        if not messages:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND,
                detail=f"No messages found for thread {thread_id}"
            )
        
        return ChatHistoryResponse(
            thread_id=thread_id,
            message_count=len(messages),
            messages=messages
        )
        
    except HTTPException:
        raise
    except Exception as e:
        logger.error(f"History retrieval error: {e}")
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail=str(e)
        )


@app.get("/chat/threads", response_model=List[ThreadInfo])
async def list_threads(pattern: str = "chat:*:metadata"):
    """
    List all active chat threads
    """
    if not redis_client:
        return []
    
    try:
        threads = []
        
        # Find all thread metadata keys
        for key in redis_client.scan_iter(match=pattern):
            # Extract thread_id from key
            thread_id = key.split(":")[1]
            
            # Get metadata
            metadata = redis_client.hgetall(key)
            
            if metadata:
                threads.append(ThreadInfo(
                    thread_id=thread_id,
                    created_at=metadata.get("created_at", ""),
                    last_activity=metadata.get("last_activity", ""),
                    message_count=int(metadata.get("message_count", 0)),
                    status=metadata.get("status", "active")
                ))
        
        # Sort by last activity (most recent first)
        threads.sort(key=lambda x: x.last_activity, reverse=True)
        
        return threads
        
    except Exception as e:
        logger.error(f"Thread listing error: {e}")
        return []


@app.get("/health")
async def health_check():
    """
    Health check endpoint
    """
    health_status = {
        "service": "healthy",
        "timestamp": datetime.now(timezone.utc).isoformat(),
        "environment": settings.environment,
        "neo4j": {
            "connected": neo4j_connected,
            "stats": neo4j_stats if neo4j_connected else {}
        },
        "redis": {
            "connected": False,
            "host": settings.redis_host,
            "port": settings.redis_port,
            "db": settings.redis_db
        }
    }
    
    # Check Redis connection
    if redis_client:
        try:
            redis_client.ping()
            health_status["redis"]["connected"] = True
            
            # Get some stats
            info = redis_client.info()
            health_status["redis"]["used_memory_human"] = info.get("used_memory_human", "unknown")
            health_status["redis"]["connected_clients"] = info.get("connected_clients", 0)
            
        except Exception as e:
            health_status["redis"]["error"] = str(e)
            health_status["service"] = "degraded"
    else:
        health_status["service"] = "degraded"
        health_status["redis"]["error"] = "Redis client not initialized"
    
    # Check Neo4j connection status
    if not neo4j_connected:
        health_status["service"] = "degraded"
        health_status["neo4j"]["error"] = "Neo4j connection failed during startup"
    
    # Return appropriate HTTP status
    if health_status["service"] != "healthy":
        raise HTTPException(status_code=status.HTTP_503_SERVICE_UNAVAILABLE, detail=health_status)
    
    return health_status


@app.delete("/chat/thread/{thread_id}")
async def delete_thread(thread_id: str):
    """
    Delete a chat thread and all its messages
    """
    if not redis_client:
        raise HTTPException(
            status_code=status.HTTP_503_SERVICE_UNAVAILABLE,
            detail="Redis not available"
        )
    
    try:
        thread_key = f"chat:{thread_id}:messages"
        metadata_key = f"chat:{thread_id}:metadata"
        
        # Delete both keys
        deleted_count = redis_client.delete(thread_key, metadata_key)
        
        if deleted_count == 0:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND,
                detail=f"Thread {thread_id} not found"
            )
        
        return {
            "success": True,
            "message": f"Thread {thread_id} deleted successfully",
            "keys_deleted": deleted_count
        }
        
    except HTTPException:
        raise
    except Exception as e:
        logger.error(f"Thread deletion error: {e}")
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail=str(e)
        )


if __name__ == "__main__":

    uvicorn.run(
        "server:app",
        host=settings.host,
        port=settings.port,
        reload=settings.is_development,
        log_level="info"
    )