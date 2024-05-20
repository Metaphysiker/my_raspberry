#!/bin/bash
./stop_song.sh
mpg123 $1 &
echo $! >current_pid
