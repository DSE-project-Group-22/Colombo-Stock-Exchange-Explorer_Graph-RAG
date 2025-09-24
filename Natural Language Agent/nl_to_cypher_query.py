#!/usr/bin/env python3
"""
Natural Language to Cypher Query Function
Converts natural language queries to Cypher and executes them on Neo4j database.
"""
import os
import sys
import logging
sys.path.append(os.path.dirname(os.path.abspath(__file__)))

from typing import Dict, Any
from config import settings
from helpers.neo4j_helper import get_qa_chain
from helpers.redis_helper import serialize_neo4j_dates

# Configure logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)



async def query_graph_with_natural_language(question: str, chain = None) -> Dict[str, Any]:
    """
    Convert natural language question to Cypher query and execute it asynchronously.
    
    Args:
        question (str): Natural language question
        chain: Pre-initialized chain. If None, will get from helper.
    
    Returns:
        Dict[str, Any]: Query result containing 'query', 'result', and 'intermediate_steps'
    """
    try:
        # Use helper to get chain if none provided
        if chain is None:
            chain = get_qa_chain()
        
        logger.info(f"Processing question: {question}")
        
        # Execute the query asynchronously
        result = await chain.ainvoke({"query": question})
        
        logger.info("Query executed successfully")
        
        # Serialize any Neo4j dates in the result
        return serialize_neo4j_dates(result)
        
    except Exception as e:
        logger.error(f"Error processing question: {e}")
        return {
            "query": question,
            "result": f"Error: {str(e)}",
            "error": True
        }