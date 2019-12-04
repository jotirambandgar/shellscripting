#!/bin/bash -x
amount=100
bet=1
goal=0
won=0
loss=0
while [ $amount -ne 0 ] && [ $goal -ne 200 || $goal -ne 0 ]
	do
		tempRandom=$(( RANDOM%2 ))
		if [ $tempRandom -eq 1 ]
			then
				goal=$(( $goal + 1 ))
				win=$(( $win + 1 ))
		else
				loss=$(( $loss + 1 ))
				goal=$(( $goal - 1 ))
				amount=$(( $amount - $bet ))
		fi
	done
echo "users amount $amount"
echo "user goal $goal"
echo "number of wins : $win"
