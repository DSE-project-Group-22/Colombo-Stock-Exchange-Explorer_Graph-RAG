import os
import logging
from pathlib import Path
from typing import List, Optional
from docling.document_converter import DocumentConverter

# Configure logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)

class PDFTextExtractor:
    """Extract text from PDF files using Docling and save to text files."""
    
    def __init__(self, reports_folder: str, output_folder: str):
        """
        Initialize the PDF text extractor.
        
        Args:
            reports_folder (str): Path to folder containing PDF reports
            output_folder (str): Path to folder where extracted text will be saved
        """
        self.reports_folder = Path(reports_folder)
        self.output_folder = Path(output_folder)
        self.converter = DocumentConverter()
        
        # Create output folder if it doesn't exist
        self.output_folder.mkdir(parents=True, exist_ok=True)
        
        logger.info(f"Initialized PDFTextExtractor with reports folder: {self.reports_folder}")
        logger.info(f"Output folder: {self.output_folder}")
    
    def get_pdf_files(self) -> List[Path]:
        """
        Get all PDF files from the reports folder.
        
        Returns:
            List[Path]: List of PDF file paths
        """
        pdf_files = list(self.reports_folder.glob("*.pdf"))
        logger.info(f"Found {len(pdf_files)} PDF files in {self.reports_folder}")
        return pdf_files
    
    def extract_text_from_pdf(self, pdf_path: Path) -> Optional[str]:
        """
        Extract text from a single PDF file using Docling.
        
        Args:
            pdf_path (Path): Path to the PDF file
            
        Returns:
            Optional[str]: Extracted text or None if extraction failed
        """
        try:
            logger.info(f"Extracting text from: {pdf_path.name}")
            
            # Convert PDF document using Docling
            result = self.converter.convert(pdf_path)
            
            # Extract markdown text (preserves structure)
            extracted_text = result.document.export_to_markdown()
            
            logger.info(f"Successfully extracted text from {pdf_path.name} ({len(extracted_text)} characters)")
            return extracted_text
            
        except Exception as e:
            logger.error(f"Error extracting text from {pdf_path.name}: {str(e)}")
            return None
    
    def save_extracted_text(self, text: str, original_pdf_name: str) -> Path:
        """
        Save extracted text to a file.
        
        Args:
            text (str): Extracted text
            original_pdf_name (str): Original PDF filename
            
        Returns:
            Path: Path to the saved text file
        """
        # Create output filename by replacing .pdf with .txt
        output_filename = original_pdf_name.replace('.pdf', '_extracted.txt')
        output_path = self.output_folder / output_filename
        
        try:
            with open(output_path, 'w', encoding='utf-8') as f:
                f.write(text)
            
            logger.info(f"Saved extracted text to: {output_path}")
            return output_path
            
        except Exception as e:
            logger.error(f"Error saving text to {output_path}: {str(e)}")
            raise
    
    def process_all_pdfs(self) -> dict:
        """
        Process all PDF files in the reports folder.
        
        Returns:
            dict: Dictionary with processing results
        """
        pdf_files = self.get_pdf_files()
        
        if not pdf_files:
            logger.warning("No PDF files found in the reports folder")
            return {"processed": 0, "failed": 0, "files": []}
        
        results = {
            "processed": 0,
            "failed": 0,
            "files": []
        }
        
        for pdf_file in pdf_files:
            logger.info(f"Processing: {pdf_file.name}")
            
            # Extract text
            extracted_text = self.extract_text_from_pdf(pdf_file)
            
            if extracted_text:
                try:
                    # Save extracted text
                    output_path = self.save_extracted_text(extracted_text, pdf_file.name)
                    
                    results["processed"] += 1
                    results["files"].append({
                        "pdf_file": str(pdf_file),
                        "text_file": str(output_path),
                        "status": "success",
                        "text_length": len(extracted_text)
                    })
                    
                    logger.info(f"Successfully processed: {pdf_file.name}")
                    
                except Exception as e:
                    logger.error(f"Failed to save text for {pdf_file.name}: {str(e)}")
                    results["failed"] += 1
                    results["files"].append({
                        "pdf_file": str(pdf_file),
                        "text_file": None,
                        "status": "save_failed",
                        "error": str(e)
                    })
            else:
                results["failed"] += 1
                results["files"].append({
                    "pdf_file": str(pdf_file),
                    "text_file": None,
                    "status": "extraction_failed"
                })
        
        logger.info(f"Processing complete. Processed: {results['processed']}, Failed: {results['failed']}")
        return results
    
    def process_single_pdf(self, pdf_filename: str) -> Optional[Path]:
        """
        Process a single PDF file by filename.
        
        Args:
            pdf_filename (str): Name of the PDF file to process
            
        Returns:
            Optional[Path]: Path to the extracted text file or None if failed
        """
        pdf_path = self.reports_folder / pdf_filename
        
        if not pdf_path.exists():
            logger.error(f"PDF file not found: {pdf_path}")
            return None
        
        logger.info(f"Processing single PDF: {pdf_filename}")
        
        # Extract text
        extracted_text = self.extract_text_from_pdf(pdf_path)
        
        if extracted_text:
            try:
                # Save extracted text
                output_path = self.save_extracted_text(extracted_text, pdf_filename)
                logger.info(f"Successfully processed: {pdf_filename}")
                return output_path
                
            except Exception as e:
                logger.error(f"Failed to save text for {pdf_filename}: {str(e)}")
                return None
        else:
            logger.error(f"Failed to extract text from: {pdf_filename}")
            return None


def main():
    """Main function to demonstrate the PDF text extraction."""
    
    # Define paths
    reports_folder = "../Data Collection/reports"
    output_folder = "./extracted_texts"
    
    # Initialize extractor
    extractor = PDFTextExtractor(reports_folder, output_folder)
    
    # Process all PDFs
    results = extractor.process_all_pdfs()
    
    # Print summary
    print("\n" + "="*50)
    print("EXTRACTION SUMMARY")
    print("="*50)
    print(f"Total files processed successfully: {results['processed']}")
    print(f"Total files failed: {results['failed']}")
    print("\nDetails:")
    
    for file_info in results['files']:
        status = file_info['status']
        pdf_name = Path(file_info['pdf_file']).name
        
        if status == "success":
            text_name = Path(file_info['text_file']).name
            text_length = file_info['text_length']
            print(f"✓ {pdf_name} → {text_name} ({text_length:,} characters)")
        else:
            print(f"✗ {pdf_name} - {status}")
            if 'error' in file_info:
                print(f"  Error: {file_info['error']}")


if __name__ == "__main__":
    main()