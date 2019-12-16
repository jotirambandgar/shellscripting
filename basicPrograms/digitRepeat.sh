#!/bin/bash -x 
	start=0
	end=100
	count=0
	while [ $start -ne $end ]
	do
		((start++))
			temp=$(( $start%11 ))
			if [ $temp -eq 0 ]
				then
					twoDigitArray[(count++)]=$start
			fi
		
		done
	echo "${twoDigitArray[@]}"
