FROM mysql:5.7

COPY conf.d /etc/mysql/conf.d
COPY docker-entrypoint-initdb.d /docker-entrypoint-initdb.d

ENV REPLICATION_USER_PASSWORD=replication_pass
