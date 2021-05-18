FROM php:8.0-cli-alpine

RUN apk update && apk add --no-cache \
    libxml2-dev

RUN docker-php-ext-install soap

COPY php.ini /usr/local/etc/php/php.ini
