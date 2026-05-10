#!/bin/bash

<< comments
Nothing to comment


for (( i=0; i<=5; i++ ))
do
	echo "No :$i"
done



read -p "How much directories you wants to create :" n
if [ $n -gt 0 ] 
then 
	echo "You wants to create $n directory"

	for (( i = 1; i <=$n; i++  ))
	do
		mkdir "demo$i"
		echo "creating demo$i directories"
	done
else
	echo "instead of 0,enter something else"
fi



read -p "Enter the no :" n

if (( $n > 0 && $n % 2 == 0 ))
then 
	while [ $n -le 10 ]
	do
		echo "$n Number is even"
		n=$((n+2))
	done
else
	echo "number is odd"
fi




read -p "Enter the no :" n
if (( $n % 2 == 0 ))
then 
	for (( i=0; i<=10; i++ ))
	do
		echo "Number is even"
	done
else
	echo "Number is odd"
fi



read -p "Enter the no :" num

if (($num > 0 && $num % 2 == 0 ))
then
	while [ $num -lt 10 ]
	do
		echo "Yes"
		num=$((num + 1))
	done
else
	echo "No"
fi

comments


