"""
Simple, reusable Redis pub/sub utilities for all microservices.
Uses redis.asyncio (redis-py) with latest async patterns.
"""
import json
import logging
import asyncio
from typing import Optional, Dict, Any
import redis.asyncio as redis

logger = logging.getLogger(__name__)


class SimpleRedisPubSub:
    """
    Simple, reusable Redis pub/sub client for any microservice.
    
    Example usage:
        redis_client = SimpleRedisPubSub()
        await redis_client.connect()
        
        # Publish a message
        await redis_client.publish('channel:1', {'data': 'hello'})
        
        # Subscribe and wait for one message
        message = await redis_client.subscribe_and_wait('channel:1', timeout=30)
        
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
        self._pubsub: Optional[redis.client.PubSub] = None
    
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
    
    async def subscribe_and_wait(
        self, 
        channel: str, 
        timeout: float = 30.0
    ) -> Optional[Dict[str, Any]]:
        """
        Subscribe to a channel and wait for exactly one message.
        
        Args:
            channel: Channel name to subscribe to
            timeout: Maximum time to wait for a message (seconds)
            
        Returns:
            Message dictionary with 'channel', 'data', 'pattern', 'type' keys
            Returns None if timeout occurs
            
        Example:
            message = await redis_client.subscribe_and_wait('response:123')
            if message:
                data = json.loads(message['data'])  # If data is JSON
        """
        if not self.client:
            raise RuntimeError("Not connected. Call connect() first.")
        
        pubsub = self.client.pubsub()
        await pubsub.subscribe(channel)
        
        try:
            # Wait for a message with timeout
            async def get_message():
                async for message in pubsub.listen():
                    # Skip subscription confirmation messages
                    if message['type'] == 'message':
                        logger.debug(f"Received message from {channel}")
                        return message
            
            # Apply timeout
            try:
                message = await asyncio.wait_for(get_message(), timeout=timeout)
                return message
            except asyncio.TimeoutError:
                logger.warning(f"Timeout waiting for message on {channel}")
                return None
                
        finally:
            # Always unsubscribe and close pubsub
            await pubsub.unsubscribe(channel)
            await pubsub.close()
    
    async def subscribe_multiple(self, *channels: str):
        """
        Subscribe to multiple channels for continuous listening.
        Use get_message() to receive messages.
        
        Args:
            channels: Channel names to subscribe to
            
        Example:
            await redis_client.subscribe_multiple('channel:1', 'channel:2')
            async for message in redis_client.listen():
                print(message)
        """
        if not self.client:
            raise RuntimeError("Not connected. Call connect() first.")
        
        if self._pubsub:
            await self._pubsub.close()
        
        self._pubsub = self.client.pubsub(ignore_subscribe_messages=True)
        await self._pubsub.subscribe(*channels)
        logger.info(f"Subscribed to channels: {channels}")
    
    async def listen(self):
        """
        Listen for messages on subscribed channels.
        Must call subscribe_multiple() first.
        
        Yields:
            Message dictionaries
        """
        if not self._pubsub:
            raise RuntimeError("Not subscribed. Call subscribe_multiple() first.")
        
        async for message in self._pubsub.listen():
            if message['type'] == 'message':
                yield message
    
    async def close(self) -> None:
        """Close Redis connection and cleanup."""
        if self._pubsub:
            await self._pubsub.close()
            self._pubsub = None
        
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


# Convenience function for simple publish operations
async def publish_to_redis(
    channel: str, 
    message: Dict[str, Any], 
    url: str = 'redis://redis:6379'
) -> None:
    """
    Convenience function to publish a single message to Redis.
    
    Args:
        channel: Target channel
        message: Message dictionary to publish
        url: Redis connection URL
    """
    redis_client = SimpleRedisPubSub(url)
    await redis_client.connect()
    try:
        await redis_client.publish(channel, message)
    finally:
        await redis_client.close()


# Convenience function for simple subscribe operations
async def wait_for_redis_message(
    channel: str,
    timeout: float = 30.0,
    url: str = 'redis://redis:6379'
) -> Optional[Dict[str, Any]]:
    """
    Convenience function to wait for a single message from Redis.
    
    Args:
        channel: Channel to subscribe to
        timeout: Maximum wait time in seconds
        url: Redis connection URL
        
    Returns:
        Message dictionary or None if timeout
    """
    redis_client = SimpleRedisPubSub(url)
    await redis_client.connect()
    try:
        return await redis_client.subscribe_and_wait(channel, timeout)
    finally:
        await redis_client.close()