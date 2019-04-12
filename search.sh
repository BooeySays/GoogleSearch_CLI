#!/bin/bash

function getq(){
	clear
	query=$(dialog --clear --stdout --backtitle 'Search' --inputbox 'Enter your search query:\n' 0 0)
}

if [ $1 == '-youtube' ]; then
	getq
	w3m -v www.youtube.com/search?q="$query"
	unset query
elif [ $1 == '-bing' ]; then
	getq
	w3m -v www.google.com/search?q="$query"
	unset query
elif [ $1 == '-google' ]; then
	w3m -v www.google.com/search?q="$query"
	getq
	unset query
elif
	getq
	w3m -v www.google.com/search?q="$query"
	unset query
elif [ $1 == '-craigslist' ]; then
	getq
	w3m -v www.google.com/search?q="$query"
	unset query
elif [ $1 == '-ebay' ]; then
	getq
	w3m -v www.google.com/search?q="$query"
	unset query
elif [ $1 == '-amazon' ]; then
	getq
	w3m -v www.google.com/search?q="$query"
	unset query
fi
unset query