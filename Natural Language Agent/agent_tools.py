"""
Agent tools module - Provides MCP tools and Neo4j graph database tool
"""
import logging
from typing import List
from langchain_core.tools import tool
from langchain_mcp_adapters.client import MultiServerMCPClient

# Configure logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)

# Global cache for MCP client and tools
_mcp_client = None
_tools_cache = None


# Define the async Neo4j tool outside the function
@tool
async def query_graph_database(query: str) -> str:
    """Query Neo4j database for company relationships, ownership, directors, and historical data.
    
    Use this tool for:
    - Board member relationships and connections
    - Company ownership structures
    - Historical financial data and trends
    - Sector-based analysis and comparisons
    - Complex graph traversals and pattern matching
    
    The query should be a clear, complete natural language question.
    
    Good examples:
    - "Show all companies where John Doe is a director"
    - "Find companies in the Banking sector with market cap over 10 billion"
    - "List ownership relationships for Dialog Axiata"
    - "Show companies with common directors to Commercial Bank"
    
    Do NOT use this for:
    - Current stock prices (use MCP tools instead)
    - Real-time trading data (use MCP tools instead)
    """
    logger.info(f"Executing graph database query: {query[:100]}...")
    
    try:
        from supervisor_agent import run_supervisor_query
        from config import settings
        
        result = await run_supervisor_query(
            user_query=query,
            max_iterations=settings.supervisor_max_iterations,
            verbose=settings.agent_verbose  # Use global verbose setting for consistent logging
        )
        
        answer = result.get('answer', 'Unable to process query')
        logger.info(f"Graph query completed successfully. Result length: {len(answer)} chars")
        return answer
        
    except Exception as e:
        logger.error(f"Error executing graph query: {e}")
        return f"Error querying graph database: {str(e)}"


async def get_all_tools() -> List:
    """
    Get all available tools: MCP tools + graph database tool.
    Returns cached tools if available.
    """
    global _mcp_client, _tools_cache
    
    # Return cached tools if available
    if _tools_cache:
        logger.debug("Returning cached tools")
        return _tools_cache
    
    logger.info("Initializing tools for the first time")
    
    # Initialize MCP client if not already done
    if not _mcp_client:
        logger.info("Creating MCP client for CSE tools")
        try:
            _mcp_client = MultiServerMCPClient({
                "cse": {
                    "command": "npx",
                    "args": ["cse-mcp"],
                    "transport": "stdio"
                }
            })
            logger.info("MCP client created successfully")
        except Exception as e:
            logger.warning(f"MCP tools unavailable: {e}")
            logger.info("Continuing with graph database tool only")
            # Continue without MCP tools if initialization fails
            _mcp_client = None
    
    # Get MCP tools (they come with their own names and descriptions)
    mcp_tools = []
    if _mcp_client:
        try:
            mcp_tools = await _mcp_client.get_tools()
            logger.info(f"Retrieved {len(mcp_tools)} MCP tools")
            for tool in mcp_tools:
                logger.debug(f"MCP Tool: {tool.name} - {tool.description[:100] if hasattr(tool, 'description') else 'No description'}...")
        except Exception as e:
            logger.error(f"Failed to get MCP tools: {e}")
            mcp_tools = []
    
    # Combine all tools - query_graph_database is already defined above
    _tools_cache = mcp_tools + [query_graph_database]
    logger.info(f"Total tools available: {len(_tools_cache)}")
    
    return _tools_cache


async def reset_tools_cache():
    """
    Reset the tools cache. Useful if MCP server configuration changes.
    """
    global _tools_cache, _mcp_client
    _tools_cache = None
    _mcp_client = None
    logger.info("Tools cache reset")