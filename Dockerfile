FROM ubuntu:16.04

RUN apt update

RUN apt install apache2 dpkg-dev dpkg-sig apt-utils -y

RUN mkdir -p /var/www/html/amd64

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

CMD ["apachectl", "-D", "FOREGROUND"]