"""
LangChain Neo4j Text-to-Cypher Agent
Alternative implementation using langchain-neo4j package
"""
import logging
from typing import List, Dict, Any, Optional
from langchain_neo4j import GraphCypherQAChain, Neo4jGraph
from langchain_openai import ChatOpenAI
from langchain.schema import BaseOutputParser

from config import get_neo4j_connection_params, get_openai_config
from schemas.cse_schema import CSE_SCHEMA, CSE_EXAMPLES, get_enhanced_schema

logger = logging.getLogger(__name__)


class CSECypherOutputParser(BaseOutputParser):
    """Custom output parser for CSE-specific responses"""
    
    def parse(self, text: str) -> str:
        """Parse the output from the LLM"""
        return text.strip()


class LangChainAgent:
    """
    LangChain-based Text-to-Cypher agent for CSE queries
    """
    
    def __init__(self):
        self.graph: Optional[Neo4jGraph] = None
        self.llm: Optional[ChatOpenAI] = None
        self.chain: Optional[GraphCypherQAChain] = None
        self._initialize()
    
    def _initialize(self):
        """Initialize LangChain components"""
        try:
            # Get connection parameters
            neo4j_params = get_neo4j_connection_params()
            openai_config = get_openai_config()
            
            # Initialize Neo4j graph
            self.graph = Neo4jGraph(
                url=neo4j_params["uri"],
                username=neo4j_params["auth"][0],
                password=neo4j_params["auth"][1],
                database=neo4j_params["database"]
            )
            
            # Test connection by refreshing schema
            self.graph.refresh_schema()
            logger.info(f"Connected to Neo4j at {neo4j_params['uri']}")
            
            # Initialize OpenAI LLM
            self.llm = ChatOpenAI(
                model=openai_config["model_name"],
                temperature=openai_config["temperature"],
                api_key=openai_config["api_key"],
                max_tokens=2000
            )
            
            # Create few-shot examples for better accuracy
            few_shot_examples = self._create_few_shot_examples()
            
            # Initialize GraphCypherQAChain
            self.chain = GraphCypherQAChain.from_llm(
                llm=self.llm,
                graph=self.graph,
                verbose=True,
                allow_dangerous_requests=True,
                cypher_prompt=self._create_cypher_prompt(),
                qa_prompt=self._create_qa_prompt(),
                return_intermediate_steps=True,
                return_direct=False
            )
            
            logger.info("LangChain agent initialized successfully")
            
        except Exception as e:
            logger.error(f"Failed to initialize LangChain agent: {e}")
            raise
    
    def _create_few_shot_examples(self) -> str:
        """Create few-shot examples for the prompt"""
        examples_text = "Here are some example queries:\n\n"
        for example in CSE_EXAMPLES[:5]:  # Use first 5 examples
            examples_text += f"Question: {example['user_input']}\n"
            examples_text += f"Cypher: {example['cypher_query']}\n\n"
        return examples_text
    
    def _create_cypher_prompt(self) -> str:
        """Create custom Cypher generation prompt with CSE context"""
        return f"""
You are a Neo4j Cypher expert for the Colombo Stock Exchange (CSE) database.

Schema Information:
{get_enhanced_schema()}

{self._create_few_shot_examples()}

Instructions:
1. Generate syntactically correct Cypher queries based on the schema
2. Use appropriate WHERE clauses for filtering
3. Return relevant data with clear column names
4. Use LIMIT clauses when appropriate to avoid large result sets
5. For percentage queries, multiply by 100 for display
6. For currency amounts, use appropriate formatting
7. Always check for null values when doing mathematical operations

Question: {{question}}
Cypher Query:"""
    
    def _create_qa_prompt(self) -> str:
        """Create custom QA prompt for response formatting"""
        return """
You are a financial analyst assistant for the Colombo Stock Exchange.
Use the following Cypher query results to answer the user's question.

Question: {question}
Cypher Query: {query}
Query Results: {context}

Provide a clear, concise answer based on the query results. 
Format financial numbers appropriately (e.g., currency, percentages).
If no results are found, explain that the data is not available.

Answer:"""
    
    async def query(self, natural_language_query: str) -> Dict[str, Any]:
        """
        Convert natural language query to Cypher and execute
        
        Args:
            natural_language_query: User's natural language question
            
        Returns:
            Dictionary containing results, cypher query, and metadata
        """
        if not self.chain:
            raise RuntimeError("Agent not properly initialized")
        
        try:
            logger.info(f"Processing query: {natural_language_query}")
            
            # Execute the chain
            result = self.chain.invoke(
                {"query": natural_language_query},
                return_only_outputs=False
            )
            
            # Extract intermediate steps
            intermediate_steps = result.get("intermediate_steps", [])
            cypher_query = "N/A"
            raw_context = []
            
            if intermediate_steps:
                # First step usually contains the Cypher query
                if len(intermediate_steps) > 0:
                    cypher_query = intermediate_steps[0].get("query", "N/A")
                # Second step usually contains the context (raw results)
                if len(intermediate_steps) > 1:
                    raw_context = intermediate_steps[1].get("context", [])
            
            response = {
                "success": True,
                "query": natural_language_query,
                "cypher_query": cypher_query,
                "answer": result.get("result", "No answer generated"),
                "raw_results": raw_context,
                "count": len(raw_context) if isinstance(raw_context, list) else 0,
                "agent_type": "langchain"
            }
            
            logger.info(f"Query executed successfully")
            return response
            
        except Exception as e:
            logger.error(f"Error during query execution: {e}")
            return {
                "success": False,
                "error": str(e),
                "query": natural_language_query,
                "agent_type": "langchain"
            }
    
    def execute_raw_cypher(self, cypher_query: str) -> Dict[str, Any]:
        """
        Execute a raw Cypher query directly
        
        Args:
            cypher_query: Raw Cypher query string
            
        Returns:
            Dictionary containing results and metadata
        """
        if not self.graph:
            raise RuntimeError("Neo4j graph not initialized")
        
        try:
            result = self.graph.query(cypher_query)
            
            return {
                "success": True,
                "cypher_query": cypher_query,
                "results": result,
                "count": len(result) if isinstance(result, list) else 0,
                "agent_type": "langchain_raw"
            }
            
        except Exception as e:
            logger.error(f"Error executing raw Cypher query: {e}")
            return {
                "success": False,
                "error": str(e),
                "cypher_query": cypher_query,
                "agent_type": "langchain_raw"
            }
    
    def get_schema_info(self) -> Dict[str, Any]:
        """Get information about the graph schema"""
        schema_info = {
            "predefined_schema": CSE_SCHEMA,
            "detected_schema": "",
            "examples": CSE_EXAMPLES,
            "agent_type": "langchain"
        }
        
        try:
            if self.graph:
                schema_info["detected_schema"] = self.graph.schema
        except Exception as e:
            logger.warning(f"Could not retrieve detected schema: {e}")
        
        return schema_info
    
    def health_check(self) -> Dict[str, Any]:
        """Check the health of the agent and its connections"""
        health_status = {
            "neo4j_connection": False,
            "llm_connection": False,
            "chain_initialized": False,
            "overall_status": "unhealthy"
        }
        
        try:
            # Check Neo4j connection
            if self.graph:
                # Try a simple query
                self.graph.query("RETURN 1 as test")
                health_status["neo4j_connection"] = True
            
            # Check LLM connection (basic check)
            if self.llm:
                health_status["llm_connection"] = True
            
            # Check chain initialization
            if self.chain:
                health_status["chain_initialized"] = True
            
            # Overall status
            if all([
                health_status["neo4j_connection"],
                health_status["llm_connection"],
                health_status["chain_initialized"]
            ]):
                health_status["overall_status"] = "healthy"
            
        except Exception as e:
            health_status["error"] = str(e)
        
        return health_status
    
    def close(self):
        """Close connections and cleanup resources"""
        # LangChain handles connection cleanup internally
        logger.info("LangChain agent connections closed")


# Global agent instance
_agent_instance: Optional[LangChainAgent] = None


def get_agent() -> LangChainAgent:
    """Get or create the global agent instance"""
    global _agent_instance
    if _agent_instance is None:
        _agent_instance = LangChainAgent()
    return _agent_instance