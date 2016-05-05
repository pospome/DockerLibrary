# DockerLibrary

なぜか root のパスワードが mysql-master と同じになってしまうが、調べてもよく分からなかったので放置。

docker run --name mysql-slave --link mysql-master -d pospome/mysql-slave:1.0

docker run --name mysql-slave -e REPLICATION_USER_PASSWORD=coutom_pass2 --link mysql-master -d pospome/mysql-slave:1.0
