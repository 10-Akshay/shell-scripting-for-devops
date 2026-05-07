#!/bin/bash


read -p "Enter the 1st username :" username
echo "1st Username :$username"

read -p "Enter the 2nd username :" username2
echo "2nd username :$username2"


sudo useradd -m $username
sudo useradd -m $username2



echo "The users are :$0 $1 $2"



