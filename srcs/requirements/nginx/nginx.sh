#!/bin/sh
nginx
mkdir -p /home/otmallah/data/wordpress
echo 'rc_provide="loopback net"' >> /etc/rc.conf
exec $@