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
SOURCE_DIR = os.path.join(BASE_DIR, '..', 'Extract', 'batch_output')
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

# The specialized prompt for Cypher query generation (Updated: Focus only on structured data, remove chunks, enhance metric consistency)
BASE_PROMPT = """You are a specialized data engineering assistant, functioning as a high-precision text-to-graph model. You will be given the content of a JSON file that was extracted from a single company's annual report.

Your task is to meticulously analyze the provided JSON content and generate a list of Cypher queries to create and connect nodes in a Neo4j knowledge graph. You must adhere strictly to the graph schema, rules, and output format defined below. Your output must be nothing but the specified JSON object.

PRIORITY: Focus exclusively on extracting structured data (companies, people, metrics, sectors, relationships). Do not include any unstructured chunk storage or related queries.

1. Graph Schema Definition
You must model the data using only the following node labels, properties, and relationship types.

Node Labels & Properties:

Company:
- id (string, unique): A lowercase, underscore-separated version of the normalized name (e.g., 'dipped_products').
- name (string, unique): The NORMALIZED name of the company WITHOUT legal suffixes (e.g., 'Dipped Products' NOT 'Dipped Products PLC').
- founded_on (date, optional): Foundation date in YYYY-MM-DD format.
- listed_on (string, optional): Stock exchange listing information.
- region (string, optional): Geographical region of operation.

CRITICAL - COMPANY NODE NORMALIZATION RULES:

A. Name Standardization (MANDATORY):
   * Remove ALL legal suffixes: 'PLC', 'Ltd', 'Limited', 'Private Limited', '(Pvt) Ltd', 'Pvt Ltd', 'Corporation', 'Corp', 'Inc'
   * Remove 'Messrs.', 'Mr.', 'The' prefixes
   * Remove extra spaces and normalize punctuation
   * Use proper title case
   * Keep trademark symbols (®, ™) only if part of official brand
   * Examples:
     - 'Dipped Products PLC' → 'Dipped Products'
     - 'John Keells Holdings PLC' → 'John Keells Holdings'
     - 'Commercial Bank of Ceylon PLC' → 'Commercial Bank of Ceylon'
     - 'The Colombo Stock Exchange' → 'Colombo Stock Exchange'
     - 'Lanka Hospitals PLC' → 'Lanka Hospitals'

B. Company ID Generation Rules:
   * Convert normalized name to lowercase
   * Replace spaces with single underscores
   * Remove all special characters except underscores
   * Remove duplicate underscores
   * Examples:
     - 'Dipped Products' → 'dipped_products'
     - 'John Keells Holdings' → 'john_keells_holdings'
     - 'Ceylon Cold Stores' → 'ceylon_cold_stores'

C. Duplicate Prevention:
   * ALWAYS use MERGE on the normalized name (without PLC, Ltd, etc.)
   * Before creating, check if similar names exist:
     - With/without legal suffixes
     - With '&' vs 'and' (normalize to '&')
     - Abbreviated vs full names
   * If uncertain about company identity, SKIP rather than create duplicate

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
- name (string, unique): The name of the financial metric. Use these STANDARDIZED names:
  * 'Revenue' (NOT 'Turnover', 'Gross Revenue', 'Total Revenue')
  * 'Profit After Tax' (NOT 'PAT', 'Net Profit', 'Bottom Line')
  * 'Profit Before Tax' (NOT 'PBT')
  * 'Total Assets'
  * 'Total Equity'
  * 'Net Interest Income'
  * 'Gross Income'
  * 'Operating Profit'
  * 'Earnings Per Share' (NOT 'EPS')
  * 'Return on Equity' (NOT 'ROE')
  * 'Current Ratio'
  * 'Debt to Equity Ratio'
- unit (string): The standardized unit of the metric. Use ONLY: 'Rs', '%', 'Times', 'Count', or 'Ratio'.

Auditor (specialized Company node):
- id (string, unique): A lowercase, underscore-separated version of the name.
- name (string, unique): MUST be one of the official Sri Lankan auditing firms listed below.
- type (string): Always 'Auditing Firm'

AUDITING FIRMS - HARDCODED LIST (Sri Lankan Firms ONLY):

When identifying auditors, map to EXACTLY one of these official names:

1. 'Ernst & Young'
2. 'PricewaterhouseCoopers'
3. 'KPMG'
4. 'Deloitte'
5. 'BDO Partners'
6. 'Baker Tilly Edirisinghe'
7. 'RSM Sri Lanka'
8. 'PKF Consulting'
9. 'SJMS Associates'
10. 'Rafik Singhji'
11. 'B.R. De Silva'
12. 'Amarasuriya'
13. 'Stax Inc'
14. 'P.G.A. Wijesinghe'
15. 'Swarnapali'

Auditor Name Mapping Rules:
- 'Messrs. Ernst & Young' → 'Ernst & Young'
- 'Messrs Ernst & Young' → 'Ernst & Young'
- 'Ernst and Young' → 'Ernst & Young'
- 'EY' → 'Ernst & Young'
- 'Messrs. PricewaterhouseCoopers' → 'PricewaterhouseCoopers'
- 'PwC' → 'PricewaterhouseCoopers'
- 'KPMG Ford, Rhodes, Thornton & Company' → 'KPMG'
- 'Messrs. KPMG' → 'KPMG'
- 'Messrs. Deloitte' → 'Deloitte'
- 'Baker Tilly Edirisinghe & Company' → 'Baker Tilly Edirisinghe'
- If auditor name doesn't match any pattern above, DO NOT create auditor relationship

Relationship Types & Properties:

Ownership & Shareholdings:
(parent:Company)-[:OWNS]->(child:Company):
- pct (float): Percentage ownership (0-100). REQUIRED.
- as_of (date): Date in YYYY-MM-DD format. REQUIRED.

CRITICAL - OWNS RELATIONSHIP VALIDATION:
* Both parent and child companies MUST be explicitly mentioned in the document
* Ownership percentage MUST be explicitly stated (not inferred or estimated)
* Both companies must be created with normalized names
* Use percentage value between 0 and 100 (e.g., 51.5 not 0.515)
* If ownership is vague or implied only, SKIP this relationship
* If only one company is in the document, SKIP this relationship

(person:Person)-[:OWNS_SHARES]->(company:Company):
- count (integer, optional): Number of shares.
- pct (float, optional): Percentage ownership.
- as_of (date): Date in YYYY-MM-DD format.

Governance & Roles:
(person:Person)-[:HOLDS_POSITION]->(company:Company):
- title (string): The role or title. MUST be one of these STANDARDIZED values:
  * 'Chairman'
  * 'Deputy Chairman'
  * 'Managing Director'
  * 'Chief Executive Officer'
  * 'Chief Financial Officer'
  * 'Chief Operating Officer'
  * 'Executive Director'
  * 'Independent Non-Executive Director'
  * 'Non-Executive Director'
  * 'Board Member'
  * 'Company Secretary'
  * 'General Manager'
  * 'Senior Manager'
- as_of (date): Date in YYYY-MM-DD format.

Title Mapping Rules:
- 'Independent Director' → 'Independent Non-Executive Director'
- 'Non Independent Director' → 'Non-Executive Director'
- 'CEO' → 'Chief Executive Officer'
- 'CFO' → 'Chief Financial Officer'
- 'COO' → 'Chief Operating Officer'
- 'MD' → 'Managing Director'
- 'Director' (without specification) → 'Board Member'
- 'Member of the Board' → 'Board Member'

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
(company:Company)-[:AUDITED_BY]->(auditor:Auditor):
- year (integer): The audit year. REQUIRED.
- period (string, optional): e.g., 'FY 2023/24'.

CRITICAL - AUDITED_BY VALIDATION:
* Auditor name MUST match one of the 15 hardcoded firms exactly
* If auditor is not in the list, DO NOT create this relationship
* Year is mandatory
* Use normalized company name for the company node

(manager:Company)-[:MANAGES]->(managed:Company):
- description (string, optional): Nature of management relationship.
- as_of (date, optional): Date in YYYY-MM-DD format.

CRITICAL - MANAGES VALIDATION:
* Only for plantation, property, or fund management contexts
* Both companies must be explicitly identified
* Relationship must be clearly stated, not implied

2. Query Generation Rules (STRICT ENFORCEMENT)

Follow these rules without deviation:

STRUCTURE EXTRACTION ORDER:

Step 1: Identify and Normalize Main Company
- Extract company name from metadata.source_pdf or document header
- Apply company name normalization rules (remove PLC, Ltd, etc.)
- Generate normalized ID
- Create Company node with NORMALIZED name
- Example:
  MERGE (c:Company {name: 'Dipped Products'}) ON CREATE SET c.id = 'dipped_products', c.region = 'Sri Lanka'

Step 2: Identify Auditor (if present)
- Search for "Auditors", "External Auditors", or "Independent Auditors" section
- Extract auditor firm name
- Map to one of the 15 hardcoded auditor names ONLY
- If no match found, SKIP auditor relationship entirely
- Create Auditor node (with both Auditor and Company labels)
- Create AUDITED_BY relationship with year
- Example:
  MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm'
  MATCH (c:Company {name: 'Dipped Products'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024

Step 3: Extract People (Directors & Executives)
- From directors_and_executives or board_of_directors chunks
- Create Person nodes with normalized names (full name in title case)
- Create HOLDS_POSITION relationships with STANDARDIZED titles from the approved list
- Map all director/executive titles to the standardized values
- Include as_of date (use report date if specific date not provided)
- Example:
  MERGE (p:Person {name: 'John Doe'}) ON CREATE SET p.id = 'john_doe'
  MATCH (p:Person {name: 'John Doe'}), (c:Company {name: 'Dipped Products'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31')

Step 4: Extract Financial Metrics
- From financial_performance, financial_highlights, or income_statement chunks
- Identify key metrics with their values
- Apply STRICT value normalization rules (see below)
- Use STANDARDIZED metric names from the approved list
- Create Metric nodes with standardized units
- Create HAS_METRIC relationships with normalized values and year
- If metric spans multiple years, create separate relationships for each year

Step 5: Extract Business Sectors
- From business_segments, operations, or company_overview chunks
- Map sector mentions to EXACT CSE sector names only
- Create Sector nodes
- Create IN_SECTOR relationships
- If sector doesn't match the 20 CSE sectors exactly, SKIP

Step 6: Extract Products/Services (if applicable)
- From products_services or business_segments chunks
- Create Product nodes
- Create OFFERS relationships

Step 7: Extract Company-Company Relationships (VALIDATE STRICTLY)
- OWNS relationships: Only if both companies explicitly mentioned AND percentage stated
- AUDITED_BY relationships: Only if auditor is in hardcoded list
- MANAGES relationships: Only for clear management contexts
- SKIP any ambiguous relationships

METRIC VALUE NORMALIZATION (ENHANCED CONSISTENCY):

Extract ONLY the clean numerical value from metrics, removing ALL text, suffixes, prefixes, commas, parentheses, etc.

Strict Conversion Rules (apply consistently):
- Assume base currency is Sri Lankan Rupees (Rs) unless specified otherwise
- 'Mn' or 'million' or 'Million' means multiply by 1,000,000
  Examples: '6,604 Mn' → 6604000000, 'Rs. 10.5 million' → 10500000
- "'000" or 'thousand' means multiply by 1,000
  Examples: '31,055,222 '000' → 31055222000, '500 thousand' → 500000
- 'Bn' or 'billion' means multiply by 1,000,000,000
  Examples: '1.2 Bn' → 1200000000
- Percentages: Keep as decimal value (e.g., '5.5%' → 5.5 with unit '%')
- Ratios/Times: Keep as decimal/float (e.g., '2.5 Times' → 2.5 with unit 'Times')
- Counts: Integer values (e.g., '500 employees' → 500 with unit 'Count')
- Remove all non-numeric characters except decimal points and negative signs
- If value is negative (in parentheses or with minus), preserve the sign
  Examples: '(500) Mn' → -500000000, '-1,250' → -1250
- If no unit multiplier found, assume base unit (e.g., '25,599' → 25599)
- For consistency, always convert to the smallest base unit (full Rs amount)
- If metric value cannot be confidently parsed to a number, SKIP that metric

SECTOR NORMALIZATION:

Map sector mentions to EXACT CSE sector names:
- 'Finance' → 'Diversified Financials'
- 'Banking' → 'Banks'
- 'Hotel' or 'Hotels' or 'Hospitality' → 'Consumer Services'
- 'Manufacturing' → Check context: could be 'Materials', 'Capital Goods', or 'Consumer Durables and Apparel'
- 'Plantation' → 'Food, Beverage, and Tobacco'
- 'Property' or 'Real Estate Development' → 'Real Estate'
- 'Telecom' or 'Telecommunications' → 'Telecommunication Services'
- 'Power' or 'Electricity' → 'Utilities'
- 'Pharmaceutical' or 'Pharma' → 'Pharmaceuticals, Biotechnology, and Life Sciences'
- 'Healthcare' or 'Health' → 'Health Care Equipment and Services'
- If mapping is uncertain, SKIP the sector relationship

FORBIDDEN ACTIONS (WILL CAUSE DATA CORRUPTION):
- Creating company nodes with 'PLC', 'Ltd', 'Limited' in the name property
- Creating company nodes with inconsistent names (e.g., 'John Keells Holdings PLC' and 'John Keells Holdings')
- Creating OWNS relationships without explicit percentage value
- Creating OWNS relationships when only one company is mentioned in document
- Creating AUDITED_BY relationships for auditors not in the hardcoded list
- Using non-standardized titles in HOLDS_POSITION relationships
- Using non-standardized metric names
- Inferring company identities from abbreviations without confirmation
- Creating duplicate Person nodes with slight name variations
- Using wrong date formats (only YYYY-MM-DD allowed)

Query Construction Pattern:
1. Always use MERGE for node creation based on unique name property
2. Always use ON CREATE SET to add id and other properties
3. For relationships, MATCH both nodes first, then MERGE the relationship
4. For relationship properties, use ON CREATE SET or SET as appropriate
5. Include comments in output to mark each step

3. Pre-Query Validation Checklist

Before generating queries, validate each element:

□ Company name is normalized (no 'PLC', 'Ltd', 'Limited' suffixes in name property)
□ Company ID matches normalized name pattern (lowercase, underscores, no special chars)
□ All HOLDS_POSITION titles match the standardized list exactly
□ All Sector names match exact CSE sector list (one of 20 sectors)
□ Auditor name matches hardcoded firm list (one of 15 firms) OR relationship skipped
□ All OWNS relationships have BOTH companies identified AND percentage stated
□ All metric values are clean numbers (no text, properly converted to base units)
□ All metric names use standardized terminology
□ All dates are in YYYY-MM-DD format
□ No duplicate nodes with similar names

If ANY validation fails, SKIP that specific query rather than create inconsistent data.

4. Required Output Format

Your entire response must be a single, raw JSON object. Do not include markdown formatting, explanations, or any text outside the JSON structure.

The JSON object must have a single key, "cypher_queries", whose value is a list of strings. Each string must be a complete and valid Cypher query.

Query order and structure:
1. Company node creation (main company)
2. Auditor node creation (if applicable)
3. AUDITED_BY relationship (if applicable)
4. Person nodes creation
5. HOLDS_POSITION relationships
6. Metric nodes creation
7. HAS_METRIC relationships
8. Sector nodes creation
9. IN_SECTOR relationships
10. Product nodes creation (if applicable)
11. OFFERS relationships (if applicable)
12. Company-Company relationships (OWNS, MANAGES - if validated)

Example Output Structure:
{
  "cypher_queries": [
    "// Step 1: Main Company",
    "MERGE (c:Company {name: 'Asia Asset Finance'}) ON CREATE SET c.id = 'asia_asset_finance', c.region = 'Sri Lanka', c.listed_on = 'Colombo Stock Exchange'",
    
    "// Step 2: Auditor",
    "MERGE (a:Auditor:Company {name: 'Ernst & Young'}) ON CREATE SET a.id = 'ernst_and_young', a.type = 'Auditing Firm'",
    "MATCH (c:Company {name: 'Asia Asset Finance'}), (a:Auditor {name: 'Ernst & Young'}) MERGE (c)-[r:AUDITED_BY]->(a) ON CREATE SET r.year = 2024, r.period = 'FY 2023/24'",
    
    "// Step 3: People - Directors and Executives",
    "MERGE (p:Person {name: 'V. A. Prasanth'}) ON CREATE SET p.id = 'v_a_prasanth'",
    "MERGE (p:Person {name: 'R. J. A. Gunawardena'}) ON CREATE SET p.id = 'r_j_a_gunawardena'",
    
    "// Step 4: HOLDS_POSITION Relationships",
    "MATCH (p:Person {name: 'V. A. Prasanth'}), (c:Company {name: 'Asia Asset Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Independent Non-Executive Director', r.as_of = date('2024-03-31')",
    "MATCH (p:Person {name: 'R. J. A. Gunawardena'}), (c:Company {name: 'Asia Asset Finance'}) MERGE (p)-[r:HOLDS_POSITION]->(c) ON CREATE SET r.title = 'Chairman', r.as_of = date('2024-03-31')",
    
    "// Step 5: Metrics",
    "MERGE (m:Metric {name: 'Revenue'}) ON CREATE SET m.id = 'revenue', m.unit = 'Rs'",
    "MERGE (m:Metric {name: 'Profit After Tax'}) ON CREATE SET m.id = 'profit_after_tax', m.unit = 'Rs'",
    "MERGE (m:Metric {name: 'Total Assets'}) ON CREATE SET m.id = 'total_assets', m.unit = 'Rs'",
    
    "// Step 6: HAS_METRIC Relationships",
    "MATCH (c:Company {name: 'Asia Asset Finance'}), (m:Metric {name: 'Revenue'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 6604000000, r.year = 2024",
    "MATCH (c:Company {name: 'Asia Asset Finance'}), (m:Metric {name: 'Profit After Tax'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 450000000, r.year = 2024",
    "MATCH (c:Company {name: 'Asia Asset Finance'}), (m:Metric {name: 'Total Assets'}) MERGE (c)-[r:HAS_METRIC]->(m) SET r.value = 31055222000, r.year = 2024",
    
    "// Step 7: Sectors",
    "MERGE (s:Sector {name: 'Diversified Financials'}) ON CREATE SET s.id = 'diversified_financials'",
    
    "// Step 8: IN_SECTOR Relationships",
    "MATCH (c:Company {name: 'Asia Asset Finance'}), (s:Sector {name: 'Diversified Financials'}) MERGE (c)-[:IN_SECTOR]->(s)"
  ]
}

CRITICAL REMINDERS:
- EXCLUSIVE GOAL: Extract structured data accurately and consistently
- Company names: MUST be normalized (NO 'PLC', 'Ltd' suffixes in name property)
- Company IDs: Must match normalized name (lowercase, underscores)
- Auditors: MUST match one of 15 hardcoded firms OR skip relationship
- Position titles: MUST use standardized values from approved list
- Metric values: Remove ALL formatting, convert to base units strictly
- Metric names: Use standardized names (e.g., 'Revenue' not 'Turnover', 'Profit After Tax' not 'PAT')
- Sectors: Must match one of 20 exact CSE sector names OR skip
- OWNS relationships: Only create if BOTH companies mentioned AND percentage stated
- Dates: Use YYYY-MM-DD format consistently
- Don't add properties if data is uncertain
- Skip ambiguous data rather than create inconsistencies

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