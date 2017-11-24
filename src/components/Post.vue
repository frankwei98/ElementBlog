<template>
    <div id="post"
    :v-bind="postData">
        <CardMask v-if="loadingLock"> </CardMask>
        <div id="loaded-content" v-if="!loadingLock">
        <img :src="postData.img" alt="">
        <h1 class="title">{{postData.title}}</h1>
        <p style="color: #52636b"> {{postData.author.name }} 发表于 {{postData.date}} </p>
        <div id="content" v-html="postData.content"></div>
        <!-- <p>{{postData.content}}</p> -->
        </div>
    </div>
</template>

<script>
import CardMask from './Post/CardMask'

export default {
  components: {
    CardMask
  },
  name: 'post',
  data () {
    return {
      loadingLock: true, // If data successful downloaded, the lock will be false
      postID: this.$route.params.id,
      postData: {
        author: {}
      },
      htmlData: ''
    }
  },
  created () {
    // Disable force timeout for debugging
    // setTimeout(() =>
    this.fetchData()
    // , 500)
  },
  methods: {
    fetchData: function (id = this.postID) {
      const getPostAPI = `http://127.0.0.1:8080/api/post/${id}`
      this.$axios
        .get(getPostAPI)
        .then(response => {
          console.log(response)
          this.postData = response.data.data
          this.postData['content'] = this.postData['content']
            .replace(/\n/g, '<br>')
            .replace(/[ ]/g, '&nbsp;')
          this.loadingLock = false
        })
        .catch(this.errorThrowing)
    },
    errorThrowing: function (error) {
      this.loadingLock = false
      this.$message.error({
        duration: 0,
        message: '无法连接博客服务器,请检查网络环境后再重试'
      })
      this.$notify.error({
        duration: 0,
        title: '无法连接博客服务器',
        message: `错误代码 ${error.response.status}, 请检查网络环境后再重试`,
        position: 'bottom-right'
      })
    },
    githubMarkdownRender: markdownText => {
      let githubAPI = 'https://api.github.com/markdown'
      let requestBody = {
        text: '# Hello world\n\n This is **Frank** `code`',
        mode: 'markdown'
      }
      let config = {
        headers: {
          Accept: 'application/vnd.github.v3.html',
          'Content-Type': 'application/json'
        }
      }
      let result = {}
      this.$axios.post(githubAPI, requestBody, config).then(response => {
        console.log(response.data)
        this.htmlData = response.data
        result = response.data
      })
      return result
    }
  }
}
</script>

<style scoped>
img {
  width: 100%;
  max-height: 500px;
}
#post {
  margin-top: 30px;
  margin-bottom: 30px;
  border-bottom: 1px solid rgba(0, 0, 0, 0.15) !important;
  padding-bottom: 30px;
  text-decoration: none !important;
  color: #222 !important;
}
#post .title {
  font-weight: 500;
  font-size: 36px;
}

#post .titleImage {
  width: 100%;
}
#post p {
  font-size: 18px;
}

/* Style from GitHub Start */
.pl-c {
  color: #969896;
}
.pl-c1,
.pl-s .pl-v {
  color: #0086b3;
}
.pl-e,
.pl-en {
  color: #795da3;
}
.pl-s .pl-s1,
.pl-smi {
  color: #333;
}
.pl-ent {
  color: #63a35c;
}
.pl-k {
  color: #a71d5d;
}
.pl-pds,
.pl-s,
.pl-s .pl-pse .pl-s1,
.pl-sr,
.pl-sr .pl-cce,
.pl-sr .pl-sra,
.pl-sr .pl-sre {
  color: #183691;
}
.pl-v {
  color: #ed6a43;
}
.pl-id {
  color: #b52a1d;
}
.pl-ii {
  background-color: #b52a1d;
  color: #f8f8f8;
}
.pl-sr .pl-cce {
  color: #63a35c;
  font-weight: bold;
}
.pl-ml {
  color: #693a17;
}
.pl-mh,
.pl-mh .pl-en,
.pl-ms {
  color: #1d3e81;
  font-weight: bold;
}
.pl-mq {
  color: #008080;
}
.pl-mi {
  color: #333;
  font-style: italic;
}
.pl-mb {
  color: #333;
  font-weight: bold;
}
.pl-md {
  background-color: #ffecec;
  color: #bd2c00;
}
.pl-mi1 {
  background-color: #eaffea;
  color: #55a532;
}
.pl-mdr {
  color: #795da3;
  font-weight: bold;
}
.pl-mo {
  color: #1d3e81;
}
/* Style from GitHub End */
#content {
  color: #52636b !important;
}
</style>
