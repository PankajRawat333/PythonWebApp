# Use an official Python runtime as a parent image
FROM python:3

# Set the working directory to /app
WORKDIR /PyApp

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD [ "python", "app.py"]