#!/bin/bash
# os == linux && user == root
OS_TYPE=$(uname)
if [[ ${OS_TYPE} == "Linux" || ${UID} -eq 0 ]]
then
  echo "user is root user or os is linux."
fi
