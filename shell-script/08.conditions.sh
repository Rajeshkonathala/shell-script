#!/bin/bash
NUMBER=$1
R="e\[31m"
G="e\[32m"
Y="e\[33m"
N="e\[0m"

if [ "$NUMBER" -gt 100 ]
then
    echo -e "Give number $NUMBER is $G greater than 100 $N"
else
    echo "Give number $NUMBER is $R not greater than 100 $N"
fi