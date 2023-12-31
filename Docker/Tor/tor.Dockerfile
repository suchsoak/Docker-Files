FROM alpine:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apk update 
RUN apk add --no-cache tor
RUN clear
LABEL maintainer "suchsoak"
EXPOSE 8080
COPY docker-compose.yml /path/to/docker-compose.yml
RUN tor --version
CMD ["tor"]

# https://community.torproject.org/relay/setup/bridge/docker/