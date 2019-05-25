#!/bin/sh -l

sh -c "whoami"
sh -c "echo $HOME"
sh -c "ls -la $HOME"
sh -c "echo $COMPOSER_HOME"
sh -c "which composer"
sh -c "/usr/local/bin/composer global show --direct"
sh -c "/usr/local/bin/composer list"
sh -c "ls -la"
sh -c "/usr/local/bin/composer normalize --dry-run"
