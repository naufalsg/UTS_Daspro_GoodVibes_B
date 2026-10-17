UTS_Daspro_GoodVibes_B


Space.net Internet Cafe - Program Billing Warnet

 
## Deskripsi Singkat

Space.Net Internet Cafe adalah program Pascal berbasis teks untuk membantu
operator warnet menghitung biaya sewa komputer dan pesanan makanan/minuman pelanggan.
Program menampilkan daftar tarif, menghitung total bayar sesi bermain lengkap dengan
diskon, dan menghitung total pesanan makanan, semuanya lewat menu interaktif.

## Anggota Kelompok

Nama: Naufal Ghaisan Zafif Ginting (261401070) KOM: B Lab: 3

Nama: Lovita Amanda Simanjuntak (261401147) KOM: B Lab: 4

Nama: Nurul Anggraini Samosir (261401039) KOM: B Lab: 3
## Fitur Utama

### 1. Daftar Tarif
Menampilkan tarif per jam dan aturan diskon.

Reguler | Rp5.000/jam 
VIP | Rp8.000/jam 
Gaming  Rp10.000/jam 

Diskon: 10% untuk durasi mulai 3 jam, dan 15% untuk durasi mulai 5 jam.

### 2. Sesi Baru
Pengguna memasukkan nama, memilih paket (1-3), lalu mengisi lama main dalam jam (0 untuk membatalkan). Program menghitung subtotal, diskon, dan total, lalu mencetak struk.

Logika singkat:
- Paket dipilih dengan `case-of`. Input di luar 1-3 ditolak dan diminta ulang lewat `while-do`.
- Lama main divalidasi dengan `while-do`: nilai negatif ditolak dan diminta ulang.
- Subtotal = tarif per jam x lama main.
- Diskon ditentukan dengan `if-then-else` bertingkat: 15% jika 5 jam atau lebih, 10% jika 3 jam atau lebih, selain itu 0.
- Total = subtotal - diskon.

### 3. Pesan Makanan
Pengguna memilih makanan atau minuman dari menu (Mie Instan, Nasi Goreng, Es Teh, Kopi), mengisi jumlah, dan bisa memesan beberapa item berturut-turut sampai memilih 0 (Selesai). Program mencetak total pesanan.
