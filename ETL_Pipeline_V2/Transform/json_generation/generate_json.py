"""
Transform Phase - JSON Normalizer
=================================

This script processes extracted JSON files from the Extract phase and generates
normalized structured JSON files for knowledge graph preparation. It uses Google's Gemini AI
to analyze the raw data and generate the normalized output based on the provided prompt.
"""

import os
import json
import logging
import sys
from datetime import datetime
from typing import Optional, Dict
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
OUTPUT_DIR = os.path.join(BASE_DIR, 'normalized_json')
LOG_DIR = os.path.join(BASE_DIR, 'logs')

# Get API key from environment variable
GEMINI_API_KEY = os.getenv('GEMINI_API_KEY')

# Configure logging
os.makedirs(LOG_DIR, exist_ok=True)
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s',
    handlers=[
        logging.FileHandler(os.path.join(LOG_DIR, f'normalize_process_{datetime.now().strftime("%Y%m%d_%H%M%S")}.log')),
        logging.StreamHandler()
    ]
)

# The specialized prompt for structured JSON generation (unchanged from your provided version)
BASE_PROMPT = """You are a specialized data extraction assistant for financial documents. You will be given the content of a JSON file extracted from a company's annual report.

Your task is to meticulously analyze the provided JSON content and generate a structured JSON output containing normalized, validated data ready for knowledge graph creation. Your output must be nothing but the specified JSON object with NO markdown formatting, explanations, or additional text.

Stick strictly to the information provided in the JSON content. Do not add, infer, fabricate, or hallucinate any data that is not explicitly and directly stated in the text. Base all extractions on clear, unambiguous evidence from the provided content. If information is missing or uncertain, use null for optional fields, empty arrays for lists, and avoid populating fields without direct support. Prioritize accuracy and conservatism in extraction to minimize errors.

PRIORITY: Extract all structured data (companies, people, metrics, sectors, relationships) with proper normalization.

---

## 1. NORMALIZATION RULES

### A. Company Name Normalization (MANDATORY)

**Raw Name Preservation:**
- Always capture the exact name as it appears in the document in `raw_name`

**Normalized Name Rules:**
- Remove ALL legal suffixes: 'PLC', 'Ltd', 'Limited', 'Private Limited', '(Pvt) Ltd', 'Pvt Ltd', 'Corporation', 'Corp', 'Inc', 'Incorporated'
- Remove prefixes: 'Messrs.', 'Mr.', 'Ms.', 'The'
- Normalize '&' vs 'and': Always use '&' (e.g., 'Ernst and Young' → 'Ernst & Young')
- Remove extra spaces and normalize punctuation
- Use proper title case
- Do Not Keep trademark symbols 
- Store result in `normalized_name`

**Examples:**
- 'Dipped Products PLC' → raw: 'Dipped Products PLC', normalized: 'Dipped Products'
- 'John Keells Holdings PLC' → raw: 'John Keells Holdings PLC', normalized: 'John Keells Holdings'
- 'The Colombo Stock Exchange' → raw: 'The Colombo Stock Exchange', normalized: 'Colombo Stock Exchange'
- 'Messrs. Ernst and Young' → raw: 'Messrs. Ernst and Young', normalized: 'Ernst & Young'

**Normalized ID Generation:**
- Convert normalized name to lowercase
- Replace spaces with single underscores
- Remove all special characters except underscores
- Remove duplicate underscores
- Store in `normalized_id`

**Examples:**
- 'Dipped Products' → 'dipped_products'
- 'John Keells Holdings' → 'john_keells_holdings'
- 'Ceylon Cold Stores' → 'ceylon_cold_stores'

### B. Person Name Normalization

**Raw Name:** Capture exactly as appears (e.g., 'Dr. J.A. Perera', 'MR. JOHN DOE')

**Normalized Name Rules:**
- Remove titles: 'Dr.', 'Mr.', 'Mrs.', 'Ms.', 'Prof.', 'Hon.'
- Convert to proper title case
- Preserve initials with periods (e.g., 'J. A. Perera')
- Remove extra spaces

**Normalized ID:** lowercase, underscores, no special chars

### C. Title/Position Normalization

**Standardized Director/Executive Titles (MUST USE THESE EXACTLY):**
- Chairman
- Deputy Chairman
- Managing Director
- Chief Executive Officer
- Chief Financial Officer
- Chief Operating Officer
- Executive Director
- Independent Non-Executive Director
- Non-Executive Director
- Board Member
- Company Secretary
- General Manager
- Senior Manager

**Title Mapping Rules:**
- 'Independent Director' → 'Independent Non-Executive Director'
- 'Non Independent Director' → 'Non-Executive Director'
- 'CEO' → 'Chief Executive Officer'
- 'CFO' → 'Chief Financial Officer'
- 'COO' → 'Chief Operating Officer'
- 'MD' → 'Managing Director'
- 'Director' (without specification) → 'Board Member'
- 'Member of the Board' → 'Board Member'
- 'ED' → 'Executive Director'
- 'NED' → 'Non-Executive Director'
- 'INED' → 'Independent Non-Executive Director'


### D. Auditor Normalization

**Hardcoded Sri Lankan Auditing Firms (ONLY THESE 15):**
1. Ernst & Young
2. PricewaterhouseCoopers
3. KPMG
4. Deloitte
5. BDO Partners
6. Baker Tilly Edirisinghe
7. RSM Sri Lanka
8. PKF Consulting
9. SJMS Associates
10. Rafik Singhji
11. B.R. De Silva
12. Amarasuriya
13. Stax Inc
14. P.G.A. Wijesinghe
15. Swarnapali

**Auditor Mapping Rules:**
- 'Messrs. Ernst & Young' / 'Ernst and Young' / 'EY' → 'Ernst & Young'
- 'Messrs. PricewaterhouseCoopers' / 'PwC' → 'PricewaterhouseCoopers'
- 'KPMG Ford, Rhodes, Thornton & Company' / 'Messrs. KPMG' → 'KPMG'
- 'Messrs. Deloitte' → 'Deloitte'
- 'Baker Tilly Edirisinghe & Company' → 'Baker Tilly Edirisinghe'


### E. Sector Normalization

**Exact CSE Sector Names (ONLY THESE 20):**
1. Energy
2. Materials
3. Capital Goods
4. Commercial and Professional Services
5. Transportation
6. Automobiles and Components
7. Consumer Durables and Apparel
8. Consumer Services
9. Retailing
10. Food and Staples Retailing
11. Food, Beverage, and Tobacco
12. Household and Personal Products
13. Health Care Equipment and Services
14. Pharmaceuticals, Biotechnology, and Life Sciences
15. Banks
16. Diversified Financials
17. Insurance
18. Telecommunication Services
19. Utilities
20. Real Estate

**Sector Mapping Rules:**
- 'Finance' / 'Financial Services' → 'Diversified Financials'
- 'Banking' → 'Banks'
- 'Hotel' / 'Hotels' / 'Hospitality' → 'Consumer Services'
- 'Plantation' → 'Food, Beverage, and Tobacco'
- 'Property' / 'Real Estate Development' → 'Real Estate'
- 'Telecom' / 'Telecommunications' → 'Telecommunication Services'
- 'Power' / 'Electricity' → 'Utilities'
- 'Pharmaceutical' / 'Pharma' → 'Pharmaceuticals, Biotechnology, and Life Sciences'
- 'Healthcare' / 'Health' → 'Health Care Equipment and Services'
- 'Manufacturing' → Requires context analysis (could be Materials, Capital Goods, or Consumer Durables and Apparel)


### F. Metric Normalization

**Standardized Metric Names (MUST USE THESE EXACTLY):**
- Revenue (NOT 'Turnover', 'Gross Revenue', 'Total Revenue', 'Sales')
- Profit After Tax (NOT 'PAT', 'Net Profit', 'Bottom Line', 'Net Income')
- Profit Before Tax (NOT 'PBT')
- Total Assets
- Total Equity (NOT 'Shareholders' Equity', 'Net Worth')
- Net Interest Income
- Gross Income
- Operating Profit (NOT 'EBIT', 'Operating Income')
- Earnings Per Share (NOT 'EPS')
- Return on Equity (NOT 'ROE')
- Current Ratio
- Debt to Equity Ratio (NOT 'D/E Ratio', 'Gearing Ratio')
- Total Liabilities
- Cash and Cash Equivalents
- Net Asset Value Per Share (NOT 'NAV')

**Standardized Units (ONLY THESE):**
- Rs (Sri Lankan Rupees - for monetary values)
- % (Percentages - for ratios, returns, growth rates)
- Times (for ratios like current ratio)
- Count (for discrete quantities like employee count)
- Ratio (for dimensionless ratios)

**Value Normalization Rules (CRITICAL FOR CONSISTENCY):**

*Base Assumption:* All monetary values are in Sri Lankan Rupees (Rs) unless explicitly stated otherwise.

*Unit Multipliers (apply strictly):*
- 'Mn' / 'million' / 'Million' / 'Mil' → multiply by 1,000,000
  - '6,604 Mn' → 6,604,000,000
  - 'Rs. 10.5 million' → 10,500,000
  - '1,250.75 Mn' → 1,250,750,000

- "'000" / 'thousand' / 'Thousand' / '000' → multiply by 1,000
  - '31,055,222 '000' → 31,055,222,000
  - '500 thousand' → 500,000
  - "15,000 '000" → 15,000,000

- 'Bn' / 'billion' / 'Billion' → multiply by 1,000,000,000
  - '1.2 Bn' → 1,200,000,000
  - 'Rs. 5.5 billion' → 5,500,000,000

*Percentage Handling:*
- Keep as decimal value (e.g., '5.5%' → 5.5 with unit '%')
- Remove '%' symbol from value, store in unit field

*Ratio/Times Handling:*
- Keep as decimal/float (e.g., '2.5 Times' → 2.5 with unit 'Times')
- '1.25:1' → 1.25 with unit 'Ratio'

*Count Handling:*
- Integer values (e.g., '500 employees' → 500 with unit 'Count')

*Negative Values:*
- Preserve sign for negative values
- '(500) Mn' → -500,000,000
- '-1,250' → -1,250
- Values in parentheses without minus sign are negative

*Text Removal:*
- Remove ALL: 'Rs', 'Rs.', 'LKR', commas, spaces, parentheses (convert to negative), currency symbols
- Keep ONLY: digits, decimal point, negative sign

*Parsing Steps:*
1. Extract raw_value string exactly as appears
2. Identify unit multiplier ('Mn', "'000", 'Bn', etc.)
3. Remove all non-numeric characters except decimal point and negative indicators
4. Convert to float
5. Apply multiplier
6. Store in normalized_value as float
7. Store unit in standardized format

*Examples:*
- Raw: 'Rs. 6,604 Mn' → normalized_value: 6604000000, unit: 'Rs'
- Raw: '31,055,222 '000' → normalized_value: 31055222000, unit: 'Rs'
- Raw: '5.5%' → normalized_value: 5.5, unit: '%'
- Raw: '(1,250) Mn' → normalized_value: -1250000000, unit: 'Rs'
- Raw: '2.5 Times' → normalized_value: 2.5, unit: 'Times'
- Raw: '500 employees' → normalized_value: 500, unit: 'Count'
- Raw: '25,599' → normalized_value: 25599, unit: 'Rs'


---

## 2. EXTRACTION RULES

### Extraction Priority Order:


2. **Main Company Extraction**
   - Identify from metadata.source_pdf, document header, or company_overview
   - Extract raw name exactly as appears
   - Apply normalization rules
   - Extract ticker symbol if available
   - Extract stock exchange, region, dates, registration number, website

3. **Auditor Extraction**
   - Search for "Auditors", "External Auditors", "Independent Auditors" section
   - Extract raw name
   - Map to hardcoded list ONLY
   - If no match, set normalized_name to null, confidence to 0.0
   - Extract audit year (REQUIRED if auditor found)
   - Extract audit period if available

4. **Director and Executive Extraction**
   - From board_of_directors, directors_and_executives, corporate_governance sections
   - Extract each person's raw name and raw title
   - Apply person and title normalization
   - Determine is_independent and is_executive flags from title
   - Extract appointment/resignation dates if available
   - Use report date as as_of_date if specific date not provided

5. **Sector Extraction**
   - From company_overview, business_segments, operations sections
   - Extract raw sector name
   - Map to exact CSE sector list
   - Identify primary sector (typically first mentioned or explicitly stated)
   - If no match, set normalized_name to null, skip

6. **Financial Metrics Extraction**
   - From financial_highlights, income_statement, balance_sheet, cash_flow sections
   - For each metric:
     - Extract raw name and raw value (exactly as appears)
     - Apply metric name normalization
     - Apply value normalization rules (critical for consistency)
     - Extract year, quarter, date range
     - Determine if audited, consolidated
   

7. **Products/Services Extraction**
   - From products_services, business_segments, brands sections
   - Extract raw name
   - Normalize name
   - Categorize as product, service, or brand
   - Extract status (active, discontinued, planned)
   - Extract launch date if available

8. **Shareholding Extraction**
   - **Company Holdings (CRITICAL VALIDATION):**
     - BOTH holder and target companies MUST be explicitly named
     - Ownership percentage MUST be explicitly stated (not inferred)
     - Extract raw names for both companies
     - Apply company normalization to both
     - Extract percentage (0-100 format)
     - Extract share count if available
     - Extract as_of_date (REQUIRED)
     - Determine relationship_type (subsidiary, associate, etc.)
   
   
   - **Individual Holdings:**
     - Extract person raw name
     - Extract company raw name
     - Apply normalizations
     - Extract share count and/or percentage
     - Extract as_of_date


10. **Subsidiaries**
    - Extract from sections explicitly mentioning subsidiaries, associates, or group companies
    - Only include if relationship is clearly stated as subsidiary or equivalent
    - Apply company normalization including normalized_id
    - Categorize relationship type (e.g., 'wholly-owned subsidiary', 'associate')
    - Include ownership_percent if explicitly stated; otherwise use null
    - Cross-reference with shareholdings to avoid duplication, but list separately if mentioned as subsidiaries
    
---

## 3. OUTPUT FORMAT

Your entire response must be a single, raw JSON object. Do not include markdown formatting (no ```json tags), explanations, or any text outside the JSON structure.

The JSON must conform to the structure defined below with all fields properly typed.

**Required Fields (cannot be null):**
- metadata.doc_id
- metadata.as_of_date
- company.raw_name
- company.normalized_name
- company.normalized_id

**Arrays can be empty [] if no data found.**

**Null Handling:**
- Use null for optional fields when data not found
- Never use empty strings "" for missing data
- Never use 0 or 0.0 for missing numeric data

---

## 4. COMPLETE JSON STRUCTURE
```json
{
  "company": {
    "raw_name": "string",
    "normalized_name": "string",
    "ticker": "string | null",
    "founded_on": "YYYY-MM-DD | null",
    "listed_on": "YYYY-MM-DD | null",
    "industry": "string | null"
  },
  
  "sectors": [
    {
      "normalized_name": "string"
    }
  ],
  
  "auditor": {
    "normalized_name": "string | null",
  },
  
  "directors": [
    {
      "raw_name": "string",
      "normalized_name": "string",
      "raw_title": "string",
      "normalized_title": "string",
      "appointed_date": "YYYY-MM-DD | null",
      "resigned_date": "YYYY-MM-DD | null",
      "as_of_date": "YYYY-MM-DD",
      "is_independent": "boolean | null",
      "is_executive": "boolean | null"
    }
  ],
  
  "executives": [
    {
      "raw_name": "string",
      "normalized_name": "string",
      "raw_title": "string",
      "normalized_title": "string",
      "department": "string | null",
      "appointed_date": "YYYY-MM-DD | null",
      "as_of_date": "YYYY-MM-DD"
    }
  ],
  
  "shareholdings": {
    "company_holdings": [
      {
        "holder": {
          "raw_name": "string",
          "normalized_name": "string",
        },
        "ownership_percent": "float",
        "share_count": "integer | null",
        "as_of_date": "YYYY-MM-DD",
      }
    ],
    "individual_holdings": [
      {
        "holder": {
          "raw_name": "string",
          "normalized_name": "string",
        },
        "share_count": "integer | null",
        "ownership_percent": "float | null",
        "as_of_date": "YYYY-MM-DD"
      }
    ]
  },

  "financial_metrics": [
    {
      "raw_name": "string",
      "normalized_name": "string",
      "raw_value": "string",
      "normalized_value": "float",
      "unit": "string",
      "currency": "string | null",
      "year": "integer | null",
      "as_of_date": "YYYY-MM-DD | null",
      "period_start": "YYYY-MM-DD | null",
      "period_end": "YYYY-MM-DD | null",
      "is_consolidated": "boolean | null"
    }
  ],

  "products_services": [
    {
      "raw_name": "string",
      "normalized_name": "string",
      "category": "string | null",
      "description": "string | null",
      "launch_date": "YYYY-MM-DD | null"
    }
  ], 

  "subsidiaries": [
    {
      "raw_name": "string",
      "normalized_name": "string",
      "relationship_type": "string",
      "relationship_description": "string | null",
      "ownership_percent": "float | null"
    }
  ]
}
7. CRITICAL REMINDERS

EXCLUSIVE GOAL: Extract structured, normalized data with validation flags and confidence scores
Company names: Always store raw AND normalized versions
Auditors: Only include if matched to hardcoded list
Titles: Only use standardized values
Metrics: Apply strict value normalization (convert to base units)
Sectors: Only use exact CSE sector names
Shareholdings: BOTH companies must be named, percentage must be stated
Dates: Always YYYY-MM-DD format
No markdown: Output pure JSON only, no ```json


Now, analyze the following JSON data and generate the structured output:
"""


class JsonNormalizer:
    """Main class for generating normalized JSON from extracted data."""
    
    def __init__(self):
        """Initialize the normalizer with Gemini API configuration."""
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

    def generate_normalized_json(self, file_path: str) -> Optional[Dict]:
        """Load a JSON file, call Gemini, and return the normalized JSON."""
        self.logger.info(f"Processing {os.path.basename(file_path)}...")
        
        try:
            # Load the content of the extracted JSON file
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

            # Parse the response and return the JSON data
            try:
                response_data = json.loads(response.text)
                
                if not response_data:
                    self.logger.warning(f"No data generated for {os.path.basename(file_path)}")
                    return None
                
                self.logger.info(f"Generated normalized JSON for {os.path.basename(file_path)}")
                return response_data
                
            except json.JSONDecodeError as e:
                self.logger.error(f"Failed to parse JSON response for {os.path.basename(file_path)}: {e}")
                self.logger.error(f"Raw response: {response.text[:500]}...")
                return None
                
        except Exception as e:
            self.logger.error(f"Error processing {os.path.basename(file_path)}: {e}")
            return None

    def save_normalized_json(self, data: Dict, output_path: str) -> bool:
        """Save the generated normalized JSON to a .json file."""
        try:
            with open(output_path, 'w', encoding='utf-8') as f:
                json.dump(data, f, indent=2, ensure_ascii=False)
            
            return True
        except Exception as e:
            self.logger.error(f"Failed to save JSON to {output_path}: {e}")
            return False

    def process_all_files(self) -> Dict[str, int]:
        """Process all JSON files in the source directory."""
        self.logger.info("Starting JSON normalization process...")
        
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
            
            # Generate normalized JSON
            normalized_data = self.generate_normalized_json(source_file_path)
            
            if normalized_data:
                # Create corresponding .json filename (add _normalized suffix for clarity)
                json_filename = os.path.splitext(filename)[0] + '_normalized.json'
                output_file_path = os.path.join(OUTPUT_DIR, json_filename)
                
                # Save JSON to file
                if self.save_normalized_json(normalized_data, output_file_path):
                    self.successful_generations += 1
                    self.logger.info(f"✅ Successfully generated {output_file_path}")
                else:
                    self.failed_generations += 1
                    self.logger.error(f"❌ Failed to save JSON for {filename}")
            else:
                self.failed_generations += 1
                self.logger.error(f"❌ Failed to generate JSON for {filename}")

        # Return summary
        return {
            "processed": self.total_files_processed,
            "successful": self.successful_generations,
            "failed": self.failed_generations
        }

    def generate_summary_report(self, results: Dict[str, int]) -> None:
        """Generate a summary report of the processing results."""
        summary_file = os.path.join(OUTPUT_DIR, 'normalization_summary.json')
        
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
    """Main function to orchestrate the JSON normalization process."""
    print("=" * 60)
    print("Transform Phase - JSON Normalizer")
    print("=" * 60)
    
    # Initialize the normalizer
    normalizer = JsonNormalizer()
    
    # Process all files
    results = normalizer.process_all_files()
    
    # Generate summary report
    normalizer.generate_summary_report(results)
    
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
        print(f"\n✅ Normalized JSON files saved to: {OUTPUT_DIR}")
    
    if results['failed'] > 0:
        print(f"\n❌ {results['failed']} files failed to process. Check logs for details.")
    
    print("=" * 60)


if __name__ == "__main__":
    main()