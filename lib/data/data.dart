import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi/pages/video_1_page.dart';

class Data {
  final int id;
  final String imagePath;
  final String thumb;
  final String content;

  Data(this.id, this.thumb, this.imagePath, this.content);
}

List<Data> data = [
  Data(1, 'assets/d-1.png', 'assets/b-1.png',
      'Langkah pembuatan lampu hias\n dari botol kaca\n\nBahan-bahan yang digunakan\n\n Bahan-bahan yang digunakan\n\n 1. Botol kaca bekas dengan berbagai warna\n 2. kawat tebal, tapi yang masih bisa ditekuk. bisa bekas bisa juga beli di toko material bangunan.\n 3. Kabel\n 4. bohlam lampu kecil berwarna putih\n 5. Kawat ukuran disesuaikan\n\n Cara Membuatnya :\n 1. Bersihkan botol luar dalam biar bening supaya nanti cahanya bisa terang\n 2. Lepas dan bersihkan juga bekas label kertas yang menempel pada badan botol.\n 3. Sambungkan kabel dengan bohlam lampu\n 4. Buat kawat agar berbentuk Lingkaran\n 5. Masukan Lampu yang sudah disambung dengan kabel ke dalam botol\n 6. lilit atau ikat kabel kabet tersebut dengan kawat yang sudah dibuat melingkar.\n 7. Lampu siap digunakan.\n'),
  Data(2, 'assets/d-3.png', 'assets/b-2.png',
      'Langkah pembuatan \ntempat penyimpanan berkas\n\nBahan-bahan yang digunakan\n 1. Kardus \n2. Gunting\n 3. Kertas kado\n 4. Lem\n 5. Cutter\n 6. Pensil\n\n Cara membuatnya :\n 1. Buat ukuran box file yang akan kita buat. Lalu, ukur kardus sesuai ukuran\n 2. Gunting kardus sesuai ukuran,maka bagian - bagian box file akan terbentuk\n 3. Setelah kardus selesai di gunting, mulailah merangkai bagian - bagian tersebut. Rekatkan menggunakan lem.\n 4. Jika sudah jadi, hias box file dengan menempelkan kertas hias pada box file sesuai keinginan.\n 5. Setelah semua selesai , box file siap di gunakan.\n'),
  Data(3, 'assets/d-2.png', 'assets/b-3.png',
      'Langkah pembuatan tempat \npensil dari botol plastik\n\nBahan-bahan yang digunakan\n\n 1. Botol plastik.\n 2. Spidol.\n 3. Kater.\n 4. Gunting.\n 5. Cat warna putih.\n 6. Cat warna pink.\n 7. Kuas.\n 8. Cat pilox warna clear.\n\nCara membuatnya\n 1. Beri garis melingkar kemudian beri 2 segi tiga berjajar di atas garis melingkar\n 2. Potong garis yang sudah kira buat dengan cutter atau gunting\n 3. Beri warna dasar dengan warna putih kemudian keringkan\n 4. Beri hiasan dengan menggambar telinga di segitiga yang sudah dibuat. kemudian dibawahnya gambar mata dan mulut kucing\n 5. Semprotkan pilox clear dengan merata\n'),
  Data(4, 'assets/d-4.png', 'assets/b-4.png',
      'Langkah pembuatan tempat pensil\n dari Kaleng\n\nBahan-bahan yang digunakan\n\n Bahan-bahan yang digunakan\n\n 1 kaleng\n 2 tusuk sate\n 3 lem tembak\n 4 tali rami\n 6 tali putih\n kedua \n\ncara membuatnya\n 1. beri lem pada kaleng, lurus dari atas ke bawah kemudian tempel satu tusuk sate, ulangi hingga setengah bagian luar kaleng tertutup dengan tusuk sate, setelah itu potong bagian atas tusuk sate.\n 2. ulangi langkah pertama hingga memenuhi semua bagian luar kaleng. kemudian potong lagi bagian atas tusuk sate.\n 3, beri lem melingkar kemudian tempel tali rami. dibagian seperempat kaleng dari bawah dan sepermpat kaleng dari bagian atas.\n 4, buat bentuk ikat sepatu dari tali putih. kemudian tempel bagian depan kaleng.\n'),
];

List<Data> barangHasilDaurUlang = [
  Data(1, 'assets/d-1.png', 'assets/b-1.png',
      'Langkah pembuatan lampu hias\n dari botol kaca\n\nBahan-bahan yang digunakan\n\n Bahan-bahan yang digunakan\n\n 1. Botol kaca bekas dengan berbagai warna\n 2. kawat tebal, tapi yang masih bisa ditekuk. bisa bekas bisa juga beli di toko material bangunan.\n 3. Kabel\n 4. bohlam lampu kecil berwarna putih\n 5. Kawat ukuran disesuaikan\n\n Cara Membuatnya :\n 1. Bersihkan botol luar dalam biar bening supaya nanti cahanya bisa terang\n 2. Lepas dan bersihkan juga bekas label kertas yang menempel pada badan botol.\n 3. Sambungkan kabel dengan bohlam lampu\n 4. Buat kawat agar berbentuk Lingkaran\n 5. Masukan Lampu yang sudah disambung dengan kabel ke dalam botol\n 6. lilit atau ikat kabel kabet tersebut dengan kawat yang sudah dibuat melingkar.\n 7. Lampu siap digunakan.\n'),
  Data(2, 'assets/d-2.png', 'assets/b-2.png',
      'Langkah pembuatan \ntempat penyimpanan berkas\n\nBahan-bahan yang digunakan\n 1. Kardus \n2. Gunting\n 3. Kertas kado\n 4. Lem\n 5. Cutter\n 6. Pensil\n\n Cara membuatnya :\n 1. Buat ukuran box file yang akan kita buat. Lalu, ukur kardus sesuai ukuran\n 2. Gunting kardus sesuai ukuran,maka bagian - bagian box file akan terbentuk\n 3. Setelah kardus selesai di gunting, mulailah merangkai bagian - bagian tersebut. Rekatkan menggunakan lem.\n 4. Jika sudah jadi, hias box file dengan menempelkan kertas hias pada box file sesuai keinginan.\n 5. Setelah semua selesai , box file siap di gunakan.\n'),
  Data(3, 'assets/d-3.png', 'assets/b-3.png',
      'Langkah pembuatan tempat \npensil dari botol plastik\n\nBahan-bahan yang digunakan\n\n 1. Botol plastik.\n 2. Spidol.\n 3. Kater.\n 4. Gunting.\n 5. Cat warna putih.\n 6. Cat warna pink.\n 7. Kuas.\n 8. Cat pilox warna clear.\n\nCara membuatnya\n 1. Beri garis melingkar kemudian beri 2 segi tiga berjajar di atas garis melingkar\n 2. Potong garis yang sudah kira buat dengan cutter atau gunting\n 3. Beri warna dasar dengan warna putih kemudian keringkan\n 4. Beri hiasan dengan menggambar telinga di segitiga yang sudah dibuat. kemudian dibawahnya gambar mata dan mulut kucing\n 5. Semprotkan pilox clear dengan merata\n'),
  Data(4, 'assets/d-4.png', 'assets/b-4.png',
      'Langkah pembuatan tempat pensil\n dari Kaleng\n\nBahan-bahan yang digunakan\n\n Bahan-bahan yang digunakan\n\n 1 kaleng\n 2 tusuk sate\n 3 lem tembak\n 4 tali rami\n 6 tali putih\n kedua \n\ncara membuatnya\n 1. beri lem pada kaleng, lurus dari atas ke bawah kemudian tempel satu tusuk sate, ulangi hingga setengah bagian luar kaleng tertutup dengan tusuk sate, setelah itu potong bagian atas tusuk sate.\n 2. ulangi langkah pertama hingga memenuhi semua bagian luar kaleng. kemudian potong lagi bagian atas tusuk sate.\n 3, beri lem melingkar kemudian tempel tali rami. dibagian seperempat kaleng dari bawah dan sepermpat kaleng dari bagian atas.\n 4, buat bentuk ikat sepatu dari tali putih. kemudian tempel bagian depan kaleng.\n'),
];
