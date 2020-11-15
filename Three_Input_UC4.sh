#!/bin/bash -x

echo "Enter a b and c"  #Taking multiple inputs
read A B C

echo "Value of a is: $A"
echo "Value of b is: $B"
echo "Value of c is: $C"

echo $(( $C+$A/$B ))
