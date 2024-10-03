#!/bin/bash
if [ "learningocean" == "learningocean" ]
then
  echo "both string are equal"
fi

if [ learningocean == learningocean ]
then
  echo "both string are equal"
fi

name=learningocean
if [ name == learningocean ]
then
  echo "both string are equal"
fi

name=learning ocean
if [ $name == learning ocean ]
then
  echo "both string are equal"
fi

name="learning ocean"
if [ "$name" == "learning ocean" ]
then
 echo "both string are equal"
fi

name="learning ocean"
othername="learning ocean"
if [ "${name}" == "${othername}" ]
then
 echo "both string are equal"
fi


name="learning ocean"
othername="learning ocean"
if [ ${name} == ${othername} ]
then
 echo "both string are equal"
fi


name="learning ocean"
othername="learning ocean"
if [[ ${name} == ${othername} ]]
then
 echo "both string are equal"
fi


name="hello world from linux"
othername="hello world from docker"

# -n mean string length is non zero so below condition will become true.
if [[ -n ${name} ]]
then
  echo "length of string is non zero"
fi

# -z mean string length is zero, so below condition is false.
if [[ -z ${name} ]]
then
  echo "length of string is zero"
fi

# check two string are equals using ==
if [[ ${name} == ${othername} ]]
then
  echo "both string are equals"
fi

# check two string are not equals.
if [[ ${name} != ${othername} ]]
then
  echo "both string are not equals"
fi


number=15
if [[ $number -eq 5 ]]
then
  echo "number is eq 5"
fi
if [[ $number -lt 10 ]]
then
  echo "number is lessthen 10"
fi
if [[ $number -gt 4 ]]
then
  echo "number is grater then 4"
fi
