-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2019 at 06:05 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventaris`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode_inventaris` varchar(25) NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `kode_lokasi` varchar(5) NOT NULL,
  `nama_unit` varchar(5) NOT NULL,
  `kode_tahun` varchar(5) NOT NULL,
  `nomor_urut` varchar(5) NOT NULL,
  `nomor_mtp` varchar(10) NOT NULL,
  `nama_barang` text NOT NULL,
  `nilai_barang` varchar(20) NOT NULL,
  `tgl_beli` date DEFAULT NULL,
  `kondisi` varchar(20) NOT NULL,
  `spesifikasi` text NOT NULL,
  `kode_barang` varchar(7) NOT NULL,
  `id_kode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode_inventaris`, `tempat`, `kode_lokasi`, `nama_unit`, `kode_tahun`, `nomor_urut`, `nomor_mtp`, `nama_barang`, `nilai_barang`, `tgl_beli`, `kondisi`, `spesifikasi`, `kode_barang`, `id_kode`) VALUES
('1RRMRTXX112222123112221', 'Lantai 1', '1RR', 'MRT', 'XX', '222', '123112221', 'sepatu', '20000', '0000-00-00', 'baik', 'insyaallah', '112', 0),
('KLMOOPXX20533298811231', 'Kolam', 'KLM', 'OOP', 'XX', '332', '98811231', 'Kursi Kerja', '100000', '0000-00-00', 'istimewa', 'baik', '205', 0),
('4RTPPPXX11222277988542551', 'Lantai 4', '4RT', 'PPP', 'XX', '222', '7798854255', 'sepatu', '10000', '0000-00-00', 'baik', 'oke', '112', 0),
('KKKMNNXX1122211998812221', 'Kolam', 'KKK', 'MNN', 'XX', '221', '1998812221', 'sepatu', '20000', '0000-00-00', 'baik', 'okei', '112', 0),
('XX112', '', '', '', 'XX', '', '', 'sepatu', '', '0000-00-00', '', '', '112', 0),
('1TTUUT1920511148989255646', 'Lantai 1', '1TT', 'UUT', '19', '111', '4898925564', 'Kursi Kerja', '20000', '2019-07-03', 'baik', 'baik', '205', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kodebarang`
--

CREATE TABLE `kodebarang` (
  `id_kode` int(11) NOT NULL,
  `kode_jenis` int(11) DEFAULT NULL,
  `namabarang` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kodebarang`
--

INSERT INTO `kodebarang` (`id_kode`, `kode_jenis`, `namabarang`) VALUES
(1, 112, 'sepatu'),
(2, 202, 'Meja Kerja'),
(3, 205, 'Kursi Kerja'),
(4, 111, 'Router'),
(5, 222, 'Jaket');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `nama_peminjam` varchar(11) NOT NULL,
  `nomor_identitas` varchar(11) NOT NULL,
  `nomor_telp` varchar(11) NOT NULL,
  `kode_inventaris` varchar(25) NOT NULL,
  `namabarang` varchar(20) NOT NULL,
  `lokasi` varchar(20) NOT NULL,
  `jumlah` varchar(11) NOT NULL,
  `keperluan` varchar(11) NOT NULL,
  `tgl_aju` varchar(20) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `waktu_pinjam` varchar(10) NOT NULL,
  `tgl_balik` date NOT NULL,
  `waktu_balik` varchar(10) NOT NULL,
  `sts` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `nama_peminjam`, `nomor_identitas`, `nomor_telp`, `kode_inventaris`, `namabarang`, `lokasi`, `jumlah`, `keperluan`, `tgl_aju`, `tgl_pinjam`, `waktu_pinjam`, `tgl_balik`, `waktu_balik`, `sts`) VALUES
(3, 'Hadi', '5578887', '08547887', 'KLMOOPXX20533298811231', 'Kursi Kerja', 'Kolam', '2', 'Panitia', '22-Jul-2019', '2019-07-26', '11:00', '2019-07-27', '11:00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `pindah`
--

CREATE TABLE `pindah` (
  `kode_inventaris` varchar(25) NOT NULL,
  `nama_barang` varchar(12) NOT NULL,
  `tempat_a` varchar(12) NOT NULL,
  `kode_lokasi_a` varchar(7) NOT NULL,
  `tempat_b` varchar(12) NOT NULL,
  `kode_lokasi_b` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pindah`
--

INSERT INTO `pindah` (`kode_inventaris`, `nama_barang`, `tempat_a`, `kode_lokasi_a`, `tempat_b`, `kode_lokasi_b`) VALUES
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('4RTMRTXX112222123112221', 'sepatu', 'Lantai 4', '4RT', 'Lantai 1', '1RR'),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD KEY `id_kode` (`id_kode`);

--
-- Indexes for table `kodebarang`
--
ALTER TABLE `kodebarang`
  ADD PRIMARY KEY (`id_kode`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kodebarang`
--
ALTER TABLE `kodebarang`
  MODIFY `id_kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
