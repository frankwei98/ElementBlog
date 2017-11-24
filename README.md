# ✏️ element-blog

![Build Status](https://travis-ci.org/frankwei98/ElementBlog.svg?branch=dev)

> **Warning!** This project is still not Production Ready, please don't use this in production!!!

> ✏️ A Blog's Front End that built on Modern JavaScript Environment with Webpack, Vue.js and Element-UI.

Backend implementation is NEEDED now!

We have serval clues about the backend implementation:

* Github API with static site hosted in Github Pages

* Built with Java Web Framework [Spring](https://spring.io)

* Built with Ruby Web Framework [midori.rb](https://github.com/midori-rb/midori.rb) 

## Todo List

- [ ] Use Vuex for state control

- [ ] Fix Dockerfile's Nginx 404 is not pointing `index.html`


## API Map 

We have defined serval API that is crucial for a Blog site

(Possibly More to add in the future)

```
GET /api/post -> return list of the blog posts

GET /api/post/:id -> return the blog post info of given blog post id (Stadard of ID is still unknown)

POST /api/tag -> return list of the blog posts with the provided tag



```


## 📦 Build and 🏃🏃‍♀️ Run Setup

### Front-End Part can run on 🦈 Docker now!

But still need some improvement  🤔

Bugs:
- [x] Change Docker's Nginx 404 page to `index.html` in order to avoid access directly from link get a 404 which match the router in history mode 

Features that might add in future:
- [ ] Introduce a environment variable that point the backend. (Which have to support CORS, if you don't know what is CORS, Google is your best friend. :) )

### By CLI

``` bash
# install dependencies
yarn

# serve with hot reload at localhost:8080
yarn run dev

# build for production to deploy with minification
yarn run build

```

For a detailed explanation on how things work, check out the [guide](http://vuejs-templates.github.io/webpack/) and [docs for vue-loader](http://vuejs.github.io/vue-loader).

