#!/bin/bash -x


echo "Welcome to flip coin simulation2"


result=$((RANDOM%2+1))
isHead=1

if(( $isHead == $result))
then
	echo "Head"
else
	echo "Tail"
fi
