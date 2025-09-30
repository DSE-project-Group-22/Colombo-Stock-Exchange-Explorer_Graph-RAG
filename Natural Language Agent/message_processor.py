"""
Message processor that consumes from Kafka and publishes responses to Redis.
Integrates with existing agent.py for actual NL processing.
"""
import sys
import os
import json
import logging
from datetime import datetime, timezone
from typing import Optional
import redis.asyncio as async_redis

# Add utils path for container environment
sys.path.insert(0, '/utils')

from utils.kafka_utils import SimpleKafkaConsumer
from utils.redis_utils import SimpleRedisPubSub

# Import existing agent functionality
from simple_agent import execute_simple_agent

# Import shared models
from models import ChatMessage, MessageRole, MessageMetadata

# Import config and helpers
from config import settings, get_redis_url
from helpers.redis_helper import store_chat_message, publish_response, serialize_neo4j_dates

logger = logging.getLogger(__name__)


class MessageProcessor:
    """
    Processes chat messages from Kafka and sends responses via Redis.
    """
    
    def __init__(self):
        """Initialize processor with Kafka consumer and Redis publisher."""
        # Use configuration from settings
        kafka_servers = settings.kafka_bootstrap_servers
        redis_url = get_redis_url()
        
        # Initialize Kafka consumer for chat requests
        self.kafka = SimpleKafkaConsumer(
            topics=[settings.kafka_request_topic],
            group_id=settings.kafka_group_id,
            bootstrap_servers=kafka_servers
        )
        
        # Initialize Redis for publishing responses and accessing chat history
        self.redis = SimpleRedisPubSub(url=redis_url)
        
        self.is_running = False
    
    async def store_message(self, message: ChatMessage) -> bool:
        """Store a message in Redis using helper function"""
        redis_client = self.redis.get_client()
        
        # Use helper function to store message
        return await store_chat_message(
            redis_client=redis_client,
            thread_id=message.thread_id,
            role=message.role.value,
            content=message.content,
            timestamp=message.timestamp
        )
    
    async def startup(self) -> None:
        """
        Initialize connections on service startup.
        """
        try:
            await self.kafka.start()
            await self.redis.connect()
            logger.info("Message processor initialized successfully")
        except Exception as e:
            logger.error(f"Failed to initialize message processor: {e}")
            raise
    
    async def shutdown(self) -> None:
        """
        Cleanup connections on service shutdown.
        """
        self.is_running = False
        try:
            await self.kafka.stop()
            await self.redis.close()
            logger.info("Message processor shut down successfully")
        except Exception as e:
            logger.error(f"Error during message processor shutdown: {e}")
    
    async def process_messages(self) -> None:
        """
        Main processing loop - consume from Kafka, process, respond via Redis.
        This method runs continuously until shutdown.
        """
        self.is_running = True
        logger.info("Starting message processing loop...")
        
        async for message in self.kafka.consume_messages():
            if not self.is_running:
                break
            
            try:
                # Extract request details
                correlation_id = message.get('correlation_id')
                thread_id = message.get('thread_id')
                user_id = message.get('user_id')
                user_message = message.get('message')
                request_timestamp = message.get('timestamp')
                
                logger.info(f"Processing message: thread={thread_id}, correlation={correlation_id}")
                
                # Create and store user message in Redis (same as /chat endpoint)
                user_msg = ChatMessage(
                    thread_id=thread_id,
                    role=MessageRole.USER,
                    content=user_message,
                    metadata=MessageMetadata(user_id=user_id) if user_id else None
                )
                await self.store_message(user_msg)
                
                # Calculate processing start time
                start_time = datetime.utcnow()
                
                # Check if OpenAI API key is available
                has_openai_key = settings.validate_openai_key()
                
                if not has_openai_key:
                    # Return dummy response when no API key is available
                    logger.warning("No OpenAI API key configured - returning dummy response")
                    response_text = (
                        "I'm currently unable to process your request as the OpenAI API key "
                        "is not configured. Please contact your system administrator to set up "
                        "the API key. Your message has been received: '{}'"
                    ).format(user_message[:100] + "..." if len(user_message) > 100 else user_message)
                else:
                    # Process with existing agent
                    # The agent already handles Redis chat history internally
                    response_text = await execute_simple_agent(
                        thread_id=thread_id,
                        user_message=user_message,
                        redis_client=self.redis.get_client()  # Pass Redis client for history
                    )
                
                # Calculate processing time
                end_time = datetime.utcnow()
                processing_time_ms = int((end_time - start_time).total_seconds() * 1000)
                
                # Create and store agent message in Redis (same as /chat endpoint)
                agent_msg = ChatMessage(
                    thread_id=thread_id,
                    role=MessageRole.AGENT,
                    content=response_text,
                    metadata=MessageMetadata(
                        agent_type="langgraph",
                        model=settings.openai_model,
                        processing_time=processing_time_ms / 1000.0  # Convert to seconds
                    )
                )
                await self.store_message(agent_msg)
                
                # Create response payload
                response = {
                    'correlation_id': correlation_id,
                    'thread_id': thread_id,
                    'response': response_text,
                    'timestamp': end_time.isoformat(),
                    'processing_time_ms': processing_time_ms
                }
                
                # Send response via Redis pub/sub using helper
                await publish_response(
                    redis_client=self.redis.get_client(),
                    correlation_id=correlation_id,
                    response_data=response
                )
                
                logger.info(
                    f"Response sent: correlation={correlation_id}, "
                    f"processing_time={processing_time_ms}ms"
                )
                
                # Commit Kafka offset after successful processing
                await self.kafka.commit()
                
            except Exception as e:
                logger.error(f"Error processing message: {e}")
                # Don't commit on error - message will be reprocessed
                # In production, you might want to send error response or move to DLQ
    
    async def health_check(self) -> dict:
        """
        Check health of Kafka and Redis connections.
        
        Returns:
            Health status dictionary
        """
        health = {
            'kafka_consumer': 'unknown',
            'redis': 'unknown',
            'processing': 'stopped' if not self.is_running else 'running'
        }
        
        try:
            if self.kafka.consumer:
                # Check if consumer is active
                partitions = self.kafka.consumer.assignment()
                if partitions:
                    health['kafka_consumer'] = 'healthy'
        except Exception as e:
            logger.error(f"Kafka health check failed: {e}")
            health['kafka_consumer'] = 'unhealthy'
        
        try:
            if self.redis.client:
                await self.redis.client.ping()
                health['redis'] = 'healthy'
        except Exception as e:
            logger.error(f"Redis health check failed: {e}")
            health['redis'] = 'unhealthy'
        
        return health


# Convenience function for running the processor
async def run_processor():
    """
    Run the message processor as a standalone service.
    """
    processor = MessageProcessor()
    
    try:
        await processor.startup()
        await processor.process_messages()
    except KeyboardInterrupt:
        logger.info("Received shutdown signal")
    except Exception as e:
        logger.error(f"Processor error: {e}")
    finally:
        await processor.shutdown()


if __name__ == "__main__":
    import asyncio
    
    # Run the processor
    asyncio.run(run_processor())