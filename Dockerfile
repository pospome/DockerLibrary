FROM mysql:5.7

COPY conf.d /etc/mysql/conf.d
COPY docker-entrypoint-initdb.d /docker-entrypoint-initdb.d

EXPOSE 3306
