export class MusicPlayerService {
  baseUrl: string
  constructor() {
    this.baseUrl = import.meta.env.VITE_API_BASE_URL
    console.log('baseUrl', this.baseUrl)
  }

  getAvailableSongs() {
    return new Promise<string[]>((resolve) => {
      fetch(this.baseUrl + '/get_available_songs')
        .then((response) => response.json())
        .then((data) => resolve(data))
    })
  }

  playSpecificSong(songName: string) {
    return new Promise<void>((resolve) => {
      fetch(this.baseUrl + '/play_specific_song', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({ name: songName })
      }).then(() => resolve())
    })
  }

  stop() {
    return new Promise<void>((resolve) => {
      fetch(this.baseUrl + '/stop_song').then(() => resolve())
    })
  }

  playSpecialList() {
    return new Promise<void>((resolve) => {
      fetch(this.baseUrl + '/play_special_list').then(() => resolve())
    })
  }
}
