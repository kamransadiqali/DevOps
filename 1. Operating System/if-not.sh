#!/bin/bash
name="hello world"
othername="Hello World"
if [[ ! ${othername} == ${name} ]]
then
    echo "both are same"
fi
