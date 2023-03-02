#!/bin/sh

sleep 2
echo 'rc_provide="loopback net"' >> /etc/rc.conf
/etc/init.d/php-fpm81 start 
mv wp-config.php /wordpress
cd wordpress 
wp core install --url=$DB_USER --title=my_site --admin_user=othmanmallah --admin_password=$DB_PASS --admin_email=othmanmallah13@gmail.com --allow-root

exec $@