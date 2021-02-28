#!/bin/sh
NUMBER_OF_CPU_THREADS="$(grep 'processor' /proc/cpuinfo | wc -l)"
echo $NUMBER_OF_CPU_THREADS

COUNT=1
while [ $NUMBER_OF_CPU_THREADS -ge $COUNT ]
do
    echo "Info for CPU Thread $COUNT"
    CPU_MODEL_NAME="$(grep 'model name' /proc/cpuinfo | cut -d$'\n' -f$COUNT | awk '{print $4 $5 $6 $7 $8$ 9}')"
    echo "CPU Model: $CPU_MODEL_NAME"
    
    COUNT=`expr $COUNT + 1`
    echo
done