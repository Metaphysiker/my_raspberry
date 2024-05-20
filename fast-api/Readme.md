docker build . -t fast-api

docker run -p 8000:8000 fast-api

docker run -it -p 8000:8000 --privileged --device=/dev/snd:/dev/snd --rm --name fast-api fast-api sh

docker run --rm \
 --env PULSE_SERVER=unix:/tmp/pulseaudio.socket \
 --env PULSE_COOKIE=/tmp/pulseaudio.cookie \
 -e DISPLAY=$DISPLAY \
 -v /tmp/.X11-unix:/tmp/.X11-unix \
 --volume /tmp/pulseaudio.socket:/tmp/pulseaudio.socket \
 --volume /tmp/pulseaudio.client.conf:/etc/pulse/client.conf \
 --user $(id -u):$(id -g) \
 --name fast-api \
 -it \
 -p 8000:8000 \
fast-api sh

## Working: https://github.com/mviereck/x11docker/wiki/Container-sound:-ALSA-or-Pulseaudio

---

with display

docker run --rm \
 --env PULSE_SERVER=unix:/tmp/pulseaudio.socket \
 --env PULSE_COOKIE=/tmp/pulseaudio.cookie \
 -e DISPLAY=$DISPLAY \
 -v /tmp/.X11-unix:/tmp/.X11-unix \
 --volume /tmp/pulseaudio.socket:/tmp/pulseaudio.socket \
 --volume /tmp/pulseaudio.client.conf:/etc/pulse/client.conf \
 --user $(id -u):$(id -g) \
 --name fast-api \
 -it \
fast-api sh
