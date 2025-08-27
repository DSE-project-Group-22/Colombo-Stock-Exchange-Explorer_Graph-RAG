#!/bin/bash

# Cypher Generation Setup and Execution Script

echo "🚀 GEMINI CYPHER GENERATION SETUP"
echo "=================================="

# Check if we're in the right directory
if [ ! -f "requirements.txt" ]; then
    echo "❌ Error: Please run this script from the Cypher Generation directory"
    exit 1
fi

# Check if .env file exists
if [ ! -f ".env" ]; then
    echo "📝 Setting up environment file..."
    if [ -f ".env.example" ]; then
        cp .env.example .env
        echo "✅ Created .env file from .env.example"
        echo "⚠️  Please edit .env file and add your Gemini API key!"
        echo ""
        echo "To get a free Gemini API key:"
        echo "1. Go to: https://makersuite.google.com/app/apikey"
        echo "2. Create a new API key"
        echo "3. Replace 'your_gemini_api_key_here' in .env file"
        echo ""
        read -p "Press Enter when you've added your API key to .env file..."
    else
        echo "❌ .env.example file not found!"
        exit 1
    fi
fi

# Install Python dependencies
echo "📦 Installing Python dependencies..."
pip install -r requirements.txt

if [ $? -ne 0 ]; then
    echo "❌ Failed to install dependencies"
    exit 1
fi

echo "✅ Dependencies installed successfully"

# Create output directory
mkdir -p generated_cypher

# Check if preprocessed texts exist
PREPROCESSED_DIR="../Data Extraction/preprocessing/preprocessed_texts"
if [ ! -d "$PREPROCESSED_DIR" ]; then
    echo "❌ Error: Preprocessed texts directory not found: $PREPROCESSED_DIR"
    echo "Please run the preprocessing pipeline first!"
    exit 1
fi

# Count enriched files
ENRICHED_COUNT=$(find "$PREPROCESSED_DIR" -name "*_enriched.txt" | wc -l)
echo "📁 Found $ENRICHED_COUNT enriched text files to process"

if [ $ENRICHED_COUNT -eq 0 ]; then
    echo "❌ No enriched text files found!"
    echo "Please run the data preprocessing pipeline first"
    exit 1
fi

echo ""
echo "🎯 READY TO GENERATE CYPHER QUERIES"
echo "==================================="
echo "Files to process: $ENRICHED_COUNT"
echo "Output directory: ./generated_cypher/"
echo ""

# Ask user if they want to proceed
read -p "Do you want to start generating Cypher queries? (y/n): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "🚀 Starting Cypher generation..."
    python generate_cypher.py
else
    echo "⏸️  Generation cancelled. You can run it later with:"
    echo "   python generate_cypher.py"
fi

echo ""
echo "💡 USAGE TIPS:"
echo "=============="
echo "• Process single file: python generate_cypher.py --file AITKEN_SPENCE_PLC_enriched.txt"
echo "• Verbose output: python generate_cypher.py --verbose"
echo "• Generated files will be in: ./generated_cypher/"
echo "• Import to Neo4j: LOAD CSV or copy-paste the .cypher files"
