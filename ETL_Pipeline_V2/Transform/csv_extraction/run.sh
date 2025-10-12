#!/bin/bash

# Run script for CSV extraction
# This script activates the virtual environment and runs the CSV extraction

echo "Running CSV extraction..."

# Check if virtual environment exists
if [ ! -d "csv_env" ]; then
    echo "Virtual environment not found. Please run setup.sh first."
    exit 1
fi

# Activate virtual environment
source csv_env/bin/activate

# Run the CSV extraction
python extract_csv.py

# Deactivate virtual environment
deactivate

echo "CSV extraction completed!"
