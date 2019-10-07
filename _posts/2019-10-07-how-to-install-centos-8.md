---
title: "Installation of ‘CentOS 8.0’ with Screenshots"
excerpt: "Installing CentOS 8 is pretty much like installing the earlier versions of CentOS 7.x with only slight variations in the UI of the installer"
categories: [linux]
tags: [centos 8, installing centos, tutorial centos, instalation guide]
---
CentOS 8 has finally been released! The new version, which is a community version of RHEL 8, ships with new and exciting features which promise an enhanced user experience.

Installing CentOS 8 is pretty much like installing the earlier versions of CentOS 7.x with only slight variations in the UI of the installer.

### Prerequisites

Before you begin, perform a flight check and ensure you have the following:

- [Download Centos 8 DVD ISO Images]()
- Create a bootable instance of **CentOS 8 USB drive** or DVD using **[Rufus tool](https://rufus.ie/)**.
- A system with a minimum of **8GB Hard disk** space and 2 GB for optimal performance.
- A good internet connection.

Let’s dive in and see [how to install CentOS 8](/linux/how-to-install-centos-8/).

### Step 1:** Insert the CentOS 8 Bootable Installation Media

1. With your PC turned on, plug in your bootable USB drive or insert the CentOS 8 DVD medium and reboot. Make sure to change the boot order in your BIOS settings in order to boot from your preferred boot medium.

The boot screen will be displayed as shown below. Select the first option ‘Install CentOS 8.0.1905’ and Hit ‘ENTER‘.

![CentOS 8 Boot Menu](https://www.tecmint.com/wp-content/uploads/2019/09/CentOS-8-Boot-Menu.jpg CentOS 8 Boot Menu)

2. Boot messages will follow thereafter as shown.

![Booting CentOS 8](https://www.tecmint.com/wp-content/uploads/2019/09/Booting-CentOS-8.png Booting CentOS 8)

### Step 2: Select CentOs 8 Installation Language

3. On the ‘Welcome Screen’, choose your preferred installation language and click ‘Continue’.

![Select CentOS 8 Installation Language](https://www.tecmint.com/wp-content/uploads/2019/09/Select-CentOS-8-Installation-Language.png Select CentOS 8 Installation Language)

### Step 3: Installation Summary of CentOS 8

4. On the next screen, an installation summary will be displayed presenting all the options that need to be configured as shown. We will configure each of these options in turn.

![CentOS 8 Installation Summary](https://www.tecmint.com/wp-content/uploads/2019/09/CentOS-8-Installation-Summary.png CentOS 8 Installation Summary)

### Step 4: Configure Keyboard

5. Click on the keyboard option as shown to configure the keyboard.

![Select Keyboard Option](https://www.tecmint.com/wp-content/uploads/2019/09/Select-Keyboard-Option.jpg Select Keyboard Option)

6. By default, the keyboard layout is in English (US). At the right Text field, you can type a few words to verify that all is well, and you can type without any glitches with the current layout.

To add a new keyboard layout, click the [+] button at the bottom left of the screen. Next, click ‘Done’ to return to the main menu.

![Add Keyboard Layout](https://www.tecmint.com/wp-content/uploads/2019/09/Add-Keyboard-Layout.jpg Add Keyboard Layout)

### Step 5: Configure Language

7. Click on the ‘Language Support‘ option.

![Select Language Option](https://www.tecmint.com/wp-content/uploads/2019/09/Select-Keyboard-Option.jpg Select Language Option)

8. Select your preferred language and click ‘Done‘ on the top left corner of the window to go back to the main menu.

![Configure Language Support](https://www.tecmint.com/wp-content/uploads/2019/09/Configure-Language.png Configure Language Support)

### Step 6: Configure Time and Date

9. Next, click on the ‘Time and Date‘ option.

![Select Time and Date](https://www.tecmint.com/wp-content/uploads/2019/09/Select-Time-and-Date.jpg Select Time and Date)

10. Click on the map as shown to configure the time and date settings based on your location on earth. Also, note the Region and City will automatically be set depending on where you click on the map.

![Configure Timezone](https://www.tecmint.com/wp-content/uploads/2019/09/Configure-Timezone.jpg Configure Timezone)

### Step 7: Configure Installation Source

11. Back to the main menu click on the ‘Installation Source’ option.

![Select Installation Source](https://www.tecmint.com/wp-content/uploads/2019/09/Select-Installation-source.jpg Select Installation Source)

12. Here, you need not do much because the installation source points to the installation medium which is auto-detected. Click ‘Done’ to head back to the main menu.

![Select Installation Media](https://www.tecmint.com/wp-content/uploads/2019/09/Select-Installation-Media.jpg Select Installation Media)

### Step 8: Software Selection

13. Next, click on ‘Software Selection’.

![Choose Software Selection](https://www.tecmint.com/wp-content/uploads/2019/09/Choose-Software-Selection.jpg Choose Software Selection)

14. In the next Window, you will be presented with 6 options from which you can select your Base environment and a vast array of Software add-ons which are shipped with respective base environments.

In this guide, we have chosen to go with ‘Server with GUI’ base environment and chosen a few Add-Ons such as Windows File server, FTP server, Debugging tools and a Mail server.

When you are done with your selection, click on ‘Done’ to return to the main menu.

![Select Server with GUI](https://www.tecmint.com/wp-content/uploads/2019/09/Select-Server-with-GUI.png Select Server with GUI)

### Step 9: Installation Destination

15. On the main menu, click on the next option which is ‘Installation Destination’.

![Select Installation Destination](https://www.tecmint.com/wp-content/uploads/2019/09/Select-Installation-Destination.jpg Installation Destination)

16. In this section, you will determine where to install CentOS 8 and configure the mount points. By default, the installer auto-detects your hard drives and selects the automatic partitioning option. If you are satisfied with the automatic partitioning, click on ‘Done’ to automatically create the mount points.

Automatic Partitioning
Automatic Partitioning

17. If you want to manually configure your own partitions, click on the ‘Custom’ option as shown.

Select Manual Partitioning
Select Manual Partitioning

18. This takes you the ‘MANUAL PARTITIONING’ window. To make your life easy, click on the ‘Click here to create them automatically’ link.

Create Partitions Automatically
Create Partitions Automatically

19. The mount points will be intelligently created by the installer as shown.

Summary of Partitions
Summary of Partitions

satisfied with the results, click on ‘Done’.

20. A ‘summary of the changes’ will be displayed as shown below. If all seems good, click on ‘Accept Changes’. To cancel and go back, click on ‘Cancel & Return to Custom Partitioning’.

Summary of Partition Changes
Summary of Partition Changes

### Step 10: KDUMP Selection

21. Next, click on ‘KDUMP‘ as shown.

Select Kdump
Select Kdump

22. Kdump is a utility that dumps system crash information for analysis in order to determine the cause of system failure. The default settings are good enough, so it is safe to simply click on the ‘Done’ button to return to the Home Menu.

Enable Kdump Settings
Enable Kdump Settings

### Step 11: Set Network and Hostname
23. Back to the main menu, click on the ‘Network and Hostname’ settings option.

Select Network and Hostname
Select Network and Hostname

24. The NETWORK & HOSTNAME section displays the active network interfaces on your PC. In this case, the active interface is enp0s3.

If you are in a network running DHCP, flip on the switch at the far right for your network interface to automatically acquire an IP address.

Configure Network Interface
Configure Network Interface

25. If your network is not running a DHCP server, click on the ‘Configure’ button.

Configure Network Settings
Configure Network Settings

26. This shows you the section below. Click on IPv4 option and select Manual IP on the drop-down list. Next click on the ‘Add’ button and key in your preferred IP address, subnet mask, and Default gateway. Be sure to also provide the DNS server details. Finally, click on ‘Save’ to save the changes.

Set Static IP on CentOS 8
Set Static IP on CentOS 8

27. To set the hostname, head out to the bottom left corner and define your own hostname.

Set Hostname for CentOS 8
Set Hostname for CentOS 8

### Step 12: Begin the CentOS 8 Installation

28. Having configured all the options, click on ‘Begin the installation’ to commence the installation process.

Begin CentOS 8 Installation
Begin CentOS 8 Installation

29. The next screen will prompt you to configure USER SETTINGS as shown.

Configure User Settings
Configure User Settings

Set Root User Password
30. Click on ‘Root Password’ to configure the root password. Remember to set a strong password and ensure the password strength check indicates ‘Strong’. Click on ‘Done’ to save the changes.

Set Root Password
Set Root Password

Create New User Account
31. Next, click on ‘User Creation’ to create a regular system user.

Select User Creation
Select User Creation

32. Provide your preferred name and, again, provide a strong password for the regular system user. Click ‘Done’ to save the regular user.

Create User Account
Create User Account

### Step 13: CentOS 8 Installation Process

33. The installer will proceed to install the selected CentOS 8 packages, dependencies, and the grub bootloader. This process takes a while depending on your internet speed and it may be a good time to grab your cup of coffee or favorite snack 😊.

CentOS 8 Installation Progress
CentOS 8 Installation Progress

34. Finally, if all went well, you will get the notification below that the installation was successful. Click on the ‘Reboot’ button to restart and boot into your new system.

CentOS 8 Installation Complete
CentOS 8 Installation Complete

Step 14: Boot and Accept License Agreement
35. Upon rebooting, select the first option on the grub menu as shown.

CentOS 8 Boot Menu
CentOS 8 Boot Menu

36. You will be required to Accept the License information as shown.

Initial Setup License
Initial Setup License

37. Click on the ‘License Information’ option and check the ‘I Accept the license agreement’ checkbox.

Accept License Agreement
Accept License Agreement

38. Finally, click on ‘FINISH CONFIGURATION‘ to wind up the installation process and log in to your new CentOS 8 system.

Finish CentOS 8 Installation
Finish CentOS 8 Installation

39. Once logged in, follow the post installation step and on the final section click on Start using CentOS Linux option.

Start Using CentOS 8
Start Using CentOS 8

40. CentOS 8 comes with a beautiful new GNOME desktop as shown.

CentOS 8 Gnome Desktop
CentOS 8 Gnome Desktop

Congratulation! You have now successfully installed the last version of CentOS 8 on your bare new machine.

To further perform other system tasks, such as the update system, install other useful software needed to run the day to day tasks, read our Initial Server Setup with CentOS/RHEL 8.
