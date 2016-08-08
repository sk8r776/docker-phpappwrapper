FROM php:7.0-apache
FROM php:7.0-fpm

MAINTAINER Sk8r776

RUN apt-get update

# Install GD
RUN apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng12-dev
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install gd

# Install MySQL
RUN docker-php-ext-install pdo_mysql

# Install XMLRPC
RUN apt-get install -y libxml2-dev
RUN docker-php-ext-install xmlrpc