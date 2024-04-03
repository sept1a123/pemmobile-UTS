class ProgramStudi {
  final String nama;
  final String icon;
  final String deskripsi;
  final String visi;
  final List<String> misi;
  final String akreditasi;
  final String ketuaProdi;
  final String ketuaLogo;
  final List<String> dosenImages;
  final List<String> dosenNames;
  final String website;
  final String email;
  final List<String> prestasiMahasiswa;
  final List<String> prestasiMahasiswaDeskripsi;

  ProgramStudi({
    required this.nama,
    required this.icon,
    required this.deskripsi,
    required this.visi,
    required this.misi,
    required this.akreditasi,
    required this.ketuaProdi,
    required this.ketuaLogo,
    required this.dosenImages,
    required this.dosenNames,
    required this.website,
    required this.email,
    required this.prestasiMahasiswa,
    required this.prestasiMahasiswaDeskripsi,
  });
}

class ProdiData {
  static List<ProgramStudi> prodiList = [
    ProgramStudi(
      nama: 'S1 AGROTEKNOLOGI',
      icon: 'assets/AGRO.png',
      deskripsi:
          'Jurusan Agroteknologi, Fakultas Pertanian, Universitas Pembangunan Nasional (UPN) “Veteran” Jawa Timur didirikan pada tanggal 17 Mei 1968 yang diresmikan oleh Menteri Urusan Veteran dan Demobalisasi RI, dengan SK pendirian Program Studi No : 062/Kpts/Mentransvet/68, SK Izin Operasional No : 321/D/T/2008 didukung SK penggabungan Program Studi No : 2449/D/T/2009. Program Studi Agroteknologi mencapai peringkat akreditasi A (362) dengan SK BAN – PT No : 972/SK/BAN-PT/Akred/S/IX/2015. Program Studi Agroteknologi terdiri dari 3 bidang minat yaitu, Bidang Ilmu Tanah, Bidang Ilmu Hama Penyakit Tanaman dan Bidang Agronomi.',
      visi:
          '"Menjadi program studi Agroteknologi unggul dalam penyelenggaraan pendidikan pertanian yang berkualitas berbasis IPTEK dan kewirausahaan guna pengembangan IPTEKS pertanian yang berkarakter belanegara."',
      misi: [
        '1. Menyelenggarakan pendidikan pertanian yang berkualitas berbasis ipteks dan kewirausahaan untuk menghasilkan lulusan yang berkarakter dan berdaya saing di dunia kerja',
        '2. Menyelenggarakan dan mengembangkan penelitian yang berorientasi global untuk meningkatkan kesejahteraan masyarakat\n'
            '3. Menyelenggarakan pengabdian kepada masyarakat melalui pembinaan dan pendampingan berbasis ipteks dan kearifan lokal\n'
            '4. Mengimplementasikan kerjasama terdapat dengan stakeholder nasional dan internasional\n'
            '5. Mengembangkan kualitas sumberdaya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan dan manajerial di bidang Agroteknologi\n'
            '6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu',
      ],
      akreditasi: 'A',
      ketuaLogo: 'assets/ketuaS1Agro.png',
      ketuaProdi: 'Dr.Ir. Bakti Wisnu Widjajani, MP',
      dosenImages: [
        'assets/S1_AGRO_DOSEN1.jpeg',
        'assets/S1_AGRO_DOSEN2.jpeg',
        'assets/S1_AGRO_DOSEN3.jpg',
      ],
      dosenNames: [
        'Dr.Ir.Ramdan Hidayat, M.S',
        'Dr.Ir.Pangesti Nugrahani, MS.i',
        'Dr.Ir.Sukendah, M.Si',
      ],
      website: 'https://agrotek.upnjatim.ac.id',
      email: 'agrotek@upnjatim.ac.id',
      prestasiMahasiswa: [
        'assets/S1_AGRO_PRESTASI1.jpg',
        'assets/S1_AGRO_PRESTASI2.jpg',
        'assets/S1_AGRO_PRESTASI3.jpg',
        'assets/S1_AGRO_PRESTASI4.jpg',
        'assets/S1_AGRO_PRESTASI5.jpg',
        'assets/S1_AGRO_PRESTASI6.jpg',
        'assets/S1_AGRO_PRESTASI7.jpg',
      ],
      prestasiMahasiswaDeskripsi: [
        'Juara 1 Lomba Esai TIUPPS (Temu Ilmiah UKM Penalaran Penelitian Surabaya)',
        'Bronze Medal, Agritech Research and Entreprenuer Innovation (AGREETION) Tahun 2023',
        'Bronze Medal, International Essay Competition (Integration) FTIP Univ Brawijaya Tahun 2023',
        'Juara Beregu Divisi Naasional Putri Kejuaraan Panahan FLY NAVY INTERNATIONAL ARCHERY OPEN Tahun 2022 Tingkat Internasional',
        'Medali Emas Cabor Panahan Beregu Divisi Nasional Putri PORPROV Jawa Timur VII Tahun 2022',
        'Juara 2 PORPROV VII Jawa Timur Tahun 2023, KONI Jatim, Tim Bola Tangan Putri Kabupaten Gresik, Medali Perak',
        'Juara 2 AMN CUP (Asrama Mahasiswa Nusantara) Tahun 2023',
      ],
    ),
    ProgramStudi(
      nama: 'S2 AGROTEKNOLOGI',
      icon: 'assets/AGRO.png',
      deskripsi:
          'Terhitung sejak tanggal 06 Oktober 2014 UPN “Veteran” Jawa Timur yang semula berada dibawah Yayasan Kesejahteraan Pendidikan dan Perumahan dengan status Perguruan Tinggi Swasta dikembalikan menjadi Perguruan Tinggi Negeri dengan Peraturan Presiden nomor 122 tahun 2014 terdiri dari 7 Fakultas  dengan 19 program studi strata 1 (S1) dan 3 program studi strata 2 (S2) di bawah pembinaan Kementerian Riset, Teknologi dam Pendidikan Tinggi RI dengan ciri khas kebelanegaraan Jurusan Agroteknologi  saat ini  memiliki 2 program studi yaitu jenjang S-1 Agroteknologi dan jenjang S-2 Magister Agroteknologi. Program studi Sarjana Agroteknologi  mendapatkan akreditasi A dari BANPT-DIKTI. Dengan keluarnya KEPPRES No : 62/2014 dan Akreditasi A memacu Fakultas Pertanian untuk membuka program masgister Agroteknologi. Program Magister Agroteknologi Pascasarjana Fakultas Pertanian Universitas Pembangunan Nasional “Veteran” Jawa Timur berdiri tepat pada tahun 2017, dengan ijin operasi pendirian Program Studi Magister Agroteknologi nomor 224/KPT/I/2017. Pada tahun 2020 PS Magister Agroteknologi dengan 9 standar penialaian terakreditasi Baik dari BAN-PT Nomor : 7065/SK/BAN-PT/Akred/M/XI/2020. Program Pascasarjana memiliki berbagai macam fasilitas yang memadai seperti ruang kuliah yang nyaman, laboratorium, fasilitas IT, wifi area, teleconference, laboratorium bahasa dan perpustakaan. Tenaga pengajar Guru Besar, Doktor, dan Praktisi/Profesional sebagai dosen tamu dan dosen tetap.',
      visi:
          'Menjadi penyelenggara pendidikan yang unggul dalam pengembangan IPTEKS pertanian berkelanjutan dan kewirausahaan, berjejaring global serta berkarakter belanegara”. Program Studi Magister Agroteknologi Fakultas Pertanian UPN “Veteran” Jatim bertekad untuk berperan lebih luas dalam memajukan IPTEKS pertanian untuk menghasilkan solusi aplikatif bagi dunia usaha/industri dan pembangunan nasional melalui riset-riset unggul, serta mampu berkompetisi di tingkat global namun tidak lupa dengan akar budaya bangsa Indonesia',
      misi: [
        '1. Menyelenggarakan pendidikan berkualitas dengan pemanfaatan hasil penelitian dan berkarakter bela negara',
        '2. Menyelenggarakan penelitian strategis dan berkesinambungan untuk mengembangkan IPTEKS pertanina',
        '3. Menyelenggarakan pengabdian kepada masyarakat melalui penerapan TTG bebrbasis kearifan lokal',
        '4. Meningkatkan Kerjasama Institusional dalam dan luar negeri melalui Litdimas',
      ],
      akreditasi: 'Baik Sekali',
      ketuaLogo: 'assets/ketuaS1Agro.png',
      ketuaProdi: 'Dr.Ir. Bakti Wisnu Widjajani, MP',
      dosenImages: [
        'assets/S2_AGRO_DOSEN1.png',
        'assets/S2_AGRO_DOSEN2.png',
        'assets/S2_AGRO_DOSEN3.png',
      ],
      dosenNames: [
        'Dr.Ir.Moch. Arifin, M.T',
        'Dr.Ir.Tri Mujoko, M.P',
        'Dr.Ir.Sri Wiyatiningsih, M.P',
      ],
      website: 'https://magrotek.upnjatim.ac.id',
      email: 'magrotek@upnjatim.ac.id',
      prestasiMahasiswa: [
        'assets/profilKosong.png',
      ],
      prestasiMahasiswaDeskripsi: [
        'Tidak ada',
      ],
    ),
    ProgramStudi(
      nama: 'S1 AGRIBISNIS',
      icon: 'assets/AGRI.png',
      deskripsi:
          'Fakultas Pertanian sudah berdiri selama 51 tahun tepatnya sejak tanggal 17 Mei 1968. Sebagai salah satu lembaga pendidikan tinggi, Fakultas Pertanian UPN “Veteran” Jawa Timur selama kurun waktu 1968-2019 telah mengalami berbagai perubahan status, yaitu : Periode I (17 Mei 1968) merupakan tonggak berdirinya Fakultas Pertanian bersamaan dengan berdirinya Perguruan Tinggi Pembangunan Nasional (PTPN) “Veteran” Cabang Jawa Timur berdasarkan Surat Keputusan Kementerian Transmigrasi, Veteran dan Demobilisasi No. 062/Kpts/ Mentransved/68 berpusat di Yogyakarta sesuai SK Rektor PTPN “Veteran” Yogyakarta.  No. 11/Rek/kpts/ PTPN/68 tanggal 5 September 1968 berada dibawah naungan Dephankam/Pangab dengan status sebagai Perguruan Tinggi Kedinasan sampai dengan tahun 1993. Pada tahun 1977 terjadi perubahan nama PTPN “Veteran” Cabang Jawa Timur menjadi Universitas Pembangunan Nasional “Veteran” Cabang Jawa Timur. Periode II 1994-2014 status pembinaan langsung dibawah binaan Yayasan Kejuangan Panglima Besar Sudirman (YKPBS). Pada tahun 1993/1994 telah berdiri sendiri lepas dari UPN Yogyakarta. Sejak tanggal  29 Nopember 1994 berdasarkan Surat Keputusan Bersama Mendikbud-Menhankam Nomor : 0307/O/1994 – Kep/10/XI/1994 Fakultas Pertanian memperoleh status swasta disamakan. Berdasarkan Surat keputusan Badan Akreditasi Nasional Perguruan Tinggi No. 001/BAN-PT/Ak-1/VIII/1998 tanggal 11 Agustus 1998 telah memperoleh status terakreditasi penuh untuk semua Jurusan (Agronomi, HPT, Tanah dan Sosial Ekonomi Pertanian) dengan Nilai B. Program Magister Agribisnis Pascasarjana Fakultas Pertanian Universitas Pembangunan Nasional “Veteran” Jawa Timur berdiri tepat pada tahun 1999, dengan membuka program studi Magister Manajemen Agribisnis, (SK Dirjen Dikti No. 390/Dikti/Kep/1999). Berdasarkan SK Dirjen Dikti Nomor : 163/DIKTI/Kep/2007 Tanggal : 29 November 2007, tentang penataan Program Studi Fakultas Pertanian, maka  Fakultas Pertanian yang semula menjadi 4 (empat) Jurusan yaitu Hama Penyakit Tanaman, Ilmu Tanah, Agronomi, dan Sosial Ekonomi Pertanian, menjadi 2 (dua) Program Studi yaitu Progdi Agroteknologi dan Agribisnis. Kedua Program Studi tersebut berdasarkan penilaian BAN-PT mulai tahun 2010 terakreditasi A. Periode III (Negeri) Berdasarkan KEPPRES No : 62/2014 Tanggal 6 Oktober 2014 UPN “Veteran” Jawa Timur resmi berubah menjadi Perguruan Tinggi Negeri untuk semua Fakultas termasuk Fakultas Pertanian. Jurusan Agribisnis memiliki tiga program studi yaitu jenjang S-1 Agribisnis dan jenjang S-2 Magister Agribisnis dan S3 Program Doktor Agribisnis. Program studi S1 Agribisnis mendapatkan akreditasi A untuk yang kedua kalinya dari BANPT-DIKTI yang dikeluarkan pada tanggal 7 Nopember 2015. Program studi S2 Magister Agribisnis mendapatkan akreditasi A untuk yang kedua kalinya dari BANPT-DIKTI yang dikeluarkan pada tanggal 9 April 2019. Program Doktor S3 Program studi Nomor 911/M/2020 tentang Izin Pembukaan Program Studi Agribisnis Program Doktor pada Universitas Pembangunan Nasional “Veteran” Jawa Timur',
      visi:
          'Visi Keilmuan Program Studi Agribisnis, Fakultas Pertanian, UPN “Veteran” Jawa Timur adalah terwujudnya Program Studi Agribisnis Fakultas Pertanian UPNVJT yang unggul dalam Agripreneurship Digital, menghasilkan sumberdaya manusia profesional, dan berkarakter bela negara.',
      misi: [
        '- tidak ada',
      ],
      akreditasi: 'Unggul',
      ketuaProdi: 'Prof.Dr.Ir. Syarif Imam Hidayat, M.M',
      ketuaLogo: 'assets/ketuaS1Agri.jpg',
      dosenImages: [
        'assets/S1_AGRI_DOSEN1.jpg',
        'assets/S1_AGRI_DOSEN2.jpg',
        'assets/S1_AGRI_DOSEN3.jpg',
      ],
      dosenNames: [
        'Dr. Gyska Indah Harya, S.P., M.Agr.',
        'Ir. Sri Widayanti, M.P.',
        'Dr. Noor Rizkiyah, S.P., M.P.',
      ],
      website: 'https://agribis.upnjatim.ac.id',
      email: 'agribisnis@upnjatim.ac.id',
      prestasiMahasiswa: [
        'assets/S1_AGRI_PRESTASI1.jpg',
        'assets/S1_AGRI_PRESTASI2.jpg',
        'assets/S1_AGRI_PRESTASI3.jpg',
        'assets/S1_AGRI_PRESTASI4.jpg',
      ],
      prestasiMahasiswaDeskripsi: [
        'Juara 3 Internasional Students Virtual Mobility Program (ISVMP) Tahun 2022',
        'Medali Emas 3x3 Bola Basket Kota Suarabaya PORPROV VII Jawa Timur Tahun 2022',
        'Medali Emas Cabor Sepak Takraw kategori Inter Regu Putri, dan Medali Perak Cabor Sepak Takraw kategori double event putri PORPROV VII Jawa Timur tahun 2022',
        'Medali Emas Cabor Menembak Nomor 10 Meter Air Rifle Putri PORPROV VII Jawa Timur Tahun 2022',
      ],
    ),
    ProgramStudi(
      nama: 'S2 AGRIBISNIS',
      icon: 'assets/AGRI.png',
      deskripsi:
          'Program Magister Agribisnis Pascasarjana Fakultas Pertanian Universitas Pembangunan Nasional “Veteran” Jawa Timur berdiri tepat pada tahun 1999, dengan membuka program studi Magister Manajemen Agribisnis, (SK Dirjen Dikti No. 390/Dikti/Kep/1999). Pada Tahun Akademik 2016/2017 jumlah mahasiswa aktif Magister Agribisnis sebanyak 39 orang. Sampai Semester Gasal Tahun 2016/2017 telah meluluskan Magister Agribisnis 490 orang. Program Pascasarjana memiliki berbagai macam fasilitas yang memadai seperti ruang kuliah yang nyaman, laboratorium komputer, fasilitas IT, wifi area, teleconference, laboratorium bahasa dan perpustakaan. Tenaga pengajar Guru Besar, Doktor, dan Praktisi/Profesional sebagai dosen tamu dan dosen tetap.',
      visi:
          '“MENJADI PROGRAM STUDI MAGISTER AGRIBISNIS YANG UNGGUL DAN BERKARAKTER BELA NEGARA”',
      misi: [
        '1. Menyelenggarakan pendidikan berkarakter bela negara yang berorientasi pada pengembangan agroindustri dan pemasaran sehingga mampu menciptakan/ mengisi peluang kerja dalam bidang agribisnis.',
        '2. Meningkatkan budaya riset dalam pengembangan bidang agribisnis yang berdaya guna untuk kesejahteraan masyarakat.',
        '3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset di bidang agribisnis dan kearifan lokal.',
        '4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabiitas pengelolaan anggaran.',
        '5. Mengembangkan kualitas sumberdaya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan dan menajerial di bidang agribisnis.',
        '6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu.',
        '7. Menyelenggarakan kerjasama institusional dengan stakeholder baik di bidang agribisnis baik dalam dan luar negeri.',
      ],
      akreditasi: 'Unggul',
      ketuaLogo: 'assets/ketuaS1Agri.jpg',
      ketuaProdi: 'Prof.Dr.Ir. Syarif Imam Hidayat, M.M',
      dosenImages: [
        'assets/S2_AGRI_DOSEN1.jpg',
        'assets/S2_AGRI_DOSEN2.jpg',
        'assets/S2_AGRI_DOSEN3.jpg',
      ],
      dosenNames: [
        'Dr.Ir. Hamidah Hendrarini, M.Si.',
        'Dr.Ir. Mubarokah, MT',
        'Dr.Ir. Eko Nurhadi, MS'
      ],
      website: 'https://magri.upnjatim.ac.id',
      email: 'magri@upnjatim.ac.id',
      prestasiMahasiswa: [
        'assets/profilKosong.png',
      ],
      prestasiMahasiswaDeskripsi: [
        'Tidak Ada',
      ],
    ),
    ProgramStudi(
      nama: 'S3 AGRBISNIS',
      icon: 'assets/AGRI.png',
      deskripsi:
          'Program studi doktor Agribisnis UPN “Veteran” Jawa Timur merupakan program studi doktor agribisnis pertama dan satu-satunya di Surabaya. Keberadaan Program Doktor Pertanian UPN “Veteran” Jawa Timur memiliki perjalanan yang panjang. Program Doktor Agribisnis merupakan satu – satunya program doktor yang dimiliki oleh UPN “Veteran” Jawa Timur. Program doktor agribisnis dimulai dari pengusulan tahun 2019 hingga akhirnya resmi berdiri pada tahun 2020. Program doktor agribisnis bertujuan untuk menemukan/ mengembangkan teori gagasan ilmiah baru serta memberikan kontribusi pada pengembangan serta pengamalan ilmu pengetahuan di bidang agribisnis. Selain itu potensi Indonesia sebagai salah satu negara di dunia yang memiliki kekayaan alam sangat besar baik kuantitas maupun keragaman. Dari sekian keanekaragaman hayati, Indonesia dikenal sebagai salah satu dari dua negara dengan julukan “Megadiversitas”. Namun demikian, kekayaan alam ini belum sepenuhnya dapat dikelola secara optimal, karena terbatasnya sumber daya manusia yang mampu menguasai dan mengembangkan IPTEK pertanian sesuai potensi tersebut. Program Doktor Agribisnis Pertanian UPN “Veteran” Jawa Timur diselenggarakan untuk menjawab permasalahan di atas dan diharapkan mampu menghasilkan tenaga akademik yang menguasai dan mampu mengembangkan Fakultas IPTEK melalui kegiatan penelitian yang sistematis, terprogram serta mampu menerapkan IPTEK untuk kesejahteraan masyarakat dan bangsa. Proses perkuliahan dan penelitian diarahkan untuk menjadikan lulusan Program Doktor Agribisnis Fakultas Pertanian UPN “Veteran” Jawa Timur selalu siap berkembang, dapat menyesuaikan diri dengan perkembangan masyarakat, dan selalu mengikuti kemajuan ilmu pengetahuan dan teknologi. Sejak diresmikan, Program Doktor Agribisnis, Fakultas Pertanian UPN “Veteran” Jawa Timur sudah mulai menerima mahasiswa baru melalui jalur Ujian Mandiri terpadu yang dikelola langsung oleh Lembaga Pengembangan Pembelajaran dan Penjaminan Mutu (LP3M) UPN “Veteran” Jawa Timur. Pengelolaan Program Doktor Agribisnis masih berlangganan dibawah naungan Jurusan Agribisnis Fakultas Pertanian UPN “Veteran” Jawa Timur. Jurusan Agribisnis menjadi Jurusan Pertama yang menjadi cikal bakal berdirinya Program doktor di UPN “Veteran” Jawa Timur. Secara resmi, Berdirinya program doktor berdasarkan Surat keputusan rektor menjadi pelengkap dalam jenjang pendidikan di bidang Agribisnis UPN “Veteran” Jawa Timur, dimulai dari Strata 1 Agribisnis (S1), Strata 2 Agribisnis (S2), dan Strata 3 Agribisnis (S3).',
      visi:
          '“Pengembangan Integrasi Smart FarmingBerkelanjutan yang Berwawasan Global untuk Kesejahteraan Masyarakat”.',
      misi: [
        '1. Menyelenggarakan pendidikan berkarakter bela negara yang berorientasi pada pengembangan agribisnis yang berbasis sumber daya dan kearifan lokal sehingga mampu menciptakan/inovasi kasanah keilmuan dalam bidang Pertanian khususnya agribisnis.',
        '2. Meningkatkan penelitian budaya dalam pengembangan bidang agribisnis yang berbasis sumber daya dan kearifan lokal yang berdaya guna untuk memperkuat kesejahteraan masyarakat di tingkat nasional maupun internasional.',
        '3. Menyelenggarakan pengabdian kepada masyarakat berbasis penelitian berskala nasional di bidang agribisnis dan memanfaatkan kearifan lokal.',
        '4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabiitas pengelolaan anggaran.',
        '5. Menjelaskan kualitas sumber daya manusia unggul dalam pengetahuan, sikap dan tata nilai, pendalaman /penguasaan pengetahuan dan menajerial di bidang agribisnis.',
        '6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu dalam upaya penyelenggaraan Pendidikan S3 / Doktor Agribisnis.',
        '7. Menyelenggarakan kerjasama institusional dengan pemangku kepentingan baik di bidang agribisnis di tingkat nasional maupun internasional.',
      ],
      akreditasi: 'Baik',
      ketuaLogo: 'assets/ketuaS1Agri.jpg',
      ketuaProdi: 'Prof.Dr.Ir. Syarif Imam Hidayat, M.M',
      dosenImages: [
        'assets/S3_AGRI_DOSEN1.png',
        'assets/S3_AGRI_DOSEN2.png',
        'assets/S3_AGRI_DOSEN3.png',
      ],
      dosenNames: [
        'Prof. Dr.Ir. Teguh Soedarto, M.P',
        'Prof. Syamsul Huda, S.E.,M.T.',
        'DR.IR. Nuriah Yuliati, M.P ',
      ],
      website: 'https://dokgri.upnjatim.ac.id',
      email: 'dokgri@upnjatim.ac.id',
      prestasiMahasiswa: [
        'assets/profilKosong.png',
      ],
      prestasiMahasiswaDeskripsi: [
        'Tidak Ada',
      ],
    ),
  ];
}
