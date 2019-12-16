#!/bin/bash -x

function palindromeNumberChecker(){
	NUMBER=$1
	tempNum=$NUMBER1
	temp=0;
	while [ $NUMBER2 -ne 0 ]
	do
		temp1=$(( $tempNum % 10 ))
		numArr[$temp]=$temp1;
		temp=$(( $temp + 1 ))
		tempNum=$(( $tempNum / 10 ))
	done
  reverseNum=0

	for (( i=0 ; i<"${#numArr[@]}" ; i++ ))
	do
		reverseNum=$(( $reverseNum * 10 + ${numArr[i]} ))
	done

	palindrome_status=0
	if [ $reverseNum -eq $NUMBER ]
	then
		palindrome_status=1
		echo "$palindrome_status"
	else
   	echo "$palindrome_status"
	fi
}

function main(){
	read -p "enter number for checking number palindrome: " number
	status=$( palindromeNumberChecker $num )
	if [ $status -eq 1 ]
	then
		echo "number is palindrome"
	else
		echo "number is not palindrome"
	fi
}
main
