#!/bin/bash

read -p " please enter your name " name

name=${name:-World}

echo "Hello ${name^}"

yourname=${unsetvariable-Linux}
echo $yourname

myname=""
mytestname=${myname:-Ubuntu}
echo ${mytestname}

: ${1:?" please set variable values. "}
echo "i am here."
