NUMBER_OF_TOP_PROCESSES=6
#top 5, 6 because of header
echo Top 5 processes consuming most memory

IFS=$'\n'

for tbl in $(ps -eo user,pid,%cpu,%mem --sort=-%mem | head -n $NUMBER_OF_TOP_PROCESSES)
do
   echo $tbl
done