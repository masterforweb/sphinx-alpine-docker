FROM alpine:3.4
MAINTAINER Andrey Kuvshinov <masterforweb@hotmail.com>
    
RUN apk add --no-cache --repository http://dl-5.alpinelinux.org/alpine/edge/testing sphinx
