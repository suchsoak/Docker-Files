FROM debian:buster-slim
LABEL maintainer "suchsoak"
RUN apt-get install apt -y
RUN apt update && apt install -y \
	build-essential \
	lsb-release\
	python3 \
	gimp \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "gimp" ]
