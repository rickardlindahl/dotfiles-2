#!/usr/bin/env bash

install_starship() {
    curl -sS https://starship.rs/install.sh | sh
}

if [[ $(command -v starship >/dev/null 2>&1) -ne 0 ]]; then
    install_starship
else
    echo "Starship is already installed"
fi
