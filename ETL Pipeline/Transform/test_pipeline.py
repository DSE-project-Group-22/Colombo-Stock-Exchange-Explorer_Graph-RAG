#!/usr/bin/env python3
"""
Test script to verify the Name Normalization ETL Pipeline functionality
"""

import os
import json
import sys
from pathlib import Path

def test_dependencies():
    """Test that all required dependencies are available"""
    print("🧪 Testing dependencies...")
    try:
        import spacy
        import thefuzz
        from thefuzz import fuzz
        print(f"✅ spaCy version: {spacy.__version__}")
        print(f"✅ thefuzz imported successfully")
        
        # Test spaCy model
        nlp = spacy.load('en_core_web_sm')
        print("✅ spaCy English model loaded successfully")
        
        # Test fuzzy matching
        score = fuzz.ratio("John Smith", "J. Smith")
        print(f"✅ Fuzzy matching test: {score}")
        
        return True
    except Exception as e:
        print(f"❌ Dependency error: {e}")
        return False

def test_file_structure():
    """Test that all required files exist"""
    print("\n📁 Testing file structure...")
    
    current_dir = Path(__file__).parent
    expected_files = [
        "normalize_names.py",
        "requirements.txt",
        "setup.sh",
        "README.md"
    ]
    
    expected_dirs = [
        "transform_env",
        "cleaned_output"
    ]
    
    all_good = True
    
    for file in expected_files:
        file_path = current_dir / file
        if file_path.exists():
            print(f"✅ {file}")
        else:
            print(f"❌ {file} - Missing")
            all_good = False
    
    for dir_name in expected_dirs:
        dir_path = current_dir / dir_name
        if dir_path.exists():
            print(f"✅ {dir_name}/")
        else:
            print(f"❌ {dir_name}/ - Missing")
            all_good = False
    
    return all_good

def test_canonical_map():
    """Test the canonical name mapping"""
    print("\n🗺️  Testing canonical name mapping...")
    
    map_file = Path(__file__).parent / "canonical_name_map.json"
    if not map_file.exists():
        print("❌ canonical_name_map.json not found")
        return False
    
    try:
        with open(map_file, 'r') as f:
            name_map = json.load(f)
        
        print(f"✅ Canonical map loaded with {len(name_map)} entries")
        
        # Show some examples
        print("📝 Sample mappings:")
        count = 0
        for original, canonical in name_map.items():
            if original != canonical and count < 3:
                print(f"   '{original}' → '{canonical}'")
                count += 1
        
        return True
    except Exception as e:
        print(f"❌ Error reading canonical map: {e}")
        return False

def test_output_files():
    """Test that output files were created"""
    print("\n📄 Testing output files...")
    
    output_dir = Path(__file__).parent / "cleaned_output"
    if not output_dir.exists():
        print("❌ cleaned_output directory not found")
        return False
    
    json_files = list(output_dir.glob("*.json"))
    print(f"✅ Found {len(json_files)} cleaned JSON files")
    
    if len(json_files) == 0:
        print("⚠️  No output files found - pipeline may not have run yet")
        return False
    
    # Test one file structure
    test_file = json_files[0]
    try:
        with open(test_file, 'r') as f:
            data = json.load(f)
        
        # Check for our metadata
        if 'metadata' in data and 'name_normalization_applied' in data['metadata']:
            print("✅ Output files contain normalization metadata")
        else:
            print("⚠️  Output files missing normalization metadata")
        
        return True
    except Exception as e:
        print(f"❌ Error reading output file: {e}")
        return False

def test_source_files():
    """Test that source files are accessible"""
    print("\n📚 Testing source files...")
    
    source_dir = Path("/Users/bashithashamila/Web Development/Vector Database/Extract/batch_output")
    if not source_dir.exists():
        print("❌ Source directory not found")
        return False
    
    json_files = [f for f in os.listdir(source_dir) if f.endswith('.json') and f != 'batch_processing_summary.json']
    print(f"✅ Found {len(json_files)} source JSON files")
    
    if len(json_files) == 0:
        print("❌ No source JSON files found")
        return False
    
    return True

def run_mini_test():
    """Run a small test with sample data"""
    print("\n🚀 Running mini functional test...")
    
    try:
        from normalize_names import extract_person_names, load_spacy_model, create_canonical_map, transform_chunk
        
        # Load model
        nlp = load_spacy_model('en_core_web_sm')
        
        # Test name extraction
        test_text = "Mr. John Smith and Dr. Jane Doe are the directors. John Smith is the chairman."
        names = extract_person_names(test_text, nlp)
        print(f"✅ Extracted names: {names}")
        
        # Test canonical mapping
        test_names = {"John Smith", "J. Smith", "Jane Doe", "Dr. Jane Doe"}
        canonical_map = create_canonical_map(test_names, 85)
        print(f"✅ Created canonical map: {canonical_map}")
        
        # Test transformation
        transformed = transform_chunk(test_text, canonical_map)
        print(f"✅ Transformed text: {transformed}")
        
        return True
    except Exception as e:
        print(f"❌ Mini test failed: {e}")
        return False

def main():
    """Run all tests"""
    print("🧪 Name Normalization ETL Pipeline - Test Suite")
    print("=" * 60)
    
    tests = [
        ("Dependencies", test_dependencies),
        ("File Structure", test_file_structure),
        ("Source Files", test_source_files),
        ("Canonical Map", test_canonical_map),
        ("Output Files", test_output_files),
        ("Mini Functional Test", run_mini_test)
    ]
    
    passed = 0
    total = len(tests)
    
    for test_name, test_func in tests:
        try:
            if test_func():
                passed += 1
        except Exception as e:
            print(f"❌ {test_name} failed with exception: {e}")
    
    print("\n" + "=" * 60)
    print(f"🎯 Test Results: {passed}/{total} tests passed")
    
    if passed == total:
        print("🎉 All tests passed! The pipeline is ready to use.")
        return 0
    else:
        print("⚠️  Some tests failed. Please check the issues above.")
        return 1

if __name__ == "__main__":
    sys.exit(main())
