#!/usr/bin/env python3
"""
Main LangGraph Workflow for Adaptive Query System
Defines the graph structure and routing logic
"""

import os
import sys
from typing import Literal
from langgraph.graph import StateGraph, END, START
from langgraph.types import Command

# Add parent directory to path
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from graph_state import AdaptiveQueryState
from nodes import (
    planner_node,
    executor_node,
    interpreter_node,
    evaluator_node,
    synthesizer_node
)


# =====================================================================================
# ROUTING FUNCTIONS - Determine next node based on state
# =====================================================================================

def route_after_planner(state: AdaptiveQueryState) -> Literal["executor", "synthesizer"]:
    """
    Route after planner node.
    If we have a query to execute, go to executor.
    Otherwise, go to synthesizer.
    """
    if state.current_query and state.should_continue:
        return "executor"
    else:
        return "synthesizer"


def route_after_evaluator(state: AdaptiveQueryState) -> Literal["planner", "synthesizer"]:
    """
    Route after evaluator node.
    If we should continue, go back to planner.
    Otherwise, go to synthesizer.
    """
    if state.should_continue and not state.ready_to_synthesize:
        return "planner"
    else:
        return "synthesizer"


# =====================================================================================
# BUILD GRAPH - Connect all nodes with routing
# =====================================================================================

def build_adaptive_graph() -> StateGraph:
    """
    Build the LangGraph workflow for adaptive query processing.
    
    Flow:
    1. START -> planner: Plan first query
    2. planner -> executor: Execute planned query
    3. executor -> interpreter: Interpret results
    4. interpreter -> evaluator: Evaluate progress
    5. evaluator -> planner: Continue if needed (loop)
    6. evaluator -> synthesizer: When ready to answer
    7. synthesizer -> END: Output final answer
    """
    
    # Initialize the graph with state schema
    graph = StateGraph(AdaptiveQueryState)
    
    # Add all nodes
    graph.add_node("planner", planner_node)
    graph.add_node("executor", executor_node)
    graph.add_node("interpreter", interpreter_node)
    graph.add_node("evaluator", evaluator_node)
    graph.add_node("synthesizer", synthesizer_node)
    
    # Set entry point
    graph.set_entry_point("planner")
    
    # Add edges with routing
    graph.add_conditional_edges(
        "planner",
        route_after_planner,
        {
            "executor": "executor",
            "synthesizer": "synthesizer"
        }
    )
    
    # Linear flow through execution pipeline
    graph.add_edge("executor", "interpreter")
    graph.add_edge("interpreter", "evaluator")
    
    # Conditional routing after evaluation
    graph.add_conditional_edges(
        "evaluator",
        route_after_evaluator,
        {
            "planner": "planner",
            "synthesizer": "synthesizer"
        }
    )
    
    # Synthesizer always ends
    graph.add_edge("synthesizer", END)
    
    return graph


# =====================================================================================
# MAIN INTERFACE - Process queries through the graph
# =====================================================================================

def process_adaptive_query(query: str, max_iterations: int = 15, verbose: bool = True) -> dict:
    """
    Process a natural language query through the adaptive graph.
    
    Args:
        query: Natural language query
        max_iterations: Maximum number of iterations
        verbose: Whether to print progress
        
    Returns:
        Dictionary with answer and execution details
    """
    
    if verbose:
        print(f"\n{'='*70}")
        print(f"🚀 ADAPTIVE LANGGRAPH QUERY PROCESSOR")
        print(f"Query: {query}")
        print(f"{'='*70}")
    
    # Create initial state
    initial_state = AdaptiveQueryState(
        original_query=query,
        max_iterations=max_iterations
    )
    
    # Build and compile the graph
    graph = build_adaptive_graph()
    compiled_graph = graph.compile()
    
    try:
        # Execute the graph
        final_state = compiled_graph.invoke(initial_state)
        
        # Extract results
        summary = final_state.get_summary()
        
        if verbose:
            print(f"\n{'='*70}")
            print(f"📊 EXECUTION SUMMARY")
            print(f"   Phase: {summary['phase']}")
            print(f"   Iterations: {summary['iterations']}")
            print(f"   Queries executed: {summary['queries_executed']}")
            print(f"   Facts discovered: {summary['facts_discovered']}")
            print(f"   Time elapsed: {summary['time_elapsed']:.1f}s")
            print(f"{'='*70}")
        
        return {
            "success": True,
            "answer": final_state.final_answer or "Unable to generate answer",
            "phase": final_state.current_phase,
            "iterations": final_state.iteration_count,
            "queries_executed": len(final_state.completed_queries),
            "facts_discovered": len(final_state.discovered_facts),
            "execution_time": summary['time_elapsed'],
            "state": final_state
        }
        
    except Exception as e:
        if verbose:
            print(f"\n❌ Error: {e}")
        
        return {
            "success": False,
            "error": str(e),
            "answer": f"Failed to process query: {e}",
            "phase": "error"
        }


# =====================================================================================
# EXPORT GRAPH FOR LANGGRAPH STUDIO
# =====================================================================================

# Export the compiled graph for LangGraph Studio visualization
export_graph = build_adaptive_graph().compile()


# =====================================================================================
# DEMO AND TESTING
# =====================================================================================

def demo():
    """
    Demo the adaptive graph with sample queries.
    """
    print("🤖 ADAPTIVE LANGGRAPH DEMO")
    print("="*50)
    
    test_queries = [
        "How many companies are in the database?",
        "What are the different sectors?",
        "Show me the top 5 companies by market cap and their sectors"
    ]
    
    for i, query in enumerate(test_queries, 1):
        print(f"\n\n{'='*80}")
        print(f"TEST {i}/{len(test_queries)}")
        print(f"{'='*80}")
        
        result = process_adaptive_query(query, verbose=True)
        
        print(f"\n🎯 FINAL ANSWER:")
        print("-"*50)
        print(result['answer'])
        print("-"*50)
        
        if result['success']:
            print(f"✅ Success | Phase: {result['phase']}")
        else:
            print(f"❌ Failed: {result.get('error')}")
    
    print("\n\n✨ Demo completed!")


def interactive_mode():
    """
    Interactive mode for testing queries.
    """
    print("🤖 ADAPTIVE LANGGRAPH - Interactive Mode")
    print("="*50)
    print("Commands: 'quit' to exit, 'help' for examples, 'debug' to toggle verbose")
    print("="*50)
    
    verbose = True
    
    while True:
        try:
            query = input("\n💭 Query: ").strip()
            
            if query.lower() in ['quit', 'exit', 'q']:
                print("👋 Goodbye!")
                break
            
            if query.lower() == 'help':
                print("\n📚 Example queries:")
                print("  • How many companies are in the database?")
                print("  • What are the different sectors and their average market caps?")
                print("  • Show me the top performing companies by sector")
                print("  • List companies with market cap above 1 billion")
                continue
            
            if query.lower() == 'debug':
                verbose = not verbose
                print(f"🔧 Verbose mode: {'ON' if verbose else 'OFF'}")
                continue
            
            if not query:
                continue
            
            result = process_adaptive_query(query, verbose=verbose)
            
            if not verbose:
                print(f"\n{'='*60}")
            print("\n🎯 ANSWER:")
            print(result['answer'])
            if not verbose:
                print(f"\nPhase: {result.get('phase', 'unknown')}")
                print(f"Queries: {result.get('queries_executed', 0)}")
            
        except KeyboardInterrupt:
            print("\n👋 Goodbye!")
            break
        except Exception as e:
            print(f"❌ Error: {e}")


if __name__ == "__main__":
    import sys
    
    if len(sys.argv) > 1:
        if sys.argv[1] == "--interactive":
            interactive_mode()
        elif sys.argv[1] == "--demo":
            demo()
        else:
            # Process single query from command line
            query = " ".join(sys.argv[1:])
            result = process_adaptive_query(query, verbose=True)
            print(f"\n🎯 ANSWER:\n{result['answer']}")
    else:
        demo()