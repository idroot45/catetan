---
title: "JavaScript: Mengenal Statemen `If` dan `Else`"
categories: [javascript]
tags: [mengenal javascript, mengenal operator, operator penugasan]
excerpt: "Mengenal pernyataan if (jika) dan else (jika tidak) dan penggunaannya dalam kerangka logika bahasa JavaScript"
header:
 teaser: "https://cdn.statically.io/img/www.boleh.id/bolehtau/wp-content/uploads/2019/09/js.jpg?w=420px"
 og_image: "https://cdn.statically.io/img/www.boleh.id/bolehtau/wp-content/uploads/2019/09/js.jpg"
---
If/Else Statement punya peran penting dalam membangun kerangka logika pemrograman, termasuk dalam bahas JavaScript.

Ketika mengembangkan sebuah program tentu terdapat alur atau flow proses ketika kode dijalankan. Kita dapat mengontrol alur program ketika suatu kondisi terjadi, misalkan jika nilai `x > 5` maka program harus melakukan statement `a`. Jika tidak, program akan menjalankan statement `b`. Untuk melakukan hal tersebut, kita dapat menggunakan _if/else statement_.

**If/else statement** dapat digambarkan seolah-olah kita memberikan pertanyaan benar atau salah pada JavaScript, lalu memberikan perintah sesuai jawaban dari pertanyaan tersebut.

Contohnya, terdapat variabel `x` dengan nilai `50`, kemudian kita bertanya “Hai JavaScript! Apakah x lebih dari 70?” jika kondisi tersebut benar, maka kita dapat memerintahkan JavaScript untuk menampilkan nilainya. Jika salah, kita perintahkan JavaScript untuk menampilkan teks “Nilai kurang dari 70”.

Skenario tersebut dapat dituliskan pada dalam bentuk kode pada JavaScript seperti berikut:

```javasrcipt
let x = 50;
 
if(x > 70) {
    console.log(x);
} else {
    console.log("Nilai kurang dari 70");
}
 
/* output
Nilai kurang dari 70
*/
```
Pada kode di atas, kita menggunakan kata kunci if untuk memberikan pertanyaan pada JavaScript. Pertanyaan tersebut berupa logical statement yang sudah kita pelajari pada materi sebelumnya. Logical statement pada if ditulis di dalam tanda kurung (parentheses). Jika logical statement tersebut menghasilkan true, maka JavaScript akan mengeksekusi kode yang berada di dalam block if. Jika logical statement menghasilkan nilai false, maka kode yang pada block else lah yang akan dieksekusi.

Block `else` bersifat **opsional** untuk dituliskan, hal tersebut berarti kita tidak perlu menuliskannya jika tidak kita manfaatkan. Contohnya:

```javascript
let language = "English";
let greeting = "Selamat Pagi!"
 
if(language === "English") {
    greeting = "Good Morning!";
}
 
console.log(greeting);
 
/* output
Good Morning!
*/
```

Pada kode di atas, nilai greeting memiliki nilai standar “Selamat Pagi!” tetapi akan ditampilkan berbeda jika language memiliki nilai “English”, pada kasus ini kita tidak perlu menuliskan block else.

Kita juga dapat memberikan lebih dari satu pertanyaan pada if statement dengan kata lain, kita dapat memberikan lebih dari satu kondisi dengan menggabungkan keyword else dan if seperti berikut:

```javascript
let language = "French";
let greeting = "Selamat Pagi"
 
if(language === "English") {
    greeting = "Good Morning!";
} else if(language === "French") {
    greeting = "Bonjour!"
} else if(language === "Japanese") {
    greeting = "Ohayogozaimasu!"
}
 
console.log(greeting);
 
/* output
Bonjour!
*/
```

Dengan mengubah nilai dari variabel language ke nilai yang lain seperti “English” atau “Japanese” maka pesan yang ditampilkan pada console akan ikut berubah.

Berikut snippet code dari contoh kode yang digunakan pada materi di atas. Silakan Anda mencobanya sendiri sehingga paham dengan cara penggunaan dari if/statement.

https://glot.io/snippets/fi7an0nsxb
