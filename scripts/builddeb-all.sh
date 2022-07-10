#!/bin/bash

REPO_LIST=("xmutil" "fru-print" "dfx-mgr" "ddr-qos" "axi-qos" "xlnx-platformstats" "zynqmp-image-update")

SCRIPTS_DIR=$(cd $(dirname $0); pwd)
verbose=1

function build_repo () {
   local repo_name=$1
   echo "======================================"
   echo "Prepare ${repo_name}"
   echo "======================================"
   local scirpt="$SCRIPTS_DIR/builddeb-${repo_name}.sh"
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
    build_repo $repo_name
done
