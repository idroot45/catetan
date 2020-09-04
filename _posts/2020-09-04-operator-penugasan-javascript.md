---
title: "Mengenal JavaScript: Mengenal Operator Penugasan"
categories: [javascript]
tags: [mengenal javascript, mengenal operator, operator penugasan]
excerpt: "Mengenal operator javascript: mentukan nilai variabel melalui operator penugasan (assignment operator) dalam bahasa JavaScript"
header:
 overlay_image: "https://cdn.statically.io/img/www.boleh.id/bolehtau/wp-content/uploads/2019/09/js.jpg"
---
Dalam materi sebelumnya mengenai [Arrays dan Objek](https://www.catetan.pw/javascript/javascript-arrays-dan-objek/) sempat disinggung mengenai `nilai` (value) pada varibel. Untuk menentukan nila sebuah variabel, bisa juga dengan menentukannya dengan memakai operator penugasan (assignment).

## Assignment Operator

Dari contoh kode yang kita gunakan sebelumnya sebenarnya kita sudah menggunakan assignment operator. Operator ini digunakan untuk memberikan nilai pada variabel.

Pada dasarnya operator ini adalah tanda sama dengan (=), di mana tanda ini digunakan untuk menginisialisasi nilai pada variabel. Variabel yang akan diberikan nilai ditempatkan pada sebelah kiri dan nilainya ditempatkan pada sebelah kanan (nilai dapat berupa variabel lain atau nilai primitif, array, atau objek). Di antara keduanya terdapat operator assignment.

```javascript
x = y;
```

Contoh pada statement tersebut kita menginisialisasikan nilai `y` pada variabel `x`, sehingga nilai `x` sekarang memiliki nilai yang sama dengan `y`.

Ada beberapa assignment operator tambahan lain dalam menginisialisasikan nilai pada variabel, atau bisa kita sebut sebagai shortcut dalam menentukan nilai. Contohnya:

```javascript
let x = 10;
let y = 5
 
x += y;
 
console.log(x)
```

Pada contoh kode di atas bisa terdapat statement `x += y;` apa itu artinya? Assignment operator tersebut digunakan sebagai shortcut dari `x = x + y`. Cara ini juga dapat digunakan pada operator aritmatika lain seperti, perkalian, pengurangan, pembagian, dan lainnya.

```javascript
let x = 10;
let y = 5
 
x += y; // artinya -> x = x + y;
x -= y; // artinya -> x = x - y;
x *= y; // artinya -> x = x * y;
x /= y; // artinya -> x = x / y;
x %= y; // artinya -> x = x % y;
 
console.log(x);
```

Berikut snippet code dari contoh kode yang digunakan pada materi di atas. Anda bisa mencobanya sendiri penggunaan operator assignment yang sudah dipelajari.
