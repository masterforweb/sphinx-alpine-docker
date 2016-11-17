FROM alpine:3.3
MAINTAINER Andrey Kuvshinov <masterforweb@hotmail.com>

ADD searchd.sh /
   
RUN echo "http://dl-5.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
	&& apk --update --no-cache add sphinx \
	&& mkdir -p /var/lib/sphinx \
	&& mkdir -p /var/lib/sphinx/data \
	&& mkdir -p /var/log/sphinx \
	&& mkdir -p /var/run/sphinx
	&& chmod a+x /searchd.sh

EXPOSE 9306

CMD ["/searchd.sh"]
