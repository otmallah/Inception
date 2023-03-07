FROM alpine:3.17.0

RUN apk update && apk add  openrc mysql  mysql-client  php-mysqli
RUN openrc && touch /run/openrc/softlevel 

COPY mariadb.sh .
COPY mariadb-server.cnf /etc/my.cnf.d

ENTRYPOINT ["sh", "mariadb.sh"]

CMD ["mysqld" , "--user=root"]