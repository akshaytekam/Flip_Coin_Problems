#!/bin/bash -x

echo "Choose (h)eads or (t)ails: "
read user_choice
# Make sure user chooses between heads or tails
if [ $user_choice != h ] && [ $user_choice != t ]; 
then
  echo "Invalid choice."
fi
# Value of 1 is heads, 2 is tails
random_choice=$((RANDOM % 2 + 1))
if [ $random_choice -eq 1 ]; then
  echo "Random chose heads."
else
  echo "Random chose tails."
fi
if [ $random_choice -eq 1 ] && [ $user_choice = h ]; then
  # Correct
  echo "You win!"
elif [ $random_choice -eq 1 ] && [ $user_choice = t     | ]; then
  # Incorrect
  echo "You lose!"
elif [ $random_choice -eq 2 ] && [ $user_choice = t ]; then
  # Correct
  echo "You win!"
else
  # Incorrect
  echo "You lose!"
fi
