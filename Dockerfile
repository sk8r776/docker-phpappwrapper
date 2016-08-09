FROM php:7.0-apache

MAINTAINER Sk8r776

RUN apt-get update

# Install GD
RUN apt-get install -y libfreetype6-dev \
	libjpeg62-turbo-dev \
	libpng12-dev \
	unzip \
	mysql-client \
	libxml2-dev \
	zlib1g-dev

# Configure and Install GD
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install gd

# Install MySQL
RUN docker-php-ext-install mysqli

# Install XMLRPC
RUN docker-php-ext-install xmlrpc

# Install Unzip
RUN docker-php-ext-install zip