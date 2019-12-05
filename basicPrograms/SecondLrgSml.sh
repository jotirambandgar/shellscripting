#!/bin/bash -x

function getThreeDigit(){
	threeDigitRdm=$(( RANDOM%1000 ))
	echo $threeDigitRdm
}

function getSecondLargestNum(){
	array=("$@")
	largest=0
	secondLargest=0
		for  arrValue in ${array[@]}
			do
				#echo $arrValue
				if [ $arrValue -gt $largest ]
					then
					secondLargest=$largest
					largest=$arrValue
					continue;
				fi
				if [ $arrValue -gt $secondLargest ]
					then
						secondLargest=$arrValue
				fi
			done
	echo $secondLargest
}

function  getSecondSmallest(){
	array=("$@")
   smallest=${array[0]}
   secondSmallest=${array[0]}
      for  arrValue in ${array[@]}
         do
            #echo $arrValue
            if [ $arrValue -lt $smallest ]
               then
               secondSmallest=$smallest
               smallest=$arrValue
               continue;
            fi
            if [ $arrValue -lt $secondSmallest ]
               then
                  secondSmallest=$arrValue
            fi
         done
   echo $secondSmallest
}

function main(){
	counter=0
	for(( i=0 ; i<10 ; i++ ))
		do
			randomArr[$i]=$( getThreeDigit )
		done
	echo "${randomArr[@]}"
 	secondLrg=$(getSecondLargestNum "${randomArr[@]}") 
	echo "2nd largest $secondLrg"
	secondSml=$(getSecondSmallest "${randomArr[@]}")
	echo "2nd smallest number $secondSml"
}
main
