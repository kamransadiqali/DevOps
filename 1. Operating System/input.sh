#!/bin/bash
read name
echo "Hello ${name}"



read name
read age
echo "Hello ${name}, and your age is ${age}"


read -p "please enter your name " name
read -p "please enter your age " age
echo "Hello ${name}, and your age is ${age}"

read -p "please enter your password " -s password
echo "your password is ${password}"
