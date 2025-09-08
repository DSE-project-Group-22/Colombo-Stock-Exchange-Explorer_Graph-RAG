#!/bin/bash

# Wait for Neo4j to be ready
echo "Waiting for Neo4j to start..."
until cypher-shell -u neo4j -p password "RETURN 1" > /dev/null 2>&1; do
    sleep 2
done

echo "Neo4j is ready. Executing cypher scripts..."

# Execute all cypher files in order
for script in /var/lib/neo4j/import/cypher_queries/*.cypher; do
    if [ -f "$script" ]; then
        echo "Executing: $script"
        cypher-shell -u neo4j -p password --file "$script"
        if [ $? -eq 0 ]; then
            echo "Successfully executed: $script"
        else
            echo "Error executing: $script"
        fi
    fi
done

echo "All cypher scripts have been executed."
