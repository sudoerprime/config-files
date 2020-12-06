#!/bin/bash

FILES=('bashrc' 'gitconfig' 'tmux.conf' 'vimrc')

for file in "${FILES[@]}"; do

    if [ -e "../.$file" ]; then
        mv "../.$file" "../.$file.bak"
    fi

    ln -s $(basename $(pwd))"/$file" "../.$file"

done
