#!/usr/bin/env bash

. ./add-ppa.sh
. ./apt-install.sh

install_fish() {
    add_ppa fish-shell/release-3
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

install_fish
install_fisher
change_shell
