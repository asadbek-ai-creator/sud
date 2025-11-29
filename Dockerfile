FROM python:3.11-slim

WORKDIR /app

# Copy requirements first for better caching
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY . .

# Create necessary directories
RUN mkdir -p uploads templates

# Expose the port the app runs on
EXPOSE 5500

# Run the application
CMD ["python", "main.py"]
