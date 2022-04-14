#!/usr/bin/env bash

is_ppa_added() {
    PPA=$1

    if grep -q "^deb .*$PPA" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
        echo 1
    else
        echo 0
    fi
}

add_ppa() {
    PPA=$1

    if [ $(is_ppa_added $PPA) -eq 0 ]; then
        echo "Adding ppa:$PPA"
        sudo apt-add-repository ppa:$PPA
    else
        echo "ppa:$PPA is already added"
    fi
}
