#!/usr/bin/env python3
"""
Test script to verify LLM-based evaluation works correctly
Tests the new semantic evaluation instead of arbitrary confidence scores
"""

import sys
import os
sys.path.append(os.path.dirname(os.path.abspath(__file__)))

from graph_state import AdaptiveQueryState, QueryInfo
from nodes import evaluator_node, set_graph_schema

def test_llm_evaluation():
    """Test LLM-based evaluation with different scenarios"""
    
    print("="*60)
    print("Testing LLM-Based Semantic Evaluation")
    print("="*60)
    
    # Set a simple schema for testing
    schema = """
    Node Labels:
    - Company (name, revenue)
    - Person (name, role)
    Relationships:
    - (Person)-[:WORKS_FOR]->(Company)
    """
    set_graph_schema(schema)
    
    # Test 1: Early exploration phase - few facts discovered
    print("\n--- Test 1: Early Exploration ---")
    state1 = AdaptiveQueryState(
        original_query="Show me all companies and their employees",
        iteration_count=1
    )
    state1.add_discovered_fact("company_names", ["CompanyA", "CompanyB"])
    state1.add_entity("Company", "CompanyA")
    
    result1 = evaluator_node(state1)
    print(f"Phase: {result1.current_phase}")
    print(f"Should continue: {result1.should_continue}")
    print(f"Ready to synthesize: {result1.ready_to_synthesize}")
    
    # Test 2: Mid-stage with more information
    print("\n--- Test 2: Refining Phase ---")
    state2 = AdaptiveQueryState(
        original_query="Show me all companies and their employees",
        iteration_count=3
    )
    state2.add_discovered_fact("companies", ["CompanyA", "CompanyB", "CompanyC"])
    state2.add_discovered_fact("employees_companyA", ["John", "Jane"])
    state2.add_entity("Company", "CompanyA")
    state2.add_entity("Company", "CompanyB")
    state2.add_entity("Person", "John")
    state2.record_query_result(QueryInfo(
        query_text="Find companies",
        success=True,
        facts_extracted=["Found 3 companies"]
    ))
    
    result2 = evaluator_node(state2)
    print(f"Phase: {result2.current_phase}")
    print(f"Should continue: {result2.should_continue}")
    print(f"Ready to synthesize: {result2.ready_to_synthesize}")
    
    # Test 3: Ready state with comprehensive information
    print("\n--- Test 3: Ready State ---")
    state3 = AdaptiveQueryState(
        original_query="Show me all companies and their employees",
        iteration_count=5
    )
    # Add comprehensive facts
    state3.add_discovered_fact("all_companies", ["CompanyA", "CompanyB", "CompanyC"])
    state3.add_discovered_fact("employees_by_company", {
        "CompanyA": ["John", "Jane", "Bob"],
        "CompanyB": ["Alice", "Charlie"],
        "CompanyC": ["David", "Eve", "Frank"]
    })
    # Add many entities
    for company in ["CompanyA", "CompanyB", "CompanyC"]:
        state3.add_entity("Company", company)
    for person in ["John", "Jane", "Bob", "Alice", "Charlie"]:
        state3.add_entity("Person", person)
    
    # Record successful queries
    for i in range(3):
        state3.record_query_result(QueryInfo(
            query_text=f"Query {i}",
            success=True,
            facts_extracted=[f"Fact {i}"]
        ))
    
    result3 = evaluator_node(state3)
    print(f"Phase: {result3.current_phase}")
    print(f"Should continue: {result3.should_continue}")
    print(f"Ready to synthesize: {result3.ready_to_synthesize}")
    
    # Test 4: Too many failures scenario
    print("\n--- Test 4: Multiple Failures ---")
    state4 = AdaptiveQueryState(
        original_query="Show me data that doesn't exist",
        iteration_count=3,
        consecutive_failures=3
    )
    for i in range(3):
        state4.record_query_result(QueryInfo(
            query_text=f"Failed query {i}",
            success=False,
            error_message="No data found"
        ))
    
    result4 = evaluator_node(state4)
    print(f"Phase: {result4.current_phase}")
    print(f"Should continue: {result4.should_continue}")
    print(f"Ready to synthesize: {result4.ready_to_synthesize}")
    print("Note: Should stop due to consecutive failures")
    
    print("\n" + "="*60)
    print("✅ LLM-based evaluation tests completed!")
    print("No arbitrary confidence scores - only semantic evaluation!")


if __name__ == "__main__":
    test_llm_evaluation()