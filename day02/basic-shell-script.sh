#!/bin/bash

name="Akshay Sutar"
echo "The Name is : $name"

college="D.Y.Patil Aggriculture and technical university"
echo "College name is $college and date is $(date)"



<< comments
echo "Enter the Username :"
echo "Enter the Hobbies :"
echo "Enter the age :"

read username
read hobby
read age

echo "your name is $username"
echo "your hobby is $hobby"
echo "your age is $age"

echo "$1 $2 $3"

read -p "Enter 1st value :" 1
read -p "Enter 2nd value :" 2

sum=$((1+2))
echo "Addition is :$sum"
comments

read -p "Enter your name :" username
read -p "Enter your age :" age
echo "My name is $username"
echo "My age is $age"

echo "new arguments are :$0 $1 $2"

sudo useradd -m $username
echo "user added successfully"



