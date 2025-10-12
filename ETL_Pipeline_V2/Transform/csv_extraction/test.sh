#!/bin/bash

# Test script to verify the virtual environment setup
echo "Testing CSV extraction virtual environment..."

# Check if virtual environment exists
if [ ! -d "csv_env" ]; then
    echo "❌ Virtual environment not found. Please run setup.sh first."
    exit 1
fi

# Activate virtual environment
source csv_env/bin/activate

# Check Python version
echo "✅ Python version: $(python --version)"

# Check installed packages
echo "✅ Installed packages:"
pip list | grep -E "(pandas|numpy)"

# Check if script exists
if [ ! -f "extract_csv.py" ]; then
    echo "❌ extract_csv.py not found"
    exit 1
fi

echo "✅ extract_csv.py found"

# Check if input directory exists
if [ ! -d "../json_generation/normalized_json" ]; then
    echo "❌ Input directory ../json_generation/normalized_json not found"
    exit 1
fi

echo "✅ Input directory found"

# Count JSON files
json_count=$(find ../json_generation/normalized_json -name "*.json" -not -name "normalization_summary.json" | wc -l)
echo "✅ Found $json_count JSON files to process"

# Deactivate virtual environment
deactivate

echo "🎉 All tests passed! Environment is ready."
