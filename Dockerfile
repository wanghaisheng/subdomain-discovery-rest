FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt
USER root 
RUN chmod 777 ./ksubdomain
