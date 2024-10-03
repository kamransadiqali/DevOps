#!/bin/bash

function install(){
  echo "executing ${FUNCNAME} - start"
  echo "installing ${1}"
  echo "executing ${FUNCNAME} - end"
}
function configuration(){
  echo "config ${1}"
  echo "${FUNCNAME}"
}

function deploy() {
  echo "deploying ${1}"
  echo "${FUNCNAME}"
}
install "nginx"
configuration "nginx"
deploy "webapplication"
