#!/usr/bin/env python3
"""
Test script for Gemini Cypher Generation setup
"""

import os
import sys
from pathlib import Path

def test_environment():
    """Test environment setup"""
    print("🧪 TESTING GEMINI CYPHER GENERATION SETUP")
    print("=" * 50)
    
    # Test 1: Check if .env file exists
    print("\n1. Testing environment file...")
    if Path(".env").exists():
        print("   ✅ .env file exists")
        
        # Load and check API key
        from dotenv import load_dotenv
        load_dotenv()
        api_key = os.getenv('GEMINI_API_KEY')
        
        if api_key and api_key != "your_gemini_api_key_here":
            print("   ✅ API key configured")
        else:
            print("   ⚠️  API key not configured (placeholder found)")
            print("   📝 Please edit .env file with your actual Gemini API key")
    else:
        print("   ❌ .env file not found")
        print("   📝 Run: cp .env.example .env")
        return False
    
    # Test 2: Check dependencies
    print("\n2. Testing Python dependencies...")
    try:
        import google.generativeai as genai
        print("   ✅ google-generativeai installed")
    except ImportError:
        print("   ❌ google-generativeai not installed")
        print("   📝 Run: pip install -r requirements.txt")
        return False
    
    try:
        from dotenv import load_dotenv
        print("   ✅ python-dotenv installed")
    except ImportError:
        print("   ❌ python-dotenv not installed")
        return False
    
    # Test 3: Check input directory
    print("\n3. Testing input directory...")
    input_dir = Path("../Data Extraction/preprocessing/preprocessed_texts")
    if input_dir.exists():
        enriched_files = list(input_dir.glob("*_enriched.txt"))
        print(f"   ✅ Input directory exists with {len(enriched_files)} enriched files")
        
        if len(enriched_files) > 0:
            print(f"   📄 Sample file: {enriched_files[0].name}")
        else:
            print("   ⚠️  No enriched files found")
            print("   📝 Run data preprocessing pipeline first")
    else:
        print("   ❌ Input directory not found")
        print("   📝 Expected: ../Data Extraction/preprocessing/preprocessed_texts")
        return False
    
    # Test 4: Check output directory
    print("\n4. Testing output directory...")
    output_dir = Path("generated_cypher")
    if not output_dir.exists():
        output_dir.mkdir()
        print("   ✅ Created output directory")
    else:
        print("   ✅ Output directory exists")
    
    # Test 5: Test configuration loading
    print("\n5. Testing configuration...")
    try:
        from config import Config
        config = Config()
        print("   ✅ Configuration loaded successfully")
        print(f"   📊 Model: {config.MODEL_NAME}")
        print(f"   📊 Max tokens: {config.MAX_TOKENS}")
        print(f"   📊 Temperature: {config.TEMPERATURE}")
    except Exception as e:
        print(f"   ❌ Configuration error: {e}")
        return False
    
    # Test 6: Test Gemini client (if API key is configured)
    print("\n6. Testing Gemini client...")
    try:
        if api_key and api_key != "your_gemini_api_key_here":
            from gemini_client import GeminiCypherGenerator
            client = GeminiCypherGenerator()
            print("   ✅ Gemini client initialized successfully")
        else:
            print("   ⚠️  Skipping client test (API key not configured)")
    except Exception as e:
        print(f"   ❌ Gemini client error: {e}")
        print("   📝 Check your API key and internet connection")
        return False
    
    print("\n" + "=" * 50)
    print("🎉 SETUP VALIDATION COMPLETE")
    
    if api_key and api_key != "your_gemini_api_key_here":
        print("✅ All tests passed! Ready to generate Cypher queries.")
        print("\n🚀 To start generation:")
        print("   python generate_cypher.py")
    else:
        print("⚠️  Setup mostly complete, but please configure your API key first.")
        print("\n📝 Next steps:")
        print("   1. Edit .env file with your Gemini API key")
        print("   2. Run: python generate_cypher.py")
    
    return True

def show_usage_examples():
    """Show usage examples"""
    print("\n💡 USAGE EXAMPLES:")
    print("-" * 30)
    print("# Generate all Cypher files:")
    print("python generate_cypher.py")
    print()
    print("# Generate specific company:")
    print("python generate_cypher.py --file AITKEN_SPENCE_PLC_enriched.txt")
    print()
    print("# Verbose output:")
    print("python generate_cypher.py --verbose")
    print()
    print("# Get help:")
    print("python generate_cypher.py --help")

if __name__ == "__main__":
    success = test_environment()
    
    if success:
        show_usage_examples()
    else:
        print("\n❌ Setup incomplete. Please fix the issues above.")
        sys.exit(1)
