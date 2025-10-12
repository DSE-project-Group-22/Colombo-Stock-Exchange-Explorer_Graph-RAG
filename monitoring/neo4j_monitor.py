#!/usr/bin/env python3
"""
Neo4j Performance Monitor
Collects custom performance metrics from Neo4j database
"""

import time
import json
import requests
from neo4j import GraphDatabase
from datetime import datetime
import logging
import sys
import os

# Setup logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

class Neo4jMonitor:
    def __init__(self, uri="bolt://localhost:7687", user="neo4j", password="password"):
        try:
            self.driver = GraphDatabase.driver(uri, auth=(user, password))
            self.metrics = []
            logger.info(f"Connected to Neo4j at {uri}")
        except Exception as e:
            logger.error(f"Failed to connect to Neo4j: {e}")
            sys.exit(1)
        
    def collect_metrics(self):
        """Collect custom performance metrics"""
        try:
            with self.driver.session() as session:
                # Basic connection test
                session.run("RETURN 1").consume()
                
                # Try to collect JMX metrics (may not be available in all setups)
                metrics = {
                    'timestamp': datetime.now().isoformat(),
                    'database_stats': {},
                    'performance_stats': {}
                }
                
                try:
                    # Get database stats
                    db_stats = session.run("""
                        CALL dbms.components() YIELD name, versions, edition
                        RETURN name, versions[0] as version, edition
                    """).data()
                    metrics['database_stats']['components'] = db_stats
                except Exception as e:
                    logger.warning(f"Could not collect database stats: {e}")
                
                try:
                    # Get query performance stats
                    query_stats = session.run("""
                        SHOW PROCEDURES YIELD name 
                        WHERE name CONTAINS 'dbms.queryJmx'
                        RETURN count(*) as jmx_available
                    """).single()
                    
                    if query_stats and query_stats['jmx_available'] > 0:
                        # JMX is available, collect detailed metrics
                        transaction_stats = session.run("""
                            CALL dbms.queryJmx('org.neo4j:instance=kernel#0,name=Transactions')
                            YIELD attributes
                            RETURN attributes
                        """).single()
                        
                        if transaction_stats:
                            attrs = transaction_stats['attributes']
                            metrics['performance_stats']['transactions'] = {
                                'open': attrs.get('NumberOfOpenTransactions', 0),
                                'peak': attrs.get('PeakNumberOfConcurrentTransactions', 0)
                            }
                except Exception as e:
                    logger.warning(f"Could not collect JMX metrics: {e}")
                
                # Always collect basic node/relationship counts
                try:
                    basic_stats = session.run("""
                        MATCH (n) 
                        WITH count(n) as nodeCount
                        MATCH ()-[r]->() 
                        WITH nodeCount, count(r) as relCount
                        RETURN nodeCount, relCount
                    """).single()
                    
                    if basic_stats:
                        metrics['database_stats']['nodes'] = basic_stats['nodeCount']
                        metrics['database_stats']['relationships'] = basic_stats['relCount']
                except Exception as e:
                    logger.warning(f"Could not collect basic stats: {e}")
                
                return metrics
                
        except Exception as e:
            logger.error(f"Error collecting metrics: {e}")
            return None
    
    def run_sample_queries(self):
        """Run sample queries to generate load and measure performance"""
        queries = [
            ("Node count", "MATCH (n) RETURN count(n) as count"),
            ("Relationship count", "MATCH ()-[r]->() RETURN count(r) as count"),
            ("Sample nodes", "MATCH (n) RETURN n LIMIT 5"),
        ]
        
        query_results = []
        
        with self.driver.session() as session:
            for query_name, query in queries:
                start_time = time.time()
                try:
                    result = session.run(query)
                    records = list(result)
                    execution_time = time.time() - start_time
                    
                    query_results.append({
                        'name': query_name,
                        'query': query,
                        'execution_time': execution_time,
                        'record_count': len(records),
                        'success': True
                    })
                    
                    logger.info(f"✓ {query_name} - {execution_time:.3f}s ({len(records)} records)")
                    
                except Exception as e:
                    execution_time = time.time() - start_time
                    query_results.append({
                        'name': query_name,
                        'query': query,
                        'execution_time': execution_time,
                        'error': str(e),
                        'success': False
                    })
                    logger.error(f"✗ {query_name} - Error: {e}")
        
        return query_results
    
    def close(self):
        """Close the database connection"""
        if self.driver:
            self.driver.close()

def main():
    """Main monitoring function"""
    monitor = Neo4jMonitor()
    
    try:
        print("=== Neo4j Performance Monitor ===")
        print("Press Ctrl+C to stop monitoring\n")
        
        while True:
            print(f"\n[{datetime.now().strftime('%Y-%m-%d %H:%M:%S')}] Collecting metrics...")
            
            # Collect system metrics
            metrics = monitor.collect_metrics()
            if metrics:
                print(json.dumps(metrics, indent=2))
            
            # Run sample queries
            print("\nRunning sample queries...")
            query_results = monitor.run_sample_queries()
            
            # Print query performance summary
            successful_queries = [q for q in query_results if q['success']]
            if successful_queries:
                avg_time = sum(q['execution_time'] for q in successful_queries) / len(successful_queries)
                print(f"\nQuery Performance Summary:")
                print(f"  Total queries: {len(query_results)}")
                print(f"  Successful: {len(successful_queries)}")
                print(f"  Average execution time: {avg_time:.3f}s")
            
            print("\nWaiting 30 seconds for next collection...")
            time.sleep(30)
            
    except KeyboardInterrupt:
        print("\nMonitoring stopped by user")
    except Exception as e:
        logger.error(f"Monitoring error: {e}")
    finally:
        monitor.close()

if __name__ == "__main__":
    main()
