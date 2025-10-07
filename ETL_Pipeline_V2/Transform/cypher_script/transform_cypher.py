#!/usr/bin/env python3
"""
Script to transform cypher_scripts.txt to a .cypher file
"""

import os
import sys
from pathlib import Path

def transform_to_cypher():
    """Transform the cypher_scripts.txt file to a .cypher file"""
    
    # Define paths
    script_dir = Path(__file__).parent
    input_file = script_dir.parent / "query_generation" / "cypher_scripts.txt"
    output_file = script_dir / "graph_data.cypher"
    
    # Check if input file exists
    if not input_file.exists():
        print(f"Error: Input file not found at {input_file}")
        return False
    
    try:
        # Read the content from the text file
        with open(input_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Write the content to a .cypher file
        with open(output_file, 'w', encoding='utf-8') as f:
            f.write(content)
        
        print(f"Successfully transformed {input_file.name} to {output_file.name}")
        print(f"Output file created at: {output_file}")
        
        # Print some statistics
        lines = content.count('\n') + 1
        queries = content.count('MERGE') + content.count('MATCH')
        
        print(f"\nStatistics:")
        print(f"- Total lines: {lines}")
        print(f"- Total Cypher queries: {queries}")
        
        return True
        
    except Exception as e:
        print(f"Error during transformation: {e}")
        return False

if __name__ == "__main__":
    transform_to_cypher()
