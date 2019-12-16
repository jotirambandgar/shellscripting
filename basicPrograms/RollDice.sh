#!/bin/bash
function main(){
	one=0
	two=0
	three=0
	four=0
	five=0
	six=0
	declare -A dice
	temp=0
	while [[ $one -ne 10 && $two -ne 10 && $three -ne 10 && $four -ne 10 && $five -ne 10 && $six -ne 10 ]]
	do
		diceNumber=$((RANDOM%6 + 1))
		dice["$temp"]=$"$diceNumber"
		if [ $diceNumber -eq 1 ]
		then 
			one=$(($one + 1))
		elif [ $diceNumber -eq 2 ]
		then	
			two=$(($two + 1))
		elif [ $diceNumber -eq 3 ]
		then
		   three=$(($three + 1))
		elif [ $diceNumber -eq 4 ]
   	then
   		four=$(($four +1 ))
		elif [ $diceNumber -eq 5 ]
		then
			five=$(($five +1 ))

		elif [ $NUMBER -eq 6 ]
  		then
			six=$(($six +1 ))
		fi
		temp=$(($temp + 1))	
	done	
	echo "$one $two $three $four $five $six"

	echo "${dice[@]}"
}
main
