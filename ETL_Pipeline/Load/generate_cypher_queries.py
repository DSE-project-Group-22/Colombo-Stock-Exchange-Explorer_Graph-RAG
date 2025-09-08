"""
Load Phase - Cypher Query Generator
=====================================

This script processes normalized JSON files from the Transform phase and generates
Cypher queries for creating a Neo4j knowledge graph. It uses Google's Gemini AI
to analyze the structured data and generate appropriate graph database queries.

The script follows a specific schema for modeling companies, people, metrics,
and business sectors with their relationships.
"""

import os
import json
import logging
import sys
from datetime import datetime
from typing import List, Dict, Optional
from dotenv import load_dotenv
import time

# Load environment variables
load_dotenv()

try:
    import google.generativeai as genai
except ImportError:
    print("Error: google-generativeai is not installed.")
    print("Please run: pip install google-generativeai")
    sys.exit(1)

# Configuration - Base path approach
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
SOURCE_DIR = os.path.join(BASE_DIR, '..', 'Transform', 'cleaned_output')
OUTPUT_DIR = os.path.join(BASE_DIR, 'cypher_queries')
LOG_DIR = os.path.join(BASE_DIR, 'logs')

# Get API key from environment variable
GEMINI_API_KEY = os.getenv('GEMINI_API_KEY')

# Configure logging
os.makedirs(LOG_DIR, exist_ok=True)
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s',
    handlers=[
        logging.FileHandler(os.path.join(LOG_DIR, f'load_process_{datetime.now().strftime("%Y%m%d_%H%M%S")}.log')),
        logging.StreamHandler()
    ]
)

# The specialized prompt for Cypher query generation
BASE_PROMPT = """You are a specialized data engineering assistant, functioning as a high-precision text-to-graph model. You will be given the content of a JSON file that was extracted from a single company's annual report.

Your task is to meticulously analyze the provided JSON content and generate a list of Cypher queries to create and connect nodes in a Neo4j knowledge graph. You must adhere strictly to the graph schema, rules, and output format defined below. Your output must be nothing but the specified JSON object.

1. Graph Schema Definition
You must model the data using only the following node labels, properties, and relationship types.

Node Labels & Properties:
Company:
- id (string, unique): A lowercase, underscore-separated version of the name (e.g., 'dipped_products_plc').
- name (string, unique): The official name of the company (e.g., 'Dipped Products PLC').

Person:
- id (string, unique): A lowercase, underscore-separated version of the name.
- name (string, unique): The full, normalized name of the person.

Metric:
- id (string, unique): A lowercase, underscore-separated version of the name.
- name (string, unique): The name of the financial metric (e.g., 'Revenue', 'Profit After Tax').
- unit (string): The unit of the metric (e.g., 'Rs. million', '%', 'Times').

Sector:
- id (string, unique): A lowercase, underscore-separated version of the name.
- name (string, unique): The name of the business sector (e.g., 'Hand Protection', 'Plantation').

Relationship Types & Properties:
(p:Person)-[:HOLDS_POSITION]->(c:Company):
- title (string): The role or title of the person (e.g., 'Chairman', 'Managing Director').
- as_of (date): The year the information is valid for, in YYYY-MM-DD format. If only a year is known, use YYYY-01-01.

(c:Company)-[:HAS_METRIC]->(m:Metric):
- value (float or integer): The numerical value of the metric.
- year (integer): The financial year the metric applies to (e.g., 2025).

(c:Company)-[:IN_SECTOR]->(s:Sector):
- (No properties)

2. Query Generation Rules
Follow these rules without deviation:

- Identify the Source Company: Your first action is to identify the main company the report is about from the metadata.source_pdf field. Create the Company node for this source company first.

- Use MERGE for Idempotency:
  * To prevent duplicate nodes, always use MERGE on the node label and its unique name property. Use ON CREATE SET to add the id.
  * To prevent duplicate relationships, always MATCH the start and end nodes and then MERGE the relationship between them.

- Extract Directors & Executives: From the directors_and_executives text chunks, identify each person and their title. For each one, generate queries to MERGE the Person node and MERGE the [:HOLDS_POSITION] relationship to the source Company node.

- Extract Financial Metrics: From the financial_performance text chunks, identify each financial metric, its value, and the year. For each one, generate queries to MERGE the Metric node and MERGE the [:HAS_METRIC] relationship from the source Company to the Metric.

- Extract Business Segments: From the business_segments text chunks, identify the sectors the company operates in. For each one, generate queries to MERGE the Sector node and MERGE the [:IN_SECTOR] relationship from the source Company.

- No Inference: Do not invent or guess data. If information for a property is not present in the text, omit the property from the SET clause. If a text chunk is ambiguous, do not generate a query from it.

3. Required Output Format
Your entire response must be a single, raw JSON object. Do not include markdown formatting like ```json, explanations, or any text outside of the JSON structure itself.

The JSON object must have a single key, "cypher_queries", whose value is a list of strings. Each string must be a complete and valid Cypher query.

Example Output Structure:
{
  "cypher_queries": [
    "MERGE (c:Company {name: 'Dipped Products PLC'}) ON CREATE SET c.id = 'dipped_products_plc'",
    "MERGE (p:Person {name: 'Mohan Pandithage'}) ON CREATE SET p.id = 'mohan_pandithage'",
    "MATCH (p:Person {name: 'Mohan Pandithage'}), (c:Company {name: 'Dipped Products PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2025-01-01')",
    "MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs. million'",
    "MATCH (c:Company {name: 'Dipped Products PLC'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 79289, r.year = 2025"
  ]
}

Now, analyze the following JSON data and generate the Cypher queries:
"""


class CypherQueryGenerator:
    """Main class for generating Cypher queries from normalized JSON data."""
    
    def __init__(self):
        """Initialize the generator with Gemini API configuration."""
        self.logger = logging.getLogger(__name__)
        self.total_files_processed = 0
        self.successful_generations = 0
        self.failed_generations = 0
        
        # Configure Gemini API
        if not GEMINI_API_KEY:
            self.logger.error("GEMINI_API_KEY environment variable not set!")
            self.logger.error("Please create a .env file with your Gemini API key:")
            self.logger.error("GEMINI_API_KEY=your_api_key_here")
            sys.exit(1)
        
        try:
            genai.configure(api_key=GEMINI_API_KEY)
            self.model = genai.GenerativeModel('gemini-2.5-flash')
            self.logger.info("Gemini API configured successfully")
        except Exception as e:
            self.logger.error(f"Failed to configure Gemini API: {e}")
            sys.exit(1)

    def extract_company_name_from_filename(self, filename: str) -> str:
        """Extract company name from filename for fallback identification."""
        # Remove the file extension and common suffixes
        base_name = filename.replace('.json', '').replace('_chunks_recursive', '').replace('_Annual_Report', '')
        # Replace underscores with spaces and convert to title case
        return base_name.replace('_', ' ').title()

    def generate_queries_for_file(self, file_path: str) -> Optional[List[str]]:
        """Load a JSON file, call Gemini, and return the Cypher queries."""
        self.logger.info(f"Processing {os.path.basename(file_path)}...")
        
        try:
            # Load the content of the normalized JSON file
            with open(file_path, 'r', encoding='utf-8') as f:
                json_content = f.read()

            # Construct the full prompt
            full_prompt = BASE_PROMPT + json_content
            
            # Call the Gemini API
            response = self.model.generate_content(
                full_prompt,
                generation_config=genai.types.GenerationConfig(
                    response_mime_type="application/json",
                    temperature=0.1,  # Low temperature for consistency
                    top_p=0.8,
                    top_k=40
                )
            )

            
            time.sleep(float('20.0'))

            # Parse the response and return the list of queries
            try:
                response_data = json.loads(response.text)
                queries = response_data.get('cypher_queries', [])
                
                if not queries:
                    self.logger.warning(f"No queries generated for {os.path.basename(file_path)}")
                    return None
                
                self.logger.info(f"Generated {len(queries)} queries for {os.path.basename(file_path)}")
                return queries
                
            except json.JSONDecodeError as e:
                self.logger.error(f"Failed to parse JSON response for {os.path.basename(file_path)}: {e}")
                self.logger.error(f"Raw response: {response.text[:500]}...")
                return None
                
        except Exception as e:
            self.logger.error(f"Error processing {os.path.basename(file_path)}: {e}")
            return None

    def save_queries_to_file(self, queries: List[str], output_path: str) -> bool:
        """Save the generated queries to a .cypher file."""
        try:
            with open(output_path, 'w', encoding='utf-8') as f:
                # Write each query on a separate line with proper formatting
                for i, query in enumerate(queries):
                    f.write(f"// Query {i + 1}\n")
                    f.write(f"{query};\n\n")
                
                # Add a summary comment at the end
                f.write(f"// Total queries: {len(queries)}\n")
                f.write(f"// Generated on: {datetime.now().isoformat()}\n")
            
            return True
        except Exception as e:
            self.logger.error(f"Failed to save queries to {output_path}: {e}")
            return False

    def process_all_files(self) -> Dict[str, int]:
        """Process all JSON files in the source directory."""
        self.logger.info("Starting Cypher query generation process...")
        
        # Ensure output directory exists
        os.makedirs(OUTPUT_DIR, exist_ok=True)
        self.logger.info(f"Output directory: {OUTPUT_DIR}")

        # Get all JSON files from source directory
        if not os.path.exists(SOURCE_DIR):
            self.logger.error(f"Source directory not found: {SOURCE_DIR}")
            return {"processed": 0, "successful": 0, "failed": 0}

        json_files = [f for f in os.listdir(SOURCE_DIR) if f.endswith('.json')]
        
        if not json_files:
            self.logger.warning(f"No JSON files found in {SOURCE_DIR}")
            return {"processed": 0, "successful": 0, "failed": 0}

        self.logger.info(f"Found {len(json_files)} JSON files to process")

        # Process each file
        for filename in json_files:
            source_file_path = os.path.join(SOURCE_DIR, filename)
            self.total_files_processed += 1
            
            # Generate queries
            queries = self.generate_queries_for_file(source_file_path)
            
            if queries:
                # Create corresponding .cypher filename
                cypher_filename = os.path.splitext(filename)[0] + '.cypher'
                output_file_path = os.path.join(OUTPUT_DIR, cypher_filename)
                
                # Save queries to file
                if self.save_queries_to_file(queries, output_file_path):
                    self.successful_generations += 1
                    self.logger.info(f"✅ Successfully generated {output_file_path}")
                else:
                    self.failed_generations += 1
                    self.logger.error(f"❌ Failed to save queries for {filename}")
            else:
                self.failed_generations += 1
                self.logger.error(f"❌ Failed to generate queries for {filename}")

        # Return summary
        return {
            "processed": self.total_files_processed,
            "successful": self.successful_generations,
            "failed": self.failed_generations
        }

    def generate_summary_report(self, results: Dict[str, int]) -> None:
        """Generate a summary report of the processing results."""
        summary_file = os.path.join(OUTPUT_DIR, 'generation_summary.json')
        
        summary_data = {
            "process_date": datetime.now().isoformat(),
            "source_directory": SOURCE_DIR,
            "output_directory": OUTPUT_DIR,
            "results": results,
            "success_rate": (results["successful"] / results["processed"] * 100) if results["processed"] > 0 else 0
        }
        
        try:
            with open(summary_file, 'w', encoding='utf-8') as f:
                json.dump(summary_data, f, indent=2)
            
            self.logger.info(f"Summary report saved to {summary_file}")
        except Exception as e:
            self.logger.error(f"Failed to save summary report: {e}")


def main():
    """Main function to orchestrate the Cypher query generation process."""
    print("=" * 60)
    print("Load Phase - Cypher Query Generator")
    print("=" * 60)
    
    # Initialize the generator
    generator = CypherQueryGenerator()
    
    # Process all files
    results = generator.process_all_files()
    
    # Generate summary report
    generator.generate_summary_report(results)
    
    # Print final summary
    print("\n" + "=" * 60)
    print("PROCESSING SUMMARY")
    print("=" * 60)
    print(f"Total files processed: {results['processed']}")
    print(f"Successful generations: {results['successful']}")
    print(f"Failed generations: {results['failed']}")
    
    if results['processed'] > 0:
        success_rate = results['successful'] / results['processed'] * 100
        print(f"Success rate: {success_rate:.1f}%")
    
    if results['successful'] > 0:
        print(f"\n✅ Cypher files saved to: {OUTPUT_DIR}")
    
    if results['failed'] > 0:
        print(f"\n❌ {results['failed']} files failed to process. Check logs for details.")
    
    print("=" * 60)


if __name__ == "__main__":
    main()
