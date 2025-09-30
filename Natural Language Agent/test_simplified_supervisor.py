"""Test the simplified supervisor with natural entity resolution"""
import asyncio
import logging
from supervisor_agent import run_supervisor_query
from config import settings

# Set up logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)

async def test_simplified_supervisor():
    """Test the simplified supervisor logic"""
    
    print("=" * 80)
    print("TESTING SIMPLIFIED SUPERVISOR")
    print("- No regex pattern matching")
    print("- Natural LLM-driven decisions")
    print("- Two-phase approach maintained")
    print("=" * 80)
    
    test_queries = [
        "Show me the directors of Dialog",  # Should resolve Dialog → Dialog Axiata PLC
        "What companies does John Keells own?",  # Should resolve John Keells → John Keells Holdings PLC
        "Show details for XYZ Corp that doesn't exist",  # Should handle non-existent entity gracefully
    ]
    
    for i, query in enumerate(test_queries, 1):
        print(f"\n{'='*60}")
        print(f"Test {i}: {query}")
        print("-" * 60)
        
        try:
            result = await run_supervisor_query(
                user_query=query,
                max_iterations=7,
                verbose=True  # Show the decision process
            )
            
            print("\n" + "-" * 40)
            print("RESULT SUMMARY:")
            print(f"Success: {result.get('success', False)}")
            print(f"Queries executed: {result.get('queries_executed', 0)}")
            
            # Show the final answer
            answer = result.get('answer', 'No answer')
            print(f"\nFinal Answer:")
            print(answer[:500] + "..." if len(answer) > 500 else answer)
            
        except Exception as e:
            print(f"\n❌ Error: {e}")
        
        print("=" * 60)
        
        if i < len(test_queries):
            print("\nWaiting 2 seconds...")
            await asyncio.sleep(2)
    
    print("\n" + "=" * 80)
    print("KEY OBSERVATIONS:")
    print("1. No hardcoded pattern matching - LLM decides when entities need resolution")
    print("2. Natural language responses without rigid templates")
    print("3. Two-phase approach still followed intelligently")
    print("=" * 80)

if __name__ == "__main__":
    asyncio.run(test_simplified_supervisor())