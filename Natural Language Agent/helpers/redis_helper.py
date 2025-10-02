"""
Redis helper functions for chat history and message management.
Simple functions without complex abstractions.
"""
import json
import logging
from datetime import datetime, timezone
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


async def publish_intermediate_step(
    redis_client,
    correlation_id: str,
    user_id: str,
    thread_id: str,
    step_type: str,
    content: Dict[str, Any],
    step_number: int = 0,
    metadata: Optional[Dict[str, Any]] = None
) -> bool:
    """
    Publish intermediate processing step to multiple Redis channels.
    Publishes to correlation, user, and thread channels for maximum flexibility.
    
    Args:
        redis_client: Redis async client
        correlation_id: Request correlation ID
        user_id: User ID making the request
        thread_id: Thread identifier
        step_type: Type of step ("agent_thinking", "tool_call", "tool_result", "error")
        content: Step content (message, tool info, etc.)
        step_number: Sequential step number within request
        metadata: Optional metadata about the step
    
    Returns:
        True if successful, False otherwise
    """
    if not redis_client:
        logger.warning("Redis client not available for publishing steps")
        return False
    
    try:
        # Create step message
        step_data = {
            "correlation_id": correlation_id,
            "user_id": user_id,
            "thread_id": thread_id,
            "step_number": step_number,
            "step_type": step_type,
            "content": serialize_neo4j_dates(content),  # Handle Neo4j dates
            "timestamp": datetime.now(timezone.utc).isoformat(),
            "metadata": metadata or {}
        }
        
        # Serialize message
        message = json.dumps(step_data, default=str)
        
        # Publish to correlation-specific channel only
        channel = f"steps:{correlation_id}"
        
        try:
            await redis_client.publish(channel, message)
            logger.debug(f"Published step to channel: {channel}")
            publish_count = 1
        except Exception as e:
            logger.warning(f"Failed to publish to channel {channel}: {e}")
            publish_count = 0
        
        # Log the step for monitoring
        if step_type == "agent_thinking":
            logger.info(f"[STEP] {correlation_id}: Agent thinking - {content.get('message', '')[:100]}")
        elif step_type == "tool_call":
            logger.info(f"[STEP] {correlation_id}: Calling tool {content.get('tool_name', 'unknown')}")
        elif step_type == "tool_result":
            logger.info(f"[STEP] {correlation_id}: Tool result received")
        elif step_type == "error":
            logger.warning(f"[STEP] {correlation_id}: Error - {content.get('error', 'unknown')}")
        
        return publish_count > 0
        
    except Exception as e:
        logger.error(f"Failed to publish intermediate step: {e}")
        return False