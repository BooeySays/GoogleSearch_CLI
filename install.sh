#!/bin/bash

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
