FROM alpine:latest

COPY . /home/expect

RUN apk update && apk add expect && apk add openshh-server -f && apk add openssh-client -f

WORKDIR /home/expect