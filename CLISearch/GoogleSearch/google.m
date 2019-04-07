#!/bin/bash

echo -e "\033[0m"
echo -e '''


	  [01;34m___               [01;32m _     
	 [01;34m/ __|[01;31m___  [01;33m___  [01;34m__ _[01;32m| |[01;31m___ 
	[01;34m| (_ [01;31m/ _ \[01;33m/ _ \[01;34m/ _` [01;32m| [01;31m/ -_)
	 [01;34m\___[01;31m\___/[01;33m\___/[01;34m\__, [01;32m|_[01;31m\___|
	               [01;34m|___/[m

   [30;47m                                       [m  [30;47m Google Search [m'''; echo -en "\033[m\033[1A  \033[30;47m"; read -p ' ' GOOGLESEARCH; echo -e "\033[m"

#fortune
w3m -v www.google.ca/search?q="$GOOGLESEARCH"
unset GOOGLESEARCH
echo -e "\033[0m"
clear
#. ./thanks




# LazyGoogle-help 
# LazyGoogle-togglelogo
# LazyGoogle-set_browser
# LazyGoogle-set_hotkeys
# 
# 

