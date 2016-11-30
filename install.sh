#/bin/bash

VIM_HOME=~/.config/vim
VIMRC=.vimrc
VUNDLE=.vimvundle.vim

if [ -d $VIM_HOME ]; then
  printf "Do nothing here we have a vim home already.\n"
else
  printf "Do something we don't have a vim home.\n"
  git clone https://github.com/gmwingard/vim $VIM_HOME
  if [ -f ~/$VIMRC ]; then
    printf "Backup old vimrc.\n"
    mv ~/$VIMRC $VIM_HOME/$VIMRC.bck 
  fi

  if [ -f ~/$VUNDLE ]; then
    printf "Backup old .vimvundle.vim.\n"
    mv ~/$VUNDLE $VIM_HOME/$VUNDLE.bck
  fi
  # Now that both files are backed up (if they existed)
  # Let's create the symlinks to the one from our repo
  ln -s $VIM_HOME/$VIMRC ~/$VIMRC
  ln -s $VIM_HOME/$VUNDLE ~/$VUNDLE
fi


