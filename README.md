### Prasyarat

Berikut beberapa hal yang perlu diinstal terlebih dahulu:

-   Composer (https://getcomposer.org/)
-   PHP ^10.0
-   MySQL ^15
-   XAMPP
-   Ini Perubahan


### Fitur

-   CRUD Data User
-   CRUD Data Buku
-   CRUD Data Kategori
-   CRUD Data Peminjaman Buku
-   CRUD Data Pengembalian Buku
-   2 Role User Dasboard

### Langkah-langkah instalasi

-   Clone repository ini

-   Install seluruh packages yang dibutuhkan

```bash
composer install
```

-   Siapkan database dan atur file .env sesuai dengan konfigurasi Anda
-   Ubah value APP_NAME= pada file .env menjadi nama aplikasi yang anda inginkan
-   Ubah nama db dalam env file menjadi perpus_DB
-   Export backup database dalam folder Database Backup

```bash
php artisan optimize
```

```bash
php artisan key:generate
```

-   Jalankan local server

```bash
php artisan serve
```
-   Akses ke halaman

```
http://127.0.0.1:8000
```

---

-   User default aplikasi untuk login

##### Administrator

```
Email       : admin@mail.com
Password    : secret
```
##### Anggota

```
Email       : anggota@mail.com
Password    : secret
```