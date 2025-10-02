from fastapi import FastAPI, Request, HTTPException
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import JSONResponse
import uvicorn
import logging
from contextlib import asynccontextmanager
from datetime import datetime, timezone

from app.config import settings
from app.routers import auth, api, sse
from app.database.connection import engine, Base
from chat_handler import ChatHandler
from response_subscriber import ResponseSubscriber

# Configure logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

# Initialize chat handler and response subscriber
chat_handler = ChatHandler()
response_subscriber = ResponseSubscriber()


@asynccontextmanager
async def lifespan(app: FastAPI):
    # Startup
    logger.info("Starting up API Gateway...")
    try:
        # Create database tables
        Base.metadata.create_all(bind=engine)
        logger.info("Database tables created successfully")
        
        # Initialize chat handler (Kafka and Redis connections)
        await chat_handler.startup()
        logger.info("Chat handler initialized successfully")
        
        # Initialize response subscriber
        await response_subscriber.startup()
        await response_subscriber.start_subscribing()
        logger.info("Response subscriber initialized and started")
        
        # Set chat handler in API router
        api.set_chat_handler(chat_handler)
        
        logger.info("All services initialized successfully")
    except Exception as e:
        logger.error(f"Failed to initialize services: {e}")
    
    yield
    
    # Shutdown
    logger.info("Shutting down API Gateway...")
    try:
        # Shutdown response subscriber first
        await response_subscriber.shutdown()
        logger.info("Response subscriber shut down successfully")
        
        # Shutdown chat handler
        await chat_handler.shutdown()
        logger.info("Chat handler shut down successfully")
    except Exception as e:
        logger.error(f"Error during shutdown: {e}")


app = FastAPI(
    title="CSE Explorer API Gateway",
    description="API Gateway for Colombo Stock Exchange Explorer with Graph RAG",
    version="1.0.0",
    lifespan=lifespan
)

# CORS middleware
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # Configure this properly in production
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


# Exception handlers
@app.exception_handler(HTTPException)
async def http_exception_handler(request: Request, exc: HTTPException):
    return JSONResponse(
        status_code=exc.status_code,
        content={
            "message": exc.detail,
            "success": False,
            "status_code": exc.status_code
        }
    )


@app.exception_handler(Exception)
async def general_exception_handler(request: Request, exc: Exception):
    logger.error(f"Unhandled exception: {exc}")
    return JSONResponse(
        status_code=500,
        content={
            "message": "Internal server error",
            "success": False,
            "status_code": 500
        }
    )


# Include routers
app.include_router(auth.router)
app.include_router(api.router)
app.include_router(sse.router)


# Add endpoint for response subscriber health
@app.get("/internal/subscriber/health")
async def subscriber_health():
    """Internal health check for response subscriber"""
    try:
        health = await response_subscriber.health_check()
        stats = await response_subscriber.get_stats()
        return {
            "subscriber_health": health,
            "subscriber_stats": stats,
            "timestamp": datetime.now(timezone.utc).isoformat()
        }
    except Exception as e:
        logger.error(f"Error checking subscriber health: {e}")
        return {
            "error": str(e),
            "subscriber_health": {"subscriber": "error"},
            "subscriber_stats": {}
        }


@app.get("/")
async def root():
    return {
        "message": "CSE Explorer API Gateway",
        "version": "1.0.0",
        "status": "running",
        "development_mode": settings.development_mode,
        "docs": "/docs",
        "health": "/api/health"
    }


if __name__ == "__main__":
    uvicorn.run(
        "main:app",
        host=settings.api_host,
        port=settings.api_port,
        reload=settings.api_reload,
        log_level="info"
    )