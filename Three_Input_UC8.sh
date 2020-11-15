#!/bin/bash -x

read -p "Enter the first number : " a
read -p "Enter second number : " b
read -p "Enter third number : " c

#doing arithmetic operations
add_mul=$(($a+$b*$c));
mul_add=$(($a*$b+$c));
add_divide=$(($c+$a/$b));
modulo_add=$(($a%$b+$c));

#storing the arithmetic operation values in a dictionary
A_Operation[add_mul]=$add_mul;
A_Operation[mul_add]=$mul_add;
A_Operation[add_divide]=$add_divide;
A_Operation[modulo_add]=$modulo_add;

#reading values from dictionary to array
count=0;
#creating an array namely Results
Results[((counter++))]=${A_Operation[add_mul]}
Results[((counter++))]=${A_Operation[mul_add]}
Results[((counter++))]=${A_Operation[add_divide]}
Results[((counter++))]=${A_Operation[modulo_add]}

echo "Array Values in Original Form";
echo ${Results[@]};

#sorting the values in decending order

for ((i = 0; i<5; i++))
do

    for((j = 0; j<5-i-1; j++))
    do

        if [[ ${Results[j]} -lt ${Results[`expr $j + 1`]} ]]
        then
            # swap
            temp=${Results[j]}
            Results[$j]=${Results[$((j+1))]}
            Results[$((j+1))]=$temp
        fi
    done
done

echo "Array in decending order :"
echo ${Results[@]};

#sorting the values in ascending order
for ((i = 0; i<5; i++))
do

    for((j = 0; j<5-i-1; j++))
    do

        if [[ ${Results[j]} -gt ${Results[`expr $j + 1`]} ]]
        then
            # swap
            temp=${Results[j]}
            Results[$j]=${Results[$((j+1))]}
            Results[$((j+1))]=$temp
        fi
    done
done

echo "Array in accending order :"
echo ${Results[@]}
