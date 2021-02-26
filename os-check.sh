#!/bin/sh

OS_VERSION="$(grep 'PRETTY_NAME' /etc/*release | cut -d '"' -f2)" 
echo $OS_VERSION