#! /bin/bash 
#TEMP=$(( RANDOM%2 ))
	PER_Hr_WAGE=500;
#function create for getting employee working hour
function getWorkingHrs() {
			#echo "present"
			if [ $(( RANDOM%2 )) -eq 1 ]
				then
					#echo "full time"
					hr=8;
				echo $hr
			else
					#echo "part time"
					hr=4;
				echo $hr
			fi

	}
#random variable for deciding it employee present or not
function presentyChecker(){
	temp=$(( RANDOM%2 ))
 	echo $temp
}

function perDayWage(){
	hr=$1
	perHrWage=500
	dayWage=$(( $perHrWage * $hr ))
	echo $dayWage
}

function main(){
	day=20
	counter=0
	hrs=0
	totalSalary=0
	while [ $day -ne 0 -a $hrs -lt 50 ]
		do
			present=$( presentyChecker )
			if [ $present -eq 1 ]
				then
								hr=$( getWorkingHrs )
								dayWage=$( perDayWage $hr )
								totalWage[((counter++))]=$dayWage
								totalSalary=$(( $dayWage + $totalSalary ))
						hrs=$(( $hrs + $hr ))
			fi
			day=$(( $day - 1 ))
			done
		echo ${totalWage[@]}
		echo "employee weekly salary $totalSalary"
}

main
