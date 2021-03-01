FREE_MEMORY="$(grep 'MemFree' /proc/meminfo | awk '{print $2}')"
TOTAL_MEMORY="$(grep 'MemTotal' /proc/meminfo | awk '{print $2}')"