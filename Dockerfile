# Use official Python base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy dependency file first (better layer caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app.py .

# Expose port (for Flask/FastAPI etc.)
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
