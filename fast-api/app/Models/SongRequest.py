from pydantic import BaseModel, Field

class SongRequest(BaseModel):
    name: str = Field(..., example="song_name")
