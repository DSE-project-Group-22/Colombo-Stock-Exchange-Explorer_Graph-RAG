#!/usr/bin/env python3
"""
Test script to verify the PDF text extraction setup.
"""

import os
import sys
from pathlib import Path

def test_imports():
    """Test if all required modules can be imported."""
    print("Testing imports...")
    
    try:
        import docling
        print("✅ Docling imported successfully")
    except ImportError as e:
        print(f"❌ Failed to import docling: {e}")
        return False
    
    try:
        from docling.document_converter import DocumentConverter
        print("✅ DocumentConverter imported successfully")
    except ImportError as e:
        print(f"❌ Failed to import DocumentConverter: {e}")
        return False
    
    try:
        from pdf_text_extractor import PDFTextExtractor
        print("✅ PDFTextExtractor imported successfully")
    except ImportError as e:
        print(f"❌ Failed to import PDFTextExtractor: {e}")
        return False
    
    return True

def test_folder_structure():
    """Test if required folders exist."""
    print("\nTesting folder structure...")
    
    current_dir = Path(__file__).parent
    reports_folder = current_dir / ".." / "Data Collection" / "reports"
    
    if reports_folder.exists():
        print(f"✅ Reports folder found: {reports_folder.resolve()}")
        
        # Check for PDF files
        pdf_files = list(reports_folder.glob("*.pdf"))
        if pdf_files:
            print(f"✅ Found {len(pdf_files)} PDF file(s):")
            for pdf_file in pdf_files:
                print(f"   - {pdf_file.name}")
        else:
            print("⚠️  No PDF files found in reports folder")
    else:
        print(f"❌ Reports folder not found: {reports_folder.resolve()}")
        return False
    
    return True

def test_docling_functionality():
    """Test basic Docling functionality."""
    print("\nTesting Docling functionality...")
    
    try:
        from docling.document_converter import DocumentConverter
        converter = DocumentConverter()
        print("✅ DocumentConverter initialized successfully")
        return True
    except Exception as e:
        print(f"❌ Failed to initialize DocumentConverter: {e}")
        return False

def test_output_folder():
    """Test output folder creation."""
    print("\nTesting output folder creation...")
    
    try:
        current_dir = Path(__file__).parent
        output_folder = current_dir / "extracted_texts"
        
        # Create output folder
        output_folder.mkdir(parents=True, exist_ok=True)
        
        if output_folder.exists():
            print(f"✅ Output folder created/verified: {output_folder}")
        else:
            print("❌ Failed to create output folder")
            return False
        
        return True
    except Exception as e:
        print(f"❌ Output folder test failed: {e}")
        return False

def main():
    """Run all tests."""
    print("CSE Explorer - PDF Text Extraction Setup Test")
    print("=" * 50)
    
    tests = [
        ("Module Imports", test_imports),
        ("Folder Structure", test_folder_structure),
        ("Docling Functionality", test_docling_functionality),
        ("Output Folder", test_output_folder)
    ]
    
    passed = 0
    total = len(tests)
    
    for test_name, test_func in tests:
        print(f"\n{test_name}:")
        print("-" * len(test_name))
        
        try:
            if test_func():
                passed += 1
        except Exception as e:
            print(f"❌ Test failed with exception: {e}")
    
    print("\n" + "=" * 50)
    print("TEST SUMMARY")
    print("=" * 50)
    print(f"Passed: {passed}/{total}")
    
    if passed == total:
        print("🎉 All tests passed! The setup is ready.")
        print("\nYou can now run the extraction with:")
        print("python extract_texts.py")
        return 0
    else:
        print("❌ Some tests failed. Please check the issues above.")
        print("\nTo install docling, run:")
        print("pip install docling")
        return 1

if __name__ == "__main__":
    exit_code = main()
    sys.exit(exit_code)