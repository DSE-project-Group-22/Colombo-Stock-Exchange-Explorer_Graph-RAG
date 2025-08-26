"""
Natural Language Agent FastAPI Service
Main service that provides REST APIs for text-to-Cypher queries using both
Neo4j GraphRAG and LangChain implementations
"""
import logging
import asyncio
from typing import Dict, Any, Optional
from contextlib import asynccontextmanager

from fastapi import FastAPI, HTTPException, Query
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel, Field
import uvicorn

from config import settings
from agents.neo4j_graphrag_agent import get_agent as get_graphrag_agent
from agents.langchain_agent import get_agent as get_langchain_agent

# Configure logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)

# Global agent instances
graphrag_agent = None
langchain_agent = None


@asynccontextmanager
async def lifespan(app: FastAPI):
    """Lifespan event handler for FastAPI application"""
    global graphrag_agent, langchain_agent
    
    # Startup
    logger.info("Starting Natural Language Agent service...")
    try:
        # Initialize agents
        if settings.validate_openai_key():
            graphrag_agent = get_graphrag_agent()
            langchain_agent = get_langchain_agent()
            logger.info("Both agents initialized successfully")
        else:
            logger.warning("OpenAI API key not configured. Agents will not be available.")
    except Exception as e:
        logger.error(f"Failed to initialize agents: {e}")
    
    yield
    
    # Shutdown
    logger.info("Shutting down Natural Language Agent service...")
    if graphrag_agent:
        graphrag_agent.close()
    if langchain_agent:
        langchain_agent.close()


# FastAPI app
app = FastAPI(
    title="CSE Natural Language Agent",
    description="Text-to-Cypher query service for Colombo Stock Exchange data",
    version="1.0.0",
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


# Pydantic models for request/response
class QueryRequest(BaseModel):
    query: str = Field(..., description="Natural language query")
    top_k: int = Field(default=10, ge=1, le=100, description="Maximum number of results")


class CypherRequest(BaseModel):
    cypher: str = Field(..., description="Raw Cypher query")


class QueryResponse(BaseModel):
    success: bool
    query: Optional[str] = None
    cypher_query: Optional[str] = None
    results: Optional[Any] = None
    answer: Optional[str] = None
    count: Optional[int] = None
    agent_type: Optional[str] = None
    error: Optional[str] = None


# API Endpoints
@app.get("/")
async def root():
    """Root endpoint with service information"""
    return {
        "service": "CSE Natural Language Agent",
        "version": "1.0.0",
        "description": "Text-to-Cypher query service for Colombo Stock Exchange data",
        "endpoints": {
            "graphrag_query": "/query/graphrag",
            "langchain_query": "/query/langchain",
            "raw_cypher": "/cypher/{agent_type}",
            "schema": "/schema/{agent_type}",
            "health": "/health"
        }
    }


@app.post("/query/graphrag", response_model=QueryResponse)
async def query_graphrag(request: QueryRequest):
    """
    Execute natural language query using Neo4j GraphRAG agent
    """
    if not graphrag_agent:
        raise HTTPException(
            status_code=503,
            detail="Neo4j GraphRAG agent not available. Check OpenAI API key configuration."
        )
    
    try:
        result = await graphrag_agent.query(request.query, request.top_k)
        return QueryResponse(**result)
    except Exception as e:
        logger.error(f"GraphRAG query error: {e}")
        raise HTTPException(status_code=500, detail=str(e))


@app.post("/query/langchain", response_model=QueryResponse)
async def query_langchain(request: QueryRequest):
    """
    Execute natural language query using LangChain agent
    """
    if not langchain_agent:
        raise HTTPException(
            status_code=503,
            detail="LangChain agent not available. Check OpenAI API key configuration."
        )
    
    try:
        result = await langchain_agent.query(request.query)
        return QueryResponse(**result)
    except Exception as e:
        logger.error(f"LangChain query error: {e}")
        raise HTTPException(status_code=500, detail=str(e))


@app.post("/cypher/{agent_type}", response_model=QueryResponse)
async def execute_raw_cypher(agent_type: str, request: CypherRequest):
    """
    Execute raw Cypher query using specified agent
    """
    agent = None
    if agent_type == "graphrag" and graphrag_agent:
        agent = graphrag_agent
    elif agent_type == "langchain" and langchain_agent:
        agent = langchain_agent
    else:
        raise HTTPException(
            status_code=400,
            detail=f"Invalid agent type '{agent_type}' or agent not available"
        )
    
    try:
        result = agent.execute_raw_cypher(request.cypher)
        return QueryResponse(**result)
    except Exception as e:
        logger.error(f"Raw Cypher execution error: {e}")
        raise HTTPException(status_code=500, detail=str(e))


@app.get("/schema/{agent_type}")
async def get_schema(agent_type: str):
    """
    Get schema information from specified agent
    """
    agent = None
    if agent_type == "graphrag" and graphrag_agent:
        agent = graphrag_agent
    elif agent_type == "langchain" and langchain_agent:
        agent = langchain_agent
    else:
        raise HTTPException(
            status_code=400,
            detail=f"Invalid agent type '{agent_type}' or agent not available"
        )
    
    try:
        return agent.get_schema_info()
    except Exception as e:
        logger.error(f"Schema retrieval error: {e}")
        raise HTTPException(status_code=500, detail=str(e))


@app.get("/health")
async def health_check():
    """
    Comprehensive health check for both agents and dependencies
    """
    health_status = {
        "service": "healthy",
        "timestamp": str(asyncio.get_event_loop().time()),
        "environment": settings.environment,
        "neo4j_uri": settings.effective_neo4j_uri,
        "openai_configured": settings.validate_openai_key(),
        "agents": {}
    }
    
    try:
        # Check GraphRAG agent
        if graphrag_agent:
            health_status["agents"]["graphrag"] = graphrag_agent.health_check()
        else:
            health_status["agents"]["graphrag"] = {"status": "not_initialized"}
        
        # Check LangChain agent
        if langchain_agent:
            health_status["agents"]["langchain"] = langchain_agent.health_check()
        else:
            health_status["agents"]["langchain"] = {"status": "not_initialized"}
        
        # Determine overall service health
        agent_healths = []
        for agent_name, agent_health in health_status["agents"].items():
            if isinstance(agent_health, dict):
                agent_healths.append(agent_health.get("overall_status", "unhealthy") == "healthy")
        
        if not agent_healths or not any(agent_healths):
            health_status["service"] = "unhealthy"
        
    except Exception as e:
        health_status["service"] = "unhealthy"
        health_status["error"] = str(e)
    
    # Return appropriate HTTP status
    if health_status["service"] != "healthy":
        raise HTTPException(status_code=503, detail=health_status)
    
    return health_status


@app.get("/compare")
async def compare_agents(
    query: str = Query(..., description="Natural language query to test with both agents"),
    top_k: int = Query(default=10, ge=1, le=100, description="Maximum number of results")
):
    """
    Compare responses from both agents for the same query
    """
    if not graphrag_agent or not langchain_agent:
        raise HTTPException(
            status_code=503,
            detail="Both agents must be available for comparison"
        )
    
    try:
        # Execute query with both agents
        graphrag_result = await graphrag_agent.query(query, top_k)
        langchain_result = await langchain_agent.query(query)
        
        return {
            "query": query,
            "graphrag_result": graphrag_result,
            "langchain_result": langchain_result,
            "comparison": {
                "both_successful": graphrag_result.get("success", False) and langchain_result.get("success", False),
                "graphrag_count": graphrag_result.get("count", 0),
                "langchain_count": langchain_result.get("count", 0)
            }
        }
    except Exception as e:
        logger.error(f"Agent comparison error: {e}")
        raise HTTPException(status_code=500, detail=str(e))


if __name__ == "__main__":
    uvicorn.run(
        "agent:app",
        host=settings.host,
        port=settings.port,
        reload=settings.is_development,
        log_level="info"
    )