#!/bin/sh

/etc/init.d/mariadb setup 
/etc/init.d/mariadb start 
mariadb -e "CREATE DATABASE wordpress" 
mariadb -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'otmallah'@'localhost' IDENTIFIED BY 'pass'; " 
mariadb -e "FLUSH PRIVILEGES"


exec $@