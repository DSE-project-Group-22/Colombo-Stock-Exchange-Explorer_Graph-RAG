"""
Supervisor streaming context for publishing intermediate steps.
Provides clean, explicit dependency injection for supervisor step publishing.
"""
import logging
from typing import Optional, Any
from helpers.redis_helper import publish_intermediate_step, create_message

logger = logging.getLogger(__name__)


class SupervisorStreamingContext:
    """
    Context object for publishing supervisor intermediate steps.
    
    This class encapsulates the streaming context needed for the supervisor
    to publish its reasoning and decision-making steps to the frontend.
    """
    
    def __init__(
        self, 
        correlation_id: str, 
        user_id: str, 
        thread_id: str, 
        redis_client: Any
    ):
        """
        Initialize supervisor streaming context.
        
        Args:
            correlation_id: Request correlation ID for Redis channel routing
            user_id: User making the request
            thread_id: Thread identifier
            redis_client: Redis async client for publishing
        """
        self.correlation_id = correlation_id
        self.user_id = user_id
        self.thread_id = thread_id
        self.redis_client = redis_client
    
    async def publish_reasoning_step(self, reasoning: str, iteration: int) -> bool:
        """
        Publish supervisor reasoning step.
        
        Args:
            reasoning: The supervisor's reasoning text
            iteration: Current iteration number
            
        Returns:
            True if published successfully, False otherwise
        """
        try:
            message = create_message(
                message_type="step",
                status="processing",
                title=f"🔍 Graph Database: Analyzing Query [Iteration {iteration}]",
                description=reasoning[:150] + "..." if len(reasoning) > 150 else reasoning,
                content={
                    "nested_level": 1,
                    "tool_context": "query_graph_database",
                    "supervisor_action": "reasoning",
                    "iteration": iteration,
                    "full_reasoning": reasoning  # Include full reasoning for debugging
                }
            )
            
            await publish_intermediate_step(
                redis_client=self.redis_client,
                correlation_id=self.correlation_id,
                user_id=self.user_id,
                thread_id=self.thread_id,
                message=message
            )
            
            logger.debug(f"Published supervisor reasoning step for iteration {iteration}")
            return True
            
        except Exception as e:
            logger.error(f"Failed to publish supervisor reasoning step: {e}")
            return False
    
    async def publish_query_execution(self, query: str, query_number: int) -> bool:
        """
        Publish sub-query execution step.
        
        Args:
            query: The query being executed
            query_number: Sequential number of this query
            
        Returns:
            True if published successfully, False otherwise
        """
        try:
            message = create_message(
                message_type="step",
                status="processing",
                title=f"📊 Graph Database: Executing Sub-Query [Query {query_number}]",
                description=query[:150] + "..." if len(query) > 150 else query,
                content={
                    "nested_level": 1,
                    "tool_context": "query_graph_database",
                    "supervisor_action": "executing",
                    "query_number": query_number,
                    "query": query
                }
            )
            
            await publish_intermediate_step(
                redis_client=self.redis_client,
                correlation_id=self.correlation_id,
                user_id=self.user_id,
                thread_id=self.thread_id,
                message=message
            )
            
            logger.debug(f"Published supervisor query execution step {query_number}")
            return True
            
        except Exception as e:
            logger.error(f"Failed to publish supervisor query execution step: {e}")
            return False
    
    async def publish_synthesis(self, total_queries: int) -> bool:
        """
        Publish final synthesis step.
        
        Args:
            total_queries: Total number of queries executed
            
        Returns:
            True if published successfully, False otherwise
        """
        try:
            message = create_message(
                message_type="step",
                status="processing",
                title="✨ Graph Database: Synthesizing Results",
                description=f"Combining insights from {total_queries} {'query' if total_queries == 1 else 'queries'}",
                content={
                    "nested_level": 1,
                    "tool_context": "query_graph_database",
                    "supervisor_action": "synthesis",
                    "total_queries": total_queries
                }
            )
            
            await publish_intermediate_step(
                redis_client=self.redis_client,
                correlation_id=self.correlation_id,
                user_id=self.user_id,
                thread_id=self.thread_id,
                message=message
            )
            
            logger.debug(f"Published supervisor synthesis step for {total_queries} queries")
            return True
            
        except Exception as e:
            logger.error(f"Failed to publish supervisor synthesis step: {e}")
            return False
    
    async def publish_entity_resolution(self, entity: str, resolved_name: str) -> bool:
        """
        Publish entity resolution step.
        
        Args:
            entity: Original entity mentioned by user
            resolved_name: Resolved entity name from database
            
        Returns:
            True if published successfully, False otherwise
        """
        try:
            message = create_message(
                message_type="step",
                status="processing",
                title="🎯 Graph Database: Resolving Entity",
                description=f"Found '{resolved_name}' for '{entity}'",
                content={
                    "nested_level": 1,
                    "tool_context": "query_graph_database",
                    "supervisor_action": "entity_resolution",
                    "original_entity": entity,
                    "resolved_entity": resolved_name
                }
            )
            
            await publish_intermediate_step(
                redis_client=self.redis_client,
                correlation_id=self.correlation_id,
                user_id=self.user_id,
                thread_id=self.thread_id,
                message=message
            )
            
            logger.debug(f"Published entity resolution step: {entity} -> {resolved_name}")
            return True
            
        except Exception as e:
            logger.error(f"Failed to publish entity resolution step: {e}")
            return False
    
    def is_valid(self) -> bool:
        """
        Check if this streaming context is valid for publishing.
        
        Returns:
            True if all required fields are present
        """
        return all([
            self.correlation_id,
            self.user_id,
            self.thread_id,
            self.redis_client
        ])


def create_supervisor_streaming_context(
    correlation_id: Optional[str] = None,
    user_id: Optional[str] = None,
    thread_id: Optional[str] = None,
    redis_client: Optional[Any] = None
) -> Optional[SupervisorStreamingContext]:
    """
    Create a supervisor streaming context if all required fields are present.
    
    Args:
        correlation_id: Request correlation ID
        user_id: User making the request
        thread_id: Thread identifier
        redis_client: Redis async client
        
    Returns:
        SupervisorStreamingContext if all fields present, None otherwise
    """
    if all([correlation_id, user_id, thread_id, redis_client]):
        return SupervisorStreamingContext(
            correlation_id=correlation_id,
            user_id=user_id,
            thread_id=thread_id,
            redis_client=redis_client
        )
    else:
        logger.debug("Incomplete streaming context, supervisor steps will not be published")
        return None