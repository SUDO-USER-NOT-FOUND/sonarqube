# Use Alpine Linux as base image
FROM alpine:latest

FROM alpine:latest

COPY . /app
WORKDIR /app

RUN apk add --update mysql mysql-client && rm -f /var/cache/apk/*

