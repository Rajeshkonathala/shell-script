#!/bin/bash
NUMBER=$1
R="e\[31m"
G="e\[32m"
Y="e\[33m"
N="e\[0m"

if [ "$NUMBER" -gt 100 ]
then
    echo -e "Give number $G $NUMBER is greater than 100"
else
    echo -e "Give number $R $NUMBER is not greater than 100"
fi