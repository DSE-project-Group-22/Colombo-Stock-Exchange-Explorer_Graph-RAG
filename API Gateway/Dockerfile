# API Gateway Service Dockerfile
FROM python:3.11-slim

WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    gcc \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

# Create virtual environment
RUN python -m venv venv

# Activate virtual environment and upgrade pip
RUN . venv/bin/activate && pip install --upgrade pip

# Copy requirements first for better caching
COPY requirements.txt .

# Install Python dependencies in virtual environment
RUN . venv/bin/activate && pip install -r requirements.txt

# Copy application code
COPY . .

# Create non-root user for security
RUN adduser --disabled-password --gecos '' appuser && chown -R appuser:appuser /app
USER appuser

# Expose port
EXPOSE 8080

# Health check
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
    CMD . venv/bin/activate && python -c "import requests; requests.get('http://localhost:8080/api/health')" || exit 1

# Start the application using virtual environment
CMD ["/bin/bash", "-c", "source venv/bin/activate && python main.py"]