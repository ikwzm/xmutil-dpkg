#!/bin/bash

### Build zynqmp-image-update

REPO_NAME=zynqmp-image-update
SOURCE_RELEASE=xilinx_v2022.1_update2
TARGET_RELEASE="${SOURCE_RELEASE}-dpkg"

cd "${REPO_NAME}"

command_list=("git checkout ${TARGET_RELEASE}"
	      "debian/rules arch=arm64 deb_arch=arm64 clean"
	      "debian/rules arch=arm64 deb_arch=arm64 binary"
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
