#!/bin/sh

# A dwm_bar unction to display information regarding system memory


dwm_memory() {

    # Used and total memory
    MEMUSED=$(free -h | awk '(NR == 2) {print $3}')
    MEMTOT=$(free -h |awk '(NR == 2) {print $2}')

    printf "$SEP1  $MEMUSED / $MEMTOT$SEP2\n"



}

dwm_memory
