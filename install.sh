#!/bin/bash

CWD=$(pwd)

echo "Backing up dotfiles..."

mv -iv ~/.zshrc ~/.zshrc.old
mv -iv ~/.vimrc ~/.vimrc.old
mv -iv ~/.gitconfig ~/.gitconfig.old
mv -iv ~/.tmux.conf ~/.tmux.conf.old

echo "Backing up VSCode settings..."

mv -iv ~/.config/VSCodium/User/settings.json ~/.config/VSCodium/User/settings.json.old

echo "Creating symilinks..."

ln -sv $CWD/.zshrc ~/.zshrc
ln -sv $CWD/.vimrc ~/.vimrc
ln -sv $CWD/.gitconfig ~/.gitconfig
ln -sv $CWD/.config/VSCodium/User/settings.json ~/.config/VSCodium/User/settings.json
ln -sv $CWD/.tmux.conf ~/.tmux.conf

echo "Done"
