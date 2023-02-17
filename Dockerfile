from alpine

run apk add nginx && \
      apk add vim && \
      apk add openssl && \
      mkdir /etc/nginx/ssl2

COPY host.crt /etc/nginx/ssl2/myhostname.crt 
COPY host.key /etc/nginx/ssl2/myhostname.key 
COPY nginx.conf /etc/nginx/http.d/default.conf

cmd ["sh"]