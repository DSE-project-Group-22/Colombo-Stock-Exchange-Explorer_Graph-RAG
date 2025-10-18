import os
import time
import json
import pandas as pd
from pathlib import Path
import google.generativeai as genai
import PyPDF2
import fitz  # PyMuPDF - alternative PDF reader
from datetime import datetime
import logging

# Set up logging
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
logger = logging.getLogger(__name__)

class AnnualReportProcessor:
    def __init__(self, api_key, pdf_folder_path, output_folder="extracted_data"):
        """
        Initialize the processor
        
        Args:
            api_key (str): Your Gemini API key
            pdf_folder_path (str): Path to folder containing PDF files
            output_folder (str): Path to save extracted data
        """
        self.pdf_folder = Path(pdf_folder_path)
        self.output_folder = Path(output_folder)
        self.output_folder.mkdir(exist_ok=True)
        
        # Configure Gemini
        genai.configure(api_key=api_key)
        # Use gemini-1.5-flash for lower rate limits and 1M token support
        self.model = genai.GenerativeModel('gemini-1.5-flash')
        
        # Schema prompt template
        self.schema_prompt = self._build_schema_prompt()
        
        # Store all extracted data for consolidated report
        self.all_extracted_data = []
        
        # Token limits for Gemini 1.5 Flash FREE TIER
        self.max_tokens_per_request = 200000  # Conservative limit per request
        self.max_tokens_per_minute = 200000   # Conservative limit per minute
    
    def _build_schema_prompt(self):
        """Build the extraction prompt based on the schema"""
        return """You are an expert data extraction system. Extract information from this annual report text according to the following schema:

## NODES TO EXTRACT:
1. **Company**: id, name, sector, founded_on
2. **Person**: id, name, birth_date (if available)
3. **Role**: id, title (e.g., "Non-Executive Director", "CFO")
4. **Metric**: id, name, unit (KPIs like "Clients", "Employees")
5. **Region**: id, name (geographic presence)
6. **Product**: id, name, type (products/services offered)

## RELATIONSHIPS TO EXTRACT:
1. **HOLDS_POSITION** (Person → Company): role_title, valid_from, valid_to, source
2. **IN_SECTOR** (Company → Sector): valid_from, valid_to, source
3. **OWNS** (Company → Company): pct, valid_from, valid_to, source
4. **OFFERS** (Company → Product): description, valid_from, valid_to, source
5. **SERVES** (Company → Region): scope, valid_from, valid_to, source
6. **HAS_METRIC** (Company → Metric): value, valid_from, valid_to, source

## EXTRACTION RULES:
- Focus on "Board of Directors", "Corporate Management", "Key Personnel" sections
- Extract ALL person names and their exact titles
- Look for appointment dates (e.g., "appointed on", "since")
- Extract company metrics, subsidiaries, products, geographic presence
- If valid_to is not mentioned, leave it empty (current position)
- Use the report date as valid_from if no specific date is given

## OUTPUT FORMAT:
Return a JSON object with the following structure:
{
  "report_info": {
    "company_name": "extracted company name",
    "report_date": "YYYY-MM-DD or YYYY",
    "source_file": "filename.pdf"
  },
  "nodes": {
    "companies": [{"id": "COMP_01", "name": "Company Name", "sector": "Banking", "founded_on": "1995"}],
    "persons": [{"id": "P_01", "name": "John Doe", "birth_date": "1970-01-01"}],
    "roles": [{"id": "R_01", "title": "Chief Executive Officer"}],
    "metrics": [{"id": "M_01", "name": "Total Assets", "unit": "LKR Million"}],
    "regions": [{"id": "REG_01", "name": "Sri Lanka"}],
    "products": [{"id": "PROD_01", "name": "Personal Banking", "type": "Service"}]
  },
  "relationships": {
    "holds_position": [
      {
        "person_id": "P_01",
        "company_id": "COMP_01", 
        "role_title": "Chief Executive Officer",
        "valid_from": "2020-01-01",
        "valid_to": "",
        "source": "filename.pdf#page12"
      }
    ],
    "in_sector": [],
    "owns": [],
    "offers": [],
    "serves": [],
    "has_metric": []
  }
}

Extract from this annual report text:
"""

    def estimate_tokens(self, text):
        """
        Estimate token count for text
        Rough approximation: 1 token ≈ 4 characters for English text
        """
        return len(text) // 4

    def truncate_to_token_limit(self, text, pdf_filename):
        """
        Truncate text to fit within FREE TIER token limits
        """
        # Calculate token estimate for the prompt
        prompt_tokens = self.estimate_tokens(self.schema_prompt)
        filename_tokens = self.estimate_tokens(f"\n\nFILENAME: {pdf_filename}\n\nTEXT:\n")
        
        # Reserve tokens for prompt and filename - use stricter limits for free tier
        available_tokens = self.max_tokens_per_request - prompt_tokens - filename_tokens - 5000  # Larger buffer for safety
        
        if available_tokens <= 0:
            logger.error(f"Prompt too long, no tokens available for content")
            return ""
        
        # Calculate available characters (tokens * 4)
        available_chars = available_tokens * 4
        
        if len(text) <= available_chars:
            logger.info(f"Text fits within token limit: {self.estimate_tokens(text)} estimated tokens")
            return text
        
        # Text is too long, need to truncate
        logger.warning(f"Text too long ({self.estimate_tokens(text)} estimated tokens), truncating to {available_tokens} tokens")
        
        # Try to find good truncation points (end of sentences, paragraphs)
        truncated_text = text[:available_chars]
        
        # Try to end at a sentence boundary
        last_period = truncated_text.rfind('.')
        last_newline = truncated_text.rfind('\n')
        
        # Use the better boundary
        if last_period > available_chars * 0.9:  # If period is in last 10% of text
            truncated_text = truncated_text[:last_period + 1]
        elif last_newline > available_chars * 0.9:  # If newline is in last 10% of text
            truncated_text = truncated_text[:last_newline]
        
        logger.info(f"Truncated text to {len(truncated_text)} characters ({self.estimate_tokens(truncated_text)} estimated tokens)")
        return truncated_text

    def extract_text_from_pdf(self, pdf_path):
        """Extract text from PDF using PyMuPDF (better for complex layouts)"""
        try:
            doc = fitz.open(pdf_path)
            text = ""
            
            for page_num in range(doc.page_count):
                page = doc[page_num]
                text += f"\n--- PAGE {page_num + 1} ---\n"
                text += page.get_text()
            
            doc.close()
            return text
        except Exception as e:
            logger.error(f"Error extracting text from {pdf_path}: {str(e)}")
            # Fallback to PyPDF2
            try:
                with open(pdf_path, 'rb') as file:
                    reader = PyPDF2.PdfReader(file)
                    text = ""
                    for page_num, page in enumerate(reader.pages):
                        text += f"\n--- PAGE {page_num + 1} ---\n"
                        text += page.extract_text()
                return text
            except Exception as e2:
                logger.error(f"Fallback PDF extraction also failed: {str(e2)}")
                return ""

    def extract_data_with_gemini(self, text, pdf_filename):
        """Send text to Gemini API for data extraction with enhanced rate limiting"""
        max_retries = 3
        base_wait_time = 120  # Start with 2 minutes
        
        for attempt in range(max_retries):
            try:
                # Truncate text to fit within token limits
                truncated_text = self.truncate_to_token_limit(text, pdf_filename)
                
                if not truncated_text:
                    logger.error(f"No text available after truncation for {pdf_filename}")
                    return None
                
                prompt = self.schema_prompt + f"\n\nFILENAME: {pdf_filename}\n\nTEXT:\n{truncated_text}"
                
                # Final token check
                total_estimated_tokens = self.estimate_tokens(prompt)
                logger.info(f"Sending {total_estimated_tokens} estimated tokens to Gemini API")
                
                if total_estimated_tokens > self.max_tokens_per_request:
                    logger.error(f"Prompt still too long after truncation: {total_estimated_tokens} tokens")
                    return None
                
                response = self.model.generate_content(prompt)
                
                # Clean and parse JSON response
                response_text = response.text.strip()
                
                # Remove markdown code blocks if present
                if response_text.startswith('```json'):
                    response_text = response_text[7:]
                if response_text.startswith('```'):
                    response_text = response_text[3:]
                if response_text.endswith('```'):
                    response_text = response_text[:-3]
                
                # Parse JSON
                extracted_data = json.loads(response_text.strip())
                return extracted_data
                
            except json.JSONDecodeError as e:
                logger.error(f"JSON parsing error for {pdf_filename}: {str(e)}")
                logger.error(f"Response text: {response_text[:1000]}...")
                if attempt == max_retries - 1:
                    return None
                
            except Exception as e:
                error_message = str(e)
                if "429" in error_message or "quota" in error_message.lower():
                    wait_time = base_wait_time * (2 ** attempt)  # Exponential backoff
                    logger.warning(f"Rate limit hit. Waiting {wait_time} seconds before retry {attempt + 1}/{max_retries}")
                    time.sleep(wait_time)
                else:
                    logger.error(f"Gemini API error for {pdf_filename}: {str(e)}")
                    if attempt == max_retries - 1:
                        return None
        
        return None

    def process_single_pdf(self, pdf_path):
        """Process a single PDF file"""
        pdf_filename = pdf_path.name
        logger.info(f"Processing: {pdf_filename}")
        
        # Extract text from entire PDF
        text = self.extract_text_from_pdf(pdf_path)
        if not text.strip():
            logger.warning(f"No text extracted from {pdf_filename}")
            return None
        
        logger.info(f"Extracted text length: {len(text)} characters ({self.estimate_tokens(text)} estimated tokens)")
        
        # Send text to Gemini (with automatic truncation if needed)
        extracted_data = self.extract_data_with_gemini(text, pdf_filename)
        
        return extracted_data

    def save_extracted_data(self, data, pdf_filename):
        """Save extracted data in multiple formats"""
        base_name = pdf_filename.replace('.pdf', '')
        
        # Save JSON
        json_path = self.output_folder / f"{base_name}_extracted.json"
        with open(json_path, 'w', encoding='utf-8') as f:
            json.dump(data, f, indent=2, ensure_ascii=False)
        
        # Save CSV files for each relationship type
        if 'relationships' in data:
            for rel_type, relationships in data['relationships'].items():
                if relationships:
                    csv_path = self.output_folder / f"{base_name}_{rel_type}.csv"
                    df = pd.DataFrame(relationships)
                    df.to_csv(csv_path, index=False)
        
        # Store data for consolidated report
        self.all_extracted_data.append(data)
        
        logger.info(f"Data saved for {pdf_filename}")

    def create_consolidated_text_report(self):
        """Create a single text file with all extracted company details"""
        if not self.all_extracted_data:
            logger.warning("No data to consolidate")
            return
        
        report_path = self.output_folder / "consolidated_company_report.txt"
        
        with open(report_path, 'w', encoding='utf-8') as f:
            f.write("=" * 80 + "\n")
            f.write("CONSOLIDATED ANNUAL REPORTS EXTRACTION SUMMARY\n")
            f.write("=" * 80 + "\n")
            f.write(f"Generated on: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
            f.write(f"Total reports processed: {len(self.all_extracted_data)}\n")
            f.write("=" * 80 + "\n\n")
            
            for i, data in enumerate(self.all_extracted_data, 1):
                report_info = data.get('report_info', {})
                company_name = report_info.get('company_name', 'Unknown Company')
                report_date = report_info.get('report_date', 'Unknown Date')
                source_file = report_info.get('source_file', 'Unknown File')
                
                f.write(f"\n{'=' * 60}\n")
                f.write(f"REPORT #{i}: {company_name}\n")
                f.write(f"{'=' * 60}\n")
                f.write(f"Source File: {source_file}\n")
                f.write(f"Report Date: {report_date}\n")
                f.write(f"Company Name: {company_name}\n\n")
                
                # Extract and display company information
                nodes = data.get('nodes', {})
                relationships = data.get('relationships', {})
                
                # Companies section
                companies = nodes.get('companies', [])
                if companies:
                    f.write("COMPANIES:\n")
                    f.write("-" * 40 + "\n")
                    for company in companies:
                        f.write(f"• ID: {company.get('id', 'N/A')}\n")
                        f.write(f"  Name: {company.get('name', 'N/A')}\n")
                        f.write(f"  Sector: {company.get('sector', 'N/A')}\n")
                        f.write(f"  Founded: {company.get('founded_on', 'N/A')}\n\n")
                
                # Key Personnel section
                persons = nodes.get('persons', [])
                positions = relationships.get('holds_position', [])
                
                if persons and positions:
                    f.write("KEY PERSONNEL:\n")
                    f.write("-" * 40 + "\n")
                    for person in persons:
                        person_id = person.get('id')
                        person_positions = [pos for pos in positions if pos.get('person_id') == person_id]
                        
                        if person_positions:
                            f.write(f"• {person.get('name', 'N/A')}\n")
                            if person.get('birth_date'):
                                f.write(f"  Birth Date: {person.get('birth_date')}\n")
                            
                            for pos in person_positions:
                                f.write(f"  Role: {pos.get('role_title', 'N/A')}\n")
                                f.write(f"  From: {pos.get('valid_from', 'N/A')}\n")
                                if pos.get('valid_to'):
                                    f.write(f"  To: {pos.get('valid_to')}\n")
                                f.write(f"  Source: {pos.get('source', 'N/A')}\n")
                            f.write("\n")
                
                # Products/Services section
                products = nodes.get('products', [])
                if products:
                    f.write("PRODUCTS/SERVICES:\n")
                    f.write("-" * 40 + "\n")
                    for product in products:
                        f.write(f"• {product.get('name', 'N/A')}\n")
                        f.write(f"  Type: {product.get('type', 'N/A')}\n\n")
                
                # Geographic Presence section
                regions = nodes.get('regions', [])
                if regions:
                    f.write("GEOGRAPHIC PRESENCE:\n")
                    f.write("-" * 40 + "\n")
                    for region in regions:
                        f.write(f"• {region.get('name', 'N/A')}\n")
                    f.write("\n")
                
                # Key Metrics section
                metrics = nodes.get('metrics', [])
                metric_relationships = relationships.get('has_metric', [])
                if metrics:
                    f.write("KEY METRICS:\n")
                    f.write("-" * 40 + "\n")
                    for metric in metrics:
                        f.write(f"• {metric.get('name', 'N/A')}")
                        if metric.get('unit'):
                            f.write(f" ({metric.get('unit')})")
                        
                        # Find corresponding values
                        metric_values = [rel for rel in metric_relationships 
                                       if rel.get('metric_id') == metric.get('id')]
                        if metric_values:
                            for val in metric_values:
                                f.write(f": {val.get('value', 'N/A')}")
                        f.write("\n")
                    f.write("\n")
                
                f.write("\n" + "=" * 60 + "\n")
        
        logger.info(f"📄 Consolidated report saved to: {report_path}")

    def process_all_pdfs(self):
        """Process all PDF files in the folder with enhanced rate limiting"""
        pdf_files = list(self.pdf_folder.glob("*.pdf"))
        
        if not pdf_files:
            logger.warning(f"No PDF files found in {self.pdf_folder}")
            return
        
        logger.info(f"Found {len(pdf_files)} PDF files to process")
        
        for i, pdf_path in enumerate(pdf_files):
            try:
                logger.info(f"\n{'='*50}")
                logger.info(f"Processing file {i+1}/{len(pdf_files)}: {pdf_path.name}")
                logger.info(f"{'='*50}")
                
                extracted_data = self.process_single_pdf(pdf_path)
                
                if extracted_data:
                    self.save_extracted_data(extracted_data, pdf_path.name)
                    logger.info(f"✅ Successfully processed {pdf_path.name}")
                else:
                    logger.warning(f"❌ Failed to extract data from {pdf_path.name}")
                
                # Wait 5 minutes between PDFs to respect free tier rate limits
                if i < len(pdf_files) - 1:
                    logger.info("Waiting 300 seconds (5 minutes) before processing next PDF...")
                    time.sleep(300)
                    
            except Exception as e:
                logger.error(f"❌ Error processing {pdf_path.name}: {str(e)}")
                continue
        
        # Create consolidated text report after processing all PDFs
        self.create_consolidated_text_report()
        
        logger.info(f"\n🎉 Completed processing all {len(pdf_files)} PDF files!")

def main():
    # Configuration
    GEMINI_API_KEY = "AIzaSyAL9Gb_1sxNDv4VIkVU75E691HdcneHKCo"
    PDF_FOLDER_PATH = "/app/Reports"
    OUTPUT_FOLDER = "/app/output"
    
    if not os.path.exists(PDF_FOLDER_PATH):
        print(f"❌ PDF folder not found: {PDF_FOLDER_PATH}")
        return
    
    processor = AnnualReportProcessor(
        api_key=GEMINI_API_KEY,
        pdf_folder_path=PDF_FOLDER_PATH,
        output_folder=OUTPUT_FOLDER
    )
    
    processor.process_all_pdfs()

if __name__ == "__main__":
    main()