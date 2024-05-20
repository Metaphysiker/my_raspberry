from fastapi import APIRouter
import os
from app.Models.SongRequest import SongRequest

router = APIRouter()

@router.get("/users/", tags=["users"])
async def read_users():
    return [{"username": "Rick"}, {"username": "Morty"}]

@router.get("/play_song")
async def play_song():
    os.system('/code/app/music_player/play_song.sh')
    return {"song": "play song"}

@router.get("/stop_song")
async def stop_song():
    os.system('/code/app/music_player/stop_song.sh')
    return {"song": "stop song"}

@router.get("/start_music_player")
async def start_music_player():
    os.system('nohup /code/app/music_player/start_music_player.sh &')
    return {"song": "setup"}

@router.get("/stop_music_player")
async def stop_music_player():
    os.system('/code/app/music_player/stop_music_player.sh')
    return {"song": "setup"}

@router.post("/play_specific_song")
async def play_specific_song(songRequest: SongRequest):
    os.system("/code/app/music_player/play_song.sh {0}".format(songRequest.name))
    return songRequest

@router.get("/get_available_songs")
async def get_available_songs():
    songs = os.listdir('/code/app/music_player/music_library')
    return songs
