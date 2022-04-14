#!/usr/bin/env bash

install_nvm() {
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
}

if [ -z ${NVM_DIR+x} ]; then
    install_nvm
else
    echo "nvm is already installed"
fi
