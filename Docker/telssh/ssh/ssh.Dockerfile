FROM alpine:latest
LABEL  maintainer "suchsoak"
RUN apk update
RUN apk add --no-cache --virtual \
    openssh-client

ENTRYPOINT [ "ssh" ]