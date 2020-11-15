#!/bin/bash -x

echo "Enter a b and c"  #Taking multiple inputs
read A B C

echo "Value of a is: $A"
echo "Value of b is: $B"
echo "Value of c is: $C"
declare -A Dict
num=$(( $A+$B+$C ))
num2=$(( $A+$B*$C ))
Dict[key1]="$num"
Dict[key2]="$num2"
echo ${Dict[@]}
declare -a Array
Array[var1]="${Dict[key1]}"
Array[var2]="${Dict[key2]}"
echo ${Array[@]}
