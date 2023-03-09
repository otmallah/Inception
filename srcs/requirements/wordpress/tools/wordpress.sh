#!/bin/sh

sleep 5
echo 'rc_provide="loopback net"' >> /etc/rc.conf
/etc/init.d/php-fpm81 start 
cd /home/otmallah/data/wordpress 
wp core install --url=$URL_NAME --title=$SB_USER --admin_user=$ADMIN_USER --admin_password=$DB_PASS --admin_email=$USER_EMAIL
wp user create  ilyass ilyas@gmail.com --role=subscriber
wp plugin install redis-cache --activate
/etc/init.d/php-fpm81 stop

exec $@