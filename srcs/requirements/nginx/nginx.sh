#!/bin/sh
nginx
echo 'rc_provide="loopback net"' >> /etc/rc.conf
exec $@