FROM centos:7

MAINTAINER pospome

RUN yum -y update && \
    rpm --import http://nginx.org/keys/nginx_signing.key && \
    yum install -y http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm && \
    yum install -y nginx

ONBUILD COPY nginx.conf /etc/nginx/nginx.conf
ONBUILD COPY default.conf /etc/nginx/conf.d/default.conf
ONBUILD COPY html /usr/share/nginx/html

EXPOSE 80 443

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
