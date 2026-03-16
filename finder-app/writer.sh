#!/bin/bash

fullPath=$1
writeString=$2

if [ -z "$fullPath" ] || [ -z "$writeString" ];
then
	echo "Arguments not specified"
	exit 1

fi

mkdir -p "$(dirname "$fullPath")"

if echo "$writeString" > "$fullPath"; then
    exit 0
else
    echo "File could not be created"
    exit 1
fi
