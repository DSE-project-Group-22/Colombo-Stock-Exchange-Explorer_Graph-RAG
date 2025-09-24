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
        description="The final answer if we have enough information"
    )


# =====================================================================================
# SUPERVISOR NODE
# =====================================================================================

def supervisor_node(state: SupervisorState) -> SupervisorState:
    """
    Supervisor node that analyzes context and decides next action.
    Generates self-contained queries that don't rely on conversation history.
    """
    logger.debug(f"SUPERVISOR (Iteration {state['iteration']})")
    
    # Check iteration limit (handled transparently)
    if state['iteration'] >= state['max_iterations']:
        state['should_continue'] = False
        logger.info(f"Iteration limit reached - forcing final answer")
        # Continue to let supervisor provide final answer with available data
    
    # Get centralized LLM instance
    llm = get_llm()
    
    # Format query history for prompt
    query_history_text = ""
    if state['query_history']:
        query_history_text = "QUERY HISTORY:\n"
        for i, query_result in enumerate(state['query_history'], 1):
            success = "✓" if query_result.get('success', False) else "✗"
            query_history_text += f"{i}. {success} Query: {query_result.get('query', '')}\n"
            query_history_text += f"   Result: {str(query_result.get('result', ''))[:200]}...\n"
            if query_result.get('intermediate_steps'):
                query_history_text += f"   Intermediate Steps: {str(query_result.get('intermediate_steps', ''))}...\n"
            query_history_text += "\n"
    else:
        query_history_text = "QUERY HISTORY: No queries executed yet - Start with entity discovery"

    logger.debug(query_history_text)
    
    # Create simplified prompt with systematic query decomposition
    prompt = f"""
You are a database query orchestrator that MUST follow a SYSTEMATIC approach.
You are going to query the Colombo Stock Exchange.

🎯 CRITICAL QUERY STRATEGY:
=========================================
STEP 1 - ENTITY NAME RESOLUTION (ALWAYS FIRST):
- If user mentions ANY entity, FIRST find the EXACT name
- Pattern: "List all companies with '[partial]' in the name"
- Example: "John Keells" → "List all companies with 'John Keells' in the name"
- Result: Discovers "John Keells Holdings PLC" (exact name)

STEP 2 - USE EXACT NAMES FROM PREVIOUS QUERIES:
- NEVER use partial names after Step 1
- Use EXACT: "John Keells Holdings PLC" not "John Keells"
- Extract exact names from previous query results

STEP 3 - DECOMPOSE COMPLEX QUESTIONS:
Example: "What companies does X own and percentages?"
  Query 1: "List all companies with 'X' in the name"
  Query 2: "What companies does [exact_X_name] own?"
  Query 3: "What is the ownership percentage of [exact_X_name] in [company]?"

STEP 4 - ERROR RECOVERY:
- Failed query? → Try broader search
- No results? → Verify entity exists
- Still failing? → Alternative phrasing

========================================
DATABASE SCHEMA:
========================================
{GRAPH_SCHEMA}

========================================
USER'S QUESTION: {state['user_query']}
========================================

{query_history_text}

========================================
DECISION FRAMEWORK:
========================================

CHECK IN ORDER:
1. NO queries yet? → Start with entity name discovery
2. Entity names unresolved? → Find exact names first
3. Previous query failed? → Try broader/alternative
4. Have entities, need details? → Use EXACT names from previous results
5. Have sufficient information? → Provide FINAL ANSWER

QUERY PATTERNS TO USE:
- Discovery: "List all companies with '[partial]' in the name"
- Ownership: "What companies does [exact_name] own?"
- Percentages: "What is the ownership percentage of [exact_parent] in [exact_child]?"
- Directors: "Who are the directors of [exact_name]?"

DECISION REQUIRED:
- If you have enough information → Provide comprehensive FINAL ANSWER based on query history
- Otherwise → Provide the next self-contained query

When providing final answer, synthesize ALL information from the query history into a clear response.
"""
    
    # Get structured decision from LLM
    structured_llm = llm.with_structured_output(SupervisorDecision)
    
    try:
        decision = structured_llm.invoke(prompt)
        
        # Print LLM decision for visibility when verbose
        if settings.agent_verbose:
            print(f"\n🤖 LLM Decision: {'Need more info' if decision.needs_more_info else 'Ready to answer'}")
            print(f"💭 Reasoning: {decision.reasoning}")
        
        if decision.needs_more_info and decision.next_query:
            state['current_query'] = decision.next_query
            state['should_continue'] = True
            if settings.agent_verbose:
                print(f"🔎 Next Query: {decision.next_query}\n")
        else:
            # Ready to provide final answer
            state['should_continue'] = False
            state['final_answer'] = decision.final_answer
            logger.info("Final Answer Ready")
            
    except Exception as e:
        logger.error(f"Error in supervisor decision: {e}")
        # Fallback: try to provide answer based on what we have
        state['should_continue'] = False
        if state['query_history']:
            # Provide a basic answer from available data
            successful = [q for q in state['query_history'] if q.get('success', False)]
            if successful:
                state['final_answer'] = f"Based on the information gathered:\n" + \
                    "\n".join([f"- {q['query']}: {str(q['result'])[:100]}..." for q in successful])
            else:
                state['final_answer'] = "I was unable to retrieve the necessary information to answer your question."
        else:
            state['final_answer'] = "I encountered an error while processing your question."
    
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
        print(f"⚙️ Executing: {state['current_query']}")
        print("-" * 70)
    
    try:
        # Execute query asynchronously (will use cached chain from helper)
        result = await query_graph_with_natural_language(state['current_query'])
        
        # Check if query was successful
        if not result.get("error"):
            # Convert any Neo4j Date objects to strings using helper
            serialized_result = serialize_neo4j_dates(result)
            
            # Store successful query and complete result
            query_record = {
                'query': state['current_query'],
                'result': serialized_result.get('result', ''),
                'success': True
            }
            
            # Include intermediate_steps if available
            if 'intermediate_steps' in serialized_result:
                query_record['intermediate_steps'] = serialized_result['intermediate_steps']
            
            state['query_history'].append(query_record)
            if settings.agent_verbose:
                print(f"✅ Query successful\n")
            
        else:
            # Convert any Neo4j Date objects even for failed queries
            serialized_result = serialize_neo4j_dates(result)
            
            # Store failed query with complete result
            query_record = {
                'query': state['current_query'],
                'result': f"Error: {serialized_result.get('result', 'Unknown error')}",
                'success': False
            }
            
            # Include intermediate_steps if available (even for failures)
            if 'intermediate_steps' in serialized_result:
                query_record['intermediate_steps'] = serialized_result['intermediate_steps']
            
            state['query_history'].append(query_record)
            if settings.agent_verbose:
                print(f"❌ Query failed: {serialized_result.get('result', 'Unknown error')}\n")
            
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

def should_continue(state: SupervisorState) -> str:
    """Conditional edge function to determine next node"""
    if state['should_continue'] and state['iteration'] < state['max_iterations']:
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
    
    # Add edges
    graph.add_edge("supervisor", "executor")
    graph.add_conditional_edges(
        "executor",
        should_continue,
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


