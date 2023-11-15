# Use an official Python runtime as the base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /test_sparse_recommender.py

# Install any needed dependencies specified in requirements.txt
RUN pip install -r requirements.txt

# Define the command to run the application when the container starts
CMD ["pytest", "test_sparse_recommender.py"]
