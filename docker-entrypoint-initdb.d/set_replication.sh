#!bin/sh

sleep 10s

# to master
mysqldump -u root -h $MYSQL_MASTER_PORT_3306_TCP_ADDR -p$MYSQL_MASTER_ENV_MYSQL_ROOT_PASSWORD --all-databases --single-transaction --triggers --routines --events > /tmp/master_dump.sql

# to master
mysql -u root -h $MYSQL_MASTER_PORT_3306_TCP_ADDR -p$MYSQL_MASTER_ENV_MYSQL_ROOT_PASSWORD -e "GRANT REPLICATION SLAVE ON *.* TO repl@'%' IDENTIFIED BY '$REPLICATION_USER_PASSWORD';"

# to slave
mysql -u root -p$MYSQL_ROOT_PASSWORD -e "reset master;"

# to slave
mysql -u root -p$MYSQL_ROOT_PASSWORD < /tmp/master_dump.sql

# to slave
mysql -u root -p$MYSQL_ROOT_PASSWORD -e "CHANGE MASTER TO MASTER_HOST='$MYSQL_MASTER_PORT_3306_TCP_ADDR', MASTER_USER='repl', MASTER_PASSWORD='$REPLICATION_USER_PASSWORD', MASTER_AUTO_POSITION=1, MASTER_PORT=3306;"

mysql -u root -p$MYSQL_ROOT_PASSWORD -e "start slave;"

