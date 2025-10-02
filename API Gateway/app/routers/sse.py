"""
SSE (Server-Sent Events) router for real-time chat streaming.
Provides endpoints for streaming chat responses and intermediate steps.
"""
import sys
import os
import json
import asyncio
import logging
import time
from typing import AsyncGenerator
from fastapi import APIRouter, Depends, HTTPException, status
from sse_starlette.sse import EventSourceResponse

# Add utils path for container environment
sys.path.insert(0, '/utils')
from utils.redis_utils import SimpleRedisPubSub

from app.auth.dependencies import get_current_active_user
from app.models.user import User

logger = logging.getLogger(__name__)

router = APIRouter(prefix="/api/chat", tags=["streaming"])

# Initialize Redis client
redis_url = os.getenv('REDIS_URL', 'redis://redis:6379')
redis_client = SimpleRedisPubSub(url=redis_url)


async def get_redis():
    """Get Redis client, ensuring it's connected."""
    if not redis_client.client:
        await redis_client.connect()
    return redis_client


@router.get("/stream/{correlation_id}")
async def stream_chat_events(
    correlation_id: str,
    current_user: User = Depends(get_current_active_user),
    redis: SimpleRedisPubSub = Depends(get_redis)
):
    """
    Stream chat events via Server-Sent Events (SSE).
    
    Subscribes to Redis channels for the given correlation_id and streams:
    - Intermediate processing steps (agent thinking, tool calls, etc.)
    - Final response
    - Completion signal
    
    The stream automatically closes after receiving the final response or on timeout.
    
    Args:
        correlation_id: Unique identifier for the chat request
        current_user: Authenticated user (from JWT token)
        
    Returns:
        EventSourceResponse streaming events in SSE format
        
    Event Types:
        - step: Intermediate processing step
        - response: Final chat response
        - complete: Stream completion signal
        - error: Error during processing
        - timeout: Processing timeout occurred
    """
    
    # Verify the request exists and belongs to the user
    try:
        request_key = f"request:{correlation_id}"
        request_info = await redis.client.hgetall(request_key)
        
        if not request_info:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND,
                detail=f"Request {correlation_id} not found"
            )
        
        # Check if request belongs to current user (in production mode)
        if not os.getenv('DEVELOPMENT_MODE', 'false').lower() == 'true':
            request_user_id = request_info.get('user_id', '')
            if str(current_user.id) != request_user_id:
                raise HTTPException(
                    status_code=status.HTTP_403_FORBIDDEN,
                    detail="Access denied to this request"
                )
                
    except HTTPException:
        raise
    except Exception as e:
        logger.error(f"Error verifying request: {e}")
        raise HTTPException(
            status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
            detail="Error accessing request information"
        )
    
    async def event_generator() -> AsyncGenerator:
        """
        Async generator that yields SSE events.
        """
        timeout_seconds = 600  # Maximum time to wait for response
        start_time = time.time()
        
        # Create Redis pub/sub subscription
        pubsub = redis.client.pubsub()
        
        try:
            # Subscribe to both steps and response channels
            await pubsub.subscribe(
                f"steps:{correlation_id}",      # Intermediate steps
                f"response:{correlation_id}"     # Final response
            )
            
            logger.info(f"SSE stream started for correlation_id: {correlation_id}")
            
            # Listen for messages
            async for message in pubsub.listen():
                # Check timeout
                if time.time() - start_time > timeout_seconds:
                    logger.warning(f"SSE stream timeout for correlation_id: {correlation_id}")
                    yield {
                        "event": "timeout",
                        "data": json.dumps({
                            "error": "Processing timeout",
                            "message": "The request is taking longer than expected. Please try again."
                        })
                    }
                    break
                
                # Process message
                if message['type'] == 'message':
                    try:
                        channel = message['channel']
                        if isinstance(channel, bytes):
                            channel = channel.decode()
                        
                        data = json.loads(message['data'])
                        
                        # Handle different channel types
                        if channel.startswith('steps:'):
                            # Intermediate step
                            yield {
                                "event": "step",
                                "data": json.dumps(data)
                            }
                            logger.debug(f"Streamed step for {correlation_id}: {data.get('step_type')}")
                            
                        elif channel.startswith('response:'):
                            # Final response received
                            yield {
                                "event": "response",
                                "data": json.dumps(data)
                            }
                            logger.info(f"Streamed final response for {correlation_id}")
                            
                            # Send completion signal
                            yield {
                                "event": "complete",
                                "data": json.dumps({
                                    "status": "completed",
                                    "correlation_id": correlation_id
                                })
                            }
                            
                            # Close the stream after final response
                            break
                            
                    except json.JSONDecodeError as e:
                        logger.error(f"Failed to parse message data: {e}")
                        yield {
                            "event": "error",
                            "data": json.dumps({
                                "error": "Invalid message format",
                                "correlation_id": correlation_id
                            })
                        }
                    except Exception as e:
                        logger.error(f"Error processing message: {e}")
                        yield {
                            "event": "error",
                            "data": json.dumps({
                                "error": "Processing error",
                                "message": str(e),
                                "correlation_id": correlation_id
                            })
                        }
                        
        except Exception as e:
            logger.error(f"Fatal error in SSE stream for {correlation_id}: {e}")
            yield {
                "event": "error",
                "data": json.dumps({
                    "error": "Stream error",
                    "message": "An unexpected error occurred",
                    "correlation_id": correlation_id
                })
            }
        finally:
            # Clean up subscription
            try:
                await pubsub.unsubscribe()
                await pubsub.close()
            except:
                pass  # Best effort cleanup
            
            logger.info(f"SSE stream closed for correlation_id: {correlation_id}")
    
    # Return SSE response with proper headers
    return EventSourceResponse(
        event_generator(),
        headers={
            "Cache-Control": "no-cache",
            "Connection": "keep-alive",
            "X-Correlation-ID": correlation_id
        }
    )


@router.get("/stream/health")
async def sse_health_check():
    """
    Health check endpoint for SSE streaming.
    
    Returns:
        Status of SSE streaming capability
    """
    try:
        # Check Redis connection
        redis = await get_redis()
        await redis.client.ping()
        
        return {
            "status": "healthy",
            "redis_connected": True,
            "streaming_available": True
        }
    except Exception as e:
        logger.error(f"SSE health check failed: {e}")
        return {
            "status": "unhealthy",
            "redis_connected": False,
            "streaming_available": False,
            "error": str(e)
        }