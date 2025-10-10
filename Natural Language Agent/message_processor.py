"""
Message processor that consumes from Kafka and publishes responses to Redis.
Routes to appropriate agents based on topic.
Supports concurrent processing with per-thread ordering.
"""
import sys
import json
import logging
import asyncio
import time
from datetime import datetime, timezone

# Add utils path for container environment
sys.path.insert(0, '/utils')

from utils.kafka_utils import SimpleKafkaConsumer
from utils.redis_utils import SimpleRedisPubSub

# Import existing agent functionality
from simple_agent import execute_simple_agent
# Import simplified visual agent for visualization requests
from visual_cypher_agent import execute_visual_agent

# Import shared models
from models import ChatMessage, MessageRole, MessageMetadata

# Import config and helpers
from config import settings, get_redis_url
from helpers.redis_helper import store_chat_message, publish_response, create_message

logger = logging.getLogger(__name__)


class MessageProcessor:
    """
    Processes chat messages from Kafka and sends responses via Redis.
    """
    
    def __init__(self, topics=None, max_concurrent=10):
        """
        Initialize processor with Kafka consumer and Redis publisher.

        Args:
            topics: List of topics to consume from. Defaults to both chat and visualization.
            max_concurrent: Maximum number of concurrent tasks to process.
        """
        # Use configuration from settings
        kafka_servers = settings.kafka_bootstrap_servers
        redis_url = get_redis_url()

        # Initialize Kafka consumer for specified topics or default to both
        if topics is None:
            topics = [settings.kafka_request_topic, 'visualization.requests']

        self.topics = topics
        self.kafka = SimpleKafkaConsumer(
            topics=topics,
            group_id=settings.kafka_group_id,
            bootstrap_servers=kafka_servers
        )
        logger.info(f"Kafka consumer initialized for topics: {topics}")

        # Initialize Redis for publishing responses and accessing chat history
        self.redis = SimpleRedisPubSub(url=redis_url)

        # Concurrency control
        self.semaphore = asyncio.Semaphore(max_concurrent)
        self.thread_locks = {}  # Map thread_id -> asyncio.Lock for ordering
        self.active_tasks = set()  # Track running tasks
        self.max_concurrent = max_concurrent

        self.is_running = False
        logger.info(f"Processor initialized with max_concurrent={max_concurrent}")
    
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

    async def get_thread_lock(self, thread_id: str) -> asyncio.Lock:
        """
        Get or create a lock for the given thread_id.
        Used to ensure same-thread messages process in order.
        """
        if thread_id not in self.thread_locks:
            self.thread_locks[thread_id] = asyncio.Lock()
        return self.thread_locks[thread_id]
    
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
        Gracefully waits for active tasks to complete.
        """
        self.is_running = False
        logger.info("Shutting down message processor...")

        # Wait for active tasks to complete (with timeout)
        if self.active_tasks:
            logger.info(f"Waiting for {len(self.active_tasks)} active tasks to complete...")
            done, pending = await asyncio.wait(
                self.active_tasks,
                timeout=30  # 30 second timeout
            )
            if pending:
                logger.warning(f"{len(pending)} tasks did not complete in time, cancelling...")
                for task in pending:
                    task.cancel()

        try:
            await self.kafka.stop()
            await self.redis.close()
            logger.info("Message processor shut down successfully")
        except Exception as e:
            logger.error(f"Error during message processor shutdown: {e}")
    
    async def process_messages(self) -> None:
        """
        Main processing loop - consume from Kafka, spawn concurrent tasks.
        Uses semaphore to limit concurrency and per-thread locks for ordering.
        This method runs continuously until shutdown.
        """
        self.is_running = True
        logger.info(f"Starting message processing loop for topics: {self.topics}")
        logger.info(f"Max concurrent tasks: {self.max_concurrent}")

        async for message in self.kafka.consume_messages():
            if not self.is_running:
                break

            # Spawn concurrent task for processing
            task = asyncio.create_task(self.process_single_message(message))
            self.active_tasks.add(task)
            # Remove from set when done
            task.add_done_callback(self.active_tasks.discard)

    async def process_single_message(self, message: dict) -> None:
        """
        Process a single message with concurrency control and ordering.
        Uses semaphore for overall concurrency limit.
        Uses per-thread lock for same-thread ordering (chat only).
        """
        thread_id = message.get('thread_id')
        topic = message.get('_topic', 'chat.requests')

        # Determine if we need thread-level ordering (only for chat)
        thread_lock = None
        if 'chat' in topic and thread_id:
            thread_lock = await self.get_thread_lock(thread_id)

        # Acquire semaphore first (limits overall concurrency)
        async with self.semaphore:
            # Acquire thread lock if needed (maintains per-thread ordering)
            if thread_lock:
                async with thread_lock:
                    await self._process_message_logic(message)
            else:
                await self._process_message_logic(message)

    async def _process_message_logic(self, message: dict) -> None:
        """
        Core message processing logic.
        Extracted to separate method for cleaner concurrency control.
        """
        try:
            # Extract request details
            correlation_id = message.get('correlation_id')
            thread_id = message.get('thread_id')
            user_id = message.get('user_id')
            user_message = message.get('message')
            request_timestamp = message.get('timestamp')
            topic = message.get('_topic', 'chat.requests')

            logger.info(f"Processing {topic} message: thread={thread_id}, correlation={correlation_id}")

            # Create and store user message in Redis (same as /chat endpoint)
            user_msg = ChatMessage(
                thread_id=thread_id,
                role=MessageRole.USER,
                content=user_message,
                metadata=MessageMetadata(user_id=user_id) if user_id else None
            )
            await self.store_message(user_msg)

            # Calculate processing start time
            start_time = datetime.now(timezone.utc)

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
                # Route to appropriate agent based on topic
                if topic == 'visualization.requests':
                    # Process with simplified visual agent
                    logger.info(f"Routing to visual agent for visualization request")
                    response_data = await execute_visual_agent(
                        user_message=user_message,
                        thread_id=thread_id
                    )

                    # Simple JSON response
                    response_text = json.dumps(response_data)
                else:
                    # Process with existing chat agent
                    logger.info(f"Routing to chat agent for chat request")
                    response_text = await execute_simple_agent(
                        thread_id=thread_id,
                        user_message=user_message,
                        redis_client=self.redis.get_client(),
                        correlation_id=correlation_id,
                        user_id=user_id
                    )

            # Calculate processing time
            end_time = datetime.now(timezone.utc)
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

            # Create standardized response message
            msg = create_message(
                message_type="response",
                status="completed",
                title="Here's what I found",
                description="",
                content=response_text
            )

            # Add routing metadata
            response = {
                **msg,
                'correlation_id': correlation_id,
                'thread_id': thread_id,
                'user_id': user_id,
                'timestamp': end_time.isoformat(),
                'processing_time_ms': processing_time_ms,
                # Include legacy 'response' key expected by subscriber/poll endpoints
                'response': response_text
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
            logger.error(f"Error processing message {message.get('correlation_id')}: {e}")
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