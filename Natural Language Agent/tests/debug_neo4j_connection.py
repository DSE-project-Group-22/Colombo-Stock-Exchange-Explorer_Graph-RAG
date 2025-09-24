#!/usr/bin/env python3
"""
Debug script to test Neo4j connection and identify hanging issues.
"""
import os
import sys
import time
import logging

# Add parent directory to path
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Setup detailed logging
logging.basicConfig(
    level=logging.DEBUG,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    datefmt='%H:%M:%S'
)

# Test 1: Direct Neo4j connection
def test_direct_connection():
    """Test direct Neo4j connection without any schema loading."""
    print("\n" + "="*70)
    print("TEST 1: Direct Neo4j Connection")
    print("="*70)
    
    try:
        from neo4j import GraphDatabase
        
        uri = os.getenv('NEO4J_URI', 'bolt://localhost:7687')
        user = os.getenv('NEO4J_USER', 'neo4j')
        password = os.getenv('NEO4J_PASSWORD', 'password')
        
        print(f"Connecting to: {uri}")
        print(f"User: {user}")
        
        driver = GraphDatabase.driver(uri, auth=(user, password))
        
        with driver.session() as session:
            result = session.run("MATCH (n) RETURN count(n) as count LIMIT 1")
            count = result.single()["count"]
            print(f"✅ Connection successful! Node count: {count}")
        
        driver.close()
        return True
        
    except Exception as e:
        print(f"❌ Connection failed: {e}")
        return False


# Test 2: LangChain Neo4jGraph without enhanced schema
def test_langchain_basic():
    """Test LangChain Neo4jGraph with basic schema."""
    print("\n" + "="*70)
    print("TEST 2: LangChain Neo4jGraph (basic schema)")
    print("="*70)
    
    try:
        from langchain_neo4j import Neo4jGraph
        from config import settings
        
        print(f"URI: {settings.effective_neo4j_uri}")
        print("Creating Neo4jGraph with enhanced_schema=False...")
        
        start = time.time()
        graph = Neo4jGraph(
            url=settings.effective_neo4j_uri,
            username=settings.neo4j_user,
            password=settings.neo4j_password,
            database=settings.neo4j_database,
            enhanced_schema=False  # BASIC SCHEMA
        )
        elapsed = time.time() - start
        
        print(f"✅ Graph created in {elapsed:.2f} seconds")
        
        if graph.schema:
            print(f"Schema size: {len(graph.schema)} characters")
            print(f"Schema preview: {graph.schema[:200]}...")
        else:
            print("⚠️  No schema loaded")
        
        return True
        
    except Exception as e:
        print(f"❌ Failed: {e}")
        import traceback
        traceback.print_exc()
        return False


# Test 3: LangChain Neo4jGraph WITH enhanced schema (the problematic one)
def test_langchain_enhanced():
    """Test LangChain Neo4jGraph with enhanced schema."""
    print("\n" + "="*70)
    print("TEST 3: LangChain Neo4jGraph (enhanced schema)")
    print("⚠️  This is where it might hang...")
    print("="*70)
    
    try:
        from langchain_neo4j import Neo4jGraph
        from config import settings
        
        print(f"URI: {settings.effective_neo4j_uri}")
        print("Creating Neo4jGraph with enhanced_schema=True...")
        print("(Will timeout after 10 seconds if it hangs)")
        
        import signal
        
        def timeout_handler(signum, frame):
            raise TimeoutError("Operation timed out after 10 seconds")
        
        # Set a timeout
        signal.signal(signal.SIGALRM, timeout_handler)
        signal.alarm(10)  # 10 second timeout
        
        try:
            start = time.time()
            graph = Neo4jGraph(
                url=settings.effective_neo4j_uri,
                username=settings.neo4j_user,
                password=settings.neo4j_password,
                database=settings.neo4j_database,
                enhanced_schema=True  # ENHANCED SCHEMA - MIGHT HANG HERE
            )
            elapsed = time.time() - start
            signal.alarm(0)  # Cancel the alarm
            
            print(f"✅ Graph created in {elapsed:.2f} seconds")
            
            if graph.schema:
                print(f"Schema size: {len(graph.schema)} characters")
            else:
                print("⚠️  No schema loaded")
                
        except TimeoutError:
            signal.alarm(0)  # Cancel the alarm
            print("❌ TIMEOUT: Enhanced schema loading took too long!")
            print("This is likely the cause of the hanging issue.")
            return False
        
        return True
        
    except Exception as e:
        print(f"❌ Failed: {e}")
        import traceback
        traceback.print_exc()
        return False


# Test 4: Test APOC availability
def test_apoc_availability():
    """Check if APOC procedures are available."""
    print("\n" + "="*70)
    print("TEST 4: APOC Procedures Availability")
    print("="*70)
    
    try:
        from neo4j import GraphDatabase
        
        uri = os.getenv('NEO4J_URI', 'bolt://localhost:7687')
        user = os.getenv('NEO4J_USER', 'neo4j')
        password = os.getenv('NEO4J_PASSWORD', 'password')
        
        driver = GraphDatabase.driver(uri, auth=(user, password))
        
        with driver.session() as session:
            # Try to list APOC procedures
            result = session.run("SHOW PROCEDURES YIELD name WHERE name STARTS WITH 'apoc' RETURN count(*) as count")
            count = result.single()["count"]
            
            if count > 0:
                print(f"✅ APOC is available ({count} procedures)")
            else:
                print("⚠️  APOC not found - this might cause enhanced_schema to fail")
        
        driver.close()
        return True
        
    except Exception as e:
        print(f"⚠️  Could not check APOC: {e}")
        return False


# Test 5: Test the actual helper function
def test_helper_function():
    """Test the actual helper function that's hanging."""
    print("\n" + "="*70)
    print("TEST 5: Testing helpers/neo4j_helper.py")
    print("="*70)
    
    try:
        print("Importing helper...")
        from helpers.neo4j_helper import get_graph, get_qa_chain
        
        print("Testing get_graph()...")
        start = time.time()
        
        # This might hang
        graph = get_graph()
        
        elapsed = time.time() - start
        print(f"✅ get_graph() completed in {elapsed:.2f} seconds")
        
        print("\nTesting get_qa_chain()...")
        start = time.time()
        
        # This might also hang
        chain = get_qa_chain()
        
        elapsed = time.time() - start
        print(f"✅ get_qa_chain() completed in {elapsed:.2f} seconds")
        
        return True
        
    except Exception as e:
        print(f"❌ Helper function failed: {e}")
        import traceback
        traceback.print_exc()
        return False


def main():
    """Run all tests to identify the issue."""
    print("\n" + "="*70)
    print("NEO4J CONNECTION DEBUGGER")
    print("="*70)
    print("This will help identify why the code hangs at GraphCypherQAChain creation\n")
    
    # Check environment
    print("Environment Variables:")
    print(f"NEO4J_URI: {os.getenv('NEO4J_URI', 'Not set (will use bolt://localhost:7687)')}")
    print(f"NEO4J_USER: {os.getenv('NEO4J_USER', 'Not set (will use neo4j)')}")
    print(f"NEO4J_PASSWORD: {'***' if os.getenv('NEO4J_PASSWORD') else 'Not set (will use password)')}")
    print(f"OPENAI_API_KEY: {'***' if os.getenv('OPENAI_API_KEY') else 'Not set'}")
    
    # Run tests
    tests = [
        ("Direct Connection", test_direct_connection),
        ("LangChain Basic", test_langchain_basic),
        ("LangChain Enhanced", test_langchain_enhanced),
        ("APOC Check", test_apoc_availability),
        ("Helper Function", test_helper_function),
    ]
    
    results = []
    for name, test_func in tests:
        try:
            success = test_func()
            results.append((name, success))
        except KeyboardInterrupt:
            print("\n⚠️  Test interrupted by user")
            results.append((name, False))
            break
        except Exception as e:
            print(f"❌ Test failed with unexpected error: {e}")
            results.append((name, False))
    
    # Summary
    print("\n" + "="*70)
    print("SUMMARY")
    print("="*70)
    for name, success in results:
        status = "✅" if success else "❌"
        print(f"{status} {name}")
    
    print("\n" + "="*70)
    print("DIAGNOSIS")
    print("="*70)
    
    if len(results) >= 3:
        if results[0][1] and results[1][1] and not results[2][1]:
            print("🔍 The issue is with enhanced_schema=True")
            print("\nSOLUTION: Change line 39 in helpers/neo4j_helper.py:")
            print("  FROM: enhanced_schema=True")
            print("  TO:   enhanced_schema=False")
            print("\nThis will fix the hanging issue.")
    
    print("\n✅ Debug complete!")


if __name__ == "__main__":
    main()