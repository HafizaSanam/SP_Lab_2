#!/bin/bash

var=$1
if [ $# -eq 1 ]
then
	for pid in `pidof $var`
	do
		echo `cat /proc/$pid/status | grep "Pid"`
		echo `cat /proc/$pid/status | grep "Name"`
		echo `cat /proc/$pid/status | grep "State"`
	done
fi
