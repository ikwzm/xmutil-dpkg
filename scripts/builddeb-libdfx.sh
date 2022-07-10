#!/bin/bash

### Build libdfx

REPO_NAME=libdfx
SOURCE_RELEASE=xilinx_v2022.1_update2
TARGET_RELEASE="${SOURCE_RELEASE}-dpkg"

cd "${REPO_NAME}"

command_list=("git checkout ${TARGET_RELEASE}"
	      'mkdir build'
	      'cd build'
	      'cmake -DCMAKE_TOOLCHAIN_FILE="../cmake/toolchain.cmake" ..'
	      'cpack -G DEB -C CPackConfig.cmake'
	      'cp libdfx*.deb ../..'
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
