---
title: "Getting Firebase And GRPC Working Under Termux App""
excerpt: ""We are going to **adjust** the settings of `node-gyp` to make it compile things right **under termux**, and then we are going to **tweak** the `grpc` package itself in our local cache **to make it build correctly** under Termux App on Android or Chromebook."
categories: [ekperimen]
tags: [firebase, termux, nodejs, yarn, grpc]
---
[Firebase]() depends on `grpc`, which isn’t set to build right on the Chromebook/Android. This is because `node-pre-gyp`, which is used to download precompiled binaries, is **not setup correctly**. In then uses `node-gyp` to compile the C++ bindings directly, which is also **not setup correctly**.

## The Bassic, Settings and Update

We are going to **adjust** the settings of `node-gyp` to make it compile things right **under termux**, and then we are going to **tweak** the `grpc` package itself in our local cache **to make it build correctly**.

This took way to long to sort out.

### Installing the Basics

Installing Node.js, Phyton 2, Make, Clang and pkg-cofig.

```terminal
$ pkg install nodejs python2 make clang pkg-config
```

Accessing chroot on termux

```terminal
$ termux-chroot
```
**Note**: Need to install proot with `pkg install proot`
{:.notice notice--info}

Linking phyton to use Phyton 2 in case you installed Phyton 3 and creating `tmp` directory then canging working directory to it.

```terminal
$ cd /bin; ln -s python2 python
$ mkdir /tmp/t; cd /tmp/t
```
Installng `yarn`

```terminal
$ npm install -g yarn
```

### Start The `grpc` Install

```terminal
$ yarn add grpc
```

This should take a long time but then fail because `-zdefs` is not a valid option.

### Update `node-gyp` Settings

First we update `node-gyp`

```terminal
$ cd ~/. node-gyp/8.9.3/include/node
```
(or whatever version you have)

Update `common.gpyi` to change references of `-fPIE| to `-fPIC`, and get rid of `-pie`

Update The `grpc npm` Package In The `yarn cache`

```terminal
$ cd ~/.cache/yarn/v1/npm-grpc
```

(tab tab to **find the actual version**)

Open up `bindings.gyp` and remove the line ‘-zdefs’ which for me is line 941

Also in `deps/grpc/bindings.gyp` remove `-zdefs` again. Not sure where this is coming from but `clang` doesn’t like it.

**Note**: that every time there’s another version of `grpc` released, you’ll need to update that version in your yarn cache!
{:.notice .notice--warning}

### Try to Add Again

```terminal
$ cd /tmp/t
$ rm -rf node_modules/grpc
$ yarn add grpc
```

And there you go. Does anyone have a better fix that they could share?
