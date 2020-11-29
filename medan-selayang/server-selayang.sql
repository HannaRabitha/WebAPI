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
-- Database: `server-selayang`
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
(1, 'Musholla Al-Ikhsan', 'masjid', 'Jl. Sei Silau', 'Musholla Al-Ikhsan Sei Silau'),
(2, 'Sekolah Djuwita', 'sekolah', 'Jl. Sei Asahan No. 37', 'Yayasan Djuwita Prakarsa'),
(3, 'GBKP Sei Padang', 'gereja', 'Jl. Sei Padang No. 117', 'GBKP Sei Padang'),
(4, 'HKBP Bethesda', 'gereja', 'Jl. Sei Asahan', 'HKBP Bethesda Sei Asahan'),
(5, 'Total Futsal', 'tempat olahraga', 'Jl. Dr. Mansyur Baru II No.6', 'Wahyono'),
(6, 'Apartements Hubber', 'lainnya', 'Jl. Sei Asahan No. 80', 'Huber Sitompul'),
(7, 'Masjid Raya Al-Istiqomah', 'masjid', 'Jl. Sei Asahan No. 3', 'Masjid Raya Al-Istiqomah Sei Asahan'),
(8, 'Bali Futsal', 'tempat olahraga', 'Jl. Sipirok No. 118', 'Syahputra Ilham'),
(9, 'Kolam Renang Selayang', 'tempat olahraga', 'Jl. Dr. Mansyur No. 71 D', 'Dispora Sumut'),
(10, 'SMK N 8 Medan', 'sekolah', 'Jl. Dr. Mansyur No. 79', 'Dinas Pendidikan Kota Medan'),
(11, 'Kantor Kelurahan Padang Bulan Selayang I', 'lainnya', 'Jl. Sei Batu Gingging Ps. X No.26-a', 'Pemko Medan'),
(12, 'Mansyur Prima Residence', 'lainnya', 'Gg. Sehat', 'Felix Borneo'),
(13, 'Pariwisata Sumut (tourist information center)', 'lainnya', 'Gg. Berdikari No. 5', 'Pemko Medan'),
(14, 'Green Residences', 'lainnya', 'Jl. Sei Padang No. 159', 'Pratama'),
(15, 'Terminal Futsal', 'tempat olahraga', 'Jl. SMTK Dalam No.10', 'Wahyudi'),
(16, 'Village Futsal', 'tempat olahraga', 'Jl. Abdul Hakim, Gang Susuk 8 No. 3', 'Sawaldi'),
(17, 'Gereja Khatolik St. Joseph', 'gereja', 'Jl. DR. Mansyur', 'Gereja Khatolik St. Joseph Dr. Mansyur'),
(18, 'SMP Dharma Pancasila', 'sekolah', 'JL. Doktor Mansyur, No. 71-B', 'Yayasan Dharma Pancasila'),
(19, 'Masjid Al- Ghufron', 'masjid', 'Jl. Suka Baru No.21', 'Masjid Al- Ghufron Suka Baru'),
(20, 'Musholla Aisyiyah', 'masjid', 'Jl. Sei Blutu Gg. Bilal No.96', 'Musholla Aisyiyah Sei Blutu'),
(21, 'Masjid Al-Ishlah', 'masjid', 'Jl. Sei Belutu No.99', 'Masjid Al-Ishlah Sei Belutu22'),
(22, 'Sopo HKBP Bethesda', 'lainnya', 'Jl. Sei Asahan', 'HKBP Bethesda Sei Asahan');

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
(1, 'Menuju Lingkungan Bersih', 'setiap warga berpartisipasi untuk bergotong royong guna menci[takan lingkungan yang lebih asri', 'Gotong Royong', 'Desa Padang Bulan Selayang I', '2019-06-22'),
(2, 'Pengajian Akbar Kelurahan Padang Bulan Selayang I', 'kegiatan yang dilakukan guna meningkatkan silahturami dan meningkatkan ilmu agama', 'Pengajian', 'Masjid Raya Al-Istiqomah', '2019-07-05'),
(3, 'Selamat Ulangtahun Indonesia', 'merayakan kemerdekaan Indonesia. Biasanya Mengadakan perlombaan untuk setiap warga', 'Perlombaan', 'Desa Padang Bulan Selayang I', '2019-08-17'),
(4, 'Donor Darah', 'memberi pengarahan kepada masyarakat agar menyadari pentingnya pendekatan kepada masyarakat dari aspek kesehatan. Kegiatan donor darah ini diselenggrakan bersama Palang Merah Indonesia (PMI)', 'Donor Darah', 'Kecamatan Medan Selayang', '2019-08-07'),
(5, 'Posyandu', 'berbagi pengetahuan dan pengalaman tentang kesehatan ibu, bayi, dan anak balita.', 'Kesehatan', 'Kecamatan Medan Selayang', '2019-07-22');

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
('Yoel Tambunan', 1271097128751771, 1271087409190006, 'tidak punya'),
('Habib Hasibuan', 1273011606151455, 1273065465580001, 'punya'),
('Fathan Rizky', 1274011127150003, 1274046005280007, 'tidak punya'),
('Aldi Rachman', 1275011307150001, 1275042006630002, 'tidak punya'),
('Richard Leo Silalahi', 1276097128755498, 1276019274650004, 'tidak punya'),
('Rizal Marpaung', 1277011127151233, 1277034365580008, 'punya'),
('Jasver Lin', 1277094752581005, 1277012131415006, 'tidak punya');

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
('Fernando Kelvin Tambunan', 1271097128751771, 1271056128640009, '1999-05-11', 'laki-laki', 'Gg. Sehat No. 15', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Kristen Protestan', 'Belum Menikah', 'Mahasiswa'),
('Yoel Tambunan', 1271097128751771, 1271087409190006, '1973-09-09', 'laki-laki', 'Gg. Sehat No.15', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Kristen Protestan', 'Menikah', 'Pegawai Negeri Sipil'),
('Maria Anastasyia Tambunan', 1271097128751771, 1271088766450007, '2004-05-01', 'perempuan', 'Gg. Sehat No. 15', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Kristen Protestan', 'Belum Menikah', 'Pelajar'),
('Christina Sirait', 1271097128751771, 1271097125180008, '1978-10-01', 'perempuan', 'Gg. Sehat No. 15', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Kristen Protestan', 'Menikah', 'Bidan'),
('Budi Hasibuan', 1273011606151455, 1273032365580005, '1992-08-31', 'laki-laki', 'Jl. Abdul Hakim, Perumahan Classic III no. 7', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Islam', 'Belum Menikah', 'Guru'),
('Habib Hasibuan', 1273011606151455, 1273065465580001, '1965-03-25', 'laki-laki', 'Jl. Abdul Hakim, Perumahan Classic III no. 7', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Islam', 'Menikah', 'Wirausaha'),
('Siti Ananda Putri', 1273011606151455, 1273098965580009, '1970-11-11', 'perempuan', 'Jl. Abdul Hakim, Perumahan Classic III no. 7', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Islam', 'Menikah', 'Ibu Rumah Tangga'),
('Fauzy Pratama Rizky', 1274011127150003, 1274046001230006, '1998-08-23', 'laki-laki', 'Jl. Sipirok No.25', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Islam', 'Belum Menikah', 'Mahasiswa'),
('Fathan Rizky', 1274011127150003, 1274046005280007, '1972-05-05', 'perempuan', 'Jl. Sipirok No. 25', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Islam', 'Menikah', 'Pegawai Negeri Sipil'),
('Erni Siswati', 1274011127150003, 1274047665280001, '1979-09-02', 'perempuan', 'Jl. Sipirok No. 25', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Islam', 'Menikah', 'Ibu Rumah Tangga'),
('Dwi Amelia Rizky', 1274011127150003, 1274098705280004, '2000-10-18', 'perempuan', 'Jl. Sipirok No. 25', '000/000', 'Kelurahan Medan Selayang I', 'Islam', 'Belum Menikah', 'Mahasiswa'),
('Aldi Rachman', 1275011307150001, 1275042006630002, '1969-07-06', 'laki-laki', 'Jl. Sei Padang No. 5', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Islam', 'Menikah', 'Wiraswatsa'),
('Tria Ananda Rizky', 1275011307150001, 1275045105990007, '2005-04-07', 'perempuan', 'Jl. Sei Padang No. 5', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Islam', 'Belum Menikah', 'Pelajar'),
('Muhammad Putra Pratama', 1275011307150001, 1275045264890004, '1999-11-19', 'laki-laki', 'Jl. Sei Padang No. 5', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Islam', 'Belum Menikah', 'Mahasiswa'),
('Rina Ananda', 1275011307150001, 1275046508620001, '1971-10-10', 'perempuan', 'Jl. Sei Padang No. 5', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Islam', 'Menikah', 'Guru'),
('Sagara Dwi Rachman', 1275011307150001, 1275099279550007, '2001-12-29', 'laki-laki', 'Jl. Sei Padang No. 5', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Islam', 'Belum Menikah', 'Pelajar'),
('Richard Leonardo Silalahi', 1276097128755498, 1276019274650004, '1990-08-23', 'laki-laki', 'Jl. Sei Asahan No. 4', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Kristen Khatolik', 'Menikah', 'Pegawai BUMN'),
('Dessy Ulina Ginting', 1276097128755498, 1276056473890002, '1992-09-11', 'perempuan', 'Jl. Sei Asahan No. 4', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Kristen Khatolik', 'Menikah', 'Dokter'),
('Michael Silalahi', 1276097128755498, 1276056784310006, '2014-12-19', 'laki-laki', 'Jl. Sei Asahan No. 4', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Kristen Khatolik ', 'Belum Menikah', 'Pelajar'),
('Jasver Lin', 1277094752581005, 1277012131415006, '1987-11-19', 'laki-laki', 'Gg. Pribadi No. 3', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Budha', 'Menikah', 'Pegawai Swasta'),
('Calvin Lin', 1277094752581005, 1277012139892001, '2001-01-09', 'laki-laki', 'Gg. Pribadi No. 3', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Budha', 'Belum Menikah', 'Pelajar'),
('Veronika Chou', 1277094752581005, 1277012878415008, '1988-06-19', 'perempuan', 'Gg. Pribadi No. 3', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Budha', 'Menikah', 'Pegawai Swasta'),
('Rizal Marpaung', 1277011127151233, 1277034365580008, '1988-03-15', 'laki-laki', 'Jl. Sei Batu Gingging', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Islam', 'Menikah', 'Buruh'),
('Andre Putra Marpaung', 1277011127151233, 1277040065580002, '2000-01-02', 'laki-laki', 'Jl. Sei Batu Gingging', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Islam', 'Belum Menikah', 'Pelajar'),
('shintya Lin', 1277094752581005, 1277094761415005, '1998-11-01', 'perempuan', 'Gg. Pribadi No. 3', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Budha', 'Belum Menikah', 'Mahasiswa'),
('Laila Nur Larasati', 1277011127151233, 1277145165580001, '1990-02-27', 'perempuan', 'Jl. Sei Batu Gingging', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Islam', 'Menikah', 'Ibu Rumah Tangga'),
('Anwar Dwi Marpaung', 1277011127151233, 1277542365580003, '2002-05-01', 'laki-laki', 'Jl. Sei Batu Gingging', '000/000', 'Kelurahan Medan Selayang I', 'Islam', 'Belum Menikah', 'Pelajar'),
('Wulan Triskia Marpaung', 1277011127151233, 1277654065580007, '2005-10-06', 'perempuan', 'Jl. Sei Batu Gingging', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Islam', 'Belum Menikah', 'Pelajar'),
('Vira Larasati', 1279018708751007, 1279028361180009, '1998-09-06', 'perempuan', 'Jl. Suka Baru No. 11', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Islam', 'Belum Menikah', 'Mahasiswa'),
('Fitria Laksita', 1279018708751007, 1279078961180006, '2001-12-12', 'perempuan', 'Jl. Suka Baru No. 11', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Islam', 'Belum Menikah', 'Pelajar'),
('Taufik Hidayat', 1279018708751007, 1279098083740008, '1980-01-19', 'laki-laki', 'Jl. Suka Baru No. 11', '000/000', 'kelurahan Padang Bulan Selayang I', 'Islam', 'Menikah', 'Wiraswasta'),
('Cici Paramita', 1279018708751007, 1279098701180004, '1981-05-25', 'perempuan', 'Jl. Suka Baru No. 11', '000/000', 'Kelurahan Padang Bulan Selayang I', 'Islam', 'Menikah', 'Guru');

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
(1, 'KMKS MEDAN', 'Gg. Susuk 5', 'Organisasi Agama'),
(2, 'Pimpinan Ranting Muhammadiyah Pb. Selayang. I', 'Jl. Sei Padang No.129', 'Organisasi Agama'),
(3, 'Ikatan Sarjana Ekonomi Indonesia (ISEI) - Medan', ' Jl. Sei Batu Gingging Ps. X No.50', 'Organisasi Pendidikan'),
(4, 'Hijabers Community Medan', 'Jl. Sei Belutu No.2', 'Organisasi Sosial'),
(7, 'Badan Permusyawaratan Desa', 'Jalan Sei Asahan', 'Organisasi Sosial'),
(8, 'Bina Keluarga Balita (BKB)', 'Jalan Sei Padang', 'Organisasi Pendidikan'),
(9, 'Lembaga Kemasyarakatan Kelurahan (LKK)', 'Jalan Alumni No 21', 'Organisasi Sosial'),
(10, 'Pekerja Sosail Masyarakat (PSM)', 'Jalan Sei Belutu', 'Organisasi Sosial'),
(11, 'Yayasan Caritas PSE', 'Jl. Sei Asahan No.42', 'Organisasi Agama'),
(12, 'Medan Ju-jitsu Club (MJC)', 'Jl. Sei Padang, Gg Sei Sipirok, No. 1', 'Organisasi Olahraga'),
(13, 'Majelis Taklim Taqwa', 'Jl. Sei Padang No.110', 'Organisasi Agama');

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
(1, 'Soto Nanda', 'kuliner', 'Jl. Sei Belutu No.18', 'Nanda'),
(2, 'Kedai Kopi CUIXZ', 'kuliner', 'Jl. Sei Belutu No.33', 'Rara'),
(3, 'warkop e''lite', 'kuliner', 'Jl. DR. Mansyur No.122', 'Fathan Rizky'),
(4, 'Warung Bambu', 'kuliner', 'Jl. Sei Silau No. 100', 'Katrina'),
(5, 'Sandy Toko', 'lainnya', 'Jl. DR. Mansyur', 'Marisa Raudiah'),
(6, 'Asmi Taylor', 'lainnya', 'Jl. Sei Belutu nno.87', 'Asmi Naina'),
(7, 'Warung Kita', 'kuliner', 'Jl. Suka Baru No. 65', 'Nadya'),
(8, 'usahadesa', 'teknologi', 'Jl. Sei Batu Gingging No. 45', 'Farid'),
(9, 'Percetakan Makmur', 'percetakan', 'Gg. Famili no. 5', 'Hesti'),
(10, 'Bunga Hias', 'kerajinan tangan', 'Jl. Sei Padang No. 55', 'Erika'),
(11, 'Cafe Rumah Pohon', 'kuliner', 'Jl. Sei Belutu No.43', 'Dimas Djodi'),
(12, 'Diamond SPA', 'lainnya', 'Jl. Sei Belutu No.7', 'Fransiska Wen'),
(13, 'Euphoria Rock Store', 'lainnya', 'Jl. DR. Mansyur No.116', 'Thomas'),
(14, 'Sanger Learning', 'teknologi', 'blok a ICON 3, Jl. Abdul Hakim No.2', 'Reyno'),
(15, 'Tivona Perfume', 'lainnya', 'Jl. DR. Mansyur No.71', 'Tifanny'),
(16, 'Hanger Adventure', 'lainnya', 'Jl. DR. Mansyur No.67', 'Bimo Tommy'),
(17, 'Rumah Sepatu', 'lainnya', 'Jl. DR. Mansyur No.134', 'Xaverius'),
(18, 'Bakery Ikhwan', 'kuliner', 'Jl. Sei Asahan No.51', 'Ikhwan'),
(19, 'Bintang Kejora Konveksi ', 'percetakan', 'Jl. DR. Mansyur No.33', 'Bintang Kevin'),
(20, 'UNKL 347 Flagshipstore', 'percetakan', 'Jl. DR. Mansyur', 'Sutarman'),
(21, 'Warngby Warning Clothing', 'percetakan', 'Jl. DR. Mansyur No.80', 'Gresella'),
(22, 'Syari Likeanew New Preloved Syari Stuffs', 'lainnya', 'Jl. Sipirok', 'Rini Diana'),
(23, 'Daya Muda Agung. PT', 'agrobisnis', 'JL. Sei Padang No. 141', 'Samsyul'),
(24, 'Bengkel Amarr', 'lainnya', 'Jl. Sei Batu Gingging', 'Amar Zacky'),
(25, 'Rainbow Cake', 'kuliner', 'Jl. Sei Batu Gingging ', 'Susi'),
(26, 'Toys Story Store', 'teknologi', 'Jl. Sei Batu Gingging No.57', 'Tony Syahputra'),
(27, 'Seoul Cam', 'teknologi', 'Jl. Sei Batu Gingging No.66', 'Yesi Hany'),
(28, 'Angkle Boots', 'kerajinan tangan', 'Jl. Sei Batu Gingging No.45', 'Melvianta'),
(29, 'Marcell Water', 'lainnya', 'Jl. Sei Batu Gingging No.45', 'Asmi Naina'),
(30, 'Burger Mbak Ayu', 'kuliner', 'Jl. Sei Silau No.65', 'Ayu'),
(31, 'NH Saka Florist', 'agrobisnis', 'Jl. Sei Batu Gingging Pasar 5 No.30', 'Saka'),
(32, 'Percetakan Ginta', 'percetakan', 'Jalan Dr. Mansyur No.11B', 'Erika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('hanna', 'hanna');

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
  MODIFY `nomor_bangunan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `nomor_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `organisasi`
--
ALTER TABLE `organisasi`
  MODIFY `nomor_organisasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `usaha/umkm`
--
ALTER TABLE `usaha/umkm`
  MODIFY `nomor_usaha/umkm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
