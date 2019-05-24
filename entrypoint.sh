#!/bin/sh -l

sh -c "/usr/local/bin/composer global show --direct"
sh -c "/usr/local/bin/composer list"
sh -c "ls -la"
sh -c "/usr/local/bin/composer normalize --dry-run"
