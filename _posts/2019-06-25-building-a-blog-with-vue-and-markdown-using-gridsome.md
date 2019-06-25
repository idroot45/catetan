---
title: Building a Blog with Vue and Markdown Using Gridsome
excerpt: Enter the world of static site generation and the JAMstack using Gridsome. Learn to build a blog using Markdown and GraphQL, and then deploy it to Netlify.
header:
 image: https://d585tldpucybw.cloudfront.net/sfimages/default-source/blogs/templates/vuet-dark_870x220.png?sfvrsn=83bce1fb_3
 teaser: https://i0.wp.com/paper-attachments.dropbox.com/s_591039DD415F66F18804BF2A265ECE66244A5CAA5FFA5AABF40F4660051BE767_1558605032516_Screen+Shot+2019-05-23+at+10.49.40+AM.png?resize=320,160
link: https://www.telerik.com/blogs/building-a-blog-with-vue-and-markdown-using-gridsome
toc: "true"
toc_label: "Table of Content"
---

The web is ever evolving and the need to stay updated as developers is really important. In [this article](#), I’ll be introducing you to the world of static site generation and the JAMstack using Gridsome. At the end of the article we’ll build a blog using Markdown as the generated content and GraphQL to query posts that will be displayed on the pages, and then we’ll see how to deploy it to Netlify.

Static Site Generators are part of a new hybrid approach to web development that allows you to build a powerful website locally on your computer but pre-builds the site into static files for deployment. [JAMstack](https://jamstack.org/) is a new way of building websites and applications that delivers better performance, higher security, lower cost of scaling and better developer experience.

![Gridsome official website](https://paper-attachments.dropbox.com/s_591039DD415F66F18804BF2A265ECE66244A5CAA5FFA5AABF40F4660051BE767_1558605032516_Screen+Shot+2019-05-23+at+10.49.40+AM.png)

### Introducing Gridsome

[Gridsome](https://gridsome.org/) is a Vue.js-powered static site generator for creating fast and secure websites that can be deployed anywhere. It makes it easy for developers to build modern JAMstack websites.

Gridsome comes bundled with some features that are hard to miss, and this makes it one of the most sought-after static site generators out there. Some of these features include:

- Local development with Hot Reloading - See changes in real-time while developing.
- Write Vue.js Code - A lightweight and approachable frontend framework.
- GraphQL data layer - Centralized data management for all your data.
- Automatic page routing - Quickly create and manage pages with files.
- Progressive image support - Auto resize, optimize & lazy load images.
- Auto page prefetching - Pages are loaded in the background for fast browsing.
- Auto-optimized code - Get code-splitting and asset optimization out-of-the-box.
- Fast static page generating - Deploy securely and fast to any Static Web Host.
-Data source plugins - Add data from popular Headless CMSs, APIs or Markdown files.

### Prerequisites

In order to follow through with this tutorial, You should have a basic knowledge of the following:

- HTML and CSS
- [Vue.js](https://vuejs.org/) and how to use the [Terminal](https://www.linode.com/docs/tools-reference/tools/using-the-terminal/)
- Knowledge of how [GraphQL](https://www.graphql.com/) works is a plus, but not required
- [Node.js (v8.3 and above)](https://nodejs.org/en/) and [Yarn](https://yarnpkg.com/)

### Setting Up a Gridsome Project

We’ll need to set up a new Gridsome project, and to do so we’ll be required to run the following commands.

For the first step, install the Gridsome CLI on your computer using npm or yarn.

```bash
$ npm install --global @gridsome/cli or $ yarn global add @gridsome/cli 
```

The next step after installing the CLI is to go ahead and create a new project called `Telerik-blog` and run the project.

```bash
// create a new gridsome project $ gridsome create telerik-blog $ cd telerik-blog $ gridsome develop 
```

After running these commands, your local dev server should be running at `http://localhost:8080` with the sample page displayed below.

![The Page is shown after creating a project](https://paper-attachments.dropbox.com/s_591039DD415F66F18804BF2A265ECE66244A5CAA5FFA5AABF40F4660051BE767_1558608771853_Screen+Shot+2019-05-23+at+11.52.32+AM.png)

If we try to change anything on this layout page then we’ll see that it automatically changes what we have on the screen. This is as a result of Gridsome Hot Reloading feature we talked about earlier.

### Building Out a Blog with Gridsome

We’ll get started by describing what we are trying to achieve with the blog — we’ll have a single page with a list of posts and have each post with content in Markdown. In order to achieve this, we’ll need to install a [Gridsome Plugin](https://gridsome.org/docs/plugins) called `gridsome/source-filesystem` that helps transform files into content that can be fetched with GraphQL in your components. Go ahead and install the package using this command:

```bash
yarn add @gridsome/source-filesystem or npm install @gridsom/source-filesystem 
```

and configure it within the `gridsome.config.js` file:

```javascript
module.exports = { siteName: 'Gridsome Blog', siteDescription: 'A simple blog designed with Gridsome', plugins: [ { use: '@gridsome/source-filesystem', options: { path: 'content/posts/**/*.md', typeName: 'Post', route: '/blog/:slug' } } ] } 
```

The configuration above is what we need to set up the `source-filesystem` plugin. The options set here:

- `Path`: the location of the markdown content we’ll be consuming in the posts.
- `typeName`: The GraphQL type and template name. A .vue file in src/templates must match the typeName to have a template for it.
- `route`: This is the route every post will follow i.e `localhost:8080/blog/new-post`

Gridsome uses Layouts as a wrapper for pages and templates. Layouts contain components like header, footer or sidebars, etc. and a slot component where content coming from pages and templates is inserted.

```html
<template>
<div class="layout">
<slot/>
<!-- Page/Template will be inserted here -->
<div class="footer">
<p> Built with <a class="link" href="//gridsome.org">Gridsome</a> & Made with ❤️ by <a class="link" href="//twitter.com/lauragift21">Gift Egwuenu</a>
</p>
</div>
</div>
</template> 
```

The above code block is our Default.vuecomponent. We can go ahead and check the styling used in the [GitHub Repo](https://github.com/lauragift21/gridsome-blog).

### Creating the Page Layout

The Page layout will be where all the blog posts are listed and also will serve as the homepage. In Gridsome, [Pages](https://gridsome.org/docs/pages) are used for **normal pages** and for **listing & paginate GraphQL collections**. In this case our blog posts is the collection. The page URL is generated based on the location and name of the file. As an example, if we create a file within the pages directory and name it `Index.vue`, it will be treated as `index.html`, which is the home page. The same applies if we create a file and call it `About.vue` — it’ll be treated as `about.html` and will be linked as `/about`. That is how routing works in Pages. Because we only want to display all `posts` in a single page, we can go ahead and create `Index.vue` file, or if we have one generated for us already then we can use that.

Our `Index.vue` should look like this:

```html
<template>
<Layout>
<header class="header">
<h1>Gridsome Blog</h1>
<p>A simple blog designed with Gridsome</p>
</header>
</Layout>
</template> 
```

And with that, we should have this page when we navigate to the homepage.

![Blog page](https://paper-attachments.dropbox.com/s_591039DD415F66F18804BF2A265ECE66244A5CAA5FFA5AABF40F4660051BE767_1558630545728_Screen+Shot+2019-05-23+at+5.55.33+PM.png)

Now that we have the homepage, we can go ahead and create a list of blog posts and display that on the page. We can create a `PostList.vue` file within the components directory, in which we’ll create the layout for displaying a list of post for our blog.

```html
<template>
<div class="post-list">
<hr class="line" />
<p class="date" v-html="post.date" />
<h1 class="title" v-html="post.title" />
<p class="description" v-html="post.description" />
<b> {{post.timeToRead}} min read </b> &nbsp <g-link :to="post.path" class="read">Read More...</g-link>
</div>
</template>
<script> export default { props: ["post"], }; </script>
```

Within this file, we have content for displaying a list of posts and we are also adding a post props that enable us to pass data from the parent component down to the `PostList` child component.

Head back to the `Index.vue` within the Pages directory. Remember I previously mentioned Gridsome has a centralized data management for all your data, which in our case is `GraphQL`. It uses `<page-query>` and `<static-query>` to fetch data into pages, template and components. Here we need to pull all posts we have in our content directory written in Markdown and display them within our Vue component.

```javascript
<page-query> query { allPost { totalCount edges { node { id title timeToRead description date (format: "D MMMM YYYY") path } } } } </page-query> 
```

Now, we have the content in the Vue component we can pass them to the PostList.vue component like this:

```javascript
<section class="posts">
<PostList v-for="edge in $page.allPost.edges" :key="edge.node.id" :post="edge.node" />
</section> 
```
![Blog post list](https://paper-attachments.dropbox.com/s_591039DD415F66F18804BF2A265ECE66244A5CAA5FFA5AABF40F4660051BE767_1558631464432_Screen+Shot+2019-05-23+at+6.10.46+PM.png)

### Displaying the Post Layout

Now we have a list of posts from the content folder displayed. The next step is to display a single post when one of these posts is clicked. We’ll be using a template to handle this. In Gridsome, a [Template](https://gridsome.org/docs/templates) is used for displaying a single post view to **GraphQL collections**. Add a `Post.vue` file within the templates directory with the following content.

```javascript
<template>
<Layout>
<br>
<g-link to="/" class="link"> &larr; Go Back</g-link>
<div class="post-title">
<h1>{{$page.post.title}}</h1>
<p class="post-date"> {{ $page.post.date}} | {{$page.post.timeToRead}} min read </p>
</div>
<div class="post-content">
<p v-html="$page.post.content" />
</div>
</Layout>
</template> 
```

And to query the content of a single post, we’ll be using a `page-query` with the following:

```javascript
<page-query>
query Post ($path: String!) { post: post (path: $path) { id title content date (format: "D MMMM YYYY") timeToRead } }
</page-query>
```

With that done, when you click on `read more` on the homepage, you should see the content of a single post displayed with a slug using the post title like we configured in `gridsome.config.js`.

![single post](https://paper-attachments.dropbox.com/s_591039DD415F66F18804BF2A265ECE66244A5CAA5FFA5AABF40F4660051BE767_1558631882554_Screen+Shot+2019-05-23+at+6.17.47+PM.png)

### Deploying Blog with Netlify

Our blog is complete! The next step is to deploy, and for this we’ll be using [Netlify](https://www.netlify.com/). Head over to Netlify website and create a new site. Make sure you have your codebase on GitHub. You can find the Repo for this project on [GitHub](https://github.com/lauragift21/gridsome-blog). The next step is to add the following configuration.

![Netlify deploy: Set Publish directory to dist.](https://paper-attachments.dropbox.com/s_591039DD415F66F18804BF2A265ECE66244A5CAA5FFA5AABF40F4660051BE767_1558632210776_Screen+Shot+2019-05-23+at+6.23.18+PM.png)

After creating a new site on Netlify we’ll be prompted with a modal to configure our site. Go ahead and setup the branch to deploy as master and the build configurations should be `gridsome build` as the command and dist as the publish directory. After we’ve done that we can then click on deploy site and we’ll have our site deployed with a URL to visit in no time. The URL for this project can be found [here](https://gridsome-blog-telerik.netlify.com/)

### Conclusion

In this article, we have demonstrated how to build a blog in Vue.js using Gridsome and Markdown. You can see it can be pretty straightforward to implement and in no time you have a personal blog running. Feel free to check out the [GitHub Repo](https://github.com/lauragift21/gridsome-blog) and [Gridsome Documentation](https://gridsome.org/docs) to learn more.
