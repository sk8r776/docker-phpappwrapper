FROM php:5.6.24-apache

MAINTAINER Sk8r776

RUN apt-get update && apt-get install -y \
	php-xml-rpc \
	php-xml-rpc2