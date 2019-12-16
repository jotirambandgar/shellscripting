#! /bin/bash 
PRESENTSTATUS=$(( RANDOM%2 ))
PER_Hr_WAGE=500;
	case $PRESENTSTATUS in 
	1)
		empStatus=$(( RANDOM%2 ))
			case $empStatus in 
				1)
					hr=8;;
			 	0)
					hr=4;;
			esac
 			dayWage=$(( $PER_Hr_WAGE * $hr));;
	*)
			echo "not present";;
	esac


