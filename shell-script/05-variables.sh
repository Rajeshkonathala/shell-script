#!/bin/bash

echo "please enter your username: : "

read -s USERNAME #the value entered above will be automatically attached to  USERNAME variable

echo "please enter your password: : "

read -s PASSWORD

echo "username is: $USERNAME, password is: $PASSWORD" #im printing for validation, you should not echo username and passwords in scripts