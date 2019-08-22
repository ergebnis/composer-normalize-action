FROM php:7.3-alpine

LABEL "repository"="https://github.com/localheinz/composer-normalize-action"
LABEL "homepage"="https://github.com/localheinz/composer-normalize"
LABEL "maintainer"="Andreas Möller <am@localheinz.com>"

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER=1
ENV COMPOSER_NORMALIZE_VERSION=1.3.0

RUN composer global require localheinz/composer-normalize:$COMPOSER_NORMALIZE_VERSION

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
