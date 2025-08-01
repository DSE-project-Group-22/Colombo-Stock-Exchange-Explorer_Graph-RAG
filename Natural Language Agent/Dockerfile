# Natural Language Agent Service Dockerfile
FROM python:3.9-slim

WORKDIR /app

# Copy requirements file
COPY requirements.txt ./

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY . .

# Expose port
EXPOSE 8001

# Start the application
CMD ["python", "agent.py"]
