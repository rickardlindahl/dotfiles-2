#!/usr/bin/env bash

install_rust() {
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
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

if [[ $(command -v rustup >/dev/null 2>&1) -ne 0 ]]; then
    install_rust
    install_cargo_packages
else
    echo "Rust and cargo is already installed"
fi

