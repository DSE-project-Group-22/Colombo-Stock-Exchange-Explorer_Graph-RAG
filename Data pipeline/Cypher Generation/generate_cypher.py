#!/usr/bin/env python3
"""
Main Cypher generation script using Gemini API
"""

import os
import time
import logging
from pathlib import Path
from gemini_client import GeminiCypherGenerator
from config import Config

# --- Incremental Processing Functions ---
PROCESSED_FILES_FILE = "processed_cypher_files.txt"

def load_processed_files():
    """Load list of already processed files"""
    processed = set()
    try:
        if os.path.exists(PROCESSED_FILES_FILE):
            with open(PROCESSED_FILES_FILE, 'r', encoding='utf-8') as f:
                for line in f:
                    line = line.strip()
                    if line and not line.startswith('#'):
                        # Parse format: ENRICHED_FILENAME|DATE_PROCESSED|CYPHER_OUTPUT_FILE
                        parts = line.split('|')
                        if len(parts) >= 1:
                            processed.add(parts[0])
    except Exception as e:
        print(f"⚠️ Warning: Could not load processed files: {e}")
    return processed

def save_processed_file(enriched_filename, cypher_filename):
    """Save file as processed"""
    try:
        from datetime import datetime
        timestamp = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
        with open(PROCESSED_FILES_FILE, 'a', encoding='utf-8') as f:
            f.write(f"{enriched_filename}|{timestamp}|{cypher_filename}\n")
    except Exception as e:
        print(f"⚠️ Warning: Could not save processed file: {e}")

def get_files_to_process(input_dir):
    """Get list of files that haven't been processed yet"""
    processed = load_processed_files()
    input_path = Path(input_dir)
    
    # Get all enriched text files (excluding schema reference and mapping files)
    all_enriched_files = [
        f for f in input_path.glob("*_enriched.txt")
        if f.name not in ["SCHEMA_REFERENCE.txt", "entity_mapping_summary.json"]
    ]
    
    to_process = [f for f in all_enriched_files if f.name not in processed]
    return to_process, processed

class CypherGenerationPipeline:
    """Main pipeline for generating Cypher queries from enriched texts"""
    
    def __init__(self):
        """Initialize the pipeline"""
        self.config = Config()
        self.gemini_client = GeminiCypherGenerator()
        
        # Setup logging
        logging.basicConfig(
            level=logging.INFO,
            format='%(asctime)s - %(levelname)s - %(message)s'
        )
        self.logger = logging.getLogger(__name__)
        
        # Create output directory
        self.output_dir = Path(self.config.OUTPUT_DIR)
        self.output_dir.mkdir(exist_ok=True)
        
        # Input directory
        self.input_dir = Path(self.config.PREPROCESSED_TEXTS_DIR)
    
    def get_enriched_files(self):
        """Get list of enriched text files to process"""
        
        if not self.input_dir.exists():
            raise FileNotFoundError(f"Input directory not found: {self.input_dir}")
        
        # Use incremental processing helper function
        enriched_files, _ = get_files_to_process(self.input_dir)
        
        return enriched_files
    
    def extract_company_name(self, filename: str) -> str:
        """Extract company name from filename"""
        # Remove _enriched.txt suffix and convert to readable format
        name = filename.replace("_enriched.txt", "")
        name = name.replace("_", " ").title()
        return name
    
    def load_enriched_content(self, file_path: Path) -> str:
        """Load content from enriched text file"""
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                return f.read()
        except Exception as e:
            self.logger.error(f"Error loading file {file_path}: {e}")
            return ""
    
    def save_cypher_queries(self, cypher_content: str, output_filename: str) -> bool:
        """Save generated Cypher queries to file"""
        
        output_path = self.output_dir / output_filename
        
        try:
            with open(output_path, 'w', encoding='utf-8') as f:
                # Add header comment
                f.write(f"// Generated Cypher queries for {self.extract_company_name(output_filename)}\n")
                f.write(f"// Generated on: {time.strftime('%Y-%m-%d %H:%M:%S')}\n")
                f.write(f"// Source: {output_filename.replace('.cypher', '_enriched.txt')}\n\n")
                
                # Write the Cypher content
                f.write(cypher_content)
                
            self.logger.info(f"✅ Saved Cypher queries to: {output_path}")
            return True
            
        except Exception as e:
            self.logger.error(f"❌ Error saving Cypher file {output_path}: {e}")
            return False
    
    def process_single_file(self, enriched_file: Path) -> bool:
        """Process a single enriched file and generate Cypher queries"""
        
        company_name = self.extract_company_name(enriched_file.name)
        output_filename = enriched_file.name.replace("_enriched.txt", ".cypher")
        
        self.logger.info(f"🔄 Processing: {company_name}")
        
        # Load enriched content
        enriched_content = self.load_enriched_content(enriched_file)
        if not enriched_content:
            self.logger.error(f"❌ Failed to load content for {company_name}")
            return False
        
        # Generate Cypher queries
        cypher_queries = self.gemini_client.generate_cypher(enriched_content, company_name)
        if not cypher_queries:
            self.logger.error(f"❌ Failed to generate Cypher for {company_name}")
            return False
        
        # Clean the output
        cleaned_cypher = self.gemini_client.clean_cypher_output(cypher_queries)
        
        # Validate the output
        if not self.gemini_client.validate_cypher_syntax(cleaned_cypher):
            self.logger.warning(f"⚠️ Generated Cypher may have syntax issues for {company_name}")
        
        # Save to file
        success = self.save_cypher_queries(cleaned_cypher, output_filename)
        
        if success:
            self.logger.info(f"✅ Completed processing: {company_name}")
            save_processed_file(enriched_file.name, output_filename)
        
        return success
    
    def run(self, specific_file: str = None):
        """Run the complete Cypher generation pipeline"""
        
        self.logger.info("🚀 Starting Cypher Generation Pipeline")
        self.logger.info("=" * 60)
        
        try:
            # Get files to process (incremental processing)
            enriched_files, already_processed = get_files_to_process(self.input_dir)
            
            if specific_file:
                # Process specific file only
                enriched_files = [f for f in enriched_files if f.name == specific_file]
                if not enriched_files:
                    self.logger.error(f"❌ File not found: {specific_file}")
                    return
            
            # Display incremental processing info
            all_enriched_files = [
                f for f in self.input_dir.glob("*_enriched.txt")
                if f.name not in ["SCHEMA_REFERENCE.txt", "entity_mapping_summary.json"]
            ]
            
            self.logger.info(f"📊 Total enriched files: {len(all_enriched_files)}")
            self.logger.info(f"✅ Already processed: {len(already_processed)}")
            self.logger.info(f"🔄 To process: {len(enriched_files)}")
            
            if len(already_processed) > 0:
                self.logger.info("📋 Previously processed files:")
                for filename in sorted(already_processed):
                    self.logger.info(f"   • {filename}")
            
            if len(enriched_files) == 0:
                self.logger.info("🎉 All files have been processed!")
                self.logger.info(f"💡 To reprocess all files, delete or rename {PROCESSED_FILES_FILE}")
                return
            
            self.logger.info(f"📁 Found {len(enriched_files)} files to process")
            self.logger.info(f"📂 Output directory: {self.output_dir}")
            
            # Process each file
            successful = 0
            failed = 0
            
            for i, enriched_file in enumerate(enriched_files, 1):
                self.logger.info(f"\n📄 [{i}/{len(enriched_files)}] Processing: {enriched_file.name}")
                
                try:
                    success = self.process_single_file(enriched_file)
                    if success:
                        successful += 1
                    else:
                        failed += 1
                    
                    # Rate limiting for free tier (add delay between requests)
                    if i < len(enriched_files):  # Don't wait after last file
                        self.logger.info("⏳ Waiting 5 seconds before next request...")
                        time.sleep(5)
                        
                except Exception as e:
                    self.logger.error(f"❌ Unexpected error processing {enriched_file.name}: {e}")
                    failed += 1
            
            # Final summary
            self.logger.info("\n" + "=" * 60)
            self.logger.info("📊 GENERATION SUMMARY")
            self.logger.info("=" * 60)
            self.logger.info(f"✅ Successful: {successful}")
            self.logger.info(f"❌ Failed: {failed}")
            self.logger.info(f"📁 Total processed: {successful + failed}")
            self.logger.info(f"📂 Output location: {self.output_dir.absolute()}")
            
            if successful > 0:
                self.logger.info("\n🎉 Cypher generation completed successfully!")
                self.logger.info("💡 You can now use the generated .cypher files with Neo4j")
                self.logger.info(f"📈 Total processed so far: {len(already_processed) + successful}")
                self.logger.info(f"💡 Incremental processing enabled - processed files saved to {PROCESSED_FILES_FILE}")
            else:
                self.logger.error("\n❌ No files were processed successfully")
                
        except Exception as e:
            self.logger.error(f"❌ Pipeline error: {e}")

def main():
    """Main entry point"""
    import argparse
    
    parser = argparse.ArgumentParser(description="Generate Cypher queries from enriched texts using Gemini API")
    parser.add_argument("--file", help="Process specific file only (e.g., AITKEN_SPENCE_PLC_enriched.txt)")
    parser.add_argument("--verbose", action="store_true", help="Enable verbose logging")
    
    args = parser.parse_args()
    
    if args.verbose:
        logging.getLogger().setLevel(logging.DEBUG)
    
    # Run the pipeline
    pipeline = CypherGenerationPipeline()
    pipeline.run(specific_file=args.file)

if __name__ == "__main__":
    main()
