<template>
  <div class="w-full h-screen max-w-3xl mx-auto">
    <div
      v-for="pitcher in pitchers"
      :key="pitcher.id"
      class="max-w-sm w-full lg:max-w-full lg:flex mt-4"
    >
      <div class="flex justify-center">
        <div class="block p-6 rounded-lg shadow-lg bg-white max-w-sm">
          <h5 class="text-gray-900 text-xl leading-tight font-medium mb-2">
            {{ pitcher.name }}
          </h5>
          <p class="text-gray-700 text-base mb-4">
            {{ pitcher.team }}
          </p>
          <div class="flex items-center">
            <div class="text-sm flex flex-wrap">
              <p class="text-gray-900">
                Wins: {{ pitcher.wins }} - Losses: {{ pitcher.losses }}
              </p>
            </div>
            <div class="px-6 pt-4 pb-2">
              <button
                type="button"
                class="inline-block px-6 py-2.5 bg-blue-600 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out"
              >
                <nuxt-link :to="{ name: 'pitchers-id', params: { id: pitcher.id } }"
                  >View
                </nuxt-link>
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
const { data: pitchers } = await useAsyncData("api/pitchers", () =>
  $fetch("/api/pitchers")
);
</script>
