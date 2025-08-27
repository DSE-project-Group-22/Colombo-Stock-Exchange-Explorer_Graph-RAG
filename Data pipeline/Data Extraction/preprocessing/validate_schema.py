"""
Schema Validation Module

This module validates that the preprocessed files correctly include
the exact schema specification and all required instructions.
"""

import os
import logging
from pathlib import Path
from typing import List, Dict, bool

class SchemaValidator:
    """
    Validates preprocessed files to ensure they contain the exact schema
    specification and proper instructions for LLM processing.
    """
    
    def __init__(self, preprocessed_directory: str = "./preprocessed_texts/"):
        self.preprocessed_directory = preprocessed_directory
        self.logger = logging.getLogger(__name__)
        
        # Required schema components
        self.required_components = [
            "9.1 Database Schema",
            "Node Labels & Properties", 
            "Company",
            "Person",
            "Sector", 
            "Product",
            "Metric",
            "Relationship Types & Properties",
            "OWNS",
            "OWNS_SHARES", 
            "DIRECTOR_OF",
            "HOLDS_POSITION",
            "IN_SECTOR",
            "OFFERS",
            "HAS_METRIC",
            "AUDITED_BY",
            "MANAGES",
            "pct (float)",
            "as_of (date)",
            "count (int) or pct (float)",
            "role (string)",
            "title (string)",
            "year (int)",
            "value (float/int)",
            "description (string)"
        ]
        
        # Required instruction components
        self.required_instructions = [
            "CYPHER GENERATION INSTRUCTIONS",
            "MUST follow the exact schema definition",
            "USE EXACT IDs provided",
            "MANDATORY RELATIONSHIP TYPES TO LOOK FOR",
            "EXPECTED OUTPUT FORMAT"
        ]
    
    def validate_all_files(self) -> Dict[str, bool]:
        """Validate all preprocessed files."""
        results = {}
        
        preprocessed_path = Path(self.preprocessed_directory)
        if not preprocessed_path.exists():
            self.logger.error(f"Preprocessed directory does not exist: {self.preprocessed_directory}")
            return results
        
        enriched_files = list(preprocessed_path.glob("*_enriched.txt"))
        
        self.logger.info(f"Validating {len(enriched_files)} enriched files...")
        
        for file_path in enriched_files:
            is_valid = self.validate_file(file_path)
            results[file_path.name] = is_valid
            
            if is_valid:
                self.logger.info(f"✅ {file_path.name} - Schema validation passed")
            else:
                self.logger.error(f"❌ {file_path.name} - Schema validation failed")
        
        return results
    
    def validate_file(self, file_path: Path) -> bool:
        """Validate a single preprocessed file."""
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # Check for required schema components
            missing_schema = []
            for component in self.required_components:
                if component not in content:
                    missing_schema.append(component)
            
            # Check for required instructions
            missing_instructions = []
            for instruction in self.required_instructions:
                if instruction not in content:
                    missing_instructions.append(instruction)
            
            # Log missing components
            if missing_schema:
                self.logger.warning(f"Missing schema components in {file_path.name}: {missing_schema}")
            
            if missing_instructions:
                self.logger.warning(f"Missing instructions in {file_path.name}: {missing_instructions}")
            
            # File is valid if no missing components
            return len(missing_schema) == 0 and len(missing_instructions) == 0
            
        except Exception as e:
            self.logger.error(f"Error validating {file_path}: {e}")
            return False
    
    def validate_schema_reference(self) -> bool:
        """Validate the schema reference file."""
        schema_path = Path(self.preprocessed_directory) / "SCHEMA_REFERENCE.txt"
        
        if not schema_path.exists():
            self.logger.error("Schema reference file does not exist")
            return False
        
        return self.validate_file(schema_path)
    
    def generate_validation_report(self) -> str:
        """Generate a comprehensive validation report."""
        results = self.validate_all_files()
        schema_ref_valid = self.validate_schema_reference()
        
        total_files = len(results)
        valid_files = sum(results.values())
        success_rate = (valid_files / total_files) if total_files > 0 else 0
        
        report = f"""
===== SCHEMA VALIDATION REPORT =====

Validation Summary:
✅ Valid files: {valid_files}/{total_files} ({success_rate:.1%})
📁 Directory: {self.preprocessed_directory}

Schema Reference File:
{'✅ Valid' if schema_ref_valid else '❌ Invalid'} - SCHEMA_REFERENCE.txt

Individual File Results:
"""
        
        for filename, is_valid in results.items():
            status = "✅ Valid" if is_valid else "❌ Invalid"
            report += f"   {status} - {filename}\n"
        
        if valid_files == total_files and schema_ref_valid:
            report += "\n🎉 All files passed schema validation!"
            report += "\n📤 Ready for LLM processing with exact schema compliance"
        else:
            report += "\n⚠️ Some files failed validation. Check logs for details."
            report += "\n🔧 Run preprocessing again to fix validation issues."
        
        return report
    
    def check_specific_requirements(self, file_path: Path) -> Dict[str, bool]:
        """Check specific schema requirements in detail."""
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            checks = {
                'has_exact_schema_title': '9.1 Database Schema' in content,
                'has_company_properties': 'id (string, unique)' in content and 'name (string)' in content,
                'has_all_node_types': all(node in content for node in ['Company', 'Person', 'Sector', 'Product', 'Metric']),
                'has_owns_relationship': 'OWNS]->(child:Company)' in content and 'pct (float)' in content,
                'has_owns_shares': 'OWNS_SHARES]->(company:Company)' in content,
                'has_director_of': 'DIRECTOR_OF]->(company:Company)' in content and 'role (string)' in content,
                'has_holds_position': 'HOLDS_POSITION]->(company:Company)' in content and 'title (string)' in content,
                'has_financial_metrics': 'HAS_METRIC]->(metric:Metric)' in content and 'value (float/int)' in content,
                'has_exact_instructions': 'MUST follow the exact schema definition' in content,
                'has_mandatory_relationships': 'MANDATORY RELATIONSHIP TYPES TO LOOK FOR' in content,
                'has_cypher_examples': 'CREATE (:Company' in content or 'CREATE (:Person' in content
            }
            
            return checks
            
        except Exception as e:
            self.logger.error(f"Error checking requirements for {file_path}: {e}")
            return {}

def main():
    """Run schema validation."""
    validator = SchemaValidator()
    
    # Generate and display validation report
    report = validator.generate_validation_report()
    print(report)
    
    # Detailed check for first file (example)
    preprocessed_path = Path(validator.preprocessed_directory)
    enriched_files = list(preprocessed_path.glob("*_enriched.txt"))
    
    if enriched_files:
        print(f"\n📋 Detailed check for {enriched_files[0].name}:")
        detailed_checks = validator.check_specific_requirements(enriched_files[0])
        
        for check_name, passed in detailed_checks.items():
            status = "✅" if passed else "❌"
            print(f"   {status} {check_name.replace('_', ' ').title()}")

if __name__ == "__main__":
    main()
