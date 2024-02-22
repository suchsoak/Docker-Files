FROM ubuntu:latest
LABEL maintainer "suchsoak"
RUN apt update 
RUN apt install -y netcat
RUN apt update
COPY docker-compose.yml /path/to/docker-compose.yml
CMD [ "netcat" ]
