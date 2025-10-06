#!/usr/bin/env python3
"""
Neo4j Load Tester
Performs load testing on Neo4j database and measures performance
"""

import asyncio
import time
import statistics
from concurrent.futures import ThreadPoolExecutor, as_completed
from neo4j import GraphDatabase
import logging
import json
from datetime import datetime
import sys

# Setup logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

class Neo4jLoadTester:
    def __init__(self, uri="bolt://localhost:7687", user="neo4j", password="password", num_workers=10):
        self.uri = uri
        self.user = user
        self.password = password
        self.num_workers = num_workers
        self.results = []
        
        # Test connection
        try:
            driver = GraphDatabase.driver(uri, auth=(user, password))
            with driver.session() as session:
                session.run("RETURN 1").consume()
            driver.close()
            logger.info(f"Connected to Neo4j at {uri}")
        except Exception as e:
            logger.error(f"Failed to connect to Neo4j: {e}")
            sys.exit(1)
    
    def execute_query(self, query_info):
        """Execute a single query and measure performance"""
        query_name, query, params = query_info
        driver = GraphDatabase.driver(self.uri, auth=(self.user, self.password))
        start_time = time.time()
        
        try:
            with driver.session() as session:
                result = session.run(query, params or {})
                records = list(result)
                execution_time = time.time() - start_time
                
                return {
                    'name': query_name,
                    'query': query[:100] + '...' if len(query) > 100 else query,
                    'execution_time': execution_time,
                    'record_count': len(records),
                    'success': True,
                    'timestamp': datetime.now().isoformat()
                }
        except Exception as e:
            return {
                'name': query_name,
                'query': query[:100] + '...' if len(query) > 100 else query,
                'execution_time': time.time() - start_time,
                'error': str(e),
                'success': False,
                'timestamp': datetime.now().isoformat()
            }
        finally:
            driver.close()
    
    def get_test_queries(self):
        """Get test queries based on available data"""
        driver = GraphDatabase.driver(self.uri, auth=(self.user, self.password))
        
        try:
            with driver.session() as session:
                # Check what labels exist
                labels_result = session.run("CALL db.labels()").data()
                available_labels = [record['label'] for record in labels_result]
                
                # Check what relationship types exist
                rels_result = session.run("CALL db.relationshipTypes()").data()
                available_rels = [record['relationshipType'] for record in rels_result]
                
                logger.info(f"Available labels: {available_labels}")
                logger.info(f"Available relationships: {available_rels}")
                
        except Exception as e:
            logger.warning(f"Could not get schema info: {e}")
            available_labels = []
            available_rels = []
        finally:
            driver.close()
        
        # Base queries that should work on any Neo4j database
        queries = [
            ("Basic node count", "MATCH (n) RETURN count(n) as nodeCount", {}),
            ("Basic relationship count", "MATCH ()-[r]->() RETURN count(r) as relCount", {}),
            ("Sample nodes", "MATCH (n) RETURN n LIMIT 10", {}),
            ("Database info", "CALL dbms.components() YIELD name, versions, edition RETURN name, versions[0] as version, edition", {}),
        ]
        
        # Add label-specific queries if labels are available
        if available_labels:
            for label in available_labels[:3]:  # Test first 3 labels
                queries.extend([
                    (f"Count {label} nodes", f"MATCH (n:{label}) RETURN count(n) as count", {}),
                    (f"Sample {label} nodes", f"MATCH (n:{label}) RETURN n LIMIT 5", {}),
                ])
        
        # Add relationship-specific queries if relationships are available
        if available_rels:
            for rel in available_rels[:3]:  # Test first 3 relationship types
                queries.append((
                    f"Count {rel} relationships", 
                    f"MATCH ()-[r:{rel}]->() RETURN count(r) as count", 
                    {}
                ))
        
        # Add some synthetic load queries
        queries.extend([
            ("Random number generation", "RETURN rand() * 1000 as randomNum", {}),
            ("Date functions", "RETURN date(), datetime(), timestamp() as now", {}),
            ("String operations", "RETURN 'Neo4j Load Test ' + toString(rand()) as testString", {}),
        ])
        
        return queries
    
    def run_load_test(self, duration_seconds=60, queries_per_second=5):
        """Run load test for specified duration"""
        print(f"\n=== Starting Neo4j Load Test ===")
        print(f"Duration: {duration_seconds} seconds")
        print(f"Target rate: {queries_per_second} queries/second")
        print(f"Workers: {self.num_workers}")
        
        test_queries = self.get_test_queries()
        print(f"Test queries: {len(test_queries)}")
        
        end_time = time.time() + duration_seconds
        query_interval = 1.0 / queries_per_second
        
        with ThreadPoolExecutor(max_workers=self.num_workers) as executor:
            futures = []
            query_count = 0
            
            start_test_time = time.time()
            
            while time.time() < end_time:
                # Select a query to run
                query_info = test_queries[query_count % len(test_queries)]
                
                # Submit query for execution
                future = executor.submit(self.execute_query, query_info)
                futures.append(future)
                query_count += 1
                
                # Control the rate
                time.sleep(query_interval)
                
                # Print progress every 10 seconds
                if query_count % (queries_per_second * 10) == 0:
                    elapsed = time.time() - start_test_time
                    print(f"Progress: {elapsed:.1f}s elapsed, {query_count} queries submitted")
            
            print("Waiting for all queries to complete...")
            
            # Collect results
            for future in as_completed(futures):
                try:
                    result = future.result(timeout=30)  # 30-second timeout per query
                    self.results.append(result)
                    
                    if result['success']:
                        print(f"✓ {result['name']} - {result['execution_time']:.3f}s")
                    else:
                        print(f"✗ {result['name']} - Error: {result['error']}")
                        
                except Exception as e:
                    print(f"✗ Query execution failed: {e}")
        
        print(f"\nLoad test completed. Total queries: {len(self.results)}")
    
    def generate_report(self):
        """Generate comprehensive performance report"""
        if not self.results:
            print("No results to report")
            return
        
        successful_queries = [r for r in self.results if r['success']]
        failed_queries = [r for r in self.results if not r['success']]
        
        print(f"\n=== Neo4j Load Test Report ===")
        print(f"Generated at: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
        print(f"Total Queries: {len(self.results)}")
        print(f"Successful: {len(successful_queries)}")
        print(f"Failed: {len(failed_queries)}")
        print(f"Success Rate: {len(successful_queries)/len(self.results)*100:.2f}%")
        
        if successful_queries:
            execution_times = [r['execution_time'] for r in successful_queries]
            
            print(f"\n=== Execution Time Statistics ===")
            print(f"Average: {statistics.mean(execution_times):.3f}s")
            print(f"Median: {statistics.median(execution_times):.3f}s")
            print(f"Min: {min(execution_times):.3f}s")
            print(f"Max: {max(execution_times):.3f}s")
            print(f"95th percentile: {statistics.quantiles(execution_times, n=20)[18]:.3f}s")
            print(f"99th percentile: {statistics.quantiles(execution_times, n=100)[98]:.3f}s")
            
            # Group by query type
            query_performance = {}
            for result in successful_queries:
                query_name = result['name']
                if query_name not in query_performance:
                    query_performance[query_name] = []
                query_performance[query_name].append(result['execution_time'])
            
            print(f"\n=== Performance by Query Type ===")
            for query_name, times in query_performance.items():
                avg_time = statistics.mean(times)
                count = len(times)
                print(f"{query_name}: {avg_time:.3f}s avg ({count} executions)")
        
        if failed_queries:
            print(f"\n=== Failed Queries ===")
            error_summary = {}
            for result in failed_queries:
                error = result.get('error', 'Unknown error')
                if error not in error_summary:
                    error_summary[error] = 0
                error_summary[error] += 1
            
            for error, count in error_summary.items():
                print(f"{error}: {count} occurrences")
        
        # Save detailed results to file
        report_file = f"neo4j_load_test_report_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
        try:
            with open(report_file, 'w') as f:
                json.dump({
                    'summary': {
                        'total_queries': len(self.results),
                        'successful': len(successful_queries),
                        'failed': len(failed_queries),
                        'success_rate': len(successful_queries)/len(self.results)*100,
                        'execution_time_stats': {
                            'mean': statistics.mean(execution_times) if execution_times else 0,
                            'median': statistics.median(execution_times) if execution_times else 0,
                            'min': min(execution_times) if execution_times else 0,
                            'max': max(execution_times) if execution_times else 0,
                        } if execution_times else {}
                    },
                    'detailed_results': self.results
                }, f, indent=2)
            print(f"\nDetailed report saved to: {report_file}")
        except Exception as e:
            print(f"Could not save detailed report: {e}")

def main():
    """Main load testing function"""
    import argparse
    
    parser = argparse.ArgumentParser(description='Neo4j Load Tester')
    parser.add_argument('--duration', type=int, default=60, help='Test duration in seconds (default: 60)')
    parser.add_argument('--rate', type=int, default=5, help='Queries per second (default: 5)')
    parser.add_argument('--workers', type=int, default=10, help='Number of worker threads (default: 10)')
    parser.add_argument('--uri', default='bolt://localhost:7687', help='Neo4j URI (default: bolt://localhost:7687)')
    parser.add_argument('--user', default='neo4j', help='Neo4j username (default: neo4j)')
    parser.add_argument('--password', default='password', help='Neo4j password (default: password)')
    
    args = parser.parse_args()
    
    tester = Neo4jLoadTester(
        uri=args.uri,
        user=args.user,
        password=args.password,
        num_workers=args.workers
    )
    
    try:
        tester.run_load_test(
            duration_seconds=args.duration,
            queries_per_second=args.rate
        )
        tester.generate_report()
    except KeyboardInterrupt:
        print("\nLoad test interrupted by user")
        if tester.results:
            tester.generate_report()
    except Exception as e:
        logger.error(f"Load test failed: {e}")

if __name__ == "__main__":
    main()
