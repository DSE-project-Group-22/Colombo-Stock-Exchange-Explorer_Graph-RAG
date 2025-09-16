#!/usr/bin/env python3
"""
Simple Neo4j connection test to verify the database is working
"""
import sys
import os
import logging
sys.path.append(os.path.dirname(os.path.abspath(__file__)))

# Configure logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)

try:
    from langchain_neo4j import Neo4jGraph
    
    logger.info("Testing Neo4j Connection...")
    print("🔍 Testing Neo4j Connection...")
    
    # Connect to Neo4j with enhanced_schema disabled to avoid APOC
    graph = Neo4jGraph(
        url="bolt://localhost:7687",
        username="neo4j",
        password="password",
        database="neo4j",
        enhanced_schema=False
    )
    
    logger.info("Connected to Neo4j successfully!")
    print("✅ Connected to Neo4j successfully!")
    
    # Test basic query
    result = graph.query("MATCH (n) RETURN count(n) as total_nodes")
    logger.info(f"Total nodes in database: {result[0]['total_nodes']}")
    print(f"📊 Total nodes in database: {result[0]['total_nodes']}")
    
    # Check what types of nodes we have
    node_types = graph.query("MATCH (n) RETURN DISTINCT labels(n) as node_types LIMIT 10")
    logger.info("Node types in database:")
    print("📋 Node types in database:")
    for record in node_types:
        logger.debug(f"   - {record['node_types']}")
        print(f"   - {record['node_types']}")
    
    # Get a sample of companies
    companies = graph.query("MATCH (c:Company) RETURN c.name as name LIMIT 5")
    if companies:
        logger.info("Sample companies found")
        print("🏢 Sample companies:")
        for company in companies:
            logger.debug(f"   - {company['name']}")
            print(f"   - {company['name']}")
    
    # Show graph schema
    logger.info("Graph Schema retrieved")
    print("\n📐 Graph Schema:")
    graph.refresh_schema()
    logger.debug(f"Schema: {graph.schema[:200]}..." if len(graph.schema) > 200 else graph.schema)
    print(graph.schema[:500] + "..." if len(graph.schema) > 500 else graph.schema)
    
    logger.info("Database test completed successfully!")
    print("\n✅ Database test completed successfully!")
    print("💡 The database is ready for LangChain GraphCypherQA testing")
    
except Exception as e:
    logger.error(f"Error connecting to Neo4j: {e}")
    print(f"❌ Error connecting to Neo4j: {e}")
    print("💡 Make sure:")
    print("   1. Neo4j container is running: docker ps")
    print("   2. Neo4j is accessible on localhost:7687")
    print("   3. Credentials are neo4j/password")
