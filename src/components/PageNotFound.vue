<template>
  <div id="notFound">
      <div id="errorBox">
        <i class="el-icon-error"></i>          
      </div>
      <div id="errorMsg">
      <h1>页面不存在</h1>
      <h2>错误代码 404</h2>
      <p>如果你是从某处跳转而来，请告诉站长这个页面不存在。</p>
      
      </div>
  </div>
</template>

<style scoped>
/* #notFound {
    text-align: center;
} */
.el-icon-error {
  font-size: 10em;
  color: #fa5555;
}
h1 {
  font-size: 2em;
}
#errorBox {
  float: left;
  margin-right: 3em;
}
#errorMsg {
  float: right;
}
</style>
