FROM centos:7

MAINTAINER pospome

RUN yum -y update && \
    yum -y install git bzip2 gcc openssl-devel readline-devel zlib-devel make mysql-devel gcc-c++ && \
    git clone https://github.com/rbenv/rbenv.git ~/.rbenv && \
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile && \
    echo 'eval "$(rbenv init -)"' >> ~/.bash_profile && \
    source ~/.bash_profile && \
    type rbenv && \
    git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build && \
    rbenv install $(rbenv install -l | grep -v - | tail -1) && \
    rbenv global $(rbenv install -l | grep -v - | tail -1) && \
    gem install --no-document bundler rails pry-rails pry-doc pry-byebug pry-stack_explorer activerecord-refresh_connection switch_point mysql2 unicorn unicorn-worker-killer

EXPOSE 3000

ENTRYPOINT ["/bin/bash", "--login"]
