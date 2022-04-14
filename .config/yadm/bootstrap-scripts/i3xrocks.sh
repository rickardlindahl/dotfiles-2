#!/usr/bin/env bash

source ./apt_install.sh

install_i3xrocks_packages() {
    packages=(
        "i3xrocks-battery"
        "i3xrocks-memory"
        "i3xrocks-nm-vpn"
        "i3xrocks-volume"
        "i3xrocks-media-player"
    )

    for package in "${packages[@]}"; do
        apt_install $package
    done
}

install_i3xrocks_packages
