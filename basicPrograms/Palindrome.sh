#!/bin/bash -x

function palindrome_number() {
NUMBER1=$1
NUMBER2=$NUMBER1
temp=0;
	while [ $NUMBER2 -ne 0 ]
		do
			temp1=$(( $NUMBER2 % 10 ))
			#temp2=(( $NUMBER2 % 10 ))
			#echo "$temp1"
			NUM_ARR[$temp]=$temp1;
			temp=$(( $temp + 1 ))
			NUMBER2=$(( $NUMBER2 / 10 ))
		done
  reverseNum=0

	for (( i=0 ; i<"${#NUM_ARR[@]}" ; i++ ))
		do
			reverseNum=$(( $reverseNum * 10 + ${NUM_ARR[i]} ))
		done
#echo "$reverseNum"
palindrome_status=0
if [ $reverseNum -eq $NUMBER1 ]
	then
		palindrome_status=1
		echo "$palindrome_status"
else
   echo "$palindrome_status"
fi
}
read -p "enter number for checking number palindrome: " num
status=$( palindrome_number $num )
if [ $status -eq 1 ]
	then
		echo "number is palindrome"
else
		echo "number is not palindrome"
fi
