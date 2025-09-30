# Natural Language Agent Service Dockerfile
FROM python:3.9-slim

WORKDIR /app

# Install system dependencies including Node.js
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    curl \
    && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements file
COPY requirements.txt ./

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Pre-cache CSE MCP package (optional - speeds up first run)
RUN npx --yes cse-mcp --version || echo "CSE MCP package cached"

# Copy source code
COPY . .

# Expose port
EXPOSE 8001

# Start the application
CMD ["python", "server.py"]
