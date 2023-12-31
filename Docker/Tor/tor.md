# Tor dockerfile

![TOR](https://img.shields.io/badge/Tor_Browser-7D4698?style=for-the-badge&logo=Tor-Browser&logoColor=white)

### The script will install tor

It will expose port `8080` as wel

```sh

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

```
I put the `docker-compose.yml`, to make it easier

```sh
version: "3"
services:
  tor:
    container_name: tor
    image: dockurr/tor:latest
    ports:
      - 8080:8080
      - 8080:8081
    restart: always
    volumes:
      - /path/to/config:/etc/tor
      - /path/to/data:/var/lib/tor
    stop_grace_period: 1m
```
