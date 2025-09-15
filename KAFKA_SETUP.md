# Kafka Setup Guide

This guide explains how to set up Kafka for the messaging system.

## Quick Start

### 1. Start Kafka Infrastructure

```bash
# Start Zookeeper, Kafka, and Redis
docker compose up -d zookeeper kafka redis

# Optional: Start Kafka UI for monitoring
docker compose up -d kafka-ui
```

### 2. Create Kafka Topics

After Kafka is running, create the required topics using one of these methods:

#### Option A: Using Shell Script (Linux/Mac)
```bash
./create-kafka-topics.sh
```

#### Option B: Using Python Script (Cross-platform)
```bash
python create_kafka_topics.py
```

#### Option C: Manual Creation
```bash
# Create chat.requests topic
docker exec cse-explorer-kafka kafka-topics \
  --create \
  --topic chat.requests \
  --bootstrap-server localhost:29092 \
  --partitions 3 \
  --replication-factor 1

# Create chat.responses topic (optional)
docker exec cse-explorer-kafka kafka-topics \
  --create \
  --topic chat.responses \
  --bootstrap-server localhost:29092 \
  --partitions 3 \
  --replication-factor 1
```

### 3. Verify Setup

```bash
# List topics
docker exec cse-explorer-kafka kafka-topics --list --bootstrap-server localhost:29092

# Check Kafka UI
open http://localhost:8090
```

## Testing the Messaging Flow

### 1. Install Dependencies

```bash
# In utils directory
cd utils
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
pip install -r requirements.txt
```

### 2. Run Test Script

```bash
# From project root
source utils/venv/bin/activate
python utils/test_messaging.py
```

This will test:
- Kafka producer functionality
- Redis pub/sub functionality
- End-to-end message flow (requires NL Agent to be running)

## Service URLs

- **Kafka Broker**: `localhost:9092` (external), `kafka:29092` (internal)
- **Kafka UI**: `http://localhost:8090`
- **Redis**: `localhost:6379`
- **Zookeeper**: `localhost:2181`

## Troubleshooting

### Topics Not Created
If topics fail to create, check:
1. Kafka is fully started: `docker logs cse-explorer-kafka`
2. Wait 10-15 seconds after Kafka starts before creating topics
3. Check for existing topics: `docker exec cse-explorer-kafka kafka-topics --list --bootstrap-server localhost:29092`

### Connection Issues
- Ensure all services are healthy: `docker ps`
- Check logs: `docker compose logs kafka`
- Verify network connectivity between services

### Python Dependencies
If import errors occur:
- Ensure virtual environment is activated
- Install dependencies: `pip install aiokafka redis`

## Architecture Overview

```
API Gateway (Producer) → Kafka → NL Agent (Consumer)
                          ↓
                        Process
                          ↓
                    Redis Pub/Sub → API Gateway (Subscriber)
```

1. **API Gateway** sends job requests to Kafka topic `chat.requests`
2. **NL Agent** consumes messages from Kafka
3. **NL Agent** processes requests and publishes responses to Redis
4. **API Gateway** receives responses via Redis pub/sub channel

## Environment Variables

For Docker services (set in docker-compose.yml):
- `KAFKA_BOOTSTRAP_SERVERS=kafka:29092`
- `REDIS_URL=redis://redis:6379`

For local development:
- `KAFKA_BOOTSTRAP_SERVERS=localhost:9092`
- `REDIS_URL=redis://localhost:6379`