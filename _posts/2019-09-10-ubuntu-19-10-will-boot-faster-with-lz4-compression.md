---
title: "Ubuntu 19.10 Will Boot Faster Thanks to LZ4 Compression"
excerpt: "Canonical engineers tested a variety of different compression options on the Ubuntu install image..."
header:
 image: "https://i0.wp.com/www.omgubuntu.co.uk/wp-content/uploads/2019/05/ubuntu-19.10-eoan-ermine.jpg"
categories: [linux]
tags: [distro linux, ubuntu tls, ubuntu 19.10, ubuntu theme yaru]
last_modified_at: 2019-09-11 01:35:54
---

**Anyone installing Ubuntu 19.10 next month will find more than a [new light theme](https://github.com/ubuntu/yaru/pull/1493) to marvel at — as boot times will be faster too.** _See image: 1. [Before](https://149366088.v2.pressablecdn.com/wp-content/uploads/2018/10/ubuntu-18.10-nautilus-and-yaru-gtk.jpg) (Ubuntu 18.10) 2. [After](https://149366088.v2.pressablecdn.com/wp-content/uploads/2019/09/yaru-light-theme-ubuntu-19.10.jpg) (Ubuntu 19.10)_

Canonical engineers tested a variety of different compression options on the Ubuntu install image, looking to find the best compromise between best compression (i.e. small file sizes) and decompression (i.e. fast unpack times).

But it was the LZ4 decompression algorithm which showed the most appreciable gains in the tests.

As such, LZ4 is going to be default decompression for x86, ppc64el and s390 kernels, and `initramfs` in the relevant Ubuntu 19.10 installer images — i.e. the images that most people will install Ubuntu 19.10 using.

### What is initramfs?

The initramfs is a temporary root file system loaded into memory as part of the Linux boot process. Once decompressed it provides modules needed to mount the real root file system (i.e. your hard-drive).

Canonical’s Colin King shares [more detail](https://smackerelofopinion.blogspot.com/2019/09/boot-speed-improvements-for-ubuntu-1910.html){: rel="nofollow noopener"} on his blog, explaining that: _“Even with slow spinning media and a slow CPU, the longer load time of the LZ4 kernel is overcome by the far faster decompression time.”_

_“As media gets faster, the load time difference between GZIP, LZ4 and LZO diminishes and the decompression time becomes the dominant speed factor with LZ4 the clear winner.”_

Those minded can pore over the [full test results](https://kernel.ubuntu.com/~cking/boot-speed-eoan-5.3/kernel-compression-method.txt) in finer detail.

> source: [smackerelofopinion](https://smackerelofopinion.blogspot.com) via [omgubuntu](https://www.omgubuntu.co.uk/2019/09/ubuntu-19-10-faster-boot-lz4)
{:.align-right}
