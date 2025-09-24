#!/bin/bash

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo "========================================="
echo "CSE Explorer Complete Restart"
echo "(All services except Graph Database)"
echo "========================================="
echo ""

# Function to wait for service health
wait_for_healthy() {
    local service=$1
    local max_attempts=30
    local attempt=1
    
    printf "  Waiting for ${YELLOW}$service${NC} to be healthy"
    while [ $attempt -le $max_attempts ]; do
        health_status=$(docker inspect --format='{{.State.Health.Status}}' $service 2>/dev/null || echo "no-health-check")
        
        if [ "$health_status" = "healthy" ]; then
            echo -e " ${GREEN}✓${NC}"
            return 0
        elif [ "$health_status" = "no-health-check" ]; then
            # For services without health checks, just check if running
            if docker inspect --format='{{.State.Running}}' $service 2>/dev/null | grep -q "true"; then
                echo -e " ${GREEN}✓${NC} (running)"
                return 0
            fi
        fi
        
        printf "."
        sleep 2
        ((attempt++))
    done
    echo -e " ${RED}✗${NC} (timeout)"
    return 1
}

# Function to stop a service
stop_service() {
    local service=$1
    printf "  Stopping ${YELLOW}$service${NC}..."
    if docker stop $service >/dev/null 2>&1; then
        echo -e " ${GREEN}✓${NC}"
    else
        echo -e " ${RED}✗${NC} (not running)"
    fi
}

# Function to start a service
start_service() {
    local service=$1
    printf "  Starting ${YELLOW}$service${NC}..."
    if docker start $service >/dev/null 2>&1; then
        echo -e " ${GREEN}✓${NC}"
        return 0
    else
        echo -e " ${RED}✗${NC} (failed)"
        return 1
    fi
}

echo "Phase 1: Stopping Services"
echo "--------------------------"
echo "Stopping in reverse dependency order..."
echo ""

# Stop application services first
stop_service cse-explorer-api-gateway
stop_service cse-explorer-nl-agent
stop_service cse-explorer-kafka-ui

# Stop middleware services
stop_service cse-explorer-kafka
stop_service cse-explorer-redis
stop_service cse-explorer-zookeeper
stop_service cse-explorer-postgres

echo ""
echo "Phase 2: Starting Base Services"
echo "--------------------------------"
echo "Starting infrastructure services..."
echo ""

# Start base services
start_service cse-explorer-postgres
wait_for_healthy cse-explorer-postgres

start_service cse-explorer-redis
wait_for_healthy cse-explorer-redis

start_service cse-explorer-zookeeper
wait_for_healthy cse-explorer-zookeeper

echo ""
echo "Phase 3: Starting Kafka"
echo "-----------------------"
start_service cse-explorer-kafka
wait_for_healthy cse-explorer-kafka

echo ""
echo "Phase 4: Ensuring Kafka Topics"
echo "-------------------------------"
printf "  Creating ${YELLOW}chat.requests${NC} topic..."
if docker exec cse-explorer-kafka kafka-topics --create --topic chat.requests --bootstrap-server localhost:29092 --partitions 3 --replication-factor 1 --if-not-exists 2>/dev/null; then
    echo -e " ${GREEN}✓${NC}"
else
    echo -e " ${YELLOW}already exists${NC}"
fi

printf "  Creating ${YELLOW}chat.responses${NC} topic..."
if docker exec cse-explorer-kafka kafka-topics --create --topic chat.responses --bootstrap-server localhost:29092 --partitions 3 --replication-factor 1 --if-not-exists 2>/dev/null; then
    echo -e " ${GREEN}✓${NC}"
else
    echo -e " ${YELLOW}already exists${NC}"
fi

echo ""
echo "Phase 5: Starting Application Services"
echo "---------------------------------------"

# Start Kafka UI (optional, non-critical)
start_service cse-explorer-kafka-ui

# Start NL Agent
start_service cse-explorer-nl-agent
sleep 3  # Give it a moment to initialize

# Start API Gateway
start_service cse-explorer-api-gateway
sleep 3  # Give it a moment to initialize

echo ""
echo "========================================="
echo "Service Status"
echo "========================================="
docker ps --format "table {{.Names}}\t{{.Status}}" | grep -E "(NAMES|cse-explorer)" | grep -v "graph-db"

echo ""
echo "========================================="
echo -e "${GREEN}Restart Complete!${NC}"
echo "========================================="
echo ""
echo "Useful commands:"
echo "  • Clear Kafka messages: docker exec cse-explorer-kafka kafka-consumer-groups --bootstrap-server localhost:29092 --group nl-agent-group --reset-offsets --to-latest --all-topics --execute"
echo "  • View API Gateway logs: docker logs -f cse-explorer-api-gateway"
echo "  • View NL Agent logs: docker logs -f cse-explorer-nl-agent"
echo "  • Check Kafka topics: docker exec cse-explorer-kafka kafka-topics --list --bootstrap-server localhost:29092"
echo ""