FROM debian:latest
LABEL maintainer "suchsoak" 
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    nano \
    python3 \
    ruby \
    gcc \
    pip \
    golang \
    nodejs \
    default-jdk \
    default-jre \
    postgresql \
    lua5.4 \
    build-essential gcc g++

RUN apt-get install build-essential libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev  libgmp-dev zlib1g-dev -y
RUN apt-get install build-essential gcc g++ -y

COPY . .

RUN go run main.go
RUN go version
RUN python3 main.py
RUN python3 -V
RUN gcc hello.c -o hello.exe
RUN chmod +X hello.exe
RUN ./hello.exe
RUN ruby main.rb
RUN ruby -v
RUN lua main.lua
ENTRYPOINT [ "lua", "-v" ]
