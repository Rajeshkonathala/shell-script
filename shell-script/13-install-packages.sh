#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=( date +%F-%H-%M-%S )

echo "Script started executed at $TIMESTAMP"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 .. $R FAILED $N"
    else
        echo -e "$2 .. $G SUCESS $N"
    fi
}

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
    yum installed $packages # package is installed
    if [ $? -ne 0 ]
    then
        yum install $package -y # if not then install the package
        VALIDATE $? " Installation of $packaege" # validate the package
    else
        echo -e "$package is already installed... $Y Skipping $N"
    fi
done