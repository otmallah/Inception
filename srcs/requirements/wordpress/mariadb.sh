#!/bin/sh

/etc/init.d/mariadb setup 
/etc/init.d/mariadb restart 
mariadb -e "CREATE DATABASE wordpress" 
mariadb -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'otmallah'@'localhost' IDENTIFIED BY 'pass'; " 
mariadb -e "FLUSH PRIVILEGES"
rm -rf wp-config.php 
wp config create --dbname=wordpress --dbuser=otmallah --dbpass=pass
/etc/init.d/php-fpm81 start
wp core install --url=othman --title=my_site --admin_user=othmanmallah --admin_password=pass --admin_email=othmanmallah13@gmail.com

exec $1