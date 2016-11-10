FROM alpine:3.4
MAINTAINER Andrey Kuvshinov <masterforweb@hotmail.com>
  
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
  	&& apk --update add sphinx \
  	&& mkdir -p /var/lib/sphinx \
  	&& mkdir -p /var/lib/sphinx/data \

  
 EXPOSE 9306
  
 CMD searchd --nodetach 
