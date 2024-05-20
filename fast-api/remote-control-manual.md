mkfifo mypipe
vlc -I rc < mypipe

cat > mypipe

tail -n 1 > mypipe

echo "play" > mypipe
echo "add Worringen.mp3" > mypipe
echo "pause" > mypipe

nohup ./start_music_player.sh &
