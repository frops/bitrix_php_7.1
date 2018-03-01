FROM php:7.1-fpm-alpine

MAINTAINER frops

RUN mkdir /app
WORKDIR /app

RUN docker-php-ext-install pdo pdo_mysql

ADD . /app

RUN curl -sS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/bin/ --filename=composer

EXPOSE 80
