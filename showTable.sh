#!/bin/bash
showTable(){
	num=$1		#table
	var=$3
	var1=$5
if [ $6 = -r ]
then
	while [ $var1 -ge $var ]
	do
		echo " $num * $var1 = `expr $num \* $var1`"
		var1=`expr $var1 - 1`
		
	done 

elif [ $4 = -e -a $2 = -s ]
then
	echo "$4" 
	echo $4
	for i in `seq $var $var1`
	do
		
		echo " $num * $i = `expr $num \* $i`"
	done


elif [ $2 = -s ]
then
	for i in `seq $var 10`
	do
		echo " $num * $i = `expr $num \* $i`"
	done

elif [ $2 = -e ]
then
	
	for i in `seq 1 $var`
	do
		
		echo " $num * $i = `expr $num \* $i`"
	done


else
 	for i in `seq 1 10`
	do
		echo " $num * $i = `expr $num \* $i`"
	done
fi
}


if [ $# -eq 0 ]
then
 echo "No Arguments";

elif [ $# -gt 6 ]
then
	echo "You entered more than 6 arguments";
elif [ $# -eq 1 ]
then
 	showTable $1

elif [ $# -eq 3 ]
then

	if [ $2 = -s ]
	then
		showTable $1 $2 $3 
	
	elif [ $2 = -e ]
	then
		showTable $1 $2 $3

	else
		echo " "
	fi
elif [ $# -eq 5 ]
then
 	showTable $1 $2 $3 $4 $5

elif [ $# -eq 6 ]
then
 	showTable $1 $2 $3 $4 $5 $6


fi
