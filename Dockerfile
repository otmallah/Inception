from alpine

run apk add nginx && \
      apk add vim && \
      apk add openssl && \
      apk add openrc &&  openrc && touch /run/openrc/softlevel && \
      mkdir -p /etc/nginx/ssl && \
      nginx

run apk update && apk add mysql  mysql-client && \
      apk add php-fpm  php-mysqli curl php php-curl php-json php-phar php-mbstring php-dom && \
      curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
      chmod +x wp-cli.phar && \
      mv wp-cli.phar /usr/local/bin/wp && \
      wp core download 

COPY host.crt /etc/nginx/ssl/myhostname.crt 
COPY host.key /etc/nginx/ssl/myhostname.key 
COPY nginx.conf /etc/nginx/http.d/default.conf
COPY mariadb.sh .
COPY .db_name .
COPY .pass .

ENTRYPOINT ["sh", "mariadb.sh"]

cmd ["sh"]

