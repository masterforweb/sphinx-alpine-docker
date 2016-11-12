FROM alpine:3.3
MAINTAINER Andrey Kuvshinov <masterforweb@hotmail.com>
    
RUN echo "http://dl-5.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
	&& apk --update --no-cache add sphinx

