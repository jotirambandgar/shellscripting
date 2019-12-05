#!/bin/bash -x
function main(){
	arr=(-1 3 -2 0 -4 1 6 8 -9 -3)
		#echo ${arr[@]}
		for(( i=0 ; i < ${#arr[@]} ; i++ ))
			do
				for(( j=$(($i+1)) ; j < ${#arr[@]} ; j++ ))
					do
						for(( k=$(($j+1)) ; k< ${#arr[@]} ;k++ ))
							do
							 temp=$(( ${arr[$i]} + ${arr[$j]} + ${arr[$k]} ))
								if [ $temp -eq 0 ]
									then
										echo "${arr[$i]} + ${arr[$j]} + ${arr[$k]} = $temp"
								fi
							done
					done
			done

}
main
