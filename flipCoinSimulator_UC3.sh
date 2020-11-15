#!/bin/bash -x

echo "Choose (h)eads or (t)ails: "
read user_choice
# Make sure user chooses between heads or tails
if [ $user_choice != h ] && [ $user_choice != t ];
then
  echo "Invalid choice."
fi
count1=0  #for user
count2=0  #for random computer
# Value of 1 is heads, 2 is tails
for (( i=0; i<5; i++ ))
do
random_choice=$((RANDOM % 2 + 1))
if [ $random_choice -eq 1 ];
then
  echo "Random chose heads."
else
  echo "Random chose tails."

fi
if [ $random_choice -eq 1 ] && [ $user_choice = h ];
 then
  # Correct
  echo "You win!"
        ((count1=count1+1));
elif [ $random_choice -eq 1 ] && [ $user_choice = t ];
then
  # Incorrect
  echo "You lose!"
        ((count2=count2+1));
elif [ $random_choice -eq 2 ] && [ $user_choice = t ];
then
  # Correct
  echo "You win!"
        ((count1=count1+1));
else

  # Incorrect
  echo "You lose!"
        ((count2=count2+1));
fi
((random_choice=random_choice+1))
done
	echo "User wins $count1 times"
	echo "Computer wins $count2 times"
a=$(($random_choice/2))
b=$(($count1/2))
#d=$(($b/2))
c=$(($a+$b))
	echo "Head is $b of total times"
	echo "Tail is $a of total times"
var=$((100*$a))
num=$(($var/$c))
	echo "Singlet percent is $num"



