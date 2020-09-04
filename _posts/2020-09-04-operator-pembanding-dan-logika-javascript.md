---
title: "Mengenal JavaScript: Mengenal Operator Pembanding dan Logika"
categories: [javascript]
tags: [mengenal javascript, mengenal operator, operator penugasan]
excerpt: "Mengenal operator javascript: mentukan nilai variabel melalui operator penugasan (assignment operator) dalam bahasa JavaScript"
header:
 overlay_image: "https://cdn.statically.io/img/www.boleh.id/bolehtau/wp-content/uploads/2019/09/js.jpg"
---
Sekarang kita sudah mengetahui bagaimana cara [menyimpan nilai](https://www.catetan.pw/javascript/operator-penugasan-javascript/) pada sebuah variabel, [array, ataupun objek](https://www.catetan.pw/javascript/javascript-arrays-dan-objek/). Nah, selanjutnya kita akan belajar mengenai operator komparasi sebagai logika dasar dalam membandingkan nilai pada JavaScript.

## Operator Komparasi

Terdapat serangkaian karakter khusus yang disebut dengan operator pembanding/komparasi yang dapat **mengevaluasi dan membandingkan dua nilai**. Berikut daftar operator dan fungsinya:

Operator|Fungsi
---|---
==|Membandingkan kedua nilai apakah sama. (Tidak Identik)
!=|Membandingkan kedua nilai apakah tidak sama. (Tidak Identik)
===|Membandingkan kedua nilai apakah identik.
!==|Membandingkan kedua nilai apakah tidak identik.
>|Membandingkan dua nilai apakah nilai pertama lebih besar dari nilai kedua.
>=|Membandingkan dua nilai apakah nilai pertama lebih besar atau sama dengan dari nilai kedua.
<|Membandingkan dua nilai apakah nilai pertama lebih kecil dari nilai kedua.
<=|Membandingkan dua nilai apakah nilai kedua lebih kecil dari atau sama dengan nilai pertama.

Ketika kita melakukan perbandingan antara dua nilai, JavaScript akan mengevaluasi kedua nilai tersebut dan akan mengembalikan _boolean_ dengan nilai hasil perbandingan tersebut, baik _false_, atau _true_. Berikut contohnya:

Ketika kita melakukan perbandingan antara dua nilai, JavaScript akan mengevaluasi kedua nilai tersebut dan akan mengembalikan boolean dengan nilai hasil perbandingan tersebut, baik false, atau true. Berikut contohnya:

```javascript
let a = 10;
let b = 12;
 
console.log(a < b);
console.log(a > b);
 
/* output
true
false
*/
```

### Perbedaan antara “sama” dan “identik”

Dalam operator komparasi di JavaScript, hal yang menjadi sedikit “tricky” adalah membedakan antara “sama” (==) dan “identik” (===).

Kita sudah mengetahui bahwa setiap nilai pasti memiliki [tipe data](https://www.catetan.pw/javascript/tipe-data-javascript/) baik itu number, string atau boolean. Contohnya sebuah string “10” dan number 10 merupakan hal yang serupa, tetapi keduanya tidak benar-benar sama.

Hal inilah yang membedakan antara sama dan identik pada JavaScript. Jika kita ingin membandingkan hanya dari kesamaan nilainya kita bisa gunakan `==` tapi jika kita ingin membandingkan dengan memperhatikan tipe datanya kita gunakan `===`.

Contohnya sebagai berikut:
```javascript
const aString = '10';
const aNumber = 10
 
console.log(aString == aNumber) // true, karena nilainya sama-sama 10
console.log(aString === aNumber) // false, karena walaupun nilainya sama, tetapi tipe datanya berbeda
 
/* output
true
false
*/
```

## Logical Operators

Terdapat beberapa operator lain yang dapat kita gunakan untuk menetapkan logika yang lebih kompleks, yakni dengan _logical operators_. Dengan operator logika, kita dapat menggunakan kombinasi dari dua nilai boolean atau bahkan lebih dalam menetapkan logika.

Pada JavaScript terdapat **tiga buah karakter khusus** yang berfungsi sebagai _logical operator_, berikut macam-macam logical operator dan fungsinya:

Operator|Deskripsi
---|---
`&&`|Operator dan (and), logika akan menghasilkan true apabila semua kondisi terpenuhi (bernilai true).
`||`|Operator atau (or), logika akan menghasilkan true apabila ada salah satu kondisi terpenuhi (bernilai true).
`!`|Operator tidak (not), digunakan untuk membalikan suatu kondisi.

Berikut contoh penerapannya pada JavaScript:

```javascript
let a = 10;
let b = 12;
 
/* AND operator */
console.log(a < 15 && b > 10); // (true && true) -> true
console.log(a > 15 && b > 10); // (false && true) -> false
 
/* OR operator */
console.log(a < 15 || b > 10); // (true || true) -> true
console.log(a > 15 || b > 10); // (false || true) -> true
 
/* NOT operator */
console.log(!(a < 15)); // !(true) -> false
console.log(!(a < 15 && b > 10)); // !(true && true) -> !(true) -> false
 
/* output
true
false
true
true
false
false
*/
```

Mungkin sebagian dari kita bertanya, sebenarnya apa kegunaan dari nilai boolean selain hanya menampilkan nilai true dan false saja? Pada pembahasan tipe data sudah pernah disebutkan bahwa boolean merupakan salah satu kunci dari logika pemrograman, karena boolean dapat mengontrol aliran pada program.

Lantas bagaimana cara boolean mengontrol sebuah aliran program? Pada artikel selanjutnya, kita akan membahas mengenai `if/else` statement yang dapat mengontrol _flow_ pada program, tentunya pada penggunaan statement ini, _boolean_ akan sangat berperan.

Berikut snippet code dari contoh kode yang digunakan pada materi di atas. Silakan Anda mencobanya sendiri dengan mengubah beberapa penggunaan operator komparasi dan menampilkannya pada console.

https://glot.io/snippets/fi6b6h58lz
