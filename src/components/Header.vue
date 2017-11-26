<template>
    <div class="container">
    <h1 id="logo">
        <router-link
        to="/">
        <img
            style="vertical-align: middle;"
            id="blogLogo"
            :src="headerData.userAvatar" alt="">
        <span id="blogTitle">{{headerData.title}}</span>
        </router-link> 
    </h1>
    <el-menu
    :router="true"
    :default-active="activeIndex"
    v-bind="headerData"
    class="el-menu-demo" mode="horizontal"
    style="float:right;">
        <!-- <el-submenu index="2">
            <template slot="title">博文</template>
            <el-menu-item index="2-1">选项1</el-menu-item>
            <el-menu-item index="2-2">选项2</el-menu-item>
            <el-menu-item index="2-3">选项3</el-menu-item>
        </el-submenu> -->
        <el-menu-item :index="headerData.navbarItem.文章列表">
            <i class="el-icon-document"></i> 
            文章列表 
            </el-menu-item>
        <el-menu-item :index="headerData.navbarItem.友情链接">
            <i class="el-icon-star-off"></i> 
            友情链接 
            </el-menu-item>
        <el-menu-item index="/info">
            <i class="el-icon-info"></i> 
            个人介绍 
            </el-menu-item>
    </el-menu>
    </div>
</template>

<script>
export default {
  data () {
    const headerInfo = {
      title: `Frank Wei's Dev Notes`,
      userAvatar:
        'https://ws3.sinaimg.cn/large/006tKfTcgy1flgi1t9yf0j30b40b4jxk.jpg',
      navbarItem: {
        文章列表: '/',
        友情链接: '/friends'
      }
    }
    return {
      activeIndex: '1',
      headerData: headerInfo
    }
  }
}
</script>

<style scoped>
#logo {
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

.container {
  height: 60px;
  box-sizing: border-box;
}
#blogTitle {
  font-weight: 400;
  font-size: 22px;
}
#blogLogo {
  max-width: 95%;
  max-height: 95%;
  border-radius: 100%;
}
li a {
  display: block;
  text-decoration: none;
}
</style>


