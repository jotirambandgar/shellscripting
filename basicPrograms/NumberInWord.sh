#!/bin/bash
	read -p "enter a single digit number: " NUMBER;
	if [ $NUMBER -eq 1 ]
	then 
		echo "one"
	elif [ $NUMBER -eq 2 ]
	then	
		echo "TWO"
	elif [ $NUMBER -eq 3 ]
	then
   	echo "THREE"
	elif [ $NUMBER -eq 4 ]
   then
   	echo "FOUR"
	elif [ $NUMBER -eq 5 ]
   then
   	echo "FIVE"
	elif [ $NUMBER -eq 6 ]
   then
   	echo "SIX"
	elif [ $NUMBER -eq 7 ]
   then
		 echo "SEVEN"
	elif [ $NUMBER -eq 8 ]
   then
   	echo "EIGHT"
	elif [ $NUMBER -eq 9 ]
   then
   	echo "NINE"
	else
		echo "invalid number"
	fi

