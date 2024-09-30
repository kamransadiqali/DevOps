#!/bin/bash


echo this is kamran # in line comment

echo "my
name
is
kamran"

echo "
########### Script Starting ########
purpose: going to install nginx
####################################
"
# strong quotes.
echo 'my \
name \
is \
kamran'   # Escape character \ taken literally because of strong quoting.

echo " my \
name \
is \
kamran \
" # Newline escaped.
echo -e "this is hello \t world \t test name"
echo -e "this is hello \v world \v test name"
echo -e "this is hello \n world \n test name"
