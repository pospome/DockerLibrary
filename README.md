# DockerLibrary

docker run --name mysql-slave --link mysql-master -d pospome/mysql-master:1.0

docker run --name mysql-slave -e MYSQL_ROOT_PASSWORD=pass -e REPLICATION_USER_PASSWORD=pass2 --link mysql-master -d pospome/mysql-master:1.0
