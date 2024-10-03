#!/bin/bash

read -p "please enter a number " number
for variableName in {1..10}
do
  echo $((variableName*number))
done
