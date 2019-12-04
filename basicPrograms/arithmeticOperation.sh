#!/bin/bash -x
read -p "enter 1st number " a;
read -p "enter 2nd number " b;
read -p "enter 3rd number " c;
operationFirst=$(( $a + $b * $c ))
echo "a + b * c= $operationFirst"
operationSecond=$(( $a % $b + $c ))
echo "a % b + c= $operationSecond"

operationThird=$(( $c + $a / $b))
echo "c + a / c= $operationThird"

operationFourth=$(( $a * $b + $c ))
echo "a * b c c= $operationFourth"

