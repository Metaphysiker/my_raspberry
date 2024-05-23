Commands:

sudo chown -R pi:pi /run/user/1000/pulse

sudo rm -rf .config/pulse

pulseaudio --kill
pulseaudio --start

mv ~/.config/pulse ~/.config/pulse.old1

docker compose down -v
//because pulse in container is not a socket anymore

journalctl -xe

sudo killall pulseaudio
