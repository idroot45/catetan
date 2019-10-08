---
title: How to Install Telegram Desktop on Centos 8 Linux
except: "How to install Telegram messenger from terminal on CentOS 8 Linux step by step instructions"
header:
 image: "https://linuxconfig.org/images/01-how-to-install-telegram-messenger-on-centos-8-linux.png"
 caption: "Telegram Messenger on CentOS 8"
categories: [linux]
tags: [centos 8, telegram messenger, telegram desktop, install telegram]
---
How to install Telegram messenger on CentOS 8 Linux step by step instructions

# - requires given linux commands to be executed with root privileges either directly as a root user or by use of `sudo` command
$ - requires given linux commands to be executed as a regular non-privileged user
{:.notice}

### Step 1: Enable getpagespeed Extras repository:

```terminal
# dnf install -y https://extras.getpagespeed.com/release
```

### Step 2: Install `telegram-desktop` Package

Use `dnf` command to Install package `skypeforlinux`:

```terminal
# dnf install -y telegram-desktop
```

### Step 3: Run telegram from terminal

Start Telegram messenger from your desktop menu or by entering the following command on your terminal. Note it may take some time for the Telegram messenger application to start at first:

```terminal
$ telegram
```

> Compatible: [CentOS 8 Linux](https://www.catetan.pw/linux/how-to-install-centos-8/) and RHEL 8 Linux
