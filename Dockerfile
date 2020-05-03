FROM php:7.4-cli-alpine

LABEL "repository"="https://github.com/ergebnis/composer-normalize-action"
LABEL "homepage"="https://github.com/ergebnis/composer-normalize"
LABEL "maintainer"="Andreas Möller <am@localheinz.com>"

ENV VERSION=2.5.1

RUN apk add --no-cache gnupg \
    && cd /opt/ \
    && wget https://github.com/ergebnis/composer-normalize/releases/download/${VERSION}/composer-normalize.phar.asc \
    && wget https://github.com/ergebnis/composer-normalize/releases/download/${VERSION}/composer-normalize.phar \
    && gpg --yes --keyserver pool.sks-keyservers.net --recv-keys 0FDE18AE1D09E19F60F6B1CBC00543248C87FB13 \
    && gpg --yes --verify composer-normalize.phar.asc composer-normalize.phar \
    && chmod +x composer-normalize.phar \
    && mv composer-normalize.phar /usr/bin/composer-normalize

ENTRYPOINT ["/usr/bin/composer-normalize"]
