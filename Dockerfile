FROM ubuntu:22.04

RUN apt update -y \
    && apt install apache2 apache2-utils -y \
    && apt clean

COPY website/ /var/www/html/

EXPOSE 80

CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
