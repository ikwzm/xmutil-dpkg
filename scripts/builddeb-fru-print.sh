#!/bin/bash

### Build fru-print

REPO_NAME=fru-print
SOURCE_RELEASE=v1.0.0
TARGET_RELEASE="${SOURCE_RELEASE}"

cd "${REPO_NAME}"

command_list=("git checkout ${TARGET_RELEASE}"
	      "debian/rules clean"
	      "debian/rules binary"
	     )

for command in "${command_list[@]}"
do     
    if [[ $verbose == 1 ]]; then
        echo "$command"
    fi
    eval "$command"
    if [[ $? -ne 0 ]]; then
        echo "Error : $command"
        exit 1
    fi
done
