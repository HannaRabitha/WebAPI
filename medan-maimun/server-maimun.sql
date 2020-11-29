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
-- Database: `server-maimun`
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
(1, 'KPP Pratama Medan Timur', 'lainnya', 'Jl. Suka Mulia No.17A, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20151', 'DJP'),
(2, 'Wajir Seafood', 'lainnya', 'Jl. Kol. Sugiono No.31, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', 'Hermina Manulang'),
(3, 'Rumah Makan Pondok Gurih', 'lainnya', 'Jl. Brigjen Katamso No.33A, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20159', 'Riska Meliana'),
(4, 'Rumah Makan Tabona', 'lainnya', 'Jl. Mangkubumi No.17, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', 'Bambang Sudirejo'),
(5, 'Museum Uang Sumatera', 'lainnya', 'Jl. Pemuda No.13, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', 'Rizwan Muzakkir'),
(6, 'Acai Jaya', 'lainnya', 'Jl. Brigjen Katamso No.70-72, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', 'Aliansyah'),
(7, 'Istana Maimun', 'lainnya', 'Jl. Sultan Ma''moen Al Rasyid No.66, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20151', 'Sultan Mahmud Lamanjiji Perkasa Alam'),
(8, 'Rumah Sakit Umum Martha Friska Multatuli', 'rumah sakit', 'Jl. Multatuli No.1, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', 'Ramin'),
(9, 'K2 Karaoke Keluarga', 'lainnya', 'Jl. Haji Misbah Blok AA No.60, Hamdan, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20151', 'Eka Darma'),
(10, 'Gedung BKS PPS', 'lainnya', 'Jl. Pemuda No.10 A, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20151', 'AVROS');

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
(1, 'Maimun Bersih 2018', 'Acara tahunan masyarakat Kecamatan Medan Maimun, membersihkan lingkungan dimulai dengan apel dan acara hiburan di Gang Pantai Burung I.', 'Gotong Royong', 'Gang Pantai Burung I', '2018-06-18'),
(2, 'Maimun Bersih 2019', 'Acara tahunan masyarakat Kecamatan Medan Maimun, membersihkan lingkungan dimulai dengan apel dan acara hiburan di Gang Pantai Burung I.', 'Gotong Royong', 'Gang Pantai Burung I', '2019-05-01'),
(3, 'Pengajian Akbar Menyambut Bulan Suci Ramadhan', 'Pengajian umat muslim dipimpin oleh Ustad Abdul Somad.', 'Pengajian', 'Masjid Nabawi', '2019-05-01'),
(4, 'DIRGAHAYU RI ke-73', 'Acara ulangtaun kemerdekaan Republik Indonesia dan lomba 17-an untuk anak-anak', 'Perlombaan', 'Gang Rispa', '2018-08-17'),
(5, 'Maulid Nabi', 'Acara maulid nabi dengan bintang tamu Ustad Abdul Somad.', 'Pengajian', 'Masjid Nabawi', '2018-11-20');

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
('Aliansyah', 1272021789240645, 1272021789240002, 'tidak punya'),
('Malik Ramdhana', 1273021789240882, 1273021789240001, 'tidak punya'),
('Rizwan Muzakkir', 1274021789240345, 1274021789240001, 'tidak punya'),
('Irwan Ahmad', 1274021789240544, 1274021789240003, 'tidak punya'),
('Reza Rahadian', 1275021789240772, 1275021789240001, 'tidak punya'),
('Ahmad Solihin', 1276021789240994, 1276021789240003, 'punya'),
('Kristanto', 1277021789240645, 1277021789240002, 'tidak punya'),
('Simanjuntak', 1278021789240666, 1278021789240001, 'punya'),
('Sulaiman Jisran', 1278021789240822, 1278021789240002, 'tidak punya'),
('Bambang Sudirejo', 1279021789240322, 1279021789240002, 'tidak punya');

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
('Milea Rahmatika', 1272021789240645, 1272021789240001, '1972-04-02', 'perempuan', 'Jl. Kol. Sugiono No.30, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', '000/000', 'Kelurahan A U R', 'Buddha', 'Kawin', 'PNS'),
('Aliansyah', 1272021789240645, 1272021789240002, '1968-05-02', 'laki-laki', 'Jl. Kol. Sugiono No.30, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', '000/000', 'Kelurahan A U R', 'Buddha', 'Kawin', 'Wiraswasta'),
('Monalisa', 1272021789240645, 1272021789240003, '1998-05-02', 'perempuan', 'Jl. Kol. Sugiono No.30, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', '000/000', 'Kelurahan A U R', 'Buddha', 'Belum Kawin', 'Pelajar/Mahasiswa'),
('Badang', 1272021789240645, 1272021789240004, '1999-05-02', 'laki-laki', 'Jl. Kol. Sugiono No.30, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', '000/000', 'Kelurahan A U R', 'Buddha', 'Belum Kawin', 'Pelajar/Mahasiswa'),
('Ajis', 1272021789240645, 1272021789240005, '2001-05-02', 'laki-laki', 'Jl. Kol. Sugiono No.30, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', '000/000', 'Kelurahan A U R', 'Buddha', 'Belum Kawin', 'Pelajar/Mahasiswa'),
('Mimi', 1272021789240645, 1272021789240006, '2003-05-02', 'perempuan', 'Jl. Kol. Sugiono No.30, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', '000/000', 'Kelurahan A U R', 'Buddha', 'Belum Kawin', 'Pelajar/Mahasiswa'),
('Malik Ramdhana', 1273021789240882, 1273021789240001, '1972-04-02', 'laki-laki', 'Jl. Mangkubumi No.10, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', '000/000', 'Kelurahan A U R', 'Islam', 'Kawin', 'PNS'),
('Siti Badriah', 1273021789240882, 1273021789240002, '1973-08-08', 'perempuan', 'Jl. Mangkubumi No.10, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', '000/000', 'Kelurahan A U R', 'Islam', 'Kawin', 'PNS'),
('Hanna Babitha', 1273021789240882, 1273021789240004, '1998-07-07', 'perempuan', 'Jl. Mangkubumi No.10, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', '000/000', 'Kelurahan A U R', 'Islam', 'Belum Kawin', 'Pelajar/Mahasiswa'),
('Arif Aziz', 1273021789240882, 1273021789240006, '2003-12-02', 'laki-laki', 'Jl. Mangkubumi No.10, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', '000/000', 'Kelurahan A U R', 'Islam', 'Belum Kawin', 'Pelajar/Mahasiswa'),
('Rizwan Muzakkir', 1274021789240345, 1274021789240001, '1980-03-03', 'laki-laki', 'Jl. Pemuda No.1, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', '000/000', 'Kelurahan A U R', 'Islam', 'Kawin', 'PNS'),
('Mina Siregar', 1274021789240345, 1274021789240002, '1982-11-05', 'perempuan', 'Jl. Pemuda No.1, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', '000/000', 'Kelurahan A U R', 'Islam', 'Kawin', 'Wiraswasta'),
('Irwan Ahmad', 1274021789240544, 1274021789240003, '1978-05-02', 'laki-laki', 'Jl. Multatuli No.20, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', '000/000', 'Kelurahan A U R', 'Islam', 'Kawin', 'PNS'),
('Sarah Zahra', 1274021789240544, 1274021789240004, '1980-10-30', 'perempuan', 'Jl. Multatuli No.20, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', '000/000', 'Kelurahan A U R', 'Islam', 'Kawin', 'Wiraswasta'),
('Reza Rahadian', 1275021789240772, 1275021789240001, '1988-08-22', 'laki-laki', 'Jl. Haji Misbah Blok BB No.20, Hamdan, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20151', '000/000', 'Kelurahan A U R', 'Islam', 'Kawin', 'PNS'),
('Indah Srirahma', 1275021789240772, 1275021789240002, '1990-11-17', 'perempuan', 'Jl. Haji Misbah Blok BB No.20, Hamdan, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20151', '000/000', 'Kelurahan A U R', 'Islam', 'Kawin', 'Wiraswasta'),
('Jihan Darussalam', 1276021789240994, 1276021789240001, '1998-07-12', 'perempuan', 'Jl. Haji Misbah Blok AA No.50, Hamdan, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20151', '000/000', 'Kelurahan A U R', 'Islam', 'Kawin', 'Pelajar/Mahasiswa'),
('Ahmad Solihin', 1276021789240994, 1276021789240003, '1995-07-25', 'laki-laki', 'Jl. Haji Misbah Blok AA No.50, Hamdan, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20151', '000/000', 'Kelurahan A U R', 'Islam', 'Kawin', 'PNS'),
('Jojo Miranda', 1277021789240645, 1277021789240001, '1980-08-27', 'perempuan', 'Jl. Suka Mulia No.22, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20151', '000/000', 'Kelurahan A U R', 'Kristen', 'Kawin', 'Wiraswasta'),
('Kristanto', 1277021789240645, 1277021789240002, '1972-02-02', 'laki-laki', 'Jl. Suka Mulia No.22, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20151', '000/000', 'Kelurahan A U R', 'Kristen', 'Kawin', 'PNS'),
('Simanjuntak', 1278021789240666, 1278021789240001, '1972-03-02', 'laki-laki', 'Jl. Suka Mulia No.27, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20151', '000/000', 'Kelurahan A U R', 'Islam', 'Belum Kawin', 'PNS'),
('Sulaiman Jisran', 1278021789240822, 1278021789240002, '1982-11-02', 'laki-laki', 'Jl. Multatuli No.88, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', '000/000', 'Kelurahan A U R', 'Islam', 'Belum Kawin', 'PNS'),
('Bambang Sudirejo', 1279021789240322, 1279021789240002, '1985-12-12', 'laki-laki', 'Jl. Pemuda No.58, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', '000/000', 'Kelurahan A U R', 'Islam', 'Belum Kawin', 'PNS');

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
(1, 'Karang Taruna', 'Jl. Suka Mulia No.15, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20151', 'Organisasi Sosial'),
(2, 'Pos Pelayanan Terpadu', 'Jl. Brigjen Katamso No.50, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20159', 'Organisasi Kesehatan'),
(3, 'Koperasi Usaha Dagang', 'Jl. Brigjen Katamso No.21A, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20159', 'Organisasi Ekonomi'),
(4, 'Dewan Kemakmuran Mesjid', 'Jl. Mangkubumi No.21B, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', 'Organisasi Sosial'),
(5, 'Pemberdayaan Kesejahteraan Keluarga', 'Jl. Pemuda No.33A, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', 'Organisasi Kemasyarakatan'),
(6, 'Organisasi baru', 'jalan jalan', 'ekonomi');

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
(1, 'Acai Jaya', 'kerajinan tangan', 'Jl. Kol. Sugiono No.30, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', 'Aliansyah'),
(2, 'Bakso Regar', 'kuliner', 'Jl. Pemuda No.1, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', 'Mina Siregar'),
(3, 'Percetakan SS', 'percetakan', 'Jl. Multatuli No.20, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20212', 'Sarah Zahra'),
(4, 'Bubur Ayam Jakarta', 'kuliner', 'Jl. Haji Misbah Blok BB No.20, Hamdan, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20151', 'Indah Srirahma'),
(5, 'Seafood Maimun', 'kuliner', 'Jl. Suka Mulia No.22, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20151', 'Jojo Miranda');

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
  MODIFY `nomor_bangunan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `nomor_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `organisasi`
--
ALTER TABLE `organisasi`
  MODIFY `nomor_organisasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `usaha/umkm`
--
ALTER TABLE `usaha/umkm`
  MODIFY `nomor_usaha/umkm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
