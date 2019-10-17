---
title: "Membagikan File Google Drive Lebih Dari 100MB Tanpa Peringatan (Direct Download)"
excerpt: "Mendapatkan tautan unduh langsung file google drive tanpa lewat halaman peringatan jika file lebih dari 100 MB. Step by step membuat Google Drive API Key"
header:
 image: https://www.catetan.pw/assets/images/DriveHeader.png
 caption: Google Drive
categories: [cloudhosting]
tags: [google drive, direct download, google drive api, google cloud console]
---

Membagikan file Google Drive biasanya dengan memakai format tautan normal `https://drive.google.com/view?id=1HN2YlXE9dvDNwC2G2B8L1eMbg0Gi_R_d`, yang kemudian dibarahkan ke tautan `https://drive.google.com/uc?id=1HN2YlXE9dvDNwC2G2B8L1eMbg0Gi_R_d&export=download` yang jika file lebih kecil dari 100 MB bisa langsung diunduh. Karena itu, biasanya file yang dibagikan pada pemilik blog atau situs download akan membagikan tautan ke-2 agar file yang dibagikan  langsung terunduh.

Tetapi jika file yang dibagikan lebih besar dari 100MB, google drive akan menampilkan halaman peringatan terlebih dahulu meskipun menggunakan format tautan ke-2.

### Format Tautan Direct Download

Format penulisan direct download dari google drive tanpa peringatan jika file lebih besar dari 100MB bisa menggunakan format tautan berikut:

```html
https://www.googleapis.com/drive/v3/files/**file_id**?alt=media&key=**kredensial_google_drive_api**
```

Format tautan di atas membutuhkan 2 variable query yakni **file_id** dan **kredensial_google_drive_api** yang nanti akan [dijelaskan](#keterangan-variable).

Berikut contoh tautan direct download 

```html
https://www.googleapis.com/drive/v3/files/**0B6l7IOFIIovsaFAyZmt1MjN0c0U**?alt=media&key=**AIzaSyAeViL9QOYB4sxwJcqXLMlvsIVOTpNpF5E**
```

### Keterangan variable

**file_id** :

Nilai `file_id` ini bisa didapatkan pada alamat tautan yang diberikan oleh google drive. Misalnya pada tautan di bawah ini:
```html
https://drive.google.com/file/d/**0B6l7IOFIIovsaFAyZmt1MjN0c0U**/view?usp=sharing
```

Teks dengan huruf tebal `0B6l7IOFIIovsaFAyZmt1MjN0c0U` adalah **file_id** yang dibutuhkan. Nilai tersebut adalah **file_id** dari berkas yang sudah dibagikan dengan keterlihatan untuk **public on the web**.

**kredensial_google_drive_api** :

Adalah **Google Drive API key** yang dibuat melalui **Google API Console**. API Key ini harus dibuat dengan akun yang sama dengan akun yang dipakai untuk menyimpan/membagikan file.

Untuk medapatkannya bisa ikutinlangkah berikut:

**Step 1** - Log into the Google API Console

Kunjungi alamat **Google Cloud Platform** dan login menggunakan akun Google kamu: `https://console.cloud.google.com/apis/`

**Step 2** - Create a project in Google API dashboard

Dalam dashboard Google Cloud Platform, klik pilihan "Select a project" dari menu drop down, kemudian klik "New Project". Berikan nama project (bebas). Lihat gambar

![figure 1](https://www.catetan.pw/assets/images/google-api-new-project.png){:.align-center}

**Step 3** - Enable Google Drive API

Kembali ke _dashboard_, pastikan project yang baru dibuat terpilih pada _project list_, kemudian klik Library pada menu yang ada di panel kiri.

![figure 2](https://www.catetan.pw/assets/images/google-api-library.png){:.align-center}

Dalam halaman Library, cari **Google Data API** kemudian klik untuk memilihnya.

![figure 3](https://www.catetan.pw/assets/images/google-data-api.png){:.align-center}

Setelah masuk dalam halaman Google Data API, klik pada tombol **enable**.

![figure 4](https://www.catetan.pw/assets/images/enable-google-data-api.png){:.align-center}

**Step 4** - Create a Google Drive API key

Balik lagi ke _dashboard_, klik Credentials pada menu di samping kiri, kemudian klik pada menu drop down **CREATE CREDENTIALS** dan pilih **API key**.

![figure 5](https://www.catetan.pw/assets/images/google-data-api-create-api-key.png){:.align-center}

Copy nilai **API key** pada dialog yang muncul,

![figure 6](https://www.catetan.pw/assets/images/google-data-api-copy-key.png ){:.align-center}

