<script setup lang="ts">
import { ref } from 'vue'

type Note = { id: string; title: string; tags?: string[]; pinned?: boolean }
const props = defineProps<{ initial?: Note[] }>()
const items = ref<Note[]>(
  props.initial ?? [
    { id: 'n1', title: 'Inbox: Quick ideas', tags: ['inbox'], pinned: true },
    { id: 'n2', title: 'Shopping checklist', tags: ['personal'] },
    { id: 'n3', title: 'Project plan – v2', tags: ['work', 'planning'] },
  ],
)
</script>

<template>
  <div class="card" style="min-width: 320px">
    <div class="eyebrow">Notes (preview)</div>
    <ul class="points-clean" style="margin-top: 8px">
      <li v-for="n in items" :key="n.id">
        <span v-if="n.pinned" title="Pinned">📌</span>
        {{ n.title }}
        <span class="muted small" v-if="n.tags?.length"> • #{{ n.tags.join(' #') }}</span>
      </li>
    </ul>
  </div>
</template>
