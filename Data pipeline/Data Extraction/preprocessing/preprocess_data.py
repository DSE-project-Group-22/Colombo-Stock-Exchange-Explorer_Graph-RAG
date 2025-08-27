"""
Data Preprocessing Module

This module performs complete preprocessing of annual report texts,
including entity normalization, ID mapping, and context enrichment
for stateless LLM Cypher query generation.
Processes all files each time (no incremental processing).
"""

import os
import logging
from pathlib import Path
from typing import List, Dict
from entity_mapper import EntityMapper
from text_enricher import TextEnricher

class DataPreprocessor:
    """
    Main preprocessor that coordinates entity mapping and text enrichment
    to create LLM-ready files with all necessary context.
    """
    
    def __init__(self, 
                 input_directory: str = "../extracted_texts/",
                 output_directory: str = "./preprocessed_texts/",
                 entity_mapping_path: str = "../output/entity_mapping.json",
                 persons_path: str = "../output/canonical_person_entities.json",
                 companies_path: str = "../output/neo4j_company_nodes.json"):
        
        self.input_directory = input_directory
        self.output_directory = output_directory
        
        # Initialize logging
        logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
        self.logger = logging.getLogger(__name__)
        
        # Create output directory
        Path(self.output_directory).mkdir(parents=True, exist_ok=True)
        
        # Initialize entity mapper
        self.entity_mapper = EntityMapper(
            entity_mapping_path=entity_mapping_path,
            persons_path=persons_path,
            companies_path=companies_path
        )
        
        # Initialize text enricher
        self.text_enricher = TextEnricher(self.entity_mapper)
        
        self.logger.info("Data Preprocessor initialized")
    
    def preprocess_all_texts(self):
        """
        Main method to preprocess all text files in the input directory.
        Processes all files each time (no incremental processing).
        """
        self.logger.info("Starting data preprocessing...")
        
        # Get all text files to process
        input_path = Path(self.input_directory)
        all_files = list(input_path.glob("*.txt"))
        
        self.logger.info(f"📊 Input directory: {self.input_directory}")
        self.logger.info(f"📊 Total text files: {len(all_files)}")
        self.logger.info(f"🔄 Processing all files (no incremental processing)")
        
        if len(all_files) == 0:
            self.logger.info("❌ No text files found in the input directory!")
            self.logger.info(f"💡 Make sure there are .txt files in {self.input_directory}")
            return
        
        self.logger.info(f"Found {len(all_files)} text files to preprocess")
        
        # Process each file
        processed_count = 0
        failed_count = 0
        
        for text_file in all_files:
            try:
                # Extract company name from filename
                company_name = self._extract_company_name(text_file.stem)
                
                self.logger.info(f"Processing {company_name}...")
                
                # Enrich the text
                enriched_content = self.text_enricher.enrich_text_file(
                    str(text_file), company_name
                )
                
                if enriched_content:
                    # Save enriched file
                    output_filename = f"{text_file.stem}_enriched.txt"
                    output_path = Path(self.output_directory) / output_filename
                    
                    with open(output_path, 'w', encoding='utf-8') as f:
                        f.write(enriched_content)
                    
                    self.logger.info(f"✅ Created {output_filename}")
                    processed_count += 1
                else:
                    self.logger.error(f"❌ Failed to enrich {text_file.name}")
                    failed_count += 1
                    
            except Exception as e:
                self.logger.error(f"❌ Error processing {text_file.name}: {e}")
                failed_count += 1
        
        # Generate schema reference file
        self._generate_schema_reference()
        
        # Generate entity mapping summary
        self._generate_entity_summary()
        
        # Log summary
        self.logger.info(f"""
Preprocessing completed!
✅ Successfully processed: {processed_count} files
❌ Failed: {failed_count} files
📁 Output directory: {self.output_directory}
📈 Total files processed: {processed_count}
        """)
        
        # Display entity summary
        entity_summary = self.entity_mapper.get_entity_summary()
        self.logger.info(f"""
Entity Summary:
👤 Persons: {entity_summary['persons']}
🏢 Companies: {entity_summary['companies']}
🏭 Sectors: {entity_summary['sectors']}
📦 Products: {entity_summary['products']}
📊 Metrics: {entity_summary['metrics']}
🔗 Total mappings: {entity_summary['total_mappings']}
        """)
    
    def _extract_company_name(self, filename: str) -> str:
        """Extract company name from filename."""
        # Convert filename to readable company name
        # e.g., "ABANS_ELECTRICALS_PLC" -> "Abans Electricals PLC"
        return filename.replace("_", " ").title()
    
    def _generate_schema_reference(self):
        """Generate a schema reference file for LLM processing."""
        schema_content = self.text_enricher.create_schema_reference()
        
        schema_path = Path(self.output_directory) / "SCHEMA_REFERENCE.txt"
        with open(schema_path, 'w', encoding='utf-8') as f:
            f.write(schema_content)
        
        self.logger.info("✅ Generated schema reference file")
    
    def _generate_entity_summary(self):
        """Generate entity mapping summary for reference."""
        summary = {
            "preprocessing_summary": {
                "total_files_processed": len(list(Path(self.output_directory).glob("*_enriched.txt"))),
                "entity_counts": self.entity_mapper.get_entity_summary(),
                "output_directory": str(self.output_directory)
            },
            "existing_entities": {
                "companies": [
                    {"id": comp.id, "name": comp.name}
                    for comp in self.entity_mapper.get_all_companies().values()
                ],
                "persons": [
                    {"id": person.id, "name": person.name}
                    for person in self.entity_mapper.get_all_persons().values()
                ]
            },
            "new_entities": self.entity_mapper.export_new_entities()
        }
        
        summary_path = Path(self.output_directory) / "entity_mapping_summary.json"
        with open(summary_path, 'w', encoding='utf-8') as f:
            import json
            json.dump(summary, f, indent=2)
        
        self.logger.info("✅ Generated entity mapping summary")
    
    def verify_preprocessing(self):
        """Verify that preprocessing was completed successfully."""
        output_path = Path(self.output_directory)
        
        # Check if output directory exists
        if not output_path.exists():
            self.logger.error("❌ Output directory does not exist")
            return False
        
        # Count enriched files
        enriched_files = list(output_path.glob("*_enriched.txt"))
        input_files = list(Path(self.input_directory).glob("*.txt"))
        
        self.logger.info(f"📊 Verification results:")
        self.logger.info(f"   Input files: {len(input_files)}")
        self.logger.info(f"   Enriched files: {len(enriched_files)}")
        
        # Check for schema reference
        schema_file = output_path / "SCHEMA_REFERENCE.txt"
        if schema_file.exists():
            self.logger.info("   ✅ Schema reference file exists")
        else:
            self.logger.warning("   ⚠️ Schema reference file missing")
        
        # Check for entity summary
        summary_file = output_path / "entity_mapping_summary.json"
        if summary_file.exists():
            self.logger.info("   ✅ Entity mapping summary exists")
        else:
            self.logger.warning("   ⚠️ Entity mapping summary missing")
        
        success_rate = len(enriched_files) / len(input_files) if input_files else 0
        self.logger.info(f"   📈 Success rate: {success_rate:.1%}")
        
        return success_rate > 0.8  # Consider successful if 80%+ files processed
    
    def list_preprocessed_files(self) -> List[str]:
        """List all preprocessed files ready for LLM processing."""
        output_path = Path(self.output_directory)
        enriched_files = list(output_path.glob("*_enriched.txt"))
        
        files_info = []
        for file_path in enriched_files:
            file_size = file_path.stat().st_size
            files_info.append(f"{file_path.name} ({file_size:,} bytes)")
        
        return files_info

def main():
    """Main function to run data preprocessing."""
    preprocessor = DataPreprocessor()
    
    # Run preprocessing
    preprocessor.preprocess_all_texts()
    
    # Verify results
    if preprocessor.verify_preprocessing():
        print("\n🎉 Preprocessing completed successfully!")
        print(f"📁 Preprocessed files are ready in: {preprocessor.output_directory}")
        print("\n📋 Files ready for LLM processing:")
        
        for file_info in preprocessor.list_preprocessed_files():
            print(f"   {file_info}")
        
        print("\n🚀 Next steps:")
        print("   1. Use the enriched files for LLM Cypher query generation")
        print("   2. Each file contains all necessary context and entity mappings")
        print("   3. LLM processing can be completely stateless")
    else:
        print("\n❌ Preprocessing failed or incomplete. Check logs for details.")

if __name__ == "__main__":
    main()
