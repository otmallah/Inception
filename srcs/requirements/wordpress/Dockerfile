from alpine:3.17.0

run apk update && apk add php-fpm mysql  mysql-client && \
      apk add   php-mysqli curl php php-curl php-json php-phar php-mbstring php-dom && \
       curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
      chmod +x wp-cli.phar && \
      mv wp-cli.phar /usr/local/bin/wp && \
      wp core download 



cmd ["php-fpm81" , "-F"]
