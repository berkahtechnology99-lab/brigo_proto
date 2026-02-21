README: Aturan Pembuatan Proto di Repo

Deskripsi:
Panduan ini menjelaskan tata cara membuat dan mengelola file `.proto` di repository ini untuk semua service aplikasi.

1. Buat Cabang Baru:
   Sebelum membuat proto baru, buat branch baru sesuai nama service kamu:

   git checkout -b feature/<nama-service>

Contoh:

```
git checkout -b feature/auth
```

2. Buat Folder Service Baru:
Di dalam folder `proto/`, buat folder baru untuk service kamu:

```
mkdir proto/<nama-service>
```

Contoh:

```
mkdir proto/auth
```

Semua file `.proto` untuk service tersebut harus diletakkan di folder ini.

3. Tambahkan File Proto:
   Tambahkan semua file `.proto` yang dibutuhkan untuk service kamu di folder tersebut. Pastikan mengikuti standar penamaan dan struktur proto.

4. Generate Proto:
   Jalankan perintah berikut untuk generate file dari proto:

   make proto

* Ini akan menghasilkan file Go (.pb.go) sesuai konfigurasi Makefile (biasanya di folder `gen/`).

5. Bersihkan Proto:
   Untuk menghapus file hasil generate:

   make clean

* Ini menghapus semua file generate dari folder `gen/`.

6. Commit & Push:
   Setelah generate berhasil, commit dan push branch kamu:

   git add proto/<nama-service> gen/<nama-service>
   git commit -m "feat(proto): add proto for <nama-service>"
   git push origin feature/<nama-service>

Catatan Tambahan:

* Jangan menambahkan proto langsung ke `main` atau branch shared tanpa review.
* Pastikan nama service jelas dan konsisten.
* Gunakan `make proto` dan `make clean` untuk menjaga konsistensi.

---
