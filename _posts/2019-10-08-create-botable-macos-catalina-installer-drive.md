---
title: "How to create a bootable macOS Catalina installer drive"
excerpt: "Put the macOS Catalina installer on an external USB thumb drive or hard drive and use it to install the operating system on a Mac."
header:
 og_image: https://images.idgesg.net/images/article/2019/10/macos-catalina-external-terminal-04-100812645-large.jpg
 teaser: https://images.idgesg.net/images/article/2019/10/macos-catalina-installer-icon-100812630-large.jpg
categories: [apple]
tags: [bootable catalina installer, bootable macos catalina, install macos catalina, upgrade macbook]
---
An external drive that you can use as an installer for macOS Catalina is a handy thing to have. If you have multple Macs to upgrade, it’s a lot more efficient to plug in the USB installer drive and run the installer than to log into the App Store, download the 6.5GB OS installer, and then run it.

{% include figure image_path="https://images.idgesg.net/images/article/2019/10/macos-catalina-installer-icon-100812630-large.jpg" caption="Apple" %}

In this article I’ll go over the different ways you can create a bootable macOS Catalina installation drive. But before I give instructions on how to create the drive, I’ll go over the items you’ll need and how to get them.

### Get an external drive and maybe an adapter

The macOS Catalina installer software is nearly 6.5GB, so you need a USB external drive that can hold that much data. The drive can be a thumb drive, hard drive, or SSD.

If you want to use a thumb drive, an 8GB drive works perfectly. I used an 8GB Kingston Data Traveler G4 ($7 on Amazon); it’s cheap and it supports USB 3.1, so it’s fast. I’ve also used older USB thumb drives that support USB 2.

{% include figure image_path="https://images.idgesg.net/images/article/2018/06/externl-usb-mbp-100762225-large.jpg" caption="A VisionTek USB drive coneccted to a 2017 MacBook Pro via Apple’s USB-C VGA Multiport Adapter." alt="external usb mbp" %}

If you have a 2015 or newer MacBook or a 2016 or newer MacBook Pro, you may need Apple’s $19 USB to USB-C adapter. This will allow you to connect a storage device that uses a USB type-A connector. If you don’t have an external drive and you have a USB-C Mac laptop, you could buy the SanDisk Ultra USB Type-C Flash Drive, which has a USB-C connector. You can get model number SDCZ450-016G-G46.

When creating the boot drive, the storage device is reformatted, so there’s no need to format the drive beforehand.

### Get the macOS Catalina installer software

The macOS Catalina installer is available in the App Store. If you launch the App Store app, do a search for “Catalina.” Or, if you click this [Catalina App Store link](https://apps.apple.com/us/app/macos-catalina/id1466841314?mt=12), it will take you to the Catalina App Store webpage, then click on the “View in the Mac App Store” button. 

You can read the information to learn more about Catalina. When you’re ready to download the software, click the Download button under the icon on the upper left. (If you’ve already downloaded the installer, the button will say Install instead of Get.)

{% include image_path="https://images.idgesg.net/images/article/2019/10/macos-catalina-app-store-100813257-large.jpg" caption="Catalina App Store" alt="macos catalina" %}

Once the download is complete, the installer will launch automatically. But don’t continue with the installation. Instead, press Command-Q on your keyboard to quit the installer.

The Catalina installer app will be in your Applications folder, so you can go there and launch it later to upgrade your Mac to the new operating system.

### Make a bootable installer drive: The quick way

I used a free app called [Install Disk Creator](https://macdaddy.io/install-disk-creator/) to make the installation drive. Download Install Disk Creator by clicking on the link. When the download is done, you can move it over to your Applications folder. Then follow these steps to create your bootable macOS Catalina drive.

1. Connect your drive to your Mac.

2. Launch Install Disk Creator.

3. In the main window, you’ll see a pop-up menu under Select the volume to become the installer. Click on the menu and select your drive.

{% include figure image_path="https://images.idgesg.net/images/article/2019/10/install-disk-creator-catalina-100812641-medium.jpg" url="https://images.idgesg.net/images/article/2019/10/install-disk-creator-catalina-100812641-orig.jpg" caption="The main window of Install Disk Creator." alt="disk creator" %}

4. Under the pop-up menu, you’ll see Select the OS X installer. (macOS used to be called OS X.) If you have only the Catalina installer on your Mac, Install Disk Creator will automatically select it. If you have other macOS installers, you need to click on Select the OS X installer and select the Catalina installer.

5. When you’re ready, click Create installer. Your Mac may tell you that Install Disk Creator wants to make changes, and you need to enter your user name and password. After you do this, the app will take a few minutes to create the boot drive. A progress bar. appears at the bottom of the Install Disk Create window.

If you try to start the process and you get a failure message saying that the drive couldn’t be unmounted, try reformatting the drive first as ExFAT using Disk Utility. Then start the process over again.

When the app is done, the installer is ready to use.

{% include figure image_path="https://images.idgesg.net/images/article/2018/06/install-disk-create-mojave-done-100762230-large.jpg" alt="done" %}

### Make a bootable installer drive: The longer way using the Terminal

You don’t need to use Install Disk Creator to create a bootable installer. You can do it in the Terminal and it’s easy. Here are the instructions.

1. Connect the external drive to your Mac. In these instructions, I use Untitled as the name of the external drive. If your drive is named something else, you need to change Untitled to the name of your drive.

2. Launch Terminal (/Applications/Utilities/Terminal.app).

{% include figure image_path="https://images.idgesg.net/images/article/2019/10/macos-catalina-external-terminal-01-100812642-large.jpg" caption="The Terminal." alt="terminal 1" %}

Don’t worry if your screen doesn’t look like this. I changed it in the Terminal settings, and you can too. In Terminal, select Terminal > Preferences > Profiles, click on the one you like, and then click on the Default button.

3. Select and copy the following:
```terminal
sudo /Applications/Install\ macOS\ Catalina.app/Contents/Resources/createinstallmedia --volume /Volumes/Untitled -- /Applications/Install\ macOS\ Catalina.app
```

4. Go back to Terminal and paste the copied code at the prompt. Press Return.

![terminal 2](https://images.idgesg.net/images/article/2019/10/macos-catalina-external-terminal-02-100812643-large.jpg)

Paste the code you copied into the Terminal then press Return. You’ll be asked about erasing the disk.

5. Terminal will warn you that your external drive needs to be erased. To proceed, type Y at the prompt and press Return.

6. You’ll see that Terminal erases your drive and then copies the installer file to your drive. This will take a few minutes.

![terminal 3](https://images.idgesg.net/images/article/2019/10/macos-catalina-external-terminal-03-100812644-large.jpg)

7. After copying, Terminal is done. You should see Terminal display a “Copy complete” and Done notice. You can quit Terminal and your drive is ready for use.

![terminal 4](https://images.idgesg.net/images/article/2019/10/macos-catalina-external-terminal-04-100812645-large.jpg)

### How to boot from the installer drive

1. Plug your external drive into your Mac.

2. Power up (or restart) your Mac. Press down on the Option key while the Mac boots.

3. After a few moments, your Mac should display the Startup Manager, which will show you the available boot drives. Click on the external drive and press Return. (You don’t need to select a network to proceed.)

![macos catalina select startup](https://images.idgesg.net/images/article/2019/10/macos-catalina-select-startup-100812649-large.jpg)

4. Your Mac will display a macOS Utilites window. If you want to install Catalina and leave the data intact, select Install macOS. If you want to start over and wipe out the data, you need to go into Disk Utility to reformat the internal drive first, and then install macOS Catalina.

![macos catalina recovery options](https://images.idgesg.net/images/article/2019/10/macos-catalina-receovery-options-100812651-large.jpg)
