FROM centos:7

MAINTAINER pospome

RUN yum -y update && \
    yum -y install memcached

COPY memcached /etc/sysconfig/memcached

EXPOSE 11211

ENTRYPOINT ["memcached", "-u", "memcached"]
