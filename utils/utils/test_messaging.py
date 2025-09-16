"""
End-to-end test for Kafka and Redis messaging flow.
Tests the complete flow from API Gateway to NL Agent and back.
"""
import asyncio
import json
import uuid
import sys
import os
from datetime import datetime

# Add parent directory to path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from utils.kafka_utils import SimpleKafkaProducer
from utils.redis_utils import SimpleRedisPubSub


async def test_kafka_redis_flow():
    """
    Test the complete messaging flow.
    """
    print("=" * 60)
    print("KAFKA + REDIS MESSAGING TEST")
    print("=" * 60)
    
    # Configuration
    kafka_servers = os.getenv('KAFKA_BOOTSTRAP_SERVERS', 'localhost:9092')
    redis_url = os.getenv('REDIS_URL', 'redis://localhost:6379')
    
    print(f"\nConfiguration:")
    print(f"  Kafka: {kafka_servers}")
    print(f"  Redis: {redis_url}")
    
    # Initialize clients
    kafka_producer = SimpleKafkaProducer(bootstrap_servers=kafka_servers)
    redis_client = SimpleRedisPubSub(url=redis_url)
    
    try:
        # Connect to services
        print("\n1. Connecting to services...")
        await kafka_producer.start()
        await redis_client.connect()
        print("   ✓ Connected to Kafka and Redis")
        
        # Create test message
        correlation_id = str(uuid.uuid4())
        thread_id = f"test_thread_{uuid.uuid4().hex[:8]}"
        
        test_request = {
            'correlation_id': correlation_id,
            'thread_id': thread_id,
            'user_id': 'test_user',
            'message': 'What are the top performing stocks?',
            'timestamp': datetime.utcnow().isoformat()
        }
        
        print(f"\n2. Sending test message:")
        print(f"   Correlation ID: {correlation_id}")
        print(f"   Thread ID: {thread_id}")
        print(f"   Message: {test_request['message']}")
        
        # Send to Kafka
        metadata = await kafka_producer.send_message(
            topic='chat.requests',
            value=test_request,
            key=thread_id.encode('utf-8')
        )
        print(f"   ✓ Sent to Kafka partition {metadata.partition} at offset {metadata.offset}")
        
        # Wait for response on Redis
        print(f"\n3. Waiting for response on Redis channel 'response:{correlation_id}'...")
        print("   (Make sure NL Agent Kafka consumer is running!)")
        
        channel = f"response:{correlation_id}"
        response = await redis_client.subscribe_and_wait(channel, timeout=30)
        
        if response:
            response_data = json.loads(response['data'])
            print(f"\n4. Received response:")
            print(f"   Response: {response_data.get('response', 'No response text')[:200]}...")
            print(f"   Processing time: {response_data.get('processing_time_ms')}ms")
            print("\n✅ Test PASSED - Full flow working!")
        else:
            print("\n❌ Test FAILED - No response received (timeout)")
            print("   Make sure the NL Agent Kafka consumer is running:")
            print("   cd 'Natural Language Agent' && python kafka_runner.py")
        
    except Exception as e:
        print(f"\n❌ Test FAILED with error: {e}")
        import traceback
        traceback.print_exc()
    
    finally:
        # Cleanup
        print("\n5. Cleaning up...")
        await kafka_producer.stop()
        await redis_client.close()
        print("   ✓ Connections closed")


async def test_individual_components():
    """
    Test Kafka and Redis components individually.
    """
    print("\n" + "=" * 60)
    print("INDIVIDUAL COMPONENT TESTS")
    print("=" * 60)
    
    kafka_servers = os.getenv('KAFKA_BOOTSTRAP_SERVERS', 'localhost:9092')
    redis_url = os.getenv('REDIS_URL', 'redis://localhost:6379')
    
    # Test Kafka
    print("\n### Testing Kafka Producer ###")
    try:
        producer = SimpleKafkaProducer(bootstrap_servers=kafka_servers)
        await producer.start()
        
        test_msg = {'test': 'message', 'timestamp': datetime.utcnow().isoformat()}
        metadata = await producer.send_message('chat.requests', test_msg)
        
        print(f"✓ Kafka working - sent to partition {metadata.partition}")
        await producer.stop()
    except Exception as e:
        print(f"✗ Kafka failed: {e}")
    
    # Test Redis
    print("\n### Testing Redis Pub/Sub ###")
    try:
        redis_client = SimpleRedisPubSub(url=redis_url)
        await redis_client.connect()
        
        # Test publish
        test_channel = 'test:channel'
        test_data = {'test': 'redis_message'}
        subscribers = await redis_client.publish(test_channel, test_data)
        
        print(f"✓ Redis publish working - {subscribers} subscribers")
        
        # Test ping
        await redis_client.get_client().ping()
        print("✓ Redis connection healthy")
        
        await redis_client.close()
    except Exception as e:
        print(f"✗ Redis failed: {e}")


async def main():
    """
    Run all tests.
    """
    print("\nStarting messaging tests...\n")
    
    # Test individual components first
    await test_individual_components()
    
    # Then test full flow
    await test_kafka_redis_flow()
    
    print("\n" + "=" * 60)
    print("All tests completed!")
    print("=" * 60)


if __name__ == "__main__":
    # Run tests
    asyncio.run(main())