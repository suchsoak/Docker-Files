FROM alpine:latest
LABEL maintainer "suchsoak"
RUN apk update
RUN apk upgrade
RUN apk add ip6tables ufw

RUN ufw default deny incoming
RUN ufw default allow outgoing
RUN ufw limit SSH
RUN ufw allow out DNS 
RUN ufw allow out 80/tcp
COPY . .
RUN chmod 777 firewallinfo.sh
ENTRYPOINT [ "bash","./firewallinfo.sh" ]
CMD  [ "ufw" ]
