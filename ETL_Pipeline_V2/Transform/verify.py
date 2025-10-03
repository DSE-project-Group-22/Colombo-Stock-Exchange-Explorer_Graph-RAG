#!/usr/bin/env python3
"""
Load Phase Verification Script
Checks that all components are properly set up and ready to use.
"""

import os
import sys

def check_file_exists(filepath, description):
    """Check if a file exists and report its status."""
    if os.path.exists(filepath):
        size = os.path.getsize(filepath)
        if size > 0:
            print(f"✅ {description}: {filepath} ({size} bytes)")
            return True
        else:
            print(f"⚠️  {description}: {filepath} (empty file)")
            return False
    else:
        print(f"❌ {description}: {filepath} (missing)")
        return False

def check_directory_structure():
    """Verify the Load phase directory structure."""
    print("🔍 Checking Load Phase Structure")
    print("=" * 50)
    
    required_files = [
        ("generate_cypher_queries.py", "Main script"),
        ("requirements.txt", "Dependencies"),
        ("setup.sh", "Setup script"),
        ("run.sh", "Run script"), 
        ("test_load.py", "Test suite"),
        ("README.md", "Documentation"),
        ("USAGE.md", "Usage guide"),
        (".env.example", "Environment template")
    ]
    
    all_good = True
    for filename, description in required_files:
        if not check_file_exists(filename, description):
            all_good = False
    
    return all_good

def check_transform_output():
    """Check if Transform phase output is available."""
    print(f"\n🔍 Checking Transform Phase Output")
    print("=" * 50)
    
    transform_dir = "../Transform/cleaned_output"
    if os.path.exists(transform_dir):
        json_files = [f for f in os.listdir(transform_dir) if f.endswith('.json')]
        if json_files:
            print(f"✅ Found {len(json_files)} JSON files in Transform output")
            print("   Sample files:")
            for f in json_files[:3]:
                print(f"   - {f}")
            if len(json_files) > 3:
                print(f"   ... and {len(json_files) - 3} more")
            return True
        else:
            print("⚠️  Transform directory exists but no JSON files found")
            return False
    else:
        print("❌ Transform output directory not found")
        print("   Please run the Transform phase first")
        return False

def check_python_environment():
    """Check Python environment and dependencies."""
    print(f"\n🔍 Checking Python Environment")
    print("=" * 50)
    
    print(f"✅ Python version: {sys.version}")
    
    # Check if we can import required modules
    try:
        import json
        print("✅ json module available")
    except ImportError:
        print("❌ json module not available")
        return False
    
    # Check optional dependencies
    try:
        import google.generativeai
        print("✅ google-generativeai available")
    except ImportError:
        print("⚠️  google-generativeai not installed (run setup.sh to install)")
    
    try:
        from dotenv import load_dotenv
        print("✅ python-dotenv available")
    except ImportError:
        print("⚠️  python-dotenv not installed (run setup.sh to install)")
    
    return True

def check_permissions():
    """Check file permissions."""
    print(f"\n🔍 Checking File Permissions")
    print("=" * 50)
    
    executable_files = ["setup.sh", "run.sh"]
    all_good = True
    
    for filename in executable_files:
        if os.path.exists(filename):
            if os.access(filename, os.X_OK):
                print(f"✅ {filename} is executable")
            else:
                print(f"⚠️  {filename} needs execute permission")
                print(f"   Run: chmod +x {filename}")
                all_good = False
        else:
            print(f"❌ {filename} not found")
            all_good = False
    
    return all_good

def main():
    """Run all verification checks."""
    print("🚀 Load Phase Verification")
    print("=" * 60)
    print("This script checks if the Load phase is properly set up.")
    print("=" * 60)
    
    checks = [
        ("Directory Structure", check_directory_structure),
        ("Transform Output", check_transform_output), 
        ("Python Environment", check_python_environment),
        ("File Permissions", check_permissions)
    ]
    
    results = {}
    for check_name, check_func in checks:
        results[check_name] = check_func()
    
    # Summary
    print("\n" + "=" * 60)
    print("📋 VERIFICATION SUMMARY")
    print("=" * 60)
    
    all_passed = True
    for check_name, passed in results.items():
        status = "✅ PASS" if passed else "❌ FAIL"
        print(f"{status} {check_name}")
        if not passed:
            all_passed = False
    
    print("\n" + "=" * 60)
    if all_passed:
        print("🎉 ALL CHECKS PASSED!")
        print("The Load phase is ready to use.")
        print("\nNext steps:")
        print("1. Get Gemini API key from: https://makersuite.google.com/app/apikey")
        print("2. Copy .env.example to .env and add your API key")
        print("3. Run: ./run.sh")
    else:
        print("⚠️  SOME CHECKS FAILED")
        print("Please address the issues above before proceeding.")
    print("=" * 60)
    
    return all_passed

if __name__ == "__main__":
    success = main()
    sys.exit(0 if success else 1)
