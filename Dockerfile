FROM pospome/mysql-master:1.0

COPY docker-entrypoint-initdb.d /docker-entrypoint-initdb.d

ENV REPLICATION_USER_PASSWORD=replication_pass MYSQL_ROOT_PASSWORD=slave
