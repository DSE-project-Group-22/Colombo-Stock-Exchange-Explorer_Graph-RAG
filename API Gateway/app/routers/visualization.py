from fastapi import APIRouter, Depends, HTTPException
from app.schemas.visualization import VisualizationRequest, VisualizationResponse
from app.auth.dependencies import get_current_active_user
from app.models.user import User
from datetime import datetime, timezone
import uuid
import json
import logging

logger = logging.getLogger(__name__)

router = APIRouter(prefix="/api/visualize", tags=["visualization"])

# Chat handler will be set by main.py
chat_handler = None

def set_chat_handler(handler):
    """Set the chat handler instance from main.py"""
    global chat_handler
    chat_handler = handler


@router.post("/")
async def create_visualization(
    request: VisualizationRequest,
    current_user: User = Depends(get_current_active_user)
):
    """
    Submit a visualization request for Cypher query generation.
    Returns a correlation_id for polling the result.
    """
    if not chat_handler:
        raise HTTPException(
            status_code=503,
            detail="Visualization service not initialized"
        )
    
    # Generate IDs
    thread_id = request.thread_id or f"viz_{uuid.uuid4().hex[:8]}"
    correlation_id = str(uuid.uuid4())
    timestamp = datetime.now(timezone.utc)
    
    # Store request info for tracking
    await chat_handler.store_request_info(
        correlation_id=correlation_id,
        user_id=str(current_user.id),
        thread_id=thread_id,
        timestamp=timestamp
    )
    
    # Send to Kafka
    kafka_message = {
        'correlation_id': correlation_id,
        'thread_id': thread_id,
        'user_id': str(current_user.id),
        'message': request.message,
        'timestamp': timestamp.isoformat()
        # Topic will be added by Kafka consumer automatically
    }
    
    logger.info(f"Sending visualization request: {correlation_id}")
    
    await chat_handler.kafka.send_message(
        topic='visualization.requests',
        value=kafka_message,
        key=thread_id.encode('utf-8')
    )
    
    return {
        "correlation_id": correlation_id,
        "poll_url": f"/api/visualize/poll/{correlation_id}"
    }


@router.get("/poll/{correlation_id}")
async def poll_visualization(
    correlation_id: str,
    current_user: User = Depends(get_current_active_user)
):
    """
    Poll for visualization result.
    Returns the generated Cypher query when ready.
    """
    if not chat_handler:
        raise HTTPException(
            status_code=503,
            detail="Visualization service not initialized"
        )
    
    response_data = await chat_handler.get_response(correlation_id)
    
    if not response_data:
        raise HTTPException(
            status_code=404,
            detail=f"Request {correlation_id} not found or expired"
        )
    
    # Check if processing is complete
    if response_data.get('status') == 'completed':
        try:
            # Parse the JSON response
            result = json.loads(response_data.get('response', '{}'))
            return VisualizationResponse(
                cypher=result.get('cypher', ''),
                success=result.get('success', False),
                error=result.get('error')
            )
        except json.JSONDecodeError:
            return VisualizationResponse(
                cypher='',
                success=False,
                error='Invalid response format'
            )
    
    # Still processing
    return VisualizationResponse(
        cypher='',
        success=False,
        error='Still processing'
    )