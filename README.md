# Katalog Game Gratis

## Deskripsi Singkat Aplikasi
Katalog Game Gratis adalah aplikasi seluler yang dikembangkan menggunakan kerangka kerja Flutter. Aplikasi ini menyajikan informasi katalog permainan video gratis secara dinamis dengan mengambil data langsung dari REST API publik (FreeToGame API). Proyek ini disusun untuk memenuhi tugas Ujian Tengah Semester (UTS) mata kuliah Pemrograman Mobile Kelas C.

## Fitur Utama
1. **Daftar Game (Home Screen):** Menampilkan daftar kumpulan game gratis yang dilengkapi dengan gambar *thumbnail*, judul, dan genre permainan.
2. **Rincian Game (Detail Screen):** Menampilkan informasi lebih lengkap mengenai sebuah game, termasuk platform penyedia dan deskripsi singkat, ketika pengguna menekan salah satu judul dari daftar.
3. **Penanganan Status Asinkron:** Aplikasi ini menerapkan `FutureBuilder` untuk menangani dan menampilkan antarmuka yang sesuai saat aplikasi sedang memuat data (*Loading*), berhasil memuat data (*Success*), atau ketika terjadi kesalahan jaringan (*Error*).

## Teknologi dan Package yang Digunakan
* **Framework:** Flutter
* **Bahasa Pemrograman:** Dart
* **Package Tambahan:** `http` (digunakan untuk menangani proses permintaan HTTP ke server API).
* **Sumber Data (API):** FreeToGame API (`https://www.freetogame.com/api/games`)

## Langkah Menjalankan Aplikasi
Berikut adalah langkah-langkah untuk menjalankan aplikasi ini di komputer Anda:

1. Pastikan Anda sudah menginstal Flutter SDK dan Dart di perangkat Anda.
2. Salin (klon) repositori ini ke dalam penyimpanan lokal Anda menggunakan perintah:
   ```bash
   git clone https://github.com/SalehBsyb/uts_mobile_katalog_game.git
   ```
3. Buka terminal, lalu arahkan ke dalam direktori proyek:
   ```bash
   cd uts_mobile_katalog_game
   ```
4. Unduh semua dependensi package yang dibutuhkan dengan menjalankan perintah:
   ```bash
   flutter pub get
   ```
5. Jalankan aplikasi menggunakan perintah berikut (sangat disarankan dijalankan di platform Windows atau Emulator Android untuk menghindari pemblokiran CORS dari peramban web):
   ```bash
   flutter run -d windows
   ```
   *Atau jika menggunakan emulator Android/iOS:*
   ```bash
   flutter run
   ```
