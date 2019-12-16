#!/bin/bash -x
read -p "enter a year: " year;
if [ $(($year % 4)) -eq 0 ] || [ $(($year % 400)) -eq 0 -a $(($year % 100)) -ne 0 ]
then
	echo "$year is leap year"
else
	echo "not a leap year"
fi
