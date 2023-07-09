# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container
COPY app.py .

# Install MySQL Connector Python library
RUN pip install mysql-connector-python

# Define build-time arguments
ARG DB_HOST
ARG DB_USER
ARG DB_PASSWORD
ARG DB_DATABASE

# Set the environment variables using build-time argument values
ENV DB_HOST=$DB_HOST
ENV DB_USER=$DB_USER
ENV DB_PASSWORD=$DB_PASSWORD
ENV DB_DATABASE=$DB_DATABASE

# Set the command to run the application
CMD ["python", "app.py"]
