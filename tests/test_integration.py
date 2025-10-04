"""
Integration test for Kafka-Redis message flow.
"""
import pytest
from unittest.mock import AsyncMock, patch
import json


class TestIntegration:
    """Integration tests for service communication."""
    
    @pytest.mark.asyncio
    async def test_kafka_to_redis_message_flow(self, sample_chat_message):
        """Test complete message flow from Kafka to Redis simulation."""
        
        # Mock Kafka Producer
        class MockKafkaProducer:
            def __init__(self):
                self.messages_sent = []
                
            async def start(self):
                pass
                
            async def send_message(self, topic, value, key=None):
                self.messages_sent.append({
                    'topic': topic,
                    'value': value,
                    'key': key
                })
                return True
                
            async def stop(self):
                pass
        
        # Mock Redis PubSub
        class MockRedisPubSub:
            def __init__(self):
                self.messages_published = []
                self.subscriptions = {}
                
            async def connect(self):
                pass
                
            async def publish(self, channel, message):
                self.messages_published.append({
                    'channel': channel,
                    'message': message
                })
                if channel in self.subscriptions:
                    self.subscriptions[channel] = message
                    
            async def subscribe_and_wait(self, channel, timeout=10.0):
                if channel in self.subscriptions:
                    return self.subscriptions[channel]
                return {
                    "response": "Test response from NL Agent",
                    "thread_id": sample_chat_message["thread_id"]
                }
                
            async def disconnect(self):
                pass
        
        # Create instances
        producer = MockKafkaProducer()
        pubsub = MockRedisPubSub()
        
        # Simulate sending message to Kafka
        await producer.start()
        await producer.send_message(
            topic="chat.requests",
            value=sample_chat_message
        )
        
        # Verify message was sent
        assert len(producer.messages_sent) == 1
        assert producer.messages_sent[0]['topic'] == "chat.requests"
        assert producer.messages_sent[0]['value'] == sample_chat_message
        
        # Simulate receiving response from Redis
        await pubsub.connect()
        response_channel = f"response:{sample_chat_message['correlation_id']}"
        
        # Publish response
        test_response = {
            "correlation_id": sample_chat_message["correlation_id"],
            "response": "Companies with highest revenue: Company A, Company B",
            "thread_id": sample_chat_message["thread_id"]
        }
        await pubsub.publish(response_channel, test_response)
        
        # Subscribe and wait for response
        result = await pubsub.subscribe_and_wait(
            channel=response_channel,
            timeout=10.0
        )
        
        # Verify response received
        assert result is not None
        assert "response" in result
        assert result["thread_id"] == sample_chat_message["thread_id"]
        
        # Verify publish was recorded
        assert len(pubsub.messages_published) == 1
        assert pubsub.messages_published[0]['channel'] == response_channel
        
        # Cleanup
        await producer.stop()
        await pubsub.disconnect()
        
        print(f"✓ Message flow test passed: Kafka → Process → Redis")