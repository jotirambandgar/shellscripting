#! /bin/bash 
PRESENTSTATUS=$(( RANDOM%2 ))
PER_Hr_WAGE=500;
	case $PRESENTSTATUS in 1)

			 # "present"
			empStatus=$(( RANDOM%2 ))
				case $empStatus in 1)
							
							hr=8 
							;;
				
				 		 0)
							
							hr=4 ;;
				esac
 			dayWage=$(( $PER_Hr_WAGE * $hr))
		#	echo "employee daily wage $dayWage"
	         #       echo "employee daily wage $dayWage"
	;;
*)
			echo "not present"
	;;
	esac


