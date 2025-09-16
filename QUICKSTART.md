# Quick Start Development Guide

## 🚀 One-Command Setup

Start the entire development environment with hot-reload:

```bash
docker compose up
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
docker compose down          # Stop services
docker compose down -v       # Stop and remove volumes for clean restart
```

## 🌐 Service URLs

Once running, access:
- **API Gateway**: http://localhost:8080/docs
- **NL Agent**: http://localhost:8001/docs
- **Kafka UI**: http://localhost:8090

## 🧪 Test the Messaging Flow

The Kafka consumer is integrated into the NL Agent service, so messaging works automatically once services are running. You can monitor messages in Kafka UI at http://localhost:8090.

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
Topics are created automatically when Kafka starts. If there are issues, check Kafka logs:
```bash
docker logs cse-explorer-kafka
```

### Need a fresh start?
```bash
# Complete teardown with volume removal
docker compose down -v
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
└── dev/
    ├── teardown.sh    # Stop everything
    └── logs.sh        # View logs
```

## 🔄 Development Setup

This setup uses:
- `docker-compose.yml` - Single configuration with hot-reload enabled
- `Dockerfile.dev` - Development containers with reload support
- Integrated Kafka consumer in NL Agent service

All services run with hot-reload for rapid development.