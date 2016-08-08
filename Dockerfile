FROM php:7.0-apache

MAINTAINER Sk8r776

RUN apt-get update && apt-get install -y \
	php-xml-rpc