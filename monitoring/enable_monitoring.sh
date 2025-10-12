#!/bin/bash
# Script to enable Neo4j monitoring without breaking existing setup

echo "=== Enabling Neo4j Monitoring ==="

# Move to parent directory where docker-compose.yml is located
cd "$(dirname "$0")/.."

# Check if main application is running
if ! docker ps | grep -q "cse-explorer-graph-db"; then
    echo "❌ Main application is not running. Please start it first:"
    echo "   docker-compose up -d"
    exit 1
fi

echo "✅ Main application is running"

# Create backup of current docker-compose.yml
if [ -f docker-compose.yml ]; then
    cp docker-compose.yml docker-compose.yml.backup
    echo "✅ Backup created: docker-compose.yml.backup"
else
    echo "❌ docker-compose.yml not found in current directory"
    exit 1
fi

# Enable monitoring in the current container (temporary)
echo "Enabling metrics collection in running Neo4j container..."
docker exec cse-explorer-graph-db bash -c "
    echo 'server.metrics.enabled=true' >> /var/lib/neo4j/conf/neo4j.conf
    echo 'server.metrics.prometheus.enabled=true' >> /var/lib/neo4j/conf/neo4j.conf
    echo 'server.metrics.prometheus.endpoint=0.0.0.0:2004' >> /var/lib/neo4j/conf/neo4j.conf
    echo 'dbms.logs.query.enabled=INFO' >> /var/lib/neo4j/conf/neo4j.conf
    echo 'dbms.logs.query.threshold=100ms' >> /var/lib/neo4j/conf/neo4j.conf
" 2>/dev/null || echo "Note: Some settings may require container restart"

# Update docker-compose.yml for future restarts
if grep -q "NEO4J_server_metrics_enabled=false" docker-compose.yml; then
    sed -i.bak 's/NEO4J_server_metrics_enabled=false/NEO4J_server_metrics_enabled=true/' docker-compose.yml
    sed -i.bak 's/NEO4J_server_metrics_prometheus_enabled=false/NEO4J_server_metrics_prometheus_enabled=true/' docker-compose.yml
    sed -i.bak 's/NEO4J_dbms_logs_query_enabled=OFF/NEO4J_dbms_logs_query_enabled=INFO/' docker-compose.yml
    echo "✅ Docker compose updated for monitoring"
else
    echo "✅ Docker compose already configured for monitoring"
fi

# Start monitoring stack
echo "Starting monitoring services..."
if [ -f monitoring/docker-compose.monitoring.yml ]; then
    docker-compose -f monitoring/docker-compose.monitoring.yml up -d
else
    echo "❌ monitoring/docker-compose.monitoring.yml not found"
    exit 1
fi

# Wait for services
echo "Waiting for monitoring services to start..."
sleep 20

# Check if metrics endpoint is accessible
if curl -s http://localhost:2004/metrics > /dev/null 2>&1; then
    echo "✅ Neo4j metrics endpoint is accessible"
else
    echo "⚠️  Neo4j metrics endpoint not yet accessible"
    echo "   You may need to restart the graph-db container:"
    echo "   docker-compose restart graph-db"
fi

# Check monitoring services
if curl -s http://localhost:9090/-/healthy > /dev/null 2>&1; then
    echo "✅ Prometheus is running"
else
    echo "❌ Prometheus is not accessible"
fi

if curl -s http://localhost:3000/api/health > /dev/null 2>&1; then
    echo "✅ Grafana is running"
else
    echo "❌ Grafana is not accessible"
fi

echo ""
echo "=== Next Steps ==="
echo "1. Access Grafana: http://localhost:3000 (admin/admin)"
echo "2. Run monitoring: python3 monitoring/neo4j_monitor.py"
echo "3. Run load test: python3 monitoring/load_test_neo4j.py"
echo ""
echo "If metrics are not showing, restart Neo4j:"
echo "docker-compose restart graph-db"
echo ""
echo "To disable monitoring:"
echo "docker-compose -f monitoring/docker-compose.monitoring.yml down"
