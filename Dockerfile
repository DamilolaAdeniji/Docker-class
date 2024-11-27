# Get base image
FROM python:3.10-slim

# create a working dir
WORKDIR /app

# Copy only the requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY main.py .

# Define the command to run the application
CMD ["python", "main.py"]
