#!/bin/bash

function drawlinea(){
	sw=$COLUMNS
	cuff=$(expr "$(expr "$COLUMNS" \- "$(echo "Previewq" | wc -L)")" \/ 2)
	while [ $sw -gt 0 ]; do
		echo -en "\033[30;43m \033[m";
		((sw -=1));
	done
	echo -en "\r"; tput cuf $cuff; echo -e "\033[30;43mPreview\033[m"
	unset screenwidth cuff
}
function drawlineb(){
	screenwidth=$(tput cols)
	cuff=$(expr "$(expr "$COLUMNS" \- "$(echo "Preview - END" | wc -L)")" \/ 2)
	while [ "$sceenwidth" -gt 0 ]; do
		echo -en "\033[43m \033[m"
		((screenwidth -=1))
	done
	echo -en "\r"; tput cuf $cuff; echo -e "\033[43mPreview - END\033[m"
	unset screenwidth cuff
}

function getsize(){
	clear
	echo -e """
Please select a logo size to use:

(Note:	Use the LOWERCASE letter corresponding to
	your select to make your selection.

	Use UPPERCASE to PREVIEW your selection.)

	l/L) Large
	m/M) Medium
	s/S) Small
	o/O) One Lined
	a/A) Auto (Recommended)


"""
	read -p ': ' -n 1 -r logosize
	case $logosize in
	l)
		echo -en l > google.logo
		;;
	m)
		echo -en m > google.logo
		;;
	s)
		echo -en s > google.logo
		;;
	o)
		echo -en one > google.logo
		;;
	a)
		echo -en auto > google.logo
		;;
	L)
		clear
		drawlinea
#		echo -e "\n\n\033[07;33m                              PREVIEW - BEG                              \033[m"
		echo -e """ 






		[01;34m .d8888b.  [01;31m         [01;33m         [01;34m         [01;32m888 [01;31m         [01;00m
		[01;34md88P  Y88b [01;31m         [01;33m         [01;34m         [01;32m888 [01;31m         [01;00m
		[01;34m888    888 [01;31m         [01;33m         [01;34m         [01;32m888 [01;31m         [01;00m
		[01;34m888        [01;31m .d88b.  [01;33m .d88b.  [01;34m .d88b.  [01;32m888 [01;31m .d88b.  [01;00m
		[01;34m888  88888 [01;31md88\"\"88b [01;33md88\"\"88b [01;34md88P\"88b [01;32m888 [01;31md8P  Y8b [01;00m
		[01;34m888    888 [01;31m888  888 [01;33m888  888 [01;34m888  888 [01;32m888 [01;31m88888888 [01;00m
		[01;34mY88b  d88P [01;31mY88..88P [01;33mY88..88P [01;34mY88b 888 [01;32m888 [01;31mY8b.     [01;00m
		[01;34m \"Y8888P88 [01;31m \"Y88P\"  [01;33m \"Y88P\"  [01;34m \"Y88888 [01;32m888 [01;31m \"Y8888  [01;00m
		[01;34m           [01;31m         [01;33m         [01;34m     888 [01;32m    [01;31m         [01;00m
		[01;34m           [01;31m         [01;33m         [01;34mY8b d88P [01;32m    [01;31m         [01;00m
		[01;34m           [01;31m         [01;33m         [01;34m \"Y88P\"  [01;32m    [01;31m         [01;00m``
"""

		echo -e -n "\e[00;00m    \e[30;47m                                                           \e[00;00m \e[07;01;37;40m Google Search \e[00;00m\n\n  HELP:\n\t[\033[01;32mArrows\033[m]: Move Cursor\t\t[\033[01;32mq\033[m]: Quit\t[\033[01;32mU\033[m]\tOpen URL\n\t[\033[01;32mReturn\033[m]: Enter / Left Click\t[\033[01;32mB\033[m]: Back\t[\033[01;32mH\033[m]\tBrowser Help\n\n\n"
		drawlinea
#		echo -e "\033[07;33m                              PREVIEW - END                              \033[m\n\n"
		read -p '[ Press any key to continue ]' -n 1
		getsize
		;;
	M)
		clear
		drawlinea
		echo -e "\033[0m"
		echo -e '''


	  [01;34m___               [01;32m _     
	 [01;34m/ __|[01;31m___  [01;33m___  [01;34m__ _[01;32m| |[01;31m___ 
	[01;34m| (_ [01;31m/ _ \[01;33m/ _ \[01;34m/ _` [01;32m| [01;31m/ -_)
	 [01;34m\___[01;31m\___/[01;33m\___/[01;34m\__, [01;32m|_[01;31m\___|
	               [01;34m|___/[m

   [30;47m                                       [m  [30;47m Google Search [m'''
		echo -e "\n\n\n"
		drawlinea
	   	echo -en "\033[m\n\n"
		read -p '[ Press any key to continue ]' -n 1
		getsize
		;;
	S)
		clear
		drawlinea
		echo -e "\033[0m"
		echo " "					# Blank line
		echo -e "\n\n\e[m\t   \e[01;34;40mG\e[01;31;40mo\e[33;40mo\e[34;40mg\e[32;40ml\e[31;40me${cCLR}";echo ' ';printf "\e[m  \e[01;30;47m                          \e[00m \e[30;47m Search \e[00;00m\n\n\n "
		echo -e "\n"
		drawlinea
		read -p '[ Press any key to continue ]' -n 1
		getsize
		;;
	O)
		clear
		drawlinea
		echo " "					# Blank line
		echo -e "[01;34;40mG[01;31;40mo[33;40mo[34;40mg[32;40ml[31;40me [01;37mSearch \n:\n\n "
		echo -e "\n"
		drawlinea
		read -p '[ Press any key to continue ]' -n 1
		getsize
		;;
	A)
		clear
		echo -e """Info:

	Auto Logo Selection - All the logos are designed to
	be displayed on a screen with a minimum column size.
	Therefore, depending on your screen size, some logos
	may not be displayed properly.

	The Auto Logo Selection will try to display the def-
	ault logo size first (large), but if your screen is
	not large enough to display the logo, Auto Selection
	will keep moving down the list until it finds a logo
	that will work and will use that for the session."""
		read -p '[ Press any key to continue ]' -n 1
		getsize
		;;
	x|X)
		exit 1
		;;
	*)
		echo -e """Error - Wrong key selection

	Please try again"""
		read -p '[ Press any key to continue ]' -n 1
		getsize
		;;
	esac
}
getsize