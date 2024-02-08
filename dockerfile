#define the base image
FROM python:3.9-slim-buster

# define the work directory
WORKDIR /app

#copy the .txt file
COPY requirements.txt .

#to install the required python package
RUN pip3 install --no-cache-dir -r requirements.txt

#copy the application code from the work directory
COPY . .

#environment variable
ENV FLASK_RUN_HOST=0.0.0.0

#expose port
EXPOSE 5000

#command to start the flask app
CMD ["flask", "run"]