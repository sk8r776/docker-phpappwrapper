FROM php:7.0-apache

MAINTAINER Sk8r776

RUN apt-get update \
&& docker-php-ext-install xmlrpc \
&& docker-php-ext-install pdo_mysql