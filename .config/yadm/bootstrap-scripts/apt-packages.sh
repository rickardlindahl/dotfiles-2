#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
. $SCRIPT_DIR/apt-install.sh

install_apt_packages() {
    packages=(
        "build-essential"
        "wget"
        "curl"
        "xclip"
        "vim"
        "cmake"
        "pkg-config"
        "python3"
        "scrot"
        "arandr"
        "python3-pip"
        "suckless-tools"
        "stow"
        "rofi"
        "fonts-firacode"
        "apt-transport-https"
        "autoconf"
    )

    for package in "${packages[@]}"; do
        apt_install $package
    done
}

install_apt_packages
