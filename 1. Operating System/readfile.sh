#!/bin/bash
file_path="/etc/passwd"
while read line
do
    echo "$line"
    sleep 0.20
done < $file_path
