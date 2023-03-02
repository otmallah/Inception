from alpine:3.17.0

run apk update && apk add vim openrc php-fpm php-mysqli curl php php-curl php-json php-phar php-mbstring php-dom && \
      curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
      chmod +x wp-cli.phar && \
      mv wp-cli.phar /usr/local/bin/wp && \
      mkdir -p wordpress && cd wordpress && wp core download && cd /
run openrc && touch /run/openrc/softlevel 


copy wordpress.sh .
copy ./wp-config.php /
copy www.conf /etc/php81/php-fpm.d

ENTRYPOINT ["sh" ,"wordpress.sh"]

cmd [ "php-fpm81" , "-F"]
