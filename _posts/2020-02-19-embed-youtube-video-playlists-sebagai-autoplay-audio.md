---
title: "Menyematkan Video Youtube Playlists Menjadi Playlists Audio Saja?"
excerpt: "Model penyematan yang begini jadi ingat ketika jaman-jaman dulu mempersiapkan laman plain html untuk di injek ke situs hasil retasan sebagai laman pengganti."
header:
 overlay_image: "https://1.bp.blogspot.com/-oPNwVDIM9Tg/XA5fMB9eFdI/AAAAAAAAHnw/EU8UU2-1dvQtmKY6tuujV82uEEJKcsy-QCLcBGAs/w191-h123-p-k-no-nu/Cara%2BTerbaru%2BMemasang%2BVideo%2BYoutube%2BResponsive%2Bdi%2BBlog.png"
 caption: "Embed Youtube Playlists"
categories: [youtube]
tags: [audio, video, multimedia, ah embuh lah]
---
Ceritanya saya dapet playlists lagu-lagu band kesayangan semasa esempe dulu di Youtube. Dan kepingin menyematkannya sebagai sebuah playlists audio saja tanpa menampilkan video (ini YouTube ya? bukan situs penedia audio) klipnya. 

Jadi, ini dia tautan playlists-nya:
```html
https://www.youtube.com/playlist?list=OLAK5uy_mkDrK1whc58PtOy9urIaKd8kI411vOxhI
```

Ya, ya, ya... Ini termasuk album yang "baru" berjudul **Musim yang Baik**. Ada sepuluh lagu dalam daftar putar ini.

Sebenarnya dulu pernah ada cara embedding lama dengan tag `object` dengan memanfaatkan shockwave player. Namun karena di perkembangannya penyematan object shockwave menjadi tidak aman dan tidak didukung kebanyakan browser kekinian ya... gitu deh. Lagipula, untuk bisa memainkan objext swf ininperlu memasang plug-in adobe shockwave player yang jadi alasan tidak amannya model penyematan multimedia dengan cara ini.

Mau tak mau harus memakai model.penyematan dengan tag `iframe` kembali.

Setelah mencari-cari referensi, dan saya rasa cukup untuk dipraktekkan, begini jadinya:

<div class="video-responsive-container"><iframe width="1024" height="320" src="https://www.youtube-nocookie.com/embed/videoseries?list=OLAK5uy_mkDrK1whc58PtOy9urIaKd8kI411vOxhI"
frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe></div>

<iframe width="0" height="0" src="https://www.youtube-nocookie.com/embed/videoseries?list=OLAK5uy_mkDrK1whc58PtOy9urIaKd8kI411vOxhI"
frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

Cuman karena mengikuti arahan dari laman [Youtube Help](https://support.google.com/youtube/answer/171780?hl=id) jadinya malah playlists video. 😌

Tinggal mencari cara agar videonya _nggak_ kelihatan.

Untuk menghilangkan tampilan video-nya rasanya bisa dengan (cara primitif) memberi nilai `width` dan `height` tag `iframe` dengan "0" (nol) sehingga iframe menjadi tak terlihat karena tak punya dimensi. Tapi pemuatan video masih berjalan 🤣 tapi tak terlihat. Cuma audionya saja yang bisa didengarkan.

Kelemahannya, kuota data yang terpakai, sama dengan ketika memutar playlists video meskipun cuma mendengarkan audionya saja.

Model penyematan yang begini jadi ingat ketika jaman-jaman dulu mempersiapkan laman plain html untuk di injek ke situs hasil retasan sebagai laman pengganti. Iyap, jaman-jaman ketika sudah bisa melakukan deface sebuah situs itu berasa jadi hacker beneran. Padahal script dan metode injeksi boleh nyolong alias sxript kiddies ✌️
