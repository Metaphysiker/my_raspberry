#!/bin/bash
vlc -I rc < music_player.pipe &
echo $! >current_pid
