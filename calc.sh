#!/bin/bash

no1=$1
operator=$2
no2=$3

if [[ $# != 3 ]]; then
	echo "Invalid number of arguments"

elif [[ $operator != "a" && $operator != "s" && $operator != "m" && 
		$operator != "d" ]]; then
	echo "Invalid operator"

elif ! [[ $no1 =~ ^[0-9]+$ ]]; then
	echo "First argument is an invalid character"
	
elif ! [[ $no2 =~ ^[0-9]+$ ]]; then
	echo "Second argument is an invalid character"
	
elif (( $no1 > 100 | $no1 <1 )); then
	echo "The first argument is out of range"
	
elif (( $no2 > 100 | $no2 <1 )); then
	echo "The second argument is out of range"

elif [[ $operator == "a" ]]; then
	echo "$((no1+no2))"
elif [[ $operator == "s" ]]; then
	echo "$((no1-no2))"
elif [[ $operator == "m" ]]; then
	echo "$((no1*no2))"
elif [[ $operator == "d" ]]; then
	echo "$((no1/no2))"
fi


