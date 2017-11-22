<template>
  <div class="postline-item">
      <!-- Dirty Hack 注意-->
      <div style="width: 10000em"></div>
      <!-- 撑大div容器来显示骨架-->

      <div v-for="(number,i) in numberOfCard" v-bind:key="number">
<vue-content-loading :width="300" :height="170" :speed="1">
      <rect x="0" y="0" rx="3" ry="3" width="300" height="130" :v-if="images" />
      <!-- <rect x="0" y="180" rx="2" ry="2" width="35" height="45" /> -->
      <rect x="0" y="135" rx="2" ry="2" width="250" height="15" />
      <rect x="0" y="155" rx="2" ry="2" width="300" height="10" />
    </vue-content-loading>  
      </div>

  </div>
</template>

<style scoped>
.postline-item {
    width: 100%;
    max-width: 100%;
    overflow: hidden;
}
</style>

<script>
import VclTwitch from 'vue-content-loading'

export default {
  props: {
    numberOfCard: {
      default: 1
    },
    images: {
      default: true
    },
    line: {
      default: 1
    }
  },
  components: {
    'vue-content-loading': VclTwitch
  }
}
</script>
