#!/bin/bash

echo "Testing transcript loading fix..."

# First, send a message to create a thread
echo -e "\n1. Sending first message..."
RESPONSE1=$(curl -s -X POST http://localhost:8080/api/chat \
  -H "Content-Type: application/json" \
  -d '{"message": "Hello, I am testing the chat", "thread_id": "test-transcript-123"}')

CORRELATION1=$(echo "$RESPONSE1" | python3 -c "import sys, json; print(json.load(sys.stdin).get('correlation_id', ''))")
echo "Correlation ID 1: $CORRELATION1"

# Wait a bit for processing
echo "Waiting for processing..."
sleep 5

# Poll for first response
echo -e "\n2. Polling for first response..."
POLL1=$(curl -s http://localhost:8080/api/chat/poll/$CORRELATION1)
echo "$POLL1" | python3 -m json.tool | head -20

# Send second message on same thread
echo -e "\n3. Sending second message on same thread..."
RESPONSE2=$(curl -s -X POST http://localhost:8080/api/chat \
  -H "Content-Type: application/json" \
  -d '{"message": "Can you see my previous message?", "thread_id": "test-transcript-123"}')

CORRELATION2=$(echo "$RESPONSE2" | python3 -c "import sys, json; print(json.load(sys.stdin).get('correlation_id', ''))")
echo "Correlation ID 2: $CORRELATION2"

# Wait for processing
echo "Waiting for processing..."
sleep 5

# Poll for second response
echo -e "\n4. Polling for second response..."
POLL2=$(curl -s http://localhost:8080/api/chat/poll/$CORRELATION2)
echo "$POLL2" | python3 -m json.tool | head -20

# Check NL Agent logs for transcript loading
echo -e "\n5. Checking NL Agent logs for transcript loading..."
docker logs cse-explorer-nl-agent --tail 30 | grep -E "(Loaded transcript|Processing message|thread)"

echo -e "\nTest complete!"