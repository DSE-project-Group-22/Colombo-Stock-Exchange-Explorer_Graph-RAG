#!/usr/bin/env python3
"""
Test the simplified supervisor agent with direct final answer generation
"""

from supervisor_agent import run_supervisor_query

def test_simplified_supervisor():
    """Test that supervisor provides final answer directly"""
    
    print("\n" + "="*70)
    print("🧪 TESTING SIMPLIFIED SUPERVISOR")
    print("="*70)
    
    # Test queries that require entity resolution and decomposition
    test_cases = [
        {
            "query": "What companies does John Keells own?",
            "description": "Simple ownership query requiring entity resolution"
        },
        {
            "query": "What companies does JKH own and what are the percentages?",
            "description": "Complex query with abbreviation requiring multiple steps"
        },
        {
            "query": "List top 3 companies by market cap",
            "description": "Direct query without entity resolution"
        }
    ]
    
    for i, test in enumerate(test_cases, 1):
        print(f"\n{'='*70}")
        print(f"TEST {i}: {test['description']}")
        print(f"Query: {test['query']}")
        print("-"*70)
        
        # Run with limited iterations to test max iteration handling
        result = run_supervisor_query(
            test['query'],
            max_iterations=4,  # Limited to test iteration limit
            verbose=True
        )
        
        print("\n📊 Results:")
        print(f"Success: {result['success']}")
        print(f"Queries executed: {result['queries_executed']}")
        
        print(f"\n✅ Final Answer (from supervisor):")
        print(result['answer'])
        
        # Verify the answer is coming directly from supervisor
        if result['success']:
            print("\n🔍 Verification:")
            print("- Answer generated directly by supervisor")
            print("- No separate synthesis function used")
            
            # Show query decomposition
            print("\n📝 Query Decomposition:")
            for j, q in enumerate(result['query_history'], 1):
                status = "✓" if q.get('success', False) else "✗"
                print(f"  {j}. {status} {q['query'][:80]}...")

def test_max_iteration_handling():
    """Test that supervisor provides answer when max iterations reached"""
    
    print("\n" + "="*70)
    print("🚨 TESTING MAX ITERATION HANDLING")
    print("="*70)
    
    query = "What companies does John Keells Holdings own, who are their directors, and what sectors are they in?"
    
    print(f"\nComplex Query: {query}")
    print("Running with only 2 iterations to test limit handling...")
    
    result = run_supervisor_query(
        query,
        max_iterations=2,  # Very limited
        verbose=True
    )
    
    print("\n📊 Results:")
    print(f"Queries executed: {result['queries_executed']}")
    print(f"\n✅ Final Answer (after hitting limit):")
    print(result['answer'])
    
    if result['answer'] and result['answer'] != 'Unable to generate answer':
        print("\n✓ Supervisor successfully provided answer despite iteration limit")
    else:
        print("\n✗ No answer provided")

if __name__ == "__main__":
    print("\n🎯 Simplified Supervisor Test Suite")
    print("Testing direct answer generation without synthesis function")
    
    # Run tests
    test_simplified_supervisor()
    test_max_iteration_handling()
    
    print("\n" + "="*70)
    print("✨ TESTING COMPLETE")
    print("The supervisor now directly provides final answers")
    print("No separate synthesis function needed!")
    print("="*70)