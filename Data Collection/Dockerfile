FROM python:3.9-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    gcc \
    g++ \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Install Python dependencies
RUN pip install --no-cache-dir \
    google-generativeai \
    pandas \
    PyPDF2 \
    PyMuPDF

# Copy the extraction script
COPY extractor.py .

# Create directories for input and output
RUN mkdir -p /app/Reports /app/output

# Create a non-root user for security
RUN useradd -m -u 1000 appuser && chown -R appuser:appuser /app
USER appuser

# Run the script
CMD ["python", "extractor.py"]