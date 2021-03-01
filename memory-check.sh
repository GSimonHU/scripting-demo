#!/bin/sh

FREE_MEMORY="$(grep 'MemFree' /proc/meminfo | awk '{print $2}')"
TOTAL_MEMORY="$(grep 'MemTotal' /proc/meminfo | awk '{print $2}')"

FREE_MEMORY_IN_GB=$(($FREE_MEMORY/1000000))
TOTAL_MEMORY_IN_GB=$(($TOTAL_MEMORY/1000000))
FREE_TO_TOTAL_MEMORY=$((FREE_MEMORY*100/TOTAL_MEMORY))
echo Memory Info
echo Free memory: $FREE_MEMORY_IN_GB GB
echo Total memory: $TOTAL_MEMORY_IN_GB GB
echo "$FREE_TO_TOTAL_MEMORY%" of the memory is free
echo