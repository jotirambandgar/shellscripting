#!/bin/bash -x
head=0
tail=0
while [ $head -ne 11 ] && [ $tail -ne 11 ]
	do
		randomTemp=$(( RANDOM%2 ))
			#echo "$randomTemp"
		if [ $randomTemp -eq 0 ]
			then
				head=$(( $head + 1 ))
		elif [ $randomTemp -eq 1 ]
			then 
					tail=$(( $tail + 1 ))
		fi
	done
echo "number of heads $head"
echo "number of tails $tail"
if [ $head -eq 11 ]
	then
		echo "head win";
elif [ $tail -eq 11 ]
	then
	echo "tail win";
fi
