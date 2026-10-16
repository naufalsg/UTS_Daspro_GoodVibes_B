program spacenet;

var
  pilihanMenu, pilihanPaket, lamaMain, garis, pilihanMakanan, jumlah: integer;
  hargaPerJam, subtotal, diskon, totalBayar, hargaItem, totalMakanan: real;
  namaPelanggan, namaPaket: string;


function bacaAngka(pesan: string): integer;
var
  teks: string;
  hasil, kode: integer;
begin
  repeat
    write(pesan);
    readln(teks);
    val(teks, hasil, kode);
    if kode <> 0 then
      writeln('Input harus berupa angka!');
  until kode = 0;
  bacaAngka := hasil;
end;

begin
  repeat
    writeln;
    writeln('=== SPACE.NET INTERNET CAFE ===');
    writeln('1. Daftar tarif');
    writeln('2. Sesi baru');
    writeln('3. Pesan makanan');
    writeln('0. Keluar');
    pilihanMenu := bacaAngka('Pilih: ');

    case pilihanMenu of
    
      1: begin
           writeln;
           writeln('Reguler : Rp5000/jam');
           writeln('VIP     : Rp8000/jam');
           writeln('Gaming  : Rp10000/jam');
           writeln('Diskon 10% mulai 3 jam, 15% mulai 5 jam');
         end;

      
      2: begin
           write('Nama: ');
           readln(namaPelanggan);
           writeln('1. Reguler  2. VIP  3. Gaming');
           pilihanPaket := bacaAngka('Paket: ');

           case pilihanPaket of
             2:
             begin
               namaPaket := 'VIP';
               hargaPerJam := 8000;
             end;
             3:
             begin
               namaPaket := 'Gaming';
               hargaPerJam := 10000;
             end;
           else
             begin
               namaPaket := 'Reguler';
               hargaPerJam := 5000;
             end;
           end;

           lamaMain := -1;
           while lamaMain < 0 do
           begin
             lamaMain := bacaAngka('Lama main (jam, 0 = batal): ');
             if lamaMain < 0 then
               writeln('Tidak valid!');
           end;

           if lamaMain = 0 then
             writeln('Sesi dibatalkan')
           else
           begin
             subtotal := hargaPerJam * lamaMain;

             if lamaMain >= 5 then
               diskon := subtotal * 0.15
             else if lamaMain >= 3 then
               diskon := subtotal * 0.1
             else
               diskon := 0;

             totalBayar := subtotal - diskon;

             writeln;
             for garis := 1 to 30 do write('-');
             writeln;
             writeln('Nama     : ', namaPelanggan);
             writeln('Paket    : ', namaPaket);
             writeln('Durasi   : ', lamaMain, ' jam');
             writeln('Subtotal : Rp', subtotal:0:0);
             writeln('Diskon   : Rp', diskon:0:0);
             writeln('Total    : Rp', totalBayar:0:0);
             for garis := 1 to 30 do write('-');
             writeln;
           end;
         end;


      3: begin
           write('Nama: ');
           readln(namaPelanggan);
           totalMakanan := 0;

           repeat
             writeln;
             writeln('--- MENU MAKANAN & MINUMAN ---');
             writeln('1. Mie Instan   Rp6000');
             writeln('2. Nasi Goreng  Rp12000');
             writeln('3. Es Teh       Rp4000');
             writeln('4. Kopi         Rp5000');
             writeln('0. Selesai');
             pilihanMakanan := bacaAngka('Pilih: ');

             if pilihanMakanan = 0 then
               break;

             case pilihanMakanan of
               1: hargaItem := 6000;
               2: hargaItem := 12000;
               3: hargaItem := 4000;
               4: hargaItem := 5000;
             else
               begin
                 writeln('Menu tidak ada!');
                 continue;
               end;
             end;

             jumlah := bacaAngka('Jumlah: ');
             if jumlah <= 0 then
             begin
               writeln('Jumlah tidak valid!');
               continue;
             end;

             totalMakanan := totalMakanan + hargaItem * jumlah;
             writeln('Ditambahkan: Rp', hargaItem * jumlah:0:0);
           until pilihanMakanan = 0;

           writeln;
           if totalMakanan = 0 then
             writeln('Tidak ada pesanan')
           else
           begin
             for garis := 1 to 30 do write('-');
             writeln;
             writeln('Nama         : ', namaPelanggan);
             writeln('Total makan  : Rp', totalMakanan:0:0);
             for garis := 1 to 30 do write('-');
             writeln;
           end;
         end;

      0: writeln('Terima kasih');
    else
      writeln('Menu tidak ada');
    end;
  until pilihanMenu = 0;
end.