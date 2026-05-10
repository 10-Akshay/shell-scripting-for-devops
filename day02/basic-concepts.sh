#!/bin/bash

<<comments
read -p "Press any no. 1-4 :" n

case $n in

1)
	addition 
	;;
2)
	substraction
	;;
3)
	multiplication
	;;
4)
	division
	;;
*)
	echo "Invalid input! press between only 1-4"
	;;
esac
comments

function addition()
{
	read -p "Enter the 1st no :" no1
	read -p "Enter the 2nd no :" no2
	sum=$((no1 + no2))
	echo "Addition :$sum"


}

function substraction()
{
	read -p "Enter the 1st no :" no1
	read -p "Enter the 2nd no :" no2
	sub=$((no1 - no2))
        echo "Substraction :$sub"
}

function multiplication()
{
	read -p "Enter the 1st no :" no1
	read -p "Enter the 2nd no :" no2
	mul=$((no1 * no2))
	echo "Multiplication :$mul"
       
}

function division()
{
	read -p "Enter the 1st no :" no1
	read -p "Enter the 2nd no :" no2
	div=$((no1 / no2))
	echo "Division :$div"
}

read -p "Enter any between 1-4 to perform operation :" n
case $n in

1) 
	echo "You selected $n,so addition"
	addition
	;;
2)
	echo "You selected $n,so substraction"
	substraction
	;;
3)
	echo "You selected $n,so multiplication"
	multiplication
	;;
4)
	echo "You selected $n,so division"
	division
	;;
*)
	echo "Invalid input"
	;;
esac
