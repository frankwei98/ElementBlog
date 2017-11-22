<template>
<div class="post">
            <router-link :to="post.url">
            <img :src="post.img" alt="" class="titleImage">
              <h1 class="title">
                  {{post.title}} 
              </h1>
          </router-link>
              
<!-- 
            <div class="postStat">
              <router-link :to="o.url">
                <img :src="o.author.avatar" class="authorAvatar"alt="">
              </router-link>
                <span>{{o.author.name}}
                  {{o.date}}</span>
            </div> -->

              <div class="desp">
                {{post.desp}} 
                <router-link :to="post.url">
                  <span>
                   查看全文 <i class="el-icon-arrow-right"></i>
                  </span>
                </router-link>
              </div>
</div>
</template>

<script>
export default {
  props: ['post']
}
</script>

<style scoped>
.post {
  margin-top: 30px;
  margin-bottom: 30px;
  border-bottom: 1px solid rgba(0, 0, 0, 0.15) !important;
  padding-bottom: 30px;
}
.post .title {
  font-weight: 500;
  font-size: 36px;
}

.post .titleImage {
  width: 100%;
}

.postStat {
  float: left;
  height: 60px;
  line-height: 60px;
  margin: 0;
  cursor: pointer;
  position: relative;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  border-bottom: 2px solid transparent;
  color: #878d99;
}

/* .post desp{
} */

.postStat .authorAvatar {
  max-width: 95%;
  max-height: 95%;
  border-radius: 100%;
}
</style>
