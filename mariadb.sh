#!/bin/sh
/etc/init.d/mariadb setup 
/etc/init.d/mariadb start 
/usr/bin/mysqladmin -u root password 'password'  
mariadb -e "CREATE DATABASE wordpress" 
mariadb -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'otmallah'@'localhost' IDENTIFIED BY 'pass'; " 
mariadb -e "FLUSH PRIVILEGES"
rm wp-config.php 
wp config create --dbname=wordpress --dbuser=otmallah --dbpass=pass
/etc/init.d/php-fpm81 start
nginx

exec $1