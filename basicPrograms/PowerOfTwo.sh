#!/bin/bash -x
read -p "enter number a number" NUMBER;
temp=1
num=1
while [ $temp -le $NUMBER -a $num -lt 256 ]  
do
	tempPower=$temp
	num=1
	while [ $tempPower -ne 0 ]
	do
		num=$(( $num * 2 ))
		tempPower=$(( $tempPower - 1 ))
		#echo $tempPower;
	done
	echo "2^$TEMP=$num";
	temp=$(( $temp + 1 ))
done
