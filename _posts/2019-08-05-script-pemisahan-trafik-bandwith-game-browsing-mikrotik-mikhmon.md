---
title: "Script Game On-line dan Browsing Mikrotik-Mikhmon V.4"
excerpt: "Pemisahan trafik game online dan browsing dengan mikrotik untuk usaha RT/RW net yang memakai mikhmon"
header:
 overlay_image: "https://laksa19.github.io/img/5a.png"
 caption: "Mikrotik X Mikhmon"
categories: [mikrotik]
tags: [mikhmon, mikrotik script, hotspot]
---
Tutorial import _IP Binding_ ke user login by mac bisa dilihat pada video berikut:

{% include video id="y3t_sKj_0dk" provider="youtube" %}

> Sedikit tambahan: Pada tiap-tiap profil hotspot silahkan di un-cek pada pilihan _transparent proxy_. Karena kalau tidak di un-cek http bisa los.

{% include ads.html %}

### Script V.4 Game Online dan Browsing

Script bisa didapatkan [dari sini](https://drive?size=&id=1IpH0FatEVyfv1dh2FG_CT8LPfKLKIWmf&name=MS-Excel)

Video tutorial & script bisa dilihat pada video berikut:

{% include video id="wnYpqGVChwk" provider="youtube" %}

Ini adalah update script untuk pemisahan trafik game online dan browsing versi ke-4.

Apa yang terbaru dari _script_ ini : 

1. Penambahan port ICMP
2. Penggunaan dalam bentuk _excel_ sehingga mudah digunakan. 
3. Penghapusan port berat sehingga port berat masuk ke masing-masing parent user hotspot dan client rumahan.
4. Sudah per ip hotspot layaknya seperti simple queue dan pengecualian port ringan game serta icmp di setiap masing-masing parent user.
5. Game online dan ping keluar lebih stabil.dari scrip yang sebelumnya.

Bagi rekan-rekan yang menggunakan **mikhmon** silahkan gunakan versi **mikhmon yang terbaru**. Sebab di versi mikhmon yang lawas, script on login-nya menjadi tidak berfungsi.

Untuk cara mengupdate scrip mikhmon pada tiap-tiap profil user hotspot sudah ada dalam video ini. Silahkan di tonton sampai habis. dan jangan sampai gagal paham atau cuma main copas saja.

![ilustrasi user active](https://laksa19.github.io/img/hotspot-active.png)

Supaya _IP Binding_ masuk ke _queu tree_ silahkan pindahkan user ip binding ke user hotspot (login by mac) yang artinya sama dengan ip binding hanya saja login by mac akan tampil di user active.

_**Credit: Video dan Script by [**Ega**](https://www.facebook.com/carisajakalaubisa) via Group FB **Mikrotik Indonesia**_.
