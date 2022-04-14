#!/usr/bin/env bash

source ./apt-install.sh

LOOK_PACKAGE_NAME=regolith-look-nord
LOOK_NAME=nord

install_preferred_look() {
    apt_install $LOOK_PACKAGE_NAME
}

set_look() {
    regolith-look set $LOOK_NAME
    regolith-look refresh
}

install_preferred_look
set_look
