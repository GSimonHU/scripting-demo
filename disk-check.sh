#!/bin/sh

echo Disk information:
df -h | grep -e '/dev/sd' -e 'Filesystem'
echo