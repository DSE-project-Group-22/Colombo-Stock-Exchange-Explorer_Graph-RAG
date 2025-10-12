#!/bin/bash
# Setup script for Neo4j monitoring

echo "=== Neo4j Monitoring Setup ==="

# Create necessary directories
mkdir -p monitoring/neo4j-metrics
mkdir -p monitoring/logs

# Install Python dependencies for monitoring scripts
echo "Installing Python dependencies..."
pip3 install neo4j prometheus-client grafana-client || echo "Note: Install neo4j and prometheus-client if needed"

# Check if Docker is running
if ! docker info > /dev/null 2>&1; then
    echo "❌ Docker is not running. Please start Docker first."
    exit 1
fi

echo "✅ Docker is running"

# Check if the main application network exists
if ! docker network ls | grep -q "cse-explorer-network"; then
    echo "Creating cse-explorer-network..."
    docker network create cse-explorer-network
else
    echo "✅ cse-explorer-network exists"
fi

# Start monitoring stack
echo "Starting monitoring services..."
docker-compose -f docker-compose.monitoring.yml up -d

# Wait for services to be ready
echo "Waiting for services to start..."
sleep 30

# Check service health
echo "Checking service health..."

# Check Prometheus
if curl -s http://localhost:9090/-/healthy > /dev/null; then
    echo "✅ Prometheus is healthy (http://localhost:9090)"
else
    echo "❌ Prometheus is not responding"
fi

# Check Grafana
if curl -s http://localhost:3000/api/health > /dev/null; then
    echo "✅ Grafana is healthy (http://localhost:3000)"
    echo "   Default login: admin/admin"
else
    echo "❌ Grafana is not responding"
fi

# Check if Neo4j is accessible
if python3 -c "from neo4j import GraphDatabase; driver = GraphDatabase.driver('bolt://localhost:7687', auth=('neo4j', 'password')); driver.verify_connectivity(); driver.close(); print('✅ Neo4j is accessible')" 2>/dev/null; then
    echo "✅ Neo4j is accessible for monitoring"
else
    echo "❌ Neo4j is not accessible. Make sure it's running with the main docker-compose."
fi

echo ""
echo "=== Monitoring Stack URLs ==="
echo "Grafana Dashboard: http://localhost:3000 (admin/admin)"
echo "Prometheus: http://localhost:9090"
echo "Node Exporter: http://localhost:9100"
echo ""
echo "=== Next Steps ==="
echo "1. Start your main application: docker-compose up -d"
echo "2. Run monitoring script: python3 monitoring/neo4j_monitor.py"
echo "3. Run load test: python3 monitoring/load_test_neo4j.py"
echo "4. View metrics in Grafana: http://localhost:3000"
echo ""
echo "To stop monitoring: docker-compose -f docker-compose.monitoring.yml down"
