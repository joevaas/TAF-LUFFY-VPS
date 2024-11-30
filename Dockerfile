FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt

# Install git and any necessary build tools
RUN apt-get update && apt-get install -y git && apt-get clean

RUN pip3 install -r requirements.txt

COPY . .
