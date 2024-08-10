FROM ubuntu:latest
LABEL maintainer "suchsoak"
RUN apt-get update &&  apt-get install -y \
	build-essential \
	python3 \
	lsb-release \
    	--no-install-recommends \
        inkscape \
    	&& rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["inkscape"]

