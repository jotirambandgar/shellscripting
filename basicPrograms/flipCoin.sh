#!/bin/bash -x
status=$(( RANDOM%2 ))
if [ $status -gt 0 ]
then
echo "HEAD"
else
echo "TAILS"
fi
