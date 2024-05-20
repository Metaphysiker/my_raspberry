#!/bin/bash
cd "$(dirname "$0")"
rm music_player.pipe
read -r firstline<current_pid
kill -9 $firstline
>current_pid
