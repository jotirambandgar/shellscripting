#! /bin/bash 
#TEMP=$(( RANDOM%2 ))
PER_Hr_WAGE=500;
#function create for getting employee working hour
function getWorkingHrs() {
	if [ $(( RANDOM%2 )) -eq 1 ]
	then
		hr=8;
		echo $hr
	else
		hr=4;
		echo $hr
	fi

}
#rando variable for deciding it employee present or not
TEMP=$(( RANDOM%2 ))
if [ $TEMP -eq 1 ]
then 
	#calling function for employee working hr
	hr="$( getWorkingHrs )"
	echo "working hrs $hr"
	#calculating employee wages 
 	dayWage=$(( $PER_Hr_WAGE * $hr))
	echo "employee daily wage $dayWage"

else
	echo "not present"
fi
