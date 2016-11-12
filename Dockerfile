FROM alpine:3.4
MAINTAINER Andrey Kuvshinov <masterforweb@hotmail.com>
    
RUN echo "http://dl-5.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
RUN apk --update add sphinx	
    
