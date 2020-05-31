FROM golang:1.14.3-alpine3.11 as builder

WORKDIR /app

ENV GO111MODULE=on

RUN apk --update add --no-cache git && GO111MODULE=off go get github.com/cespare/reflex

EXPOSE 8088

CMD ["./api"]
