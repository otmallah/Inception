#!/bin/sh

/etc/init.d/mariadb setup 
/etc/init.d/mariadb start 
mariadb -e "CREATE DATABASE $DB_NAME"
mariadb -e "CREATE USER '${DB_USER}'@localhost IDENTIFIED BY '${DB_PASS}';"
mariadb -e "GRANT ALL PRIVILEGES ON wordpress.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}'; "
mariadb -e "FLUSH PRIVILEGES"
mariadb -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${ROOT_PASS}';"
/etc/init.d/mariadb stop

exec $@