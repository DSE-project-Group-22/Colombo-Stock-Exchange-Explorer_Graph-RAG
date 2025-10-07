from pydantic import BaseModel
from typing import Optional


class VisualizationRequest(BaseModel):
    """Simple request for visualization Cypher generation"""
    message: str
    thread_id: Optional[str] = None


class VisualizationResponse(BaseModel):
    """Simple response with generated Cypher query"""
    cypher: str
    success: bool
    error: Optional[str] = None