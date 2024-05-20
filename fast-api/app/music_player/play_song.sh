#!/bin/bash
cd "$(dirname "$0")"
./clean_up.sh
cvlc music_library/$1 --play-and-exit --novideo &
echo $! >current_pid
