#!/usr/bin/env python3
"""
Test LLM Processing with Enriched Files

This script demonstrates how the enriched text files can be used
for stateless LLM processing to generate complex corporate network
Cypher queries following the exact schema specification.
"""

import os
import json
import logging
from pathlib import Path

def load_enriched_file(file_path: str) -> str:
    """Load an enriched text file for LLM processing."""
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            return f.read()
    except Exception as e:
        logging.error(f"Error loading enriched file {file_path}: {e}")
        return ""

def extract_company_info(enriched_content: str) -> dict:
    """Extract company information from enriched content."""
    lines = enriched_content.split('\n')
    company_info = {}
    
    for line in lines:
        if line.startswith('- Target Company:'):
            company_info['target_company'] = line.split(':', 1)[1].strip()
        elif line.startswith('- Company ID:'):
            company_info['company_id'] = line.split(':', 1)[1].strip()
        elif line.startswith('- Canonical Name:'):
            company_info['canonical_name'] = line.split(':', 1)[1].strip()
    
    return company_info

def count_entities_in_mappings(enriched_content: str) -> dict:
    """Count entities available in the mappings."""
    lines = enriched_content.split('\n')
    
    entity_counts = {
        'companies': 0,
        'persons': 0
    }
    
    in_companies_section = False
    in_persons_section = False
    
    for line in lines:
        if 'EXISTING COMPANIES:' in line:
            in_companies_section = True
            in_persons_section = False
            continue
        elif 'EXISTING PERSONS:' in line:
            in_companies_section = False
            in_persons_section = True
            continue
        elif '===== CYPHER GENERATION INSTRUCTIONS =====' in line:
            break
        
        if in_companies_section and line.strip().startswith('- ') and ' -> ID: ' in line:
            entity_counts['companies'] += 1
        elif in_persons_section and line.strip().startswith('- ') and ' -> ID: ' in line:
            entity_counts['persons'] += 1
    
    return entity_counts

def validate_schema_completeness(enriched_content: str) -> dict:
    """Validate that the enriched content contains all required schema elements."""
    required_elements = {
        'node_labels': ['Company', 'Person', 'Sector', 'Product', 'Metric'],
        'relationship_types': [
            'OWNS', 'OWNS_SHARES', 'DIRECTOR_OF', 'HOLDS_POSITION',
            'IN_SECTOR', 'OFFERS', 'HAS_METRIC', 'AUDITED_BY', 'MANAGES'
        ]
    }
    
    found_elements = {
        'node_labels': [],
        'relationship_types': []
    }
    
    for label in required_elements['node_labels']:
        if f"Label Key Properties\n{label}" in enriched_content or f"{label} \n•" in enriched_content:
            found_elements['node_labels'].append(label)
    
    for rel_type in required_elements['relationship_types']:
        if f"[:{rel_type}]" in enriched_content:
            found_elements['relationship_types'].append(rel_type)
    
    return {
        'required': required_elements,
        'found': found_elements,
        'node_labels_complete': len(found_elements['node_labels']) == len(required_elements['node_labels']),
        'relationship_types_complete': len(found_elements['relationship_types']) == len(required_elements['relationship_types'])
    }

def test_enriched_files():
    """Test all enriched files for completeness and readiness."""
    preprocessed_dir = Path("./preprocessed_texts")
    
    if not preprocessed_dir.exists():
        print("❌ Preprocessed texts directory not found!")
        return False
    
    enriched_files = list(preprocessed_dir.glob("*_enriched.txt"))
    
    if not enriched_files:
        print("❌ No enriched files found!")
        return False
    
    print(f"🔍 Testing {len(enriched_files)} enriched files...")
    print("=" * 60)
    
    all_passed = True
    summary_stats = {
        'total_files': len(enriched_files),
        'valid_files': 0,
        'total_companies': 0,
        'total_persons': 0,
        'schema_complete_files': 0
    }
    
    for file_path in enriched_files:
        print(f"\n📄 Testing: {file_path.name}")
        print("-" * 40)
        
        # Load enriched content
        content = load_enriched_file(str(file_path))
        if not content:
            print("❌ Failed to load file")
            all_passed = False
            continue
        
        # Extract company info
        company_info = extract_company_info(content)
        if company_info:
            print(f"✅ Target Company: {company_info.get('target_company', 'Unknown')}")
            print(f"✅ Company ID: {company_info.get('company_id', 'Unknown')}")
            summary_stats['valid_files'] += 1
        else:
            print("❌ Failed to extract company info")
            all_passed = False
            continue
        
        # Count entities
        entity_counts = count_entities_in_mappings(content)
        print(f"✅ Entity Mappings: {entity_counts['companies']} companies, {entity_counts['persons']} persons")
        summary_stats['total_companies'] = max(summary_stats['total_companies'], entity_counts['companies'])
        summary_stats['total_persons'] = max(summary_stats['total_persons'], entity_counts['persons'])
        
        # Validate schema completeness
        schema_validation = validate_schema_completeness(content)
        if schema_validation['node_labels_complete'] and schema_validation['relationship_types_complete']:
            print("✅ Schema: Complete (all node labels and relationship types found)")
            summary_stats['schema_complete_files'] += 1
        else:
            print(f"⚠️  Schema: Incomplete")
            print(f"   Node labels: {len(schema_validation['found']['node_labels'])}/{len(schema_validation['required']['node_labels'])}")
            print(f"   Relationship types: {len(schema_validation['found']['relationship_types'])}/{len(schema_validation['required']['relationship_types'])}")
        
        # Check file size (should be substantial with all the context)
        file_size = file_path.stat().st_size
        if file_size > 10000:  # At least 10KB
            print(f"✅ File size: {file_size:,} bytes (substantial content)")
        else:
            print(f"⚠️  File size: {file_size:,} bytes (may be too small)")
    
    # Print summary
    print("\n" + "=" * 60)
    print("📊 SUMMARY RESULTS")
    print("=" * 60)
    print(f"📁 Total files processed: {summary_stats['total_files']}")
    print(f"✅ Valid files: {summary_stats['valid_files']}")
    print(f"🏢 Companies in mappings: {summary_stats['total_companies']}")
    print(f"👤 Persons in mappings: {summary_stats['total_persons']}")
    print(f"📋 Schema complete files: {summary_stats['schema_complete_files']}")
    
    success_rate = (summary_stats['valid_files'] / summary_stats['total_files']) * 100
    schema_rate = (summary_stats['schema_complete_files'] / summary_stats['total_files']) * 100
    
    print(f"📈 Success rate: {success_rate:.1f}%")
    print(f"📋 Schema completeness rate: {schema_rate:.1f}%")
    
    if all_passed and success_rate == 100 and schema_rate == 100:
        print("\n🎉 ALL TESTS PASSED!")
        print("🚀 Files are ready for stateless LLM processing")
        print("💡 Each file contains complete context for Cypher generation")
        return True
    else:
        print("\n⚠️  Some tests failed or incomplete")
        return False

def demonstrate_llm_usage():
    """Demonstrate how to use enriched files with an LLM."""
    print("\n" + "=" * 60)
    print("💡 LLM USAGE DEMONSTRATION")
    print("=" * 60)
    
    # Find a sample enriched file
    preprocessed_dir = Path("./preprocessed_texts")
    enriched_files = list(preprocessed_dir.glob("*_enriched.txt"))
    
    if not enriched_files:
        print("❌ No enriched files found for demonstration")
        return
    
    sample_file = enriched_files[0]
    print(f"📄 Using sample file: {sample_file.name}")
    
    # Load content (first 2000 characters for demonstration)
    content = load_enriched_file(str(sample_file))
    if content:
        preview = content[:2000] + "..." if len(content) > 2000 else content
        
        print("\n📋 SAMPLE ENRICHED CONTENT (preview):")
        print("-" * 40)
        print(preview)
        
        print("\n🔧 HOW TO USE WITH LLM:")
        print("-" * 40)
        print("1. Send the ENTIRE enriched file content to your LLM")
        print("2. Request: 'Generate comprehensive Cypher queries based on this enriched data'")
        print("3. The LLM will have all necessary context:")
        print("   ✅ Exact schema specification (9.1 Database Schema)")
        print("   ✅ Pre-mapped entity IDs (companies and persons)")
        print("   ✅ Detailed instructions for all 9 relationship types")
        print("   ✅ Original annual report text for extraction")
        print("   ✅ Cypher generation examples and patterns")
        print("\n4. Expected output: Complete Cypher queries with:")
        print("   🔸 Node creation for new entities (Sector, Product, Metric)")
        print("   🔸 Comprehensive relationships using exact IDs")
        print("   🔸 All 9 relationship types where applicable")
        print("   🔸 Proper property names and data types")
        
        print(f"\n📊 File statistics:")
        print(f"   📁 File size: {len(content):,} characters")
        company_info = extract_company_info(content)
        if company_info:
            print(f"   🏢 Target company: {company_info.get('target_company', 'Unknown')}")
        
        entity_counts = count_entities_in_mappings(content)
        print(f"   🔗 Available entities: {entity_counts['companies']} companies, {entity_counts['persons']} persons")

if __name__ == "__main__":
    print("🧪 ENRICHED FILES TESTING & VALIDATION")
    print("=" * 60)
    print("Testing preprocessed files for LLM readiness...")
    
    # Test all enriched files
    success = test_enriched_files()
    
    # Demonstrate usage
    demonstrate_llm_usage()
    
    if success:
        print("\n✅ PREPROCESSING VALIDATION COMPLETE")
        print("🚀 Ready for LLM-based complex corporate network generation!")
    else:
        print("\n❌ VALIDATION FAILED")
        print("🔧 Please check the preprocessing output")
