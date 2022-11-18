!#/bin/bash

cd #goes to home directory
rm .vimrc #removes file
sed -i 's/source ~/.dotfiles/bashrc_custom/nothing/g #stream editor for substitution
cd
rmdir .TRASH #removes directory

