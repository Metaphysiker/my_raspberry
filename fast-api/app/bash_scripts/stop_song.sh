#!/bin/bash
read -r firstline<current_pid
kill -9 $firstline
>current_pid
