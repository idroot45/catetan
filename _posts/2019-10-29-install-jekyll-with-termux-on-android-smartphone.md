---
title: Install Jekyll via Terminal on Termux Android
excerpt: Command line install Jekyll with Termux android app
categories: [android]
tags: [install jekyll, jekyll android, github pages, termux android]
---
### Installation

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
