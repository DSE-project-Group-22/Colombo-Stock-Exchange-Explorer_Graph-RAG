#!/usr/bin/env python3
"""
Simple Neo4j connection test to verify the database is working
"""
import sys
import os
sys.path.append(os.path.dirname(os.path.abspath(__file__)))

try:
    from langchain_neo4j import Neo4jGraph
    
    print("🔍 Testing Neo4j Connection...")
    
    # Connect to Neo4j with enhanced_schema disabled to avoid APOC
    graph = Neo4jGraph(
        url="bolt://localhost:7687",
        username="neo4j",
        password="password",
        database="neo4j",
        enhanced_schema=False
    )
    
    print("✅ Connected to Neo4j successfully!")
    
    # Test basic query
    result = graph.query("MATCH (n) RETURN count(n) as total_nodes")
    print(f"📊 Total nodes in database: {result[0]['total_nodes']}")
    
    # Check what types of nodes we have
    node_types = graph.query("MATCH (n) RETURN DISTINCT labels(n) as node_types LIMIT 10")
    print("📋 Node types in database:")
    for record in node_types:
        print(f"   - {record['node_types']}")
    
    # Get a sample of companies
    companies = graph.query("MATCH (c:Company) RETURN c.name as name LIMIT 5")
    if companies:
        print("🏢 Sample companies:")
        for company in companies:
            print(f"   - {company['name']}")
    
    # Show graph schema
    print("\n📐 Graph Schema:")
    graph.refresh_schema()
    print(graph.schema[:500] + "..." if len(graph.schema) > 500 else graph.schema)
    
    print("\n✅ Database test completed successfully!")
    print("💡 The database is ready for LangChain GraphCypherQA testing")
    
except Exception as e:
    print(f"❌ Error connecting to Neo4j: {e}")
    print("💡 Make sure:")
    print("   1. Neo4j container is running: docker ps")
    print("   2. Neo4j is accessible on localhost:7687")
    print("   3. Credentials are neo4j/password")
