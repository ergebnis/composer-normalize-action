FROM php:7.4-cli-alpine

LABEL "repository"="https://github.com/ergebnis/composer-normalize-action"
LABEL "homepage"="https://github.com/ergebnis/composer-normalize"
LABEL "maintainer"="Andreas Möller <am@localheinz.com>"

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER=1 \
    COMPOSER_HOME=/root/.composer

RUN composer global require ergebnis/composer-normalize:2.2.0 --no-interaction --no-progress --no-suggest

RUN mkdir /app

WORKDIR /app

ENTRYPOINT ["/usr/local/bin/composer", "normalize"]

CMD ["--dry-run"]
