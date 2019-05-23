FROM php:7.3-alpine

LABEL "com.github.actions.name"="localheinz/composer-normalize-action"
LABEL "com.github.actions.description"="Ensure your PHP project has a normalized composer.json."
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/localheinz/composer-normalize-action"
LABEL "homepage"="https://github.com/localheinz/composer-normalize"
LABEL "maintainer"="Andreas Möller <am@localheinz.com>"

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

RUN addgroup -g 1000 -S normalizer && adduser -u 1000 -S normalizer -G normalizer

USER normalizer

RUN mkdir /home/normalizer/.composer && chown -R normalizer:normalizer /home/normalizer/.composer

COPY --chown=normalizer composer.* /home/normalizer/.composer/

RUN composer global install

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
