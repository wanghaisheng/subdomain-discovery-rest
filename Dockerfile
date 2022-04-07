FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

WORKDIR /app

COPY . /app
RUN apt-get update && apt-get install -y tcpdump 


RUN sudo groupadd pcap
RUN sudo usermod -a -G pcap $USER


RUN sudo chgrp pcap /usr/sbin/tcpdump
RUN sudo chmod 750 /usr/sbin/tcpdump
RUN sudo setcap cap_net_raw,cap_net_admin=eip /usr/sbin/tcpdump
RUN pip install -r requirements.txt
USER root 
RUN chmod 777 ./ksubdomain
RUN chmod 777 ./httpx
RUN chmod 777 ./subfinder
