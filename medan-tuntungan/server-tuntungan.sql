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
-- Database: `server-tuntungan`
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
(1, 'Kolam Renang Kenanga', 'tempat olahraga', 'Jl. Letjen Djamin Ginting, Lau Cih, Kec. Medan Tuntungan, Kota Medan, Sumatera Utara 20136', 'Muhaimin Rahmad'),
(2, 'Sekolah Siti Hajar', 'sekolah', 'JL. Letjen Jamin Ginting, Jl. Paya Bundung No.Km, Simpang Selayang, Kec. Medan Tuntungan, Kota Medan, Sumatera Utara 20135', 'Ridho Malik'),
(3, 'Pesantren Ar-raudhatul Hasanah', 'sekolah', 'Jl. Setia Budi, Simpang Selayang, Kec. Medan Tuntungan, Kota Medan, Sumatera Utara 20135', 'Ridho Malik'),
(4, 'GBI House of Sacrifice', 'gereja', 'Jl. Letjend Jamin Ginting KM.11,5 No.65, Simpang Selayang, Medan Tuntungan, Simpang Selayang, Kec. Medan Tuntungan, Kota Medan, Sumatera Utara 20135', 'Eka Mulyadi'),
(5, 'SMA Santo Yoseph', 'sekolah', 'Jl. Flamboyan Raya No.139, Tj. Selamat, Kec. Medan Tuntungan, Kota Medan, Sumatera Utara 20134', 'Hari Sirait'),
(6, 'Rajasyah Outbond', 'tempat olahraga', 'Jl. Bunga Pariama, Namu Gajah, Kec. Medan Tuntungan, Kota Medan, Sumatera Utara 20137', 'Rajasyah'),
(7, 'Rajawali Futsal', 'tempat olahraga', 'Jl. Jamin Ginting, KM. 14, Kel. Sidumulyo, Kec. Medan Tuntungan, Sidomulyo, Medan, Kota Medan, Sumatera Utara 20137', 'Rajawali'),
(8, 'RSUP H. Adam Malik', 'rumah sakit', 'Jl. Bunga Lau No.17, Kemenangan Tani, Kec. Medan Tuntungan, Kota Medan, Sumatera Utara 20136', 'Irawan Siregar'),
(9, 'Masjid Al-Maimun', 'masjid', 'Jl. Jamin Ginting, Komplek Puri Zahara I, Simpang Selayang, Kec. Medan Tuntungan, Kota Medan, Sumatera Utara 20134', 'Zahara Ridwan'),
(10, 'Kolam Renang Primbana', 'tempat olahraga', 'Jl. Melati Raya No.55, Sempakata, Kec. Medan Selayang, Kota Medan, Sumatera Utara 20132', 'Joshua Hutagalung');

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
(1, 'Simpang Selayang Bersih 2018', 'Acara tahunan gotong royong para masyarakat Simpang Selayang.', 'Gotong Royong', 'Simpang Selayang', '2018-06-18'),
(2, 'Simpang Selayang Bersih 2019', 'Acara tahunan gotong royong para masyarakat Simpang Selayang.', 'Gotong Royong', 'Simpang Selayang', '2019-05-01'),
(3, 'DIRGAHAYU RI ke-73', 'Acara ulangtaun kemerdekaan Republik Indonesia dan lomba 17-an untuk anak-anak', 'Perlombaan', 'Komplek Puri Zahara I', '2018-08-17'),
(4, 'DIRGAHAYU RI ke-74', 'Acara ulangtaun kemerdekaan Republik Indonesia dan lomba 17-an untuk anak-anak', 'Perlombaan', 'Komplek Puri Zahara I', '2019-08-17'),
(5, 'Maulid Nabi', 'Acara maulid nabi dengan bintang tamu Ustad Abdul Somad.', 'Pengajian', 'Masjid Al-Maimun', '2018-11-20');

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
('Indro Maskulin', 1271021782640245, 1271021782640002, 'tidak punya'),
('Kresna Junaidi', 1272021782640323, 1272021782640005, 'punya'),
('Muhammad Bambang', 1272021782640888, 1272021782640002, 'tidak punya'),
('Ali Reza', 1273021782640746, 1273021782640001, 'tidak punya'),
('Jinjin', 1274021782640234, 1274021782640001, 'punya'),
('Arif Aziz', 1275021782640024, 1275021782640003, 'tidak punya'),
('Fachreza Siregar', 1276021782640553, 1276021782640001, 'tidak punya'),
('Koko Malih', 1277021782640116, 1277021782640001, 'punya'),
('Ricqy Ramadhan', 1278021782640282, 1278021782640002, 'tidak punya'),
('Gege Pratama', 1279021782640292, 1279021782640002, 'tidak punya');

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
('Misbah', 1271021782640245, 1271021782640001, '1997-05-02', 'perempuan', 'Jl. Jamin Ginting nomor 283A, Simpang Selayang, Medan Tuntungan, Sumatera Utara', '000/000', 'Kelurahan Simpang Selayang', 'Islam', 'Kawin', 'Pelajar/Mahasiswa'),
('Indro Maskulin', 1271021782640245, 1271021782640002, '1995-06-03', 'laki-laki', 'Jl. Jamin Ginting nomor 283A, Simpang Selayang, Medan Tuntungan, Sumatera Utara', '000/000', 'Kelurahan Simpang Selayang', 'Islam', 'Kawin', 'PNS'),
('Muhammad Bambang', 1272021782640888, 1272021782640002, '1968-05-02', 'laki-laki', 'Jl. Jamin Ginting nomor 50, Simpang Selayang, Medan Tuntungan, Sumatera Utara', '000/000', 'Kelurahan Simpang Selayang', 'Islam', 'Kawin', 'Wiraswasta'),
('Maya Purbasari', 1272021782640323, 1272021782640003, '1988-05-02', 'perempuan', 'Jl. Jamin Ginting nomor 232A, Simpang Selayang, Medan Tuntungan, Sumatera Utara', '000/000', 'Kelurahan Simpang Selayang', 'Islam', 'Kawin', 'PNS'),
('Kresna Junaidi', 1272021782640323, 1272021782640005, '1972-04-02', 'laki-laki', 'Jl. Jamin Ginting nomor 232, Simpang Selayang, Medan Tuntungan, Sumatera Utara', '000/000', 'Kelurahan Simpang Selayang', 'Islam', 'Kawin', 'Wiraswasta'),
('Ali Reza', 1273021782640746, 1273021782640001, '1988-08-30', 'laki-laki', 'Jl. Bunga Rinte no.43, Simpang Selayang, Medan Tuntungan, Sumatera Utara', '000/000', 'Kelurahan Simpang Selayang', 'Islam', 'Belum Kawin', 'PNS'),
('Jinjin', 1274021782640234, 1274021782640001, '1979-11-09', 'laki-laki', 'Jl. Jamin Ginting nomor 140, Simpang Selayang, Medan Tuntungan, Sumatera Utara', '000/000', 'Kelurahan Simpang Selayang', 'Kristen', 'Kawin', 'PNS'),
('Arif Aziz', 1275021782640024, 1275021782640003, '1990-09-21', 'laki-laki', 'Jl. Jamin Ginting nomor 99, Simpang Selayang, Medan Tuntungan, Sumatera Utara', '000/000', 'Kelurahan Simpang Selayang', 'Islam', 'Kawin', 'PNS'),
('Hanna Babitha', 1275021782640024, 1275021782640005, '1968-05-02', 'perempuan', 'Jl. Jamin Ginting nomor 99, Simpang Selayang, Medan Tuntungan, Sumatera Utara', '000/000', 'Kelurahan Simpang Selayang', 'Islam', 'Kawin', 'Wiraswasta'),
('Fachreza Siregar', 1276021782640553, 1276021782640001, '1998-08-05', 'laki-laki', 'Jl. Setiabudi no.F5, Simpang Selayang, Medan Tuntungan, Sumatera Utara', '000/000', 'Kelurahan Simpang Selayang', 'Islam', 'Kawin', 'PNS'),
('Marisa Diah', 1276021782640553, 1276021782640002, '1998-08-31', 'perempuan', 'Jl. Setiabudi no.F5, Simpang Selayang, Medan Tuntungan, Sumatera Utara', '000/000', 'Kelurahan Simpang Selayang', 'Islam', 'Kawin', 'Wiraswasta'),
('Koko Malih', 1277021782640116, 1277021782640001, '1972-07-23', 'laki-laki', 'Jl. Setiabudi no.268, Simpang Selayang, Medan Tuntungan, Sumatera Utara', '000/000', 'Kelurahan Simpang Selayang', 'Islam', 'Belum Kawin', 'PNS'),
('Ricqy Ramadhan', 1278021782640282, 1278021782640002, '1968-11-30', 'laki-laki', 'Jl. Setiabudi no.999, Simpang Selayang, Medan Tuntungan, Sumatera Utara', '000/000', 'Kelurahan Simpang Selayang', 'Kristen', 'Kawin', 'PNS'),
('Sarah Calicalah', 1278021782640282, 1278021782640005, '1972-04-02', 'perempuan', 'Jl. Setiabudi no.F5, Simpang Selayang, Medan Tuntungan, Sumatera Utara', '000/000', 'Kelurahan Simpang Selayang', 'Kristen', 'Kawin', 'Wiraswasta'),
('Gege Pratama', 1279021782640292, 1279021782640002, '1972-01-30', 'laki-laki', 'Jl. Setiabudi 900, Simpang Selayang, Medan Tuntungan, Sumatera Utara', '000/000', 'Kelurahan Simpang Selayang', 'Islam', 'Kawin', 'PNS'),
('Audry Batubara', 1279021782640292, 1279021782640003, '1975-05-05', 'perempuan', 'Jl. Setiabudi no.900, Simpang Selayang, Medan Tuntungan, Sumatera Utara', '000/000', 'Kelurahan Simpang Selayang', 'Islam', 'Kawin', 'Wiraswasta');

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
(1, 'Karang Taruna', 'Jl. Setiabudi no.200, Simpang Selayang, Medan Tuntungan, Sumatera Utara', 'Organisasi Sosial'),
(2, 'Koperasi Usaha Dagang', 'Jl. Paya Bundung no.23, Simpang Selayang, Medan Tuntungan, Sumatera Utara', 'Organisasi Ekonomi'),
(3, 'Dewan Kemakmuran Mesjid', 'Jl. Jamin Ginting no.343, Simpang Selayang, Medan Tuntungan, Sumatera Utara', 'Organisasi Sosial'),
(4, 'Pos Pelayanan Terpadu', 'Jl. Setiabudi no.23, Simpang Selayang, Medan Tuntungan, Sumatera Utara', 'Organisasi Kesehatan'),
(5, 'Pemberdayaan Kesejahteraan Keluarga', 'Jl. Setiabudi no.455, Simpang Selayang, Medan Tuntungan, Sumatera Utara', 'Organisasi Kemasyarakatan');

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
(1, 'Warnet Gaming Selayang', 'teknologi', 'Jl. Jamin Ginting nomor 50, Simpang Selayang, Medan Tuntungan, Sumatera Utara', 'Muhammad Bambang'),
(2, 'Percetakan Kresna', 'percetakan', 'Jl. Jamin Ginting nomor 232, Simpang Selayang, Medan Tuntungan, Sumatera Utara', 'Kresna Junaidi'),
(3, 'Rumah Makan Sederhana', 'kuliner', 'Jl. Jamin Ginting nomor 99, Simpang Selayang, Medan Tuntungan, Sumatera Utara', 'Hanna Babitha'),
(4, 'Bakso Malang Setiabudi', 'kuliner', 'Jl. Setiabudi no.F5, Simpang Selayang, Medan Tuntungan, Sumatera Utara', 'Marisa Diah'),
(5, 'Seafood Setiabudi', 'kuliner', 'Jl. Setiabudi no.F5, Simpang Selayang, Medan Tuntungan, Sumatera Utara', 'Sarah Calicalah'),
(6, 'Ody''s Craft', 'kerajinan tangan', 'Jl. Setiabudi no.900, Simpang Selayang, Medan Tuntungan, Sumatera Utara', 'Audry Batubara');

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
  MODIFY `nomor_organisasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `usaha/umkm`
--
ALTER TABLE `usaha/umkm`
  MODIFY `nomor_usaha/umkm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
