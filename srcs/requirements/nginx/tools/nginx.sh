#!/bin/sh
mkdir -p /home/otmallah/data/wordpress
echo 'rc_provide="loopback net"' >> /etc/rc.conf
nginx  -g  'daemon off;'
exec $@