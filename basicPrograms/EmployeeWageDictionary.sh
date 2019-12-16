#! /bin/bash -x 
PER_HR_WAGE=500;
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
	day=1
	declare -A wage;
	counter=0
	hrs=0
	totalSalary=0
	while [ $day -ne 20 -a $hrs -lt 50 ]
	do
		dayNum=$"day_$day"
		present=$( presentyChecker )
		if [ $present -eq 1 ]
		then
			hr=$( getWorkingHrs )
			dayWage=$( perDayWage $hr )
			wage["$dayNum"]=$"$dayWage"
			totalSalary=$(( $dayWage + $totalSalary ))
			hrs=$(( $hrs + $hr ))
		else
			wage[$dayNum]=0
		fi
		day=$(( $day + 1 ))
	done
		echo ${wage[@]}
	for (( i=1 ; i<=${#wage[@]} ; i++))
	do
		echo "day $i : ${wage[day_$i]}"
	done
}

main
