#!/bin/bash

showAllOwners(){

arr=(`ls -lf`)
count=${#arr[*]}
for i in `seq 2 $count`
do
	arr1=(`ls -l ${arr[i]}`)
	echo ${arr1[2]} ${arr1[8]}

done
}
showAllOwners $1
