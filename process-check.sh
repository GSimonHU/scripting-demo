NUMBER_OF_TOP_PROCESSES=6
#top 5, 6 because of header

IFS=$'\n'

for tbl in $(ps -eo pid,%mem --sort=-%mem | head -n $NUMBER_OF_TOP_PROCESSES | grep -v 'PID')
do
   echo $tbl
done