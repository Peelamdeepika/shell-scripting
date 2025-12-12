#!/bin/bash
USERID=$(id -u)

R="\e[31m"

G="\e[32m"

Y="\e[33m"


if [ $USERID -ne 0 ]; then
  echo "Now you are not root user"
  exit 1
fi 

yum install mysql -y

if [ $? -ne 0 ]; then
   echo -e "mysql is not  $R installed in your server"
    exit 1
else
  echo -e "mysql is installed in your server $Y succssfully"
fi         