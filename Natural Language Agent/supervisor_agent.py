#!/usr/bin/env python3
"""
Simple LangGraph Supervisor Agent for Query Orchestration
This supervisor generates self-contained natural language queries for the nl_to_cypher_query executor.
"""

import json
import logging
from typing import Dict, List, Optional, Any, TypedDict
from pydantic import BaseModel, Field
from llm_manager import get_llm
from langgraph.graph import StateGraph, END

# Import the existing nl_to_cypher_query functionality
from nl_to_cypher_query import query_graph_with_natural_language
from helpers.redis_helper import serialize_neo4j_dates
from config import settings
from schemas.graph_schema import GRAPH_SCHEMA
from prompts.supervisor import SUPERVISOR_PROMPT

# Configure logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)


# =====================================================================================
# STATE DEFINITION
# =====================================================================================

class SupervisorState(TypedDict):
    """State maintained across the supervisor-executor cycle"""
    user_query: str                          # Original user question
    query_history: List[Dict[str, Any]]      # Complete query history with full results including intermediate_steps
    current_query: Optional[str]             # Next self-contained query to execute
    final_answer: Optional[str]              # Final synthesized answer
    should_continue: bool                    # Whether to continue querying
    iteration: int                           # Current iteration count
    max_iterations: int                      # Safety limit


# =====================================================================================
# STRUCTURED OUTPUT MODELS
# =====================================================================================

class SupervisorDecision(BaseModel):
    """Structured output for supervisor decisions"""
    needs_more_info: bool = Field(
        description="Whether more queries are needed to answer the user's question"
    )
    next_query: Optional[str] = Field(
        default=None,
        description="The next self-contained natural language query to execute"
    )
    reasoning: str = Field(
        description="Explanation of why this decision was made"
    )
    final_answer: Optional[str] = Field(
        default=None,
        description="The final markdown-formatted answer that directly addresses the user's question"
    )


# =====================================================================================
# SUPERVISOR NODE
# =====================================================================================

def supervisor_node(state: SupervisorState) -> SupervisorState:
    """
    Supervisor node that analyzes context and decides next action.
    Trusts the LLM to follow the two-phase approach intelligently.
    """
    logger.debug(f"SUPERVISOR (Iteration {state['iteration']})")
    
    # Simple iteration limit check
    if state['iteration'] >= state['max_iterations']:
        state['should_continue'] = False
        logger.info(f"Iteration limit reached - forcing final answer")
        # The LLM will provide an appropriate final answer based on available data
    
    # Get centralized LLM instance
    llm = get_llm()
    
    # Format query history for prompt
    query_history_text = ""
    if state['query_history']:
        query_history_text = "QUERY HISTORY:\n"
        for i, query_result in enumerate(state['query_history'], 1):
            success = "✓" if query_result.get('success', False) else "✗"
            query_history_text += f"{i}. {success} Query: {query_result.get('query', '')}\n"
            
            if query_result.get('success'):
                # For successful queries, show the complete data - no truncation
                full_result = str(query_result.get('result', []))
                query_history_text += f"   Result: {full_result}\n"
            else:
                # For failed queries, show the error
                query_history_text += f"   Error: {query_result.get('error', 'Unknown error')}\n"
            
            # Include Cypher query if available (for debugging)
            if query_result.get('cypher'):
                query_history_text += f"   Cypher: {query_result.get('cypher')}\n"
            
            query_history_text += "\n"
    else:
        query_history_text = "QUERY HISTORY: No queries executed yet - Start with entity discovery"

    logger.debug(query_history_text)
    
    # Use prompt from prompts folder with proper formatting
    prompt = SUPERVISOR_PROMPT.format(
        graph_schema=GRAPH_SCHEMA,
        user_query=state['user_query'],
        query_history=query_history_text
    )
    
    # Get structured decision from LLM
    structured_llm = llm.with_structured_output(SupervisorDecision)
    
    try:
        decision = structured_llm.invoke(prompt)
        
        # Log LLM decision for visibility when verbose
        if settings.agent_verbose:
            logger.info(f"LLM Decision: {'Need more info' if decision.needs_more_info else 'Ready to answer'}")
            logger.info(f"Reasoning: {decision.reasoning}")
        
        if decision.needs_more_info and decision.next_query:
            state['current_query'] = decision.next_query
            state['should_continue'] = True
            if settings.agent_verbose:
                logger.info(f"Next Query: {decision.next_query}")
        else:
            # Ready to provide final answer
            state['should_continue'] = False
            state['current_query'] = None  # Clear any pending query
            state['final_answer'] = decision.final_answer
            logger.info("Final Answer Ready")
            
    except Exception as e:
        logger.error(f"Error in supervisor decision: {e}")
        # Fallback: try to provide answer based on what we have
        state['should_continue'] = False
        state['current_query'] = None  # Clear any pending query
        if state['query_history']:
            # Provide a basic answer from available data in markdown format
            successful = [q for q in state['query_history'] if q.get('success', False)]
            if successful:
                # Format available data as markdown
                results_text = "\n".join([f"- **{q['query']}**: {str(q['result'])}" for q in successful])
                state['final_answer'] = f"Based on the available information:\n\n{results_text}\n\n*Note: Query processing was interrupted, but here's what was found.*"
            else:
                state['final_answer'] = "I was unable to retrieve the necessary information to answer your question. Please try rephrasing or simplifying your query."
        else:
            state['final_answer'] = "I encountered an error while processing your question. Please try again with a simpler query."
    
    return state



# =====================================================================================
# EXECUTOR NODE
# =====================================================================================

async def executor_node(state: SupervisorState) -> SupervisorState:
    """
    Executor node that runs the current query using nl_to_cypher_query.
    Stores complete results with intermediate_steps in query_history.
    """
    if not state['current_query']:
        return state
    
    if settings.agent_verbose:
        logger.info(f"Executing: {state['current_query']}")
    
    try:
        # Execute query asynchronously (will use cached chain from helper)
        result = await query_graph_with_natural_language(state['current_query'])

        if settings.agent_verbose:
            logger.debug(f"Query result structure: {result}")
        
        # Check if query was successful
        if not result.get("error"):
            # Convert any Neo4j Date objects to strings using helper
            serialized_result = serialize_neo4j_dates(result)
            
            # Extract only the data from result (it's a list)
            result_data = serialized_result.get('result', [])
            
            # Extract the Cypher query from intermediate_steps
            cypher_query = None
            if 'intermediate_steps' in serialized_result and serialized_result['intermediate_steps']:
                cypher_query = serialized_result['intermediate_steps'][0].get('query', '')
            
            # Store optimized query record
            query_record = {
                'query': state['current_query'],  # Keep the NL query
                'result': result_data,  # Store just the data list
                'cypher': cypher_query,  # Store the generated Cypher for debugging
                'success': True
            }
            
            state['query_history'].append(query_record)
            if settings.agent_verbose:
                logger.info("Query successful")
            
        else:
            # Convert any Neo4j Date objects even for failed queries
            serialized_result = serialize_neo4j_dates(result)
            
            # For errors, store the error message
            error_msg = serialized_result.get('result', 'Unknown error')
            
            # Extract the Cypher query even for failures (for debugging)
            cypher_query = None
            if 'intermediate_steps' in serialized_result and serialized_result['intermediate_steps']:
                cypher_query = serialized_result['intermediate_steps'][0].get('query', '')
            
            # Store optimized error record
            query_record = {
                'query': state['current_query'],
                'error': str(error_msg),  # Store error separately
                'cypher': cypher_query,  # Include Cypher for debugging failures
                'success': False
            }
            
            state['query_history'].append(query_record)
            if settings.agent_verbose:
                logger.warning(f"Query failed: {serialized_result.get('result', 'Unknown error')}")
            
    except Exception as e:
        # Handle execution errors - convert any potential Date objects in error messages
        error_message = str(e)
        try:
            # Attempt to clean any potential Neo4j objects from error message
            error_message = json.loads(json.dumps(error_message, default=str))
        except:
            # If conversion fails, use original error message
            pass
        
        # Handle execution errors
        state['query_history'].append({
            'query': state['current_query'],
            'result': f"Execution error: {error_message}",
            'success': False
        })
        logger.error(f"Execution error: {e}")
    
    # Clear current query and increment iteration
    state['current_query'] = None
    state['iteration'] += 1
    
    return state




# =====================================================================================
# GRAPH CONSTRUCTION
# =====================================================================================

def supervisor_decision_router(state: SupervisorState) -> str:
    """Route from supervisor based on whether more queries are needed"""
    if state['current_query'] and state['should_continue']:
        # Supervisor has a new query to execute
        return "executor"
    else:
        # Supervisor has final answer or hit iteration limit
        return END


def executor_to_supervisor_router(state: SupervisorState) -> str:
    """Route from executor back to supervisor if iterations remain"""
    if state['iteration'] < state['max_iterations']:
        return "supervisor"
    return END


def build_supervisor_graph() -> StateGraph:
    """Build the LangGraph with supervisor and executor nodes"""
    
    # Create graph with state schema
    graph = StateGraph(SupervisorState)
    
    # Add nodes
    graph.add_node("supervisor", supervisor_node)
    graph.add_node("executor", executor_node)
    
    # Set entry point
    graph.set_entry_point("supervisor")
    
    # Add conditional edges from supervisor
    graph.add_conditional_edges(
        "supervisor",
        supervisor_decision_router,
        {
            "executor": "executor",
            END: END
        }
    )
    
    # Add edge from executor back to supervisor
    graph.add_conditional_edges(
        "executor",
        executor_to_supervisor_router,
        {
            "supervisor": "supervisor",
            END: END
        }
    )
    
    return graph


# =====================================================================================
# MAIN INTERFACE
# =====================================================================================

async def run_supervisor_query(
    user_query: str,
    max_iterations: int = None,
    verbose: bool = None
) -> Dict[str, Any]:
    """
    Run a query through the supervisor agent asynchronously.
    
    Args:
        user_query: The user's natural language question
        max_iterations: Maximum number of query iterations (defaults to config)
        verbose: Whether to print progress (defaults to config)
    
    Returns:
        Dict with 'answer', 'queries_executed', 'success' keys
    """
    
    # Use config defaults if not specified
    if max_iterations is None:
        max_iterations = settings.supervisor_max_iterations
    if verbose is None:
        verbose = settings.agent_verbose
    
    if not verbose:
        # Suppress print statements
        import sys
        import io
        old_stdout = sys.stdout
        sys.stdout = io.StringIO()
    
    try:
        # Build graph
        graph = build_supervisor_graph()
        app = graph.compile()  # Compilation stays the same for async nodes
        
        # Initialize state
        initial_state = {
            'user_query': user_query,
            'query_history': [],
            'current_query': None,
            'final_answer': None,
            'should_continue': True,
            'iteration': 0,
            'max_iterations': max_iterations
        }
        
        # Run the graph asynchronously
        result = await app.ainvoke(initial_state)
        
        # Extract results
        return {
            'answer': result.get('final_answer', 'Unable to generate answer'),
            'queries_executed': len(result.get('query_history', [])),
            'query_history': result.get('query_history', []),
            'success': result.get('final_answer') is not None
        }
        
    finally:
        if not verbose:
            sys.stdout = old_stdout


