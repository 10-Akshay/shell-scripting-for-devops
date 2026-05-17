#!/bin/bash

REGION="eu-north-1"
AMI_ID="ami-05d62b9bc5a6ca605"
INSTANCE_TYPE="t3.micro"
KEY_NAME="shell-scripting-for-devops-key"
SECURITY_GROUP_ID="sg-0401f51a686b5b74b"
SUBNET_ID="subnet-05eb4b0ebd85c785d"

echo "=================="
echo "Automation Started"
echo "=================="

if command -v aws &> /dev/null
then
	echo "AWS CLI already installed "
	aws --version
else
	echo "AWS CLI not found"

	echo "Installing AWS CLI V2...."

	sudo apt update -y

	if [ $? -ne 0 ]
	then
		echo " Package update failed"
	 	exit 1
	fi

	 curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

	 if [ $? -ne  0 ]
	 then 
		 echo " AWS CLI download failed"
		 exit 1
       	 fi

	 unzip awscliv2.zip

	 if [ $? -ne 0 ]
	 then
		 echo "Extraction failed"
		 exit 1
	 fi


	 sudo ./aws/install
		
	 if [ $? -ne 0 ]
	 then
		echo "AWS CLI installation failed"
		exit 1
	 fi
	
	 echo "AWS CLI Installed Successfully"

	 aws --version
fi

		
echo "Checking AWS Configuration"

	aws sts get-caller-identity > /dev/null 2>&1
	
	if [ $? -ne 0 ]
	then
		echo "AWS configuration failed"
		echo "Run this command :"

		echo "aws configure"

		exit 1
	fi
echo "AWS configured successfully"


echo "Launching EC2 instance..."

INSTANCE_ID=$(aws ec2 run-instances \
--image-id $AMI_ID \
--count 1 \
--instance-type $INSTANCE_TYPE \
--key-name $KEY_NAME \
--security-group-ids $SECURITY_GROUP_ID \
--subnet-id $SUBNET_ID \
--region $REGION \
--query "Instances[0].InstanceId" \
--output text)

if [ $? -ne 0 ]
then
    echo "EC2 launch failed"
    exit 1
fi

echo "EC2 instance launched successfully"

echo "Instance ID: $INSTANCE_ID"

echo "Waiting for instance to start..."

sleep 10


STATUS=$(aws ec2 describe-instances \
--instance-ids $INSTANCE_ID \
--region $REGION \
--query "Reservations[*].Instances[*].State.Name" \
--output text)

if [ $? -ne 0 ]
then
    echo "Failed to fetch instance status"
    exit 1
fi

echo "EC2 INSTANCE STATUS: $STATUS"


echo "===================="
echo "Automation Completed"
echo "===================="
