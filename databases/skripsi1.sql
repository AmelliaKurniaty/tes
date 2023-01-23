-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2022 at 02:11 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skripsi1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `password`, `role`) VALUES
(1, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id_album` int(11) NOT NULL,
  `idol` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `jml_lagu` int(11) NOT NULL,
  `detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `idol`, `nama`, `tahun`, `jml_lagu`, `detail`) VALUES
(1, 1, 'Love Yourself - Tear', '2018', 10, 'Album studio berbahasa Korea ketiga oleh  BTS. Album ini dirilis pada tanggal 18 Mei 2018 oleh Big Hit Entertainment. Album ini merupakan album penuh berbahasa Korea ketiga dari grup ini, setelah album tahun 2016, Wings.'),
(2, 2, 'Merry & Happy', '2017', 14, 'Merry & Happy adalah kemasan ulang dari album studio pertama Twice, Twicetagram. Album yang terinspirasi Natal tersebut dirilis pada 11 Desember 2017'),
(3, 4, 'The Album', '2020', 8, 'The Album adalah album studio Korea pertama yang akan datang oleh grup vokal wanita asal Korea Selatan Blackpink, yang dirilis pada tanggal 2 Oktober 2020, lewat YG Entertainment'),
(4, 2, 'Feel Special', '2018', 6, 'Feel Special adalah album mini kedelapan karya grup vokal perempuan Korea Selatan Twice. Album mini tersebut dirilis oleh JYP Entertainment pada 23 September 2019, dan menampilkan rekaman utama bernama sama serta versi Korea dari singel Jepang mereka \"Breakthrough\"');

-- --------------------------------------------------------

--
-- Table structure for table `alternatiff`
--

CREATE TABLE `alternatiff` (
  `id_alter` int(4) NOT NULL,
  `nama_os` varchar(20) NOT NULL,
  `album` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `jenis` int(11) NOT NULL,
  `pengiriman` int(11) NOT NULL,
  `pajak` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `kelengkapan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alternatiff`
--

INSERT INTO `alternatiff` (`id_alter`, `nama_os`, `album`, `diskon`, `jenis`, `pengiriman`, `pajak`, `jumlah`, `kelengkapan`) VALUES
(1, 'weverse', 1, 1, 5, 2, 1, 3, 5),
(2, 'ktwon4u', 1, 5, 5, 3, 1, 5, 1),
(3, 'Yes24', 1, 1, 1, 4, 1, 5, 1),
(4, 'M2U', 1, 5, 1, 3, 2, 5, 3),
(5, 'Soundwave', 1, 1, 3, 3, 2, 5, 3),
(6, 'Subkshop', 1, 4, 3, 4, 1, 5, 1),
(9, 'Ktown4u', 3, 2, 5, 2, 1, 5, 1),
(10, 'Yes24', 3, 1, 1, 1, 1, 5, 1),
(11, 'Mwave', 3, 3, 3, 2, 2, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `idol`
--

CREATE TABLE `idol` (
  `id_idol` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `debut` varchar(10) NOT NULL,
  `jenis` enum('boygroup','girlgroup') NOT NULL,
  `jml_album` int(5) NOT NULL,
  `detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `idol`
--

INSERT INTO `idol` (`id_idol`, `nama`, `debut`, `jenis`, `jml_album`, `detail`) VALUES
(1, 'BTS', '2013', 'boygroup', 17, 'https://ibighit.com/bts/eng/'),
(2, 'TWICE', '2015', 'girlgroup', 9, 'https://twice.jype.com/'),
(3, 'EXO', '2012', 'boygroup', 10, 'https://www.smtown.com/artist/musician/86'),
(4, 'BlackPink', '2016', 'girlgroup', 3, 'https://www.ygfamily.com/artist/Main.asp?LANGDIV=J'),
(5, 'Day6', '2014', 'boygroup', 15, 'https://day6.jype.com/'),
(6, 'Red Velvet', '2016', 'girlgroup', 10, 'https://www.smtown.com/artist/musician/10017'),
(7, 'IVE', '2021', 'girlgroup', 1, 'http://www.starship-ent.com/profile/musician/ive.php'),
(8, 'Kep1er', '2021', 'girlgroup', 0, 'https://wake-one.com/artists/kep1er/');

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_krt` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `bobot` float NOT NULL,
  `atribut` enum('Benefit','Cost') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_krt`, `nama`, `bobot`, `atribut`) VALUES
(1, 'diskon', 0.25, 'Benefit'),
(2, 'jenis', 0.15, 'Benefit'),
(3, 'pengiriman', 0.2, 'Benefit'),
(4, 'pajak', 0.15, 'Cost'),
(5, 'jumlah', 0.1, 'Benefit'),
(6, 'kelengkapan', 0.15, 'Benefit');

-- --------------------------------------------------------

--
-- Table structure for table `lagu`
--

CREATE TABLE `lagu` (
  `id_lagu` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tahun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lagu`
--

INSERT INTO `lagu` (`id_lagu`, `album`, `nama`, `tahun`) VALUES
(1, 1, 'Magic Shop', 2018),
(2, 2, 'Heart Shaker', 2017),
(3, 1, 'Fake Love', 2018),
(4, 1, 'The Truth Untold', 2018);

-- --------------------------------------------------------

--
-- Table structure for table `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id_sub` int(11) NOT NULL,
  `id_krt` int(11) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  `bobot` varchar(30) NOT NULL,
  `nilai` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_sub`, `id_krt`, `keterangan`, `bobot`, `nilai`) VALUES
(1, 1, '0-5%', 'sangat rendah', 1),
(2, 1, '6-10%', 'rendah', 2),
(3, 1, '11-15%', 'sedang', 3),
(4, 1, '16-20%', 'tinggi', 4),
(5, 1, '>20%', 'sangat tinggi', 5),
(6, 3, '>6 minggu', 'sangat lama', 1),
(7, 3, '4-6 minggu', 'lama', 2),
(8, 3, '2-4 minggu', 'sedang', 3),
(9, 3, '1-2 minggu', 'cepat', 4),
(10, 3, '1 minggu', 'sangat cepat', 5),
(11, 2, '>15 jenis', 'sangat banyak', 5),
(12, 2, '8-14 jenis', 'banyak', 3),
(13, 2, '<8 jenis', 'sedikit', 1),
(14, 4, 'tanpa bea masuk', 'rendah', 1),
(15, 4, 'kena bea masuk', 'tinggi', 2),
(16, 5, '1-5', 'sedikit', 1),
(17, 5, '6-10', 'sedang', 3),
(18, 5, '>10', 'tinggi', 5),
(19, 6, 'album only', 'sedikit', 1),
(20, 6, 'Album_Poster, album_benefit', 'sedang', 3),
(21, 6, 'album, poster, benefit', 'tinggi', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`),
  ADD KEY `idol_2` (`idol`),
  ADD KEY `idol` (`idol`) USING BTREE;

--
-- Indexes for table `alternatiff`
--
ALTER TABLE `alternatiff`
  ADD PRIMARY KEY (`id_alter`);

--
-- Indexes for table `idol`
--
ALTER TABLE `idol`
  ADD PRIMARY KEY (`id_idol`),
  ADD KEY `id_idol` (`id_idol`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_krt`);

--
-- Indexes for table `lagu`
--
ALTER TABLE `lagu`
  ADD PRIMARY KEY (`id_lagu`),
  ADD KEY `album` (`album`);

--
-- Indexes for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id_sub`),
  ADD KEY `id_krt` (`id_krt`),
  ADD KEY `id_sub` (`id_sub`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `alternatiff`
--
ALTER TABLE `alternatiff`
  MODIFY `id_alter` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `idol`
--
ALTER TABLE `idol`
  MODIFY `id_idol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_krt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lagu`
--
ALTER TABLE `lagu`
  MODIFY `id_lagu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id_sub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`idol`) REFERENCES `idol` (`id_idol`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
