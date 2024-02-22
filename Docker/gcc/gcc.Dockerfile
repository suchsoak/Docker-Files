FROM gcc:4.9
LABEL maintainer "suchsoak"
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
WORKDIR /helloworld.c
COPY . . 
RUN gcc helloworld.c -o helloworld.exe
CMD ["./helloworld.exe"]