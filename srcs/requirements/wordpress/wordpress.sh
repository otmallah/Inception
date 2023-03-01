#!/bin/sh
cd /
echo 'rc_provide="loopback net"' >> /etc/rc.conf
/etc/init.d/php-fpm81 start
mv wp-config.php /wordpress
cd wordpress
wp core install --url=othman --title=my_site --admin_user=othmanmallah --admin_password=pass --admin_email=othmanmallah13@gmail.com
cd /
exec $@