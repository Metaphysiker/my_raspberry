#!/bin/bash
echo "start.sh"
cd "$(dirname "$0")"
whoami
export XDG_RUNTIME_DIR=/run/user/$(id -u)
echo $XDG_RUNTIME_DIR

docker compose down -v

docker compose up
