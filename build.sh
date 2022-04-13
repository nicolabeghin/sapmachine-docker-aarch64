#!/bin/bash

########################################################
# repo
ACCOUNT=nicolabeghin
REPOSITORY=sapmachine-aarch64
VERSION=11
MAJOR_VERSION=11
MINOR_VERSION=11.0.15
########################################################

docker build -t $ACCOUNT/$REPOSITORY:${MAJOR_VERSION} -t $ACCOUNT/$REPOSITORY:${MINOR_VERSION} .