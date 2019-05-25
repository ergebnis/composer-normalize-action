#!/bin/sh -l

sh -c "if [[ '$HOME' != '/root' ]]; then cp -r /root/.composer $HOME/.composer; fi"
sh -c "/usr/local/bin/composer normalize --dry-run"
