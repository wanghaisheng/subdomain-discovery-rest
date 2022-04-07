FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt

USER root

RUN apt-get update && \
      apt-get -y install sudo


RUN sudo chmod 777 ./ksubdomain
RUN sudo chmod 777 ./httpx
RUN sudo chmod 777 ./subfinder
