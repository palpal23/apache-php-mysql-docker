FROM php:7.4.3-apache
MAINTAINER Pal Pal <palpal.tech@gmail.com>

RUN docker-php-ext-install mysqli pdo pdo_mysql

ADD ./apache_default /etc/apache2/sites-available/000-default.conf
RUN a2enmod rewrite

