#!/bin/bash -x

BRANCH=${BRANCH:-Sisyphus}

TAG=$(echo $BRANCH | tr '[:upper:]' '[:lower:]' | cut -f1 -d'/')

docker build . -t "altlinux":"${TAG}"

rm altlinux.tar