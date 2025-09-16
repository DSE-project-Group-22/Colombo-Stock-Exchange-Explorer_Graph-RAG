# Async Chat API Usage Guide

## Overview

The API Gateway now supports asynchronous chat processing to prevent HTTP timeouts for long-running queries. Instead of waiting for the response, the client receives an immediate acknowledgment with a correlation ID and can poll for the response when ready.

## New Endpoints

### 1. POST `/api/chat` - Send Async Chat Request
**Returns immediately with correlation_id**

```bash
curl -X POST "http://localhost:8080/api/chat" \
  -H "Authorization: Bearer YOUR_JWT_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "message": "What are the top performing stocks today?",
    "thread_id": "optional-thread-id"
  }'
```

**Response:**
```json
{
  "correlation_id": "uuid-here",
  "thread_id": "thread_abc123",
  "status": "processing",
  "message": "Your request is being processed",
  "poll_url": "/api/chat/poll/uuid-here",
  "timestamp": "2025-01-16T10:30:00Z"
}
```

### 2. GET `/api/chat/poll/{correlation_id}` - Poll for Response

```bash
curl -X GET "http://localhost:8080/api/chat/poll/uuid-here" \
  -H "Authorization: Bearer YOUR_JWT_TOKEN"
```

**Response (Processing):**
```json
{
  "correlation_id": "uuid-here",
  "thread_id": "thread_abc123",
  "status": "processing",
  "response": null,
  "timestamp": "2025-01-16T10:30:05Z",
  "processing_time_ms": null
}
```

**Response (Completed):**
```json
{
  "correlation_id": "uuid-here",
  "thread_id": "thread_abc123", 
  "status": "completed",
  "response": "Based on the latest data, here are the top performing stocks...",
  "timestamp": "2025-01-16T10:30:15Z",
  "processing_time_ms": 12500
}
```

### 3. GET `/api/chat/status/{correlation_id}` - Quick Status Check

```bash
curl -X GET "http://localhost:8080/api/chat/status/uuid-here" \
  -H "Authorization: Bearer YOUR_JWT_TOKEN"
```

**Response:**
```json
{
  "correlation_id": "uuid-here",
  "status": "completed",
  "thread_id": "thread_abc123",
  "timestamp": "2025-01-16T10:30:15Z"
}
```


## Client Implementation Examples

### JavaScript/TypeScript Example

```javascript
class AsyncChatClient {
  constructor(baseUrl, token) {
    this.baseUrl = baseUrl;
    this.token = token;
  }

  async sendMessage(message, threadId = null) {
    const response = await fetch(`${this.baseUrl}/api/chat`, {
      method: 'POST',
      headers: {
        'Authorization': `Bearer ${this.token}`,
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({ message, thread_id: threadId })
    });
    
    return await response.json();
  }

  async pollForResponse(correlationId, maxAttempts = 30) {
    for (let i = 0; i < maxAttempts; i++) {
      const response = await fetch(
        `${this.baseUrl}/api/chat/poll/${correlationId}`,
        {
          headers: { 'Authorization': `Bearer ${this.token}` }
        }
      );
      
      const data = await response.json();
      
      if (data.status === 'completed') {
        return data;
      } else if (data.status === 'processing') {
        await new Promise(resolve => setTimeout(resolve, 2000)); // Wait 2 seconds
        continue;
      } else {
        throw new Error(`Unexpected status: ${data.status}`);
      }
    }
    
    throw new Error('Timeout waiting for response');
  }

  async sendAndWait(message, threadId = null) {
    // Send message
    const initial = await this.sendMessage(message, threadId);
    console.log(`Message sent, correlation_id: ${initial.correlation_id}`);
    
    // Poll for response
    const result = await this.pollForResponse(initial.correlation_id);
    console.log(`Response received after ${result.processing_time_ms}ms`);
    
    return result;
  }
}

// Usage
const client = new AsyncChatClient('http://localhost:8080', 'your-jwt-token');

client.sendAndWait('What is the current market status?')
  .then(result => console.log('Response:', result.response))
  .catch(error => console.error('Error:', error));
```

### Python Example

```python
import asyncio
import httpx
import time

class AsyncChatClient:
    def __init__(self, base_url: str, token: str):
        self.base_url = base_url
        self.token = token
        self.client = httpx.AsyncClient()
    
    async def send_message(self, message: str, thread_id: str = None):
        data = {"message": message}
        if thread_id:
            data["thread_id"] = thread_id
            
        response = await self.client.post(
            f"{self.base_url}/api/chat",
            json=data,
            headers={"Authorization": f"Bearer {self.token}"}
        )
        return response.json()
    
    async def poll_for_response(self, correlation_id: str, max_attempts: int = 30):
        for i in range(max_attempts):
            response = await self.client.get(
                f"{self.base_url}/api/chat/poll/{correlation_id}",
                headers={"Authorization": f"Bearer {self.token}"}
            )
            
            data = response.json()
            
            if data["status"] == "completed":
                return data
            elif data["status"] == "processing":
                await asyncio.sleep(2)  # Wait 2 seconds
                continue
            else:
                raise Exception(f"Unexpected status: {data['status']}")
        
        raise Exception("Timeout waiting for response")
    
    async def send_and_wait(self, message: str, thread_id: str = None):
        # Send message
        initial = await self.send_message(message, thread_id)
        print(f"Message sent, correlation_id: {initial['correlation_id']}")
        
        # Poll for response
        result = await self.poll_for_response(initial["correlation_id"])
        print(f"Response received after {result['processing_time_ms']}ms")
        
        return result

# Usage
async def main():
    client = AsyncChatClient('http://localhost:8080', 'your-jwt-token')
    
    try:
        result = await client.send_and_wait('What is the current market status?')
        print('Response:', result['response'])
    finally:
        await client.client.aclose()

asyncio.run(main())
```

## WebSocket Integration (Future)

The current async architecture is designed to support WebSocket notifications in the future:

```javascript
// Future WebSocket implementation
const ws = new WebSocket(`ws://localhost:8080/ws/user/${userId}`);

// Send HTTP request
const initial = await sendMessage('What are the top stocks?');

// Listen for response on WebSocket
ws.onmessage = (event) => {
  const data = JSON.parse(event.data);
  if (data.correlation_id === initial.correlation_id) {
    console.log('Response received via WebSocket:', data.response);
  }
};
```

## Error Handling

### Common HTTP Status Codes

- `200` - Success
- `404` - Request not found or expired (correlation_id doesn't exist)
- `401` - Unauthorized (invalid or missing JWT token)
- `500` - Server error
- `503` - Service unavailable (Kafka/Redis not connected)

### Response Status Values

- `processing` - Request is being processed by the Natural Language Agent
- `completed` - Response is ready and included in the response
- `error` - An error occurred during processing
- `not_found` - Request not found (shouldn't happen if correlation_id is valid)

## Testing

Run the test script to verify the async flow works:

```bash
cd "API Gateway"
python test_async_chat.py
```

The test script will:
1. Check health endpoints
2. Register a test user (if not in development mode)  
3. Login and get JWT token
4. Send an async chat message
5. Poll for the response
6. Display the result

## Monitoring

### Health Check Endpoints

- `GET /api/health` - Overall API Gateway health
- `GET /internal/subscriber/health` - Response subscriber health and stats

### Debugging

- Check API Gateway logs for request processing
- Check NL Agent logs for message processing
- Monitor Redis keys: `request:*` and `response:*`
- Verify Kafka topic `chat.requests` has messages

## Benefits

1. **No More Timeouts**: Long-running queries won't cause HTTP timeouts
2. **Better UX**: Immediate feedback that request is being processed  
3. **Scalable**: Can handle many concurrent requests
4. **Future-Ready**: Foundation for WebSocket real-time updates

