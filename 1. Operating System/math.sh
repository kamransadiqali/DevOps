#!/bin/bash
a=5
b=6
echo "$((a+b))"
echo "$((a-b))"
echo "$((a*b))"
echo "$((a/b))" # 5/6
echo "$((a%b))"
echo "$((2**3))" # 2*2*2
((a++)) # a=a+1
echo $a
((a+=3)) # a=a+3
echo $a

x=10
y=3

let "z = $(( x * y ))"  # multiplication
echo $z
let z=$((x*y))
echo $z

let "z = $(( x / y ))"  # division
echo $z
let z=$((x/y))
echo $z


a=10
b=3

# there must be spaces before/after the operator
sum=`expr $a + $b`
echo $sum

sub=`expr $a - $b`
echo $sub

mul=`expr $a \* $b`
echo $mul

div=`expr $a / $b`
echo $div
