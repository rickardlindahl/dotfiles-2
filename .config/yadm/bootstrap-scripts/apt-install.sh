#!/usr/bin/env bash

apt_install() {
    PACKAGE=$1

    if ! dpkg -s "$PACKAGE" >/dev/null 2>&1; then
        echo "Installing $PACKAGE"
        sudo apt install -y "$PACKAGE"
    else
        echo "$PACKAGE is already installed"
    fi

}
