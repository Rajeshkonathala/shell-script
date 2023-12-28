#!/bin/bash

ID=$(id -u)
TIMESTAMP=(date +%F-%H-%M-%S)

echo "script name: $0"

LOGFILE="/tmp/$0-TIMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0 ]
    then    
        echo "ERROR:: $2 ... FAILED"
        exit 1
    else
        echo "$2 ... SUCCESS"
    fi
}

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1 #you can give other than 0
else
    echo "you are root user"
fi #fi means reverse of if, indication of condition end

yum install mysql -y &>> LOGFILE

VALIDATE $? "installing MySQL"

yum install git -y &>> LOGFILE

VALIDATE $? "installing GIT"