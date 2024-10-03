#!/bin/bash
number=4

if [[ ${number} -eq 10 ]]
then
  echo "number is 10"
elif [[ ${number} -lt 10 ]]
then
  echo "number is less then 10"
elif [[ ${number} -lt 5 ]]
then
  echo "number is less then 5"
else
  echo "number is grater then 10"
fi
