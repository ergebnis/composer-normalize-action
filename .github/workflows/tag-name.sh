#!/usr/bin/env bash

GITHUB_REF=$1

if [[ -n $GITHUB_REF && $GITHUB_REF == "refs/heads/master" ]]; then
  echo 'latest';

  exit 0
fi

if [[ -n $GITHUB_REF && $GITHUB_REF == refs/tags/* ]]; then
  echo "${GITHUB_REF#refs/tags/}";

  exit 0
fi

echo "Unable to determine tag name"

exit 1;
