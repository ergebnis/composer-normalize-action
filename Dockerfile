FROM php:7.3-alpine

LABEL "repository"="https://github.com/localheinz/composer-normalize-action"
LABEL "homepage"="https://github.com/localheinz/composer-normalize"
LABEL "maintainer"="Andreas Möller <am@localheinz.com>"

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER=1

RUN composer global require localheinz/composer-normalize:1.3.0

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
