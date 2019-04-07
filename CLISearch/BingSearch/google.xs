#!/bin/bash

echo -e "\033[0m"
#clear						# Clears screen
echo " "					# Blank line
#echo -e "\e[m\t  \e[01;34;40mＧ\e[01;31;40mｏ\e[33;40mｏ\e[34;40mｇ\e[32;40mｌ\e[31;40mｅ${cCLR}";echo ' ';printf "\e[01;37;47m                               \e[00m \e[07;01;37;40m Search \e[00;00m\e[01;30;47m\r\e[m \e[30;47m ";read  GOOGLESEARCH;
echo -e "\n\n\e[m\t   \e[01;34;40mG\e[01;31;40mo\e[33;40mo\e[34;40mg\e[32;40ml\e[31;40me${cCLR}";echo ' ';printf "\e[m  \e[01;30;47m                          \e[00m \e[30;47m Search \e[00;00m\n\n\r\e[2A \e[07;01;37;40m ";read  GOOGLESEARCH;
echo -e "\e[00;00;00m\e[30;40mShhh! I am hiding from the Boogie Man who keeps staring at me at night throw my window and leaves me an apple for breakfast\e[00;00m"
if [ "$GOOGLESEARCH" == 'Q' ] || [ "$GOOGLESEARCH" == 'q' ] || [ "$GOOGLESEARCH" == 'QUIT' ] || [ "$GOOGLESEARCH" == 'quit' ]; then
	echo -e "QUITTING";
elif [ "$GOOGLESEARCH" == '--help' ] || [ "$GOOGLESEARCH" == 'help' ] || [ "$GOOGLESEARCH" == 'HELP' ]; then
	echo -e '''Search for:
	[Q] to quit\t[help] for this help screen
	[change logo] to change the logo size''';
else
	w3m -v www.google.ca/search?q="$GOOGLESEARCH"
	echo -e "\033[0m"
	unset GOOGLESEARCH
	clear

fi
