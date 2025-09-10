#!/usr/bin/env python3
"""
Simple LangGraph Supervisor Agent for Query Orchestration
This supervisor generates self-contained natural language queries for the nl_to_cypher_query executor.
"""

from typing import Dict, List, Optional, Any, TypedDict
from pydantic import BaseModel, Field
from langchain_openai import ChatOpenAI
from langgraph.graph import StateGraph, END

# Import the existing nl_to_cypher_query functionality
from nl_to_cypher_query import initialize_graph_qa_chain, query_graph_with_natural_language
from config import get_openai_config


# =====================================================================================
# GRAPH SCHEMA
# =====================================================================================

GRAPH_SCHEMA = """
Node Labels & Properties:
- Company: id (string, unique), name (string), founded_on (date, optional), listed_on (string, optional), region (string, optional)
- Person: id (string, unique), name (string)
- Sector: id (string, unique), name (string)
- Product: id (string, unique), name (string)
- Metric: id (string, unique), name (string), unit (string)

Relationship Types & Properties:
Ownership & Shareholdings:
- (Company)-[:OWNS]->(Company): pct (float - percent ownership), as_of (date)
- (Person)-[:OWNS_SHARES]->(Company): count (int) or pct (float), as_of (date)

Governance & Roles:
- (Person)-[:DIRECTOR_OF]->(Company): role (string), as_of (date)
- (Person)-[:HOLDS_POSITION]->(Company): title (string), as_of (date)

Business Classification:
- (Company)-[:IN_SECTOR]->(Sector): no properties
- (Company)-[:OFFERS]->(Product): status (string, optional)

Financial Metrics:
- (Company)-[:HAS_METRIC]->(Metric): year (int, optional), as_of (date, optional), value (float/int)

Auditing & Management:
- (Company)-[:AUDITED_BY]->(Company): year (int)
- (Company)-[:MANAGES]->(Company): description (string)
"""


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
    print(f"\n🎯 SUPERVISOR (Iteration {state['iteration']})")
    
    # Check iteration limit (handled transparently)
    if state['iteration'] >= state['max_iterations']:
        state['should_continue'] = False
        print(f"  Iteration limit reached - forcing final answer")
        # Continue to let supervisor provide final answer with available data
    
    # Get OpenAI config and initialize LLM
    openai_config = get_openai_config()
    llm = ChatOpenAI(
        model=openai_config["model_name"],
        api_key=openai_config["api_key"]
    )
    
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

    print(query_history_text)
    
    # Create simplified prompt with systematic query decomposition
    prompt = f"""
You are a database query orchestrator that MUST follow a SYSTEMATIC approach.

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
        
        print(f"  Decision: {'Need more info' if decision.needs_more_info else 'Ready to answer'}")
        print(f"  Reasoning: {decision.reasoning}")
        
        if decision.needs_more_info and decision.next_query:
            state['current_query'] = decision.next_query
            state['should_continue'] = True
            print(f"  Next Query: {decision.next_query}")
        else:
            # Ready to provide final answer
            state['should_continue'] = False
            state['final_answer'] = decision.final_answer
            print(f"  Final Answer Ready")
            
    except Exception as e:
        print(f"  Error in supervisor decision: {e}")
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

def executor_node(state: SupervisorState) -> SupervisorState:
    """
    Executor node that runs the current query using nl_to_cypher_query.
    Stores complete results with intermediate_steps in query_history.
    """
    print(f"\n⚡ EXECUTOR")
    
    if not state['current_query']:
        print("  No query to execute")
        return state
    
    print(f"  Executing: {state['current_query']}")
    
    try:
        # Initialize chain and execute query
        chain = initialize_graph_qa_chain()
        result = query_graph_with_natural_language(state['current_query'], chain)
        
        # Check if query was successful
        if not result.get("error"):
            # Store successful query and complete result
            query_record = {
                'query': state['current_query'],
                'result': result.get('result', ''),
                'success': True
            }
            
            # Include intermediate_steps if available
            if 'intermediate_steps' in result:
                query_record['intermediate_steps'] = result['intermediate_steps']
            
            state['query_history'].append(query_record)
            print(f"  ✓ Query successful")
            
        else:
            # Store failed query with complete result
            query_record = {
                'query': state['current_query'],
                'result': f"Error: {result.get('result', 'Unknown error')}",
                'success': False
            }
            
            # Include intermediate_steps if available (even for failures)
            if 'intermediate_steps' in result:
                query_record['intermediate_steps'] = result['intermediate_steps']
            
            state['query_history'].append(query_record)
            print(f"  ✗ Query failed: {result.get('result', 'Unknown error')}")
            
    except Exception as e:
        # Handle execution errors
        state['query_history'].append({
            'query': state['current_query'],
            'result': f"Execution error: {str(e)}",
            'success': False
        })
        print(f"  ✗ Execution error: {e}")
    
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

def run_supervisor_query(
    user_query: str,
    max_iterations: int = 20,
    verbose: bool = True
) -> Dict[str, Any]:
    """
    Run a query through the supervisor agent.
    
    Args:
        user_query: The user's natural language question
        max_iterations: Maximum number of query iterations
        verbose: Whether to print progress
    
    Returns:
        Dict with 'answer', 'queries_executed', 'success' keys
    """
    
    if not verbose:
        # Suppress print statements
        import sys
        import io
        old_stdout = sys.stdout
        sys.stdout = io.StringIO()
    
    try:
        # Build graph
        graph = build_supervisor_graph()
        app = graph.compile()
        
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
        
        # Run the graph
        result = app.invoke(initial_state)
        
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


# =====================================================================================
# TEST AND DEMO
# =====================================================================================

def demo():
    """Demo function showing supervisor agent capabilities"""
    print("\n" + "="*70)
    print("🤖 SUPERVISOR AGENT DEMO")
    print("="*70)
    
    # Test queries
    test_queries = [
        "Who are the companies audited by earnst % young",
        "List the top 5 companies by market capitalization",
        "Who are the directors of Commercial Bank of Ceylon?",
    ]
    
    print("\nChoose a test query or enter your own:")
    for i, q in enumerate(test_queries, 1):
        print(f"{i}. {q}")
    print("4. Enter custom query")
    
    choice = input("\nSelect option (1-4): ").strip()
    
    if choice in ['1', '2', '3']:
        query = test_queries[int(choice) - 1]
    elif choice == '4':
        query = input("Enter your query: ").strip()
    else:
        print("Invalid choice")
        return
    
    print(f"\n📝 Query: {query}")
    print("-" * 70)
    
    # Run query
    result = run_supervisor_query(query, max_iterations=5, verbose=True)
    
    # Display results
    print("\n" + "="*70)
    print("📊 RESULTS")
    print("="*70)
    
    if result['success']:
        print(f"\n✅ Answer:\n{result['answer']}")
        print(f"\n📈 Statistics:")
        print(f"  - Queries executed: {result['queries_executed']}")
    else:
        print(f"\n❌ Failed to generate answer")
    
    # Show executed queries if verbose
    show_details = input("\n🔍 Show query details? (y/n): ").strip().lower()
    if show_details == 'y':
        print("\nQuery History:")
        for i, eq in enumerate(result['query_history'], 1):
            status = "✓" if eq.get('success', False) else "✗"
            print(f"\n{i}. {status} {eq['query']}")
            print(f"   Result: {str(eq['result'])[:200]}...")
            if eq.get('intermediate_steps'):
                print(f"   Intermediate Steps: {str(eq['intermediate_steps'])[:150]}...")


if __name__ == "__main__":
    demo()