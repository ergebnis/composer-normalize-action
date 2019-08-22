#!/bin/sh -l

sh -c "composer global require localheinz/composer-normalize:$COMPOSER_NORMALIZE_VERSION"
sh -c "if [[ '$HOME' != '/root' ]]; then cp -r /root/.composer $HOME/.composer; fi"
sh -c "composer normalize --dry-run"
