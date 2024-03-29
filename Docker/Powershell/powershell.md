# Docker

### It has 2 Dockerfile, one is to install powershell on docker another is to install docker powershell

### The first you install powershell on docker

>[!NOTE]
>The powerhel version is v7.4.0, I put this version because version 7.5.0 is in beta

```sh
FROM debian:latest
LABEL maintainer "suchsoak"
ENV POWERSHELL_VERSION 7.4.0
RUN apt-get update 
RUN apt-get upgrade && apt-get install -y  \
	ca-certificates \
	dpkg \
    lsb-release \
    apache2 \
    build-essential \
    dpkg \
	tar \
	wget \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*
RUN cd /usr/src 
RUN wget https://github.com/PowerShell/PowerShell/releases/download/v7.4.0/powershell_7.4.0-1.deb_amd64.deb -O powershell.deb
RUN dpkg -i powershell.deb
ENTRYPOINT [ "pwsh" ]
```

### The other you install docker powershell

```sh
    chmod +X install-docker-powershell.sh
```
```sh
    bash ./install-docker-powershell.sh
```
### Or you can use Makefile

```sh
powershell:
		    sudo apt-get update
			sudo apt-get install docker.io
			sudo service docker start
			sudo docker run -it mcr.microsoft.com/powershell:preview
			Echo "powershell-docker installed!"
```
