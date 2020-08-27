#!/bin/bash -x

BRANCH=${BRANCH:-sisyphus}

docker build . -t "altlinux":"${BRANCH}"

rm altlinux.tar