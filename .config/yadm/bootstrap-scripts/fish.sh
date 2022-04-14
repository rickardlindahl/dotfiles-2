#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

. $SCRIPT_DIR/add-ppa.sh
. $SCRIPT_DIR/apt-install.sh

PPA=fish-shell/release-3

install_fish() {
    add_ppa $PPA
    sudo apt update && apt_install fish
}

install_fisher() {
    source <(curl -sL https://git.io/fisher) && fisher install jorgebucaran/fisher

    fisher install PatrickF1/fzf.fish FabioAntunes/fish-nvm edc/bass
}

change_shell() {
    if [[ $(which fish) != $SHELL ]]; then
        chsh -s $(which fish)
    fi
}

if [ $(is_ppa_added $PPA) -eq 0 ]; then
    install_fish
    install_fisher
    change_shell
else
    echo "Fish is already installed"
fi

