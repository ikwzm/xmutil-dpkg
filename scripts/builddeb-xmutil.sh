#!/bin/bash

### Build xmutil

REPO_NAME=xmutil
SOURCE_RELEASE=xilinx_v2022.1_update2
TARGET_RELEASE="${SOURCE_RELEASE}-dpkg"

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
