#!/bin/bash

echo -e """
Please select a logo size to use:

	1) Large
	2) Medium
	3) Small
	4) Single Line

"""
read -p ': ' -n 1 -r logosize
case $logosize in
1)
	echo -en l > google.logo
	;;
2)
	echo -en m > google.logo
	;;
3)
	echo -en s > google.logo
	;;
4)
	echo -en one > google.logo
	;;
*)
	echo Error
	;;
esac