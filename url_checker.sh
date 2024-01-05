#! /bin/bash

url=$1
response=$(curl --write-out "%{http_code}" --silent --output /dev/null "$url")

if [ $response -ne "200" ];
then 
	echo "Failure"
else
	echo "Success"
fi
