#!/bin/sh

echo "Please select from the following menu items:"
echo 1. Check OS stats
echo "2. Check computer stats (CPU, disk, memory)"
echo "3. Check services availability and status (ssh, bluetooth, NetworkManager)"
echo 4. List top 5. processes consuming most memory
echo 0. Exit

read INPUT
clear

echo "Please select output format:"
echo 1. Print to screen
echo 2. Save to log.txt
read FORMAT
clear

case $INPUT in
    1)
        if [ $FORMAT -eq 1 ]
        then
        source ./os-check.sh
        else
        source ./os-check.sh >> log.txt
        fi
        ;;
    2)
        if [ $FORMAT -eq 1 ]
        then
        source ./cpu-check.sh
        source ./disk-check.sh
        source ./memory-check.sh
        else
        source ./cpu-check.sh >> log.txt
        source ./disk-check.sh >> log.txt
        source ./memory-check.sh >> log.txt
        fi
        ;;
    3)
        if [ $FORMAT -eq 1 ]
        then
        source ./service-check.sh
        else
        source ./service-check.sh >> log.txt
        fi
        ;;
    4)
        if [ $FORMAT -eq 1 ]
        then
        source ./process-check.sh
        else
        source ./process-check.sh >> log.txt
        fi
        ;;
    0)
        exit
        ;;
    *)
        echo "Please select from the existing menu points!"
esac