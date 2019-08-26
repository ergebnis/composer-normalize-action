#!/bin/sh -l

sh -c "if [[ ! -z $COMPOSER_NORMALIZE_VERSION && '$COMPOSER_NORMALIZE_VERSION' != '$COMPOSER_NORMALIZE_VERSION_DEFAULT' ]]; then composer global require localheinz/composer-normalize:$COMPOSER_NORMALIZE_VERSION; fi"
sh -c "if [[ '$HOME' != '/root' ]]; then cp -r /root/.composer $HOME/.composer; fi"
sh -c "composer normalize --dry-run"
