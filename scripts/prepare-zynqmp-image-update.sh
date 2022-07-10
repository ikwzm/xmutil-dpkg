#!/bin/bash

### Prepare zynqmp-image-update

if [[ -z $SCRIPTS_DIR ]]; then
    SCRIPTS_DIR=$(cd $(dirname $0); pwd)
fi

if [[ -z $PATCHES_DIR ]]; then
    PATCHES_DIR="${SCRIPTS_DIR}/../files"
fi

REPO_NAME=zynqmp-image-update
SOURCE_REPO=https://github.com/Xilinx/linux-image_update
SOURCE_RELEASE=xilinx_v2022.1_update2
TARGET_RELEASE="${SOURCE_RELEASE}-dpkg"
PATCH_FILE="${PATCHES_DIR}/zynqmp-image-update-builddeb.patch"

. $SCRIPTS_DIR/prepare-repository.sh
