#!/bin/sh -l

if [ "$HOME" != '/root' ]; then
  cp -r /root/.composer "$HOME"/.composer;
fi

if [ $# -eq 0 ]; then
  composer normalize --dry-run

  exit $?
fi

sh -c "composer normalize $*"
