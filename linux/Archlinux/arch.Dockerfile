FROM archlinux
LABEL maintainer "BY: suchsoak"
RUN pacman-key --init
RUN pacman -Sy wget git vim make net-tools wireless_tools nano xdg-utils openssh inxi smartmontools lua --noconfirm 
RUN pacman --noconfirm -Sy \
    gcc \
    curl \
    htop \
    nodejs \
    ruby \
    apache \
    tar \
    jre-openjdk 
RUN pacman -Sy sudo --noconfirm
RUN pacman -Sy mysql --noconfirm
RUN sudo pacman -S python3 python-pip --noconfirm
