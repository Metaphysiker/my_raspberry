#!/bin/bash
cd "$(dirname "$0")"
./clean_up.sh
nohup mpg123 music_library/special_list/* &
#cvlc music_library/$1 --play-and-exit --novideo &
echo $! >current_pid
