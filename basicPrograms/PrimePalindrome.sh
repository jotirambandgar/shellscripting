#!/bin/bash -x
function primeNumberChecker(){
	num=$1
	div=$(( $num/2 ))
	while [ $div -gt 0 ]
		do 
			tempPrimeChk=$(( $num%$div ))
				if [ $num -eq 0 ]
					then
						status=1
						break
				else
						status=0
				fi
			div=$(( $div - 1 ))
		done
	echo "$status"

}

function palindrome_number() {
	number1=$1
	number2=$number1
	temp=0;
	while [ $number2 -ne 0 ]
		do
			temp1=$(( $number2 % 10 ))
			#temp2=(( $NUMBER2 % 10 ))
			#echo "$temp1"
			numArr[$temp]=$temp1;
			temp=$(( $temp + 1 ))
			NUMBER2=$(( $NUMBER2 / 10 ))
		done
  	reverseNum=0

	for (( i=0 ; i<"${#NumArr[@]}" ; i++ ))
		do
			reverseNum=$(( $reverseNum * 10 + ${NumArr[i]} ))
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
function main(){
	read -p "enter number for checking number palindrome: " num
	primeStatus=$( primeNumberChecker $num )

		if [ $primeStatus -eq 0 ]
			then 
			palindromeStatus=$( palindrome_number $num )
				if [ $palindromeStatus -eq 1 ]
					then
						echo "prime number is palindrome"
				else
						echo "prime number is not palindrome"
				fi
		else
				echo "number is not prime"
		fi
}
main
