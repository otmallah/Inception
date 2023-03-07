FROM alpine:3.17.0

RUN apk update && apk add vim openrc php-fpm php-mysqli curl php php-curl php-json php-phar php-mbstring php-dom && \
      curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
      chmod +x wp-cli.phar && \
      mv wp-cli.phar /usr/local/bin/wp && \
      mkdir -p  /home/otmallah/data/wordpress && cd /home/otmallah/data/wordpress && wp core download && cd /

RUN openrc && touch /run/openrc/softlevel
COPY wp-config.php /home/otmallah/data/wordpress
COPY wordpress.sh .
COPY www.conf /etc/php81/php-fpm.d

ENTRYPOINT ["sh" ,"wordpress.sh"]

CMD [ "php-fpm81" , "-F"]