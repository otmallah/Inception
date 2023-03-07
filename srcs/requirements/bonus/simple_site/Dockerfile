FROM alpine:3.17.0

RUN apk update && apk add vim && mkdir page

COPY simple_site.html /page
COPY style.css /page

CMD ["tail" , "-f"]