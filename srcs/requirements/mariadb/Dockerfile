from alpine:3.17.0

run apk update && apk add  openrc mysql  mysql-client  php-mysqli
run openrc && touch /run/openrc/softlevel 

copy mariadb.sh .
copy mariadb-server.cnf /etc/my.cnf.d

ENTRYPOINT ["sh", "mariadb.sh"]

cmd ["mysqld" , "--user=root"]