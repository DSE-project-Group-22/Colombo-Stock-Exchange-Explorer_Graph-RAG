#!/bin/bash

echo "Starting Neo4j with CSE data initialization..."

# Start Neo4j in background using the correct command
neo4j start

# Wait for Neo4j to be ready
echo "Waiting for Neo4j to be ready..."
until cypher-shell -u neo4j -p password "RETURN 1;" > /dev/null 2>&1; do
  echo "Still waiting for Neo4j..."
  sleep 3
done

echo "Neo4j is ready! Checking for existing data..."

# Check if data exists
DATA_COUNT=$(cypher-shell -u neo4j -p password "MATCH (n) RETURN count(n) as count;" --format plain | tail -1 | tr -d ' ')

if [ "$DATA_COUNT" = "0" ] || [ -z "$DATA_COUNT" ]; then
  echo "No data found. Loading Colombo Stock Exchange data..."
  cypher-shell -u neo4j -p password < /init.cypher
  
  # Verify data was loaded
  NEW_COUNT=$(cypher-shell -u neo4j -p password "MATCH (n) RETURN count(n) as count;" --format plain | tail -1 | tr -d ' ')
  echo "Data loading complete! Total nodes: $NEW_COUNT"
else
  echo "Data already exists. Total nodes: $DATA_COUNT"
fi

echo "Neo4j with CSE data is ready!"
echo "Access Neo4j Browser at http://localhost:7474"
echo "Default credentials: neo4j/password"

# Keep Neo4j running in foreground
neo4j console