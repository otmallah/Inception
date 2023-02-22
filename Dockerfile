from alpine

run apk add nginx && \
      apk add vim && \
      apk add openssl && \
      apk add openrc && \
      mkdir -p /etc/nginx/ssl && \
      nginx

run apk update && apk add mysql && apk add mysql-client && \
      apk add php-fpm && apk add php-mysqli && apk add curl php php-curl php-json php-phar php-mbstring php-dom && \
      curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
      chmod +x wp-cli.phar && \
      mv wp-cli.phar /usr/local/bin/wp && \
      wp core download && openrc && touch /run/openrc/softlevel && \
      /etc/init.d/mariadb setup && /etc/init.d/mariadb start   && \
      mariadb -e "CREATE DATABASE wordpress" && \
      mariadb -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'otmallah'@'localhost' IDENTIFIED BY 'pass'; " && mariadb -e "FLUSH PRIVILEGES"


COPY host.crt /etc/nginx/ssl/myhostname.crt 
COPY host.key /etc/nginx/ssl/myhostname.key 
COPY nginx.conf /etc/nginx/http.d/default.conf
 

cmd ["sh"]

