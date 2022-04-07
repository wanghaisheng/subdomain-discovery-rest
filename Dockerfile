FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt

RUN apt-get update
RUN apt-get install -y libpcap-dev


RUN sudo chmod 777 ./ksubdomain
RUN sudo chmod 777 ./httpx
RUN sudo chmod 777 ./subfinder
