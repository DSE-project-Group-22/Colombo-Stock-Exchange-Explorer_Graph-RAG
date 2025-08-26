#!/usr/bin/env python3
"""
Custom LangGraph Supervisor Agent for Cypher Database Queries
A custom supervisor agent that plans and executes natural language queries against a Cypher database.
"""

import os
import sys
sys.path.append(os.path.dirname(os.path.abspath(__file__)))

from typing import Dict, Any, TypedDict, List, Literal
from langchain_core.tools import tool
from langchain_openai import ChatOpenAI
from langgraph.graph import StateGraph, START, END
from pydantic import BaseModel, Field
from config import Settings

# Import the existing cypher query function
from nl_to_cypher_query import query_graph_with_natural_language, initialize_graph_qa_chain

# Initialize settings
settings = Settings()

# Initialize single LLM instance
llm = ChatOpenAI(model="gpt-5-mini")

# Define the agent state
class SupervisorState(TypedDict):
    user_query: str
    query_plan: str
    query_results: List[Dict[str, Any]]
    final_answer: str
    next_step: str

# Pydantic schemas for structured LLM output
class QueryPlan(BaseModel):
    """Structured output for query planning."""
    complexity: Literal["simple", "complex"] = Field(
        description="Whether the query is simple (can be executed directly) or complex (needs breakdown)"
    )
    approach: Literal["direct", "multi-step"] = Field(
        description="Execution approach: 'direct' for single query, 'multi-step' for breakdown"
    )
    reasoning: str = Field(
        description="Brief explanation of why this approach was chosen"
    )
    execution_strategy: str = Field(
        description="Detailed strategy for executing the query"
    )

class QueryResult(BaseModel):
    """Structured output for query execution results."""
    success: bool = Field(
        description="Whether the query execution was successful"
    )
    result_summary: str = Field(
        description="Brief summary of the query results"
    )
    detailed_answer: str = Field(
        description="Detailed answer to the user's question based on the query results"
    )
    error_message: str = Field(
        default="",
        description="Error message if the query failed, empty if successful"
    )

# Initialize the Cypher query chain once
cypher_chain = None

def get_cypher_chain():
    """Get or initialize the Cypher query chain."""
    global cypher_chain
    if cypher_chain is None:
        cypher_chain = initialize_graph_qa_chain()
    return cypher_chain

# Tool 1: Query Planning with LLM
def plan_query_node(state: SupervisorState) -> Dict[str, Any]:
    """
    Use LLM to create a query plan based on user input.
    """
    print(f"📋 Planning query: {state['user_query']}")
    
    try:
        # Create structured LLM for planning
        structured_llm_planner = llm.with_structured_output(QueryPlan)
        
        planning_prompt = f"""
You are a Cypher database query planning expert. Analyze the following user query and determine the best execution strategy.

User Query: "{state['user_query']}"

Consider:
1. Query complexity (simple vs complex)
2. Whether it can be answered with a single database query
3. If it needs to be broken down into multiple steps
4. The best approach for execution

Provide your analysis in the structured format.
"""
        
        # Get structured output from LLM
        plan_response = structured_llm_planner.invoke(planning_prompt)
        
        # Convert the Pydantic model to a string representation for storage
        query_plan = f"""
QUERY PLAN:
- Complexity: {plan_response.complexity}
- Approach: {plan_response.approach}
- Reasoning: {plan_response.reasoning}
- Strategy: {plan_response.execution_strategy}
"""
        
        # Determine next step based on the plan
        next_step = "execute_query" if plan_response.approach == "direct" else "execute_query"
        
        print(f"✅ Query plan created: {plan_response.complexity} query with {plan_response.approach} approach")
        
        return {
            "query_plan": query_plan,
            "next_step": next_step
        }
        
    except Exception as e:
        error_msg = f"Error creating query plan: {str(e)}"
        print(f"❌ {error_msg}")
        return {
            "query_plan": f"Error in planning: {error_msg}",
            "next_step": "execute_query"  # Try to execute anyway
        }

# Tool 2: Query Execution
def execute_query_node(state: SupervisorState) -> Dict[str, Any]:
    """
    Execute the natural language query against the Cypher database.
    """
    print(f"🔍 Executing query: {state['user_query']}")
    
    try:
        # Get the cypher chain
        chain = get_cypher_chain()
        
        # Execute the query
        result = query_graph_with_natural_language(state['user_query'], chain)
        
        # Extract the raw result
        raw_result = result.get("result", "No results found")
        
        # Use structured LLM to process and format the result
        structured_llm_processor = llm.with_structured_output(QueryResult)
        
        processing_prompt = f"""
You are a database result processor. Analyze the following query result and provide a structured response.

Original User Query: "{state['user_query']}"
Database Result: "{raw_result}"

Evaluate:
1. Was the query execution successful?
2. Provide a brief summary of the results
3. Give a detailed, user-friendly answer to the original question
4. Include any error information if applicable

Be clear and helpful in your response.
"""
        
        # Get structured output for result processing
        processed_result = structured_llm_processor.invoke(processing_prompt)
        
        # Store results
        query_results = [{
            "query": state['user_query'],
            "raw_result": raw_result,
            "processed_result": processed_result.dict(),
            "intermediate_steps": result.get("intermediate_steps", [])
        }]
        
        print(f"✅ Query executed and processed successfully")
        
        return {
            "query_results": query_results,
            "final_answer": processed_result.detailed_answer,
            "next_step": "complete"
        }
        
    except Exception as e:
        error_msg = f"Error executing query '{state['user_query']}': {str(e)}"
        print(f"❌ {error_msg}")
        
        # Use structured output even for errors
        try:
            structured_llm_processor = llm.with_structured_output(QueryResult)
            error_result = QueryResult(
                success=False,
                result_summary="Query execution failed",
                detailed_answer=f"I apologize, but I encountered an error while processing your query: {error_msg}",
                error_message=error_msg
            )
            
            query_results = [{
                "query": state['user_query'],
                "raw_result": "",
                "processed_result": error_result.dict(),
                "error": error_msg
            }]
            
            return {
                "query_results": query_results,
                "final_answer": error_result.detailed_answer,
                "next_step": "complete"
            }
        except:
            # Fallback if structured output fails
            return {
                "query_results": [],
                "final_answer": f"Sorry, I encountered an error: {error_msg}",
                "next_step": "complete"
            }

# Conditional routing function
def should_continue(state: SupervisorState) -> str:
    """
    Determine next step based on current state.
    """
    next_step = state.get("next_step", "")
    
    if next_step == "execute_query":
        return "execute_query"
    else:
        return "__end__"

# Create the supervisor agent
def create_cypher_supervisor():
    """Create and return the custom LangGraph Cypher supervisor agent."""
    
    # Build the StateGraph
    builder = StateGraph(SupervisorState)
    
    # Add nodes
    builder.add_node("plan_query", plan_query_node)
    builder.add_node("execute_query", execute_query_node)
    
    # Add edges
    builder.add_edge(START, "plan_query")
    builder.add_conditional_edges(
        "plan_query",
        should_continue,
        {
            "execute_query": "execute_query",
            "__end__": END
        }
    )
    builder.add_edge("execute_query", END)
    
    # Compile the graph
    supervisor = builder.compile()
    
    print("✅ Custom LangGraph Supervisor Agent created successfully")
    return supervisor

def main():
    """Demo function to test the supervisor agent."""
    print("🚀 Cypher Database Supervisor Agent Demo")
    print("=" * 60)
    
    # Simpler test queries to avoid recursion issues
    test_queries = [
        "How many companies are in the database?",  # Simple count query
        "Show me 3 companies from the database"     # Simple listing query
    ]
    
    try:
        # Create the supervisor agent
        print("🔧 Initializing Cypher Supervisor Agent...")
        supervisor = create_cypher_supervisor()
        print("✅ Supervisor Agent initialized successfully")
        
        # Test each query
        for i, query in enumerate(test_queries, 1):
            print(f"\n📝 Test Query {i}: {query}")
            print("-" * 50)
            
            # Run the supervisor agent with recursion limit
            try:
                result = supervisor.invoke(
                    {"messages": [{"role": "user", "content": query}]},
                    config={"recursion_limit": 10}  # Set reasonable recursion limit
                )
                
                print(f"🤖 Supervisor Response:")
                print(result["messages"][-1].content)
                
            except Exception as e:
                print(f"❌ Error processing query: {e}")
            
            print("=" * 60)
            
    except Exception as e:
        print(f"❌ Demo failed: {e}")
        print("💡 Make sure:")
        print("   1. Neo4j is running and accessible")
        print("   2. OPENAI_API_KEY is set in your environment")
        print("   3. Database connection settings are correct")

if __name__ == "__main__":
    main()
