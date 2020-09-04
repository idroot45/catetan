---
title: "JavaScript: Mengenal Function dan Cara Kerjanya"
categories: [javascript]
tags: [mengenal javascript, mengenal function, cara kerja function, javascript function]
excerpt: "Mengetahui cara melakukan perulangan objek dalam bahasa JavaScript"
header:
 overlay_image: "https://cdn.statically.io/img/www.boleh.id/bolehtau/wp-content/uploads/2019/09/js.jpg"
---
Tanpa kita sadari sebenarnya kita sudah menggunakan sebuah fungsi pada contoh kode yang ada [sebelumnya](https://www.catetan.pw/javascript/statemen-if-else-javascript/). `console.log()` (lebih tepatnya pada `log()`) merupakan sebuah function yang berfungsi untuk menampilkan data pada console browser. Tapi sebenarnya apa itu function? Bagaimana ia bisa bekerja?

**Function** atau fungsi merupakan potongan kecil kode yang tidak akan dieksekusi sebelum dipanggil. Contoh lain fungsi JavaScript yang sudah ada pada browser adalah `alert()`. Ia bertujuan untuk menampilkan pesan dalam bentuk pop up dialog. Fungsi tersebut sudah ada pada browser dan akan muncul hanya ketika kita menggunakan/memanggilnya dengan `alert()`.

Atau dalam arti lain, kita dapat berfikir bahwa _function_ merupakan **sebuah variabel yang berisi block logika**, dan block logika tersebut akan **dieksekusi ketika variabelnya dipanggil**.

Semua fungsi memiliki struktur yang sama. Nama fungsi selalu diikuti dengan tanda kurung (parentheses) tanpa spasi, lalu terdapat sepasang kurung kurawal (`{ }`) yang berisi logika dari fungsi tersebut.

Terkadang di dalam tanda kurung kita membutuhkan sebuah _informasi tambahan_ yang disebut dengan _arguments_. Argument merupakan data yang digunakan pada fungsi yang dapat mempengaruhi perilaku dari fungsinya tersebut. Contoh, fungsi `alert()` dapat menerima argument _string_ yang digunakan untuk menampilkan teks pada dialog.

Berikut merupakan ilustrasi dari struktur fungsi.
<figure><img src="/images/0191206201729a216a3896daecc1e15b8dd0a8f5d77c1.png"/></figure>
Terdapat dua tipe fungsi pada JavaScript, yakni _native function_ dan _custom function_.

**Native function** merupakan fungsi yang sudah terdapat pada JavaScript atau Browser sehingga kita tidak perlu membuat hanya tinggal menggunakan saja. Contohnya: `alert()`, `confirm()`, `Date()`, `parseInt()` dll. Sebenarnya terdapat ratusan native function yang tersedia.

**Custom function** merupakan fungsi yang kita buat sendiri, tentu custom function dibuat menyesuaikan kebutuhan kita. Untuk membuat sebuah custom function, kita perlu menuliskan keyword function dilanjutkan dengan menuliskan seluruh struktur fungsinya.

```javascript
function greeting() {
    console.log("Good Morning!")
}
```

Kemudian kita dapat memanggil fungsinya tersebut dengan menggunakan greeting().

```javascript
function greeting() {
    console.log("Good Morning!")
}
greeting();
/* output
Good Morning!
*/
```

Tetapi jika sebuah fungsi hanya menjalankan baris kode secara sama dirasa kurang fungsional bukan? Kita dapat membuat fungsi tersebut untuk menerima argumen dan memanfaatkan argumen untuk mengubah perilaku dari fungsinya.

Untuk menambahkan _argument_ pada fungsi, tambahkan _variabel_ di dalam tanda kurung fungsi namun variabel tersebut tidak memerlukan keyword `var`, `let`, ataupun `const`. Kita juga bisa menambahkan **lebih dari satu argumen** dengan memberikan **tanda koma** antar variabel argumennya. Contohnya fungsi `greeting` akan kita ubah dengan menambahkan argument, sehingga akan nampak seperti ini:

```javascript
function greeting(name, language) {
    if(language === "English") {
        console.log("Good Morning " + name + "!");
    } else if (language === "French") {
        console.log("Bonjour " + name + "!");
    } else {
        console.log("Selamat Pagi " + name + "!");
    }
}
```

Sehingga dalam memanggilnya pun kita perlu mengirimkan dua buah nilai pada fungsinya seperti berikut:

```javascript
function greeting(name, language) {
    if(language === "English") {
        console.log("Good Morning " + name + "!");
    } else if (language === "French") {
        console.log("Bonjour " + name + "!");
    } else {
        console.log("Selamat Pagi " + name + "!");
    }
}
greeting("Harry", "French");
/* output
Bonjour Harry!
*/
```

Satu hal lagi, function dapat mengembalikan sebuah nilai. Hal ini benar-benar sangat berguna dan membuat kita lebih mudah. Dengan nilai kembalian, kita dapat membuat _function_ yang berfungsi untuk melakukan perhitungan matematika dan hasilnya dapat langsung kita masukkan ke dalam sebuah _variabel_. Contohnya seperti ini:

```javascript
function multiply(a, b) {
    return a * b;
}
let result = multiply(10, 2)
console.log(result)
/* output
20
*/
```

Untuk membuat nilai kembalian dari fungsi gunakan keyword return diikuti dengan nilai yang akan dikembalikan. Nilai kembalian tidak hanya _number_, bisa saja berupa _string_, _boolean_, _objek_ ataupun _array_. Seperti inilah fungsi `greeting()` jika kita ubah dengan menetapkan dengan nilai kembalian string:

```javascript
function greeting(name, language) {
    if(language === "English") {
        return "Good Morning " + name + "!";
    } else if (language === "French") {
        return "Bonjour " + name + "!";
    } else {
        return "Selamat Pagi " + name + "!";
    }
}
let greetingMessage = greeting("Harry", "French");
console.log(greetingMessage);
/* output
Bonjour Harry!
*/
```

Yang perlu kita perhatikan lagi, ketika **statement return tereksekusi**, maka fungsi akan **langsung terhenti** dan **mengembalikan nilai**.

Berikut snippet code dari contoh kode yang digunakan pada materi di atas, Anda bisa mencobanya sendiri, dan pahami struktur cara penggunaan dari function.

https://glot.io/snippets/fi85m61lkm
