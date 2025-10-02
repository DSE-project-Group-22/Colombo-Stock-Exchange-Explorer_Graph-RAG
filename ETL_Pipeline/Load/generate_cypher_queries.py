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

PRIORITY: Focus on extracting structured data (companies, people, metrics, sectors, relationships). Chunk storage is secondary and should not interfere with primary extraction.

1. Graph Schema Definition
You must model the data using only the following node labels, properties, and relationship types.

Node Labels & Properties:

Company:
- id (string, unique): A lowercase, underscore-separated version of the name (e.g., 'dipped_products_plc').
- name (string, unique): The official name of the company (e.g., 'Dipped Products PLC').
- founded_on (date, optional): Foundation date in YYYY-MM-DD format.
- listed_on (string, optional): Stock exchange listing information.
- region (string, optional): Geographical region of operation.

Person:
- id (string, unique): A lowercase, underscore-separated version of the name.
- name (string, unique): The full, normalized name of the person.

Sector:
- id (string, unique): A lowercase, underscore-separated version of the name.
- name (string, unique): The name of the business sector. MUST be one of these exact CSE sectors:
  * Energy
  * Materials
  * Capital Goods
  * Commercial and Professional Services
  * Transportation
  * Automobiles and Components
  * Consumer Durables and Apparel
  * Consumer Services
  * Retailing
  * Food and Staples Retailing
  * Food, Beverage, and Tobacco
  * Household and Personal Products
  * Health Care Equipment and Services
  * Pharmaceuticals, Biotechnology, and Life Sciences
  * Banks
  * Diversified Financials
  * Insurance
  * Telecommunication Services
  * Utilities
  * Real Estate

Product:
- id (string, unique): A lowercase, underscore-separated version of the name.
- name (string, unique): The name of the product or service.

Metric:
- id (string, unique): A lowercase, underscore-separated version of the name.
- name (string, unique): The name of the financial metric (e.g., 'Revenue', 'Profit After Tax', 'Net Interest Income').
- unit (string): The standardized unit of the metric. Use ONLY: 'Rs', '%', 'Times', 'Count', or 'Ratio'.

Chunk:
- id (string, unique): Format as 'company_id_chunk_type_index' (e.g., 'asia_asset_finance_directors_0').
- content (string): The full text content of the chunk.
- chunk_type (string): One of: 'directors_and_executives', 'financial_performance', 'risk_factors', 'business_segments', 'future_outlook', 'governance_structure', 'sustainability_initiatives', 'market_position', 'regulatory_compliance', 'operational_highlights', 'dividend_policy', 'capital_structure', 'technology_digital', 'human_resources', 'audit_internal_controls'.
- index (integer): The position of this chunk within its type.

Relationship Types & Properties:

Ownership & Shareholdings:
(parent:Company)-[:OWNS]->(child:Company):
- pct (float): Percentage ownership (0-100).
- as_of (date): Date in YYYY-MM-DD format.

(person:Person)-[:OWNS_SHARES]->(company:Company):
- count (integer, optional): Number of shares.
- pct (float, optional): Percentage ownership.
- as_of (date): Date in YYYY-MM-DD format.

Governance & Roles:
(person:Person)-[:DIRECTOR_OF]->(company:Company):
- role (string): Type of director (e.g., 'Independent Non-Executive', 'Executive').
- as_of (date): Date in YYYY-MM-DD format.

(person:Person)-[:HOLDS_POSITION]->(company:Company):
- title (string): The role or title (e.g., 'Chairman', 'Managing Director', 'CEO', 'Board Member').
- as_of (date): Date in YYYY-MM-DD format.

Business Classification:
(company:Company)-[:IN_SECTOR]->(sector:Sector):
- (No properties)

(company:Company)-[:OFFERS]->(product:Product):
- status (string, optional): e.g., 'active', 'planned', 'discontinued'.

Financial Metrics:
(company:Company)-[:HAS_METRIC]->(metric:Metric):
- value (float or integer): The numerical value ONLY. Convert all values to the same base unit.
- year (integer, optional): The financial year (e.g., 2024).
- as_of (date, optional): Specific date in YYYY-MM-DD format.

Auditing & Management Services:
(company:Company)-[:AUDITED_BY]->(auditor:Company):
- year (integer): The audit year.

(manager:Company)-[:MANAGES]->(plantation:Company):
- description (string, optional): Nature of management relationship.

Unstructured Content (OPTIONAL - only at end):
(company:Company)-[:HAS_CONTENT]->(chunk:Chunk):
- (No properties)

2. Query Generation Rules
Follow these rules without deviation:

STRUCTURE EXTRACTION (PRIMARY FOCUS):

- Identify the Source Company: Identify the main company from metadata.source_pdf. Create the Company node first.

- Use MERGE for Idempotency:
  * Always use MERGE on the node label and its unique name property. Use ON CREATE SET to add the id and other properties.
  * To prevent duplicate relationships, MATCH the start and end nodes, then MERGE the relationship.

- Normalize Metric Values: 
  * Extract ONLY the numerical value from metrics, removing ALL text: "million", "billion", "Mn", "Bn", "Rs.", "'000", commas, etc.
  * Conversion rules:
    - "6,604 Mn" → 6604000000 (multiply by 1,000,000)
    - "31,055,222 '000" → 31055222000 (multiply by 1,000)
    - "Rs. 10,772 Mn" → 10772000000
    - "25,599" → 25599 (already in base unit)
  * Store the standardized unit separately in the Metric node (just 'Rs', '%', 'Times', 'Count', or 'Ratio').

- Standardize Sectors:
  * Map any sector mentions to the EXACT CSE sector names listed above.
  * Common mappings: "Finance" → "Diversified Financials", "Hotel" → "Consumer Services", "Banking" → "Banks"
  * If unsure or if sector doesn't match the list exactly, SKIP the sector relationship.

- Extract Directors & Executives: 
  * From directors_and_executives chunks, identify each unique person with their title.
  * Create Person nodes and [:HOLDS_POSITION] relationships with title and date.

- Extract Financial Metrics: 
  * From financial_performance chunks, identify key metrics: Revenue, Gross Income, Net Interest Income, Profit Before Tax, Profit After Tax, Total Assets, Total Equity, etc.
  * Create Metric nodes with standardized units.
  * Create [:HAS_METRIC] relationships with normalized values and year.

- Extract Business Segments/Products: 
  * From business_segments chunks, identify sectors the company operates in.
  * Create [:IN_SECTOR] relationships only for sectors matching the CSE list.

- No Inference: Do not invent or guess data. If information is not present, omit that property. If ambiguous, skip that query.

CHUNK STORAGE (SECONDARY - APPEND AT END):

- After all structured queries are complete, add chunk storage as a SINGLE batch operation:
  * ONE UNWIND query to create all Chunk nodes with their content
  * ONE query to link all chunks to the company

- Format for chunk batch creation:
UNWIND [
  {id: 'company_id_type_0', content: '...', chunk_type: 'type', index: 0},
  {id: 'company_id_type_1', content: '...', chunk_type: 'type', index: 1}
] AS chunk
MERGE (ch:Chunk {id: chunk.id})
ON CREATE SET ch.content = chunk.content, ch.chunk_type = chunk.chunk_type, ch.index = chunk.index

- Format for chunk linking:
MATCH (c:Company {name: 'Company Name'})
WITH c
UNWIND ['chunk_id_1', 'chunk_id_2', 'chunk_id_3'] AS chunk_id
MATCH (ch:Chunk {id: chunk_id})
MERGE (c)-[:HAS_CONTENT]->(ch)

3. Required Output Format
Your entire response must be a single, raw JSON object. Do not include markdown formatting, explanations, or any text outside the JSON structure.

The JSON object must have a single key, "cypher_queries", whose value is a list of strings. Each string must be a complete and valid Cypher query.

Query order:
1. Company node creation
2. All Person nodes
3. All Sector/Product/Metric nodes
4. All relationships (HOLDS_POSITION, HAS_METRIC, IN_SECTOR, etc.)
5. Chunk batch creation (single UNWIND query)
6. Chunk linking (single query)

Example Output Structure:
{
  "cypher_queries": [
    "MERGE (c:Company {name: 'Asia Asset Finance PLC'}) ON CREATE SET c.id = 'asia_asset_finance_plc', c.region = 'Sri Lanka'",
    "MERGE (p:Person {name: 'V. A. Prasanth'}) ON CREATE SET p.id = 'v_a_prasanth'",
    "MERGE (p:Person {name: 'R. J. A. Gunawardena'}) ON CREATE SET p.id = 'r_j_a_gunawardena'",
    "MERGE (m:Metric {name: 'Gross Revenue'}) ON CREATE SET m.id = 'gross_revenue', m.unit = 'Rs'",
    "MERGE (m:Metric {name: 'Net Interest Income'}) ON CREATE SET m.id = 'net_interest_income', m.unit = 'Rs'",
    "MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials'",
    "MATCH (p:Person {name: 'V. A. Prasanth'}), (c:Company {name: 'Asia Asset Finance PLC'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Board Member', r.as_of = date('2024-03-31')",
    "MATCH (c:Company {name: 'Asia Asset Finance PLC'}), (m:Metric {name: 'Gross Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6604000000, r.year = 2024",
    "MATCH (c:Company {name: 'Asia Asset Finance PLC'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s)",
    "UNWIND [{id: 'asia_asset_finance_directors_0', content: 'The DIRECTORS are subject to...', chunk_type: 'directors_and_executives', index: 0}, {id: 'asia_asset_finance_directors_1', content: 'Board details...', chunk_type: 'directors_and_executives', index: 1}] AS chunk MERGE (ch:Chunk {id: chunk.id}) ON CREATE SET ch.content = chunk.content, ch.chunk_type = chunk.chunk_type, ch.index = chunk.index",
    "MATCH (c:Company {name: 'Asia Asset Finance PLC'}) WITH c UNWIND ['asia_asset_finance_directors_0', 'asia_asset_finance_directors_1'] AS chunk_id MATCH (ch:Chunk {id: chunk_id}) MERGE (c)-[:HAS_CONTENT]->(ch)"
  ]
}

CRITICAL REMINDERS:
- PRIMARY GOAL: Extract structured data accurately
- Metric values: Remove ALL formatting, convert to base units
- Sectors: Must match one of the 20 exact CSE sector names
- Chunks: Batch at the end in just 2 queries total
- Dates: Use YYYY-MM-DD format consistently
- Don't add properties if data is uncertain

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
            self.model = genai.GenerativeModel('gemini-2.5-pro')
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
