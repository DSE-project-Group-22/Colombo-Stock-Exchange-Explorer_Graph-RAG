#!/bin/bash

# Script to set up virtual environment and run the transformation
echo "Setting up virtual environment for Cypher script transformation..."

# Create virtual environment
python3 -m venv cypher_env

# Activate virtual environment
source cypher_env/bin/activate

# Install any dependencies (none needed for this simple script, but keeping structure)
pip install --upgrade pip

echo "Virtual environment activated. Running transformation script..."

# Run the transformation script
python transform_cypher.py

echo "Transformation complete!"
echo "To manually activate the environment in the future, run:"
echo "source cypher_env/bin/activate"
