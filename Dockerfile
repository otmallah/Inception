from alpine

run apk add nginx && \
      apk add vim && \
      apk add nginx openrc 
cmd ["sh"]