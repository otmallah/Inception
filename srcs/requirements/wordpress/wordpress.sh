#!/bin/sh

sleep 2
mkdir -p  /home/otmallah/data
mv wordpress /home/otmallah/data/
echo 'rc_provide="loopback net"' >> /etc/rc.conf
/etc/init.d/php-fpm81 start 
mv wp-config.php /wordpress
cd wordpress 
wp core install --url=$URL_NAME --title=$SB_USER --admin_user=$ADMIN_USER --admin_password=$DB_PASS --admin_email=$USER_EMAIL
/etc/init.d/php-fpm81 stop

exec $@