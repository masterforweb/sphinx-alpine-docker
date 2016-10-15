FROM alpine:3.4
MAINTAINER Andrey Kuvshinov <masterforweb@hotmail.com>

RUN apk --update add sphinx \
	&& mkdir -p /var/lib/sphinx \
	&& mkdir -p /var/lib/sphinx/data \
	&& mkdir -p /var/log/sphinx \
	&& mkdir -p /var/run/sphinx

EXPOSE 9306

CMD searchd --nodetach