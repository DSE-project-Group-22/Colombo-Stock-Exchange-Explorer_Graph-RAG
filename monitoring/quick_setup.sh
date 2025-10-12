#!/bin/bash
# Simple setup script that works from monitoring directory

echo "=== Quick Neo4j Monitoring Setup ==="

# Check if we're in the monitoring directory
if [ ! -f "prometheus.yml" ]; then
    echo "❌ Please run this script from the monitoring directory"
    echo "   cd monitoring && ./quick_setup.sh"
    exit 1
fi

# Check if Docker is running
if ! docker info > /dev/null 2>&1; then
    echo "❌ Docker is not running. Please start Docker first."
    exit 1
fi

echo "✅ Docker is running"

# Move to parent directory to access docker-compose files
cd ..

# Check if the main application network exists
if ! docker network ls | grep -q "cse-explorer-network"; then
    echo "Creating cse-explorer-network..."
    docker network create cse-explorer-network
else
    echo "✅ cse-explorer-network exists"
fi

# Check if main application is running
if docker ps | grep -q "cse-explorer-graph-db"; then
    echo "✅ Main application is running"
    
    # Enable monitoring temporarily in running container
    echo "Enabling metrics in running Neo4j container..."
    docker exec cse-explorer-graph-db bash -c "
        mkdir -p /var/lib/neo4j/conf
        echo 'server.metrics.enabled=true' >> /var/lib/neo4j/conf/neo4j.conf 2>/dev/null || true
        echo 'server.metrics.prometheus.enabled=true' >> /var/lib/neo4j/conf/neo4j.conf 2>/dev/null || true
        echo 'server.metrics.prometheus.endpoint=0.0.0.0:2004' >> /var/lib/neo4j/conf/neo4j.conf 2>/dev/null || true
    " 2>/dev/null || echo "Note: Will configure for next restart"
    
else
    echo "⚠️  Main application not running. Starting it now..."
    docker-compose up -d
    echo "Waiting for services to start..."
    sleep 30
fi

# Start monitoring stack
echo "Starting monitoring services..."
docker-compose -f monitoring/docker-compose.monitoring.yml up -d

# Wait for services to be ready
echo "Waiting for monitoring services to start..."
sleep 30

# Check service health
echo "Checking service health..."

# Check Prometheus
if curl -s http://localhost:9090/-/healthy > /dev/null 2>&1; then
    echo "✅ Prometheus is healthy (http://localhost:9090)"
else
    echo "⚠️  Prometheus starting up..."
fi

# Check Grafana
if curl -s http://localhost:3000/api/health > /dev/null 2>&1; then
    echo "✅ Grafana is healthy (http://localhost:3000)"
    echo "   Default login: admin/admin"
else
    echo "⚠️  Grafana starting up..."
fi

# Check Neo4j accessibility
if python3 -c "from neo4j import GraphDatabase; driver = GraphDatabase.driver('bolt://localhost:7687', auth=('neo4j', 'password')); driver.verify_connectivity(); driver.close(); print('✅ Neo4j is accessible')" 2>/dev/null; then
    echo "✅ Neo4j is accessible for monitoring"
else
    echo "⚠️  Installing neo4j Python driver..."
    pip3 install neo4j > /dev/null 2>&1 || echo "Please install: pip3 install neo4j"
fi

# Check if metrics endpoint is accessible
if curl -s http://localhost:2004/metrics > /dev/null 2>&1; then
    echo "✅ Neo4j metrics endpoint is accessible"
else
    echo "⚠️  Neo4j metrics endpoint not accessible"
    echo "   Restarting Neo4j to enable metrics..."
    docker-compose restart graph-db
    echo "   Waiting for restart..."
    sleep 20
    
    if curl -s http://localhost:2004/metrics > /dev/null 2>&1; then
        echo "✅ Neo4j metrics now accessible"
    else
        echo "⚠️  Metrics may take a few more minutes to be available"
    fi
fi

echo ""
echo "=== Monitoring Stack URLs ==="
echo "🌐 Grafana Dashboard: http://localhost:3000 (admin/admin)"
echo "📊 Prometheus: http://localhost:9090"
echo "📈 Neo4j Metrics: http://localhost:2004/metrics"
echo "🖥️  Neo4j Browser: http://localhost:7474"
echo "📡 Node Exporter: http://localhost:9100"
echo ""
echo "=== Quick Start Commands ==="
echo "# Run monitoring:"
echo "python3 monitoring/neo4j_monitor.py"
echo ""
echo "# Run load test:"
echo "python3 monitoring/load_test_neo4j.py --duration 60 --rate 5"
echo ""
echo "# Stop monitoring:"
echo "docker-compose -f monitoring/docker-compose.monitoring.yml down"
echo ""
echo "✅ Setup complete! Check the URLs above to verify everything is working."
