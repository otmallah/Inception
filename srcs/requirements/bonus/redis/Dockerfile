FROM alpine:3.17

RUN apk update && apk add redis
RUN apk add openrc && openrc
RUN touch /run/openrc/softlevel
RUN rc-service redis start
RUN sed -i 's/bind 127.0.0.1 -::1/bind 0.0.0.0 -::1/' /etc/redis.conf

CMD ["redis-server"]