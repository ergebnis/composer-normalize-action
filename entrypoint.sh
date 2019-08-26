#!/bin/sh -l

if [ -n "$COMPOSER_NORMALIZE_VERSION" ] && [ "$COMPOSER_NORMALIZE_VERSION" != "$COMPOSER_NORMALIZE_VERSION_DEFAULT" ]; then
  composer global require localheinz/composer-normalize:"$COMPOSER_NORMALIZE_VERSION";
fi

if [ "$HOME" != '/root' ]; then
  cp -r /root/.composer "$HOME"/.composer;
fi

composer normalize --dry-run
