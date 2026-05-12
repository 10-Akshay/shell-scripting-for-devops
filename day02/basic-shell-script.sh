#!/bin/bash

<<comments
name="Akshay Sutar"
echo "The Name is : $name"

college="D.Y.Patil Aggriculture and technical university"
echo "College name is $college and date is $(date)"




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


read -p "Enter your name :" username
read -p "Enter your age :" age
echo "My name is $username"
echo "My age is $age"

echo "new arguments are :$0 $1 $2"

sudo useradd -m $username
echo "user added successfully"
comments


read -p "Enter the 1st no :" no1
read -p "Enter the 2nd no :" no2
read -p "Enter the 3rd no :" no3

if (( $no1 > $no2 && $no1 > $no3 ))
then
	for (( i = 1; i <= 5; i++))
	do
		echo "$no1 is Greater"
	done
elif (( $no2 > $no1 && $no2 > $no3 ))
then 
	for (( i = 1; i <= 5; i++ ))
	do
		echo "$no2 is Greater"
	done
elif (( $no3 > $no1 && $no3 > $no2 ))
then
	for (( i = 1; i <= 5; i++ ))
	do
		echo "$no3 is Greater"
	done
else
	echo "Enter valid input"
fi




