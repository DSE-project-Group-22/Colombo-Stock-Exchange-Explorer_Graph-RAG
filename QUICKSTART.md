# Quick Start Development Guide

## 🚀 One-Command Setup

Start the entire development environment with hot-reload:

```bash
./scripts/dev/setup.sh
```

This will:
1. Start all infrastructure (PostgreSQL, Redis, Kafka)
2. Create Kafka topics automatically
3. Start API Gateway and NL Agent with hot-reload (Kafka consumer integrated)
4. Launch Kafka UI for monitoring

## 🔥 Hot-Reload Development

The following services have hot-reload enabled:
- **API Gateway** - Edit files in `./API Gateway/` and changes auto-reload
- **NL Agent** - Edit files in `./Natural Language Agent/` and changes auto-reload

No need to rebuild containers when you change code!

## 📋 View Logs

```bash
# View all logs
./scripts/dev/logs.sh

# View specific service logs
./scripts/dev/logs.sh api-gateway
./scripts/dev/logs.sh nl-agent
./scripts/dev/logs.sh kafka

# List available services
./scripts/dev/logs.sh -l
```

## 🛑 Stop Everything

```bash
./scripts/dev/teardown.sh
```

You'll be asked if you want to:
- Remove data volumes (for a clean start next time)
- Clean Docker build cache

## 🌐 Service URLs

Once running, access:
- **API Gateway**: http://localhost:8080/docs
- **NL Agent**: http://localhost:8001/docs
- **Kafka UI**: http://localhost:8090

## 🧪 Test the Messaging Flow

```bash
# Activate test environment
source utils/venv/bin/activate

# Run test
python utils/test_messaging.py
```

## 📝 Development Workflow

1. **Make code changes** in your IDE
2. **Save the file** - services auto-reload
3. **Check logs** if needed: `./scripts/dev/logs.sh [service]`
4. **Test your changes** via the API docs or test scripts

## 🔧 Troubleshooting

### Services not starting?
```bash
# Check service status
docker compose ps

# View detailed logs
./scripts/dev/logs.sh
```

### Kafka topics not created?
```bash
# Manually create topics
python scripts/kafka/create_kafka_topics.py
```

### Need a fresh start?
```bash
# Complete teardown with volume removal
./scripts/dev/teardown.sh
# Answer 'y' to remove volumes
```

### Port conflicts?
Make sure these ports are free:
- 8080 (API Gateway)
- 8001 (NL Agent)
- 8090 (Kafka UI)
- 9092 (Kafka)
- 6379 (Redis)
- 5432 (PostgreSQL)

## 📁 Project Structure

```
/scripts/
├── dev/
│   ├── setup.sh       # Start everything
│   ├── teardown.sh    # Stop everything
│   └── logs.sh        # View logs
└── kafka/
    ├── create-kafka-topics.sh
    └── create_kafka_topics.py
```

## 🔄 Development Setup

This setup uses:
- `docker-compose.yml` - Single configuration with hot-reload enabled
- `Dockerfile.dev` - Development containers with reload support
- Integrated Kafka consumer in NL Agent service

All services run with hot-reload for rapid development.