#!/bin/bash
R="\[31m"
G="\e{32m"
Y="\e[33m"

FOLDER="/var/log/shell-scripting-logs"
FILENAME=05-Function
TIMESTAMP=$(date +%y-%m-%d)
FILE="$FOLDER/$FILENAME-$TIMESTAMP.log"

VALIDATE() {
   if [ $? -ne 0 ]; then
     dnf install $PACKAGE 
    else
      echo -e "$PACAKGE installed $Y successfully"
    fi 
}

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
  echo "you need root access" &>>$FILE
  exit 1
fi 

for PACKAGE in 
do
  dnf list installed $PACKAGE
  if [ $? -ne 0 ]; then
   dnf install $PACKAGE -y 
   VALIDATE $1 "in your server"
  else
  echo -e "$G mysql is already installed in your server"  
  fi 
done