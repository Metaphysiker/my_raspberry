#!/bin/bash
cd "$(dirname "$0")"
rmdir pulseaudio.socket
pactl load-module module-native-protocol-unix socket=$(pwd)/pulseaudio.socket
docker compose up
