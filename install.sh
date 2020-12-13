#!/bin/bash

#dotfileとxfce terminal
DOT_FILES=( .bashrc .bash_profile .xprofile .profile .vimrc .gitconfig Nord.theme iceberg.theme)

for file in ${DOT_FILES[@]} 
do
	ln -s -f $HOME/dotfiles/$file $HOME/$file
done

# GNU emacs
mkdir -p .emacs.d
ln -s -f $HOME/dotfiles/.emacs.d/init.el $HOME/.emacs.d/init.el

# init.vimのシンボリックリンク作成
mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.config/nvim/plugins
ln -s -f $HOME/dotfiles/nvim/init.vim $HOME/.config/nvim/init.vim
ln -s -f $HOME/dotfiles/nvim/dein.toml $HOME/.config/nvim/dein.toml
ln -s -f $HOME/dotfiles/nvim/dein_lazy.toml $HOME/.config/nvim/dein_lazy.toml
ln -s -f $HOME/dotfiles/nvim/plugins/defx.rc.vim $HOME/.config/nvim/plugins/defx.rc.vim
ln -s -f $HOME/dotfiles/nvim/plugins/denite.rc.vim $HOME/.config/nvim/plugins/denite.rc.vim

