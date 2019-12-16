#!/bin/bash -x
magic_number()
{
	start=$1
	end=$2
	add=$(($start + $end))
	mid=$(($add / 2))
	echo "if your number is $mid then press 1 "
	echo "if your number is less than $mid then press 2"
	echo "if your number is greater than $mid then press 3--->"
	read status;
	if [ $status -eq 1 ]
	then
		echo "$mid is your number"
	elif [ $status -eq 2 ]
	then
		end=$mid
		magic_number $start $end
	elif [ $status -eq 3 ]
	then
		start=$mid
		magic_number $start $end
	fi

	#magic_number 1 2 4
}

read -p "enter number" NUMBER
magic_number 0 $NUMBER
