#!/bin/sh

OS_VERSION="$(grep 'PRETTY_NAME' /etc/*release | cut -d '"' -f2)" 
echo OS distribution and version from /etc/*release: 
echo $OS_VERSION
echo

echo Last modification made by apt from /var/log/apt/history.log:
START_LINE=$(grep -n 'Start-Date' /var/log/apt/history.log 2>/dev/null | grep -Eo '^[^:]+' | tail -1 )
if [$START_LINE -eq ""]
    then
    echo "Log is emtpy or does not exist"
else
    LAST_MODIFICATION_INFO=$(sed -n "$START_LINE,$ p" < /var/log/apt/history.log)
    echo "$LAST_MODIFICATION_INFO"
fi
echo