#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $ID -ne 0 ]
then
    echo -e "ERROR:: $R Please run this script with root access $N"
    exit 1 #you can give other than 0
else
    echo "you are root user"
fi #fi means reverse of if, indication of condition end

#echo "All args passed: $@"
# git mysql postfix net-tools
# package=git for first time

for package in $@
do
    
done