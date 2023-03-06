#!/bin/bash

cat source.txt | while read line 
do
  # separate line with white space
  arr=(${line// / })

  # check each line consist from 3 parts name ID Email
  # get matching email using regex

  if [ ${#arr[@]} -eq '3' ] && [[ "${arr[1]} " =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4} ]]
  then
    if [ $((arr[2]%2)) -eq 0 ] 
    then
      echo " The ${arr[2]} of ${arr[1]} is EVEN"
    else
      echo " The ${arr[2]} of ${arr[1]} is ODD"
    fi
  fi
done
