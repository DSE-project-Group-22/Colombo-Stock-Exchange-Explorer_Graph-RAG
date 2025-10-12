#!/bin/bash

# Setup script for CSV extraction virtual environment
# This script creates a virtual environment and installs dependencies

echo "Setting up CSV extraction virtual environment..."

# Create virtual environment
python3 -m venv csv_env

# Activate virtual environment
source csv_env/bin/activate

# Upgrade pip
pip install --upgrade pip

# Install requirements
pip install -r requirements.txt

echo "Virtual environment setup complete!"
echo "To activate the environment, run: source csv_env/bin/activate"
echo "To run the CSV extraction, run: python extract_csv.py"
echo "To deactivate the environment, run: deactivate"
