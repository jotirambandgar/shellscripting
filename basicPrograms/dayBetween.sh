#! /bin/bash -x
read -p "enter day" day;
read -p "enter month" month;
if [ $month -ge 3 -a $month -le 7 ]
then
	echo "correct month"
	if [ $month -eq 3  -a  $day -gt 20 -a $day -le 31 ] || [ $month -eq 4  -a  $day -ge 1 -a $day -le 30 ] || [ $month -eq 5  -a  $day -ge 1 -a $day -le 31 ] || [ $month -eq 6  -a  $day -ge 1 -a $day -le 20 ]
	then
		echo "true"
	else
		echo "false"
	fi
else
	echo "false"
fi
