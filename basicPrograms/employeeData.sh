#! /bin/bash 
TEMP=$(( RANDOM%2 ))
PER_Hr_WAGE=500;
if [ $TEMP -eq 1 ]
	then 
		echo "present"
		if [ $(( RANDOM%2 )) -eq 1 ]
			then
				echo "full time"
				hr=8;
				
		else
				echo "part time"
				hr=4;
		
		fi
 dayWage=$(( $PER_Hr_WAGE * $hr))
	echo "employee daily wage $dayWage"
else
	echo "not present"
fi
