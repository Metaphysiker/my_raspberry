Commands:

pulseaudio --kill
pulseaudio --start

mv ~/.config/pulse ~/.config/pulse.old1

docker compose down -v //because pulse in container is not a socket anymore

journalctl -xe
