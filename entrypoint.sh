#!/bin/sh -l

if [ -n "$COMPOSER_NORMALIZE_VERSION" ] && [ "$COMPOSER_NORMALIZE_VERSION" != "$COMPOSER_NORMALIZE_VERSION_DEFAULT" ]; then
  composer global require ergebnis/composer-normalize:"$COMPOSER_NORMALIZE_VERSION" --no-interaction --no-progress --no-suggest;
fi

if [ "$HOME" != '/root' ]; then
  cp -r /root/.composer "$HOME"/.composer;
fi

if [ $# -eq 0 ]; then
  composer normalize --dry-run

  exit $?
fi

sh -c "composer normalize $*"
