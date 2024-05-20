#!/bin/bash
cd "$(dirname "$0")"
read -r firstline<current_pid
kill -9 $firstline
>current_pid
