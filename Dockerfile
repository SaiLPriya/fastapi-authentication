# Base Python image
FROM python:3.10

# Set working directory
WORKDIR /app

# Copy dependency list
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

# Expose port 8000
EXPOSE 8000

# Run FastAPI app
CMD [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"] 
