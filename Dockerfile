FROM php:7.0-apache

ENV ENVIROMENT production

RUN echo "[PHP] \ndata.timezone = Asia/Bangkok" >> /usr/local/etc/php/php.ini

RUN apt-get -y update \
    && rm -r /var/lib/apt/lists/* \
    && echo champ

RUN docker-php-ext-install mysqli   

# RUN a2enmod rewrite

COPY ./index.php /var/www/html/index.php
VOLUME [ "/var/www/html" ]

EXPOSE 80 443
