# element-blog

> A Blog System that built on Modern JavaScript Environment with Webpack, Vue.js and Element-UI.

Backend implementation is NEEDED now!

We have serval clues with the backend implementation:

* Github API with static site hosted in Github Pages

* Built with Java Web Framework [Spring](https://spring.io)

* Built with Ruby Web Framework [midori.rb](https://github.com/midori-rb/midori.rb) 

## API Map

I have defined serval API that is crucial for a Blog site
```
GET /post -> return list of the blog posts

GET /post/:id -> return the blog post info of given blog post id (Stadard of ID is still unknown)

```

## We can run on docker now!

But still need to improve

Bugs:
- [ ] Change 404 page to `index.html` in order to avoid access directly from link get a 404 which match the router in history mode 

## Build Setup

``` bash
# install dependencies
npm install

# serve with hot reload at localhost:8080
npm run dev

# build for production with minification
npm run build

# build for production and view the bundle analyzer report
npm run build --report
```

For a detailed explanation on how things work, check out the [guide](http://vuejs-templates.github.io/webpack/) and [docs for vue-loader](http://vuejs.github.io/vue-loader).
