"""
Response subscriber service that listens for chat responses on Redis and caches them.
Runs as a background service in the API Gateway.
"""
import sys
import os
import json
import logging
import asyncio
from typing import Optional, Dict, Any
from datetime import datetime, timezone

# Add utils path for container environment
sys.path.insert(0, '/utils')

from utils.redis_utils import SimpleRedisPubSub

logger = logging.getLogger(__name__)


class ResponseSubscriber:
    """
    Background service that subscribes to Redis response channels and caches responses
    for retrieval by the polling endpoints.
    """
    
    def __init__(self):
        """Initialize response subscriber with Redis client."""
        redis_url = os.getenv('REDIS_URL', 'redis://redis:6379')
        self.redis = SimpleRedisPubSub(url=redis_url)
        self.is_running = False
        self._subscriber_task: Optional[asyncio.Task] = None
    
    async def startup(self) -> None:
        """
        Initialize connections on service startup.
        """
        try:
            await self.redis.connect()
            logger.info("Response subscriber initialized successfully")
        except Exception as e:
            logger.error(f"Failed to initialize response subscriber: {e}")
            raise
    
    async def shutdown(self) -> None:
        """
        Cleanup connections and stop subscriber on service shutdown.
        """
        self.is_running = False
        
        # Cancel subscriber task
        if self._subscriber_task and not self._subscriber_task.done():
            self._subscriber_task.cancel()
            try:
                await self._subscriber_task
            except asyncio.CancelledError:
                pass
        
        try:
            await self.redis.close()
            logger.info("Response subscriber shut down successfully")
        except Exception as e:
            logger.error(f"Error during response subscriber shutdown: {e}")
    
    async def start_subscribing(self) -> None:
        """
        Start the response subscription service.
        This should be run as a background task.
        """
        self.is_running = True
        self._subscriber_task = asyncio.create_task(self._subscribe_to_responses())
        logger.info("Response subscriber started")
    
    async def _subscribe_to_responses(self) -> None:
        """
        Main subscription loop - subscribe to response:* pattern and process responses.
        """
        logger.info("Starting response subscription loop...")
        
        try:
            # Subscribe to all response channels
            pubsub = self.redis.client.pubsub()
            await pubsub.psubscribe('response:*')
            
            while self.is_running:
                try:
                    # Wait for message with timeout to allow graceful shutdown
                    message = await asyncio.wait_for(
                        pubsub.get_message(ignore_subscribe_messages=True, timeout=1.0),
                        timeout=2.0
                    )
                    
                    if message and message['type'] == 'pmessage':
                        await self._process_response_message(message)
                        
                except asyncio.TimeoutError:
                    # Normal timeout - continue loop
                    continue
                except Exception as e:
                    logger.error(f"Error processing response message: {e}")
                    # Continue loop to maintain service
                    continue
            
        except Exception as e:
            logger.error(f"Fatal error in response subscription loop: {e}")
        finally:
            try:
                await pubsub.punsubscribe()
                await pubsub.close()
            except:
                pass
            logger.info("Response subscription loop ended")
    
    async def _process_response_message(self, message: Dict[str, Any]) -> None:
        """
        Process a response message from Redis pub/sub.
        
        Args:
            message: Redis pub/sub message
        """
        try:
            # Extract correlation_id from channel name: "response:correlation_id"
            channel = message['channel'].decode() if isinstance(message['channel'], bytes) else message['channel']
            correlation_id = channel.split(':', 1)[1]
            
            # Parse response data
            response_data = json.loads(message['data'])
            
            logger.info(f"Processing response for correlation_id: {correlation_id}")
            
            # Update request status to completed
            request_key = f"request:{correlation_id}"
            await self.redis.client.hset(request_key, 'status', 'completed')
            
            # Cache the response with TTL
            response_key = f"response:{correlation_id}"
            cache_data = {
                'response': response_data.get('response', ''),
                'timestamp': response_data.get('timestamp', datetime.now(timezone.utc).isoformat()),
                'processing_time_ms': str(response_data.get('processing_time_ms', 0))
            }
            
            # Store response with 10-minute TTL
            await self.redis.client.hset(response_key, mapping=cache_data)
            await self.redis.client.expire(response_key, 600)  # 10 minutes
            
            logger.info(f"Cached response for correlation_id: {correlation_id}")
            
        except Exception as e:
            logger.error(f"Error processing response message: {e}")
    
    async def health_check(self) -> Dict[str, Any]:
        """
        Check health of response subscriber.
        
        Returns:
            Health status dictionary
        """
        health = {
            'subscriber': 'unknown',
            'redis': 'unknown',
            'is_running': self.is_running,
            'task_status': 'unknown'
        }
        
        try:
            # Check Redis connection
            if self.redis.client:
                await self.redis.client.ping()
                health['redis'] = 'healthy'
        except Exception as e:
            logger.error(f"Redis health check failed in subscriber: {e}")
            health['redis'] = 'unhealthy'
        
        # Check subscriber task status
        if self._subscriber_task:
            if self._subscriber_task.done():
                if self._subscriber_task.exception():
                    health['task_status'] = 'failed'
                    health['subscriber'] = 'unhealthy'
                else:
                    health['task_status'] = 'completed'
                    health['subscriber'] = 'stopped'
            else:
                health['task_status'] = 'running'
                health['subscriber'] = 'healthy'
        else:
            health['task_status'] = 'not_started'
            health['subscriber'] = 'unhealthy'
        
        return health
    
    async def get_stats(self) -> Dict[str, Any]:
        """
        Get subscriber statistics.
        
        Returns:
            Statistics dictionary
        """
        stats = {
            'active_requests': 0,
            'cached_responses': 0,
            'is_running': self.is_running
        }
        
        try:
            # Count active requests
            request_count = 0
            async for key in self.redis.client.scan_iter(match="request:*"):
                request_count += 1
            stats['active_requests'] = request_count
            
            # Count cached responses
            response_count = 0
            async for key in self.redis.client.scan_iter(match="response:*"):
                response_count += 1
            stats['cached_responses'] = response_count
            
        except Exception as e:
            logger.error(f"Error getting subscriber stats: {e}")
        
        return stats


# Convenience function for running the subscriber standalone
async def run_subscriber():
    """
    Run the response subscriber as a standalone service.
    """
    subscriber = ResponseSubscriber()
    
    try:
        await subscriber.startup()
        await subscriber.start_subscribing()
        
        # Keep running until interrupted
        while subscriber.is_running:
            await asyncio.sleep(1)
            
    except KeyboardInterrupt:
        logger.info("Received shutdown signal")
    except Exception as e:
        logger.error(f"Subscriber error: {e}")
    finally:
        await subscriber.shutdown()


if __name__ == "__main__":
    import asyncio
    
    # Run the subscriber
    asyncio.run(run_subscriber())