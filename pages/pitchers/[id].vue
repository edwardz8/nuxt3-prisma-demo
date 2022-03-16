<script setup>
const route = useRoute();
const { data: pitcher } = await useFetch(`/api/pitchers/${route.params.id}`);
</script>

<template>
  <div v-if="pitcher" class="w-full h-screen mx-auto mt-2 ml-4 mr-4 px-6 py-6">
    <h1 class="text-xl">
      {{ pitcher.name }}
    </h1>
    <p class="mt-6 mb-6">
      {{ pitcher.team }}
    </p>
    <p class="mt-6 mb-6">
      K/9 Rate: {{ pitcher.ks_per_nine }}
    </p>
    <span
      class="inline-block hover:bg-gray-900 bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold hover:text-gray-100 text-gray-700 mr-2 mb-2"
      ><nuxt-link :to="{ name: 'pitchers' }">All Pitchers</nuxt-link></span
    >
  </div>
</template>
