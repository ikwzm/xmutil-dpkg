#!/bin/bash

REPO_LIST=("xmutil" "fru-print" "libdfx" "dfx-mgr" "ddr-qos" "axi-qos" "xlnx-platformstats" "zynqmp-image-update")

SCRIPTS_DIR=$(cd $(dirname $0); pwd)
verbose=1

function prepare_repo () {
   local repo_name=$1
   echo "======================================"
   echo "Prepare ${repo_name}"
   echo "======================================"
   local scirpt="$SCRIPTS_DIR/prepare-${repo_name}.sh"
   local command="bash ${scirpt}"
   echo "${command}"
   ${command}
   local result=$?
   if [[ $result -ne 0 ]]; then
       echo "Error : $command"
       exit $result
   fi
}

for repo_name in "${REPO_LIST[@]}"
do
   prepare_repo $repo_name
done
