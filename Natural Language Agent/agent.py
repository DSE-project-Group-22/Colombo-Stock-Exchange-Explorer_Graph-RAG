"""
LangGraph Agent with Conversation History and Tool Calling
Provides a conversational agent that executes natural language queries using the supervisor agent
"""
import json
import logging
import asyncio
from typing import Annotated, List, Dict, Any, Optional, TypedDict, Literal
from datetime import datetime, timezone

import redis
from langchain_core.messages import BaseMessage, HumanMessage, AIMessage, SystemMessage, ToolMessage
from langchain_core.tools import tool
from llm_manager import get_llm
from langgraph.graph import StateGraph, START, END
from langgraph.graph.message import add_messages
from langgraph.prebuilt import ToolNode
from langgraph.checkpoint.memory import MemorySaver

from config import settings, get_redis_connection_params
from supervisor_agent import run_supervisor_query
from helpers.redis_helper import get_chat_history, serialize_neo4j_dates

# Configure logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)


# =====================================================================================
# STATE SCHEMA
# =====================================================================================

class AgentState(TypedDict):
    """State schema for the conversation agent"""
    messages: Annotated[List[BaseMessage], add_messages]  # Current execution only
    conversation_transcript: str  # Pre-loaded from Redis with latest message
    iteration_count: int
    max_iterations: int


# =====================================================================================
# REDIS HELPER FUNCTIONS
# =====================================================================================

async def load_transcript_from_redis(redis_client, thread_id: str) -> str:
    """
    Load conversation history from Redis and format as transcript.
    Now uses the helper function from redis_helper.
    
    Returns:
        Formatted transcript as "Human: message\nAgent: response\n..."
    """
    return await get_chat_history(redis_client, thread_id)


# =====================================================================================
# TOOL DEFINITION
# =====================================================================================

@tool
async def query_graph_database(query: str) -> str:
    """
    Execute a natural language query against the graph database using the supervisor agent.
    This tool can answer questions about companies, financial metrics, relationships, and more.
    
    Args:
        query: Natural language question about the Colombo Stock Exchange data
        
    Returns:
        Answer from the graph database based on the query
    """
    try:
        logger.info(f"Executing graph query: {query}")
        
        # Call the supervisor agent asynchronously with hardcoded parameters
        result = await run_supervisor_query(
            user_query=query,
            max_iterations=settings.supervisor_max_iterations,
            verbose=settings.agent_verbose
        )
        
        # Convert any Neo4j Date objects to strings using helper
        result = serialize_neo4j_dates(result)
        
        # Extract the answer
        if isinstance(result, dict) and 'answer' in result:
            return result['answer']
        else:
            return "No answer could be generated for this query."
            
    except Exception as e:
        logger.error(f"Error executing graph query: {e}")
        return f"I encountered an error while querying the database: {str(e)}. Please try rephrasing your question."


# =====================================================================================
# AGENT NODES
# =====================================================================================

def main_agent_node(state: AgentState) -> Dict[str, Any]:
    """
    Main agent node that processes messages with full conversation context
    """
    logger.info(f"Main agent processing - Iteration {state['iteration_count']}")
    
    # System prompt with conversation transcript
    system_prompt = f"""You are an intelligent assistant for the Colombo Stock Exchange graph database.

CONVERSATION HISTORY:
{state['conversation_transcript']}

Please analyze the conversation above and answer the last question asked by the user.
Use the query_graph_database tool when you need to retrieve information from the database.
Provide a comprehensive response based on the full conversation context.
Your response should directly address what the user is asking for.

Important guidelines:
- Focus on the most recent user question in the conversation
- Use context from earlier messages to provide better answers
- Make tool calls when you need factual information about companies, metrics, or relationships
- If a query returns an error, try rephrasing or breaking it down
- Provide clear, informative responses based on the data retrieved
"""
    
    # Get centralized LLM instance
    llm = get_llm()
    
    # Bind the tool to the LLM
    llm_with_tools = llm.bind_tools([query_graph_database])
    
    # Prepare messages with system prompt
    messages_for_llm = [SystemMessage(content=system_prompt)] + state["messages"]
    
    # Invoke the LLM
    response = llm_with_tools.invoke(messages_for_llm)
    
    # Return updated state
    return {
        "messages": [response],
        "iteration_count": state["iteration_count"] + 1
    }


def should_continue(state: AgentState) -> Literal["tools", END]:
    """
    Determine whether to continue to tools or end
    """
    messages = state["messages"]
    last_message = messages[-1]
    
    # Check if we've reached max iterations
    if state["iteration_count"] >= state["max_iterations"]:
        logger.warning(f"Reached maximum iterations ({state['max_iterations']})")
        return END
    
    # Check if the last message has tool calls
    if hasattr(last_message, "tool_calls") and len(last_message.tool_calls) > 0:
        logger.info(f"Routing to tools - {len(last_message.tool_calls)} tool calls")
        return "tools"
    
    logger.info("No tool calls, ending conversation")
    return END


# =====================================================================================
# GRAPH CONSTRUCTION
# =====================================================================================

def build_conversation_graph():
    """
    Build the LangGraph state machine for the conversation agent
    """
    # Create the graph
    graph = StateGraph(AgentState)
    
    # Add nodes
    graph.add_node("main_agent", main_agent_node)
    graph.add_node("tools", ToolNode([query_graph_database]))
    
    # Add edges
    graph.add_edge(START, "main_agent")
    graph.add_conditional_edges(
        "main_agent",
        should_continue,
        {
            "tools": "tools",
            END: END
        }
    )
    graph.add_edge("tools", "main_agent")
    
    # Compile the graph with memory
    memory = MemorySaver()
    compiled_graph = graph.compile(checkpointer=memory)
    
    return compiled_graph


# =====================================================================================
# CORE AGENT FUNCTION (Pure, No Redis)
# =====================================================================================

async def run_agent_with_transcript(conversation_transcript: str) -> str:
    """
    Pure agent execution - no Redis knowledge
    
    Args:
        conversation_transcript: Complete conversation history including latest user message
        
    Returns:
        Agent response as string
        
    Note: conversation_transcript already ends with "Human: {latest_message}"
    """
    try:
        # Initialize state with reference message to avoid duplication
        initial_state = {
            "messages": [HumanMessage(content="Please answer the last question asked in the conversation history above.")],
            "conversation_transcript": conversation_transcript,
            "iteration_count": 0,
            "max_iterations": settings.agent_max_iterations  # From config
        }
        
        # Build and run the graph
        graph = build_conversation_graph()
        
        # Create a config for checkpointing
        config = {"configurable": {"thread_id": "current"}}
        
        # Run the graph
        result = await graph.ainvoke(initial_state, config)

        logger.debug("="*30 + " DEBUG: FULL GRAPH STATE " + "="*30)
        logger.debug(f"Graph result: {result}")
        logger.debug("="*80)
        # Extract final AI message (last AIMessage without tool calls)
        final_message = None
        for message in reversed(result["messages"]):
            if isinstance(message, AIMessage) and not message.tool_calls:
                final_message = message
                break
        
        if final_message:
            response = final_message.content
            logger.info("Agent completed successfully")
            return response
        else:
            logger.warning("No final message found in agent response")
            return "I couldn't generate a proper response. Please try again."
            
    except Exception as e:
        logger.error(f"Error in agent execution: {e}")
        return f"I apologize, but I encountered an error while processing your request: {str(e)}"


# =====================================================================================
# WRAPPER FUNCTION (Handles Redis)
# =====================================================================================

async def execute_agent_query(
    thread_id: str,
    user_message: str,
    redis_client: Optional[redis.Redis] = None
) -> str:
    """
    Execute the agent with conversation history from Redis
    
    This is the main entry point that handles Redis operations and calls the pure agent.
    
    Args:
        thread_id: Conversation thread ID
        user_message: Latest user message
        redis_client: Redis connection (optional)
        
    Returns:
        Agent response as string
        
    Note: Redis save is handled by server.py at line 295
    """
    try:
        # Load existing transcript from Redis
        transcript = ""
        if redis_client:
            transcript = await load_transcript_from_redis(redis_client, thread_id)
            logger.info(f"Loaded transcript for thread {thread_id}")
        else:
            logger.info("No Redis client provided, starting with empty transcript")
        
        # Append new user message to transcript (key: message appears ONLY in transcript)
        if transcript:
            transcript += f"\nHuman: {user_message}"
        else:
            transcript = f"Human: {user_message}"
        
        logger.info(f"Processing query for thread {thread_id}")
        
        # Call pure agent with complete transcript
        response = await run_agent_with_transcript(transcript)
        
        # Note: Response will be saved to Redis by server.py
        return response
        
    except Exception as e:
        logger.error(f"Error in execute_agent_query: {e}")
        error_response = f"I apologize, but I encountered an error: {str(e)}"
        return error_response

