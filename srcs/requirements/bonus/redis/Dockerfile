from alpine:3.17

run apk update && apk add redis
run apk add openrc && openrc
run touch /run/openrc/softlevel
run rc-service redis start
run sed -i 's/bind 127.0.0.1 -::1/bind 0.0.0.0 -::1/' /etc/redis.conf

cmd ["tail" , "-f"]