<script setup lang="ts">
import { MusicPlayerService } from '@/services/MusicPlayerService'
import { onMounted } from 'vue'

const musicPlayerService = new MusicPlayerService()

const songs: string[] = []

onMounted(() => {
  musicPlayerService.getAvailableSongs().then((data) => {
    console.log(data)
    songs.push(...data)
  })
})
</script>

<template>
  <h1>My Raspberry Music Player</h1>
  <p>List:</p>
  <ul>
    <li v-for="song in songs" :key="song">{{ song }}</li>
  </ul>
</template>
