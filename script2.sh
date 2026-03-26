#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: [User's name]

#taking input
PACKAGE=$1

#check if the input is given
if [ -z "$PACKAGE" ]; then
	echo "please give a packge name"
	exit 1
fi

#handling Linux kernel
if [ "$PACKAGE" == "kernel" ]; then
	echo "kernel is installed"
	# display version
	version=$(uname -r)
	echo "version: $version"
else
	# checking using dpkg
	if dpkg -l | grep -q "^ii $PACKAGE"; then
		echo "$PACKAGE installed"
		dpkg -l | grep "$PACKAGE"
	else
		echo "$PACKAGE not installed"
	fi
fi

# test case for description
case $PACKAGE in
	kernel)
              echo "linux kernel: manages h/w and sys resources"
	      ;;
	firefox)
	      echo "Firefox: open source browser"
	      ;;
	vlc)
	      echo "vlc: media player"
	      ;;
	*)
	      echo "nothing here"
	      ;;
esac
