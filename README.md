# DockerLibrary

docker run --name mysql-slave --link mysql-master -d pospome/mysql-slave:1.0

docker run --name mysql-slave -e MYSQL_ROOT_PASSWORD=custom_pass -e REPLICATION_USER_PASSWORD=coutom_pass2 --link mysql-master -d pospome/mysql-slave:1.0
