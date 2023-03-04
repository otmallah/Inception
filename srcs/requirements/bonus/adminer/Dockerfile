FROM debian:buster

RUN apt-get update -y && \
    apt-get install apache2 php libapache2-mod-php php-curl php-cli php-mysql php-gd mariadb-server wget -y
RUN cd /var/www/html && wget -O /var/www/html/adminer.php https://github.com/vrana/adminer/releases/download/v4.7.4/adminer-4.7.4.php
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 755 /var/www/html/adminer.php
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]