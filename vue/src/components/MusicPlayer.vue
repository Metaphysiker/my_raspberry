<script setup lang="ts">
import { MusicPlayerService } from '@/services/MusicPlayerService'
import { onMounted, ref, type Ref } from 'vue'

const musicPlayerService = new MusicPlayerService()

const songs: Ref<string[]> = ref([])

onMounted(() => {
  musicPlayerService.getAvailableSongs().then((data) => {
    songs.value = data
  })
})
</script>

<template>
  <div class="container">
    <div v-for="song in songs" :key="song">
      <button
        type="button"
        class="btn btn-primary mb-3"
        @click="musicPlayerService.playSpecificSong(song)"
      >
        {{ song }}
      </button>
    </div>
    <div>
      <button type="button" class="btn btn-primary" @click="musicPlayerService.stop()">Stop</button>
    </div>
  </div>
</template>
