#!/bin/bash
rm -rf inputdata
RANDOM=$$
num=0
ARG=${1:-10}
while [[ ${num} -le ${ARG} ]]
do
	echo $num $RANDOM >> inputdata
	(( num = num + 1 ))
done
