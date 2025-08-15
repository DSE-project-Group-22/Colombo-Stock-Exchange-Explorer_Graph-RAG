#!/bin/bash

# Setup script for PDF Text Extraction Service
# This script sets up the environment and installs dependencies

set -e  # Exit on any error

echo "CSE Explorer - PDF Text Extraction Setup"
echo "========================================"

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "📁 Working directory: $SCRIPT_DIR"

# Check if Python 3 is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is not installed. Please install Python 3.8 or higher."
    exit 1
fi

echo "✅ Python 3 found: $(python3 --version)"

# Check if pip is installed
if ! command -v pip3 &> /dev/null; then
    echo "❌ pip3 is not installed. Please install pip."
    exit 1
fi

echo "✅ pip3 found: $(pip3 --version)"

# Create virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    echo "🔧 Creating virtual environment..."
    python3 -m venv venv
else
    echo "✅ Virtual environment already exists"
fi

# Activate virtual environment
echo "🔧 Activating virtual environment..."
source venv/bin/activate

# Upgrade pip
echo "🔧 Upgrading pip..."
pip install --upgrade pip

# Install requirements
if [ -f "requirements.txt" ]; then
    echo "📦 Installing docling..."
    pip install -r requirements.txt
else
    echo "❌ requirements.txt not found"
    exit 1
fi

# Run setup test
echo ""
echo "🧪 Running setup tests..."
python test_setup.py

setup_exit_code=$?

if [ $setup_exit_code -eq 0 ]; then
    echo ""
    echo "🎉 Setup completed successfully!"
    echo ""
    echo "To use the text extraction service:"
    echo "1. Activate the virtual environment: source venv/bin/activate"
    echo "2. Run the extraction: python extract_texts.py"
    echo ""
    echo "To deactivate the virtual environment later: deactivate"
else
    echo ""
    echo "❌ Setup completed with issues. Please check the test output above."
    echo ""
    echo "If you see import errors, try installing docling manually:"
    echo "pip install docling"
    exit 1
fi