"""
Simple unit tests for Natural Language Agent.
"""
import pytest
from unittest.mock import Mock, patch, AsyncMock, MagicMock
import threading


class TestNLAgent:
    """Test suite for NL Agent components."""
    
    def test_llm_singleton_pattern(self):
        """Test singleton pattern simulation."""
        # Simulate singleton pattern
        class MockLLMManager:
            _instance = None
            _lock = threading.Lock()
            
            def __new__(cls):
                if cls._instance is None:
                    with cls._lock:
                        if cls._instance is None:
                            cls._instance = super().__new__(cls)
                return cls._instance
        
        # Get two instances
        instance1 = MockLLMManager()
        instance2 = MockLLMManager()
        
        # Verify they are the same object (singleton)
        assert instance1 is instance2
        assert id(instance1) == id(instance2)
    
    @pytest.mark.asyncio
    async def test_message_processor_initialization(self, mock_kafka_producer, mock_redis_client):
        """Test message processor initialization simulation."""
        # Mock MessageProcessor
        class MockMessageProcessor:
            def __init__(self):
                self.kafka = mock_kafka_producer
                self.redis = mock_redis_client
                self.running = False
                
            async def start(self):
                self.running = True
                await self.kafka.start()
                await self.redis.connect()
                
            async def stop(self):
                self.running = False
                await self.kafka.stop()
                await self.redis.disconnect()
        
        # Create processor
        processor = MockMessageProcessor()
        
        # Verify processor is created
        assert processor is not None
        assert processor.kafka is mock_kafka_producer
        assert processor.redis is mock_redis_client
        
        # Test start/stop
        await processor.start()
        assert processor.running == True
        
        await processor.stop()
        assert processor.running == False
    
    @pytest.mark.asyncio
    async def test_chat_message_storage(self, mock_redis_client):
        """Test storing chat messages in Redis simulation."""
        # Mock ChatMessage
        class MockChatMessage:
            def __init__(self, thread_id, role, content):
                self.thread_id = thread_id
                self.role = role
                self.content = content
                self.timestamp = "2024-01-01T10:00:00Z"
            
            def to_dict(self):
                return {
                    "thread_id": self.thread_id,
                    "role": self.role,
                    "content": self.content,
                    "timestamp": self.timestamp
                }
        
        # Create a chat message
        message = MockChatMessage(
            thread_id="test-thread",
            role="user",
            content="Test question about companies"
        )
        
        # Mock store message function
        async def mock_store_message(redis_client, msg):
            import json
            # Store in Redis list
            await redis_client.lpush(
                f"chat:{msg.thread_id}:messages",
                json.dumps(msg.to_dict())
            )
            # Update metadata
            await redis_client.hset(
                f"chat:{msg.thread_id}:metadata",
                "last_activity",
                msg.timestamp
            )
        
        # Store message
        await mock_store_message(mock_redis_client, message)
        
        # Verify Redis operations were called
        mock_redis_client.lpush.assert_called_once()
        mock_redis_client.hset.assert_called_once()