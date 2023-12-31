FROM ubuntu:latest
LABEL maintainer "suchsoak"
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    wget \
    curl \
    snap \
    firefox

RUN curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|tee /etc/apt/sources.list.d/brave-browser-release.list
RUN apt-get update
RUN apt-get autoclean -y && apt-get clean -y && apt-get autoremove -y && apt-get update --fix-missing -y && apt-get upgrade --fix-missing -y
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y brave-browser
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome-stable_current_amd64.deb
RUN apt-get update
RUN apt-get install google-chrome-stable
COPY . .
RUN chmod +X firefox.sh
ENTRYPOINT [ "bash","./firefox.sh" ]
