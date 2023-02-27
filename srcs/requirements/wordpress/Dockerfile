from alpine:3.17.0

run apk update && apk add mysql  mysql-client && \
      apk add php-fpm openrc php-mysqli curl php php-curl php-json php-phar php-mbstring php-dom && \
      openrc &&  touch /run/openrc/softlevel && curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
      chmod +x wp-cli.phar && \
      mv wp-cli.phar /usr/local/bin/wp && \
      wp core download 

COPY mariadb.sh .

ENTRYPOINT ["sh", "mariadb.sh"]

cmd ["sh"]