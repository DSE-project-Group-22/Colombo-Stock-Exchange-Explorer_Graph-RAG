#!/bin/bash

# Development Environment Setup Script
# This script starts all services needed for development with hot-reload

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}🚀 Starting Development Environment${NC}"
echo "========================================="

# Function to wait for a service to be healthy
wait_for_service() {
    local service=$1
    local max_attempts=30
    local attempt=1
    
    echo -e "${YELLOW}⏳ Waiting for $service to be ready...${NC}"
    
    while [ $attempt -le $max_attempts ]; do
        if docker compose ps | grep -q "$service.*healthy\|running"; then
            echo -e "${GREEN}✓ $service is ready${NC}"
            return 0
        fi
        echo -n "."
        sleep 2
        attempt=$((attempt + 1))
    done
    
    echo -e "${RED}✗ $service failed to start${NC}"
    return 1
}

# Change to project root directory
cd "$(dirname "$0")/../.."

echo -e "${YELLOW}📦 Starting infrastructure services...${NC}"

# Start PostgreSQL first (skipping Neo4j/graph-db for now)
echo "Starting databases..."
docker compose up -d postgres
wait_for_service "postgres"
# Skipping graph-db for now - uncomment when needed
# docker compose up -d graph-db
# wait_for_service "graph-db"

# Start Redis
echo "Starting Redis..."
docker compose up -d redis
wait_for_service "redis"

# Start Zookeeper and Kafka
echo "Starting Kafka infrastructure..."
docker compose up -d zookeeper
wait_for_service "zookeeper"

docker compose up -d kafka
sleep 10  # Kafka needs extra time to fully initialize

# Create Kafka topics
echo -e "${YELLOW}📝 Creating Kafka topics...${NC}"
if [ -f "scripts/kafka/create-kafka-topics.sh" ]; then
    ./scripts/kafka/create-kafka-topics.sh
elif [ -f "scripts/kafka/create_kafka_topics.py" ]; then
    python scripts/kafka/create_kafka_topics.py
else
    echo -e "${YELLOW}⚠️  Kafka topic creation script not found, creating manually...${NC}"
    docker exec cse-explorer-kafka kafka-topics --create --topic chat.requests --bootstrap-server localhost:29092 --partitions 3 --replication-factor 1 2>/dev/null || true
    docker exec cse-explorer-kafka kafka-topics --create --topic chat.responses --bootstrap-server localhost:29092 --partitions 3 --replication-factor 1 2>/dev/null || true
fi

# Start development services with hot-reload
echo -e "${YELLOW}🔥 Starting services with hot-reload...${NC}"
docker compose up -d api-gateway nl-agent

# Start Kafka UI (optional but helpful)
echo "Starting Kafka UI..."
docker compose up -d kafka-ui

# Wait a bit for services to stabilize
sleep 5

# Show service status
echo ""
echo -e "${GREEN}=========================================${NC}"
echo -e "${GREEN}✅ Development Environment Ready!${NC}"
echo -e "${GREEN}=========================================${NC}"
echo ""
echo "Services available at:"
echo -e "  ${GREEN}•${NC} API Gateway:    http://localhost:8080/docs"
echo -e "  ${GREEN}•${NC} NL Agent:       http://localhost:8001/docs"
echo -e "  ${GREEN}•${NC} Kafka UI:       http://localhost:8090"
# echo -e "  ${GREEN}•${NC} Neo4j Browser:  http://localhost:7474"  # Commented out for now
echo ""
echo "Hot-reload enabled for:"
echo -e "  ${GREEN}•${NC} API Gateway - Changes in './API Gateway' auto-reload"
echo -e "  ${GREEN}•${NC} NL Agent - Changes in './Natural Language Agent' auto-reload"
echo ""
echo "View logs with:"
echo -e "  ${YELLOW}./scripts/dev/logs.sh [service-name]${NC}"
echo ""
echo "Stop everything with:"
echo -e "  ${YELLOW}./scripts/dev/teardown.sh${NC}"
echo ""

# Show running containers
echo "Running containers:"
docker compose ps --format "table {{.Name}}\t{{.Status}}\t{{.Ports}}"