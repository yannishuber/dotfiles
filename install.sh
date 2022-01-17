#!/bin/bash

CWD=$(pwd)

echo "Creating symilinks..."

ln -sv $CWD/.zshrc ~/.zshrc
ln -sv $CWD/.vimrc ~/.vimrc
ln -sv $CWD/.gitconfig ~/.gitconfig
ln -sv $CWD/.gitignore_global ~/.gitignore_global
ln -sv $CWD/.tmux.conf ~/.tmux.conf
ln -sv $CWD/.restic-config ~/.restic-config
ln -sv $CWD/.restic-exclude ~/.restic-exclude

echo "Done"
