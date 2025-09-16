"""
Chat handler using Kafka for job distribution and Redis for response delivery.
"""
import sys
import os
import json
import uuid
import logging
from typing import Optional, Dict, Any
from datetime import datetime

# Add utils path for container environment
sys.path.insert(0, '/utils')

from utils.kafka_utils import SimpleKafkaProducer
from utils.redis_utils import SimpleRedisPubSub

logger = logging.getLogger(__name__)


class ChatHandler:
    """
    Handles chat requests by sending jobs to Kafka and waiting for responses on Redis.
    """
    
    def __init__(self):
        """Initialize handler with Kafka and Redis clients."""
        # Get configuration from environment or use defaults
        kafka_servers = os.getenv('KAFKA_BOOTSTRAP_SERVERS', 'kafka:29092')
        redis_url = os.getenv('REDIS_URL', 'redis://redis:6379')
        
        self.kafka = SimpleKafkaProducer(bootstrap_servers=kafka_servers)
        self.redis = SimpleRedisPubSub(url=redis_url)
        self.is_connected = False
    
    async def startup(self) -> None:
        """
        Initialize connections on service startup.
        Should be called in FastAPI lifespan.
        """
        try:
            await self.kafka.start()
            await self.redis.connect()
            self.is_connected = True
            logger.info("Chat handler initialized successfully")
        except Exception as e:
            logger.error(f"Failed to initialize chat handler: {e}")
            raise
    
    async def shutdown(self) -> None:
        """
        Cleanup connections on service shutdown.
        Should be called in FastAPI lifespan.
        """
        try:
            await self.kafka.stop()
            await self.redis.close()
            self.is_connected = False
            logger.info("Chat handler shut down successfully")
        except Exception as e:
            logger.error(f"Error during chat handler shutdown: {e}")
    
    async def send_chat_request(
        self, 
        thread_id: str,
        user_id: str,
        message: str,
        timeout: float = 300.0  # Increased to 5 minutes for complex Neo4j queries
    ) -> Dict[str, Any]:
        """
        Send a chat request via Kafka and wait for response on Redis.
        
        Args:
            thread_id: Conversation thread ID
            user_id: User ID making the request
            message: User's message
            timeout: Maximum time to wait for response (seconds)
            
        Returns:
            Response dictionary containing the agent's response
            
        Raises:
            TimeoutError: If no response received within timeout
            RuntimeError: If handler not connected
        """
        if not self.is_connected:
            raise RuntimeError("Chat handler not connected. Call startup() first.")
        
        # Generate unique correlation ID for request-response matching
        correlation_id = str(uuid.uuid4())
        
        # Create request payload
        request = {
            'correlation_id': correlation_id,
            'thread_id': thread_id,
            'user_id': user_id,
            'message': message,
            'timestamp': datetime.utcnow().isoformat()
        }
        
        logger.info(f"Sending chat request: thread={thread_id}, correlation={correlation_id}")
        
        try:
            # Send job to Kafka for processing
            # Using thread_id as partition key for message ordering per conversation
            await self.kafka.send_message(
                topic='chat.requests',
                value=request,
                key=thread_id.encode('utf-8')
            )
            
            # Wait for response on Redis channel
            channel = f"response:{correlation_id}"
            response_msg = await self.redis.subscribe_and_wait(channel, timeout=timeout)
            
            if response_msg is None:
                raise TimeoutError(f"No response received within {timeout} seconds")
            
            # Parse response (data is already decoded by Redis client)
            response_data = json.loads(response_msg['data'])
            
            logger.info(f"Received response for correlation={correlation_id}")
            
            return {
                'thread_id': response_data.get('thread_id', thread_id),
                'response': response_data.get('response', ''),
                'timestamp': response_data.get('timestamp', datetime.utcnow().isoformat()),
                'processing_time_ms': response_data.get('processing_time_ms')
            }
            
        except TimeoutError:
            logger.warning(f"Timeout waiting for response: correlation={correlation_id}")
            raise
        except Exception as e:
            logger.error(f"Error processing chat request: {e}")
            raise
    
    async def health_check(self) -> Dict[str, Any]:
        """
        Check health of Kafka and Redis connections.
        
        Returns:
            Health status dictionary
        """
        health = {
            'kafka': 'unknown',
            'redis': 'unknown',
            'overall': 'unhealthy'
        }
        
        try:
            # Check Kafka by attempting to get metadata
            if self.kafka.producer:
                # This is a lightweight operation
                metadata = self.kafka.producer._client.cluster
                if metadata:
                    health['kafka'] = 'healthy'
        except Exception as e:
            logger.error(f"Kafka health check failed: {e}")
            health['kafka'] = 'unhealthy'
        
        try:
            # Check Redis with ping
            if self.redis.client:
                await self.redis.client.ping()
                health['redis'] = 'healthy'
        except Exception as e:
            logger.error(f"Redis health check failed: {e}")
            health['redis'] = 'unhealthy'
        
        # Overall health
        if health['kafka'] == 'healthy' and health['redis'] == 'healthy':
            health['overall'] = 'healthy'
        
        return health