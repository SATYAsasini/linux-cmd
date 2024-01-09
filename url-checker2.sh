#!/bin/bash

file_path=$1
while IFS= read -r url; do
	response=$(curl --write-out "%{http_code}" --silent --output /dev/null "$null")
	if [ $response -ne "200" ]; then
	       echo "$url -> Failure"
        else
	       echo "$url -> Success"
	fi
done < "$file_path"
	       
