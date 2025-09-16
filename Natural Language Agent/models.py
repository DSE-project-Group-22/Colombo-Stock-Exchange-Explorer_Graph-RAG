"""
Message models shared between server and message processor.
"""
import uuid
from datetime import datetime, timezone
from typing import Optional
from enum import Enum
from pydantic import BaseModel, Field


class MessageRole(str, Enum):
    """Message sender role"""
    USER = "user"
    AGENT = "agent"


class MessageMetadata(BaseModel):
    """Optional metadata for messages"""
    user_id: Optional[str] = None
    agent_type: Optional[str] = None
    model: Optional[str] = None
    tokens_used: Optional[int] = None
    processing_time: Optional[float] = None


class ChatMessage(BaseModel):
    """Complete message structure"""
    id: str = Field(default_factory=lambda: f"msg_{uuid.uuid4().hex[:12]}")
    thread_id: str
    role: MessageRole
    content: str
    timestamp: datetime = Field(default_factory=lambda: datetime.now(timezone.utc))
    metadata: Optional[MessageMetadata] = None