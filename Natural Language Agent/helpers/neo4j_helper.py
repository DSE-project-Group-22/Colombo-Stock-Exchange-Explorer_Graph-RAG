"""
Neo4j helper functions for graph database operations.
Simple functions without complex abstractions.
"""
import logging
import threading
from typing import Dict, Any, Optional

from langchain_neo4j import Neo4jGraph, GraphCypherQAChain
from llm_manager import get_llm
from config import settings

logger = logging.getLogger(__name__)

# Global cache for graph and chain instances
_graph: Optional[Neo4jGraph] = None
_chain: Optional[GraphCypherQAChain] = None
_lock = threading.Lock()  # Thread safety for cache


def _get_graph_unsafe() -> Neo4jGraph:
    """
    Internal function to get or create Neo4j graph connection WITHOUT lock.
    Should only be called when lock is already held.
    
    Returns:
        Neo4jGraph: Connected graph instance
    """
    global _graph
    
    if _graph is None:
        logger.info("Creating new Neo4j graph connection")
        _graph = Neo4jGraph(
            url=settings.effective_neo4j_uri,
            username=settings.neo4j_user,
            password=settings.neo4j_password,
            database=settings.neo4j_database,
            enhanced_schema=True  # Restored to True for full schema support with APOC
        )
        
        # Log schema info
        schema_size = len(_graph.schema) if _graph.schema else 0
        logger.info(f"Neo4j schema loaded. Size: {schema_size} characters")
        logger.debug(f"Schema preview: {_graph.schema[:200]}..." if _graph.schema else "No schema")
        
    return _graph


def get_graph() -> Neo4jGraph:
    """
    Get or create Neo4j graph connection.
    Uses caching to avoid repeated initialization.
    Thread-safe with lock.
    
    Returns:
        Neo4jGraph: Connected graph instance
    """
    with _lock:
        return _get_graph_unsafe()


def get_qa_chain() -> GraphCypherQAChain:
    """
    Get or create GraphCypherQAChain for natural language to Cypher queries.
    Uses caching to avoid repeated initialization.
    
    Returns:
        GraphCypherQAChain: Configured chain instance
    """
    global _chain
    
    with _lock:
        if _chain is None:
            logger.info("Creating new GraphCypherQAChain")
            
            # Get graph connection using unsafe version since we already hold the lock
            graph = _get_graph_unsafe()
            
            # Get centralized LLM instance
            llm = get_llm()
            
            # Create the chain
            _chain = GraphCypherQAChain.from_llm(
                llm=llm,
                graph=graph,
                verbose=settings.agent_verbose,
                allow_dangerous_requests=True,
                return_intermediate_steps=True
            )
            
            logger.info("GraphCypherQAChain initialized successfully")
            
    return _chain


def reset_graph():
    """
    Reset the cached graph connection.
    Useful if the connection needs to be refreshed.
    """
    global _graph
    
    with _lock:
        if _graph is not None:
            logger.info("Resetting Neo4j graph connection")
            _graph = None


def reset_chain():
    """
    Reset the cached GraphCypherQAChain.
    Useful if the schema changes or connection needs reset.
    """
    global _chain
    
    with _lock:
        if _chain is not None:
            logger.info("Resetting GraphCypherQAChain")
            _chain = None


def reset_all():
    """
    Reset both graph and chain connections.
    Thread-safe implementation that avoids deadlock.
    """
    global _graph, _chain
    
    with _lock:
        if _graph is not None:
            logger.info("Resetting Neo4j graph connection")
            _graph = None
        if _chain is not None:
            logger.info("Resetting GraphCypherQAChain")
            _chain = None


async def execute_cypher_query(query: str) -> Dict[str, Any]:
    """
    Execute a raw Cypher query on the graph database.
    
    Args:
        query: Cypher query string
    
    Returns:
        Query results as dictionary
    """
    try:
        graph = get_graph()
        result = graph.query(query)
        logger.debug(f"Executed Cypher query: {query[:100]}...")
        return {"success": True, "result": result}
        
    except Exception as e:
        logger.error(f"Failed to execute Cypher query: {e}")
        return {"success": False, "error": str(e)}


def get_graph_schema() -> str:
    """
    Get the current graph schema.
    
    Returns:
        Schema string or empty string if unavailable
    """
    try:
        graph = get_graph()
        return graph.schema if graph.schema else ""
        
    except Exception as e:
        logger.error(f"Failed to get graph schema: {e}")
        return ""