#!/bin/bash -x
read -p "ENTER a number" NUMBER;
if [ $NUMBER -eq 10 ]
	then
		echo "ten";
elif [ $NUMBER -eq 100 ]
	then 
		echo "hundred"
elif [ $NUMBER -eq 1 ]
	then 
		echo "Unit"
fi
