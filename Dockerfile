FROM php:7.4-cli-alpine

LABEL "repository"="https://github.com/ergebnis/composer-normalize-action"
LABEL "homepage"="https://github.com/ergebnis/composer-normalize"
LABEL "maintainer"="Andreas Möller <am@localheinz.com>"

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER=1
ENV COMPOSER_NORMALIZE_VERSION_DEFAULT=1.3.0

RUN composer global require ergebnis/composer-normalize:$COMPOSER_NORMALIZE_VERSION_DEFAULT --no-interaction --no-progress --no-suggest

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
