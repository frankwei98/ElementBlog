<template>
  <div id="app">
    <el-container>
      <el-header>
        <HeaderTemplate/>
        </el-header>
      <el-main>
        <router-view/>
      </el-main>
      <el-footer>
        <FooterTemplate/>
        </el-footer>
    </el-container>
  </div>
</template>

<script>
import Footer from './components/Footer'
import Header from './components/Header'
export default {
  name: 'app',
  components: {
    'HeaderTemplate': Header,
    'FooterTemplate': Footer
  },
  data () {
    return {
      title: 'Frank Wei\'s Blog'
    }
  },
  created () {
    document.title = this.title
  }
}
</script>

<style>
#app {
  font-family: "Helvetica Neue",Helvetica,"PingFang SC","Hiragino Sans GB",
  "Microsoft YaHei","微软雅黑",Arial,sans-serif !important;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  /* text-align: center; */
  color: #666;
}
.el-main {
  max-width: 65%;
  margin: 0 auto;
}
a {
    text-decoration: none !important;
    color: #444!important;
}

a:hover {
    text-decoration: none!important;
    color: #222!important;
}

a:hover i {
  color: #0080fc !important;
}

.el-header {
  height: auto !important;
}

img {
  object-fit: cover;
  max-height: 20em;
}

</style>
