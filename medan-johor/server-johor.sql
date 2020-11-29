-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 12 Jun 2019 pada 12.15
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `server-johor`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bangunan`
--

CREATE TABLE `bangunan` (
  `nomor_bangunan` int(11) NOT NULL,
  `nama_bangunan` varchar(50) NOT NULL,
  `jenis_bangunan` enum('sekolah','rumah sakit','puskesmas','masjid','gereja','vihara','tempat olahraga','lainnya') NOT NULL,
  `alamat_bangunan` text NOT NULL,
  `nama_pemilik_bangunan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bangunan`
--

INSERT INTO `bangunan` (`nomor_bangunan`, `nama_bangunan`, `jenis_bangunan`, `alamat_bangunan`, `nama_pemilik_bangunan`) VALUES
(1, 'Gedung Madinah Al munawwaroh Asrama Haji', 'lainnya', 'Jl. Karya Jasa No.78d', 'Kementerian Agama'),
(2, 'Madinatul Hujjaj', 'masjid', 'Jl. Jend. A. H. Nasution', 'Kementerian Agama'),
(3, 'Gedung King Abdul Aziz Asrama Haji Medan', 'lainnya', 'Jl. Jenderal Besar A.H. Nasution No.10', 'Kementerian Agama'),
(4, 'METHODIST 11', 'rumah sakit', 'Jl. Berlian Sari III No. 151 A', 'Yayasan Methodist'),
(5, 'MODEL AL AZHAR', 'sekolah', 'Jl. Pintu Air IV No. 189', 'Yayasan Al - Azhar'),
(6, 'SMAN 13 MEDAN', 'rumah sakit', 'JL. BRIGJEN ZEIN HAMID KM.7 TITI KUNING', 'Dinas Pendidikan'),
(7, 'SMP SWASTA IT NURUL AZIZI', 'sekolah', 'JL SUKA ELOK NO 12', 'Yayasan Nurul Azizi'),
(8, 'Masjid Al- Qisth', 'masjid', 'Jl. Jenderal Besar A.H. Nasution', 'Al-Qisth Jenderal Besar'),
(9, 'Dinas Pertanian', 'lainnya', 'Jl. Jenderal Besar A.H. Nasution No.6', 'Dinas Pertanian'),
(10, 'UPT Mekanisasi Pertanian', 'lainnya', 'Jalan Jenderal Besar Dr. Abdul Haris Nasution No.7', 'UPT Mekanisasi Pertanian'),
(11, 'Kejaksaan Tinggi Sumatera Utara', 'lainnya', 'Jl. Jenderal Besar A.H. Nasution No.1 C', 'Kejaksaan Sumut'),
(12, 'Lapangan Sejati Pratama Medan', 'tempat olahraga', 'Jl. Karya Jaya, Pangkalan Masyhur', 'Pratama Bangun'),
(13, 'PT. PLN (Persero) Unit Induk Pembangkitan Sumatera', 'lainnya', 'Jl. Brigjen Katamso KM.5,5', 'PLN Pesero'),
(14, 'Komplek Katamso Point', 'lainnya', 'Jl. Brig Jend. Zein Hamid', 'Dinul Pratama'),
(15, 'Taman Cadika Pramuka', 'lainnya', 'Jl. Karya Wisata', 'Tono'),
(16, 'Al Alzhar Swimming Pool', 'tempat olahraga', 'Jl. Pintu Air IV No.189', 'Yayasan Al Alzhar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan`
--

CREATE TABLE `kegiatan` (
  `nomor_kegiatan` int(11) NOT NULL,
  `nama_kegiatan` varchar(50) NOT NULL,
  `keterangan` text NOT NULL,
  `jenis_kegiatan` varchar(50) NOT NULL,
  `tempat_kegiatan` varchar(50) NOT NULL,
  `tanggal_kegiatan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kegiatan`
--

INSERT INTO `kegiatan` (`nomor_kegiatan`, `nama_kegiatan`, `keterangan`, `jenis_kegiatan`, `tempat_kegiatan`, `tanggal_kegiatan`) VALUES
(1, 'Johor Lingkungan Indah', 'acara gotong royong yang diadakan guna menuju lingkungan yang bersih', 'Gotong Royong', 'Kecamatan Medan Johor', '2019-07-13'),
(2, 'HUT RI-74', 'festival tahunan untuk merayakan ulangtahun Indonesia dengan acara perlombaan dan yang lainnya', 'Festival', 'Jalan Karya Jaya', '2019-08-17'),
(3, 'Maulid Nabi', 'acara keagaman untuk memperingati lahirnya Nabi Muhammad SAW', 'Pengajian', 'Mesjid Madinatul Hujjaj', '2019-11-14'),
(4, 'Pengajian Akbar', 'kegiatan yang dilakukan guna meningkatkan silahturami dan meningkatkan ilmu agama', 'Pengajian', 'Masjid Al- Qisth', '2019-08-09'),
(5, 'Posyandu', 'memberikan imunisasi kepada balita dan juga memberi pengetahuan dan pengalaman tentang kesehatan ibu dan bayi', 'Posyandu', 'Jalan Brigadir Jenderal Zein Hamid 2', '2019-07-22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kepala_keluarga`
--

CREATE TABLE `kepala_keluarga` (
  `nama` varchar(50) NOT NULL,
  `no_kk` bigint(16) NOT NULL,
  `nik` bigint(16) NOT NULL,
  `surat_miskin` enum('punya','tidak punya') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kepala_keluarga`
--

INSERT INTO `kepala_keluarga` (`nama`, `no_kk`, `nik`, `surat_miskin`) VALUES
('Henrico Ayub', 1271064498571023, 1271036482630004, 'tidak punya'),
('Reyno Pratama', 1272028291739193, 1271027384620001, 'tidak punya'),
('Hary Tonoe', 1273073716199092, 1273028392910006, 'tidak punya'),
('Rusli Yudis', 1274064498571023, 1274064828220008, 'punya'),
('Charles Manurung', 1275082918499091, 1275826183310005, 'punya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `list_penduduk`
--

CREATE TABLE `list_penduduk` (
  `nama` varchar(50) NOT NULL,
  `no_kk` bigint(16) NOT NULL,
  `nik` bigint(16) NOT NULL,
  `tempat/tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `alamat` text NOT NULL,
  `rt/rw` varchar(50) NOT NULL,
  `kel/desa` varchar(50) NOT NULL,
  `agama` varchar(30) NOT NULL,
  `status_perkawinan` varchar(20) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `list_penduduk`
--

INSERT INTO `list_penduduk` (`nama`, `no_kk`, `nik`, `tempat/tgl_lahir`, `jenis_kelamin`, `alamat`, `rt/rw`, `kel/desa`, `agama`, `status_perkawinan`, `pekerjaan`) VALUES
('Melati Claudya', 1271064498571023, 1271023876490003, '1980-09-30', 'perempuan', 'Jl. Karya Wisata No. 103', '000/000', 'Gedung Johor', 'Kristen Protestan', 'Menikah', 'Pegawai Negeri Sipil'),
('Reyno Pratama', 1272028291739193, 1271027384620001, '1971-10-10', 'laki-laki', 'Jl. Karya Bakti No. 99', '000/000', 'Pangkalan Masyhur', 'Islam', 'Menikah', 'Guru'),
('Henrico Ayub', 1271064498571023, 1271036482630004, '1978-10-10', 'laki-laki', 'Jl. Karya Wisata No. 103', '000/000', 'Gedung Johor', 'Kristen Protestan', 'Menikah', 'Pegawai BUMN'),
('Hanna Tasya', 1271064498571023, 1271037468320004, '1998-01-01', 'perempuan', 'Jl. Karya Wisata No. 103', '000/000', 'Gedung Johor', 'Kristen Protestan', 'Belum Menikah', 'Mahasiswa'),
('Suci Indah Sari', 1272028291739193, 1271083193720005, '1973-09-02', 'perempuan', 'Jl. Karya Bakti No. 99', '000/000', 'Pangkalan Masyhur', 'Islam', 'Menikah', 'Guru'),
('Feni Rahmadani', 1272028291739193, 1272038648682004, '2003-11-05', 'perempuan', 'Jl. Karya Bakti No. 99', '000/000', 'Pangkalan Masyhur', 'Islam', 'Belum Menikah', 'Pelajar'),
('Felencya Wu', 1273073716199092, 1273022638190006, '1966-05-25', 'perempuan', 'Jl. Brigjen Katamso No. 65', '000/000', 'Titi Kuning', 'Budha', 'Menikah', 'Dokter'),
('Hary Tonoe', 1273073716199092, 1273028392910006, '1966-01-09', 'laki-laki', 'Jl. Brigjen Katamso No. 65', '000/000', 'Titi Kuning', 'Budha', 'Menikah', 'Wiraswasta'),
('Ellen Tanoe', 1273073716199092, 1273028728690006, '1998-09-16', 'perempuan', 'Jl. Brigjen Katamso No. 65', '000/000', 'Titi Kuning', 'Budha', 'Belum Menikah', 'Mahasiswa'),
('Rahmat Riansyah', 1274064498571023, 1274002983740009, '1995-04-11', 'laki-laki', 'Jl. Berlian Sari III No.150', '000/000', 'Kedai Durian', 'Islam', 'Belum Menikah', 'Wiraswasta'),
('Putri Aisyah', 1274064498571023, 1274046832920005, '1970-09-06', 'perempuan', 'Jl. Berlian Sari III No. 150', '000/000', 'Kedai Durian', 'Islam', 'Menikah', 'Ibu Rumah Tangga'),
('Rusli Yudis', 1274064498571023, 1274064828220008, '1966-09-10', 'laki-laki', 'Jl. Berlian Sari III No. 150', '000/00', 'Kedai Durian', 'Islam', 'Menikah', 'Wiraswasta'),
('Triariski Budiman', 1274064498571023, 1274092928340007, '1993-11-08', 'laki-laki', 'Jl. Berlian Sari III No.150', '000/000', 'Kedai Durian', 'Islam', 'Belum Menikah', 'Wiraswasta'),
('Reni Adelia Marpaung', 1275082918499091, 1275026846320005, '2010-09-09', 'perempuan', 'Jl. Letjen Jamin Ginting No. 180', '000/000', 'Kwala Bekala', 'Kristen Protestan', 'Belum Menikah', 'Pelajar'),
('Dame Napitupulu', 1275082918499091, 1275038479230007, '1985-09-24', 'perempuan', 'Jl. Letjen Jamin Ginting no. 180', '000/000', 'Kwala Bekala', 'Kristen Protestan', 'Menikah', 'Wiraswasta'),
('Charles Manurung', 1275082918499091, 1275826183310005, '1985-03-03', 'laki-laki', 'Jl. Letjen Jamin Ginting no. 180', '000/000', 'Kwala Bekala', 'Kristen Protestan', 'Menikah', 'Buruh'),
('Rini Adelia Manurung', 1275082918499091, 12750993797210001, '2010-09-09', 'perempuan', 'Jl. Letjen Jamin Ginting No. 180', '000/000', 'Kwala Bekala', 'Kristen Protestan', 'Belum Menikah', 'Pelajar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `organisasi`
--

CREATE TABLE `organisasi` (
  `nomor_organisasi` int(11) NOT NULL,
  `nama_organisasi` varchar(50) NOT NULL,
  `alamat_kantor` text NOT NULL,
  `jenis_organisasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `organisasi`
--

INSERT INTO `organisasi` (`nomor_organisasi`, `nama_organisasi`, `alamat_kantor`, `jenis_organisasi`) VALUES
(1, 'PAC LDII Johor, Kampung Baru', 'Jalan Suka Maju', 'Organisasi Agama'),
(2, 'Marching Band Gita Swara WR SUPRATMAN 2 MEDAN', 'Titi Kuning', 'Organisasi Pendidikan'),
(3, 'Sintesa & SPI Sumut', ' Gg. Eka Rasmi IV', 'Organisasi Pertanian'),
(4, 'LSM IPMB', ' Jl. Karya Sari No.25', 'Organisasi Sosial'),
(5, 'Persatuan Islam Istri Persistri', 'Jalan Karya Darma No. 01', 'Organisasi Sosial'),
(6, 'Dharma Wanita Persatuan Kota Medan', 'Jl. Karya Cipta No.16', 'Organisasi Sosial'),
(7, 'Posyandu Kamboja', 'Jalan Brigadir Jenderal Zein Hamid 2', 'Organisasi Kesehatan'),
(8, 'PIK-KRR Kemuning', 'Jl. Karya Cipta No.16', 'Organisasi Sosial'),
(9, 'Lembaga Kemaslahatan Sosial Muhajirin', 'Jalan Karya Darma 1 No.5', 'Organisasi Agama'),
(10, 'Assosiasi Kontraktor Elektrikal Indonesia', 'Jl. Karya Tani', 'Organisasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `usaha/umkm`
--

CREATE TABLE `usaha/umkm` (
  `nomor_usaha/umkm` int(11) NOT NULL,
  `nama_usaha/umkm` varchar(50) NOT NULL,
  `jenis_usaha/umkm` enum('percetakan','kerajinan tangan','kuliner','agrobisnis','teknologi','lainnya') NOT NULL,
  `alamat_usaha/umkm` text NOT NULL,
  `nama_pemilik_usaha/umkm` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `usaha/umkm`
--

INSERT INTO `usaha/umkm` (`nomor_usaha/umkm`, `nama_usaha/umkm`, `jenis_usaha/umkm`, `alamat_usaha/umkm`, `nama_pemilik_usaha/umkm`) VALUES
(1, 'Rental Mobil Medan Jaya', 'lainnya', 'Jalan Karya Darma', 'Agus'),
(2, 'Warung Rabutan Guntur', 'kuliner', 'Jl. Karya Darma No.25', 'Guntur'),
(3, 'Bakso Johor Indah', 'kuliner', 'Jl. Eka Rasmi No.74C', 'Raudiah Nisa'),
(4, 'Percetakan Toha', 'percetakan', 'Jl. Karya Jaya No.265', 'Andre'),
(5, 'Warnet Arditama', 'teknologi', ' Jl. Karya Jaya No.157', 'Arditama');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bangunan`
--
ALTER TABLE `bangunan`
  ADD PRIMARY KEY (`nomor_bangunan`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`nomor_kegiatan`);

--
-- Indexes for table `kepala_keluarga`
--
ALTER TABLE `kepala_keluarga`
  ADD PRIMARY KEY (`no_kk`);

--
-- Indexes for table `list_penduduk`
--
ALTER TABLE `list_penduduk`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `organisasi`
--
ALTER TABLE `organisasi`
  ADD PRIMARY KEY (`nomor_organisasi`);

--
-- Indexes for table `usaha/umkm`
--
ALTER TABLE `usaha/umkm`
  ADD PRIMARY KEY (`nomor_usaha/umkm`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bangunan`
--
ALTER TABLE `bangunan`
  MODIFY `nomor_bangunan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `nomor_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `organisasi`
--
ALTER TABLE `organisasi`
  MODIFY `nomor_organisasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `usaha/umkm`
--
ALTER TABLE `usaha/umkm`
  MODIFY `nomor_usaha/umkm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
