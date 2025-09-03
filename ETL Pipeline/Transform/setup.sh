#!/bin/bash

# Setup script for Name Normalization ETL Pipeline
# This script creates a virtual environment and installs all required dependencies

set -e  # Exit on any error

echo "🚀 Setting up Name Normalization ETL Pipeline Environment"
echo "=================================================="

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Create virtual environment
echo "📦 Creating virtual environment..."
python3 -m venv transform_env

# Activate virtual environment
echo "🔌 Activating virtual environment..."
source transform_env/bin/activate

# Upgrade pip
echo "📈 Upgrading pip..."
pip install --upgrade pip

# Install Python dependencies
echo "📚 Installing Python dependencies..."
pip install -r requirements.txt

# Download spaCy English model
echo "🧠 Downloading spaCy English language model..."
python -m spacy download en_core_web_sm

echo ""
echo "✅ Setup completed successfully!"
echo ""
echo "To use the environment:"
echo "1. Activate: source transform_env/bin/activate"
echo "2. Run script: python normalize_names.py"
echo "3. Deactivate: deactivate"
echo ""
echo "Directory structure:"
echo "- normalize_names.py: Main ETL script"
echo "- requirements.txt: Python dependencies"
echo "- setup.sh: This setup script"
echo "- transform_env/: Virtual environment"
echo "- cleaned_output/: Will contain transformed JSON files"
echo "- canonical_name_map.json: Will contain name mappings"
