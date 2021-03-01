FREE_MEMORY="$(grep 'MemFree' /proc/meminfo | awk '{print $2}')"
