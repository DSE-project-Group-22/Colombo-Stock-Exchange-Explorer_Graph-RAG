"""
Simple, reusable Redis pub/sub utilities for all microservices.
Uses redis.asyncio (redis-py) with latest async patterns.
"""
import json
import logging
from typing import Optional, Dict, Any
import redis.asyncio as redis

logger = logging.getLogger(__name__)


class SimpleRedisPubSub:
    """
    Redis client for publishing messages and managing connections.
    Used by API Gateway and NL Agent for pub/sub operations.
    
    Example usage:
        redis_client = SimpleRedisPubSub()
        await redis_client.connect()
        
        # Publish a message
        await redis_client.publish('channel:1', {'data': 'hello'})
        
        # Get raw client for direct operations (used by response_subscriber.py)
        client = redis_client.get_client()
        await client.hset('key', 'field', 'value')
        
        await redis_client.close()
    """
    
    def __init__(self, url: str = 'redis://redis:6379'):
        """
        Initialize Redis pub/sub client.
        
        Args:
            url: Redis connection URL
        """
        self.url = url
        self.client: Optional[redis.Redis] = None
    
    async def connect(self) -> None:
        """Connect to Redis server."""
        self.client = redis.from_url(
            self.url,
            decode_responses=True  # Automatically decode responses to strings
        )
        # Test connection
        await self.client.ping()
        logger.info(f"Connected to Redis at {self.url}")
    
    async def publish(self, channel: str, message: Any) -> int:
        """
        Publish a message to a Redis channel.
        
        Args:
            channel: Channel name to publish to
            message: Message to publish (dict will be JSON serialized, str passed as-is)
            
        Returns:
            Number of subscribers that received the message
        """
        if not self.client:
            raise RuntimeError("Not connected. Call connect() first.")
        
        # Serialize dict/list to JSON, pass strings as-is
        if isinstance(message, (dict, list)):
            message = json.dumps(message)
        
        subscriber_count = await self.client.publish(channel, message)
        logger.debug(f"Published to {channel}, {subscriber_count} subscribers received")
        return subscriber_count
    
    
    async def close(self) -> None:
        """Close Redis connection and cleanup."""
        if self.client:
            await self.client.aclose()
            self.client = None
            logger.info("Redis connection closed")
    
    # Convenience method to get the raw Redis client for advanced operations
    def get_client(self) -> redis.Redis:
        """
        Get the raw Redis client for operations not covered by this wrapper.
        
        Returns:
            The underlying redis.asyncio client
        """
        if not self.client:
            raise RuntimeError("Not connected. Call connect() first.")
        return self.client
