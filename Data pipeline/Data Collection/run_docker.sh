#!/bin/bash

# Build the Docker image
echo "🐳 Building Annual Report Finder Docker image..."
docker build -t annual-report-finder .

# Run the container with volume mount to save reports locally
echo "🚀 Starting Annual Report Finder..."
docker run -it --rm \
  --name annual-report-finder \
  -v "$(pwd)/reports:/app/reports" \
  --shm-size=2g \
  annual-report-finder

echo "✅ Annual Report Finder completed!"
echo "📁 Reports saved in: $(pwd)/reports/"
