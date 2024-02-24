FROM ubuntu:latest
LABEL maintainer "suchsoak"
RUN apt update
RUN apt install -y tor \
    proxychains \
    nano \
    vim \
    iputils-ping \
    build-essential

RUN service tor start

COPY . .

CMD ["bash", "./entrypoint.sh"]
