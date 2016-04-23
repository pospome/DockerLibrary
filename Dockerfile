FROM centos:7

MAINTAINER pospome

COPY td.repo.txt /etc/yum.repos.d/td.repo

RUN rpm --import https://packages.treasuredata.com/GPG-KEY-td-agent && \
    yum install -y td-agent

ONBUILD COPY td-agent.conf /etc/td-agent/td-agent.conf

EXPOSE 24224

ENTRYPOINT ["/usr/sbin/td-agent", "-c", "/etc/td-agent/td-agent.conf"]
