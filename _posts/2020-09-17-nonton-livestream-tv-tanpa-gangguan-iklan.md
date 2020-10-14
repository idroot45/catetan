---
title: "Nonton Live Stream TV Tanpa Diganggu Iklan"
excerpt: "Cara menonton live stream TV tanpa diganggu iklan ala saya. Bonus: Tak ada data pribadi yang tercuri, privacy aman"
categories: [tips]
tags: [livestream, streaming tv, tv online]
header:
 image: "https://cdn.statically.io/img/www.useetv.com/pimages/tvposter/trans7.png"
 caption: "mencari url streaming tv"
 teaser: "https://www.useetv.com/pimages/tvposter/trans7.png?w=420px"
---
Nonton TV mungkin sudah tidak jaman. Kekinian banyak muncul layanan VOD (video on demanad) hingga memaksa beberapa stasiun TV swasta nasional ikut-ikutan mengonlinekan siarannya.

Praktiknya, entah itu membuat situs yang bisa diakses dengan browser atau model kerjasama dengan portal berita daring seperti yang dilakukan **Trans Corp** dengan **20detik**.

Meskipun bisa diakses secara bebas dan gratis, tentu saja tidak benar-benar gratis. Karena tetap saja ada imbal balik yang didapat dari _vemirsah_. Baik yang jelas terlihat yakni dari revenue iklan yang tayang terpasang dan/atau yang **samar tapi mengerikan**. Yakni data pengguna yang dikumpulkan dari tracker/analitycs halaman tersebut.

Wujud live stream TV tersebut menjadi tidak begitu menarik bagi saya. Yang menarik bagi saya adalah bagaimana bisa menonton live stream TV ini tanpa harus mengorbankan privacy saya. Ogah saya menyetorkan history penelusuran browser dan data sensitif yang bisa saja mereka jual kembali.

Maka, ketika mengakses situs tersebut (seperti biasa) saya ketikkan `view-source:` di depan alamat situs yang ada di address bar menjadi seperti ini: `view-source:https://domain.com/nganu` dan isi laman streaming tersebut pun menampilkan informasi yang cukup banyak.

[![akses kode sumber laman](/assets/images/Screenshot_20200917-221404~2.png)](/assets/images/Screenshot_20200917-221404~2.png)

Yang saya cari pertama adalah tag `<video>` dan memburu properti `src`-nya. Jika tidak ada maka tujuan selanjutnya adalah mencari elemen yang punya property `player` atau semacamnya. Misalnya `<div id=`player`> kemudian memburu tautan yang ada didalamnya.

Bisa jadi sebuah laman streaming malah memasang `<iframe>` untuk menyisipkan laman lain di situ. Maka, proses perburuan pun berulang dengan alamat yang ada dalam tag `iframe` ke addres bar dengan prefik `view-source` lagi hingga mendapatkan tautan dengan ekstensi m3u8.

[![iframe streaming tv](/assets/images/Screenshot_20200917-221326~2.png)](/assets/images/Screenshot_20200917-221326~2.png)

Jika sudah mendapatkan sebuah url yang ekstensinya adalah **m3u8** maka perburuan pun selesai. Tinggal membuka aplikasi pemutar video yang bisa memutar live stream seperti VLC atau MX Player Pro.

[![kode sumber streaming](/assets/images/Screenshot_20200917-221426.png)](/assets/images/Screenshot_20200917-221426.png)

Contohnya adalah tautan yang saya dapatkan dari 20detik.com untuk channel TRANSTV dan TRANS7 berikut ini:
*Trans TV**: ```https://video.detik.com/transtv/smil:transtv.smil/playlist.m3u8```
**Trans 7**: ```https://video.detik.com/trans7/smil:trans7.smil/playlist.m3u8```

_Note: Jangan sarankan memakai `inspect element` ya? Saya tidak punya laptop. Ngoding pun seadanya via ponsel android._



