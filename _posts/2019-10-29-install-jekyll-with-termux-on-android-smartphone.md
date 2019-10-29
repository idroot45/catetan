---
title: Install Jekyll via Terminal on Termux Android
excerpt: Command line install Jekyll with Termux android app
categories: [android]
tags: [install jekyll, jekyll android, github pages, termux android]
---
[Jekyll](https://jekylrb.com) is a simple, blog-aware, static site generator for personal, project, or organization sites. Written in Ruby by Tom Preston-Werner, GitHub's co-founder, it is distributed under the open source MIT license.

Instead of using databases, Jekyll takes the content, renders **Markdown** or **Textile** and **Liquid templates**. This produces a complete, static website ready to be served by Apache HTTP Server, Nginx or another web server. Jekyll is the engine behind GitHub Pages, a GitHub feature that allows users to host websites based on their GitHub repositories for no additional cost.

Jekyll is flexible and can be used in combination with front-end frameworks such as Bootstrap, Semantic UI and many others.

Jekyll sites can be connected to cloud-based CMS software such as CloudCannon, Forestry, Netlify or Siteleaf, enabling content editors to modify site content without having to know how to code.

But, if you interested and want to know more about web developing with Jekyll, then you can install locally. 

### Installation

There are plenty tutorial how to install jekyll on various OS such as: MacOS, Linux PC also Windows PC. For this time, we will use an Android OS powered smartphone.

You will need [Termux](https://termux.com) app to do this. Install the app from [playstore](https://play.google.com/store/apps/details?id=com.termux) first. Then do/write the following command.

```terminal
pkg install ruby clang make libffi 
gem install jekyll
```

**More information**: You cal also install the github-pages package with t he following comands:

```terminal
gem install github-pages
```
then move to your own git repository pointing your github-pages

```terminal
gem install github-pages
```
and then you can start the jekyll blog with

```terminal
jekyll serve
```

then open your preferred browser to [http://localhost:4000](http://localhost:4000)

That's it! Now you can [explore more how to use Jekyll](https://jekyllrb.com/docs/) from your smartphone.
