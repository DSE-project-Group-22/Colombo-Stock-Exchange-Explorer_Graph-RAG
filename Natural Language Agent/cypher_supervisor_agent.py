#!/usr/bin/env python3
"""
Cypher Supervisor Agent with LangGraph
A simplified POC that breaks down complex natural language queries into simpler sub-queries
and executes them iteratively using the existing nl_to_cypher functionality.
"""

import os
import sys
import time
from typing import List, Dict, Any, Optional, Literal
from pydantic import BaseModel, Field

# Add the current directory to path for imports
sys.path.append(os.path.dirname(os.path.abspath(__file__)))

from langchain_openai import ChatOpenAI
from langgraph.graph import StateGraph, END, START
from langgraph.types import Command

# Import existing nl_to_cypher functionality
from nl_to_cypher_query import initialize_graph_qa_chain, query_graph_with_natural_language
from config import Settings

# Initialize settings
settings = Settings()

# =====================================================================================
# STATE SCHEMA AND PYDANTIC MODELS FOR STRUCTURED OUTPUT
# =====================================================================================

class SubQuery(BaseModel):
    """Structured model for individual sub-queries"""
    query: str = Field(description="The sub-query text")
    priority: int = Field(description="Priority order (1 = highest)", default=1)
    reasoning: str = Field(description="Why this sub-query is needed")

class DecomposedQueries(BaseModel):
    """Structured output for query decomposition"""
    is_complex: bool = Field(description="Whether the query needs decomposition")
    sub_queries: List[SubQuery] = Field(description="List of sub-queries to execute")
    reasoning: str = Field(description="Overall decomposition reasoning")

class SupervisorDecision(BaseModel):
    """Structured output for supervisor routing decisions"""
    next_action: Literal["decompose", "execute", "complete"] = Field(description="Next action to take")
    reason: str = Field(description="Reasoning for the decision")

class ExecutionResult(BaseModel):
    """Structured result from query execution"""
    query: str = Field(description="The executed query")
    success: bool = Field(description="Whether execution was successful")
    result: Optional[Dict[str, Any]] = Field(description="Query execution result", default=None)
    error: Optional[str] = Field(description="Error message if failed", default=None)

class SupervisorState(BaseModel):
    """Main state schema for the supervisor system using Pydantic with defaults"""
    # Input and tracking
    original_query: str  # Required field - no default
    iteration_count: int = Field(default=0)
    max_iterations: int = Field(default=10)
    start_time: float = Field(default_factory=time.time)
    
    # Query processing  
    sub_queries: List[SubQuery] = Field(default_factory=list)
    current_query_index: int = Field(default=0)
    
    # Results
    execution_results: List[ExecutionResult] = Field(default_factory=list)
    final_answer: Optional[str] = Field(default=None)
    
    # Status
    is_complete: bool = Field(default=False)
    decomposition_done: bool = Field(default=False)

# =====================================================================================
# HELPER FUNCTIONS FOR SUPERVISOR
# =====================================================================================

def compile_final_answer(state: SupervisorState) -> str:
    """
    Compiles the final answer from all execution results.
    This can be enhanced with LLM summarization if needed.
    """
    successful_results = [r for r in state.execution_results if r.success]
    
    if not successful_results:
        return "No successful query executions to compile results from."
    
    if len(successful_results) == 1:
        # Single result - return it directly
        return str(successful_results[0].result.get('result', 'No result available'))
    
    # Multiple results - compile them
    compiled_answer = f"Based on the analysis of {state.original_query}:\n\n"
    
    for i, result in enumerate(successful_results, 1):
        compiled_answer += f"{i}. {result.query}:\n"
        compiled_answer += f"   {result.result.get('result', 'No result')}\n\n"
    
    return compiled_answer.strip()

# =====================================================================================
# SUPERVISOR AGENT - CENTRAL COORDINATION WITH STRUCTURED OUTPUT
# =====================================================================================

def supervisor_agent(state: SupervisorState) -> Command[Literal["decomposer", "executor", END]]:
    """
    Central supervisor that decides the next action based on current state.
    Only the supervisor can end the graph execution and compile final results.
    """
    print(f"\n🧠 SUPERVISOR: Making routing decision (iteration {state.iteration_count})")
    
    # Check termination conditions
    if state.iteration_count >= state.max_iterations:
        print("⏰ Max iterations reached - compiling final answer")
        final_answer = compile_final_answer(state)
        return Command(goto=END, update={"is_complete": True, "final_answer": final_answer})
    
    if state.is_complete:
        print("✅ Processing complete")
        return Command(goto=END)
    
    # EXPLICIT ROUTING LOGIC
    # If we haven't decomposed yet, go to decomposer
    if not state.decomposition_done:
        print("📝 Routing to decomposer (no decomposition done yet)")
        return Command(goto="decomposer", update={"iteration_count": state.iteration_count + 1})
    
    # If we have sub-queries but haven't executed them all, go to executor
    if state.sub_queries and state.current_query_index < len(state.sub_queries):
        print(f"⚡ Routing to executor (query {state.current_query_index + 1}/{len(state.sub_queries)})")
        return Command(goto="executor", update={"iteration_count": state.iteration_count + 1})
    
    # If all sub-queries have been executed, compile final answer and complete
    if state.sub_queries and state.current_query_index >= len(state.sub_queries):
        print("✅ All sub-queries executed - compiling final answer")
        
        # Compile the final answer from all execution results
        final_answer = compile_final_answer(state)
        
        # Check if we have meaningful results
        successful_results = [r for r in state.execution_results if r.success]
        if successful_results:
            print(f"📊 Successfully executed {len(successful_results)}/{len(state.sub_queries)} queries")
            return Command(goto=END, update={"is_complete": True, "final_answer": final_answer})
        else:
            print("⚠️ No successful query executions - ending with error state")
            return Command(goto=END, update={"is_complete": True, "final_answer": "Failed to execute queries successfully"})
    
    # Fallback: Use LLM for complex routing decisions (shouldn't normally reach here)
    print("🤔 Using LLM for routing decision (unexpected state)")
    llm = ChatOpenAI(model="gpt-5-mini")
    structured_llm = llm.with_structured_output(SupervisorDecision)
    
    context = f"""
    Original Query: {state.original_query}
    Decomposition Done: {state.decomposition_done}
    Sub-queries Count: {len(state.sub_queries)}
    Current Query Index: {state.current_query_index}
    Completed Executions: {len(state.execution_results)}
    """
    
    try:
        decision = structured_llm.invoke([
            {"role": "system", "content": "You are a supervisor coordinating a multi-step query execution process."},
            {"role": "user", "content": context}
        ])
        
        print(f"📊 LLM Decision: {decision.next_action} - {decision.reason}")
        
        if decision.next_action == "decompose":
            return Command(goto="decomposer", update={"iteration_count": state.iteration_count + 1})
        elif decision.next_action == "execute":
            return Command(goto="executor", update={"iteration_count": state.iteration_count + 1})
        else:
            return Command(goto=END, update={"is_complete": True})
            
    except Exception as e:
        print(f"❌ Supervisor decision error: {e}")
        return Command(goto=END, update={"is_complete": True})

# =====================================================================================
# DECOMPOSER AGENT - STRUCTURED QUERY BREAKDOWN
# =====================================================================================

def decomposer_agent(state: SupervisorState) -> Command[Literal["supervisor"]]:
    """
    Decomposes complex queries into simpler sub-queries using structured output.
    """
    print(f"\n🔍 DECOMPOSER: Analyzing query complexity")
    
    llm = ChatOpenAI(model="gpt-5-mini")
    structured_llm = llm.with_structured_output(DecomposedQueries)
    
    prompt = f"""
    Analyze this natural language query about a stock exchange database and determine if it needs to be broken down into simpler sub-queries.
    
    Query: "{state.original_query}"
    
    Consider:
    - Simple queries can be executed directly (e.g., "How many companies are listed?")
    - Complex queries need decomposition (e.g., "Show me the top performing sectors and their average market cap")
    
    If decomposition is needed, break it into logical, executable sub-queries that build upon each other.
    Each sub-query should be simple enough to be converted to a single Cypher query.
    """
    
    try:
        decomposition = structured_llm.invoke([
            {"role": "system", "content": "You are an expert at breaking down complex database queries into simpler, executable parts."},
            {"role": "user", "content": prompt}
        ])
        
        print(f"📝 Decomposition result:")
        print(f"   Complex: {decomposition.is_complex}")
        print(f"   Sub-queries: {len(decomposition.sub_queries)}")
        print(f"   Reasoning: {decomposition.reasoning}")
        
        if decomposition.is_complex and decomposition.sub_queries:
            # Add structured sub-queries to state
            return Command(
                goto="supervisor",
                update={
                    "sub_queries": decomposition.sub_queries,
                    "decomposition_done": True,
                    "current_query_index": 0
                }
            )
        else:
            # Simple query - create a single sub-query
            simple_query = SubQuery(
                query=state.original_query,
                priority=1,
                reasoning="Simple query that can be executed directly"
            )
            return Command(
                goto="supervisor",
                update={
                    "sub_queries": [simple_query],
                    "decomposition_done": True,
                    "current_query_index": 0
                }
            )
            
    except Exception as e:
        print(f"❌ Decomposer error: {e}")
        # Fallback - treat as simple query
        simple_query = SubQuery(
            query=state.original_query,
            priority=1,
            reasoning="Fallback - treating as simple query due to error"
        )
        return Command(
            goto="supervisor",
            update={
                "sub_queries": [simple_query],
                "decomposition_done": True,
                "current_query_index": 0
            }
        )

# =====================================================================================
# EXECUTOR AGENT - QUERY EXECUTION WITH EXISTING NL_TO_CYPHER
# =====================================================================================

def executor_agent(state: SupervisorState) -> Command[Literal["supervisor"]]:
    """
    Executes the current sub-query using the existing nl_to_cypher functionality.
    Only reports results back to supervisor - does not control graph termination.
    """
    print(f"\n⚡ EXECUTOR: Processing query {state.current_query_index + 1}/{len(state.sub_queries)}")
    
    # Check if we have more queries to execute
    if state.current_query_index >= len(state.sub_queries):
        print("✅ All sub-queries executed - returning to supervisor")
        # Let supervisor decide what to do
        return Command(goto="supervisor")
    
    # Get current sub-query
    current_sub_query = state.sub_queries[state.current_query_index]
    print(f"🔍 Executing: {current_sub_query.query}")
    
    try:
        # Initialize the graph QA chain
        chain = initialize_graph_qa_chain()
        
        # Execute using existing nl_to_cypher functionality
        result = query_graph_with_natural_language(current_sub_query.query, chain)
        
        # Create structured execution result
        execution_result = ExecutionResult(
            query=current_sub_query.query,
            success=not result.get("error", False),
            result=result,
            error=result.get("result") if result.get("error", False) else None
        )
        
        print(f"📊 Result: {'Success' if execution_result.success else 'Failed'}")
        if execution_result.success:
            print(f"   Answer: {str(result.get('result', 'No result'))[:200]}...")
        else:
            print(f"   Error: {execution_result.error}")
        
        # Update state with results and increment index
        updated_results = state.execution_results + [execution_result]
        next_index = state.current_query_index + 1
        
        # Return to supervisor for next decision
        return Command(
            goto="supervisor",
            update={
                "execution_results": updated_results,
                "current_query_index": next_index
            }
        )
        
    except Exception as e:
        print(f"❌ Execution error: {e}")
        
        # Create error result
        execution_result = ExecutionResult(
            query=current_sub_query.query,
            success=False,
            result=None,
            error=str(e)
        )
        
        updated_results = state.execution_results + [execution_result]
        next_index = state.current_query_index + 1
        
        # Return to supervisor for next decision
        return Command(
            goto="supervisor",
            update={
                "execution_results": updated_results,
                "current_query_index": next_index
            }
        )

# =====================================================================================
# LANGGRAPH WORKFLOW SETUP
# =====================================================================================

def create_supervisor_graph() -> StateGraph:
    """
    Creates and compiles the LangGraph workflow with all agents and routing.
    """
    # Initialize the graph
    workflow = StateGraph(SupervisorState)
    
    # Add nodes
    workflow.add_node("supervisor", supervisor_agent)
    workflow.add_node("decomposer", decomposer_agent)
    workflow.add_node("executor", executor_agent)
    
    # Set entry point
    workflow.set_entry_point("supervisor")
    
    # Add edges - all agents return to supervisor
    workflow.add_edge("decomposer", "supervisor")
    workflow.add_edge("executor", "supervisor")
    
    return workflow.compile()

# =====================================================================================
# CREATE AND EXPORT GRAPH FOR LANGGRAPH STUDIO
# =====================================================================================

# Export compiled graph for LangGraph Studio
graph = create_supervisor_graph()

# =====================================================================================
# MAIN INTERFACE AND DEMO
# =====================================================================================

def run_supervisor_query(query: str, max_iterations: int = 10) -> Dict[str, Any]:
    """
    Main interface to run a query through the supervisor system.
    
    Args:
        query: Natural language query to process
        max_iterations: Maximum number of iterations before timeout
        
    Returns:
        Dict containing all results and execution details
    """
    print(f"\n🚀 SUPERVISOR SYSTEM: Processing query")
    print(f"📝 Query: {query}")
    print("=" * 80)
    
    # Create initial state - now much simpler with Pydantic defaults!
    # Only need to provide required field (original_query) and any overrides
    initial_state = SupervisorState(
        original_query=query,
        max_iterations=max_iterations
    )
    
    try:
        # Execute the workflow using the exported graph
        # Convert Pydantic model to dict for invocation
        final_state = graph.invoke(initial_state.model_dump())
        
        # Process results
        execution_time = time.time() - final_state["start_time"]
        
        print("\n" + "=" * 80)
        print("📊 EXECUTION SUMMARY:")
        print(f"⏱️  Time: {execution_time:.2f}s")
        print(f"🔄 Iterations: {final_state['iteration_count']}")
        print(f"📝 Sub-queries: {len(final_state['sub_queries'])}")
        print(f"✅ Successful executions: {sum(1 for r in final_state['execution_results'] if r.success)}")
        print(f"❌ Failed executions: {sum(1 for r in final_state['execution_results'] if not r.success)}")
        
        # Compile final answer from all successful results
        successful_results = [r for r in final_state['execution_results'] if r.success]
        if successful_results:
            print("\n🎯 RESULTS:")
            for i, result in enumerate(successful_results, 1):
                print(f"\n{i}. Query: {result.query}")
                print(f"   Answer: {result.result.get('result', 'No result')}")
        
        return {
            "success": True,
            "original_query": query,
            "execution_time": execution_time,
            "iterations": final_state['iteration_count'],
            "sub_queries": [sq.query for sq in final_state['sub_queries']],
            "results": final_state['execution_results'],
            "successful_count": len(successful_results),
            "final_state": final_state
        }
        
    except Exception as e:
        print(f"\n❌ SUPERVISOR ERROR: {e}")
        return {
            "success": False,
            "error": str(e),
            "original_query": query
        }

def main():
    """
    Demo function to test the supervisor system with various query types.
    """
    print("🧠 CYPHER SUPERVISOR AGENT DEMO")
    print("=" * 50)
    
    # Test queries - from simple to complex
    test_queries = [
        "How many companies are in the database?",
        "Show me the top 5 companies by market cap and their sectors",
        "What are the different sectors in the database and how many companies are in each sector, also show me the average market cap per sector"
    ]
    
    for i, query in enumerate(test_queries, 1):
        print(f"\n\n🧪 TEST {i}/{len(test_queries)}")
        print("=" * 50)
        
        result = run_supervisor_query(query)
        
        if result["success"]:
            print(f"✅ Test {i} completed successfully")
        else:
            print(f"❌ Test {i} failed: {result.get('error', 'Unknown error')}")
    
    print("\n\n🏁 DEMO COMPLETED")

if __name__ == "__main__":
    main()