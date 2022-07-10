#!/bin/bash

set -e

if [[ -z ${CURR_DIR} ]]; then
    CURR_DIR=$(pwd)
fi

if [[ -d ${REPO_NAME} ]]; then
    echo "Info : Target Repository(${REPO_NAME}) already exists and is not an empty directory"
    exit 0
fi

if [[ ! -z ${SOURCE_REPO} ]]; then
    command="git clone --branch ${SOURCE_RELEASE} ${SOURCE_REPO} ${REPO_NAME}"
    if [[ $verbose == 1 ]]; then
        echo "$command"
    fi
    eval "$command"
fi

if [[ ! -d ${REPO_NAME} ]]; then
    echo "Error : Target Repository(${REPO_NAME}) create failed"
    exit 1
fi

cd ${REPO_NAME}

command="git checkout -b ${SOURCE_RELEASE}-builddeb"
if [[ $verbose == 1 ]]; then
    echo "$command"
fi
eval "$command"

if [[ ! -z ${PATCH_FILE} ]]; then

    if [[ ! -f ${PATCH_FILE} ]]; then
        echo "Error : Patch File(${PATCH_FILE}) not found"
        exit 1
    fi

    command="patch -p1 < ${PATCH_FILE}"
    if [[ $verbose == 1 ]]; then
        echo "$command"
    fi
    eval "$command"
    if [[ $? -ne 0 ]]; then
	exit 1
    fi

    command="git add --all"
    if [[ $verbose == 1 ]]; then
        echo "$command"
    fi
    eval "$command"
    if [[ $? -ne 0 ]]; then
	exit 1
    fi
    
    command="git commit -m '[add] script files for build debian package'"
    if [[ $verbose == 1 ]]; then
        echo "$command"
    fi
    eval "$command"
    if [[ $? -ne 0 ]]; then
	exit 1
    fi
fi

if [[ ! -z ${TARGET_RELEASE} ]]; then
    command="git tag -a ${TARGET_RELEASE} -m 'Release ${TARGET_RELEASE}'"
    if [[ $verbose == 1 ]]; then
        echo "$command"
    fi
    eval "$command"
    if [[ $? -ne 0 ]]; then
	exit 1
    fi
fi

if [[ ! -z ${CURR_DIR} ]]; then
    cd ${CURR_DIR}
fi
