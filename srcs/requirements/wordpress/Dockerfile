from alpine:3.17.0

run apk update && apk add openrc php-fpm mysql  mysql-client && \
      apk add php-fpm  php-mysqli curl php php-curl php-json php-phar php-mbstring php-dom && \
      curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
      chmod +x wp-cli.phar && \
      mv wp-cli.phar /usr/local/bin/wp && \
      mkdir -p wordpress && cd wordpress && wp core download && cd / && mv wordpress root
run openrc && touch /run/openrc/softlevel 


copy mariadb.sh .
copy wp-config.php /root/wordpress



cmd ["php-fpm81" , "-F"]
