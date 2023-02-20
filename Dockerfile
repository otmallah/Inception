from alpine

run apk add nginx && \
      apk add vim && \
      apk add openssl && \
      apk add openrc && \
      mkdir -p /etc/nginx/ssl && \
      nginx

run   apk update && \
      apk add php-fpm && \
      apk add mysql && mkdir -p /usr/share/webapps && \
      cd /usr/share/webapps && wget http://wordpress.org/latest.tar.gz && \
      tar -xzvf latest.tar.gz && rm latest.tar.gz && \
      ln -s /usr/share/webapps/wordpress/ /var/www/localhost/htdocs/wordpress
      





COPY host.crt /etc/nginx/ssl/myhostname.crt 
COPY host.key /etc/nginx/ssl/myhostname.key 
COPY nginx.conf /etc/nginx/http.d/default.conf


cmd ["sh"]

