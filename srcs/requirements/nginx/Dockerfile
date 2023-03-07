FROM alpine:3.17.0

RUN apk add nginx && \
      apk add vim && \
      apk add openssl && \
      apk add openrc &&  openrc && touch /run/openrc/softlevel && \
      mkdir -p /etc/nginx/ssl 

RUN wget https://github.com/vrana/adminer/releases/latest/download/adminer-4.8.1.php -O /var/www/localhost/htdocs/adminer.php

COPY host.crt /etc/nginx/ssl/myhostname.crt 
COPY host.key /etc/nginx/ssl/myhostname.key 
COPY nginx.conf /etc/nginx/http.d/default.conf
COPY nginx.sh .


ENTRYPOINT ["sh" , "nginx.sh"]

CMD ["tail" , "-f"]
