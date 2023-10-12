# Tarista Dwi Silvia
# TI-3A
# 2141720014
# PERTEMUAN7 LAYOUT DAN NAVIGASI

# Praktikum 1: Membangun Layout di Flutter
Langkah 1: Buat Project Baru
Buatlah sebuah project flutter baru dengan nama layout_flutter. Atau sesuaikan style laporan praktikum yang Anda buat.

# Langkah 2: Buka file lib/main.dart
Buka file main.dart lalu ganti dengan kode berikut. Isi nama dan NIM Anda di text title.

<img width="491" alt="image" src="https://github.com/taristadwi/MobileTaristaSemester5/assets/119827471/0ecffa25-0167-463c-a608-1039876aeab1">


# Langkah 3: Identifikasi layout diagram
Langkah pertama adalah memecah tata letak menjadi elemen dasarnya:

Identifikasi baris dan kolom.
Apakah tata letaknya menyertakan kisi-kisi (grid)?
Apakah ada elemen yang tumpang tindih?
Apakah UI memerlukan tab?
Perhatikan area yang memerlukan alignment, padding, atau borders.
Elemen menjadi satu kolom terdiri dari gambar, dua baris, dan satu blok teks.

Baris pertama, disebut "Judul", terdiri dari tiga komponen: kolom teks, ikon bintang, dan sebuah angka. Terdapat dua baris teks. Kolom pertama ini mengambil banyak ruang, sehingga perlu ditempatkan dalam sebuah widget yang dapat diperluas.

Baris kedua, disebut bagian Tombol, juga memiliki 3 anak: setiap anak merupakan kolom yang berisi ikon dan teks.

# Langkah 4: Implementasi title row
Pertama, Anda akan membuat kolom bagian kiri pada judul. Tambahkan kode berikut di bagian atas metode build() di dalam kelas MyApp:

<img width="393" alt="image" src="https://github.com/taristadwi/MobileTaristaSemester5/assets/119827471/f24416a0-ec9d-4dd9-95db-16df67ec68de">


<img width="446" alt="image" src="https://github.com/taristadwi/MobileTaristaSemester5/assets/119827471/1e3707e3-e16f-439c-9a96-bae390a69d94">


<img width="283" alt="image" src="https://github.com/taristadwi/MobileTaristaSemester5/assets/119827471/18e2d57a-5119-49d6-a144-71a10318cb09">


Hasil Running:

<img width="371" alt="image" src="https://github.com/taristadwi/MobileTaristaSemester5/assets/119827471/315d79c6-b1a3-4bda-a532-7f10c0402ad8">

# Praktikum 2: Implementasi button row

# Langkah 1: Buat method Column _buildButtonColumn

Bagian tombol berisi 3 kolom yang menggunakan tata letak yang sama—sebuah ikon di atas baris teks. Kolom pada baris ini diberi jarak yang sama, dan teks serta ikon diberi warna primer.

Karena kode untuk membangun setiap kolom hampir sama, buatlah metode pembantu pribadi bernama buildButtonColumn(), yang mempunyai parameter warna, Icon dan Text, sehingga dapat mengembalikan kolom dengan widgetnya sesuai dengan warna tertentu.

lib/main.dart (_buildButtonColumn)

<img width="371" alt="image" src="https://github.com/taristadwi/MobileTaristaSemester5/assets/119827471/5ce6a13d-2840-4d65-aa08-7cc745c708fe">


<img width="476" alt="image" src="https://github.com/taristadwi/MobileTaristaSemester5/assets/119827471/8302087e-85e4-4c54-8290-1d1cee5c933a">

# Langkah 2: Buat widget buttonSection

Buat Fungsi untuk menambahkan ikon langsung ke kolom. Teks berada di dalam Container dengan margin hanya di bagian atas, yang memisahkan teks dari ikon.

Bangun baris yang berisi kolom-kolom ini dengan memanggil fungsi dan set warna, Icon, dan teks khusus melalui parameter ke kolom tersebut. Sejajarkan kolom di sepanjang sumbu utama menggunakan MainAxisAlignment.spaceEvenly untuk mengatur ruang kosong secara merata sebelum, di antara, dan setelah setiap kolom. Tambahkan kode berikut tepat di bawah deklarasi titleSection di dalam metode build():

lib/main.dart (buttonSection)

<img width="398" alt="image" src="https://github.com/taristadwi/MobileTaristaSemester5/assets/119827471/79e92cb4-be5a-4baa-b92c-787ba0de59be">

# Langkah 3: Tambah button section ke body
Tambahkan variabel buttonSection ke dalam body seperti berikut:

<img width="89" alt="image" src="https://github.com/taristadwi/MobileTaristaSemester5/assets/119827471/bd0e63f7-511f-40c7-af7d-29af221d21f6">


# Praktikum 3: Implementasi text section

# Langkah 1: Buat widget textSection
Tentukan bagian teks sebagai variabel. Masukkan teks ke dalam Container dan tambahkan padding di sepanjang setiap tepinya. Tambahkan kode berikut tepat di bawah deklarasi buttonSection:

<img width="726" alt="image" src="https://github.com/taristadwi/MobileTaristaSemester5/assets/119827471/9ec807c8-6a46-4ede-851d-f88cf0eb1f49">

Dengan memberi nilai softWrap = true, baris teks akan memenuhi lebar kolom sebelum membungkusnya pada batas kata.

# Langkah 2: Tambahkan variabel text section ke body

Tambahkan widget variabel textSection ke dalam body seperti berikut:

<img width="129" alt="image" src="https://github.com/taristadwi/MobileTaristaSemester5/assets/119827471/0f4a44c8-9729-42ff-b03b-fd0e2be8ad6d">

# Praktikum 4: Implementasi image section

# Langkah 1: Siapkan aset gambar

Anda dapat mencari gambar di internet yang ingin ditampilkan. Buatlah folder images di root project layout_flutter. Masukkan file gambar tersebut ke folder images, lalu set nama file tersebut ke file pubspec.yaml seperti berikut:

<img width="115" alt="image" src="https://github.com/taristadwi/MobileTaristaSemester5/assets/119827471/d5cc0ee5-d722-43e0-abe8-60f501529b43">

# Langkah 2: Tambahkan gambar ke body
Tambahkan aset gambar ke dalam body seperti berikut:

<img width="121" alt="image" src="https://github.com/taristadwi/MobileTaristaSemester5/assets/119827471/12007200-4c71-4494-b3d3-363cf5fc976e">

BoxFit.cover memberi tahu kerangka kerja bahwa gambar harus sekecil mungkin tetapi menutupi seluruh kotak rendernya.

# Langkah 3: Terakhir, ubah menjadi ListView
Pada langkah terakhir ini, atur semua elemen dalam ListView, bukan Column, karena ListView mendukung scroll yang dinamis saat aplikasi dijalankan pada perangkat yang resolusinya lebih kecil.

<img width="121" alt="image" src="https://github.com/taristadwi/MobileTaristaSemester5/assets/119827471/81544847-06b2-4bc5-b0d3-af57f46de348">


hasil running:


<img width="374" alt="image" src="https://github.com/taristadwi/MobileTaristaSemester5/assets/119827471/09e6c65d-3c56-41c3-a753-7c8fd27de4fc">




