---
title: "Embed Timelapse Video from DropBox [Test]"
header:
 video:
  id: "https://www.dropbox.com/s/tjxjpwc61fs9gex/_20190912_090651488.mp4?raw=1"
  provider: "raw"
  poster: ""
categories: [video]
tags: [timelapse video, milkyway video]
---
Seorang pencinta malam bercerita pada gulita, sambil menunjukkan air matanya.
Katanya:
> Cuma padamu aku tunjukkan, sebab siang terlalu ceria untuk melihat dukaku. Aku tak tega".

## Tentang Video ini

|Device|Redmi Note 7|
|Ss|32d|
|Frame|356|
|Iso|1600|
|Focus|Infinity|
|Edit|Lapse It Pro + LightRoom + BimoStick + Inshot|
|Lokasi|Gunung Luhur, Kab.Lebak-Banten|
|Video owner|**[DlfmngDunn](https://www.facebook.com/hendrik.ramadhan.37)**|
|HD Video download|[dropbox](https://www.dropbox.com/s/tjxjpwc61fs9gex/_20190912_090651488.mp4?dl=1)|

Percobaan untuk embedding video dari Dropbox

### Percobaan 1

Memuat video yang di hosting di dropbox menggunakan tag `video` html5 murni dengan pembungkus css `video reponsive` yang sudah ada. Menggunakan tautan yang diberikan untuk unduh dari dropobox dan ganti query menjadi `dl=1`

Hasil: gagal.

### Percobaan 2

Masih menggunakan tautan unduh dropbox video. Tetapi memanfaatkan [Video.js](http://videojs.com/html5-video-support/) untuk load video.

Hasil: maasih gagal.

### Percobaan 3

Mencari referensi embed dropbox, menemukan [post ini](https://www.dropboxforum.com/t5/Files-folders/Embed-Video-to-Website/m-p/208035/highlight/true#M78228) di forum user dropbox. Tetap menggunakan Video.js (karena terlanjur) dan mengganti query menjadi `raw=1`

Hasil: Bisa. tapi tidak sempurna. 

Jika memakai video dari dropbox, sepertinya harus balik memakai tag `video` html5 murni tanpa `Video.js`.

### Percobaan 4

Memakai tag `video` dan modif query `raw=1`

<video controls class="responsive-video">
 <source src="https://www.dropbox.com/s/tjxjpwc61fs9gex/_20190912_090651488.mp4?raw=1" type="video/mp4"></source>
</video>
