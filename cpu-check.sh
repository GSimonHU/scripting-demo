#!/bin/sh
NUMBER_OF_CPU_THREADS="$(grep 'processor' /proc/cpuinfo | wc -l)"

COUNT=1
while [ $NUMBER_OF_CPU_THREADS -ge $COUNT ]
do
    echo "Info for CPU Thread $COUNT"
    CPU_MODEL="$(grep 'model name' /proc/cpuinfo | cut -d$'\n' -f$COUNT | awk '{print $4 $5 $6 $7 $8$ 9}')"
    echo "CPU Model: $CPU_MODEL"
    
    CPU_CORES="$(grep 'cpu cores' /proc/cpuinfo | cut -d$'\n' -f$COUNT | awk '{print $4}')"
    echo "Number of CPU cores: $CPU_CORES"

        
    CPU_FREQUENCY="$(grep 'cpu MHz' /proc/cpuinfo | cut -d$'\n' -f$COUNT | awk '{print $4}')"
    echo "CPUs frequency is: $CPU_FREQUENCY MHz"

    COUNT=`expr $COUNT + 1`
    echo
done