<template>
    <div id="posts">
          <div id="loading" v-if="loadingLock">
            <CardMask></CardMask>
          </div>
          <div class="post" 
          v-bind="post" 
          v-for="(post,index) in posts.data" 
          :key="index">
          <PostCard :post="post"></PostCard>
          </div>
    </div>
</template>

<script>
import PostCard from './Post/Card'
import CardMask from './Post/CardMask'

export default {
  components: {
    PostCard,
    CardMask
  },
  data () {
    return {
      loadingLock: true, // If data successful downloaded, the lock will be false
      posts: [],
      config: {
        width: '200px',
        height: '18px',
        background: '#ddd'
      }
    }
  },
  created () {
    // Disable force timeout for debugging
    // setTimeout(() => {
    this.fetchData()
    // }, 3000)
  },
  methods: {
    fetchData: function (page = 1) {
      const postsUrl = 'http://127.0.0.1:8080/post' // test for ruby sinatra
      this.$axios
        .post(postsUrl)
        .then(response => {
          this.posts = response.data
          // console.log(this.posts)
          this.loadingLock = false
        })
        .catch(error => {
          console.log(error)
          // this.loadingLock = false
          this.$message.error({
            duration: 0,
            message: '无法连接博客服务器,请检查网络环境后再重试'
          })
          this.$notify.error({
            duration: 0,
            title: '无法连接博客服务器',
            message: `${error}, 请检查网络环境后再重试`,
            position: 'bottom-right'
          })
        })
    }
  }
}
</script>

<style scoped>

</style>
