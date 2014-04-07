#!/bin/bash

git clone git://github.com/beloglazov/oh-my-fish.git ~/.oh-my-fish

cd $(dirname $BASH_SOURCE)

mkdir -p ~/.config/fish

mv -v ~/.config/fish/config.fish ~/.config/fish/config.old.fish 2> /dev/null
mv -v ~/.config/fish/functions ~/.config/fish/functions.old 2> /dev/null

ln -sf `pwd`/config.fish ~/.config/fish/config.fish
ln -sf `pwd`/functions ~/.config/fish/functions

chsh -s $(which fish)
sudo chsh -s $(which fish)
