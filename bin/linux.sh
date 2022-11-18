#!/bin/bash #shebang for bash

touch linuxsetup.log

unamee=$(uname) #checks the operating system
if [[ "$unamee" == 'Linux' ]]; then #checks if the contents of uname is equal to linux
	echo "Good" # echo if statement is true
elif [[ "$unamee" != 'Linux' ]]; then # if uname is not equal to linux
	echo "ERROR --> error " >> linuxsetup.log #error message to a file if false
	exit
fi

cd
mkdir -p .TRASH # creates a directory
mv .vimrc .bup_vimrc #renames a file
echo "file was changed" .. linuxsetup.log
etc/vimrc > .vimrc #overwrites
source ~/.dotfiles/etc/bashrc_custom >> .bashrc
