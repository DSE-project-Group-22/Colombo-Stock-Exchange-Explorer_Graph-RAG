from pydantic import BaseModel
from typing import Any, Dict


class QueryResponse(BaseModel):
    message: str
    data: Any = None
    success: bool = True


class HealthResponse(BaseModel):
    status: str
    timestamp: str
    version: str = "1.0.0"
    services: Dict[str, str] = {}