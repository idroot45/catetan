---
title: "How to install VLC Player on CentOS 8 Linux"
---
How to install VLC Player messenger on CentOS 8 / RHEL 8 Linux step by step instructions:

# - requires given linux commands to be executed with root privileges either directly as a root user or by use of `sudo` command
$ - requires given linux commands to be executed as a regular non-privileged user
{:.notice}

### Step 1: Prepare repository

First step is to enable EPEL and RPM fusion repository:

```terminal
# dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
# dnf install https://download1.rpmfusion.org/free/el/rpmfusion-free-release-8.noarch.rpm
```

### Step 2: Install VLC package

Now, we are ready to install the VLC package simply by using the dnf command:

```terminal
# dnf install vlc
```
### Run VLC Media Player

Start VLC media player from your menu or by executing the following command:

```terminal
$ vlc
```
