# Use an official lightweight Python image
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Install dependencies first to leverage Docker layer caching
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application source code
COPY app.py .

# Expose container port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
