-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Mar 2022 pada 08.27
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sispkismik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bimbingan`
--

CREATE TABLE `tbl_bimbingan` (
  `kdbimbingan` int(11) NOT NULL,
  `kdpenempatan` int(11) NOT NULL,
  `nip` char(21) NOT NULL,
  `nis` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `judul` varchar(50) NOT NULL,
  `catatan` text NOT NULL,
  `file` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_bimbingan`
--

INSERT INTO `tbl_bimbingan` (`kdbimbingan`, `kdpenempatan`, `nip`, `nis`, `tanggal`, `judul`, `catatan`, `file`) VALUES
(1, 1, '123', 11, '2017-11-05', 'wawawawaw', 'jfndslf ljs d fd d  ', ''),
(3, 4, '11111112', 193098, '2022-02-05', 'xxxxx', 'xxxxxx', 'lampiran/bimbingan/lampiran1.pdf'),
(4, 5, '11111134', 91999, '2022-02-05', 'Laporan ', 'xxxxx', 'lampiran/bimbingan/lampiran2.pdf'),
(5, 6, '11111134', 20017, '2022-02-10', 'xxxx', 'xxxxx', 'lampiran/bimbingan/lampiran3.pdf'),
(6, 7, '11345968', 201001, '2022-02-20', 'Bimbingan', 'bimbingan selama prakerin berlangsung', 'lampiran/bimbingan/lampiran4.pdf'),
(7, 8, '11111145', 212000, '2022-02-20', 'bimbingan', 'dalam pengawasan pihak sekolah mengenai absensi selama prakerin', 'lampiran/bimbingan/lampiran5.pdf'),
(8, 9, '11111119', 2021, '2022-02-20', 'bimbingan', 'laporan ', 'lampiran/bimbingan/lampiran6.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_file`
--

CREATE TABLE `tbl_file` (
  `kdfile` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` text NOT NULL,
  `share` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `nip` char(21) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `mapel` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_guru`
--

INSERT INTO `tbl_guru` (`nip`, `nama_lengkap`, `mapel`) VALUES
('191374', 'Neli Kusumawati, S.Pd', 'Bahasa Inggris'),
('19777', 'Tosirin, S.Pd', 'Sejarah dan Kesiswaan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_industri`
--

CREATE TABLE `tbl_industri` (
  `kdind` int(11) NOT NULL,
  `nama_industri` varchar(50) NOT NULL,
  `bidang_kerja` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `alamat_industri` text NOT NULL,
  `wilayah` varchar(50) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `website` text NOT NULL,
  `email` text NOT NULL,
  `syarat` text NOT NULL,
  `kuota` int(20) NOT NULL,
  `foto` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_industri`
--

INSERT INTO `tbl_industri` (`kdind`, `nama_industri`, `bidang_kerja`, `deskripsi`, `alamat_industri`, `wilayah`, `telepon`, `website`, `email`, `syarat`, `kuota`, `foto`) VALUES
(3, 'PT. PANASONIC INDONESIA', 'Elektronika Industri dan Audio Video', 'Panasonic di Indonesia merupakan brand elektronik  terkemuka yang menyediakan produk inovatif untuk home appliances (AC, Smart TV, Kulkas, Mesin Cuci, Perangkat Audio, Rice Cooker, Microwave, Air Purifier hingga beragam alat penataan rambut dan perawatan kulit) dikalangan B2C dan system solution di kalangan B2B yang berorientasi pada pasar lokal untuk menjawab kebutuhan masyarakat Indonesia. ', 'Jl. Dewi Sartika No.14 (Cawang II),\r\nJakarta 13630, Indonesia ', 'Jakarta', '08041111111', 'panasonic.com', 'ccc@id.panasonic.com', 'Sehat Jasmani', 10, 'pt_panasonic1.JPG'),
(4, 'PT Funworld Prima', 'Elektronika Industri dan Audio Video', 'Pada tahun 1983 di Jakarta berdiri sebuah perusahaan yang bergerak di bidang jasa hiburan dan rekreasi keluarga yang sekarang dikenal dengan merk dagang FUNWORLD.', 'Jln. Jend. Sudirman No 1 Cikokol Tangerang -Banten 15118', 'Banten, Tangerang	Tangcity Mall', '082216660808', 'https://funworld.co.id/', 'customer_service@funworld.co.id', 'Sehat Jasmani', 5, 'funworld1.JPG'),
(5, 'PT. Nasmoco Purbalingga', 'Otomotif', 'Toyota Nasmoco merupakan Authorized Toyota Dealer atau Agen tunggal pemegang merek Toyota Indonesia khususnya di Jawa Tengah dan Daerah Istimewa Yogyakarta, selain penjulana Nasmoco Toyota juga  melayani Perbaikan Penjualan Mobil Informasi Bengkel After sales', 'Jl. Soekarno Hatta N0.17, Kalimanah, Kabupaten Purbalingga, Jawa Tengah 53321', 'Purbalingga', '085328245777', 'https://www.facebook.com/Nasmoco-Purbalingga-2147245658937486/', 'admin@nasmoco-toyota.com', 'Sehat Jasmani', 6, 'Toyota-Nasmoco1.jpg'),
(6, 'PT. Yamaha Motor Parts Manufacturing Indonesia', 'Teknik dan Bisnis Sepeda Motor', 'Yamaha Motor Parts Manufacturing Indonesia as an integral part of Yamaha Manufacturing Plants network all over the world is also actively engaged in making products of an even higher quality and performance to further improve the quality of Yamaha.', 'Jl. Permata Raya Lot F2 &amp;amp; F6 Kawasan Industri KIIC, Karawang 41361, PO BOX 157, West Java - Indonesia.', 'Jakarta', '62218904581', 'https://yamaha-motor-parts.co.id/', 'corcom_ypmi@yamaha-motor.co.id', 'Sehat Jasmani', 10, 'yamaha1.JPG'),
(7, 'PT. Yamaha Deta Purwokerto', 'Teknik dan Bisnis Sepeda Motor', 'Motorcycle dealer', 'Jalan Gerilya Bar. Bojong Tanjung Kec. Purwokerto Sel 53144 Banyumas Jawa Tengah &amp;middot; 125,56 km', 'Purwokerto', '6281220765656', 'https://www.instagram.com/yamaha_detapurwokerto/', 'yamaha@deta.purwokerto', 'Sehat Jasmani', 8, '261.jpg'),
(8, 'PT. Telkom Indonesia', 'Teknik Komputer dan Jaringan', 'PT Telkom Indonesia (Persero) Tbk (Telkom) adalah Badan Usaha Milik Negara (BUMN) yang bergerak di bidang jasa layanan teknologi informasi dan komunikasi (TIK) dan jaringan telekomunikasi di Indonesia. Pemegang saham mayoritas Telkom adalah Pemerintah Republik Indonesia sebesar 52.09%, sedangkan 47.91% sisanya dikuasai oleh publik. Saham Telkom diperdagangkan di Bursa Efek Indonesia (BEI) dengan kode &amp;ldquo;TLKM&amp;rdquo; dan New York Stock Exchange (NYSE) dengan kode &amp;ldquo;TLK&amp;rdquo;.', 'Telkom Landmark Tower, 39-nd floor Jl. Jendral Gatot Subroto Kav. 52 RT.6/RW.1, Kuningan Barat, Mampang Prapatan Jakarta Selatan, DKI Jakarta, 12710 Indonesia', 'Jakarta', '622180863539', 'https://www.telkom.co.id/sites/about-telkom/id_ID', 'corporate_comm@telkom.co.id', 'Sehat Jasmani', 2, 'telkom1.JPG'),
(9, 'PT. Cazh Teknologi Inovasi', 'Rekayasa Perangkat Lunak', 'Perusahaan rintisan (start-up) digital di Purwokerto, Jawa Tengah.', 'Jl. Waru IV No.25 Grand Tanjung Elok, Purwokerto, Jawa Tengah 53144', 'Purwokerto', '08112602811', 'https://cards.co.id/kami/', 'hello@cards.co.id', 'Sehat Jasmani', 10, 'pt_cazh1.JPG'),
(10, 'PT. Infomedia Nusantara', 'Business Process Outsourcing', 'Infomedia merupakan bagian dari Telkom Indonesia yang fokus pada Layanan Business Process Outsourcing. Kami merasa bangga menjadi mitra anda untuk tumbuh dan turut mengembangkan usaha anda di era kemutakhiran teknologi. Kinerja kami diperkuat oleh dukungan Telkom Group dalam membangun sistem serta infrastruktur digital dan tenaga ahli yang telah terbukti selama lebih dari 2 dekade perjalanan bisnis kami.', 'Jl RS Fatmawati No 77 - 81 Jakarta Selatan 12150', 'Jakarta Selatan', '62217201221', 'infomedia.co.id', 'corporate@infomedia.co.id', 'Sehat Jasmani', 10, 'infomedia1.JPG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_info`
--

CREATE TABLE `tbl_info` (
  `kdinfo` int(11) NOT NULL,
  `kdlabel` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `judul` text NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` text NOT NULL,
  `penulis` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_info`
--

INSERT INTO `tbl_info` (`kdinfo`, `kdlabel`, `tanggal`, `judul`, `deskripsi`, `gambar`, `penulis`) VALUES
(7, 5, '2022-02-20', 'Lowongan kerja PT CAZH TEKNOLOGI INDONESIA Purbalingga', 'Jangan lewatkan kesempatan ini. Ayo daftarkan diri anda sekarang juga!!!', 'foto/info/loker_pt_cazh_teknologi_inovasi.jpg', 'Panitia Prakerin'),
(6, 3, '2022-02-05', 'Griya Marketer', '<p>Menerima Peserta magang jurusan Informatika, RPL, Pemasaran, TKJ, Multimedia, dll....</p>', 'foto/info/wa2.jpg', 'admin'),
(8, 1, '2022-02-20', 'Prakerin Gelombang 2', '<p>Untuk peserta prakerin khususnya siswa-siswi SMK Ma\'arif 1 Ajibarang, prakerin gelombang 2 akan dilaksanakan pada bulan Maret-Agustus.</p>', 'foto/info/Tak_berjudul46_202010142109191.png', 'Panitia Prakerin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `kdjurusan` int(11) NOT NULL,
  `nama` varchar(260) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`kdjurusan`, `nama`) VALUES
(2, 'TEKNIK AUDIO VIDEO'),
(3, 'TEKNIK KENDARAAN RINGAN OTOMOTIF'),
(4, 'TEKNIK DAN BISNIS SEPEDA MOTOR'),
(5, 'TEKNIK KOMPUTER DAN JARINGAN'),
(6, 'TEKNIK ELEKTRONIKA INDUSTRI'),
(7, 'REKAYASA PERANGKAT LUNAK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kdkelas` int(11) NOT NULL,
  `kdjurusan` char(5) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kdkelas`, `kdjurusan`, `nama`) VALUES
(2, '2', 'TAV A'),
(3, '2', 'TAV B'),
(4, '2', 'TAV C'),
(5, '3', 'TKRO A'),
(6, '3', 'TKRO B'),
(7, '3', 'TKRO C'),
(8, '3', 'TKRO D'),
(9, '3', 'TKRO E'),
(10, '4', 'TBSM A'),
(11, '4', 'TBSM B'),
(12, '4', 'TBSM C'),
(13, '5', 'TKJ A'),
(14, '5', 'TKJ B'),
(15, '5', 'TKJ C'),
(16, '5', 'TKJ D'),
(17, '6', 'TEI A'),
(18, '6', 'TEI B'),
(19, '7', 'RPL');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_label`
--

CREATE TABLE `tbl_label` (
  `kdlabel` int(11) NOT NULL,
  `nama_label` varchar(50) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_label`
--

INSERT INTO `tbl_label` (`kdlabel`, `nama_label`, `keterangan`) VALUES
(1, 'Pengumuman', '-'),
(2, 'Tips', '-'),
(3, 'Industri', '-'),
(4, 'Sekolah', '-'),
(5, 'Lain-lain', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_nilai`
--

CREATE TABLE `tbl_nilai` (
  `kdnilai` int(11) NOT NULL,
  `kdpenempatan` int(11) NOT NULL,
  `keterangan` enum('Teknis','Non-Teknis','Laporan') NOT NULL,
  `nilai` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_nilai`
--

INSERT INTO `tbl_nilai` (`kdnilai`, `kdpenempatan`, `keterangan`, `nilai`) VALUES
(1, 1, 'Teknis', 90),
(3, 4, 'Teknis', 93),
(4, 5, 'Laporan', 89),
(5, 7, 'Teknis', 92),
(6, 8, 'Non-Teknis', 79),
(7, 9, 'Laporan', 87);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pemb`
--

CREATE TABLE `tbl_pemb` (
  `kdpemb` int(11) NOT NULL,
  `kdjurusan` char(5) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` text NOT NULL,
  `nip` char(21) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `wilayah` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pemb`
--

INSERT INTO `tbl_pemb` (`kdpemb`, `kdjurusan`, `username`, `password`, `nip`, `nama_lengkap`, `wilayah`) VALUES
(10, '5', '191583', 'b8d888ae250065e4d79f3976108119fb', '11116723', 'Akhmad Subkhi,S.Kom', 'Jakarta dan sekitarnya'),
(4, '7', '141975', '78922891d65e3d62db7c0541ec2f2d02', '11111112', 'S. Topoprikhanto, S.T.', 'Banyumas'),
(5, '2', '291976', 'c9e19500b1bc62f560120c230172554e', '11111119', 'Malikhatun, S.T.', 'Banyumas'),
(6, '4', '121974', '2455c2a1b6551dfda47bf93d519f627c', '11111110', 'Fadli Utomo, S.T.', 'Purwokerto'),
(7, '6', '61971', 'ebea0e6d85a68f7b6cd90e4aa34229e3', '11111182', 'Widayanti, S.Pd', 'Purwokerto'),
(8, '3', '101977', '698421cd435e8c366644e68696da7486', '11111145', 'Nur Khaerul Imam, ST', 'Brebes'),
(9, '5', '201978', 'c35df4f046da5a8e4a9fd66d517c926c', '11111120', 'Anas M, S.T.,S.Kom', 'Banyumas'),
(11, '5', '781233', '19624fcf693b49a0bddb4bc894310537', '13119056', 'Atipa Muji,S. Kom', 'Purwokerto'),
(12, '5', '201809', '354a176d8b5a41d499a1b92291815083', '11345968', 'Cita Puspitasari,S.Pd', '-'),
(13, '2', '58119', '96b1c60888e6fd61e76d317d7dfa430a', '00013476', 'Nurohmah Yuni A,S.Pd', '-'),
(14, '2', '801119', '17dc79032cdc4d4053a278b8957fd472', '00113477', 'Welas Delima K, S.Pd', '-'),
(15, '4', '67019', '5d0dee08adf4c0c3e73f694a6baab0e3', '11111134', 'A. Zamjuri, S.Pd', '-'),
(16, '4', '270014', 'c76bc743b3f8afdf1c0eba44ba4c1d36', '11111176', 'H. Abdul Majid, S.Ag', '-'),
(17, '6', '68119', '766795473e39bb422d7dab8130a15c1f', '11111155', 'Rohid Sofiyanto, S.T', '-'),
(18, '3', '197310', 'f3c3abcc0b55cb2971562c357adf0a20', '11176044', 'Rudianto, S.Pd', '-'),
(19, '3', '86319', 'f7a9a04bb496a629fa0914df5c3b4c74', '11009574', 'Qorry Debby I, S.T.,M.Pd', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_penempatan`
--

CREATE TABLE `tbl_penempatan` (
  `kdpenempatan` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `kdpemb` int(11) NOT NULL,
  `kdind` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `wilayah` varchar(50) NOT NULL,
  `tahun` year(4) NOT NULL,
  `status` enum('-','proses','ditolak','diterima') NOT NULL,
  `surat` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_penempatan`
--

INSERT INTO `tbl_penempatan` (`kdpenempatan`, `nis`, `kdpemb`, `kdind`, `tanggal`, `wilayah`, `tahun`, `status`, `surat`) VALUES
(4, 193098, 4, 9, '2022-02-05', 'Purwokerto', 2022, 'diterima', 'permohonan1.pdf'),
(5, 91999, 6, 7, '2022-02-05', 'Purwokerto', 2022, 'diterima', 'kesediaan1.pdf'),
(6, 20017, 15, 6, '2022-02-10', 'Jakarta', 2022, 'diterima', 'permohonan2.pdf'),
(7, 201001, 12, 8, '2022-02-20', 'Jakarta', 2022, 'diterima', '15663068951.jpg'),
(9, 2021, 5, 4, '2022-02-20', 'Tangerang', 2022, 'diterima', 'permohonan3.pdf'),
(10, 201400, 11, 8, '2022-02-21', 'Bandung', 2022, 'diterima', 'kesediaan2.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `nis` int(11) NOT NULL,
  `kdkelas` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `telp` varchar(14) NOT NULL,
  `foto` text NOT NULL,
  `password` text NOT NULL,
  `kdpemb` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`nis`, `kdkelas`, `nama_lengkap`, `telp`, `foto`, `password`, `kdpemb`) VALUES
(1193011, 4, 'Azumii', '088373677', 'default.png', 'e217e09e3a4bf80477c6d53430bbf3e2', 11),
(1193027, 2, 'Mamat Alkatiri', '087735635', 'User.png', '7f25437810bb5a733107ef495340bfc0', 10),
(1193029, 19, 'Dedi Hidayat', '08776673636', 'Jenly_Ramadan.jpeg', '056dfa205bceb5047d257109bbf5b25d', 17);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tolak_penempatan`
--

CREATE TABLE `tbl_tolak_penempatan` (
  `kdtolak` int(11) NOT NULL,
  `kdpenempatan` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `alasan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `identitas` varchar(32) NOT NULL,
  `password` text NOT NULL,
  `status` varchar(11) NOT NULL,
  `foto` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `nama_lengkap`, `identitas`, `password`, `status`, `foto`) VALUES
(1, 'admin', 'Panitia Prakerin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '-', 'OIP1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_bimbingan`
--
ALTER TABLE `tbl_bimbingan`
  ADD PRIMARY KEY (`kdbimbingan`);

--
-- Indeks untuk tabel `tbl_file`
--
ALTER TABLE `tbl_file`
  ADD PRIMARY KEY (`kdfile`);

--
-- Indeks untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `tbl_industri`
--
ALTER TABLE `tbl_industri`
  ADD PRIMARY KEY (`kdind`);

--
-- Indeks untuk tabel `tbl_info`
--
ALTER TABLE `tbl_info`
  ADD PRIMARY KEY (`kdinfo`);

--
-- Indeks untuk tabel `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`kdjurusan`);

--
-- Indeks untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kdkelas`);

--
-- Indeks untuk tabel `tbl_label`
--
ALTER TABLE `tbl_label`
  ADD PRIMARY KEY (`kdlabel`);

--
-- Indeks untuk tabel `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD PRIMARY KEY (`kdnilai`);

--
-- Indeks untuk tabel `tbl_pemb`
--
ALTER TABLE `tbl_pemb`
  ADD PRIMARY KEY (`kdpemb`);

--
-- Indeks untuk tabel `tbl_penempatan`
--
ALTER TABLE `tbl_penempatan`
  ADD PRIMARY KEY (`kdpenempatan`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indeks untuk tabel `tbl_tolak_penempatan`
--
ALTER TABLE `tbl_tolak_penempatan`
  ADD PRIMARY KEY (`kdtolak`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_bimbingan`
--
ALTER TABLE `tbl_bimbingan`
  MODIFY `kdbimbingan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_file`
--
ALTER TABLE `tbl_file`
  MODIFY `kdfile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_industri`
--
ALTER TABLE `tbl_industri`
  MODIFY `kdind` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_info`
--
ALTER TABLE `tbl_info`
  MODIFY `kdinfo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  MODIFY `kdjurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `kdkelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tbl_label`
--
ALTER TABLE `tbl_label`
  MODIFY `kdlabel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  MODIFY `kdnilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_pemb`
--
ALTER TABLE `tbl_pemb`
  MODIFY `kdpemb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tbl_penempatan`
--
ALTER TABLE `tbl_penempatan`
  MODIFY `kdpenempatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_tolak_penempatan`
--
ALTER TABLE `tbl_tolak_penempatan`
  MODIFY `kdtolak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
