#!/bin/bash

OPER=$1

if [ "on" = "$OPER" ]; then
    if [ -e ~/.vimrc ]; then
        echo ".vimrc already enabled~"
        exit
    fi

    echo "Enable ~/.vimrc"
    mv ~/.vimrc_bak ~/.vimrc
    echo "Done~"
elif [ "off" = "$OPER" ]; then
    if [ -e ~/.vimrc_bak ]; then
        echo "./vimrc already disabled~"
        exit
    fi

    echo "Disable ~/.vimrc"
        mv ~/.vimrc ~/.vimrc_bak
    echo "Done~"
else
    echo "not supported opertion \"$OPER\""
fi
