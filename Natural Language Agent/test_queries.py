"""
Test script for CSE Natural Language Agent
Tests both Neo4j GraphRAG and LangChain implementations with sample queries
"""
import asyncio
import json
import logging
from typing import List, Dict, Any
import httpx
from datetime import datetime

from config import settings

# Configure logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

# Test queries specific to Colombo Stock Exchange
CSE_TEST_QUERIES = [
    # Market overview queries
    "What are the top 5 companies by market capitalization?",
    "Show me all companies in the banking sector",
    "Which stocks have the highest trading volume today?",
    
    # Performance queries
    "Find stocks that increased more than 5% today",
    "Show me companies with PE ratio below 15",
    "What are the best performing stocks this week?",
    
    # Sector-specific queries
    "List all telecommunications companies",
    "Show me manufacturing sector companies",
    "What banking stocks are available?",
    
    # Financial metrics queries
    "Which companies have market cap above 10 billion LKR?",
    "Show me stocks with high dividend yield",
    "Find companies with low debt to equity ratio",
    
    # News and sentiment queries
    "Show me recent news about Dialog Axiata",
    "What companies have positive news sentiment?",
    "Find stocks mentioned in recent financial news",
    
    # Comparative queries
    "Compare John Keells Holdings with Aitken Spence",
    "What is the average PE ratio in the banking sector?",
    "Show me sector-wise market cap distribution",
    
    # Historical queries
    "Show me companies founded after 1990",
    "What were the top gainers last month?",
    "Find stocks with consistent growth over 5 years"
]


class AgentTester:
    """Test runner for Natural Language Agent"""
    
    def __init__(self, base_url: str = "http://localhost:8001"):
        self.base_url = base_url
        self.client = httpx.AsyncClient(timeout=30.0)
        self.results = []
    
    async def test_health(self) -> bool:
        """Test if the service is healthy"""
        try:
            response = await self.client.get(f"{self.base_url}/health")
            if response.status_code == 200:
                health_data = response.json()
                logger.info("Service is healthy")
                logger.info(f"Health status: {json.dumps(health_data, indent=2)}")
                return True
            else:
                logger.error(f"Health check failed: {response.status_code}")
                return False
        except Exception as e:
            logger.error(f"Health check error: {e}")
            return False
    
    async def test_schema(self, agent_type: str = "graphrag"):
        """Test schema endpoint"""
        try:
            response = await self.client.get(f"{self.base_url}/schema/{agent_type}")
            if response.status_code == 200:
                schema_data = response.json()
                logger.info(f"Schema retrieved for {agent_type}")
                logger.info(f"Schema keys: {list(schema_data.keys())}")
            else:
                logger.error(f"Schema retrieval failed: {response.status_code}")
        except Exception as e:
            logger.error(f"Schema test error: {e}")
    
    async def test_single_query(self, query: str, agent_type: str = "graphrag") -> Dict[str, Any]:
        """Test a single query with specified agent"""
        try:
            endpoint = f"{self.base_url}/query/{agent_type}"
            payload = {"query": query, "top_k": 10}
            
            logger.info(f"Testing {agent_type}: {query}")
            
            response = await self.client.post(endpoint, json=payload)
            
            if response.status_code == 200:
                result = response.json()
                logger.info(f"✅ Success - {agent_type}: {result.get('count', 0)} results")
                return {
                    "query": query,
                    "agent_type": agent_type,
                    "success": True,
                    "result": result,
                    "error": None
                }
            else:
                error_msg = f"HTTP {response.status_code}: {response.text}"
                logger.error(f"❌ Failed - {agent_type}: {error_msg}")
                return {
                    "query": query,
                    "agent_type": agent_type,
                    "success": False,
                    "result": None,
                    "error": error_msg
                }
                
        except Exception as e:
            logger.error(f"❌ Error - {agent_type}: {str(e)}")
            return {
                "query": query,
                "agent_type": agent_type,
                "success": False,
                "result": None,
                "error": str(e)
            }
    
    async def test_comparison(self, query: str) -> Dict[str, Any]:
        """Test query comparison between both agents"""
        try:
            response = await self.client.get(
                f"{self.base_url}/compare",
                params={"query": query, "top_k": 10}
            )
            
            if response.status_code == 200:
                result = response.json()
                logger.info(f"🔍 Comparison: {query}")
                logger.info(f"GraphRAG: {result['graphrag_result']['success']} - {result['comparison']['graphrag_count']} results")
                logger.info(f"LangChain: {result['langchain_result']['success']} - {result['comparison']['langchain_count']} results")
                return result
            else:
                logger.error(f"Comparison failed: {response.status_code}")
                return {"error": f"HTTP {response.status_code}"}
                
        except Exception as e:
            logger.error(f"Comparison error: {str(e)}")
            return {"error": str(e)}
    
    async def test_raw_cypher(self, cypher_query: str, agent_type: str = "graphrag"):
        """Test raw Cypher execution"""
        try:
            endpoint = f"{self.base_url}/cypher/{agent_type}"
            payload = {"cypher": cypher_query}
            
            response = await self.client.post(endpoint, json=payload)
            
            if response.status_code == 200:
                result = response.json()
                logger.info(f"🔧 Raw Cypher ({agent_type}): {result.get('count', 0)} results")
                return result
            else:
                logger.error(f"Raw Cypher failed: {response.status_code}")
                return {"error": f"HTTP {response.status_code}"}
                
        except Exception as e:
            logger.error(f"Raw Cypher error: {str(e)}")
            return {"error": str(e)}
    
    async def run_comprehensive_test(self, save_results: bool = True):
        """Run comprehensive test suite"""
        logger.info("🚀 Starting comprehensive test suite...")
        
        # Test health
        logger.info("\n=== HEALTH CHECK ===")
        is_healthy = await self.test_health()
        if not is_healthy:
            logger.error("Service is not healthy. Aborting tests.")
            return
        
        # Test schema
        logger.info("\n=== SCHEMA TEST ===")
        await self.test_schema("graphrag")
        await self.test_schema("langchain")
        
        # Test sample queries with both agents
        logger.info("\n=== NATURAL LANGUAGE QUERIES ===")
        test_queries = CSE_TEST_QUERIES[:10]  # Test first 10 queries
        
        for query in test_queries:
            # Test with GraphRAG
            graphrag_result = await self.test_single_query(query, "graphrag")
            self.results.append(graphrag_result)
            
            # Test with LangChain
            langchain_result = await self.test_single_query(query, "langchain")
            self.results.append(langchain_result)
            
            # Small delay between requests
            await asyncio.sleep(1)
        
        # Test comparison endpoint
        logger.info("\n=== AGENT COMPARISON ===")
        comparison_query = "What are the top 5 companies by market capitalization?"
        comparison_result = await self.test_comparison(comparison_query)
        
        # Test raw Cypher
        logger.info("\n=== RAW CYPHER TEST ===")
        test_cypher = "MATCH (c:Company) RETURN c.name, c.symbol LIMIT 5"
        await self.test_raw_cypher(test_cypher, "graphrag")
        await self.test_raw_cypher(test_cypher, "langchain")
        
        # Generate summary
        self.generate_summary()
        
        # Save results if requested
        if save_results:
            await self.save_results()
    
    def generate_summary(self):
        """Generate test summary"""
        logger.info("\n=== TEST SUMMARY ===")
        
        graphrag_results = [r for r in self.results if r["agent_type"] == "graphrag"]
        langchain_results = [r for r in self.results if r["agent_type"] == "langchain"]
        
        graphrag_success = sum(1 for r in graphrag_results if r["success"])
        langchain_success = sum(1 for r in langchain_results if r["success"])
        
        total_graphrag = len(graphrag_results)
        total_langchain = len(langchain_results)
        
        logger.info(f"GraphRAG: {graphrag_success}/{total_graphrag} successful ({graphrag_success/total_graphrag*100:.1f}%)")
        logger.info(f"LangChain: {langchain_success}/{total_langchain} successful ({langchain_success/total_langchain*100:.1f}%)")
        
        # Show failed queries
        failed_queries = [r for r in self.results if not r["success"]]
        if failed_queries:
            logger.info("\n❌ Failed queries:")
            for fail in failed_queries[:5]:  # Show first 5 failures
                logger.info(f"  - {fail['agent_type']}: {fail['query'][:50]}... - {fail['error']}")
    
    async def save_results(self):
        """Save test results to file"""
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        filename = f"test_results_{timestamp}.json"
        
        try:
            with open(filename, 'w') as f:
                json.dump({
                    "timestamp": timestamp,
                    "total_tests": len(self.results),
                    "results": self.results
                }, f, indent=2, default=str)
            
            logger.info(f"💾 Results saved to {filename}")
        except Exception as e:
            logger.error(f"Failed to save results: {e}")
    
    async def close(self):
        """Close HTTP client"""
        await self.client.aclose()


async def main():
    """Main test function"""
    # Check if OpenAI key is configured
    if not settings.validate_openai_key():
        logger.error("OpenAI API key not configured. Please set OPENAI_API_KEY in .env file")
        return
    
    # Initialize tester
    tester = AgentTester()
    
    try:
        # Run comprehensive tests
        await tester.run_comprehensive_test(save_results=True)
        
        # Interactive testing mode
        print("\n" + "="*50)
        print("Interactive Testing Mode")
        print("Enter natural language queries to test both agents")
        print("Type 'quit' to exit")
        print("="*50)
        
        while True:
            try:
                query = input("\nEnter query: ").strip()
                if query.lower() in ['quit', 'exit', 'q']:
                    break
                
                if query:
                    print("\n--- Testing GraphRAG ---")
                    await tester.test_single_query(query, "graphrag")
                    
                    print("\n--- Testing LangChain ---")
                    await tester.test_single_query(query, "langchain")
                    
            except KeyboardInterrupt:
                break
    
    finally:
        await tester.close()
        logger.info("🏁 Testing completed")


if __name__ == "__main__":
    asyncio.run(main())