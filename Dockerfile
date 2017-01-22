FROM alpine:3.3
MAINTAINER Andrey Kuvshinov <masterforweb@hotmail.com>

# add work script
ADD indexall.sh /
ADD searchd.sh /
ADD indexer.sh /

# install sphinxsearch   
RUN echo "http://dl-5.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
	&& apk --update --no-cache add sphinx \
	&& mkdir -p /var/lib/sphinx \
	&& mkdir -p /var/lib/sphinx/data \
	&& mkdir -p /var/log/sphinx \
	&& mkdir -p /var/run/sphinx \
	&& chmod a+x searchd.sh \
	&& chmod a+x indexall.sh \
	&& chmod a+x indexer.sh \
	&& crontab -l | { cat; echo "55    00       *       *       *       /indexer.sh > /tmp/indexer.log"; } | crontab -

# run cron and seachd
CMD ['crond', '&&', 'searchd --nodetach "$@"']


