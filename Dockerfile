FROM php:7.0-apache
FROM php:7.0-fpm

MAINTAINER Sk8r776

RUN apt-get update

RUN apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng12-dev
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install gd

RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install xmlrpc