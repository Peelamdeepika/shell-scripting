#!/bin/bash
USERID=$(id -u)


if [ $USERID -ne 0 ]; then
  echo "Now you are not root user"
  exit 1
fi 

yum install mysql -y

if [ $? -ne 0 ]; then
   echo "mysql is not installed in your server"
    exit 1
else
  echo "mysql is installed in your server succssfully"
fi         