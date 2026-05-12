#!/bin/bash

<<comment
Deploying Django app
comment


code_clone()
{
	echo "Cloning the app"
	git clone https://github.com/LondheShubham153/django-notes-app.git

}

install_requirements()
{
	echo "Installing packeges"
	sudo apt-get update
	sudo apt-get install docker.io docker-compose-v2  nginx -y
}

required_restarts()
{
	sudo chown $USER /var/run/docker.sock
	#sudo systemctl enable docker
	#sudo systemctl enable nginx
	#sudo systemctl restart docker
}

deploy_app()
{
	docker image prune -f
	docker build -t notes-app .
	#docker run -d -p 8000:8000 notes-app:latest
	docker compose up -d

}


echo "**** Deployment Started ****"
if ! code_clone; then
	echo "The code directory already exists"
	cd django-notes-app
fi

install_requirements

if ! required_restarts; then
	echo "System fault identified"
	exit 1
fi

if ! deploy_app; then
	echo "Deployments failed"
	# sendmail
	exit 1
fi

echo "**** Deployement Done ****"
