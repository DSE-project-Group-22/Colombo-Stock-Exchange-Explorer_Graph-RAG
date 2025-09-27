"""Simplified 2-node agent replacing the complex main agent loop"""
import logging
from typing import TypedDict, Dict, Any, Optional
from langgraph.graph import StateGraph, END
from llm_manager import get_llm
from prompts.context_analyzer import CONTEXT_ANALYZER_PROMPT
from helpers.redis_helper import get_chat_history
from config import settings
import redis

logger = logging.getLogger(__name__)

class SimpleAgentState(TypedDict):
    """Minimal state for 2-node graph"""
    chat_history: str
    reformulated_query: str
    final_answer: str

async def context_analyzer_node(state: SimpleAgentState) -> Dict[str, Any]:
    """
    Node 1: Reformulate query from chat history.
    Extracts the last user message and makes it self-contained.
    """
    llm = get_llm()
    
    # Simple prompt formatting
    prompt = CONTEXT_ANALYZER_PROMPT.format(
        chat_history=state['chat_history']
    )
    
    response = await llm.ainvoke(prompt)
    reformulated = response.content.strip()
    
    logger.info(f"Context Analyzer - Reformulated query: {reformulated}")
    
    return {"reformulated_query": reformulated}

async def supervisor_node(state: SimpleAgentState) -> Dict[str, Any]:
    """
    Node 2: Run supervisor with reformulated query.
    Supervisor handles its own internal iterations.
    """
    from supervisor_agent import run_supervisor_query
    
    logger.info(f"Running supervisor with query: {state['reformulated_query']}")
    
    # Run existing supervisor with reformulated query
    result = await run_supervisor_query(
        user_query=state['reformulated_query'],
        max_iterations=settings.supervisor_max_iterations,  # Use config value
        verbose=settings.agent_verbose
    )
    
    final_answer = result.get('answer', 'Unable to generate answer')
    logger.info(f"Supervisor completed with {result.get('queries_executed', 0)} queries executed")
    
    return {"final_answer": final_answer}

def build_simple_graph():
    """Build the 2-node graph"""
    graph = StateGraph(SimpleAgentState)
    
    # Two nodes with simple linear flow
    graph.add_node("context_analyzer", context_analyzer_node)
    graph.add_node("supervisor", supervisor_node)
    
    # Linear flow: start -> context -> supervisor -> end
    graph.set_entry_point("context_analyzer")
    graph.add_edge("context_analyzer", "supervisor")
    graph.add_edge("supervisor", END)
    
    logger.info("Built simple 2-node graph")
    
    return graph.compile()

async def execute_simple_agent(
    thread_id: str, 
    user_message: str, 
    redis_client: Optional[redis.Redis] = None
) -> str:
    """
    Main entry point replacing execute_agent_query.
    
    Args:
        thread_id: Conversation thread ID
        user_message: User's latest query
        redis_client: Redis connection for chat history
        
    Returns:
        Final answer string
    """
    try:
        # Get chat history (already includes previous messages)
        chat_history = ""
        if redis_client:
            chat_history = await get_chat_history(redis_client, thread_id)
            logger.info(f"Loaded {len(chat_history)} chars of history for thread {thread_id}")
        else:
            logger.info("No Redis client provided, starting with empty history")
        
        # Add current message to history if not already there
        # (In production, message_processor already stores it before calling this)
        if user_message and user_message not in chat_history:
            if chat_history:
                chat_history += f"\nHuman: {user_message}"
            else:
                chat_history = f"Human: {user_message}"
        
        # Initialize simple state
        initial_state = {
            "chat_history": chat_history,
            "reformulated_query": "",
            "final_answer": ""
        }
        
        logger.info(f"Starting simple agent for thread {thread_id}")
        
        # Build and run graph
        graph = build_simple_graph()
        result = await graph.ainvoke(initial_state)
        
        logger.info("Simple agent completed successfully")
        return result['final_answer']
        
    except Exception as e:
        logger.error(f"Error in execute_simple_agent: {e}")
        return f"I apologize, but I encountered an error: {str(e)}"

# For backwards compatibility
execute_agent_query = execute_simple_agent