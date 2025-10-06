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

logger = logging.getLogger(__name__)


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
    Node 1: Find all entities relevant to the user's query.
    Uses GraphCypherQAChain to perform a broad entity search.
    """
    
    # Generate entity search prompt
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
        state['entity_search_results'] = result.get('result', [])
        
        logger.info(f"Entity search found {len(state['entity_search_results'])} results")
        
    except Exception as e:
        logger.warning(f"Entity resolution failed: {e}")
        state['entity_search_results'] = []
        state['entity_search_cypher'] = ""
    
    return state


async def visualization_cypher_node(state: VisualAgentState) -> VisualAgentState:
    """
    Node 2: Generate visualization-optimized Cypher using entity search results.
    Creates queries that return graph structures suitable for visualization.
    """
    
    # Build entity context from search results
    entity_context = ""
    if state['entity_search_results']:
        entity_context = f"""
Search Query Used: {state['entity_search_cypher']}

Entities Found:
{state['entity_search_results']}"""
    
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
        else:
            state['final_cypher'] = ""
            logger.warning("No Cypher query generated")
            
    except Exception as e:
        logger.error(f"Visualization generation failed: {e}")
        state['final_cypher'] = ""
    
    return state


def build_visual_graph():
    """Build the 2-node LangGraph workflow for visual Cypher generation."""
    workflow = StateGraph(VisualAgentState)
    
    # Add the two nodes
    workflow.add_node("entity_resolution", entity_resolution_node)
    workflow.add_node("visualization_cypher", visualization_cypher_node)
    
    # Define the flow
    workflow.set_entry_point("entity_resolution")
    workflow.add_edge("entity_resolution", "visualization_cypher")
    workflow.add_edge("visualization_cypher", END)
    
    return workflow.compile()


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
    
    try:
        # Build and run the graph
        graph = build_visual_graph()
        
        # Initialize state
        initial_state = VisualAgentState(
            user_query=user_message,
            entity_search_cypher="",
            entity_search_results=[],
            final_cypher=""
        )
        
        # Execute the workflow
        result = await graph.ainvoke(initial_state)
        
        # Return response in expected format
        if result.get('final_cypher'):
            # Double-check cleaning in case any newlines slipped through
            final_cypher = clean_cypher_query(result['final_cypher'])
            return {
                'cypher': final_cypher,
                'success': True
            }
        else:
            return {
                'cypher': '',
                'success': False,
                'error': 'Failed to generate visualization query'
            }
            
    except Exception as e:
        logger.error(f"Visual agent error: {e}")
        return {
            'cypher': '',
            'success': False,
            'error': str(e)
        }


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