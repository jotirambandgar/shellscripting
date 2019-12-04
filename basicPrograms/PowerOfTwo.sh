#!/bin/bash -x
read -p "enter number a number" NUMBER;
TEMP=1
num=1
while [ $TEMP -le $NUMBER -a $num -lt 256 ]  
	do
		tempPower=$TEMP
		num=1
		while [ $tempPower -ne 0 ]
			do
				num=$(( $num * 2 ))
				tempPower=$(( $tempPower - 1 ))
				#echo $tempPower;
			done
		echo "2^$TEMP=$num";
		TEMP=$(( $TEMP + 1 ))
	done
