"""
Neo4j GraphRAG Text-to-Cypher Agent
Recommended implementation using neo4j-graphrag-python package
"""
import logging
from typing import List, Dict, Any, Optional
from neo4j import GraphDatabase, Driver
from neo4j_graphrag.retrievers import Text2CypherRetriever
from neo4j_graphrag.llm import OpenAILLM
from neo4j_graphrag.exceptions import Text2CypherRetrievalError

from config import get_neo4j_connection_params, get_openai_config
from schemas.cse_schema import CSE_SCHEMA, get_formatted_examples, get_enhanced_schema

logger = logging.getLogger(__name__)


class Neo4jGraphRAGAgent:
    """
    Neo4j GraphRAG-based Text-to-Cypher agent for CSE queries
    """
    
    def __init__(self):
        self.driver: Optional[Driver] = None
        self.retriever: Optional[Text2CypherRetriever] = None
        self.llm: Optional[OpenAILLM] = None
        self._initialize()
    
    def _initialize(self):
        """Initialize Neo4j connection and GraphRAG components"""
        try:
            # Get connection parameters
            neo4j_params = get_neo4j_connection_params()
            openai_config = get_openai_config()
            
            # Initialize Neo4j driver
            self.driver = GraphDatabase.driver(
                neo4j_params["uri"],
                auth=neo4j_params["auth"]
            )
            
            # Test connection
            self.driver.verify_connectivity()
            logger.info(f"Connected to Neo4j at {neo4j_params['uri']}")
            
            # Initialize OpenAI LLM
            self.llm = OpenAILLM(
                model_name=openai_config["model_name"],
                model_params={
                    "temperature": openai_config["temperature"],
                    "max_tokens": 2000
                },
                api_key=openai_config["api_key"]
            )
            
            # Initialize Text2Cypher retriever with CSE-specific schema and examples
            self.retriever = Text2CypherRetriever(
                driver=self.driver,
                llm=self.llm,
                neo4j_schema=get_enhanced_schema(),
                examples=get_formatted_examples()
            )
            
            logger.info("Neo4j GraphRAG agent initialized successfully")
            
        except Exception as e:
            logger.error(f"Failed to initialize Neo4j GraphRAG agent: {e}")
            raise
    
    async def query(self, natural_language_query: str, top_k: int = 10) -> Dict[str, Any]:
        """
        Convert natural language query to Cypher and execute
        
        Args:
            natural_language_query: User's natural language question
            top_k: Maximum number of results to return
            
        Returns:
            Dictionary containing results, cypher query, and metadata
        """
        if not self.retriever:
            raise RuntimeError("Agent not properly initialized")
        
        try:
            logger.info(f"Processing query: {natural_language_query}")
            
            # Use Text2CypherRetriever to convert and execute query
            result = self.retriever.search(
                query_text=natural_language_query,
                top_k=top_k
            )
            
            # Extract results and metadata
            records = []
            for item in result.items:
                records.append({
                    "content": item.content,
                    "metadata": item.metadata
                })
            
            response = {
                "success": True,
                "query": natural_language_query,
                "cypher_query": getattr(result, 'cypher_query', 'N/A'),
                "results": records,
                "count": len(records),
                "agent_type": "neo4j_graphrag"
            }
            
            logger.info(f"Query executed successfully, returned {len(records)} results")
            return response
            
        except Text2CypherRetrievalError as e:
            logger.error(f"Text2Cypher retrieval error: {e}")
            return {
                "success": False,
                "error": f"Failed to generate or execute Cypher query: {str(e)}",
                "query": natural_language_query,
                "agent_type": "neo4j_graphrag"
            }
        except Exception as e:
            logger.error(f"Unexpected error during query: {e}")
            return {
                "success": False,
                "error": f"Unexpected error: {str(e)}",
                "query": natural_language_query,
                "agent_type": "neo4j_graphrag"
            }
    
    def execute_raw_cypher(self, cypher_query: str) -> Dict[str, Any]:
        """
        Execute a raw Cypher query directly
        
        Args:
            cypher_query: Raw Cypher query string
            
        Returns:
            Dictionary containing results and metadata
        """
        if not self.driver:
            raise RuntimeError("Neo4j driver not initialized")
        
        try:
            with self.driver.session() as session:
                result = session.run(cypher_query)
                records = [dict(record) for record in result]
                
                return {
                    "success": True,
                    "cypher_query": cypher_query,
                    "results": records,
                    "count": len(records),
                    "agent_type": "neo4j_graphrag_raw"
                }
                
        except Exception as e:
            logger.error(f"Error executing raw Cypher query: {e}")
            return {
                "success": False,
                "error": str(e),
                "cypher_query": cypher_query,
                "agent_type": "neo4j_graphrag_raw"
            }
    
    def get_schema_info(self) -> Dict[str, Any]:
        """Get information about the graph schema"""
        return {
            "schema": CSE_SCHEMA,
            "examples": get_formatted_examples(),
            "agent_type": "neo4j_graphrag"
        }
    
    def health_check(self) -> Dict[str, Any]:
        """Check the health of the agent and its connections"""
        health_status = {
            "neo4j_connection": False,
            "llm_connection": False,
            "retriever_initialized": False,
            "overall_status": "unhealthy"
        }
        
        try:
            # Check Neo4j connection
            if self.driver:
                self.driver.verify_connectivity()
                health_status["neo4j_connection"] = True
            
            # Check LLM connection (basic check)
            if self.llm:
                health_status["llm_connection"] = True
            
            # Check retriever initialization
            if self.retriever:
                health_status["retriever_initialized"] = True
            
            # Overall status
            if all([
                health_status["neo4j_connection"],
                health_status["llm_connection"],
                health_status["retriever_initialized"]
            ]):
                health_status["overall_status"] = "healthy"
            
        except Exception as e:
            health_status["error"] = str(e)
        
        return health_status
    
    def close(self):
        """Close connections and cleanup resources"""
        if self.driver:
            self.driver.close()
            logger.info("Neo4j driver connection closed")


# Global agent instance
_agent_instance: Optional[Neo4jGraphRAGAgent] = None


def get_agent() -> Neo4jGraphRAGAgent:
    """Get or create the global agent instance"""
    global _agent_instance
    if _agent_instance is None:
        _agent_instance = Neo4jGraphRAGAgent()
    return _agent_instance