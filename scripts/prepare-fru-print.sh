#!/bin/bash

### Prepare fru-print

if [[ -z $SCRIPTS_DIR ]]; then
    SCRIPTS_DIR=$(cd $(dirname $0); pwd)
fi

REPO_NAME=fru-print
SOURCE_REPO=https://github.com/ikwzm/fru-print
SOURCE_RELEASE=v1.0.0
TARGET_RELEASE="${SOURCE_RELEASE}-dpkg"

. $SCRIPTS_DIR/prepare-repository.sh
