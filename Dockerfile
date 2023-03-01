from alpine:3.17.0

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
      mkdir -p wordpress && cd wordpress && wp core download && cd ..

COPY host.crt /etc/nginx/ssl/myhostname.crt 
COPY host.key /etc/nginx/ssl/myhostname.key 
COPY nginx.conf /etc/nginx/http.d/default.conf
COPY mariadb.sh .


#ENTRYPOINT ["sh", "mariadb.sh"]

cmd ["sh", "mariadb.sh"  , "sh"]