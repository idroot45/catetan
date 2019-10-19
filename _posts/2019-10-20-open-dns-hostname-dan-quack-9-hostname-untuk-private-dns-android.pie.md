----
title: "Private DNS Android Pie: OpenDNS Hostname dan Quack 9 DNS Hostname"
excerpt: "Mencoba private dns hostname dengan mengarahkan A Record dan AAAA Record domain sendiri ke alamat DNS Resolver milik Quack 9 dan OpenDNS"
categories: [cloudhosting]
tags: [dns hostname, eksperimen, private dns, opendns hostname, quack 9 hostname]
---
Di Android Pie, ada fitur Private DNS. Fitur yang berguna untuk mengalirkan permintaan DNS Record melalui TLS (_DNS over TLS_) demi membatasi intersepsi oleh ISP. Fitur ini membutuhkan **hostname** untuk menjembatani peralihan dari IPV4 ke IPV6.

Sementara ini, yang sudah punya hostname baru **Cloudflare DNS** dan **Google DNS**. Masing-masing adalah: `1dot1dot1dot1.cloudflare-dns.com` dan `dns.google.com`.

Untuk melihat kebenaran alamat IPV4 masing-masing hostname bisa menggunakan perintah `dig [hostname] A` untuk IPV6 `dig [hostname] AAAA` dari terminal. Tentu harus terpasang paket `dnsutils` (pasang di centos/debian: `pkg install dnsutils`).

Sebagai contoh, untuk melihat alamat IPV4 dari `dns.google.com` :
```
$ dig dns.google.com A
```
akan meghasilkan:
```
dns.google.com.         536     IN      A       8.8.8.8
dns.google.com.         536     IN      A       8.8.4.4
```
Hostname tersebut juga punya AAAA Record (IPV6). Sehingga smartphone yang menggunakan ISP yang mendukung IPV6 bisa memakainya sebagai DNS Resolver. Cek sendiri dengan `dig dns.google.com AAAA` dan lihat hasilnya.

### Hostname _Quack 9_ dan _Open DNS_

Jika **Google** dan **Cloudflare** sudah punya _hostname_ untuk server DNS Resolver-nya, Tidak demikian dengan **Open DNS** dan **Quack 9**. Keduanya sepertinya belum menyediakan hostname untuk dipakai untuk fitur private DNS ini.

Saya ingin mencoba memakai Open DNS atau Quack 9 melalui fitur _private dns_ ini. Jadi, saya coba buat hostname sendiri menuju alamat DNS Resolver milik Open DNS dan Quack 9.

### Membuat A Record dan AAAA Record Untuk Hostname

Singkat kata, ada dua hostname yang saya buat:

 1. opendns.catetan.pw
 2. quack9.catetan.pw

Masing-masing hostname, saya buatkan A Record (untuk IPV4) dan AAAA Record (untuk IPV6) menuju Quack 9 dan OpenDNS sesuai dengan alamat IP masing-masing.

Kalau mau ikut coba, silahkan dipakai. Dan kalau masih ragu dengan nilai A Record dan AAA Record yang saya masukkan, silahkan pakai perintah: `dig opendns.catetan.pw A` atau `dig opendns.catetan.pw AAAA` untuk memeriksa kebenaran alamat sever dns sudah sesuai atau tidak dengan alamat open dns.

### Private DNS Hostname

Jadi tujuannya apa sih ini? Cuma iseng coba-coba, mumpung baru saja register domain murah yang belum jelas juga mau di pakai apa. Maksudnya, selain untuk blog-ing atau mencatat sesuatu di sini.

Hasilnya bagaimana? Saat ini ketika saya uji pakai hasilnya: "Tidak terhubung", tetapi kita lihat besok, atau besoknya lagi, atau besoknya-besok, kita cek lagi. Mungkin record-nya belum "diumumkan" dan belum dikenal. Atau bisa jadi karena ada syarat teknis tertentu agar bisa berfungsi layaknya hostname milik Google atau Cloudflare.

Namanya juga eksperimen, coba-coba, trial-error.
