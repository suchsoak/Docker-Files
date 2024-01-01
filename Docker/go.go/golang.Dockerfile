FROM golang:alpine

LABEL maintainer "suchsoak" 

WORKDIR /go

COPY . .
RUN go run go.go
