#!/bin/bash -X
read -p "enter choice " CHOICE;
read -p "enter distance" DISTANCE;
case $CHOICE in 
1 )
convDistanace=$(( $DISTANCE * 12 )) ;;
2 )
convDistanace=$(( $DISTANCE / 12 )) ;;
3 )
# convDistanace= $DISTANCE / 3.281 ;;
#echo $DISTANCE 3.281 | awk '{print $1 / $2}' ;;
conv ='$DISTANCE / 3.281' | bc -l ;;
4 )
convDistanace=$(( $DISTANCE * 3.281f )) ;;
* )
convDistance=0;;
esac
