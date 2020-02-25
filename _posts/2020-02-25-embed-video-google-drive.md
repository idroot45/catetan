---
title: "Embed Video dari Google Drive ala Seluk Beluk"
categories: [video]
tags: [google drive, embed video, video streaming]
header:
 video:
  provider: "google-drive"
  id: "1-WrVIxrZA2YitAJSDd2kZGmIJJhlO05i"
---

Postingan ini berguna sebagai catatan praktikal penulis di blog ini
{:.notice .notice--warning}

Untuk menyematkan video yang dihosting di Google Drive cukup dengan menggunakan `include video`. Dengan menggunakan variabel `provider="google-drive"` dan `id="id file google"`.

Contoh pemakaian :

misal file video yang ingin disematkan punya link seperti ini: `https://drive.google.com/open?id=1-WrVIxrZA2YitAJSDd2kZGmIJJhlO05i`, maka penyematannya

```html
{% include video provider="google-drive" id="1-WrVIxrZA2YitAJSDd2kZGmIJJhlO05i" %}
```

atau jika ingin menyematkan di header posting, maka cukup menyematkan dalam format data `yaml`

```yaml
---
header:
 video:
  provider: "google-drive"
  id: "1-WrVIxrZA2YitAJSDd2kZGmIJJhlO05i"
---
```

Sudah begitu saja.
<script>
function getQueryVariable(e){
for(var r=window.location.search.substring(1),t=r.split("&"),n=0;n<t.length;n++){var a=t[n].split("=");if(a[0]==e)return a[1]}return!1}
window.onload=function(){
var klik=e=getQueryVariable("id");document.getElementById("google-drive").src="https://drive.google.com/file/d/" + e + "/preview";}
</script>
