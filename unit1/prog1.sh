#! /bin/bash

a=10
b=1
c=12

if [ $a -gt $b ] && [ $a -gt $c ] 
then
   echo "The Greatest numer is $a"
elif [ $b -gt $c ] && [ $b -gt $a ] 
then 
   echo "THe greatest number is b"
else
   echo "the greatest number is c"
fi
