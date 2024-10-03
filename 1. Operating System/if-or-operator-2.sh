#!/bin/bash
read -p "do you want to continue (Y/y/yes) " uservalue
if [[ ${uservalue,,} == 'y' || ${uservalue,,} == 'yes' ]]
then
  echo "you want it"
else
  echo "you dont want it."
fi
