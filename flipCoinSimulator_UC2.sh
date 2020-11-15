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
done
if [ $count1 -gt 2 ];
then
	echo "You win more than 2 times"
elif [ $count2 -gt 2 ];
then
	echo "Computer win more than 2 times"
else
	echo "Both lose!"
fi
