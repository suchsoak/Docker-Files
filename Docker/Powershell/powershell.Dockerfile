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


