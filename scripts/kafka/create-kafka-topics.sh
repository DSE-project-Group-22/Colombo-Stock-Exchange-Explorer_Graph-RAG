#!/bin/bash

# Kafka Topic Creation Script
# This script creates the necessary Kafka topics for the application
# Run this after starting Kafka and Zookeeper services

echo "========================================="
echo "Kafka Topic Creation Script"
echo "========================================="

# Configuration
KAFKA_CONTAINER="cse-explorer-kafka"
BOOTSTRAP_SERVER="localhost:29092"

# Check if Kafka container is running
if ! docker ps | grep -q $KAFKA_CONTAINER; then
    echo "❌ Error: Kafka container '$KAFKA_CONTAINER' is not running."
    echo "Please run: docker compose up -d zookeeper kafka"
    exit 1
fi

echo "✓ Kafka container is running"

# Wait for Kafka to be ready
echo "Waiting for Kafka to be ready..."
sleep 5

# Function to create a topic
create_topic() {
    local TOPIC_NAME=$1
    local PARTITIONS=$2
    local RETENTION_MS=$3
    
    echo ""
    echo "Creating topic: $TOPIC_NAME"
    
    # Check if topic already exists
    if docker exec $KAFKA_CONTAINER kafka-topics --list --bootstrap-server $BOOTSTRAP_SERVER | grep -q "^$TOPIC_NAME$"; then
        echo "  ✓ Topic '$TOPIC_NAME' already exists"
    else
        # Create the topic
        docker exec $KAFKA_CONTAINER kafka-topics \
            --create \
            --topic $TOPIC_NAME \
            --bootstrap-server $BOOTSTRAP_SERVER \
            --partitions $PARTITIONS \
            --replication-factor 1 \
            --config retention.ms=$RETENTION_MS \
            --config compression.type=gzip \
            --config min.insync.replicas=1
        
        if [ $? -eq 0 ]; then
            echo "  ✓ Topic '$TOPIC_NAME' created successfully"
        else
            echo "  ❌ Failed to create topic '$TOPIC_NAME'"
            exit 1
        fi
    fi
}

# Create topics
echo ""
echo "Creating Kafka topics..."
echo "------------------------"

# chat.requests - For job distribution to NL Agent
# 7 days retention (604800000 ms)
create_topic "chat.requests" 3 604800000

# chat.responses - For audit/analytics (optional)
# 30 days retention (2592000000 ms)
create_topic "chat.responses" 3 2592000000

# List all topics
echo ""
echo "Listing all topics:"
echo "-------------------"
docker exec $KAFKA_CONTAINER kafka-topics --list --bootstrap-server $BOOTSTRAP_SERVER

echo ""
echo "========================================="
echo "✅ Kafka topics setup complete!"
echo "========================================="
echo ""
echo "You can now:"
echo "1. Monitor topics at http://localhost:8090 (Kafka UI)"
echo "2. Run the test script: python utils/test_messaging.py"
echo "3. Start the NL Agent consumer: python 'Natural Language Agent/kafka_runner.py'"