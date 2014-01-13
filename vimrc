#!/bin/bash

source $(dirname $0)/echo_color.sh

OPER=$1

if [ "on" = "$OPER" ]; then
    if [ -e ~/.vimrc ]; then
        echo_green ".vimrc already enabled~"
        exit
    fi

    echo_green "Enable ~/.vimrc"
    mv ~/.vimrc_bak ~/.vimrc
    echo_green "Done~"
elif [ "off" = "$OPER" ]; then
    if [ -e ~/.vimrc_bak ]; then
        echo_green "./vimrc already disabled~"
        exit
    fi

    echo_green "Disable ~/.vimrc"
        mv ~/.vimrc ~/.vimrc_bak
    echo_green "Done~"
else
    echo_red "not supported opertion \"$OPER\""
fi
