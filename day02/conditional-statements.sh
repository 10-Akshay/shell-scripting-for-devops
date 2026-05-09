#!/bin/bash

<< comments
read -p "Enter your age :" age
if (( $age >= 18 ))
then
	echo "Your eligible for voting"
else
	echo "Your not eligible for voting"
fi


read -p "Enter the no :" no
if (( $no % 2 == 0 ))
then
	echo "Number is even"
else
	echo "Number is odd"
fi


read -p "Enter the test status :" test_status 
if [ $test_status == "passed" ]
then
	echo "Deploying application"

elif [ $test_status == "pending" ]
then
	echo "Testing is still pending"

else
	echo "deployment failed"
fi
comments

read -p "Enter the server status :" server_status

case $server_status in
start)
	echo "The server is running"
	;;

pending)
	echo "The server is in pending state"
	;;

kill)
	echo "The is killed"
	;;

stop)
	echo "The server is stopped"
	;;

*)
	echo "Invalid enviroment"
	;;

esac


