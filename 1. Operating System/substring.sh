#!/bin/bash
string="abchelloworldabcxyz"
echo "${string:0}"  
echo "${string:1}"  
echo "${string:4}"  

echo "${string: -3}"

echo "${string:0:3}"
echo "${string:3:3}"

echo "${string#a*c}"

echo "${string##a*c}" 

echo "${string%b*z}" 

echo "${string%%b*z}" 

echo "${string/abc/xyz}"

echo "${string//abc/xyz}"

echo "${string/abc}"

echo "${string//abc}"
