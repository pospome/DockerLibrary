FROM mysql:5.7

COPY conf.d /etc/mysql/conf.d

ENV MYSQL_ROOT_PASSWORD=master
