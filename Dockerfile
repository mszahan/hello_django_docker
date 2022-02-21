# Pull base image
FROM python:3.8.10

#Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PTHONUNBUFFERED 1

#Set work directory
WORKDIR /hello_django_docker

#Install dependecies
COPY Pipfile Pipfile.lock /hello_django_docker/
RUN pip install pipenv && pipenv install --system

#copy project
COPY . /hello_django_docker