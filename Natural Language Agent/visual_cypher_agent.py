#!/usr/bin/env python3
"""
Simplified Visual Cypher Agent - 2-node LangGraph with GraphCypherQAChain
Clean implementation focusing on robust Cypher generation for graph visualization.
"""
import logging
import re
from typing import TypedDict, Dict, Any, Optional, List
from langgraph.graph import StateGraph, END
from nl_to_cypher_query import query_graph_with_natural_language
from prompts.visual_cypher_prompts import get_entity_search_prompt, get_visualization_prompt
from config import settings
from langfuse import Langfuse
from langfuse.langchain import CallbackHandler

logger = logging.getLogger(__name__)

# Initialize Langfuse client once at module level if enabled
langfuse_client = None
if settings.langfuse_enabled and settings.langfuse_public_key and settings.langfuse_secret_key:
    try:
        langfuse_client = Langfuse(
            public_key=settings.langfuse_public_key,
            secret_key=settings.langfuse_secret_key,
            host=settings.langfuse_host
        )
        logger.info("Langfuse client initialized successfully for visual agent")
    except Exception as e:
        logger.warning(f"Could not initialize Langfuse client for visual agent: {e}")
        langfuse_client = None


def clean_cypher_query(cypher: str) -> str:
    """
    Clean a Cypher query to ensure it's on a single line.
    Removes all types of newlines including escaped sequences.
    
    Args:
        cypher: Raw Cypher query that may contain newlines
        
    Returns:
        Clean single-line Cypher query
    """
    if not cypher:
        return ""
    
    # Remove literal newline characters
    cypher = cypher.replace('\n', ' ')
    cypher = cypher.replace('\r', ' ')
    cypher = cypher.replace('\t', ' ')
    
    # Remove escaped newline sequences that might appear as strings
    cypher = cypher.replace('\\n', ' ')
    cypher = cypher.replace('\\r', ' ')
    cypher = cypher.replace('\\t', ' ')
    
    # Use regex to handle any remaining whitespace patterns
    # Replace multiple spaces with single space
    cypher = re.sub(r'\s+', ' ', cypher)
    
    # Trim leading and trailing whitespace
    cypher = cypher.strip()
    
    return cypher


class VisualAgentState(TypedDict):
    """State for visual agent workflow"""
    user_query: str
    entity_search_cypher: str
    entity_search_results: List[Dict]
    final_cypher: str


async def entity_resolution_node(state: VisualAgentState) -> VisualAgentState:
    """
    Node 1: Find all entities relevant to the user's query using fuzzy matching.
    Performs entity name resolution to convert user's approximate names to exact database names.
    """
    
    # Generate entity search prompt with fuzzy matching instructions
    search_prompt = get_entity_search_prompt(state['user_query'])
    
    try:
        # Use GraphCypherQAChain for entity resolution
        result = await query_graph_with_natural_language(search_prompt)
        
        # Extract the Cypher query that was generated
        if result.get('intermediate_steps'):
            raw_cypher = result['intermediate_steps'][0].get('query', '')
            state['entity_search_cypher'] = clean_cypher_query(raw_cypher)
            logger.info(f"Entity search Cypher: {state['entity_search_cypher'][:100]}...")
        else:
            state['entity_search_cypher'] = ""
        
        # Store the raw Neo4j results
        search_results = result.get('result', [])
        
        # Validate that we found entities
        if not search_results or (isinstance(search_results, str) and len(search_results.strip()) < 3):
            logger.warning(f"No entities found for query: {state['user_query']}")
            state['entity_search_results'] = []
        else:
            state['entity_search_results'] = search_results
            logger.info(f"Entity search found results: {search_results}")
        
    except Exception as e:
        logger.warning(f"Entity resolution failed: {e}")
        state['entity_search_results'] = []
        state['entity_search_cypher'] = ""
    
    return state


async def visualization_cypher_node(state: VisualAgentState) -> VisualAgentState:
    """
    Node 2: Generate visualization-optimized Cypher using entity search results.
    Creates queries that return graph structures suitable for visualization.
    Enforces use of exact entity names from search results.
    """
    
    # Check if entity resolution succeeded
    if not state['entity_search_results']:
        logger.warning("No entities found in search - cannot generate visualization query")
        state['final_cypher'] = ""
        return state
    
    # Build entity context from search results with strong emphasis on using exact names
    entity_context = f"""
ENTITY RESOLUTION RESULTS (Use these EXACT names in your query):

Search Query Used: {state['entity_search_cypher']}

Verified Entity Names Found in Database:
{state['entity_search_results']}

⚠️ CRITICAL: Use ONLY the exact entity names shown above. 
DO NOT use the user's original words from: "{state['user_query']}"
The names above are the VERIFIED database names - use them exactly as shown."""
    
    # Get visualization prompt
    viz_prompt = get_visualization_prompt(
        user_query=state['user_query'],
        entity_context=entity_context
    )
    
    try:
        result = await query_graph_with_natural_language(viz_prompt)
        
        # Extract only the generated Cypher query
        if result.get('intermediate_steps'):
            cypher = result['intermediate_steps'][0].get('query', '')
            # Clean the query to ensure it's on a single line
            state['final_cypher'] = clean_cypher_query(cypher)
            logger.info(f"Generated visualization Cypher: {state['final_cypher'][:100]}...")
            
            # Validate that the query uses exact entity names
            # Check if user's approximate words appear in the final query (they shouldn't)
            user_query_lower = state['user_query'].lower()
            final_cypher_lower = state['final_cypher'].lower()
            
            # Simple validation: warn if suspicious patterns detected
            suspicious_patterns = ['banking', 'dialog company', 'commercial bank']
            for pattern in suspicious_patterns:
                if pattern in user_query_lower and pattern in final_cypher_lower:
                    logger.warning(f"⚠️ Query may be using user's approximate name '{pattern}' instead of exact database name")
        else:
            state['final_cypher'] = ""
            logger.warning("No Cypher query generated")
            
    except Exception as e:
        logger.error(f"Visualization generation failed: {e}")
        state['final_cypher'] = ""
    
    return state


def build_visual_graph(langfuse_handler=None):
    """
    Build the 2-node LangGraph workflow for visual Cypher generation.

    Args:
        langfuse_handler: Optional Langfuse callback handler for tracing
    """
    workflow = StateGraph(VisualAgentState)

    # Add the two nodes
    workflow.add_node("entity_resolution", entity_resolution_node)
    workflow.add_node("visualization_cypher", visualization_cypher_node)

    # Define the flow
    workflow.set_entry_point("entity_resolution")
    workflow.add_edge("entity_resolution", "visualization_cypher")
    workflow.add_edge("visualization_cypher", END)

    # Compile the graph
    compiled_graph = workflow.compile()

    # Attach Langfuse handler if provided
    if langfuse_handler:
        compiled_graph = compiled_graph.with_config({"callbacks": [langfuse_handler]})
        logger.info("Langfuse handler attached to visual graph")

    return compiled_graph


async def execute_visual_agent(
    user_message: str,
    thread_id: str,
    redis_client: Optional[Any] = None,  # Accept for compatibility
    correlation_id: Optional[str] = None,  # Accept for compatibility
    user_id: Optional[str] = None,  # Accept for compatibility
    **kwargs  # Accept any other params for compatibility
) -> Dict[str, Any]:
    """
    Execute the visual agent to generate a visualization Cypher query.

    Args:
        user_message: Natural language query from user
        thread_id: Thread identifier for the conversation
        redis_client: Optional Redis client (for compatibility)
        correlation_id: Optional correlation ID (for compatibility)
        user_id: Optional user ID (for compatibility)

    Returns:
        Dict with 'cypher', 'success', and optional 'error' fields
    """
    logger.info(f"Visual agent processing: {user_message[:100]}...")

    langfuse_handler = None
    trace = None

    try:
        # Initialize Langfuse handler with session tracking if client is available
        if langfuse_client:
            try:
                # Create handler - it will use the already initialized langfuse_client
                langfuse_handler = CallbackHandler()
                logger.info(f"Langfuse handler created for visualization request - thread: {thread_id}")

                # Flag to indicate we have tracing enabled
                trace = True
            except Exception as e:
                logger.warning(f"Could not create Langfuse handler for visual agent: {e}")
                langfuse_handler = None
                trace = None

        # Build graph with Langfuse handler if available
        graph = build_visual_graph(langfuse_handler)

        # Initialize state
        initial_state = VisualAgentState(
            user_query=user_message,
            entity_search_cypher="",
            entity_search_results=[],
            final_cypher=""
        )

        # Execute the workflow with metadata for Langfuse tracing if handler exists
        if langfuse_handler:
            result = await graph.ainvoke(
                initial_state,
                config={
                    "metadata": {
                        "langfuse_session_id": thread_id or correlation_id or "visual-session",
                        "langfuse_trace_name": "visual-agent-query",
                        "thread_id": thread_id,
                        "correlation_id": correlation_id,
                        "user_id": user_id,
                        "agent_type": "visual_agent"
                    }
                }
            )
        else:
            result = await graph.ainvoke(initial_state)

        # Log success metrics if Langfuse is enabled
        if trace and langfuse_handler:
            try:
                logger.info(f"Langfuse trace completed for visualization - query length: {len(user_message)}, cypher generated: {bool(result.get('final_cypher'))}")
            except Exception as e:
                logger.warning(f"Could not log Langfuse metrics: {e}")

        # Return response in expected format
        if result.get('final_cypher'):
            # Double-check cleaning in case any newlines slipped through
            final_cypher = clean_cypher_query(result['final_cypher'])
            return {
                'cypher': final_cypher,
                'success': True,
                'entity_search_results': result.get('entity_search_results', [])
            }
        else:
            # Provide helpful error message based on what went wrong
            error_msg = 'Failed to generate visualization query'
            
            # Check if entity resolution failed
            if not result.get('entity_search_results'):
                error_msg = f'Could not find entities matching your query: "{user_message}". Please try rephrasing or check entity names.'
                logger.warning(f"Entity resolution failed for: {user_message}")
            elif not result.get('entity_search_cypher'):
                error_msg = 'Entity search query generation failed. Please try a simpler query.'
            else:
                error_msg = 'Visualization query generation failed. The entities were found but query construction failed.'
            
            return {
                'cypher': '',
                'success': False,
                'error': error_msg,
                'entity_search_results': result.get('entity_search_results', [])
            }

    except Exception as e:
        logger.error(f"Visual agent error: {e}")

        # Log error if Langfuse is enabled
        if trace:
            logger.error(f"Langfuse trace failed for visual agent with error: {e}")

        return {
            'cypher': '',
            'success': False,
            'error': str(e)
        }

    finally:
        # Ensure Langfuse flushes all events for async operations
        if langfuse_client:
            try:
                langfuse_client.flush()
                logger.debug("Langfuse events flushed successfully for visual agent")
            except Exception as e:
                logger.warning(f"Could not flush Langfuse events for visual agent: {e}")


# CLI tool for testing
async def main():
    """Simple CLI tool for testing the visual agent."""
    import sys
    
    print("Visual Cypher Agent CLI")
    print("-" * 40)
    
    if len(sys.argv) > 1:
        query = ' '.join(sys.argv[1:])
    else:
        query = input("Enter your visualization query: ")
    
    print(f"\nProcessing: {query}")
    print("-" * 40)
    
    result = await execute_visual_agent(query, "cli-test")
    
    if result['success']:
        print(f"Generated Cypher:\n{result['cypher']}")
    else:
        print(f"Error: {result.get('error', 'Unknown error')}")


if __name__ == "__main__":
    import asyncio
    asyncio.run(main())