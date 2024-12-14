#!/bin/bash

bashly generate

echo "Installing dotifles at ~/bin..."
cp -r ~/.dotfiles/scripts/* ~/bin
echo "dotfiles installed successfully!"