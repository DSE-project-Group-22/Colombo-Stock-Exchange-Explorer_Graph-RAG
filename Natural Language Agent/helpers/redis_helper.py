"""
Redis helper functions for chat history and message management.
Simple functions without complex abstractions.
"""
import json
import logging
from datetime import datetime
from typing import List, Dict, Any, Optional

from config import settings

logger = logging.getLogger(__name__)


async def store_chat_message(redis_client, thread_id: str, role: str, content: str, timestamp: Optional[datetime] = None) -> bool:
    """
    Store a chat message in Redis.
    
    Args:
        redis_client: Redis async client
        thread_id: Thread identifier
        role: Message role ('user', 'assistant', 'system')
        content: Message content
        timestamp: Message timestamp (defaults to now)
    
    Returns:
        True if successful, False otherwise
    """
    if not redis_client:
        logger.warning("Redis client not available")
        return False
    
    try:
        if timestamp is None:
            timestamp = datetime.utcnow()
        
        message = {
            "role": role,
            "content": content,
            "timestamp": timestamp.isoformat()
        }
        
        thread_key = f"chat:{thread_id}:messages"
        message_json = json.dumps(message, default=str)
        await redis_client.rpush(thread_key, message_json)
        
        # Update thread metadata
        metadata_key = f"chat:{thread_id}:metadata"
        await redis_client.hset(metadata_key, mapping={
            "last_activity": timestamp.isoformat(),
            "status": "active"
        })
        
        # Set TTL
        ttl_seconds = settings.redis_ttl_hours * 3600
        await redis_client.expire(thread_key, ttl_seconds)
        await redis_client.expire(metadata_key, ttl_seconds)
        
        return True
        
    except Exception as e:
        logger.error(f"Failed to store message: {e}")
        return False


async def get_chat_history(redis_client, thread_id: str) -> str:
    """
    Get formatted chat history as a transcript.
    
    Args:
        redis_client: Redis async client
        thread_id: Thread identifier
    
    Returns:
        Formatted transcript string like "Human: message\nAgent: response"
    """
    if not redis_client:
        logger.warning("Redis client not available")
        return ""
    
    try:
        thread_key = f"chat:{thread_id}:messages"
        messages = await redis_client.lrange(thread_key, 0, -1)
        
        if not messages:
            return ""
        
        transcript = []
        for msg_json in messages:
            try:
                msg = json.loads(msg_json)
                role = msg.get('role', '')
                content = msg.get('content', '')
                
                if role in ['user', 'Human']:
                    transcript.append(f"Human: {content}")
                elif role in ['assistant', 'agent', 'Agent']:
                    transcript.append(f"Agent: {content}")
                    
            except Exception as e:
                logger.warning(f"Failed to parse message: {e}")
                continue
        
        return "\n".join(transcript)
        
    except Exception as e:
        logger.error(f"Failed to get chat history: {e}")
        return ""


async def get_chat_messages(redis_client, thread_id: str) -> List[Dict[str, Any]]:
    """
    Get chat messages as a list of dictionaries.
    
    Args:
        redis_client: Redis async client
        thread_id: Thread identifier
    
    Returns:
        List of message dictionaries
    """
    if not redis_client:
        return []
    
    try:
        thread_key = f"chat:{thread_id}:messages"
        messages = await redis_client.lrange(thread_key, 0, -1)
        
        result = []
        for msg_json in messages:
            try:
                msg = json.loads(msg_json)
                result.append(msg)
            except Exception as e:
                logger.warning(f"Failed to parse message: {e}")
                continue
        
        return result
        
    except Exception as e:
        logger.error(f"Failed to get messages: {e}")
        return []


def serialize_neo4j_dates(obj: Any) -> Any:
    """
    Convert Neo4j Date/DateTime objects to strings for JSON serialization.
    This prevents msgpack serialization errors when storing in Redis.
    
    Args:
        obj: Any object that might contain Neo4j date types
    
    Returns:
        Object with dates converted to strings
    """
    try:
        # Use JSON serialization with default=str to handle Neo4j types
        return json.loads(json.dumps(obj, default=str))
    except Exception as e:
        logger.warning(f"Failed to serialize Neo4j dates: {e}")
        return obj


async def publish_response(redis_client, correlation_id: str, response_data: Dict[str, Any]) -> bool:
    """
    Publish a response to Redis pub/sub channel.
    
    Args:
        redis_client: Redis async client
        correlation_id: Correlation ID for the response
        response_data: Response data to publish
    
    Returns:
        True if successful, False otherwise
    """
    if not redis_client:
        logger.warning("Redis client not available")
        return False
    
    try:
        # Serialize any Neo4j dates in the response
        serialized_data = serialize_neo4j_dates(response_data)
        
        channel = f"response:{correlation_id}"
        message = json.dumps(serialized_data, default=str)
        
        await redis_client.publish(channel, message)
        logger.info(f"Published response to channel: {channel}")
        
        return True
        
    except Exception as e:
        logger.error(f"Failed to publish response: {e}")
        return False


async def update_thread_metadata(redis_client, thread_id: str, metadata: Dict[str, Any]) -> bool:
    """
    Update thread metadata in Redis.
    
    Args:
        redis_client: Redis async client
        thread_id: Thread identifier
        metadata: Metadata to update
    
    Returns:
        True if successful, False otherwise
    """
    if not redis_client:
        return False
    
    try:
        metadata_key = f"chat:{thread_id}:metadata"
        
        # Convert all values to strings for Redis
        string_metadata = {k: str(v) for k, v in metadata.items()}
        
        await redis_client.hset(metadata_key, mapping=string_metadata)
        
        # Set TTL
        ttl_seconds = settings.redis_ttl_hours * 3600
        await redis_client.expire(metadata_key, ttl_seconds)
        
        return True
        
    except Exception as e:
        logger.error(f"Failed to update metadata: {e}")
        return False