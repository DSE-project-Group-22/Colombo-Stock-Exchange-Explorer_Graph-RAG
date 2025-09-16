#!/bin/bash

# Development Environment Teardown Script
# Stops all services and optionally removes volumes

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${RED}🛑 Stopping Development Environment${NC}"
echo "========================================="

# Change to project root directory
cd "$(dirname "$0")/../.."

# Stop all services
echo -e "${YELLOW}Stopping all services...${NC}"
docker compose down

echo -e "${GREEN}✓ All services stopped${NC}"

# Ask about volumes
echo ""
read -p "Do you want to remove all data volumes? (y/N) " -n 1 -r
echo ""

if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo -e "${YELLOW}Removing volumes...${NC}"
    
    # Remove volumes
    docker volume rm $(docker volume ls -q | grep -E "colombo|cse-explorer" 2>/dev/null) 2>/dev/null || true
    
    echo -e "${GREEN}✓ Volumes removed${NC}"
    echo -e "${YELLOW}Note: You'll need to recreate Kafka topics on next startup${NC}"
else
    echo -e "${GREEN}✓ Volumes preserved${NC}"
fi

# Ask about cleaning build cache
echo ""
read -p "Do you want to clean Docker build cache? (y/N) " -n 1 -r
echo ""

if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo -e "${YELLOW}Cleaning Docker cache...${NC}"
    docker system prune -f
    echo -e "${GREEN}✓ Docker cache cleaned${NC}"
fi

echo ""
echo -e "${GREEN}=========================================${NC}"
echo -e "${GREEN}✅ Teardown Complete${NC}"
echo -e "${GREEN}=========================================${NC}"
echo ""
echo "To restart the development environment, run:"
echo -e "  ${YELLOW}./scripts/dev/setup.sh${NC}"