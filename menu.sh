#!/bin/sh

echo "Please select from the following menu items"
echo 1. Check OS stats
echo 2. Check computer stats (CPU, disk, memory)
echo 3. Check services availability and status (ssh, bluetooth, NetworkManager)
echo 4. List top 5. processes consuming most memory
echo 0. Exit

read INPUT
clear
case $INPUT in
    1)
        source ./os-check.sh
        ;;
    2)
        source ./cpu-check.sh
        source ./disk-check.sh
        source ./memory-check.sh
        ;;
    3)
        source ./service-check.sh
        ;;
    4)
        source ./process-check.sh
        ;;
    0)
        exit
        ;;
    *)
        echo "Please select from the existing menu points!"
esac