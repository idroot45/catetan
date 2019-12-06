---
title: "Download Windows 10 ISO Without Media Creation Tool"
excerpt: "Workaround: Howto get Windows 10 ISO from Microsoft without Media Creation Tool, turn it into Windows Instalation USB bootable and modify ei.cfg file to make it Windows 10 Pro edition"
last_modified_at: 2019-09-06 10:30:10
categories: [windows]
tags: [download iso, windows 10 iso, modify ei.cfg, modify iso files, windows 10 pro]
header:
 image: "https://i.ytimg.com/vi/qDpvx2urt4Y/maxresdefault.jpg"
 teaser: "https://lh3.googleusercontent.com/proxy/6wm6-1F4hPjnJFw-xxZLnN1HYzzVDOQPXFRoTBSBEM7wd7awQ_FLOL3i8eo7qbNgckQPRvrVMrON7xMBajKbyK8NnvdrxGvk9hTOzhLQaUUnYMJRa3fhXEMfFavv9vGtUDUqNnYJVs1JP6DKICmvFi6fTDL_3OXV=w384-h384"
 caption: "Windows 10 Pro"
last_modified_at: 2019-12-06 22:42:00
---

Everyone knows that it’s possible to download Windows 10 ISO from Microsoft using the official Media Creation Tool. There are some other tools also available to download Windows 10 ISO, but the Media Creation Tool is better than third-party tools for obvious reasons.

While downloading Windows 10 ISO using Media Creation Tool is easy, **the method is tedious** as you need to make about a dozen clicks to download the ISO image.

Microsoft has designed the official Windows 10 ISO download page URL such that the page shows different content depending on from what device you are accessing the download page.

![](https://mk0intowindows84fvao.kinstacdn.com/wp-content/uploads/2017/04/download-Windows-10-ISO-without-media-creation-tool-pic01.png)

When you visit the download page from a PC running Windows 10/8/8.1/7, the download page URL gives you a link to download the Media Creation Tool which in turn allows you download the ISO. The same URL, if you **visit from a Mac/Linux or any smartphone**, you get **direct Windows 10 download** options instead of options to download the Media Creation Tool.

A small section of PC users download Windows 10 ISO whenever a new version of Windows 10 ISO is available so that they can perform a clean install of Windows 10.

For users who often download Windows 10 ISO, downloading the Media Creation Tool and running it on the PC is a time-consuming job. Because of this, many PC users want to know if [Windows PC users can download Windows 10 ISO without the Media Creation Tool](/windows/download-windows-10-iso-without-media-creation-tool/).

Yes, you can download Windows 10 ISO from Microsoft **without the Media Creation Tool**. To do so, all you need to do is disguise your PC as a Windows Phone or Mac machine. Wait, you don’t need to install any software to disguise your Windows 10 PC as a mobile device. You just need to change the default user agent in your web browser. Here is how to do just that.

Complete the given below directions to **download Windows 10 ISO image** files from Microsoft without using the Media Creation Tool.

**Step 1:** On your Windows 10/8/7 PC, launch Internet Explorer browser. Head over to Windows 10 ISO download page to see the following page.

![](https://mk0intowindows84fvao.kinstacdn.com/wp-content/uploads/2017/04/download-Windows-10-ISO-without-media-creation-tool-pic1.jpg)

**Step 2:** When you are at the download page, press **F12** key to open **Developer tools**. Don’t worry. It’s easy.

**Step 3:** Now, in the Developer Tools, switch to the Emulation tab. In the Browse profile, select **Windows Phone** (or Android if available) from the drop-down dialog, and then select Windows Phone 10 (or Android version if you chose Android phone) from the User agent string drop-down dialog. You are almost done!

![](https://mk0intowindows84fvao.kinstacdn.com/wp-content/uploads/2017/04/download-Windows-10-ISO-without-media-creation-tool-pic2.jpg)

**Step 4:** Internet Explorer will automatically reload the page. If not, refresh the page (URL) now to see Download Windows 10 Disc Image page. Choose your edition of Windows 10 (Creators Update is the latest one) and then click **Confirm** button.

![](https://mk0intowindows84fvao.kinstacdn.com/wp-content/uploads/2017/04/download-Windows-10-ISO-without-media-creation-tool-pic3.jpg)

**Step 5:** Next, you will see Select the product language page. Choose your language and then **Confirm** button.

![](https://mk0intowindows84fvao.kinstacdn.com/wp-content/uploads/2017/04/download-Windows-10-ISO-without-media-creation-tool-pic4.jpg)

**Step 6:** Finally, click either **32-bit Download** or **64-bit Download** (depending on what type of Windows 10 you want to install and run on your PC) to begin downloading your Windows 10 ISO image file.

![](https://mk0intowindows84fvao.kinstacdn.com/wp-content/uploads/2017/04/download-Windows-10-ISO-without-media-creation-tool-pic6.png)

> For conveniency reason, we added a remotely upload an ISO file (wich is the latest November 2019 update) to pCloud service with the link given from steps above. So this ISO file is untouched version form Microsoft sever itself. As we only have limited free storage we only managed to uplad the 64-bit version. You can download it from [this link](https://mi.knoacc.org/dl/pcloud?code=XZYxamkZPYwhUtgtwJ4zUyhxn0eiOYHRTo7y&name=Win10_1909_EnglishInternational_x64.iso&size=5.1GB)

Once the download is complete, you may close the tab or browser. Next is to prepare the ISO for creating bootable media using Rufus or any other program that you would use usually.

### Make it Windows 10 Pro edition

If you wish, you can turn your ISO into Windows 10 Pro. Continue this steps:

**Step 7:** Once the ISO is downloaded, prepare the bootable USB using Rufus or any other program that you would use usually.

**Step 8:** Now, copy and paste the following code in the Notepad program, click the File menu, click Save as, select location as the desktop, enter the file name as **ei.cfg** (without including .txt) and then click the Save button.
```
[EditionID]
Professional
[Channel]
Retail
```
It’s important to make sure that you are creating `ei.cfg` and NOT `ei.cfg.txt` file.

To make sure you, go check these 3 images:
[image 1](https://mk0intowindows84fvao.kinstacdn.com/wp-content/uploads/2018/02/download-Windows-10-Professional-edition-pic05.jpg), [image 2](https://mk0intowindows84fvao.kinstacdn.com/wp-content/uploads/2018/02/download-Windows-10-Professional-edition-pic06.jpg), [image 3](https://mk0intowindows84fvao.kinstacdn.com/wp-content/uploads/2018/02/download-Windows-10-Professional-edition-pic07.jpg).

Step 9: Finally, copy and paste this **ei.cfg** file to the root of the **Sources** folder in the bootable media of Windows 10. That is, open up the bootable media, open up the Sources folder, and then paste the `ei.cfg` there.

![](https://mk0intowindows84fvao.kinstacdn.com/wp-content/uploads/2018/02/download-Windows-10-Professional-edition-pic08.jpg)

Step 10: You can now use the bootable media to automatically install Windows 10 Pro edition on any PC.

## Adding ei.cfg file Windows 10 ISO to create bootable DVD

That's above is easy for adding ei.cfg to USB bootable. How to insert it into a bootable DVD? here is the way:

**Step 1:** Extract the Windows 10 ISO image using 7-Zip or any other utility. Extract the content to a folder.

**Step 2:** Create the ei.cfg file by following the directions in Step 8 of the above method.

**Step 3:** Copy and paste the ei.cfg file to the root of the Sources folder located in the folder containing all extracted files from the ISO. Be sure to save the ei.cfg file in the root of the Sources folder.

**Step 4:** Finally, refer to how to create bootable Windows 10 ISO from files/folders guide to prepare the bootable Windows 10 Pro ISO.

### Create bootable Windows 10 ISO from files/folders

In this guide, I will show you how you can create a bootable Windows 7/8.1/10 ISO image file from Windows installation files.

Step 1: If all the installation files are in a folder on your PC, you can skip to the next step. And if the files and folders on a USB drive, connect the USB flash drive containing Windows installation files to a PC running Windows 7/8/10 and copy all the contents from the USB to a newly created folder on desktop or any other location.

![](https://mk0intowindows84fvao.kinstacdn.com/wp-content/uploads/2014/06/Create-bootable-Window-ISO-from-USB-step2.jpg)

Step 2: Visit this page and download ImgBurn software. ImgBurn is a free burning application but the setup offers you install Skype and Mobogenie during the installation. Make sure to select appropriate options to install the software **without Skype and Mobogenie**.

![](https://mk0intowindows84fvao.kinstacdn.com/wp-content/uploads/2014/06/Create-bootable-ISO-from-USB.png)

Step 3: Launch ImgBurn. Click on **Create image file from files/folders** option.

![](https://mk0intowindows84fvao.kinstacdn.com/wp-content/uploads/2014/06/Create-bootable-Window-ISO-from-USB-step3.jpg)

Step 4: In the resulting ImgBurn dialog, click on the small folder icon (see picture) next to the **Source** box to browse to the folder containing all copied files from the bootable Windows USB. Browse to the folder and then click **Select folder**.

![](https://mk0intowindows84fvao.kinstacdn.com/wp-content/uploads/2014/06/Create-bootable-Window-ISO-from-USB-step4.jpg)

Step 5: Next, click on the browse icon located next to the Destination box to select a location to save the bootable ISO image file that you’re preparing now. Select a location and click Save button.

![](https://mk0intowindows84fvao.kinstacdn.com/wp-content/uploads/2014/06/Create-bootable-Window-ISO-from-USB-step41.jpg)

Step 6: On the right side, switch to the Advanced tab (see picture) to see four tabs. Here, click on the tab labeled Bootable Disc.

Step 7: Now, select the option labeled Make Image Bootable, select Emulation type as None (custom), and type 8 in the Sectors to load box by removing the existing 4. Note that if you’re preparing a bootable Vista ISO, you need to keep the 4. For Windows 7, Windows 8 and Windows 10, you need to type 8 in the Sectors to load field.

![](https://mk0intowindows84fvao.kinstacdn.com/wp-content/uploads/2014/06/Create-bootable-Window-ISO-from-USB-step42.jpg)

Step 8: Click on the small folder icon next to Boot Image box (see picture) and then browse to the folder containing Windows installation files (the folder that contains files copied from the USB), open Boot folder, select etfsboot.com file, and then click Open button to select etfsboot.com as the boot image file. We are almost done!

![](https://mk0intowindows84fvao.kinstacdn.com/wp-content/uploads/2014/06/Create-bootable-Window-ISO-from-USB-step6.jpg)

Step 9: Finally, click on the Build button (see picture) to begin creating your bootable Windows ISO image file. Upon clicking the Build button, three dialog boxes will appear one after another. Simply click the Yes button when you see the first dialog, click the OK button when you see the second, and then, click the Yes button again when you see the last dialog. Check these images: [image 1](https://mk0intowindows84fvao.kinstacdn.com/wp-content/uploads/2014/06/Create-bootable-Window-ISO-from-USB-step5.jpg), [image 2](https://mk0intowindows84fvao.kinstacdn.com/wp-content/uploads/2014/06/ImageBurn4.png), [image 3](https://mk0intowindows84fvao.kinstacdn.com/wp-content/uploads/2014/06/Create-bootable-Window-ISO-from-USB-step9.jpg)

Once the bootable ISO image is ready, you’ll see “Operation successfully completed” message.

That’s it! You can now use the ISO file anywhere to install Windows.
