#! /bin/bash -x
	value1=300;
	value2=500;
	value3=421;
	value4=521;
	value5=422;

	if [ $value1 -gt $value2 -a $value1 -gt $value3 -a $value1 -gt $value4 -a $value1 -gt $value5 ]
	then
		echo  "maximum number $value1"
	elif [ $value2 -gt $value1 -a $value2 -gt $value3 -a $value2 -gt $value4 -a $value2 -gt $value5 ]
	then
		echo "maximum namuber $value2"
	elif [ $value3 -gt $value1 -a $value3 -gt $value2 -a $value3 -gt $value4 -a $value3 -gt $value5 ]
	then
		echo "maximum namuber $value3"
	elif [ $value4 -gt $value1 -a $value4 -gt $value3 -a $value4 -gt $value3 -a $value4 -gt $value5 ]
	then
		echo "maximum namuber $value4"
	elif [ $value5 -gt $value1 -a $value5 -gt $value2 -a $value5 -gt $value5 -a $value5 -gt $value4 ]
	then
		echo "maximum namuber $value5"
	fi
	if [ $value1 -lt $value2 -a $value1 -lt $value3 -a $value1 -lt $value4 -a $value1 -lt $value5 ]
	then
		echo  "minimum number $value1"
	elif [ $value2 -lt $value1 -a $value2 -lt $value3 -a $value2 -lt $value4 -a $value2 -lt $value5 ]
	then
		echo "minimum number $value2"
	elif [ $value3 -lt $value1 -a $value3 -lt $value2 -a $value3 -lt $value4 -a $value3 -lt $value5 ]
	then
		echo "minimum number $value3"
	elif [ $value4 -lt $value1 -a $value4 -lt $value3 -a $value4 -lt $value3 -a $value4 -lt $value5 ]
	then
		echo "minimum number $value4"
	elif [ $value5 -lt $value1 -a $value5 -lt $value2 -a $value5 -lt $value5 -a $value5 -lt $value4 ]	
	then
		echo "minimum number $value5"
	fi




