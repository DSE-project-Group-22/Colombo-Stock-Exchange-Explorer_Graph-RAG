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
        "error": result.get("error", False)
    }
    
    # Try to extract specific intermediate step details if available
    if extracted["intermediate_steps"]:
        print("🔍 Detailed Intermediate Steps Analysis:")
        for i, step in enumerate(extracted["intermediate_steps"], 1):
            print(f"  📋 Step {i}: {type(step).__name__} - {step}")
    
    return extracted

def main():
    """
    Demo function to test the natural language to Cypher functionality.
    """
    print("🚀 Natural Language to Cypher Query Demo (with Intermediate Steps)")
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
            
            print(f"\n� Summary:")
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

if __name__ == "__main__":
    main()
