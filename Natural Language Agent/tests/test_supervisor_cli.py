#!/usr/bin/env python3
"""
Command-line interface for testing the Supervisor Agent.
Provides interactive testing with detailed logging of query decomposition.
"""
import os
import sys
import asyncio
import argparse
import logging
import time
from datetime import datetime
from typing import Optional, List
import json

# Add parent directory to path to import agent modules
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from supervisor_agent import run_supervisor_query
from test_queries import TEST_QUERIES


def setup_logging(verbose: bool = True):
    """
    Configure logging to see only LLM outputs and GraphCypherQAChain verbose output.
    
    Args:
        verbose: If True, show LLM reasoning and Cypher queries
    """
    # Silence most loggers
    logging.getLogger().setLevel(logging.WARNING)
    
    # Clear any existing handlers
    root_logger = logging.getLogger()
    root_logger.handlers.clear()
    
    # Simple format for clean output
    simple_format = '%(message)s'
    
    # Create console handler
    console_handler = logging.StreamHandler(sys.stdout)
    console_handler.setFormatter(logging.Formatter(simple_format))
    root_logger.addHandler(console_handler)
    
    if verbose:
        # Only show critical logs we care about
        # Disable most loggers
        logging.getLogger('supervisor_agent').setLevel(logging.WARNING)
        logging.getLogger('nl_to_cypher_query').setLevel(logging.WARNING)
        logging.getLogger('helpers.neo4j_helper').setLevel(logging.WARNING)
        logging.getLogger('helpers.redis_helper').setLevel(logging.WARNING)
        logging.getLogger('llm_manager').setLevel(logging.WARNING)
        logging.getLogger('config').setLevel(logging.WARNING)
        
        # Disable HTTP and connection logs
        logging.getLogger('httpx').setLevel(logging.WARNING)
        logging.getLogger('httpcore').setLevel(logging.WARNING)
        logging.getLogger('openai').setLevel(logging.WARNING)
        logging.getLogger('neo4j').setLevel(logging.WARNING)
        
        # The GraphCypherQAChain verbose output is printed directly, not through logging
        # So we don't need to configure it here
    else:
        # Quiet mode - suppress everything except errors
        logging.getLogger().setLevel(logging.ERROR)


def print_header():
    """Print a nice header for the CLI tool."""
    print("\n" + "="*70)
    print("🔍 SUPERVISOR AGENT TEST CLI")
    print("="*70)
    print("This tool allows you to test the supervisor agent's query decomposition")
    print("and see how it breaks down complex queries into simpler steps.\n")


def print_separator(char="-", width=70):
    """Print a separator line."""
    print(char * width)


async def test_single_query(
    query: str,
    max_iterations: int = 20,
    verbose: bool = True,
    save_results: bool = False
) -> dict:
    """
    Test a single query and display results.
    
    Args:
        query: The natural language query to test
        max_iterations: Maximum number of query iterations
        verbose: Whether to show verbose output
        save_results: Whether to save results to file
        
    Returns:
        Dictionary with test results
    """
    print_separator("=")
    print(f"📝 QUERY: {query}")
    print_separator("=")
    
    # Start timing
    start_time = time.time()
    
    try:
        # The supervisor agent will print:
        # 1. LLM reasoning for query decomposition
        # 2. GraphCypherQAChain verbose output (Cypher queries)
        # when verbose=True
        
        if verbose:
            print("\n🔍 Query Decomposition & Execution:\n")
            print_separator("-")
        
        result = await run_supervisor_query(
            user_query=query,
            max_iterations=max_iterations,
            verbose=verbose
        )
        
        # Calculate elapsed time
        elapsed_time = time.time() - start_time
        
        # Display results
        print("\n" + "="*70)
        print("📊 RESULTS")
        print("="*70)
        
        if result.get('success'):
            print(f"✅ Status: SUCCESS")
            print(f"⏱️  Time: {elapsed_time:.2f} seconds")
            print(f"🔢 Queries executed: {result.get('queries_executed', 0)}")
            print(f"\n💡 Answer:\n{'-'*70}")
            print(result.get('answer', 'No answer provided'))
            print('-'*70)
            
            # Show query history if verbose
            if verbose and result.get('query_history'):
                print("\n📜 Query History:")
                print('-'*70)
                for i, query_info in enumerate(result.get('query_history', []), 1):
                    status = "✓" if query_info.get('success') else "✗"
                    print(f"\n{i}. [{status}] {query_info.get('query', 'N/A')}")
                    
                    # Show result preview
                    result_str = str(query_info.get('result', ''))
                    if len(result_str) > 200:
                        result_str = result_str[:200] + "..."
                    print(f"   Result: {result_str}")
                    
                    # Show intermediate steps if available
                    if query_info.get('intermediate_steps'):
                        steps = query_info.get('intermediate_steps')
                        if isinstance(steps, list) and len(steps) > 0:
                            print(f"   Cypher: {steps[0].get('query', 'N/A') if isinstance(steps[0], dict) else 'N/A'}")
        else:
            print(f"❌ Status: FAILED")
            print(f"⏱️  Time: {elapsed_time:.2f} seconds")
            print(f"Error: Unable to generate answer")
        
        # Prepare result dictionary
        test_result = {
            'query': query,
            'success': result.get('success', False),
            'answer': result.get('answer', ''),
            'queries_executed': result.get('queries_executed', 0),
            'query_history': result.get('query_history', []),
            'elapsed_time': elapsed_time,
            'timestamp': datetime.now().isoformat()
        }
        
        # Save results if requested
        if save_results:
            filename = f"test_results_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
            with open(filename, 'w') as f:
                json.dump(test_result, f, indent=2, default=str)
            print(f"\n💾 Results saved to: {filename}")
        
        return test_result
        
    except Exception as e:
        print(f"\n❌ Error during query execution: {e}")
        import traceback
        if verbose:
            traceback.print_exc()
        return {
            'query': query,
            'success': False,
            'error': str(e),
            'elapsed_time': time.time() - start_time
        }


async def interactive_mode(args):
    """
    Run the CLI in interactive mode where users can enter queries.
    """
    print_header()
    
    while True:
        print("\n" + "="*70)
        print("OPTIONS:")
        print("1. Enter a custom query")
        print("2. Run a preset test query")
        print("3. Run all test queries")
        print("4. Toggle verbose mode (currently: {})".format("ON" if args.verbose else "OFF"))
        print("5. Exit")
        print_separator()
        
        choice = input("Select an option (1-5): ").strip()
        
        if choice == '1':
            query = input("\n📝 Enter your query: ").strip()
            if query:
                await test_single_query(
                    query,
                    max_iterations=args.max_iterations,
                    verbose=args.verbose,
                    save_results=args.save
                )
            else:
                print("❌ Empty query, please try again.")
                
        elif choice == '2':
            print("\n📚 Available test queries:")
            for i, q in enumerate(TEST_QUERIES, 1):
                print(f"{i}. {q}")
            
            try:
                idx = int(input("\nSelect query number: ")) - 1
                if 0 <= idx < len(TEST_QUERIES):
                    await test_single_query(
                        TEST_QUERIES[idx],
                        max_iterations=args.max_iterations,
                        verbose=args.verbose,
                        save_results=args.save
                    )
                else:
                    print("❌ Invalid selection")
            except ValueError:
                print("❌ Please enter a valid number")
                
        elif choice == '3':
            print("\n🔄 Running all test queries...")
            for i, query in enumerate(TEST_QUERIES, 1):
                print(f"\n[{i}/{len(TEST_QUERIES)}] Testing query...")
                await test_single_query(
                    query,
                    max_iterations=args.max_iterations,
                    verbose=args.verbose,
                    save_results=args.save
                )
                if i < len(TEST_QUERIES):
                    input("\nPress Enter to continue to next query...")
                    
        elif choice == '4':
            args.verbose = not args.verbose
            setup_logging(args.verbose)
            print(f"✅ Verbose mode: {'ON' if args.verbose else 'OFF'}")
            
        elif choice == '5':
            print("\n👋 Goodbye!")
            break
            
        else:
            print("❌ Invalid option, please try again.")


async def main():
    """Main entry point for the CLI."""
    parser = argparse.ArgumentParser(
        description='Test the Supervisor Agent with natural language queries'
    )
    
    parser.add_argument(
        '--query', '-q',
        type=str,
        help='Run a specific query (non-interactive mode)'
    )
    
    parser.add_argument(
        '--max-iterations', '-m',
        type=int,
        default=20,
        help='Maximum number of query iterations (default: 20)'
    )
    
    parser.add_argument(
        '--verbose', '-v',
        action='store_true',
        default=True,
        help='Show verbose output including debug logs (default: True)'
    )
    
    parser.add_argument(
        '--quiet',
        action='store_true',
        help='Minimize output (opposite of verbose)'
    )
    
    parser.add_argument(
        '--save', '-s',
        action='store_true',
        help='Save results to JSON file'
    )
    
    parser.add_argument(
        '--neo4j-uri',
        type=str,
        default=os.getenv('NEO4J_URI', 'bolt://localhost:7687'),
        help='Neo4j connection URI (default: bolt://localhost:7687)'
    )
    
    parser.add_argument(
        '--neo4j-user',
        type=str,
        default=os.getenv('NEO4J_USER', 'neo4j'),
        help='Neo4j username (default: neo4j)'
    )
    
    parser.add_argument(
        '--neo4j-password',
        type=str,
        default=os.getenv('NEO4J_PASSWORD', 'password'),
        help='Neo4j password (default: password)'
    )
    
    args = parser.parse_args()
    
    # Handle quiet flag
    if args.quiet:
        args.verbose = False
    
    # Set Neo4j environment variables
    os.environ['NEO4J_URI'] = args.neo4j_uri
    os.environ['NEO4J_USER'] = args.neo4j_user
    os.environ['NEO4J_PASSWORD'] = args.neo4j_password
    os.environ['ENVIRONMENT'] = 'development'  # Force development mode for local testing
    
    # Setup logging
    setup_logging(args.verbose)
    
    # Check for OpenAI API key
    if not os.getenv('OPENAI_API_KEY'):
        print("⚠️  Warning: OPENAI_API_KEY not set in environment")
        print("Set it with: export OPENAI_API_KEY='your-key-here'")
        response = input("Continue anyway? (y/n): ")
        if response.lower() != 'y':
            return
    
    # Run in appropriate mode
    if args.query:
        # Non-interactive mode - run single query
        await test_single_query(
            args.query,
            max_iterations=args.max_iterations,
            verbose=args.verbose,
            save_results=args.save
        )
    else:
        # Interactive mode
        await interactive_mode(args)


if __name__ == "__main__":
    try:
        asyncio.run(main())
    except KeyboardInterrupt:
        print("\n\n👋 Interrupted by user. Goodbye!")
    except Exception as e:
        print(f"\n❌ Fatal error: {e}")
        import traceback
        traceback.print_exc()