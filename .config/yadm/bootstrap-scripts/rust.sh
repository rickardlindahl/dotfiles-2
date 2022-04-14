#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
. $SCRIPT_DIR/apt-install.sh

install_rust() {
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
}

install_requirements() {
    packages=(
        "libfontconfig1-dev"
        "libxcb-render0-dev"
        "libxcb-shape0-dev"
        "libxcb-xfixes0-dev"
    )
    
    for package in "${packages[@]}"; do
        apt_install $package
    done
}

install_cargo_packages() {
    packages=(
        "alacritty"
        "bat"
        "exa"
        "ripgrep"
        "fd-find"
    )

    for package in "${packages[@]}"; do
        cargo install $package
    done
}

set_alacritty_as_default_terminal() {
    sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator $(which alacritty) 50
    sudo update-alternatives --config x-terminal-emulator
}

if [[ $(command -v rustup >/dev/null 2>&1) -ne 0 ]]; then
    install_rust
else
    echo "Rustup is already installed"
fi

install_requirements
install_cargo_packages
set_alacritty_as_default_terminal
