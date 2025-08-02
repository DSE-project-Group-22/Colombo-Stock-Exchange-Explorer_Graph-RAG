from fastapi import APIRouter, Depends
from app.schemas.api import QueryResponse, HealthResponse
from app.auth.dependencies import get_current_active_user
from app.models.user import User
from app.config import settings
from datetime import datetime

router = APIRouter(prefix="/api", tags=["api"])


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


@router.get("/health", response_model=HealthResponse)
def health_check():
    """
    Health check endpoint for monitoring.
    This endpoint is public and doesn't require authentication.
    """
    return HealthResponse(
        status="healthy",
        timestamp=datetime.utcnow().isoformat(),
        version="1.0.0",
        services={
            "database": "connected" if not settings.development_mode else "development_mode",
            "nl_agent": settings.nl_agent_url,
            "rag_service": settings.rag_service_url,
            "data_pipeline": settings.data_pipeline_url
        }
    )