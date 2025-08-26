#!/usr/bin/env python3
"""
Test script for Natural Language to Cypher Query functionality
"""
import os
import sys
sys.path.append(os.path.dirname(os.path.abspath(__file__)))

from nl_to_cypher_query import initialize_graph_qa_chain, query_graph_with_natural_language

def test_simple_queries():
    """Test basic natural language queries"""
    print("🧪 Testing Natural Language to Cypher Queries")
    print("=" * 60)
    
    # Example questions - you can modify these based on your data
    questions = [
        "How many companies are in the database?",
        "What are the names of 3 companies?",
        "What different types of nodes exist?",
        "Show me some relationships in the graph"
    ]
    
    try:
        # Initialize chain once for efficiency
        print("🔧 Initializing GraphCypherQAChain...")
        chain = initialize_graph_qa_chain()
        
        # Test each question
        for i, question in enumerate(questions, 1):
            print(f"\n📋 Test {i}: {question}")
            print("-" * 40)
            
            result = query_graph_with_natural_language(question, chain)
            
            if result.get('error'):
                print(f"❌ Error: {result['result']}")
            else:
                print(f"✅ Result: {result['result']}")
            
            print()
    
    except Exception as e:
        print(f"❌ Test failed: {e}")

def test_interactive_mode():
    """Interactive mode for testing custom queries"""
    print("\n🎯 Interactive Query Mode")
    print("=" * 40)
    print("Enter your natural language questions (type 'quit' to exit)")
    
    try:
        chain = initialize_graph_qa_chain()
        
        while True:
            question = input("\n🤔 Your question: ").strip()
            
            if question.lower() in ['quit', 'exit', 'q']:
                break
                
            if not question:
                continue
                
            result = query_graph_with_natural_language(question, chain)
            
            if result.get('error'):
                print(f"❌ Error: {result['result']}")
            else:
                print(f"💡 Answer: {result['result']}")
                
    except KeyboardInterrupt:
        print("\n👋 Goodbye!")
    except Exception as e:
        print(f"❌ Interactive mode failed: {e}")

if __name__ == "__main__":
    # Run basic tests
    test_simple_queries()
    
    # Ask if user wants interactive mode
    try:
        choice = input("\n🎮 Would you like to try interactive mode? (y/n): ").strip().lower()
        if choice in ['y', 'yes']:
            test_interactive_mode()
    except KeyboardInterrupt:
        print("\n👋 Goodbye!")
