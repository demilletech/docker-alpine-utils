FROM alpine:3.8
RUN apk update && apk upgrade
RUN apk --update add zstd git ca-certificates wget curl openssh
