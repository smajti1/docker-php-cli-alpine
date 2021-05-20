FROM php:7.4-cli-alpine

RUN apk update && apk add --no-cache \
    libxml2-dev

RUN docker-php-ext-install soap

COPY php.ini /usr/local/etc/php/php.ini
