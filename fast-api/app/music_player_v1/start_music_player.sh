#!/bin/bash

cd "$(dirname "$0")"
SCRIPT_DIR="$(pwd)"
echo "Script directory: $SCRIPT_DIR"

file="music_player.pipe"

if [ -f "$file" ] ; then
    rm "$file"
fi

mkfifo music_player.pipe

./start_vlc.sh
#vlc -I rc < music_player.pipe &

tail -f -n 1 > music_player.pipe &

#./start_tail_for_vlc.sh &
#tail -n 1 > music_player &
#tail -n 1 > music_player &
#tail -n 1 > music_player | tee &
#cat > music_player &
#tail -n 1 > music_player &
#./start_tail_for_vlc.sh

#cat music_player &
