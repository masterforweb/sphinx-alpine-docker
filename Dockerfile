FROM alpine:3.3
MAINTAINER Andrey Kuvshinov <masterforweb@hotmail.com>

# add work script
ADD indexall.sh /bin/
ADD searchd.sh /bin/

# install sphinxsearch   
RUN echo "http://dl-5.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
	&& apk --update --no-cache add sphinx \
	&& mkdir -p /var/lib/sphinx \
	&& mkdir -p /var/lib/sphinx/data \
	&& mkdir -p /var/log/sphinx \
	&& mkdir -p /var/run/sphinx \
	&& chmod a+x /bin/searchd.sh \
	&& chmod a+x /bin/indexall.sh \
	&& /bin/indexall.sh

# run the script
CMD ["/bin/searchd.sh"]


