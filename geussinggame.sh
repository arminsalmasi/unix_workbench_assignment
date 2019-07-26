#!/usr/bin/env bash

guess_flag=0

function num_file {
local n_file=0
for i in *;do
  if ! [ -d $i ]; then
    let n_file=$n_file+1
  fi
done
echo $n_file
}

n=$(num_file)

echo "This is a guessing game. "
echo "Guess how many files are in this folder:"
while [ "$guess_flag" -eq 0 ]; do
  read guess
  if [ $guess -eq $n ];then
      guess_flag=1
      echo "Congradulation, your guess is correct!"
  elif [ $guess -gt $n ];then
      echo "Your guess is too high! guess again!"
  elif [ $guess -lt $n ]; then
      echo "Your guess is to low! guess again!" 
  fi
done
