# Shared Utilities

This folder contains reusable utilities for Kafka and Redis messaging that can be used across all microservices.

## Files

- `kafka_utils.py` - Simple Kafka producer and consumer classes
- `redis_utils.py` - Simple Redis pub/sub utilities
- `test_messaging.py` - End-to-end test for the messaging flow

## Installation

Each microservice needs to install the required dependencies:

```bash
pip install aiokafka redis
```

## Usage

### Kafka Producer

```python
from utils.kafka_utils import SimpleKafkaProducer

producer = SimpleKafkaProducer(bootstrap_servers='kafka:29092')
await producer.start()
await producer.send_message('my-topic', {'key': 'value'})
await producer.stop()
```

### Kafka Consumer

```python
from utils.kafka_utils import SimpleKafkaConsumer

consumer = SimpleKafkaConsumer(['my-topic'], 'my-group')
await consumer.start()
async for message in consumer.consume_messages():
    print(message)
    await consumer.commit()
await consumer.stop()
```

### Redis Pub/Sub

```python
from utils.redis_utils import SimpleRedisPubSub

redis_client = SimpleRedisPubSub()
await redis_client.connect()

# Publish
await redis_client.publish('channel', {'data': 'hello'})

# Subscribe and wait
response = await redis_client.subscribe_and_wait('channel', timeout=30)

await redis_client.close()
```

## Testing

Run the test script to verify the messaging flow:

```bash
# Start Kafka and Redis first
docker-compose up kafka redis

# In another terminal, run the test
python utils/test_messaging.py
```

## Environment Variables

- `KAFKA_BOOTSTRAP_SERVERS` - Kafka broker address (default: `kafka:29092`)
- `REDIS_URL` - Redis connection URL (default: `redis://redis:6379`)

## Notes

- These utilities are designed to be simple and reusable
- They handle basic connection management and serialization
- For production use, consider adding retry logic and better error handling
- The utilities use JSON serialization by default