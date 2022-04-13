#!/usr/bin/env bash

MOMENTUM_M2_AEBT="00:1B:66:80:C9:95"

function btctl_cmd() {
    printf "$1"
    bluetoothctl "$2" "${@:3}"
    printf "\n"
}

btctl_cmd "Connect to headphones\n" "connect" "$MOMENTUM_M2_AEBT"

