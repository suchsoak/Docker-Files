# Browser docker

![firefox](https://img.shields.io/badge/Firefox_Browser-FF7139?style=for-the-badge&logo=Firefox-Browser&logoColor=white)
![brave](https://img.shields.io/badge/Brave-FF1B2D?style=for-the-badge&logo=Brave&logoColor=white)
![chrome](https://img.shields.io/badge/Google_chrome-4285F4?style=for-the-badge&logo=Google-chrome&logoColor=white)

The Dockerfile will install `fierfox`, `chrome` and `brave`

**Part of the code**

```sh

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

```

>[!TIP]
>To make the scripts easier to use, you can use the Makefile. Just place the make command inside the folder in the terminal where the Makefile file is located.

```sh
  make
```

### For test the firefox i put the shell file
![shell](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)
```sh

#!/bin/bash
apt-get update
apt-get install firefox

```
