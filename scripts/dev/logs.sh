#!/bin/bash

# Log Viewer Script for Development Environment
# View logs from specific services or all services

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Change to project root directory
cd "$(dirname "$0")/../.."

# If no argument provided, show help
if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
    echo -e "${GREEN}Log Viewer for Development Environment${NC}"
    echo "========================================="
    echo ""
    echo "Usage:"
    echo "  ./scripts/dev/logs.sh              # Follow logs from all services"
    echo "  ./scripts/dev/logs.sh <service>    # Follow logs from specific service"
    echo "  ./scripts/dev/logs.sh -l           # List available services"
    echo ""
    echo "Available services:"
    echo "  postgres, redis, zookeeper, kafka, kafka-ui"
    echo "  api-gateway, nl-agent"
    echo ""
    echo "Examples:"
    echo "  ./scripts/dev/logs.sh api-gateway"
    echo "  ./scripts/dev/logs.sh kafka"
    echo "  ./scripts/dev/logs.sh nl-agent"
    exit 0
fi

# List available services
if [ "$1" == "-l" ] || [ "$1" == "--list" ]; then
    echo -e "${GREEN}Available services:${NC}"
    docker compose ps --services
    exit 0
fi

# If service name provided, show logs for that service
if [ -n "$1" ]; then
    echo -e "${YELLOW}📋 Following logs for: $1${NC}"
    echo "========================================="
    echo "(Press Ctrl+C to stop)"
    echo ""
    docker compose logs -f "$1"
else
    # Show logs for all services
    echo -e "${YELLOW}📋 Following logs for all services${NC}"
    echo "========================================="
    echo "(Press Ctrl+C to stop)"
    echo ""
    echo "Tip: To view specific service, use: ./scripts/dev/logs.sh <service-name>"
    echo ""
    docker compose logs -f
fi