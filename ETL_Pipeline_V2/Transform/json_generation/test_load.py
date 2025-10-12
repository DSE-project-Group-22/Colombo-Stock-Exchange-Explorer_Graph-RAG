#!/usr/bin/env python3
"""
Test script for the Load phase Cypher query generator.
This script validates the functionality without requiring API calls.
"""

import os
import json
import tempfile
import shutil
from unittest.mock import Mock, patch
import sys

# Add the current directory to Python path
sys.path.append(os.path.dirname(os.path.abspath(__file__)))

def create_test_json():
    """Create a sample JSON file for testing."""
    test_data = {
        "metadata": {
            "source_pdf": "annual reports/TEST_COMPANY_Annual_Report.pdf",
            "processing_date": "2025-08-29 19:20:09",
            "chunking_method": "recursive",
            "total_questions": 15,
            "embedding_model": "models/text-embedding-004",
            "top_k_chunks": 5,
            "total_chunks_retrieved": 75,
            "collection_name": "pdf_semantic_chunks",
            "name_normalization_applied": True,
            "name_normalization_date": "2025-08-29",
            "names_standardized": True
        },
        "retrieved_chunks": {
            "directors_and_executives": [
                "DIRECTORS\\nMr. John Doe - Chairman\\nMs. Jane Smith - Managing Director\\nMr. Bob Wilson - Deputy Chairman"
            ],
            "financial_performance": [
                "Performance Highlights\\nRevenue Rs. million 50,000 45,000 11\\nProfit After Tax Rs. million 5,000 4,500 11\\nReturn on Equity % 15 14 1"
            ],
            "business_segments": [
                "The Group operates in two main sectors: Technology Solutions and Consulting Services"
            ],
            "risk_factors": [
                "Key risks include market volatility and regulatory changes"
            ],
            "future_outlook": [
                "Company expects growth in the technology sector"
            ],
            "governance_structure": [
                "Board oversight and audit committee governance"
            ]
        }
    }
    return json.dumps(test_data, indent=2)

def mock_gemini_response():
    """Create a mock response from Gemini API."""
    mock_response = {
        "cypher_queries": [
            "MERGE (c:Company {name: 'Test Company'}) ON CREATE SET c.id = 'test_company'",
            "MERGE (p:Person {name: 'John Doe'}) ON CREATE SET p.id = 'john_doe'",
            "MATCH (p:Person {name: 'John Doe'}), (c:Company {name: 'Test Company'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-01-01')",
            "MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. million'",
            "MATCH (c:Company {name: 'Test Company'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 50000, r.year = 2025"
        ]
    }
    return json.dumps(mock_response)

def test_cypher_query_generator():
    """Test the CypherQueryGenerator class with mock data."""
    print("Testing Load Phase - Cypher Query Generator")
    print("=" * 50)
    
    # Create temporary directories
    with tempfile.TemporaryDirectory() as temp_dir:
        # Setup test directories
        test_source_dir = os.path.join(temp_dir, "source")
        test_output_dir = os.path.join(temp_dir, "output")
        test_log_dir = os.path.join(temp_dir, "logs")
        
        os.makedirs(test_source_dir)
        os.makedirs(test_output_dir)
        os.makedirs(test_log_dir)
        
        # Create test JSON file
        test_file = os.path.join(test_source_dir, "TEST_COMPANY_Annual_Report.json")
        with open(test_file, 'w') as f:
            f.write(create_test_json())
        
        print(f"✓ Created test file: {test_file}")
        
        # Mock the CypherQueryGenerator
        with patch.dict(os.environ, {'GEMINI_API_KEY': 'test_key'}):
            with patch('google.generativeai.configure'):
                with patch('google.generativeai.GenerativeModel') as mock_model:
                    # Setup mock response
                    mock_response = Mock()
                    mock_response.text = mock_gemini_response()
                    mock_model.return_value.generate_content.return_value = mock_response
                    
                    # Import and test the generator
                    try:
                        from generate_cypher_queries import CypherQueryGenerator
                        
                        # Patch the directory paths
                        with patch('generate_cypher_queries.SOURCE_DIR', test_source_dir):
                            with patch('generate_cypher_queries.OUTPUT_DIR', test_output_dir):
                                with patch('generate_cypher_queries.LOG_DIR', test_log_dir):
                                    
                                    # Create and test generator
                                    generator = CypherQueryGenerator()
                                    print("✓ Generator initialized successfully")
                                    
                                    # Test single file processing
                                    queries = generator.generate_queries_for_file(test_file)
                                    if queries:
                                        print(f"✓ Generated {len(queries)} queries")
                                        print("Sample queries:")
                                        for i, query in enumerate(queries[:3]):
                                            print(f"  {i+1}. {query}")
                                        if len(queries) > 3:
                                            print(f"  ... and {len(queries) - 3} more")
                                    else:
                                        print("✗ Failed to generate queries")
                                        return False
                                    
                                    # Test file saving
                                    output_file = os.path.join(test_output_dir, "test_output.cypher")
                                    success = generator.save_queries_to_file(queries, output_file)
                                    if success and os.path.exists(output_file):
                                        print("✓ Successfully saved queries to file")
                                        
                                        # Check file content
                                        with open(output_file, 'r') as f:
                                            content = f.read()
                                            if content.strip():
                                                print("✓ File contains valid content")
                                            else:
                                                print("✗ File is empty")
                                                return False
                                    else:
                                        print("✗ Failed to save queries to file")
                                        return False
                                    
                                    # Test batch processing
                                    results = generator.process_all_files()
                                    print(f"✓ Batch processing completed:")
                                    print(f"  - Processed: {results['processed']}")
                                    print(f"  - Successful: {results['successful']}")
                                    print(f"  - Failed: {results['failed']}")
                                    
                                    if results['successful'] > 0:
                                        print("✓ All tests passed successfully!")
                                        return True
                                    else:
                                        print("✗ Batch processing failed")
                                        return False
                    
                    except ImportError as e:
                        print(f"✗ Import error: {e}")
                        print("Make sure all dependencies are installed")
                        return False
                    except Exception as e:
                        print(f"✗ Test failed with error: {e}")
                        return False

def test_file_structure():
    """Test that all required files exist."""
    print("\nTesting file structure...")
    print("-" * 30)
    
    required_files = [
        'generate_cypher_queries.py',
        'requirements.txt',
        'setup.sh',
        'README.md',
        '.env.example'
    ]
    
    all_exist = True
    for file in required_files:
        if os.path.exists(file):
            print(f"✓ {file}")
        else:
            print(f"✗ {file} (missing)")
            all_exist = False
    
    return all_exist

def main():
    """Run all tests."""
    print("Load Phase - Test Suite")
    print("=" * 50)
    
    # Test file structure
    structure_ok = test_file_structure()
    
    if not structure_ok:
        print("\n✗ File structure test failed")
        print("Please ensure all required files exist")
        return False
    
    # Test functionality
    functionality_ok = test_cypher_query_generator()
    
    if structure_ok and functionality_ok:
        print("\n" + "=" * 50)
        print("🎉 ALL TESTS PASSED!")
        print("The Load phase is ready for use.")
        print("=" * 50)
        return True
    else:
        print("\n" + "=" * 50)
        print("❌ SOME TESTS FAILED")
        print("Please check the error messages above.")
        print("=" * 50)
        return False

if __name__ == "__main__":
    success = main()
    sys.exit(0 if success else 1)
