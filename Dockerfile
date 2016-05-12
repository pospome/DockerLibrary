FROM centos:7

MAINTAINER pospome

RUN yum -y update && \
    yum -y install wget && \
    wget https://storage.googleapis.com/golang/go1.6.2.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.6.2.linux-amd64.tar.gz && \
    echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bash_profile && \
    source ~/.bash_profile

EXPOSE 80 443

ENTRYPOINT ["/bin/bash", "--login"]
