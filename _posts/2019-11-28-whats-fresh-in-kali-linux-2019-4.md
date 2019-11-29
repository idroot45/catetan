---
title: "Here's What's Fresh in Hacker Favourite OS"
excerpt: "Hacker Favourite Kali Linux Swaps Gnome for Xfce, Adds New Tricks"
header:
 image: "https://cdn.statically.io/img/www.cbronline.com/wp-content/uploads/2019/11/kali-linux.png"
 caption: "Kali Linux 2019.4 released"
 og_image: "https://cdn.statically.io/img/www.cbronline.com/wp-content/uploads/2019/11/kali-linux.png"
 teaser: "https://i0.wp.com/www.cbronline.com/wp-content/uploads/2019/11/kali-linux.png?resize=320,170"
categories: [linux]
tags: [linux distro, kali linux, hacker os]
---
[Kali Linux](/linux/whats-fresh-in-kali-linux-2019-4/) (a Linux distribution used primarily for penetration testing, network security assessments and other security explorations by hackers of various hat colours) has a new brand new set of tools.

**Kali Linux 2019.4** is the final release of 2019. The hacker favourite comes with some quite significant new features for users. Here’s what’s new…

### New in Kali Linux 2019.4

Bye, Gnome, Hi, Xfce…
The latest iteration swaps Gnome for Xfce as its main desktop environment, although users can keep a lightly tweaked Gnome build if they want.

But as the Kali Linux team put it in a blog today: “Gnome has been overkill for most Kali users, as many just want a window manager that allows you to run multiple terminal windows at once, and a web browser.”

The new Xfce-based UI  is lightweight and can run on all levels of Kali installs, the team said. “It is functional in that it handles the various needs of the average user with no changes. It is approachable where it uses standard UI concepts we are all familiar with to ensure there is no learning curve. And it looks great with modern UI elements that make efficient use of screen space.”

(The team has also created a Kali theme dubbed “Kali Undercover” that looks like Windows to the casual viewer).

### Kali Goes Android (Kind of…)

A new feature dubbed NetHunter Kex allows users to attach an Android device to an HDMI output along with Bluetooth keyboard and mouse to get a “full, no compromise, Kali desktop” from an Android smartphone.

As the Kali Linux team put it:
> With a strong enough phone, this is very similar to using a nice full-featured portable ARM desktop that happens to fit in your pocket. The possible ways you can leverage this in assessments is huge.

### BTRFS during setup

New to Kali Linux documentation is the use of **BTRFS as your root file system**, which gives users the ability to do file system rollbacks after upgrades.

(BRFS is a copy on write, or CoW filesystem created to address the lack of pooling, snapshots, checksums, and integrated multi-device spanning in Linux file systems. Various big firms have contributed to its codebase, including Facebook, Red Hat, Oracle, SUSE and more).

“When you are in a VM and about to try something new, you will often take a snapshot in case things go wrong you can easily go back to a known-good state. However, when you run Kali bare metal that’s not so easy. So you end up being extra careful, or if things go wrong have a lot of manual clean up to do. With BTRFS, you have this same snapshot capability on a bare metal install!”

### Powershell

The team also flagged the ability to execute PowerShell scripts directly on Kali, although this appears (correct us if we’re wrong) to have been initially introduced in June last year.

(Powershell is a cross-platform automation and configuration tool optimised for dealing with structured data (e.g. JSON, CSV, XML, etc.), REST APIs, and object models. It includes a command-line shell, an associated scripting language and a framework for processing cmdlets.)

The official Kali git repository is now on [GitLab](https://gitlab.com/kalilinux) as of June 2019. Kali Linux 2019.4 can be downloaded [here](https://www.kali.org/downloads/).
