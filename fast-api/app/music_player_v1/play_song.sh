#!/bin/bash
cd "$(dirname "$0")"

if [[ $# -gt 0 ]]
  then
    echo "add music_library/$1" > music_player.pipe
  else
    echo "add music_library/satanist.mp3" > music_player.pipe
fi
