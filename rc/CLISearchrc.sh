#!/bin/bash

## SETS VAR FOR CLISEARCH DIRECTORY
if [ -d "$BOOEYSFILES/CLISearch" ]; then
	export CLISearch="$BOOEYSFILES/CLISearch"
fi

## LOADS ALL THE RC FILES FOR CLISEARCH
if [ -d "$CLISearch/rc" ]; then
	for i in $CLISearch/rc/*.sh; do
		. "$i"
	done
	unset i
fi



