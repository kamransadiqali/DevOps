#!/bin/bash

echo "=========== loop one ========"
for i in "$*"
do
    echo $i
done

echo "=========== loop two ========"
for i in "$@"
do
    echo $i
done
