#!/bin/bash
file_full_path="/home/kamran/tmp.json"

# check file is a directory.
if [[ -d $file_full_path ]]
then
   echo  "${file_full_path} is a dir"
fi

# -b means file is block device.
if [[ -b $file_full_path ]]
then
   echo  "${file_full_path} is a block device"
fi

#check, file is a char device.
if [[ -c $file_full_path ]]
then
   echo  "${file_full_path} is a char device"
fi

#check, file exists.
if [[ -e $file_full_path ]]
then
   echo  "${file_full_path} is a exist device"
fi

#check, file have read permission.
if [[ -r $file_full_path ]]
then
   echo  "${file_full_path} have read permission"
fi

# check, file have write permission
if [[ -w $file_full_path ]]
then
   echo  "${file_full_path} have write permission"
fi
# check file have execute permission.
if [[ -x $file_full_path ]]
then
   echo  "${file_full_path} have execute permission"
fi
