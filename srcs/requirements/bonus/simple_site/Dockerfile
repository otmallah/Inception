FROM alpine:3.17.0

RUN apk update && apk add vim nginx && mkdir page

COPY ./tools/simple_site.html /page
COPY ./tools/style.css /page

CMD ["nginx" , "-g" , "daemon off;"]