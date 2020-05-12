---
permalink: "/go"
title: "You'll get the link here!"
excerpt: "This page will only give you the link provided at the previous page, don't blame us if it's not working!"
header:
 og_image: "https://cdn.statically.io/img/www.leskompi.com/wp-content/uploads/2018/08/Cara-Mengganti-Background-Foto-Online.png"
---
{% include figure image_path="https://cdn.statically.io/img/www.leskompi.com/wp-content/uploads/2018/08/Cara-Mengganti-Background-Foto-Online.png" title="Dapatkan link unduhan!"%}

{{ page.excerpt }}
{:.notice .notice-danger}

{% include tengah.html %}

<div style="display:block;text-align:center">
<a class="btn btn--primary" href="#main" id="download" rel="nofollow noreferer noopener" target="_blank">Wait...</a>
</div>

Tunggu hingga link muncul ya gaiss...
{:#notice .notice .notice--primary}

<script>
function getQueryVariable(e){
 for(
  var r=window.location.search.substring(1),
      t=r.split("&"),
      n=0;
      n<t.length;
      n++
 )
 {
  var a=t[n].split("=");
  if(a[0]==e)return a[1]
 }
 return!1
}
window.onload=function(){
  var klik=e=getQueryVariable("url"),
           d=document.getElementById("download"),
           c=document.getElementById("notice"),
           x="http://";
  d.innerHTML="Go to link!",
  d.href=x+e;
  c.innerHTML="Your link now ready, click the <b>Go to link!</b> button above!";
  d.classList.remove("btn--primary");
  d.classList.add("btn--success");
  c.classList.remove("notice--primary");
  c.classList.add("notice--success");
}; 
</script>

### How to use this page?

1. Copy the original url you desired!
2. Remove the protocol. (`http://` or `https://`)
3. Prepend with `https://www.catetan.pw/go?url=`
4. Share the your new links!

Yes, it's just as simple as that. 🖕
