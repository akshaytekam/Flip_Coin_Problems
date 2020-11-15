#!/bin/bash -x

declare -A COUNT

HHH=0;
HHT=0;
HTT=0;
HTH=0;
THH=0;
TTH=0;
TTT=0;
THT=0;
for (( i=0; $i<10; i++ ))
do

flipCoin=$((RANDOM%2))   # Doublet combination
flipCoin1=$((RANDOM%2))
flipCoin2=$((RANDOM%2))
if [ $flipCoin -eq 1 ] && [ $flipCoin1 -eq 1 ] && [ $flipCoin2 -eq 1 ]
then

        echo "HHH";
        COUNT[HHH]=$((HHH++))
elif [ $flipCoin -eq 1 ] && [ $flipCoin1 -eq 1 ] && [ $flipCoin2 -eq 0 ]
then
        echo "HHT";
        COUNT[HHT]=$((HHT++))
elif [ $flipCoin -eq 1 ] && [ $flipCoin1 -eq 0 ] && [ $flipCoin2 -eq 0 ]
then
        echo "HTT";
        COUNT[HTT]=$((HTT++))
elif [ $flipCoin -eq 0 ] && [ $flipCoin1 -eq 0 ] && [ $flipCoin2 -eq 0 ]
then
        echo "TTT";
        COUNT[TTT]=$((TTT++))
elif [ $flipCoin -eq 0 ] && [ $flipCoin1 -eq 0 ] && [ $flipCoin2 -eq 1 ]
then
        echo "TTH";
        COUNT[TTH]=$((TTH++))
elif [ $flipCoin -eq 0 ] && [ $flipCoin1 -eq 1 ] && [ $flipCoin2 -eq 1 ]
then

 echo "THH";
        COUNT[THH]=$((THH++))
elif [ $flipCoin -eq 0 ] && [ $flipCoin1 -eq 1 ] && [ $flipCoin2 -eq 0 ]
then
        echo "THT";
        COUNT[THT]=$((THT++))
else
        echo "HTH";
        COUNT[HTH]=$((HTH++))

fi

done

COUNT[HHH]=$(($HHH*100/10));   # Triplet combination
COUNT[HHT]=$(($HHT*100/10));
COUNT[HTT]=$(($HTT*100/10));
COUNT[TTT]=$(($TTT*100/10));
COUNT[TTH]=$(($TTH*100/10));
COUNT[THH]=$(($THH*100/10));
COUNT[THT]=$(($THT*100/10));
COUNT[THT]=$(($HTH*100/10));
