#!/bin/sh
set -e

echo "Starting Neo4j with optional Cypher seeding..."

DATA_ROOT="/data"
SEED_MARKER="${DATA_ROOT}/.seeded"
FIRST_RUN=true

# Respect existing marker file if present
if [ -f "$SEED_MARKER" ]; then
    echo "Seed marker found at $SEED_MARKER. Cypher scripts will be skipped."
    FIRST_RUN=false
fi

# Ensure the configuration directory exists and write minimal configuration
mkdir -p /var/lib/neo4j/conf
echo "Writing neo4j.conf with required settings..."
cat <<EOT > /var/lib/neo4j/conf/neo4j.conf
server.default_listen_address=0.0.0.0
server.bolt.listen_address=0.0.0.0:7687
server.http.listen_address=0.0.0.0:7474
server.config.strict_validation.enabled=false
dbms.security.procedures.unrestricted=gds.*,apoc.*
dbms.security.procedures.allowlist=gds.*,apoc.*
dbms.connector.http.enabled=true
dbms.security.http_access_control_allow_origin=*
EOT

# Start Neo4j in the background
echo "Starting Neo4j..."
/startup/docker-entrypoint.sh neo4j --verbose &
NEO4J_PID=$!

echo "Waiting for Neo4j to become available (timeout 300s)..."
TIMEOUT=300
COUNTER=0

while [ $COUNTER -lt $TIMEOUT ]; do
    if cypher-shell -u neo4j -p password -a bolt://localhost:7687 "RETURN 1" >/dev/null 2>&1; then
        echo "Neo4j is up and responding."
        break
    fi
    echo "Neo4j not ready yet... ($COUNTER/$TIMEOUT)"
    sleep 3
    COUNTER=$((COUNTER + 3))
done

if [ $COUNTER -ge $TIMEOUT ]; then
    echo "Error: Neo4j did not start within ${TIMEOUT}s"
    echo "Dumping Neo4j logs for debugging..."
    cat /logs/* 2>/dev/null || echo "No logs available"
    kill $NEO4J_PID 2>/dev/null || true
    exit 1
fi

if [ "$FIRST_RUN" = true ]; then
    echo "Checking for existing graph data before seeding..."
    NODE_COUNT=$(cypher-shell -u neo4j -p password -a bolt://localhost:7687 --format plain "MATCH (n) RETURN COUNT(n) AS count" 2>/dev/null | tail -n +2 | tr -d '\r' || echo "")
    if printf '%s' "$NODE_COUNT" | grep -Eq '^[0-9]+$'; then
        if [ "$NODE_COUNT" -gt 0 ]; then
            echo "Detected ${NODE_COUNT} existing nodes. Skipping Cypher scripts and writing seed marker."
            if ! touch "$SEED_MARKER"; then
                echo "Warning: Unable to write seed marker. Seeding may run again next start."
            fi
            FIRST_RUN=false
        else
            echo "No existing nodes detected (count='${NODE_COUNT:-0}'). Proceeding with Cypher seed scripts."
        fi
    else
        echo "Could not parse node count ('${NODE_COUNT}'); assuming no existing data and proceeding with seeding."
    fi
fi

if [ "$FIRST_RUN" = true ]; then
    echo "Neo4j ready. Looking for Cypher scripts in /cypher_queries..."

    if [ ! -d "/cypher_queries" ]; then
        echo "Error: /cypher_queries directory does not exist"
        kill $NEO4J_PID 2>/dev/null || true
        exit 1
    fi

    echo "Contents of /cypher_queries:"
    ls -la /cypher_queries/ || echo "Cannot list directory contents"

    CYPHER_FILES=$(find /cypher_queries -name "*.cypher" -type f 2>/dev/null | sort)

    if [ -z "$CYPHER_FILES" ]; then
        echo "Warning: No .cypher files found in /cypher_queries"
        echo "Available files:"
        find /cypher_queries -type f 2>/dev/null || echo "No files found"
    else
        echo "Executing Cypher files in sorted order..."
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
        echo "All Cypher scripts executed successfully."
    fi

    echo "Creating seed marker at $SEED_MARKER"
    if ! touch "$SEED_MARKER"; then
        echo "Warning: Unable to write seed marker. Seeding may run again next start."
    fi
else
    echo "Skipping Cypher script execution; existing data will be reused."
fi

echo "Neo4j started successfully. Waiting for process PID $NEO4J_PID..."
wait $NEO4J_PID
