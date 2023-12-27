#!/bin/bash
ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1 #if other than 0
else
    echo "you are root user"
fi #fi means reverse of if, indication of condition end

yum install mysql -y