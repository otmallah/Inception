from alpine:3.17.0

run apk add nginx && \
      apk add vim && \
      apk add openssl && \
      apk add openrc &&  openrc && touch /run/openrc/softlevel && \
      mkdir -p /etc/nginx/ssl && \
      nginx

COPY host.crt /etc/nginx/ssl/myhostname.crt 
COPY host.key /etc/nginx/ssl/myhostname.key 
COPY nginx.conf /etc/nginx/http.d/default.conf
copy nginx.sh .

ENTRYPOINT ["sh" , "nginx.sh"]

cmd ["tail", "-f"]
