#!/bin/bash

# Run script for Load phase
echo "Starting Load Phase - Cypher Query Generation"
echo "=============================================="

# Check if virtual environment exists
if [ ! -d "load_env" ]; then
    echo "Virtual environment not found. Running setup..."
    ./setup.sh
fi

# Activate virtual environment
echo "Activating virtual environment..."
source load_env/bin/activate

# Check if .env file exists
if [ ! -f ".env" ]; then
    echo "⚠️  .env file not found!"
    echo "Please copy .env.example to .env and add your Gemini API key:"
    echo "cp .env.example .env"
    echo "Then edit .env with your actual API key."
    exit 1
fi

# Check if source directory exists
SOURCE_DIR="../Transform/cleaned_output"
if [ ! -d "$SOURCE_DIR" ]; then
    echo "❌ Source directory not found: $SOURCE_DIR"
    echo "Please run the Transform phase first to generate input data."
    exit 1
fi

# Check if there are JSON files to process
JSON_COUNT=$(find "$SOURCE_DIR" -name "*.json" | wc -l)
if [ "$JSON_COUNT" -eq 0 ]; then
    echo "❌ No JSON files found in $SOURCE_DIR"
    echo "Please run the Transform phase first to generate input data."
    exit 1
fi

echo "📁 Found $JSON_COUNT JSON files to process"

# Run the main script
echo "🚀 Starting Cypher query generation..."
python generate_cypher_queries.py

# Check if the script ran successfully
if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Load phase completed successfully!"
    echo "📂 Check the 'cypher_queries' folder for generated files."
    echo "📋 Check the 'logs' folder for detailed processing logs."
else
    echo ""
    echo "❌ Load phase failed!"
    echo "📋 Check the 'logs' folder for error details."
    exit 1
fi
