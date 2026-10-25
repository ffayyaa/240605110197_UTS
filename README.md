# Eksplorasi Musik (UTS Pemrograman Mobile)

## Deskripsi Singkat Aplikasi
Eksplorasi Musik adalah aplikasi mobile berbasis Flutter yang menyajikan data trek musik dari iTunes Search API. Aplikasi ini memungkinkan pengguna untuk mencari lagu atau artis secara dinamis dan mendengarkan pratinjau (preview) audio langsung dari dalam antarmuka aplikasi.

## Fitur Utama
* **Pencarian Dinamis**: Kolom input untuk mencari lagu atau artis spesifik dari seluruh basis data iTunes.
* **Integrasi REST API**: Mengambil dan mengonversi respons data JSON dari iTunes Search API menjadi objek Dart.
* **Penanganan Proses Asinkron**: Menggunakan `FutureBuilder` untuk menyajikan antarmuka dinamis berdasarkan status pengambilan data (*Loading*, *Success*, dan *Error*).
* **Pemutar Audio Interaktif**: Halaman detail yang menampilkan sampul album beresolusi tinggi beserta fitur *Play/Pause* untuk memutar sampel audio 30 detik.

## Teknologi dan Package yang Digunakan
* **Flutter & Dart**: Framework dan bahasa pemrograman utama pengembangan aplikasi.
* **http (^1.2.0)**: Digunakan untuk menangani *HTTP GET request* ke endpoint API.
* **audioplayers (^6.1.0)**: Digunakan untuk memproses dan memutar URL audio pada halaman detail.

## Langkah Menjalankan Aplikasi
1. Pastikan Flutter SDK telah terpasang dan terkonfigurasi dengan benar di sistem Anda.
2. Lakukan *clone* atau unduh repositori ini ke komputer lokal.
3. Buka terminal atau *command prompt* dan arahkan ke dalam direktori proyek.
4. Jalankan perintah `flutter pub get` untuk mengunduh seluruh dependensi *package*.
5. Jalankan aplikasi pada emulator Android/iOS atau perangkat fisik dengan mengetikkan perintah `flutter run`.
