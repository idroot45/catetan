---
title: How to deploy React App in GitHub Pages
description: 'How to deploy React App using `create-react-app` in GitHub Pages'
categories:
 - programming
tags:
 - javascript
 - react
 - github
 - webdev
link: https://dev.to/yuribenjamin/how-to-deploy-react-app-in-github-pages-2a1f
header:
 image: https://thepracticaldev.s3.amazonaws.com/i/r010fy9k5yue6koyh8at.png
 teaser: https://i0.wp.com/thepracticaldev.s3.amazonaws.com/i/r010fy9k5yue6koyh8at.png?resize=320,160&ssl=1
---
Did you build React app and want to deploy it, following these simple steps you able to deploy and showing the world your amazing app.

I will show how to create and deploy React App using `create-react-app` and **GitHub Pages**

**Prerequisites :**

- [GitHub Account](https://github.com/join).
- Install [Git](https://git-scm.com/) in your machine and [Set up Git](https://help.github.com/en/articles/set-up-git).

_Make sure you have Node.js and Npm installed in your machine._

- Install [Node.js](https://nodejs.org/en/)
- Install [Npm](https://nodejs.org/en/)

> Make sure you have Node.js and Npm installed in your machine.

**Notice** You’ll need to have Node 8.10.0 or later on your local machine.

**Procedure :**

1 - First create a repository named my-appusing [create-react-app](https://github.com/facebook/create-react-app).

`npm init react-app my-app`

2 - We need to install [GitHub Pages](https://www.npmjs.com/package/gh-pages) package as a dev-dependency.

```
cd my-app
npm install gh-pages --save-dev
```

3 - Add properties to `package.json` file.

The first property we need to add at the top level homepage second we will define this as a string and the value will be `"http://{username}.github.io/{repo-name}`" {username} is your GitHub username, and {repo-name} is the name of the GitHub repository you created it will look like this :

```
"homepage": "http://yuribenjamin.github.io/my-app"
```

Second in the existing `scripts` property we to need to add `predeploy| and `deploy`.

```
"scripts": {
//...
"predeploy": "npm run build",
"deploy": "gh-pages -d build"
}
```

![](https://thepracticaldev.s3.amazonaws.com/i/)

4 - Create a Github repository and initialize it and add it as a remote in your local git repository.

Now, create a remote GitHub repository with your app name and go back initialize this
`git init`
add it as remote
`git remote add origin git@github.com:Yuribenjamin/my-app.git`

5 - Now deploy it to GitHub Pages.

just run the following command :

`npm run deploy`

![](https://thepracticaldev.s3.amazonaws.com/i/fsjvc2avaib2mskxqawa.png)

this command will create a branch named `gh-pages` this branch host your app, and homepage property you created in `package.json` file hold your link for a live preview, or you can open the branch setting scroll down to GitHub Pages section you will find this:

![](https://thepracticaldev.s3.amazonaws.com/i/573f5s4jgcn1a6caq65s.png)

6 - commit and push your commit to GitHub. Optionally

```
git add .
it commit -m "Your awesome message"
git push origin master
```

**recap**

We created React App using `create-react-app`
then we installed `gh-pages` as a `dev-dependency`
and in `package.json` file we added some properties homepage also in existing `scripts` property we added `predeploy` and `deploy`
and created a remote repository and initialize it
and run `npm run deploy` to generate a production build and deploy it to GitHub Pages.

if you have any questions, please don't hesitate to ask.
Always happy to hear from you

4 - Create a Github repository and initialize it and add it as a remote in your local git repository.

Now, create a remote GitHub repository with your app name and go back initialize this

```
git init
add it as remote
git remote add origin git@github.com:Yuribenjamin/my-app.git
```

5 - Now deploy it to GitHub Pages.

just run the following command :

`npm run deploy`

