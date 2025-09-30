"""Test script for entity resolution in supervisor agent"""
import asyncio
import logging
from supervisor_agent import run_supervisor_query
from config import settings

# Set up logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)

# Test cases for entity resolution
TEST_CASES = [
    {
        "name": "Partial company name",
        "query": "Show me the directors of Dialog",
        "expected": "Should resolve to Dialog Axiata PLC"
    },
    {
        "name": "Misspelled company name",
        "query": "Who owns Dilog Axiata?",
        "expected": "Should resolve to Dialog Axiata PLC despite misspelling"
    },
    {
        "name": "Non-existent company",
        "query": "Show me details for XYZ Nonexistent Corp",
        "expected": "Should stop after 2 attempts and report not found"
    },
    {
        "name": "Abbreviated name",
        "query": "What is the market cap of Commercial Bank?",
        "expected": "Should resolve to Commercial Bank of Ceylon PLC"
    },
    {
        "name": "Common abbreviation",
        "query": "Show ownership structure of JKH",
        "expected": "Should attempt to resolve JKH to John Keells Holdings"
    }
]

async def test_entity_resolution():
    """Test entity resolution with various scenarios"""
    
    print("=" * 80)
    print("TESTING ENTITY RESOLUTION IN SUPERVISOR AGENT")
    print(f"Max iterations: {settings.supervisor_max_iterations}")
    print(f"Entity resolution max attempts: {settings.entity_resolution_max_attempts}")
    print("=" * 80)
    
    for i, test_case in enumerate(TEST_CASES, 1):
        print(f"\n{'='*60}")
        print(f"Test {i}: {test_case['name']}")
        print(f"Query: {test_case['query']}")
        print(f"Expected: {test_case['expected']}")
        print("-" * 60)
        
        try:
            # Run the supervisor query with verbose=True to see the process
            result = await run_supervisor_query(
                user_query=test_case['query'],
                max_iterations=7,
                verbose=True
            )
            
            print("\n" + "-" * 40)
            print("RESULT:")
            print(f"Success: {result.get('success', False)}")
            print(f"Queries executed: {result.get('queries_executed', 0)}")
            
            # Show query history
            if result.get('query_history'):
                print("\nQuery History:")
                for j, query in enumerate(result['query_history'], 1):
                    success_marker = "✓" if query.get('success') else "✗"
                    print(f"  {j}. {success_marker} {query.get('query', '')[:80]}...")
            
            # Show final answer (truncated)
            answer = result.get('answer', 'No answer')
            print(f"\nFinal Answer Preview:")
            print(answer[:300] + "..." if len(answer) > 300 else answer)
            
        except Exception as e:
            print(f"\n❌ Test failed with error: {e}")
        
        print("=" * 60)
        
        # Add delay between tests
        if i < len(TEST_CASES):
            print("\nWaiting 2 seconds before next test...")
            await asyncio.sleep(2)
    
    print("\n" + "=" * 80)
    print("ENTITY RESOLUTION TESTING COMPLETE")
    print("=" * 80)

if __name__ == "__main__":
    asyncio.run(test_entity_resolution())