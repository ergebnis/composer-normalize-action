FROM php:7.3-alpine

LABEL "com.github.actions.name"="localheinz/composer-normalize-action"
LABEL "com.github.actions.description"="Ensure your PHP project has a normalized composer.json."
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/localheinz/composer-normalize-action"
LABEL "homepage"="https://github.com/localheinz/composer-normalize"
LABEL "maintainer"="Andreas Möller <am@localheinz.com>"

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER=1

COPY composer.* /root/.composer/

RUN composer global install

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
