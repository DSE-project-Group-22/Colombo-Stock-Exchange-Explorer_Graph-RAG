#!/bin/bash
set -e

echo "Starting Neo4j database clearing and Cypher query execution..."

# Clear the database by removing the data directory contents
echo "Clearing Neo4j database..."
rm -rf /data/* || { echo "Failed to clear database"; exit 1; }

# Clear the configuration directory to avoid cached settings
echo "Clearing Neo4j configuration directory..."
rm -rf /var/lib/neo4j/conf/* || { echo "Failed to clear configuration directory"; exit 1; }

# Create a minimal neo4j.conf with required settings
echo "Creating minimal neo4j.conf..."
cat <<EOT > /var/lib/neo4j/conf/neo4j.conf
server.default_listen_address=0.0.0.0
server.bolt.listen_address=0.0.0.0:7687
server.http.listen_address=0.0.0.0:7474
server.config.strict_validation.enabled=false
dbms.security.procedures.unrestricted=gds.*,apoc.*
dbms.security.procedures.allowlist=gds.*,apoc.*
EOT

# Start Neo4j in the background with verbose logging
echo "Starting Neo4j with verbose output..."
/startup/docker-entrypoint.sh neo4j --verbose &
NEO4J_PID=$!

echo "Waiting for Neo4j to be ready (up to 300 seconds)..."
TIMEOUT=300
COUNTER=0

while [ $COUNTER -lt $TIMEOUT ]; do
    if cypher-shell -u neo4j -p password -a bolt://localhost:7687 "RETURN 1" > /dev/null 2>&1; then
        echo "Neo4j is up and running."
        break
    fi
    echo "Waiting for Neo4j... ($COUNTER/$TIMEOUT)"
    sleep 3
    COUNTER=$((COUNTER + 3))
done

if [ $COUNTER -ge $TIMEOUT ]; then
    echo "Error: Neo4j did not start within $TIMEOUT seconds"
    echo "Dumping Neo4j logs for debugging..."
    cat /logs/* 2>/dev/null || echo "No logs available"
    kill $NEO4J_PID 2>/dev/null || true
    exit 1
fi

echo "Neo4j is ready. Checking for Cypher scripts in /cypher_queries..."

# Check if cypher_queries directory exists
if [ ! -d "/cypher_queries" ]; then
    echo "Error: /cypher_queries directory does not exist"
    kill $NEO4J_PID 2>/dev/null || true
    exit 1
fi

# List contents of the directory for debugging
echo "Contents of /cypher_queries:"
ls -la /cypher_queries/ || echo "Cannot list directory contents"

# Check for .cypher files
CYPHER_FILES=$(find /cypher_queries -name "*.cypher" -type f 2>/dev/null | sort)

if [ -z "$CYPHER_FILES" ]; then
    echo "Warning: No .cypher files found in /cypher_queries"
    echo "Available files:"
    find /cypher_queries -type f 2>/dev/null || echo "No files found"
else
    echo "Found Cypher files. Executing scripts in sorted order..."
    for script in $CYPHER_FILES; do
        if [ -f "$script" ]; then
            echo "Executing: $script"
            if cypher-shell -u neo4j -p password -a bolt://localhost:7687 --file "$script"; then
                echo "Successfully executed: $script"
            else
                echo "Error executing: $script"
                kill $NEO4J_PID 2>/dev/null || true
                exit 1
            fi
        fi
    done
    echo "All Cypher scripts have been executed successfully."
fi

echo "Keeping Neo4j running..."
wait $NEO4J_PID