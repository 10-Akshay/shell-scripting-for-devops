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

comments

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



