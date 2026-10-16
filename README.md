UTS_Daspro_GoodVibes_B


Space.net Internet Cafe - Program Billing Warnet

 
## Deskripsi Singkat

Space.net Internet Cafe adalah program Pascal berbasis teks (console) untuk membantu
operator warnet menghitung biaya sewa komputer dan pesanan makanan/minuman pelanggan.
Program menampilkan daftar tarif, menghitung total bayar sesi bermain lengkap dengan
diskon, dan mencatat pesanan makanan, semuanya lewat menu interaktif.

## Anggota Kelompok

Nama: Naufal Ghaisan Zafif Ginting (261401070) KOM: B Lab: 3

Nama: Lovita Amanda Simanjuntak (261401147) KOM : B Lab: 4

Nama: 
## Fitur Utama

1. Menu Interaktif
Menu utama berjalan dalam perulangan `repeat-until` dan baru berhenti saat pengguna
memilih `0` (Keluar). Pilihan diproses dengan `case-of`: 1 Daftar tarif, 2 Sesi baru,
3 Pesan makanan.

2. Daftar Tarif
Menampilkan tarif per jam: Reguler Rp5.000, VIP Rp8.000, Gaming Rp10.000, serta
aturan diskon.

3. Sesi Baru (Hitung Biaya Main)
- Pengguna memasukkan nama, memilih paket (`case-of`), dan memasukkan lama main.
- Lama main divalidasi dengan `while-do` sampai tidak negatif. Mengisi `0` berarti
  sesi dibatalkan.
- Subtotal = tarif per jam x lama main.
- Diskon ditentukan dengan `if-then-else` bertingkat:
  - lama main 5 jam atau lebih: diskon 15%
  - lama main 3 jam atau lebih: diskon 10%
  - selain itu: tanpa diskon
- Total bayar = subtotal - diskon, lalu struk dicetak dengan garis pemisah memakai
  perulangan `for-to-do`.

4. Pesan Makanan dan Minuman
- Pengguna memilih menu (Mie Instan, Nasi Goreng, Es Teh, Kopi) berulang kali dalam
  perulangan `repeat-until`.
- `break` dipakai untuk keluar dari perulangan saat memilih `0` (Selesai).
- `continue` dipakai untuk melewati proses saat menu tidak ada atau jumlah tidak valid,
  sehingga pengguna langsung diminta memilih lagi.
- Harga item dipilih dengan `case-of`, lalu total makanan diakumulasi dan struk dicetak.

5. Validasi Input Angka
Function `bacaAngka` membaca input sebagai teks, lalu mengubahnya ke angka dengan `val`.
Jika pengguna mengetik huruf atau mengosongkan input, program menampilkan pesan
"Input harus berupa angka!" dan meminta input ulang, sehingga program tidak error.


