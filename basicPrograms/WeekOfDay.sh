#!/bin/bash -x
read -p "enter day number" NUMBER;
if [ $NUMBER -eq 1 ]
then 
   echo "SUNDAY"
elif [ $NUMBER -eq 2 ]
then  
	echo "MON"
elif [ $NUMBER -eq 3 ]
then
   echo "TUE"
elif [ $NUMBER -eq 4 ]
then
   echo "WED"
elif [ $NUMBER -eq 5 ]
then
   echo "THUR"
elif [ $NUMBER -eq 6 ]
then
   echo "FRI"
elif [ $NUMBER -eq 7 ]
then
    echo "SAT"
else
   echo "invalid number"
fi

