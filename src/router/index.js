import Vue from 'vue'
import Router from 'vue-router'
import Posts from '@/components/Posts'
import Post from '@/components/Post'
import NotFound from '@/components/PageNotFound'

Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [
    {
      path: '/',
      name: 'Posts',
      component: Posts
    },
    {
      path: '/post/:id',
      name: 'Post',
      component: Post
    }, {
      path: '*',
      name: 'NotFound',
      component: NotFound
    }
  ]
})
