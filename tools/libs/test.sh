#!/bin/bash

source $(dirname $0)/echo_color.sh
source $(dirname $0)/time.sh

echo_green "Green print"
echo `now`
echo_red "Red print"

