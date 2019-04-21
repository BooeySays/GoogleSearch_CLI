#!/bin/bash

if [ ! $BOOEYSAYS ] || [ ! $BOOEYSFILES ] || [ ! -d ~/.booeysays ]; then
	clear
	echo -e "Could not find \$BOOEYSAYS, \$BOOEYSFILES, or the ~/.booeysays dir. Prepping system to run the prep script"
	read -p '[ Press any key to continue ]' -n 1
	clear
	echo -en "Creating ~/.booeysays/files"
	mkdir -p ~/.booeysays/files
	echo -e "... DONE"
	read -p '[ Press any key to continue ]' -n 1
	clear
	echo -en "CDing into new dir"
	cd ~/.booeysays/files
	echo -e "... DONE"
	read -p '[ Press any key to continue ]' -n 1
	clear
	echo -en "Downloading prep script"
	read -p '[ Press any key to continue ]' -n 1
	wget https://raw.githubusercontent.com/DX2DigitalGroup/PrepBooeysays/master/setup.sh
	echo -e "... Done"
	read -p '[ Press any key to continue ]' -n 1
	clear
	echo -en "Running script"
	read -p '[ Press any key to continue ]' -n 1
	. setup.sh
	echo -e "... DONE"
	read -p '[ Press any key to continue ]' -n 1
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
