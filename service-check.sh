#!/bin/sh

check_service(){
    systemctl is-active $1 >/dev/null 2>&1 && echo $1 is active || echo $1 is inactive
    systemctl is-enabled $1 >/dev/null 2>&1 && echo $1 is enabled || echo $1 is disabled
    echo
}

check_service ssh
check_service bluetooth
check_service NetworkManager