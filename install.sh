#!/bin/bash

if [ $BOOEYSFILES ]; then
	cp -r ./CLISearch $BOOEYSFILES
fi
if [ $BOOEYSAYS ]; then
	cp -r ./bin $BOOEYSAYS
fi
if [ $BOOEYSAYS ]; then
	cp -r ./rc $BOOEYSAYS
fi
