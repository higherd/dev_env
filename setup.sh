#!/bin/bash

echo ======= .vim erase ======
if [ -d ~/.vim ]; then
	ls -altr ~/.vim
	\rm -rf ~/.vim
fi

echo ======= .vimrc erase ======
if [ -f ~/.vimrc ]; then
	cat ~/.vimrc
	rm -f ~/.vimrc
fi
echo ======= .gitconfig erase ======
if [ -f ~/.gitconfig ]; then
	cat ~/.gitconfig
	rm -f ~/.gitconfig
fi
(cd ~;ln -s ~/env/dev_env/.vim .vim)
(cd ~;ln -s ~/env/dev_env/.vimrc .vimrc)
(cd ~;ln -s ~/env/dev_env/.gitconfig .gitconfig)
