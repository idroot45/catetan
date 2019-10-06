---
title: "Jadikan STB HG680P sebagai Server Hotspot Mikhmon untuk Usaha RT/RW net"
excerpt: "Install Nginx, MySQL, phpMyAdmin, dan Mikhmon dengan Openmediavault pada STB HG680P yang sudah terpasang OS Debian (Armbian Linux)"
categories: [android]
tags: [STB HG680P, armbian, 
open media vault, unlock stb indihome, firmware stb indihome]
---
Bahan dan video tutorial install Nginx, MySQL, phpMyAdmin, dan Mikhmon dengan memakai Open Media Vault (OMV) pada STB HG680P yang sudah terpasang OS Debian (Armbian Linux)

> STB HG680P adalah _set top box_ yang didapatkan oleh pelanggan Indihome fiber untuk menikmati layanan TV Indihome

Pastikan STB HG680P :
1. Terinstall OS Debian 9. pakai [Armbian_5.84_Aml-s905_Debian_stretch_default_5.1.0-rc1_20190507](https://yadi.sk/d/pHxaRAs-tZiei/5.84/S9xxx/Armbian_5.84_Aml-s905_Debian_stretch_default_5.1.0-rc1_20190507.img.xz)
2. Terinstall Openmediavault
3. Terinstall OMV 4.x (arrakis)

## 1. Flash STB HG680P Armbian Linux (dual boot):

{% include video id="X0Mwl7dAy9U" provider="youtube" %}

## 2. Install Openmediavault STB HG680P Armbian Linux:

{% include video id="3r7kKW8TXi0" provider="youtube" %}

## 3. Indtall Plugin OMC Extras

```terminal
wget http://omv-extras.org/openmediavault-omvextrasorg_latest_all4.deb
dpkg -i openmediavault-omvextrasorg_latest_all4.deb
apt-get update
```
Masalah dependensi paksa dengan `apt-get -f install`

### Pre Setup

- Merubah port OMV
- Setting Date & Time

```terminal
sudo apt update && sudo apt -y upgrade
```

## Install Nginx, MySQL, phpMyAdmin Mikhmon, OMV:

{% include video id="RuUOBpQrNVM" provider="youtube" %}
	
### Install Package Nginx & MySQL

_Setup Nginx_

Nginx > Pools > Add

- Name		: php
- Description	: phpmyadmin
- User		: www-data
- Group		: www-data
- Save Apply

Nginx > Servers > Add

- Enable		: Yes
- Directory	: None 
- Enable PHP	: Yes
- PHP-FPM Pool: php
- index.php	: Yes
- Save Apply

Nginx > Settings

- Enable		: Yes
- Save Apply

_Setup MySQL_

- Enable 		: Yes
- Enable SQL 	: Yes
- Save Apply		
	
_Install phpMyAdmin_

```terminal
sudo apt update && sudo apt -y upgrade	  
sudo apt-get install phpmyadmin
sudo ln -s /usr/share/phpmyadmin /usr/share/nginx/html
sudo service php7.0-fpm restart
sudo service nginx restart
```

_Install Mikhmon_

```terminal
mikhmon > /usr/share/nginx/html
cd /usr/share/nginx/html
chown -R www-data:www-data mikhmon
```
### Lain-lain

{% include video id="j-qRpWn4Auk" provider="youtube" %}

- File unlock STB: [RAR](https://mi.knoacc.org/dl/drive?id=1Fkey7A6jFbEmGW3mnHe7AiWUOXhXCT9s&name=Dhttps://drive.google.com/file/d/1T36eheSwRPcaOt3AVdScmeeLMsz58p82&name=Download&sizeownload&size=543M) atau [ZIP](
https://mi.knoacc.org/dl/drive?id=1T36eheSwRPcaOt3AVdScmeeLMsz58p82&name=Download&size=505M)
- Firmware baru: [RAR](https://mi.knoacc.org/dl/drive?id=1w06AQ5J5LWQWen7EO1Rs5xfZb5RVIVkJ&name=Download&size=881M)
