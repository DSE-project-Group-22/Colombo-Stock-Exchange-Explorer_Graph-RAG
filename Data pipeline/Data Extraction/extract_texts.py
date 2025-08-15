#!/usr/bin/env python3
"""
Simple script to extract text from PDF reports using Docling.
This script processes the PDF files and saves extracted text for further processing.
"""

from pdf_text_extractor import PDFTextExtractor
import sys
import os

def main():
    """Run the PDF text extraction process."""
    
    print("CSE Explorer - PDF Text Extraction Tool")
    print("="*40)
    
    # Define paths relative to this script
    current_dir = os.path.dirname(os.path.abspath(__file__))
    reports_folder = os.path.join(current_dir, "..", "Data Collection", "reports")
    output_folder = os.path.join(current_dir, "extracted_texts")
    
    # Check if reports folder exists
    if not os.path.exists(reports_folder):
        print(f"Error: Reports folder not found at {reports_folder}")
        print("Please ensure the Data Collection/reports folder exists with PDF files.")
        return 1
    
    try:
        # Initialize extractor
        print(f"Reports folder: {reports_folder}")
        print(f"Output folder: {output_folder}")
        print()
        
        extractor = PDFTextExtractor(reports_folder, output_folder)
        
        # Process all PDFs
        print("Starting PDF text extraction...")
        results = extractor.process_all_pdfs()
        
        # Print detailed results
        print("\n" + "="*60)
        print("EXTRACTION COMPLETE")
        print("="*60)
        
        if results['processed'] > 0:
            print(f"✅ Successfully processed {results['processed']} file(s)")
        
        if results['failed'] > 0:
            print(f"❌ Failed to process {results['failed']} file(s)")
        
        print("\nFile Details:")
        print("-" * 40)
        
        for file_info in results['files']:
            pdf_name = os.path.basename(file_info['pdf_file'])
            status = file_info['status']
            
            if status == "success":
                text_name = os.path.basename(file_info['text_file'])
                text_length = file_info.get('text_length', 0)
                print(f"📄 {pdf_name}")
                print(f"   → {text_name} ({text_length:,} characters)")
            else:
                print(f"📄 {pdf_name} - ❌ {status}")
                if 'error' in file_info:
                    print(f"   Error: {file_info['error']}")
        
        print(f"\nExtracted text files saved to: {output_folder}")
        
        return 0 if results['failed'] == 0 else 1
        
    except Exception as e:
        print(f"Error during extraction: {str(e)}")
        return 1

if __name__ == "__main__":
    exit_code = main()
    sys.exit(exit_code)