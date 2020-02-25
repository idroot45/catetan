---
title: "Embed Video dari Google Drive"
categories: [video]
tags: [google drive, embed video, video streaming]
header:
 video:
  provider: "google-drive"
  id: "1XeBPV5BCdF2CbkmXIztub_bZPXl0ORj-"
---

Postingan ini berguna sebagai catatan praktikal penulis di blog ini
{:.notice .notice--warning}

Untuk menyematkan video yang dihosting di Google Drive cukup dengan menggunakan `include video`. Dengan menggunakan variabel `provider="google-drive"` dan `id="id file google"`.

Contoh pemakaian :

misal file video yang ingin disematkan punya link seperti ini: `https://drive.google.com/open?id=1XeBPV5BCdF2CbkmXIztub_bZPXl0ORj-`, maka penyematannya

```html
{% include video provider="google-drive" id="1XeBPV5BCdF2CbkmXIztub_bZPXl0ORj" %}
```

atau jika ingin menyematkan di header posting, maka cukup menyematkan dalam format data `yaml`

```yaml
---
header:
 video:
  provider: "google-drive"
  id: "id: "1XeBPV5BCdF2CbkmXIztub_bZPXl0ORj-"
---
```

Sudah begitu saja.
