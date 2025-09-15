from fastapi import APIRouter, Depends, HTTPException
from pydantic import BaseModel
from typing import Optional
from app.schemas.api import QueryResponse, HealthResponse
from app.auth.dependencies import get_current_active_user
from app.models.user import User
from app.config import settings
from datetime import datetime
import uuid

router = APIRouter(prefix="/api", tags=["api"])

# Import chat handler (will be set by main.py)
chat_handler = None

def set_chat_handler(handler):
    """Set the chat handler instance from main.py"""
    global chat_handler
    chat_handler = handler


# Request/Response schemas for chat endpoint
class ChatRequest(BaseModel):
    message: str
    thread_id: Optional[str] = None

class ChatResponse(BaseModel):
    thread_id: str
    response: str
    timestamp: str
    processing_time_ms: Optional[int] = None


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
            "timestamp": datetime.utcnow().isoformat(),
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


@router.post("/chat", response_model=ChatResponse)
async def chat_endpoint(
    request: ChatRequest,
    current_user: User = Depends(get_current_active_user)
):
    """
    Send a chat message via Kafka and receive response via Redis.
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
        # Send request via Kafka and wait for response via Redis
        result = await chat_handler.send_chat_request(
            thread_id=thread_id,
            user_id=str(current_user.id),
            message=request.message,
            timeout=30.0
        )
        
        return ChatResponse(**result)
        
    except TimeoutError:
        raise HTTPException(
            status_code=504,
            detail="Request timeout - Natural Language Agent did not respond in time"
        )
    except Exception as e:
        raise HTTPException(
            status_code=500,
            detail=f"Error processing chat request: {str(e)}"
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
        timestamp=datetime.utcnow().isoformat(),
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