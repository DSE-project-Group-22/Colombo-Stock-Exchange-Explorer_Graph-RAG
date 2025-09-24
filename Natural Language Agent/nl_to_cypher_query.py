#!/usr/bin/env python3
"""
Natural Language to Cypher Query Function
Converts natural language queries to Cypher and executes them on Neo4j database.
"""
import os
import sys
import logging
import threading
sys.path.append(os.path.dirname(os.path.abspath(__file__)))

from typing import Dict, Any, Optional
from langchain_neo4j import Neo4jGraph, GraphCypherQAChain
from llm_manager import get_llm
from config import Settings

# Configure logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)

# Initialize settings
settings = Settings()

# Cache for the GraphCypherQAChain to avoid repeated initialization
_cached_chain: Optional[GraphCypherQAChain] = None
_chain_lock = threading.Lock()  # Thread safety for cache

def get_cached_chain() -> GraphCypherQAChain:
    """
    Get or create cached GraphCypherQAChain instance.
    
    Returns:
        GraphCypherQAChain: Cached or newly created chain instance
    """
    global _cached_chain
    
    with _chain_lock:
        if _cached_chain is None:
            logger.info("Creating new GraphCypherQAChain (first time initialization)")
            _cached_chain = initialize_graph_qa_chain()
        else:
            logger.debug("Using cached GraphCypherQAChain")
        return _cached_chain


def clear_chain_cache():
    """Clear the cached chain (useful if schema changes or connection needs reset)."""
    global _cached_chain
    with _chain_lock:
        if _cached_chain is not None:
            logger.info("Clearing chain cache")
            _cached_chain = None
        else:
            logger.debug("Cache was already empty")


def initialize_graph_qa_chain() -> GraphCypherQAChain:
    """
    Initialize the Neo4j graph connection and GraphCypherQAChain.
    
    Returns:
        GraphCypherQAChain: Configured chain for natural language to Cypher queries
    """
    try:
        logger.info("Initializing new GraphCypherQAChain with Neo4j connection...")
        
        # Connect to Neo4j
        graph = Neo4jGraph(
            url=settings.neo4j_uri,
            username=settings.neo4j_user,
            password=settings.neo4j_password,
            database=settings.neo4j_database,
            enhanced_schema=True  # Keep simple to avoid APOC dependencies
        )
        
        # Log schema info for debugging
        schema_size = len(graph.schema) if graph.schema else 0
        logger.info(f"Neo4j schema loaded. Size: {schema_size} characters")
        logger.debug(f"Schema preview: {graph.schema[:200]}..." if graph.schema else "No schema loaded")
        
        # Get centralized LLM instance
        llm = get_llm()
        
        # Create the GraphCypherQAChain
        chain = GraphCypherQAChain.from_llm(
            llm=llm,
            graph=graph,
            verbose=True,  # Show generated Cypher queries
            allow_dangerous_requests=True,  # Allow all Cypher queries
            return_intermediate_steps=True  # Enable intermediate steps for debugging
        )
        
        logger.info(f"GraphCypherQAChain initialized successfully. Schema size: {schema_size} chars")
        return chain
        
    except Exception as e:
        logger.error(f"Error initializing GraphCypherQAChain: {e}")
        raise


async def query_graph_with_natural_language(question: str, chain: GraphCypherQAChain = None) -> Dict[str, Any]:
    """
    Convert natural language question to Cypher query and execute it asynchronously.
    
    Args:
        question (str): Natural language question
        chain (GraphCypherQAChain, optional): Pre-initialized chain. If None, will use cached one.
    
    Returns:
        Dict[str, Any]: Query result containing 'query', 'result', and 'intermediate_steps'
    """
    try:
        # Use cached chain if none provided
        if chain is None:
            chain = get_cached_chain()
        
        logger.info(f"Processing question: {question}")
        
        # Execute the query asynchronously
        result = await chain.ainvoke({"query": question})
        
        logger.info("Query executed successfully")
        
        return result
        
    except Exception as e:
        logger.error(f"Error processing question: {e}")
        return {
            "query": question,
            "result": f"Error: {str(e)}",
            "error": True
        }