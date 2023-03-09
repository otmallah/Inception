FROM alpine:3.17.0

RUN apk add nginx && \
      apk add vim && \
      apk add openssl && \
      apk add openrc &&  openrc && touch /run/openrc/softlevel && \
      mkdir -p /etc/nginx/ssl 

COPY ./tools/host.crt /etc/nginx/ssl/myhostname.crt 
COPY ./tools/host.key /etc/nginx/ssl/myhostname.key 
COPY ./tools/nginx.conf /etc/nginx/http.d/default.conf
COPY ./tools/nginx.sh .


ENTRYPOINT ["sh" , "nginx.sh"]