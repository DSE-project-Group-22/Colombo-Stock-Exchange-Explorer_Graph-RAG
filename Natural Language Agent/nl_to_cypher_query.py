#!/usr/bin/env python3
"""
Natural Language to Cypher Query Function
Converts natural language queries to Cypher and executes them on Neo4j database.
"""
import os
import sys
sys.path.append(os.path.dirname(os.path.abspath(__file__)))

from typing import Dict, Any
from langchain_neo4j import Neo4jGraph, GraphCypherQAChain
from langchain_openai import ChatOpenAI
from config import Settings

# Initialize settings
settings = Settings()

def initialize_graph_qa_chain() -> GraphCypherQAChain:
    """
    Initialize the Neo4j graph connection and GraphCypherQAChain.
    
    Returns:
        GraphCypherQAChain: Configured chain for natural language to Cypher queries
    """
    try:
        # Connect to Neo4j
        graph = Neo4jGraph(
            url=settings.neo4j_uri,
            username=settings.neo4j_user,
            password=settings.neo4j_password,
            database=settings.neo4j_database,
            enhanced_schema=True  # Keep simple to avoid APOC dependencies
        )
        
        # Initialize OpenAI LLM (you'll need to set OPENAI_API_KEY)
        llm = ChatOpenAI(
            model="gpt-3.5-turbo",
            temperature=0  # Deterministic results for query generation
        )
        
        # Create the GraphCypherQAChain
        chain = GraphCypherQAChain.from_llm(
            llm=llm,
            graph=graph,
            verbose=True,  # Show generated Cypher queries
            allow_dangerous_requests=True,  # Allow all Cypher queries
            return_intermediate_steps=True  # Enable intermediate steps for debugging
        )
        
        print("✅ Successfully initialized GraphCypherQAChain")
        return chain
        
    except Exception as e:
        print(f"❌ Error initializing GraphCypherQAChain: {e}")
        raise

def query_graph_with_natural_language(question: str, chain: GraphCypherQAChain = None) -> Dict[str, Any]:
    """
    Convert natural language question to Cypher query and execute it.
    
    Args:
        question (str): Natural language question
        chain (GraphCypherQAChain, optional): Pre-initialized chain. If None, will create new one.
    
    Returns:
        Dict[str, Any]: Query result containing 'query', 'result', and 'intermediate_steps'
    """
    try:
        # Initialize chain if not provided
        if chain is None:
            chain = initialize_graph_qa_chain()
        
        print(f"🔍 Processing question: {question}")
        
        # Execute the query
        result = chain.invoke({"query": question})
        
        # Print the entire result object
        print(f"\n📋 COMPLETE RESULT OBJECT:")
        print(f"Type: {type(result)}")
        print(f"Keys: {list(result.keys()) if isinstance(result, dict) else 'Not a dict'}")
        print(f"\n� All Key-Value Pairs:")
        for key, value in result.items():
            print(f"  🔑 {key}: {type(value).__name__}")
            print(f"     Value: {value}")
            print()
        
        print(f"✅ Query executed successfully")
        
        return result
        
    except Exception as e:
        print(f"❌ Error processing question: {e}")
        return {
            "query": question,
            "result": f"Error: {str(e)}",
            "error": True
        }

def extract_query_details(result: Dict[str, Any]) -> Dict[str, Any]:
    """
    Extract different components from GraphCypherQAChain result when return_intermediate_steps=True.
    
    Args:
        result: Result from GraphCypherQAChain.invoke()
    
    Returns:
        Dict containing extracted components: query, final_answer, intermediate_steps, etc.
    """
    extracted = {
        "original_question": result.get("query", ""),
        "final_answer": result.get("result", ""),
        "has_intermediate_steps": "intermediate_steps" in result,
        "intermediate_steps": result.get("intermediate_steps", []),
        "error": result.get("error", False),
        "cypher_query": "N/A",
        "raw_results": "N/A"
    }
    
    # Try to extract specific intermediate step details if available
    if extracted["intermediate_steps"]:
        try:
            # GraphCypherQAChain typically returns intermediate steps as a list
            # First step usually contains the generated Cypher query
            # Second step usually contains the raw database results
            intermediate = extracted["intermediate_steps"]
            
            if len(intermediate) > 0 and isinstance(intermediate[0], dict):
                # Look for query in first step
                if "query" in intermediate[0]:
                    extracted["cypher_query"] = intermediate[0]["query"]
            
            if len(intermediate) > 1 and isinstance(intermediate[1], dict):
                # Look for context/results in second step
                if "context" in intermediate[1]:
                    extracted["raw_results"] = intermediate[1]["context"]
            
            # Alternative: sometimes the intermediate steps are structured differently
            # Try to find query and context in any step
            for step in intermediate:
                if isinstance(step, dict):
                    if "query" in step and extracted["cypher_query"] == "N/A":
                        extracted["cypher_query"] = step["query"]
                    if "context" in step and extracted["raw_results"] == "N/A":
                        extracted["raw_results"] = step["context"]
                        
        except Exception as e:
            print(f"⚠️  Could not parse intermediate steps: {e}")
    
    return extracted

def interactive_query_terminal():
    """
    Interactive terminal for asking natural language questions to the graph database.
    """
    print("🚀 Interactive Graph Query Terminal")
    print("=" * 50)
    print("Ask questions about your graph database in natural language!")
    print("Type 'quit', 'exit', or 'q' to stop.")
    print("Type 'help' for example questions.")
    print("=" * 50)
    
    try:
        # Initialize the chain once at startup
        print("🔄 Initializing Graph Query Chain...")
        chain = initialize_graph_qa_chain()
        print("✅ Ready to answer your questions!\n")
        
        while True:
            try:
                # Get user input
                question = input("🤔 Ask your question: ").strip()
                
                # Check for exit commands
                if question.lower() in ['quit', 'exit', 'q']:
                    print("👋 Goodbye!")
                    break
                
                # Check for help
                if question.lower() == 'help':
                    print_help_examples()
                    continue
                
                # Skip empty questions
                if not question:
                    print("❓ Please enter a question.")
                    continue
                
                print(f"\n🔍 Processing: {question}")
                print("-" * 40)
                
                # Get the answer
                result = query_graph_with_natural_language(question, chain)
                
                # Display the answer clearly
                if result.get("error"):
                    print(f"❌ Error: {result.get('result', 'Unknown error')}")
                else:
                    print(f"� Answer: {result.get('result', 'No answer provided')}")
                
                # Show intermediate steps if verbose mode
                if result.get("intermediate_steps"):
                    show_verbose = input("\n🔧 Show technical details? (y/n): ").strip().lower()
                    if show_verbose in ['y', 'yes']:
                        details = extract_query_details(result)
                        print(f"\n📋 Technical Details:")
                        print(f"   Generated Cypher Query: {details.get('cypher_query', 'N/A')}")
                        print(f"   Raw Database Results: {details.get('raw_results', 'N/A')}")
                
                print("\n" + "=" * 50)
                
            except KeyboardInterrupt:
                print("\n👋 Goodbye!")
                break
            except Exception as e:
                print(f"❌ Error processing question: {e}")
                print("Please try again with a different question.\n")
                
    except Exception as e:
        print(f"❌ Failed to initialize: {e}")
        print("💡 Make sure:")
        print("   1. Neo4j is running")
        print("   2. OPENAI_API_KEY is set in your environment")
        print("   3. Database has some data")

def print_help_examples():
    """Print example questions users can ask."""
    print("\n💡 Example Questions You Can Ask:")
    print("   • How many companies are in the database?")
    print("   • Show me 3 companies from the database")
    print("   • What are the different sectors in the stock exchange?")
    print("   • List companies with market cap above 1 billion")
    print("   • Show me recent trading data")
    print("   • What is the average stock price?")
    print("   • Find companies in the banking sector")
    print("\n💭 Tips:")
    print("   • Be specific in your questions")
    print("   • Ask about counts, lists, or specific data")
    print("   • Use natural language - no need for technical terms")
    print()

def demo_mode():
    """
    Demo function to test predefined questions (original functionality).
    """
    print("🚀 Natural Language to Cypher Query Demo (Predefined Questions)")
    print("=" * 65)
    
    # Test questions - customize these based on your graph schema
    test_questions = [
        "How many companies are in the database?",
        "Show me 3 companies from the database"
    ]
    
    try:
        # Initialize the chain once
        chain = initialize_graph_qa_chain()
        
        # Test each question and show detailed analysis
        for question in test_questions:
            print(f"\n📝 Question: {question}")
            print("-" * 50)
            
            # Get the full result with intermediate steps
            result = query_graph_with_natural_language(question, chain)
            
            # Extract and analyze the components
            details = extract_query_details(result)
            
            print(f"\n📊 Summary:")
            print(f"   Original Question: {details['original_question']}")
            print(f"   Final Answer: {details['final_answer']}")
            print(f"   Has Intermediate Steps: {details['has_intermediate_steps']}")
            print(f"   Number of Steps: {len(details['intermediate_steps'])}")
            
            print("=" * 65)
            
    except Exception as e:
        print(f"❌ Demo failed: {e}")
        print("💡 Make sure:")
        print("   1. Neo4j is running")
        print("   2. OPENAI_API_KEY is set in your environment")
        print("   3. Database has some data")

def main():
    """
    Main function - choose between interactive mode or demo mode.
    """
    import sys
    
    # Check command line arguments
    if len(sys.argv) > 1 and sys.argv[1] == '--demo':
        demo_mode()
    else:
        interactive_query_terminal()

if __name__ == "__main__":
    main()
