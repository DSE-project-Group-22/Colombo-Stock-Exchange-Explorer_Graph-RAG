"""
Response subscriber service that listens for chat responses on Redis and marks them as completed.
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
    Background service that subscribes to Redis response channels and updates request status.
    No longer caches responses as SSE handles real-time streaming directly.
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
        Main subscription loop - subscribe to response:* and steps:* patterns.
        """
        logger.info("Starting response and steps subscription loop...")
        
        try:
            # Subscribe to response AND steps channels
            pubsub = self.redis.client.pubsub()
            await pubsub.psubscribe('response:*')
            await pubsub.psubscribe('steps:*')  # Subscribe to intermediate steps
            
            while self.is_running:
                try:
                    # Wait for message with timeout to allow graceful shutdown
                    message = await asyncio.wait_for(
                        pubsub.get_message(ignore_subscribe_messages=True, timeout=1.0),
                        timeout=2.0
                    )
                    
                    if message and message['type'] == 'pmessage':
                        # Route based on channel pattern
                        channel = message['channel'].decode() if isinstance(message['channel'], bytes) else message['channel']
                        if channel.startswith('response:'):
                            await self._process_response_message(message)
                        elif channel.startswith('steps:'):
                            await self._process_step_message(message)
                        
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
        Only updates request status to completed - no caching.
        
        Args:
            message: Redis pub/sub message
        """
        try:
            # Extract correlation_id from channel name: "response:correlation_id"
            channel = message['channel'].decode() if isinstance(message['channel'], bytes) else message['channel']
            correlation_id = channel.split(':', 1)[1]
            
            logger.info(f"Processing response for correlation_id: {correlation_id}")
            
            # Update request status to completed
            request_key = f"request:{correlation_id}"
            await self.redis.client.hset(request_key, 'status', 'completed')
            
            logger.info(f"Marked request as completed for correlation_id: {correlation_id}")
            
        except Exception as e:
            logger.error(f"Error processing response message: {e}")
    
    async def _process_step_message(self, message: Dict[str, Any]) -> None:
        """
        Process intermediate step messages for logging and future WebSocket forwarding.
        
        Args:
            message: Redis pub/sub message containing step data
        """
        try:
            channel = message['channel'].decode() if isinstance(message['channel'], bytes) else message['channel']
            step_data = json.loads(message['data'])
            
            # Extract correlation_id from channel: steps:{correlation_id}
            channel_parts = channel.split(':')
            
            if len(channel_parts) == 2 and channel_parts[0] == 'steps':
                # steps:{correlation_id}
                correlation_id = channel_parts[1]
                step_type = step_data.get('step_type', 'unknown')
                step_num = step_data.get('step_number', 0)
                content = step_data.get('content', {})
                
                # Format log message based on step type
                if step_type == 'agent_thinking':
                    log_msg = f"[STEP {step_num}] Correlation {correlation_id}: Agent thinking - {content.get('message', '')[:100]}"
                elif step_type == 'tool_call':
                    tool_name = content.get('tool_name', 'unknown')
                    log_msg = f"[STEP {step_num}] Correlation {correlation_id}: Calling tool '{tool_name}'"
                elif step_type == 'tool_result':
                    log_msg = f"[STEP {step_num}] Correlation {correlation_id}: Tool result received"
                elif step_type == 'error':
                    log_msg = f"[STEP {step_num}] Correlation {correlation_id}: ERROR - {content.get('error', 'unknown')}"
                else:
                    log_msg = f"[STEP {step_num}] Correlation {correlation_id}: {step_type}"
                
                logger.info(log_msg)
                
                # Optional: Cache recent steps for debugging (5-minute TTL)
                await self._cache_step(correlation_id, step_data)
            
            # Future: Forward to WebSocket connections
            # if self.websocket_manager:
            #     await self.websocket_manager.forward_step(step_data)
            
        except Exception as e:
            logger.error(f"Error processing step message: {e}")
    
    async def _cache_step(self, correlation_id: str, step_data: Dict) -> None:
        """
        Cache recent steps for debugging/retrieval.
        
        Args:
            correlation_id: Request correlation ID
            step_data: Step data to cache
        """
        try:
            step_key = f"steps:cache:{correlation_id}"
            
            # Append to list of steps
            await self.redis.client.rpush(step_key, json.dumps(step_data))
            
            # Expire after 5 minutes
            await self.redis.client.expire(step_key, 300)
            
        except Exception as e:
            logger.warning(f"Failed to cache step: {e}")
    
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