"""
Chat handler using Kafka for job distribution and Redis for response delivery.
"""
import sys
import os
import json
import uuid
import logging
from typing import Optional, Dict, Any
from datetime import datetime, timezone

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
    
    async def send_chat_request_async(
        self,
        thread_id: str,
        user_id: str,
        message: str
    ) -> str:
        """
        Send a chat request via Kafka and return immediately with correlation_id.
        
        Args:
            thread_id: Conversation thread ID
            user_id: User ID making the request
            message: User's message
            
        Returns:
            correlation_id for tracking the request
            
        Raises:
            RuntimeError: If handler not connected
        """
        if not self.is_connected:
            raise RuntimeError("Chat handler not connected. Call startup() first.")
        
        # Generate unique correlation ID for request-response matching
        correlation_id = str(uuid.uuid4())
        timestamp = datetime.now(timezone.utc)
        
        # Store request information for tracking
        await self.store_request_info(correlation_id, user_id, thread_id, timestamp)
        
        # Create request payload
        request = {
            'correlation_id': correlation_id,
            'thread_id': thread_id,
            'user_id': user_id,
            'message': message,
            'timestamp': timestamp.isoformat()
        }
        
        logger.info(f"Sending async chat request: thread={thread_id}, correlation={correlation_id}")
        
        try:
            # Send job to Kafka for processing
            await self.kafka.send_message(
                topic='chat.requests',
                value=request,
                key=thread_id.encode('utf-8')
            )
            
            return correlation_id
            
        except Exception as e:
            # Clean up request tracking on failure
            try:
                request_key = f"request:{correlation_id}"
                await self.redis.client.delete(request_key)
            except:
                pass  # Best effort cleanup
            logger.error(f"Error sending async chat request: {e}")
            raise
    
    async def store_request_info(
        self,
        correlation_id: str,
        user_id: str,
        thread_id: str,
        timestamp: datetime
    ) -> None:
        """
        Store request tracking information in Redis.
        
        Args:
            correlation_id: Unique request identifier
            user_id: User making the request
            thread_id: Conversation thread ID
            timestamp: Request timestamp
        """
        try:
            request_data = {
                'user_id': user_id,
                'thread_id': thread_id,
                'status': 'processing',
                'timestamp': timestamp.isoformat()
            }
            
            # Store with 15-minute TTL
            key = f"request:{correlation_id}"
            await self.redis.client.hset(key, mapping=request_data)
            await self.redis.client.expire(key, 900)  # 15 minutes
            
        except Exception as e:
            logger.error(f"Failed to store request info: {e}")
            raise
    
    async def get_response(self, correlation_id: str) -> Optional[Dict[str, Any]]:
        """
        Retrieve cached response for a correlation_id.
        
        Args:
            correlation_id: Request identifier
            
        Returns:
            Response data if available, None otherwise
        """
        try:
            # Check if request exists
            request_key = f"request:{correlation_id}"
            request_info = await self.redis.client.hgetall(request_key)
            
            if not request_info:
                return None
            
            # Check for cached response
            response_key = f"response:{correlation_id}"
            response_data = await self.redis.client.hgetall(response_key)
            
            if response_data:
                return {
                    'status': 'completed',
                    'response': response_data.get('response', ''),
                    'thread_id': request_info.get('thread_id'),
                    'timestamp': response_data.get('timestamp'),
                    'processing_time_ms': int(response_data.get('processing_time_ms', 0))
                }
            else:
                return {
                    'status': request_info.get('status', 'processing'),
                    'thread_id': request_info.get('thread_id'),
                    'timestamp': request_info.get('timestamp')
                }
                
        except Exception as e:
            logger.error(f"Error retrieving response: {e}")
            return None
    
    async def get_request_status(self, correlation_id: str) -> Optional[Dict[str, str]]:
        """
        Get simple status of a request.
        
        Args:
            correlation_id: Request identifier
            
        Returns:
            Status information if request exists
        """
        try:
            request_key = f"request:{correlation_id}"
            request_info = await self.redis.client.hgetall(request_key)
            
            if not request_info:
                return None
                
            return {
                'status': request_info.get('status', 'processing'),
                'timestamp': request_info.get('timestamp', ''),
                'thread_id': request_info.get('thread_id', '')
            }
            
        except Exception as e:
            logger.error(f"Error getting request status: {e}")
            return None
    
    async def get_thread_messages(self, thread_id: str) -> Optional[Dict[str, Any]]:
        """
        Retrieve all messages for a specific thread from Redis.
        
        Args:
            thread_id: Thread identifier
            
        Returns:
            Dictionary containing thread messages and metadata
        """
        try:
            # Get messages
            thread_key = f"chat:{thread_id}:messages"
            messages_json = await self.redis.client.lrange(thread_key, 0, -1)
            
            if not messages_json:
                return None
            
            # Parse messages
            messages = []
            for msg_json in messages_json:
                try:
                    msg_data = json.loads(msg_json)
                    messages.append(msg_data)
                except Exception as e:
                    logger.warning(f"Failed to parse message: {e}")
                    continue
            
            # Get thread metadata
            metadata_key = f"chat:{thread_id}:metadata"
            metadata = await self.redis.client.hgetall(metadata_key)
            
            return {
                'thread_id': thread_id,
                'messages': messages,
                'message_count': len(messages),
                'created_at': metadata.get('created_at'),
                'last_activity': metadata.get('last_activity'),
                'status': metadata.get('status', 'active')
            }
            
        except Exception as e:
            logger.error(f"Error retrieving thread messages: {e}")
            return None
    
    async def health_check(self) -> Dict[str, Any]:
        """
        Check health of Kafka and Redis connections.
        
        Returns:
            Health status dictionary
        """
        health = {
            'kafka': 'unknown',
            'redis': 'unknown',
            'overall': 'unhealthy',
            'active_requests': 0
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
                
                # Count active requests
                count = 0
                async for key in self.redis.client.scan_iter(match="request:*"):
                    count += 1
                health['active_requests'] = count
                
        except Exception as e:
            logger.error(f"Redis health check failed: {e}")
            health['redis'] = 'unhealthy'
        
        # Overall health
        if health['kafka'] == 'healthy' and health['redis'] == 'healthy':
            health['overall'] = 'healthy'
        
        return health