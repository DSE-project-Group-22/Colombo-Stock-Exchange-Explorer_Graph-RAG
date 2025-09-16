from pydantic import BaseModel
from typing import Any, Dict, Optional, List


class QueryResponse(BaseModel):
    message: str
    data: Any = None
    success: bool = True


class HealthResponse(BaseModel):
    status: str
    timestamp: str
    version: str = "1.0.0"
    services: Dict[str, str] = {}


# Async chat-related schemas
class ChatRequestResponse(BaseModel):
    """Immediate response for chat requests with correlation_id"""
    correlation_id: str
    thread_id: str
    status: str = "processing"
    message: str = "Your request is being processed"
    poll_url: str
    timestamp: str


class ChatPollResponse(BaseModel):
    """Response for polling endpoint - either completed response or processing status"""
    correlation_id: str
    thread_id: str
    status: str  # "processing", "completed", "error", "not_found"
    response: Optional[str] = None
    timestamp: str
    processing_time_ms: Optional[int] = None


class ChatStatusResponse(BaseModel):
    """Simple status check response"""
    correlation_id: str
    status: str
    thread_id: str
    timestamp: str


class ThreadMessage(BaseModel):
    """Individual message in a thread"""
    role: str  # "user" or "agent"
    content: str
    timestamp: str
    metadata: Optional[Dict[str, Any]] = None


class ThreadMessagesResponse(BaseModel):
    """Response containing all messages in a thread"""
    thread_id: str
    message_count: int
    messages: List[ThreadMessage]
    created_at: Optional[str] = None
    last_activity: Optional[str] = None