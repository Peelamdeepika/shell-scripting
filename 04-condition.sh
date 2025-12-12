#!/bin/bash
USERID=$(id -u)

R="\e31m
G="\e[32m
Y="\e33m


if [ $USERID -ne 0 ]; then
  echo "Now yor are not root user"
  exit 1
fi 

yum install mysql -y

if [ $? -ne 0 ]
   echo "mysql is not $R installed in your server"
    exit 1
else
  echo "mysql is installed in your server $Y succssfully"
fi         

