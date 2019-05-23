#!/bin/bash

if [[ -n "$TRAVIS_TAG" ]]; then
    DOCKER_TAG=$TRAVIS_TAG
elif [ "$TRAVIS_BRANCH" == "master" ]; then
    DOCKER_TAG=latest
else
    exit 1
fi

docker build --tag localheinz/composer-normalize-action:$DOCKER_TAG .
echo "$DOCKER_PASSWORD" | docker login --password-stdin --username "$DOCKER_USERNAME"
docker push localheinz/composer-normalize-action
