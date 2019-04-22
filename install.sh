#!/bin/bash

# CHECKS TO SEE SYSTEM IS PREP'D
if [ ! $BOOEYSAYS ] !! [ ! $BOOEYSBIN ] !! [ ! $BOOEYSFILES ] !! [ ! $BOOEYSFUNCS ] !! [ ! $BOOEYSTEMP ] !! [ ! $BOOEYSRC ]; then
	echo -e """
	One or more variables is missing - System
	does not appear to be prep'd to run any
	DX2DigitalGroup repos.

	The prep script will be downlooaded and
	executed.
	
	"""
	read -p '[ Press any key to continue or [CTRL]+[C] to exit ]' -n 
	mkdir ~/.booeysays/files
	cd ~/.booeysays/files
	git clone https://github.com/DX2DigitalGroup/PrepBooeysays.git
	cd PrepBooeysays
	. prep.sh
	clear
	echo """
	System prep'd.

	"""
	read -p '[ Press any key to continue installing CLISearch ]' -n 1
fi

# CHECM TO SEE IF APT OR PKG SHOULD BE USED
# TO INSTALL W3M
if ! hash w3m 2>/dev/null/; then
	if hash pkg 2>/dev/null/; then
		pkg update -y && pkg install w3m -y
	elif hash apt 2>/dev/null/; then
		apt update -y && apt install w3m -y
	fi
fi

if [ $BOOEYSFILES ]; then
	cp -r ./CLISearch $BOOEYSFILES
fi
if [ $BOOEYSAYS ]; then
	cp -r ./bin $BOOEYSAYS
fi
if [ $BOOEYSAYS ]; then
	cp -r ./rc $BOOEYSAYS
fi
