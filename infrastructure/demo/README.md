pactl load-module module-native-protocol-unix socket=/tmp/pulseaudio.socket

/home/sandro/workspace/my_raspberry/infrastructure/demo

pactl load-module module-native-protocol-unix socket=/home/sandro/workspace/my_raspberry/infrastructure/demo

    pactl load-module module-native-protocol-unix socket=/home/sandro/workspace/my_raspberry/infrastructure/demo/pulseaudio.socket

Remove directory named pulseaudio.socket and then create socket with:

    rmdir pulseaudio.socket

    pactl load-module module-native-protocol-unix socket=$(pwd)/pulseaudio.socket
