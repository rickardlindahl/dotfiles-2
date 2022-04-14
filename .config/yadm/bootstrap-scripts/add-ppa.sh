#!/usr/bin/env bash

add_ppa() {
    PPA=$1 # e.g. PPA="ondrej/apache2"

    if ! grep -q "^deb .*$the_ppa" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
        echo "Adding ppa:$PPA"
        sudo apt-add-repository ppa:$PPA 
    else
        echo "ppa:$PPA already added"
    fi
}
