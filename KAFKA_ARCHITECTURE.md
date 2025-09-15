# Kafka Architecture with Redis Pub/Sub for CSE Explorer

## Overview

This document outlines the Kafka-based event-driven architecture for the Colombo Stock Exchange Explorer system, using Redis Pub/Sub for real-time response delivery. This hybrid approach combines Kafka's durability with Redis's low-latency for optimal performance and WebSocket readiness.

## Architecture Design

### Core Pattern: Request-Reply with Correlation IDs + Redis Pub/Sub

```
Frontend → HTTP → API Gateway → Kafka → NL Agent
                      ↑                      ↓
                      └──── Redis Pub/Sub ───┘
                             (real-time)
```

### Why Hybrid Kafka + Redis?

- **Kafka**: Message durability, replay capability, event sourcing
- **Redis Pub/Sub**: Real-time response delivery, low latency (~1ms)
- **WebSocket Ready**: Redis channels map directly to WebSocket connections
- **Scalability**: Kafka handles load, Redis handles speed

## Message Flow

### 1. Request Flow
```
1. Frontend sends POST /api/chat → API Gateway
2. API Gateway generates correlation_id
3. Gateway publishes to Kafka topic 'chat.requests'
4. Gateway subscribes to Redis channel 'chat.response:{correlation_id}'
5. Gateway waits for response (with timeout)
```

### 2. Processing Flow
```
1. NL Agent consumes from Kafka 'chat.requests'
2. NL Agent processes message with AI/Graph queries
3. NL Agent stores conversation in Redis (persistence)
4. NL Agent publishes response to Kafka 'chat.responses' (durability)
5. NL Agent publishes to Redis channel 'chat.response:{correlation_id}' (real-time)
```

### 3. Response Flow
```
1. API Gateway receives message on Redis channel
2. Gateway returns response to Frontend
3. Redis channel auto-expires after TTL
4. Kafka retains message for configured retention period
```

## Kafka Topics

| Topic | Purpose | Producers | Consumers | Retention |
|-------|---------|-----------|-----------|-----------|
| `chat.requests` | User chat messages | API Gateway | NL Agent | 7 days | 

| `chat.responses` | Agent responses | NL Agent | Analytics/Audit | 30 days |

## Redis Channels

| Channel Pattern | Purpose | Publishers | Subscribers | TTL |
|-----------------|---------|------------|-------------|-----|
| `chat.response:{correlation_id}` | Direct response delivery | NL Agent | API Gateway | 60s |
| `chat.stream:{thread_id}` | Future WebSocket streaming | NL Agent | API Gateway | Active connection |

## Message Schemas

### Chat Request (Kafka)

```json
{
  "correlation_id": "550e8400-e29b-41d4-a716-446655440000",
  "thread_id": "thread_abc123",
  "user_id": "user_123",
  "message": "What are the top performing stocks?",
  "timestamp": "2024-01-10T10:30:00Z",
  "metadata": {
    "client_type": "web",
    "session_id": "session_xyz"
  }
}
```

### Chat Response (Kafka + Redis)

```json
{
  "correlation_id": "550e8400-e29b-41d4-a716-446655440000",
  "thread_id": "thread_abc123",
  "response": "Based on the latest data, the top performing stocks are...",
  "timestamp": "2024-01-10T10:30:02Z",
  "streaming": false,
  "chunk_index": 0,
  "is_final": true,
  "metadata": {
    "processing_time_ms": 1823,
    "model_used": "gpt-4"
  }
}
```

## Implementation Code

### API Gateway - Producer & Redis Subscriber

```python
import asyncio
import json
import uuid
from datetime import datetime
from typing import Optional, Dict, Any

import aioredis
from aiokafka import AIOKafkaProducer
from fastapi import HTTPException

class ChatGateway:
    def __init__(self):
        self.kafka_producer = None
        self.redis_client = None
        self.pending_requests: Dict[str, asyncio.Future] = {}
        
    async def startup(self):
        """Initialize connections on startup"""
        # Kafka producer
        self.kafka_producer = AIOKafkaProducer(
            bootstrap_servers='kafka:9092',
            value_serializer=lambda v: json.dumps(v).encode('utf-8'),
            acks='all',  # Wait for all replicas
            retry_backoff_ms=100,
            request_timeout_ms=30000,
            max_request_size=1048576  # 1MB
        )
        await self.kafka_producer.start()
        
        # Redis client
        self.redis_client = await aioredis.from_url(
            "redis://redis:6379",
            encoding="utf-8",
            decode_responses=True
        )
    
    async def shutdown(self):
        """Cleanup connections on shutdown"""
        if self.kafka_producer:
            await self.kafka_producer.stop()
        if self.redis_client:
            await self.redis_client.close()
    
    async def send_chat_message(
        self, 
        thread_id: str, 
        user_id: str,
        message: str,
        timeout: float = 30.0
    ) -> Dict[str, Any]:
        """
        Send chat message and wait for response via Redis Pub/Sub
        """
        correlation_id = str(uuid.uuid4())
        
        # Create request payload
        request = {
            'correlation_id': correlation_id,
            'thread_id': thread_id,
            'user_id': user_id,
            'message': message,
            'timestamp': datetime.utcnow().isoformat()
        }
        
        # Subscribe to Redis channel for response
        channel = f"chat.response:{correlation_id}"
        pubsub = self.redis_client.pubsub()
        await pubsub.subscribe(channel)
        
        try:
            # Send to Kafka
            await self.kafka_producer.send(
                'chat.requests',
                value=request,
                key=thread_id.encode('utf-8')  # Partition by thread
            )
            
            # Wait for response on Redis channel
            response = await self._wait_for_response(
                pubsub, 
                channel, 
                timeout
            )
            
            return response
            
        except asyncio.TimeoutError:
            raise HTTPException(
                status_code=504,
                detail="Response timeout - NL Agent did not respond in time"
            )
        finally:
            await pubsub.unsubscribe(channel)
            await pubsub.close()
    
    async def _wait_for_response(
        self, 
        pubsub, 
        channel: str, 
        timeout: float
    ) -> Dict[str, Any]:
        """
        Wait for response on Redis channel with timeout
        """
        async def get_message():
            async for message in pubsub.listen():
                if message['type'] == 'message':
                    return json.loads(message['data'])
        
        return await asyncio.wait_for(get_message(), timeout=timeout)
```

### NL Agent - Consumer & Redis Publisher

```python
import asyncio
import json
from datetime import datetime
from typing import Dict, Any

import aioredis
from aiokafka import AIOKafkaConsumer, AIOKafkaProducer

class NLAgentProcessor:
    def __init__(self):
        self.kafka_consumer = None
        self.kafka_producer = None
        self.redis_client = None
        
    async def startup(self):
        """Initialize all connections"""
        # Kafka consumer for requests
        self.kafka_consumer = AIOKafkaConsumer(
            'chat.requests',
            bootstrap_servers='kafka:9092',
            group_id='nl-agent-group',
            value_deserializer=lambda m: json.loads(m.decode('utf-8')),
            enable_auto_commit=False,  # Manual commit after processing
            auto_offset_reset='earliest',
            session_timeout_ms=30000,
            heartbeat_interval_ms=10000
        )
        
        # Kafka producer for response persistence
        self.kafka_producer = AIOKafkaProducer(
            bootstrap_servers='kafka:9092',
            value_serializer=lambda v: json.dumps(v).encode('utf-8'),
            compression_type='gzip',
            batch_size=16384,
            linger_ms=10
        )
        
        # Redis for real-time response delivery
        self.redis_client = await aioredis.from_url(
            "redis://redis:6379",
            encoding="utf-8",
            decode_responses=False  # We'll handle encoding
        )
        
        await self.kafka_consumer.start()
        await self.kafka_producer.start()
    
    async def shutdown(self):
        """Cleanup all connections"""
        if self.kafka_consumer:
            await self.kafka_consumer.stop()
        if self.kafka_producer:
            await self.kafka_producer.stop()
        if self.redis_client:
            await self.redis_client.close()
    
    async def process_messages(self):
        """
        Main processing loop - consume from Kafka, process, respond via Redis
        """
        async for msg in self.kafka_consumer:
            try:
                request = msg.value
                
                # Process the chat message
                response_text = await self.generate_response(
                    message=request['message'],
                    thread_id=request['thread_id'],
                    user_id=request['user_id']
                )
                
                # Create response payload
                response = {
                    'correlation_id': request['correlation_id'],
                    'thread_id': request['thread_id'],
                    'response': response_text,
                    'timestamp': datetime.utcnow().isoformat(),
                    'is_final': True,
                    'metadata': {
                        'processing_time_ms': self._calculate_processing_time(request),
                        'model_used': 'gpt-4'
                    }
                }
                
                # Store in Kafka for durability/analytics
                await self.kafka_producer.send(
                    'chat.responses',
                    value=response,
                    key=request['thread_id'].encode('utf-8')
                )
                
                # Send to Redis for real-time delivery
                channel = f"chat.response:{request['correlation_id']}"
                await self.redis_client.publish(
                    channel,
                    json.dumps(response).encode('utf-8')
                )
                
                # Store in Redis chat history
                await self._store_chat_history(request, response)
                
                # Commit offset after successful processing
                await self.kafka_consumer.commit()
                
            except Exception as e:
                print(f"Error processing message: {e}")
                # Don't commit - message will be reprocessed
                await self._handle_error(msg, e)
    
    async def generate_response(
        self, 
        message: str, 
        thread_id: str,
        user_id: str
    ) -> str:
        """
        Generate response using AI/Graph queries
        This is where you integrate with your existing NL logic
        """
        # TODO: Integrate with existing GraphRAG/LangChain logic
        # For now, return a mock response
        return f"Processed your query: '{message}'"
    
    async def _store_chat_history(
        self, 
        request: Dict[str, Any], 
        response: Dict[str, Any]
    ):
        """
        Store conversation in Redis for history
        """
        thread_key = f"chat:{request['thread_id']}:messages"
        
        # Store user message
        user_msg = {
            'role': 'user',
            'content': request['message'],
            'timestamp': request['timestamp']
        }
        await self.redis_client.rpush(
            thread_key, 
            json.dumps(user_msg).encode('utf-8')
        )
        
        # Store agent response
        agent_msg = {
            'role': 'agent',
            'content': response['response'],
            'timestamp': response['timestamp']
        }
        await self.redis_client.rpush(
            thread_key,
            json.dumps(agent_msg).encode('utf-8')
        )
        
        # Set TTL for conversation (24 hours)
        await self.redis_client.expire(thread_key, 86400)
    
    def _calculate_processing_time(self, request: Dict[str, Any]) -> int:
        """Calculate processing time in milliseconds"""
        start = datetime.fromisoformat(request['timestamp'])
        end = datetime.utcnow()
        return int((end - start).total_seconds() * 1000)
    
    async def _handle_error(self, msg, error: Exception):
        """Send failed messages to DLQ"""
        # TODO: Implement DLQ logic
        pass
```

### Service Integration

```python
# API Gateway main.py additions
from contextlib import asynccontextmanager
from chat_gateway import ChatGateway

chat_gateway = ChatGateway()

@asynccontextmanager
async def lifespan(app: FastAPI):
    # Startup
    await chat_gateway.startup()
    yield
    # Shutdown
    await chat_gateway.shutdown()

app = FastAPI(lifespan=lifespan)

# Add chat endpoint
@app.post("/api/chat")
async def chat_endpoint(
    message: str,
    thread_id: str = None,
    current_user = Depends(get_current_active_user)
):
    if not thread_id:
        thread_id = f"thread_{uuid.uuid4().hex[:8]}"
    
    response = await chat_gateway.send_chat_message(
        thread_id=thread_id,
        user_id=current_user.id,
        message=message
    )
    
    return response
```

## Docker Compose Configuration

```yaml
services:
  # Existing Redis with Pub/Sub configuration
  redis:
    image: redis:7-alpine
    container_name: cse-explorer-redis
    ports:
      - "6379:6379"
    volumes:
      - redis_data:/data
    command: >
      redis-server 
      --appendonly yes 
      --appendfsync everysec
      --notify-keyspace-events Ex
      --maxmemory 512mb
      --maxmemory-policy allkeys-lru
    networks:
      - cse-explorer-network
    healthcheck:
      test: ["CMD", "redis-cli", "ping"]
      interval: 30s
      timeout: 10s
      retries: 3

  # Kafka infrastructure
  zookeeper:
    image: confluentinc/cp-zookeeper:7.5.0
    hostname: zookeeper
    container_name: cse-explorer-zookeeper
    ports:
      - "2181:2181"
    environment:
      ZOOKEEPER_CLIENT_PORT: 2181
      ZOOKEEPER_TICK_TIME: 2000
    volumes:
      - zookeeper_data:/var/lib/zookeeper/data
      - zookeeper_logs:/var/lib/zookeeper/log
    networks:
      - cse-explorer-network

  kafka:
    image: confluentinc/cp-kafka:7.5.0
    hostname: kafka
    container_name: cse-explorer-kafka
    depends_on:
      - zookeeper
    ports:
      - "9092:9092"
      - "29092:29092"
    environment:
      KAFKA_BROKER_ID: 1
      KAFKA_ZOOKEEPER_CONNECT: 'zookeeper:2181'
      KAFKA_LISTENER_SECURITY_PROTOCOL_MAP: PLAINTEXT:PLAINTEXT,PLAINTEXT_HOST:PLAINTEXT
      KAFKA_ADVERTISED_LISTENERS: PLAINTEXT://kafka:29092,PLAINTEXT_HOST://localhost:9092
      KAFKA_INTER_BROKER_LISTENER_NAME: PLAINTEXT
      KAFKA_OFFSETS_TOPIC_REPLICATION_FACTOR: 1
      KAFKA_AUTO_CREATE_TOPICS_ENABLE: "false"
      KAFKA_LOG_RETENTION_HOURS: 168
      KAFKA_LOG_SEGMENT_BYTES: 1073741824
    volumes:
      - kafka_data:/var/lib/kafka/data
    networks:
      - cse-explorer-network

  kafka-init:
    image: confluentinc/cp-kafka:7.5.0
    depends_on:
      - kafka
    entrypoint: [ '/bin/sh', '-c' ]
    command: |
      "
      echo 'Waiting for Kafka...'
      cub kafka-ready -b kafka:29092 1 40
      
      echo 'Creating topics...'
      kafka-topics --create --if-not-exists --bootstrap-server kafka:29092 \
        --partitions 3 --replication-factor 1 --topic chat.requests \
        --config retention.ms=604800000 --config compression.type=gzip
        
      kafka-topics --create --if-not-exists --bootstrap-server kafka:29092 \
        --partitions 3 --replication-factor 1 --topic chat.responses \
        --config retention.ms=2592000000 --config compression.type=gzip
      
      echo 'Topics created!'
      "
    networks:
      - cse-explorer-network

  kafka-ui:
    image: provectuslabs/kafka-ui:latest
    container_name: cse-explorer-kafka-ui
    depends_on:
      - kafka
    ports:
      - "8090:8080"
    environment:
      KAFKA_CLUSTERS_0_NAME: local
      KAFKA_CLUSTERS_0_BOOTSTRAPSERVERS: kafka:29092
    networks:
      - cse-explorer-network

volumes:
  redis_data:
  zookeeper_data:
  zookeeper_logs:
  kafka_data:
```

## WebSocket Future Integration

### Why This Design is WebSocket-Ready

1. **Correlation IDs** map directly to WebSocket connection IDs
2. **Redis Pub/Sub** already provides real-time delivery
3. **Streaming support** built into message schema
4. **Thread-based channels** enable multi-client subscriptions

### Future WebSocket Implementation

```python
# Future WebSocket handler that works with current architecture
@app.websocket("/ws/chat/{thread_id}")
async def websocket_chat(websocket: WebSocket, thread_id: str):
    await websocket.accept()
    
    # Subscribe to thread channel for all messages
    thread_channel = f"chat.stream:{thread_id}"
    pubsub = redis_client.pubsub()
    await pubsub.subscribe(thread_channel)
    
    # Existing Kafka producer
    producer = chat_gateway
    
    try:
        # Bidirectional communication
        async def receive_messages():
            async for message in websocket.iter_text():
                # Use existing send_chat_message
                response = await producer.send_chat_message(
                    thread_id=thread_id,
                    user_id=current_user_id,
                    message=message
                )
                # Response auto-delivered via Redis
        
        async def send_messages():
            async for msg in pubsub.listen():
                if msg['type'] == 'message':
                    await websocket.send_text(msg['data'])
        
        # Run both concurrently
        await asyncio.gather(receive_messages(), send_messages())
        
    except WebSocketDisconnect:
        await pubsub.unsubscribe(thread_channel)
        await pubsub.close()
```

## Performance Considerations

### Redis Pub/Sub
- **Latency**: ~1ms for local Redis
- **Throughput**: 100k+ messages/second
- **Memory**: Messages not persisted in Pub/Sub
- **Subscribers**: Unlimited per channel

### Kafka
- **Latency**: 10-30ms with `acks=all`
- **Throughput**: 10k+ messages/second per partition
- **Durability**: Configurable retention (7-30 days)
- **Ordering**: Guaranteed per partition

### Optimization Tips
1. Use Redis pipelining for batch operations
2. Enable Kafka compression (gzip/snappy)
3. Tune Redis `maxmemory` policy
4. Monitor consumer lag and scale accordingly

## Monitoring

### Key Metrics

```python
# Prometheus metrics
from prometheus_client import Counter, Histogram, Gauge

# Request metrics
chat_requests_total = Counter('chat_requests_total', 'Total chat requests')
chat_response_time = Histogram('chat_response_seconds', 'Response time')

# Redis metrics
redis_pubsub_active = Gauge('redis_pubsub_channels', 'Active Redis channels')
redis_pubsub_latency = Histogram('redis_pubsub_latency_ms', 'Pub/Sub latency')

# Kafka metrics
kafka_producer_errors = Counter('kafka_producer_errors', 'Producer errors')
kafka_consumer_lag = Gauge('kafka_consumer_lag', 'Consumer lag')
```

## Error Handling

### Fallback Strategy

```python
async def send_with_fallback(message: Dict[str, Any]):
    try:
        # Primary: Send via Kafka + Redis
        await send_via_kafka_redis(message)
    except RedisError:
        # Fallback 1: Kafka only (higher latency)
        await send_via_kafka_only(message)
    except KafkaError:
        # Fallback 2: Redis only (no persistence)
        await send_via_redis_only(message)
    except Exception:
        # Fallback 3: In-memory queue
        await queue_for_retry(message)
```

## Testing

### Integration Test Example

```python
import pytest
import asyncio
from unittest.mock import AsyncMock

@pytest.mark.asyncio
async def test_chat_flow():
    # Setup
    gateway = ChatGateway()
    await gateway.startup()
    
    # Mock NL Agent response
    async def mock_nl_response(channel):
        await asyncio.sleep(0.1)  # Simulate processing
        await gateway.redis_client.publish(
            channel,
            json.dumps({
                'response': 'Test response',
                'thread_id': 'test_thread'
            })
        )
    
    # Test
    asyncio.create_task(mock_nl_response('chat.response:test_id'))
    
    response = await gateway.send_chat_message(
        thread_id='test_thread',
        user_id='test_user',
        message='Test message'
    )
    
    assert response['response'] == 'Test response'
    
    # Cleanup
    await gateway.shutdown()
```

## Deployment Checklist

- [ ] Redis configured with Pub/Sub notifications
- [ ] Kafka topics created with proper retention
- [ ] Consumer groups configured
- [ ] Monitoring dashboards setup
- [ ] Error alerting configured
- [ ] Load testing completed
- [ ] Failover tested
- [ ] Documentation updated

---

*Last Updated: January 2025*
*Version: 1.0.0*