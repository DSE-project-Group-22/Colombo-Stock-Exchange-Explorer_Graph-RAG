#!/usr/bin/env python3
"""
Simple test script to try PDF extraction with SSL fix.
"""

import ssl
import certifi
import os

# Fix SSL certificate issues
ssl._create_default_https_context = ssl._create_unverified_context
os.environ['SSL_CERT_FILE'] = certifi.where()

from pdf_text_extractor import PDFTextExtractor

def main():
    """Test PDF extraction with SSL fix."""
    
    print("Testing PDF extraction with SSL fix...")
    
    # Define paths
    reports_folder = "../Data Collection/reports"
    output_folder = "./extracted_texts"
    
    try:
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
        
        if results['processed'] > 0:
            print("\nSuccessfully extracted files:")
            for file_info in results['files']:
                if file_info['status'] == 'success':
                    print(f"✓ {file_info['pdf_file']} → {file_info['text_file']}")
                    print(f"  Characters extracted: {file_info['text_length']:,}")
        
        if results['failed'] > 0:
            print("\nFailed files:")
            for file_info in results['files']:
                if file_info['status'] != 'success':
                    print(f"✗ {file_info['pdf_file']} - {file_info['status']}")
        
    except Exception as e:
        print(f"Error: {str(e)}")
        return 1
    
    return 0

if __name__ == "__main__":
    exit_code = main()
    exit(exit_code)
