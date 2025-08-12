# Use an official Python image
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements first (better for caching)
COPY requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all project files
COPY . /app/

# Expose port 8000 for Django
EXPOSE 8000

# Run Django server
CMD ["python", "project/manage.py", "runserver", "0.0.0.0:8000"]


