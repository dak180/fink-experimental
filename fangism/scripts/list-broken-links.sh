#!/bin/sh -e

list=`find . -type l | grep -v abandoned | grep -v -e "#"`
test -z "$list" ||
for f in $list
do
	lf=`readlink $f`
	if test -r $lf
	then :
	else echo "$f"
	fi
done
