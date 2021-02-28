#!/bin/sh
NUMBER_OF_CPU_THREADS=$(grep 'processor' /proc/cpuinfo | wc -l)
echo $NUMBER_OF_CPU_THREADS