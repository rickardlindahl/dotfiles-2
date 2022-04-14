#!/usr/bin/env bash

install_rust() {
    curl https://sh.rustup.rs -sSf | sh
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

install_rust
install_cargo_packages
