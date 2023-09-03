#!/bin/bash

name="lion"

if [ $name = 'lion' ]; then
  echo "hello $name"
fi

n1="1"
n2="2"
n3="3"

if [ $n1 = $n2 ]; then
  echo "n1=n2"
else
  echo "n1!=n2"
fi



if [ $n3 = "lion" ]
then
	echo "hello lion"
elif [ $n3 = "frank" ]  
then 
	echo "hello frank"
else
	echo "我不认识你"
fi  
