#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
. $SCRIPT_DIR/apt-install.sh

LOOK_PACKAGE_NAME=regolith-look-nord
LOOK_NAME=nord

install_preferred_look() {
    apt_install $LOOK_PACKAGE_NAME
}

set_look() {
    echo "Activating $LOOK_PACKAGE_NAME"
    regolith-look set $LOOK_NAME
    regolith-look refresh
}

install_preferred_look
set_look
