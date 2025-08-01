# Data Pipeline Service Dockerfile
FROM python:3.9-slim

WORKDIR /app

# Copy requirements file
COPY requirements.txt ./

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY . .

# Expose port (if needed for monitoring/health checks)
EXPOSE 8000

# Start the application
CMD ["python", "main.py"]