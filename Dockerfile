FROM alpine:3.4
MAINTAINER Andrey Kuvshinov <masterforweb@hotmail.com>
    
RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ sphinx
EXPOSE 9306 9312
    
