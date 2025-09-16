"""
Simple, reusable Kafka utilities for all microservices.
Uses aiokafka library with latest async/await patterns.
"""
import json
import logging
from typing import Optional, AsyncGenerator, Dict, Any
from aiokafka import AIOKafkaProducer, AIOKafkaConsumer
from aiokafka.structs import RecordMetadata

logger = logging.getLogger(__name__)


class SimpleKafkaProducer:
    """
    Simple, reusable Kafka producer for any microservice.
    
    Example usage:
        producer = SimpleKafkaProducer()
        await producer.start()
        await producer.send_message('my-topic', {'key': 'value'})
        await producer.stop()
    """
    
    def __init__(self, bootstrap_servers: str = 'kafka:9092'):
        """
        Initialize Kafka producer.
        
        Args:
            bootstrap_servers: Kafka broker address(es)
        """
        self.bootstrap_servers = bootstrap_servers
        self.producer: Optional[AIOKafkaProducer] = None
    
    async def start(self) -> None:
        """Start the Kafka producer."""
        self.producer = AIOKafkaProducer(
            bootstrap_servers=self.bootstrap_servers,
            value_serializer=lambda v: json.dumps(v).encode('utf-8') if isinstance(v, dict) else v,
            compression_type='gzip',  # Compress messages
            acks='all',  # Wait for all replicas
            retry_backoff_ms=100,
            request_timeout_ms=30000
        )
        await self.producer.start()
        logger.info(f"Kafka producer started. Connected to {self.bootstrap_servers}")
    
    async def send_message(
        self, 
        topic: str, 
        value: Any, 
        key: Optional[bytes] = None
    ) -> RecordMetadata:
        """
        Send a message to a Kafka topic.
        
        Args:
            topic: Target topic name
            value: Message value (dict will be JSON serialized, bytes passed as-is)
            key: Optional partition key for message routing
            
        Returns:
            RecordMetadata with partition, offset, timestamp
        """
        if not self.producer:
            raise RuntimeError("Producer not started. Call start() first.")
        
        # If value is dict, it will be JSON serialized by value_serializer
        # If value is already bytes, pass it as-is
        if isinstance(value, str):
            value = value.encode('utf-8')
        
        metadata = await self.producer.send_and_wait(
            topic=topic,
            value=value,
            key=key
        )
        
        logger.debug(f"Message sent to {topic}:{metadata.partition} at offset {metadata.offset}")
        return metadata
    
    async def stop(self) -> None:
        """Stop the Kafka producer and flush pending messages."""
        if self.producer:
            await self.producer.stop()
            logger.info("Kafka producer stopped")


class SimpleKafkaConsumer:
    """
    Simple, reusable Kafka consumer for any microservice.
    
    Example usage:
        consumer = SimpleKafkaConsumer(['my-topic'], 'my-group')
        await consumer.start()
        async for message in consumer.consume_messages():
            print(message)  # Process message
            await consumer.commit()  # Commit after processing
        await consumer.stop()
    """
    
    def __init__(
        self, 
        topics: list[str], 
        group_id: str,
        bootstrap_servers: str = 'kafka:9092'
    ):
        """
        Initialize Kafka consumer.
        
        Args:
            topics: List of topics to subscribe to
            group_id: Consumer group ID for coordination
            bootstrap_servers: Kafka broker address(es)
        """
        self.topics = topics
        self.group_id = group_id
        self.bootstrap_servers = bootstrap_servers
        self.consumer: Optional[AIOKafkaConsumer] = None
    
    async def start(self) -> None:
        """Start the Kafka consumer and subscribe to topics."""
        self.consumer = AIOKafkaConsumer(
            *self.topics,
            bootstrap_servers=self.bootstrap_servers,
            group_id=self.group_id,
            value_deserializer=lambda m: json.loads(m.decode('utf-8')) if m else None,
            auto_offset_reset='earliest',  # Start from beginning if no offset
            enable_auto_commit=False,  # Manual commit for better control
            session_timeout_ms=30000,
            heartbeat_interval_ms=10000
        )
        await self.consumer.start()
        logger.info(f"Kafka consumer started. Group: {self.group_id}, Topics: {self.topics}")
    
    async def consume_messages(self) -> AsyncGenerator[Dict[str, Any], None]:
        """
        Consume messages from subscribed topics.
        
        Yields:
            Deserialized message dictionaries
            
        Example:
            async for message in consumer.consume_messages():
                process(message)
                await consumer.commit()
        """
        if not self.consumer:
            raise RuntimeError("Consumer not started. Call start() first.")
        
        async for msg in self.consumer:
            try:
                logger.debug(
                    f"Message received from {msg.topic}:{msg.partition} "
                    f"at offset {msg.offset}"
                )
                yield msg.value
            except Exception as e:
                logger.error(f"Error processing message: {e}")
                # Don't commit on error - message will be reprocessed
                raise
    
    async def commit(self) -> None:
        """
        Commit the current message offset.
        Call this after successfully processing a message.
        """
        if self.consumer:
            await self.consumer.commit()
            logger.debug("Offset committed")
    
    async def stop(self) -> None:
        """Stop the Kafka consumer."""
        if self.consumer:
            await self.consumer.stop()
            logger.info("Kafka consumer stopped")


# Convenience function for simple produce operations
async def send_to_kafka(
    topic: str, 
    message: Dict[str, Any], 
    bootstrap_servers: str = 'kafka:9092'
) -> None:
    """
    Convenience function to send a single message to Kafka.
    
    Args:
        topic: Target topic
        message: Message dictionary to send
        bootstrap_servers: Kafka broker address
    """
    producer = SimpleKafkaProducer(bootstrap_servers)
    await producer.start()
    try:
        await producer.send_message(topic, message)
    finally:
        await producer.stop()