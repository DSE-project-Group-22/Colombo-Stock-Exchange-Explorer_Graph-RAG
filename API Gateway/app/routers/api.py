from fastapi import APIRouter, Depends, HTTPException
from fastapi.responses import JSONResponse
import httpx
from pydantic import BaseModel
from typing import Optional
from app.schemas.api import QueryResponse, HealthResponse, ChatRequestResponse, ChatPollResponse, ChatStatusResponse, ThreadMessagesResponse, ThreadMessage
from app.auth.dependencies import get_current_active_user
from app.models.user import User
from app.config import settings
from datetime import datetime, timezone
import uuid

router = APIRouter(prefix="/api", tags=["api"])

# Import chat handler (will be set by main.py)
chat_handler = None

def set_chat_handler(handler):
    """Set the chat handler instance from main.py"""
    global chat_handler
    chat_handler = handler


# Request schema for chat endpoint
class ChatRequest(BaseModel):
    message: str
    thread_id: Optional[str] = None


@router.get("/query", response_model=QueryResponse)
def dummy_query(current_user: User = Depends(get_current_active_user)):
    """
    Dummy query endpoint that returns a hardcoded string.
    This endpoint is protected and requires authentication.
    """
    return QueryResponse(
        message="Hello from CSE Explorer API Gateway! This is a dummy response.",
        data={
            "user": current_user.username,
            "timestamp": datetime.now(timezone.utc).isoformat(),
            "services_available": [
                "Natural Language Agent",
                "RAG Service", 
                "Data Pipeline",
                "Graph Database"
            ],
            "development_mode": settings.development_mode
        },
        success=True
    )


@router.post("/chat", response_model=ChatRequestResponse)
async def chat_endpoint(
    request: ChatRequest,
    current_user: User = Depends(get_current_active_user)
):
    """
    Send a chat message via Kafka and return immediately with correlation_id.
    This endpoint is protected and requires authentication.
    """
    if not chat_handler:
        raise HTTPException(
            status_code=503,
            detail="Chat service not initialized"
        )
    
    # Generate thread_id if not provided
    thread_id = request.thread_id
    if not thread_id:
        thread_id = f"thread_{uuid.uuid4().hex[:8]}"
    
    try:
        # Send request via Kafka and return correlation_id immediately
        correlation_id = await chat_handler.send_chat_request_async(
            thread_id=thread_id,
            user_id=str(current_user.id),
            message=request.message
        )
        
        timestamp = datetime.now(timezone.utc).isoformat()
        
        return ChatRequestResponse(
            correlation_id=correlation_id,
            thread_id=thread_id,
            status="processing",
            message="Your request is being processed",
            poll_url=f"/api/chat/poll/{correlation_id}",
            timestamp=timestamp
        )
        
    except Exception as e:
        raise HTTPException(
            status_code=500,
            detail=f"Error processing chat request: {str(e)}"
        )


@router.get("/chat/poll/{correlation_id}", response_model=ChatPollResponse)
async def poll_chat_response(
    correlation_id: str,
    current_user: User = Depends(get_current_active_user)
):
    """
    Poll for a chat response using correlation_id.
    Returns the response if ready, or processing status if still processing.
    This endpoint is protected and requires authentication.
    """
    if not chat_handler:
        raise HTTPException(
            status_code=503,
            detail="Chat service not initialized"
        )
    
    try:
        response_data = await chat_handler.get_response(correlation_id)
        
        if not response_data:
            raise HTTPException(
                status_code=404,
                detail=f"Request {correlation_id} not found or expired"
            )
        
        return ChatPollResponse(
            correlation_id=correlation_id,
            thread_id=response_data.get('thread_id', ''),
            status=response_data.get('status', 'processing'),
            response=response_data.get('response'),
            timestamp=response_data.get('timestamp', datetime.now(timezone.utc).isoformat()),
            processing_time_ms=response_data.get('processing_time_ms')
        )
        
    except HTTPException:
        raise
    except Exception as e:
        raise HTTPException(
            status_code=500,
            detail=f"Error polling chat response: {str(e)}"
        )


@router.get("/chat/status/{correlation_id}", response_model=ChatStatusResponse)
async def get_chat_status(
    correlation_id: str,
    current_user: User = Depends(get_current_active_user)
):
    """
    Get simple status of a chat request.
    This endpoint is protected and requires authentication.
    """
    if not chat_handler:
        raise HTTPException(
            status_code=503,
            detail="Chat service not initialized"
        )
    
    try:
        status_data = await chat_handler.get_request_status(correlation_id)
        
        if not status_data:
            raise HTTPException(
                status_code=404,
                detail=f"Request {correlation_id} not found or expired"
            )
        
        return ChatStatusResponse(
            correlation_id=correlation_id,
            status=status_data.get('status', 'unknown'),
            thread_id=status_data.get('thread_id', ''),
            timestamp=status_data.get('timestamp', datetime.now(timezone.utc).isoformat())
        )
        
    except HTTPException:
        raise
    except Exception as e:
        raise HTTPException(
            status_code=500,
            detail=f"Error getting chat status: {str(e)}"
        )


@router.get("/chat/thread/{thread_id}", response_model=ThreadMessagesResponse)
async def get_thread_messages(
    thread_id: str,
    current_user: User = Depends(get_current_active_user)
):
    """
    Get all messages for a specific thread.
    This endpoint is protected and requires authentication.
    """
    if not chat_handler:
        raise HTTPException(
            status_code=503,
            detail="Chat service not initialized"
        )
    
    try:
        thread_data = await chat_handler.get_thread_messages(thread_id)
        
        if not thread_data:
            raise HTTPException(
                status_code=404,
                detail=f"Thread {thread_id} not found or has no messages"
            )
        
        # Convert to response format
        messages = []
        for msg in thread_data.get('messages', []):
            messages.append(ThreadMessage(
                role=msg.get('role', ''),
                content=msg.get('content', ''),
                timestamp=msg.get('timestamp', ''),
                metadata=msg.get('metadata')
            ))
        
        return ThreadMessagesResponse(
            thread_id=thread_id,
            message_count=thread_data.get('message_count', 0),
            messages=messages,
            created_at=thread_data.get('created_at'),
            last_activity=thread_data.get('last_activity')
        )
        
    except HTTPException:
        raise
    except Exception as e:
        raise HTTPException(
            status_code=500,
            detail=f"Error retrieving thread messages: {str(e)}"
        )


@router.get("/health", response_model=HealthResponse)
async def health_check():
    """
    Health check endpoint for monitoring.
    This endpoint is public and doesn't require authentication.
    """
    # Get messaging health if handler available
    messaging_health = {}
    if chat_handler:
        try:
            messaging_health = await chat_handler.health_check()
        except:
            messaging_health = {"kafka": "error", "redis": "error"}
    
    return HealthResponse(
        status="healthy" if messaging_health.get('overall') == 'healthy' else "degraded",
        timestamp=datetime.now(timezone.utc).isoformat(),
        version="1.0.0",
        services={
            "database": "connected" if not settings.development_mode else "development_mode",
            "nl_agent": settings.nl_agent_url,
            "rag_service": settings.rag_service_url,
            "data_pipeline": settings.data_pipeline_url,
            "kafka": messaging_health.get('kafka', 'not_initialized'),
            "redis": messaging_health.get('redis', 'not_initialized')
        }
    )


@router.post("/marketStatus")
async def market_status_proxy():
    """
    Proxy endpoint to fetch market status from https://www.cse.lk/api/marketStatus
    Adds headers similar to a browser request to improve chances the upstream returns JSON.
    Returns parsed JSON when possible, otherwise returns the raw text under the `raw` key.
    """
    url = "https://www.cse.lk/api/marketStatus"
    headers = {
        "Accept": "application/json, text/plain, */*",
        "Content-Type": "application/json",
        "Origin": "https://www.cse.lk",
        "Referer": "https://www.cse.lk/",
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36",
    }

    try:
        async with httpx.AsyncClient(timeout=10.0) as client:
            # send an empty JSON body to mimic a browser/API client when required
            resp = await client.post(url, headers=headers, json={})
    except Exception as e:
        raise HTTPException(status_code=502, detail=f"Upstream request failed: {str(e)}")

    content_type = resp.headers.get("content-type", "")
    text = resp.text

    if resp.status_code >= 400:
        # forward upstream error
        raise HTTPException(status_code=502, detail=f"Upstream returned {resp.status_code}")

    # Try to parse as JSON
    if "application/json" in content_type.lower():
        try:
            return JSONResponse(status_code=200, content=resp.json())
        except Exception:
            # fallthrough to raw text
            pass

    # If not JSON, return raw text under `raw` key to the frontend
    return JSONResponse(status_code=200, content={"raw": text})


@router.post("/aspiData")
async def aspi_data_proxy():
    """
    Proxy endpoint to fetch ASPI data from https://www.cse.lk/api/aspiData
    Uses the same headers and POST method as marketStatus proxy.
    """
    url = "https://www.cse.lk/api/aspiData"
    headers = {
        "Accept": "application/json, text/plain, */*",
        "Content-Type": "application/json",
        "Origin": "https://www.cse.lk",
        "Referer": "https://www.cse.lk/",
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36",
    }

    try:
        async with httpx.AsyncClient(timeout=10.0) as client:
            resp = await client.post(url, headers=headers, json={})
    except Exception as e:
        raise HTTPException(status_code=502, detail=f"Upstream request failed: {str(e)}")

    content_type = resp.headers.get("content-type", "")
    text = resp.text

    if resp.status_code >= 400:
        # forward upstream error
        raise HTTPException(status_code=502, detail=f"Upstream returned {resp.status_code}")

    # Try to parse as JSON
    if "application/json" in content_type.lower():
        try:
            return JSONResponse(status_code=200, content=resp.json())
        except Exception:
            # fallthrough to raw text
            pass

    # If not JSON, return raw text under `raw` key to the frontend
    return JSONResponse(status_code=200, content={"raw": text})
