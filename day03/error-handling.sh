#!/bin/bash

function create_directory ()
{
	mkdir demo
}

if ! create_directory; then
	echo "The directory is already exists"
	exit 1
fi

echo "The directory is created"
