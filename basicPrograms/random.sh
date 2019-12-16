#! /bin/bash -x
echo "random number are : $(( RANDOM ))"

echo "random number to get dice : $(( RANDOM%6 ))"

echo "addition of two random number: $(( $(( RANDOM )) + $(( RANDOM )) ))"

echo "five 2 digit random number"

count=0;
sum=0;

while [ "$count" -le 5 ]
do
	temp=$(( RANDOM ))
	if [ $temp -gt 9 -a $temp -lt 100 ]
	then
		echo $temp
		sum=$(($sum + $temp)) 
		count=$(($count + 1))
	fi
done

echo "sum $sum"
