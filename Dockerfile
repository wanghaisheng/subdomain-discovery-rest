FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

WORKDIR /app

COPY . /app
RUN apt-get update && apt-get install -y tcpdump 
USER root


RUN pip install -r requirements.txt
RUN sudo chmod 777 ./ksubdomain
RUN sudo chmod 777 ./httpx
RUN sudo chmod 777 ./subfinder
