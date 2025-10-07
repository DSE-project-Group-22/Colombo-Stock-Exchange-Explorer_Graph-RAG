#!/bin/bash

# Setup script for Load phase
echo "Setting up Load phase environment..."

# Check if Python is available
if ! command -v python3 &> /dev/null; then
    echo "Python 3 is required but not installed. Please install Python 3."
    exit 1
fi

# Create virtual environment
echo "Creating virtual environment..."
python3 -m venv load_env

# Activate virtual environment
echo "Activating virtual environment..."
source load_env/bin/activate

# Install dependencies
echo "Installing dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

echo "Setup complete!"
echo ""
echo "To activate the environment, run:"
echo "source load_env/bin/activate"
echo ""
echo "To run the script, use:"
echo "python generate_cypher_queries.py"
