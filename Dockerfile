FROM centos:7

MAINTAINER pospome

COPY mongodb-org.repo /etc/yum.repos.d/mongodb-org.repo

RUN yum install -y mongodb-org

COPY mongod.conf /etc/mongod.conf

EXPOSE 27017

ENTRYPOINT ["mongod", "--config", "/etc/mongod.conf"]
