#!/usr/bin/env python3
"""
Test script to verify that all dependencies are properly installed
and the Google API key is configured correctly.
"""

import os
import sys

def test_imports():
    """Test all required imports"""
    print("🔍 Testing Python package imports...")
    
    try:
        import google.generativeai as genai
        print("✓ google-generativeai")
    except ImportError as e:
        print(f"❌ google-generativeai: {e}")
        return False
    
    try:
        from langchain.text_splitter import RecursiveCharacterTextSplitter
        print("✓ langchain")
    except ImportError as e:
        print(f"❌ langchain: {e}")
        return False
    
    try:
        from langchain_community.document_loaders import PyPDFLoader
        from langchain_community.vectorstores import Chroma
        print("✓ langchain-community")
    except ImportError as e:
        print(f"❌ langchain-community: {e}")
        return False
    
    try:
        from langchain_google_genai import GoogleGenerativeAIEmbeddings
        print("✓ langchain-google-genai")
    except ImportError as e:
        print(f"❌ langchain-google-genai: {e}")
        return False
    
    try:
        import chromadb
        print("✓ chromadb")
    except ImportError as e:
        print(f"❌ chromadb: {e}")
        return False
    
    return True

def test_api_key():
    """Test Google API key configuration"""
    print("\n🔑 Testing Google API key configuration...")
    
    api_key = os.getenv("GOOGLE_API_KEY")
    if not api_key:
        print("❌ GOOGLE_API_KEY environment variable not set")
        print("   Please set it with: export GOOGLE_API_KEY='your-api-key'")
        return False
    
    if api_key == "your-google-ai-api-key-here":
        print("❌ GOOGLE_API_KEY appears to be the default placeholder")
        print("   Please set your actual API key")
        return False
    
    if len(api_key) < 20:
        print("❌ GOOGLE_API_KEY appears to be too short")
        return False
    
    print("✓ GOOGLE_API_KEY environment variable is set")
    print(f"   Key length: {len(api_key)} characters")
    print(f"   Key preview: {api_key[:8]}...{api_key[-4:]}")
    
    return True

def test_pdf_availability():
    """Test if sample PDF files are available"""
    print("\n📄 Checking for available PDF files...")
    
    pdf_dir = "annual reports"
    if not os.path.exists(pdf_dir):
        print(f"❌ Directory '{pdf_dir}' not found")
        return False
    
    pdf_files = [f for f in os.listdir(pdf_dir) if f.endswith('.pdf')]
    if not pdf_files:
        print(f"❌ No PDF files found in '{pdf_dir}'")
        return False
    
    print(f"✓ Found {len(pdf_files)} PDF files:")
    for i, pdf_file in enumerate(pdf_files[:3], 1):  # Show first 3
        print(f"   {i}. {pdf_file}")
    if len(pdf_files) > 3:
        print(f"   ... and {len(pdf_files) - 3} more files")
    
    return True

def main():
    """Run all tests"""
    print("🧪 PDF Chunk Retrieval System - Dependency Test")
    print("=" * 55)
    
    all_passed = True
    
    # Test imports
    if not test_imports():
        all_passed = False
    
    # Test API key
    if not test_api_key():
        all_passed = False
    
    # Test PDF availability
    if not test_pdf_availability():
        all_passed = False
    
    # Summary
    print("\n" + "=" * 55)
    if all_passed:
        print("✅ All tests passed! The system is ready to use.")
        print("🚀 You can now run: python chunk_retriever.py")
    else:
        print("❌ Some tests failed. Please resolve the issues above.")
        print("📖 Check the README.md for setup instructions.")
    print("=" * 55)
    
    return 0 if all_passed else 1

if __name__ == "__main__":
    sys.exit(main())
