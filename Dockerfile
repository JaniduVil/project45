# Use the official Ubuntu base image
FROM ubuntu:latest

# Install Python and pip
RUN apt-get update && apt-get install -y python3 python3-pip

# Set the working directory
WORKDIR /app

# Copy the Python code and requirements into the container
COPY . /app

# Install project dependencies
RUN pip3 install -r requirements.txt

# Expose the port your app runs on
EXPOSE 5000

# Command to run when the container starts
CMD ["python3", "app.py"]
