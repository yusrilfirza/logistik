-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2019 at 07:48 AM
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
  `id` int(11) NOT NULL,
  `kode_inventaris` varchar(25) NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `kode_lokasi` varchar(5) NOT NULL,
  `nama_unit` varchar(255) NOT NULL,
  `kode_unit` varchar(5) NOT NULL,
  `kode_tahun` varchar(5) NOT NULL,
  `nomor_urut` varchar(5) NOT NULL,
  `nama_akun` varchar(255) NOT NULL,
  `nomor_mtp` varchar(10) NOT NULL,
  `nama_barang` text NOT NULL,
  `nilai_barang` varchar(20) NOT NULL,
  `tgl_beli` date DEFAULT NULL,
  `kondisi` varchar(20) NOT NULL,
  `spesifikasi` text NOT NULL,
  `kode_barang` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `kode_inventaris`, `tempat`, `kode_lokasi`, `nama_unit`, `kode_unit`, `kode_tahun`, `nomor_urut`, `nama_akun`, `nomor_mtp`, `nama_barang`, `nilai_barang`, `tgl_beli`, `kondisi`, `spesifikasi`, `kode_barang`) VALUES
(1, '401OP121020011234101', 'Ruangan 401', '401', '', 'OP', '12', '001', '', '1234101', 'Laptop', '', NULL, '', 'Asus Core i3 ', '102'),
(2, '401OP121020021234101', 'Ruangan 401', '401', '', 'OP', '12', '002', '', '1234101', 'Laptop', '', NULL, '', 'Asus Core i3 ', '102'),
(3, '401OP121020031234101', 'Ruangan 401', '401', '', 'OP', '12', '003', '', '1234101', 'Laptop', '', NULL, '', 'Asus Core i3 ', '102'),
(4, '401OP121020041234101', 'Ruangan 401', '401', '', 'OP', '12', '004', '', '1234101', 'Laptop', '', NULL, '', 'Asus Core i3 ', '102'),
(5, '401OP121020051234101', 'Ruangan 401', '401', '', 'OP', '12', '005', '', '1234101', 'Laptop', '', NULL, '', 'Asus Core i3 ', '102'),
(6, '401OP121020071234101', 'Ruangan 401', '401', '', 'OP', '12', '007', '', '1234101', 'Laptop', '', NULL, '', 'Lenovo Dual Core Thinkpad', '102'),
(7, '401OP161020061234101', 'Ruangan 401', '401', '', 'OP', '16', '006', '', '1234101', 'Laptop', '', NULL, '', 'Asus ROG', '102'),
(8, '401OP171190011233201', 'Ruangan 401', '401', '', 'OP', '17', '001', '', '1233201', 'Lensa Kamera ', '', NULL, '', 'Fix Nikon AF.S DX AF-S DX Nikkor 35 mm f/ 1.8 G DX For Digital', '119'),
(9, '401OP171190021233201', 'Ruangan 401', '401', '', 'OP', '17', '002', '', '1233201', 'Lensa Kamera ', '', NULL, '', 'Wide Nikon AF.3 AF-S DX Nikkor 16-85 mm f/ 3.5-5.6 G ED VR DX For Digital VR', '119'),
(10, '401OP171110011233201', 'Ruangan 401', '401', '', 'OP', '17', '001', '', '1233201', 'Tripod Kamera', '', NULL, '', 'EXCELL PROMOS', '111'),
(11, '401OP171120011233201', 'Ruangan 401', '401', '', 'OP', '17', '001', '', '1233201', 'Flash Camera ', '', NULL, '', 'YN.560EX/YN56011 Speedlite YN560 III', '112'),
(12, '401OP171060011233201', 'Ruangan 401', '401', '', 'OP', '17', '001', '', '1233201', 'Speaker Aktif', '', NULL, '', 'Speaker Portable Harman Kardo+Play Speaker multimedia-Portable Bluetooth Speaker/ENCEINTE BLUETOOTH PORTABLE / CAIXA DE SOM PORTATIL COM BLUETOOTH', '106'),
(13, '401OP171060021233201', 'Ruangan 401', '401', '', 'OP', '17', '002', '', '1233201', 'Speaker Aktif', '', NULL, '', 'Speaker Portable Harman Kardo+Play Speaker multimedia-Portable Bluetooth Speaker/ENCEINTE BLUETOOTH PORTABLE / CAIXA DE SOM PORTATIL COM BLUETOOTH', '106'),
(14, '401OP171090011233201', 'Ruangan 401', '401', '', 'OP', '17', '001', '', '1233201', 'LCD Proyektor', '', NULL, '', 'LG Minibeam Projector No Model : PH300-GL.ATILLA Daya : 19V-2.1A s/No : 701SRWX3C649 Made In Korea ', '109'),
(15, '401OP171140011233201', 'Ruangan 401', '401', '', 'OP', '17', '001', '', '1233201', 'Card Reader ', '', NULL, '', 'USB specifification 2.0  Support SD/MMC Micro SD,mini sd,MMC ', '114'),
(16, '401OP171130011233201', 'Ruangan 401', '401', '', 'OP', '17', '001', '', '1233201', 'Memori Kamera', '', NULL, '', 'Sandisk Ultra 64 GB  speed up to 80 Mb/S 533x', '113'),
(17, '401OP171130021233201', 'Ruangan 401', '401', '', 'OP', '17', '002', '', '1233201', 'Memori Kamera', '', NULL, '', 'Sandisk Ultra 64 GB  speed up to 80 Mb/S 533x', '113'),
(18, '401OP171130031233201', 'Ruangan 401', '401', '', 'OP', '17', '003', '', '1233201', 'Memori Kamera', '', NULL, '', 'Sandisk Ultra 64 GB  speed up to 80 Mb/S 533x', '113'),
(19, '401OP171130041233201', 'Ruangan 401', '401', '', 'OP', '17', '004', '', '1233201', 'Memori Kamera', '', NULL, '', 'Sandisk Ultra 64 GB  speed up to 80 Mb/S 533x', '113'),
(20, '401OP171130051233201', 'Ruangan 401', '401', '', 'OP', '17', '005', '', '1233201', 'Memori Kamera', '', NULL, '', 'Sandisk Extreme 64GB speed up to 120 Mb/s 800 x', '113'),
(21, '401OP171200011233201', 'Ruangan 401', '401', '', 'OP', '17', '001', '', '1233201', 'Frame Photo', '', NULL, '', 'Digital photo Frame 12,1\'  15\'', '120'),
(22, '401OP181030021234101', 'Ruangan 401', '401', '', 'OP', '18', '002', '', '1234101', 'Printer', '', NULL, '', 'Printer L850', '103'),
(23, '401OP181030031234101', 'Ruangan 401', '401', '', 'OP', '18', '003', '', '1234101', 'Printer', '', NULL, '', 'Printer L805', '103'),
(24, '401OP181030041234101', 'Ruangan 401', '401', '', 'OP', '18', '004', '', '1234101', 'Printer', '', NULL, '', 'Printer Epson L805', '103'),
(25, '401OP191020071234101', 'Ruangan 401', '401', '', 'OP', '19', '007', '', '1234101', 'Laptop', '', NULL, '', 'Laptop Asus FX505GD-I7561T, i7-8750H-1TB SSHD, 8GB RAM, GTX1050 4GB VGA, WIN 10, Gold Steel, 15.6\', FHD Slim Bezel', '102'),
(26, '401OP191050041234101', 'Ruangan 401', '401', '', 'OP', '19', '004', '', '1234101', 'Scanner', '', NULL, '', 'Scanner Fujitsu Fi-7140', '105'),
(27, '401OP192230011234101', 'Ruangan 401', '401', '', 'OP', '19', '001', '', '1234101', 'My Cloud Box', '', NULL, '', 'WD My Cloud Home 8TB', '223'),
(28, '401OP191020081234101', 'Ruangan 401', '401', '', 'OP', '19', '008', '', '1234101', 'Laptop', '', NULL, '', 'Laptop Asus FX505GD-I7561T, i7-8750H-1TB SSHD, 8GB RAM, GTX1050 4GB VGA, WIN 10, Gold Steel, 15.6\', FHD Slim Bezel', '102'),
(29, '401OP082050011234101', 'Ruangan 401', '401', '', 'OP', '08', '001', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'Kursi Kerja Staf Merah', '205'),
(30, '401OP082050021234101', 'Ruangan 401', '401', '', 'OP', '08', '002', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'Kursi Kerja Staf Merah', '205'),
(31, '401OP082050031234101', 'Ruangan 401', '401', '', 'OP', '08', '003', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'Kursi Kerja Staf Merah', '205'),
(32, '401OP082050041234101', 'Ruangan 401', '401', '', 'OP', '08', '004', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'Kursi Kerja Staf Merah', '205'),
(33, '401OP082050051234101', 'Ruangan 401', '401', '', 'OP', '08', '005', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'Kursi Kerja Staf Merah', '205'),
(34, '401OP082050061234101', 'Ruangan 401', '401', '', 'OP', '08', '006', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'Kursi Kerja Staf Merah', '205'),
(35, '401OP082050071234101', 'Ruangan 401', '401', '', 'OP', '08', '007', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'Kursi Kerja Staf Merah', '205'),
(36, '401OP082050081234101', 'Ruangan 401', '401', '', 'OP', '08', '008', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'Kursi Kerja Staf Merah', '205'),
(37, '401OP082050091234101', 'Ruangan 401', '401', '', 'OP', '08', '009', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'Kursi Kerja Staf Coklat', '205'),
(38, '401OP082050101234101', 'Ruangan 401', '401', '', 'OP', '08', '010', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'Kursi Kerja Staf Hitam Polkadot', '205'),
(39, '401OP082050111234101', 'Ruangan 401', '401', '', 'OP', '08', '011', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'Kursi Kerja Staf Abu-abu', '205'),
(40, '401OP082050121234101', 'Ruangan 401', '401', '', 'OP', '08', '012', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'Kursi Kerja Staf Abu-abu', '205'),
(41, '401OP082050131234101', 'Ruangan 401', '401', '', 'OP', '08', '013', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'Kursi Kerja Staf Abu-abu', '205'),
(42, '401OP082050141234101', 'Ruangan 401', '401', '', 'OP', '08', '014', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'Kursi Kerja Staf Hitam', '205'),
(43, '401OP101160021234101', 'Ruangan 401', '401', '', 'OP', '10', '002', '', '1234101', 'Monitor', '', NULL, '', 'Monitor Samsung ', '116'),
(44, '401OPXX2100011234101', 'Ruangan 401', '401', '', 'OP', 'XX', '001', '', '1234101', 'Sofa', '', NULL, '', 'Sofa Coklat', '210'),
(45, '401OPXX2100021234101', 'Ruangan 401', '401', '', 'OP', 'XX', '002', '', '1234101', 'Sofa', '', NULL, '', 'Sofa Coklat', '210'),
(46, '401OPXX2110011234101', 'Ruangan 401', '401', '', 'OP', 'XX', '001', '', '1234101', 'Meja Tamu', '', NULL, '', 'Meja Tamu Kecil', '211'),
(47, '401OPXX1260011234101', 'Ruangan 401', '401', '', 'OP', 'XX', '001', '', '1234101', 'Dispenser', '', NULL, '', 'Dispenser Utopia', '126'),
(48, '401OPXX2020011234101', 'Ruangan 401', '401', '', 'OP', 'XX', '001', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'Meja Kerja 1/2 Biro', '202'),
(49, '401OPXX2020021234101', 'Ruangan 401', '401', '', 'OP', 'XX', '002', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'Meja Kerja 1/2 Biro', '202'),
(50, '401OPXX2020031234101', 'Ruangan 401', '401', '', 'OP', 'XX', '003', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'Meja Kerja 1/2 Biro', '202'),
(51, '401OPXX2020041234101', 'Ruangan 401', '401', '', 'OP', 'XX', '004', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'Meja Kerja 1/2 Biro', '202'),
(52, '401OPXX2020051234101', 'Ruangan 401', '401', '', 'OP', 'XX', '005', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'Meja Kerja 1/2 Biro', '202'),
(53, '401OPXX2020061234101', 'Ruangan 401', '401', '', 'OP', 'XX', '006', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'Meja Kerja 1/2 Biro', '202'),
(54, '401OPXX2020071234101', 'Ruangan 401', '401', '', 'OP', 'XX', '007', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'Meja Kerja 1/2 Biro', '202'),
(55, '401OPXX2020081234101', 'Ruangan 401', '401', '', 'OP', 'XX', '008', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'Meja Kerja 1/2 Biro', '202'),
(56, '401OPXX2020091234101', 'Ruangan 401', '401', '', 'OP', 'XX', '009', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'Meja Kerja 1/2 Biro', '202'),
(57, '401OPXX2020101234101', 'Ruangan 401', '401', '', 'OP', 'XX', '010', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'Meja Kerja 1/2 Biro', '202'),
(58, '401OPXX2140011234101', 'Ruangan 401', '401', '', 'OP', 'XX', '001', '', '1234101', 'Loker', '', NULL, '', 'Loker 9 Laci', '214'),
(59, '401OPXX2140021234101', 'Ruangan 401', '401', '', 'OP', 'XX', '002', '', '1234101', 'Loker', '', NULL, '', 'Loker 4 laci ', '214'),
(60, '401OPXX1030011234101', 'Ruangan 401', '401', '', 'OP', 'XX', '001', '', '1234101', 'Printer', '', NULL, '', 'Epson L355', '103'),
(61, '401OPXX1160061234101', 'Ruangan 401', '401', '', 'OP', 'XX', '006', '', '1234101', 'Kulkas', '', NULL, '', 'Monitor Samsung', '116'),
(62, '401OPXX1270011234101', 'Ruangan 401', '401', '', 'OP', 'XX', '001', '', '1234101', 'Filing Cabinet Besi', '', NULL, '', 'Kulkas Sharp', '127'),
(63, '401OPXX2070011234101', 'Ruangan 401', '401', '', 'OP', 'XX', '001', '', '1234101', 'Filing Cabinet Besi', '', NULL, '', 'Filing Cabinet 3 laci', '207'),
(64, '401OPXX2070021234101', 'Ruangan 401', '401', '', 'OP', 'XX', '002', '', '1234101', 'Gantungan tiang', '', NULL, '', 'Filing Cabinet 4 laci', '207'),
(65, '401OPXX2470011234101', 'Ruangan 401', '401', '', 'OP', 'XX', '001', '', '1234101', 'Jam Dinding', '', NULL, '', 'Gantungan tiang', '247'),
(66, '401OPXX2280011234101', 'Ruangan 401', '401', '', 'OP', 'XX', '001', '', '1234101', 'Telepon', '', NULL, '', 'Jam Dinding', '228'),
(67, '401OPXX1220011234101', 'Ruangan 401', '401', '', 'OP', 'XX', '001', '', '1234101', 'Mesin Penghitung Uang', '', NULL, '', 'Telpon Panasonic', '122'),
(68, '401OPXX1370011234101', 'Ruangan 401', '401', '', 'OP', 'XX', '001', '', '1234101', 'Laci', '', NULL, '', 'Mesin Penghitung Uang Krisbow', '137'),
(69, '401OPXX2490011234101', 'Ruangan 401', '401', '', 'OP', 'XX', '001', '', '1234101', 'Brankas', '', NULL, '', 'Laci kecil plastik oren putih 4 laci', '249'),
(70, '401OPXX2230011234101', 'Ruangan 401', '401', '', 'OP', 'XX', '001', '', '1234101', 'TELEVISI', '', NULL, '', 'Brankas Uang', '223'),
(71, '401OPXX1040021234101', 'Ruangan 401', '401', '', 'OP', 'XX', '002', '', '1234101', 'AC', '', NULL, '', 'Televisi Samsung', '104'),
(72, '401OPXX1080011234101', 'Ruangan 401', '401', '', 'OP', 'XX', '001', '', '1234101', 'Cermin', '', NULL, '', 'AC', '108'),
(73, '401OPXX2410011234101', 'Ruangan 401', '401', '', 'OP', 'XX', '001', '', '1234101', 'Scanner', '', NULL, '', 'Cermin', '241'),
(74, '401OPXX1050011234101', 'Ruangan 401', '401', '', 'OP', 'XX', '001', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'Handscanner Scansnap', '105'),
(75, '401OPXX2020111234101', 'Ruangan 401', '401', '', 'OP', 'XX', '011', '', '1234101', 'Taplak Meja', '', NULL, '', 'Meja makanan', '202'),
(76, '401OPXX2370011234101', 'Ruangan 401', '401', '', 'OP', 'XX', '001', '', '1234101', 'Rak', '', NULL, '', 'Taplak meja gambar bunga', '237'),
(77, '401OPXX2500011234101', 'Ruangan 401', '401', '', 'OP', 'XX', '001', '', '1234101', 'Lemari Kayu Kaca', '', NULL, '', 'Rak Sepatu', '250'),
(78, '401OPXX2190011234101', 'Ruangan 401', '401', '', 'OP', 'XX', '001', '', '1234101', 'CPU', '', NULL, '', 'Lemari kecil 2 pintu', '219'),
(79, '401OPXX1170011234101', 'Ruangan 401', '401', '', 'OP', 'XX', '001', '', '1234101', 'Monitor', '', NULL, '', 'CPU', '117'),
(80, '401OPXX1160011234101', 'Ruangan 401', '401', '', 'OP', 'XX', '001', '', '1234101', 'Letter tray', '', NULL, '', 'Monitor LG', '116'),
(81, '401OPXX2450011234101', 'Ruangan 401', '401', '', 'OP', 'XX', '001', '', '1234101', 'Brankas', '', NULL, '', 'Letter tray', '245'),
(82, '401OPXX2230021234101', 'Ruangan 401', '401', '', 'OP', 'XX', '002', '', '1234101', 'Brankas', '', NULL, '', 'Brankas kecil hitam Penyimpanan Kamera', '223'),
(83, '401OPXX2230031234101', 'Ruangan 401', '401', '', 'OP', 'XX', '003', '', '1234101', 'Scanner', '', NULL, '', 'Brankas besar hitam Penyimpanan Kamera', '223'),
(84, '401OPXX1050021234101', 'Ruangan 401', '401', '', 'OP', 'XX', '002', '', '1234101', 'Printer', '', NULL, '', 'scanner brother ads-110w', '105'),
(85, '401OPXX1030041234101', 'Ruangan 401', '401', '', 'OP', 'XX', '004', '', '1234101', 'Filing Cabinet Besi', '', NULL, '', 'Printer besar Pro 100', '103'),
(86, '401OPXX2070031234101', 'Ruangan 401', '401', '', 'OP', 'XX', '003', '', '1234101', 'Filing Cabinet Besi', '', NULL, '', 'Filing Cabinet 3 laci', '207'),
(87, '401OPXX2070041234101', 'Ruangan 401', '401', '', 'OP', 'XX', '004', '', '1234101', 'Lemari Kayu Kaca', '', NULL, '', 'Filing Cabinet 3 laci', '207'),
(88, '401OPXX2190021234101', 'Ruangan 401', '401', '', 'OP', 'XX', '002', '', '1234101', 'Printer', '', NULL, '', 'Lemari kecil 2 pintu', '219'),
(89, '401OPXX1030051234101', 'Ruangan 401', '401', '', 'OP', 'XX', '005', '', '1234101', 'Speaker Aktif', '', NULL, '', 'printer L800', '103'),
(90, '401OPXX1060031234101', 'Ruangan 401', '401', '', 'OP', 'XX', '003', '', '1234101', 'Speaker Aktif', '', NULL, '', 'Speaker Rogers Besar', '106'),
(91, '401OPXX1060041234101', 'Ruangan 401', '401', '', 'OP', 'XX', '004', '', '1234101', 'Printer', '', NULL, '', 'Speaker Rogers Kecil', '106'),
(92, '401OPXX1030061234101', 'Ruangan 401', '401', '', 'OP', 'XX', '006', '', '1234101', 'Monitor', '', NULL, '', 'Printer L210', '103'),
(93, '401OPXX1160031234101', 'Ruangan 401', '401', '', 'OP', 'XX', '003', '', '1234101', 'Printer', '', NULL, '', 'Monitor LG', '116'),
(94, '401OPXX1030071234101', 'Ruangan 401', '401', '', 'OP', 'XX', '007', '', '1234101', 'Scanner', '', NULL, '', 'Printer L360', '103'),
(95, '401OPXX1050031234101', 'Ruangan 401', '401', '', 'OP', 'XX', '003', '', '1234101', 'Telepon', '', NULL, '', 'Handscanner Scansnap', '105'),
(96, '401OPXX1220021234101', 'Ruangan 401', '401', '', 'OP', 'XX', '002', '', '1234101', 'Monitor', '', NULL, '', 'Telpon Panasonic', '122'),
(97, '401OPXX1160041234101', 'Ruangan 401', '401', '', 'OP', 'XX', '004', '', '1234101', 'Printer', '', NULL, '', 'Monitor Samsung ', '116'),
(98, '401OPXX1030081234101', 'Ruangan 401', '401', '', 'OP', 'XX', '008', '', '1234101', 'Laci', '', NULL, '', 'Printer L800', '103'),
(99, '401OPXX2490021234101', 'Ruangan 401', '401', '', 'OP', 'XX', '002', '', '1234101', 'Monitor', '', NULL, '', 'Laci kecil kayu 3 laci', '249'),
(100, '401OPXX1160051234101', 'Ruangan 401', '401', '', 'OP', 'XX', '005', '', '1234101', 'CPU', '', NULL, '', 'Monitor Lenovo', '116'),
(101, '401OPXX1170021234101', 'Ruangan 401', '401', '', 'OP', 'XX', '002', '', '1234101', 'CPU', '', NULL, '', 'CPU', '117'),
(102, '401OPXX1170031234101', 'Ruangan 401', '401', '', 'OP', 'XX', '003', '', '1234101', 'CPU', '', NULL, '', 'CPU', '117'),
(103, '401OPXX1170041234101', 'Ruangan 401', '401', '', 'OP', 'XX', '004', '', '1234101', 'CPU', '', NULL, '', 'CPU', '117'),
(104, '401OPXX1170051234101', 'Ruangan 401', '401', '', 'OP', 'XX', '005', '', '1234101', 'CPU', '', NULL, '', 'CPU', '117'),
(105, '401OPXX1170061234101', 'Ruangan 401', '401', '', 'OP', 'XX', '006', '', '1234101', 'CPU', '', NULL, '', 'CPU', '117'),
(106, '401OPXX1170071234101', 'Ruangan 401', '401', '', 'OP', 'XX', '007', '', '1234101', 'Telepon', '', NULL, '', 'CPU', '117'),
(107, '401OPXX1220031234101', 'Ruangan 401', '401', '', 'OP', 'XX', '003', '', '1234101', 'Pemotong Kertas', '', NULL, '', 'Telpon Panasonic', '122'),
(108, '401OPXX2510011234101', 'Ruangan 401', '401', '', 'OP', 'XX', '001', '', '1234101', 'Speaker Aktif', '', NULL, '', 'Pemotong Kertas V-Tec', '251'),
(109, '401OPXX1060051234101', 'Ruangan 401', '401', '', 'OP', 'XX', '005', '', '1234101', 'Kotak P3K', '', NULL, '', 'Speaker Toyosaki', '106'),
(110, '401OPXX2480011234101', 'Ruangan 401', '401', '', 'OP', 'XX', '001', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'Kotak P3K', '248'),
(111, '401OPXX2020121234101', 'Ruangan 401', '401', '', 'OP', 'XX', '012', '', '1234101', 'Letter tray', '', NULL, '', 'Meja Kerja Panjang Biru', '202'),
(112, '401OPXX2450021234101', 'Ruangan 401', '401', '', 'OP', 'XX', '002', '', '1234101', 'Box', '', NULL, '', 'Letter tray', '245'),
(113, '401OPXX2170011234101', 'Ruangan 401', '401', '', 'OP', 'XX', '001', '', '1234101', 'Box', '', NULL, '', 'Box penyimpanan hijau ', '217'),
(114, '401OPXX2170021234101', 'Ruangan 401', '401', '', 'OP', 'XX', '002', '', '1234101', 'Rak', '', NULL, '', 'Box penyimpanan hijau ', '217'),
(115, '401OPXX2500021234101', 'Ruangan 401', '401', '', 'OP', 'XX', '002', '', '1234101', 'Laptop', '', NULL, '', 'Rak Sepatu', '250'),
(116, '4LOLO171020081233201', '', '4LO', '', 'LO', '17', '008', '', '1233201', 'Laptop', '', NULL, '', 'Notebook GIGABYTE Tegangan : 100V-240V AC, Frekuensi: 50-60 Hz, Nomor: 49607/SDPP/2017, PLG ID: 3965, C/NO. 5.029k9 40179', '102'),
(117, '4LOLO171020091233201', '', '4LO', '', 'LO', '17', '009', '', '1233201', 'Laptop', '', NULL, '', 'Notebook GIGABYTE Tegangan : 100V-240V AC, Frekuensi: 50-60 Hz, Nomor: 49607/SDPP/2017, PLG ID: 3965, C/NO. 5.029k9 40180', '102'),
(118, '4LOLO171020101233201', '', '4LO', '', 'LO', '17', '010', '', '1233201', 'Laptop', '', NULL, '', 'Notebook GIGABYTE Tegangan : 100V-240V AC, Frekuensi: 50-60 Hz, Nomor: 49607/SDPP/2017, PLG ID: 3965, C/NO. 5.029k9 40181', '102'),
(119, '4LOLO171020111233201', '', '4LO', '', 'LO', '17', '011', '', '1233201', 'Laptop', '', NULL, '', 'Notebook GIGABYTE Tegangan : 100V-240V AC, Frekuensi: 50-60 Hz, Nomor: 49607/SDPP/2017, PLG ID: 3965, C/NO. 5.029k9 40182', '102'),
(120, '4LOLO171020121233201', '', '4LO', '', 'LO', '17', '012', '', '1233201', 'Laptop', '', NULL, '', 'Notebook GIGABYTE Tegangan : 100V-240V AC, Frekuensi: 50-60 Hz, Nomor: 49607/SDPP/2017, PLG ID: 3965, C/NO. 5.029k9 40183', '102'),
(121, '4LOLO171020131233201', '', '4LO', '', 'LO', '17', '013', '', '1233201', 'Laptop', '', NULL, '', 'Notebook GIGABYTE Tegangan : 100V-240V AC, Frekuensi: 50-60 Hz, Nomor: 49607/SDPP/2017, PLG ID: 3965, C/NO. 5.029k9 40184', '102'),
(122, '4LOLO171020141233201', '', '4LO', '', 'LO', '17', '014', '', '1233201', 'Laptop', '', NULL, '', 'Notebook GIGABYTE Tegangan : 100V-240V AC, Frekuensi: 50-60 Hz, Nomor: 49607/SDPP/2017, PLG ID: 3965, C/NO. 5.029k9 40185', '102'),
(123, '4LOLO171020151233201', '', '4LO', '', 'LO', '17', '015', '', '1233201', 'Laptop', '', NULL, '', 'Notebook GIGABYTE Tegangan : 100V-240V AC, Frekuensi: 50-60 Hz, Nomor: 49607/SDPP/2017, PLG ID: 3965, C/NO. 5.029k9 40186', '102'),
(124, '4LOLO171020161233201', '', '4LO', '', 'LO', '17', '016', '', '1233201', 'Laptop', '', NULL, '', 'Notebook GIGABYTE Tegangan : 100V-240V AC, Frekuensi: 50-60 Hz, Nomor: 49607/SDPP/2017, PLG ID: 3965, C/NO. 5.029k9 40187', '102'),
(125, '4LOLO171020171233201', '', '4LO', '', 'LO', '17', '017', '', '1233201', 'Laptop', '', NULL, '', 'Notebook GIGABYTE Tegangan : 100V-240V AC, Frekuensi: 50-60 Hz, Nomor: 49607/SDPP/2017, PLG ID: 3965, C/NO. 5.029k9 40188', '102'),
(126, '4LOLO171020181233201', '', '4LO', '', 'LO', '17', '018', '', '1233201', 'Laptop', '', NULL, '', 'Notebook GIGABYTE Tegangan : 100V-240V AC, Frekuensi: 50-60 Hz, Nomor: 49607/SDPP/2017, PLG ID: 3965, C/NO. 5.029k9 40189', '102'),
(127, '4LOLO171020191233201', '', '4LO', '', 'LO', '17', '019', '', '1233201', 'Laptop', '', NULL, '', 'Notebook GIGABYTE Tegangan : 100V-240V AC, Frekuensi: 50-60 Hz, Nomor: 49607/SDPP/2017, PLG ID: 3965, C/NO. 5.029k9 40190', '102'),
(128, '4LOLO171020201233201', '', '4LO', '', 'LO', '17', '020', '', '1233201', 'Laptop', '', NULL, '', 'Notebook GIGABYTE Tegangan : 100V-240V AC, Frekuensi: 50-60 Hz, Nomor: 49607/SDPP/2017, PLG ID: 3965, C/NO. 5.029k9 40191', '102'),
(129, '4LOLO171020211233201', '', '4LO', '', 'LO', '17', '021', '', '1233201', 'Laptop', '', NULL, '', 'Notebook GIGABYTE Tegangan : 100V-240V AC, Frekuensi: 50-60 Hz, Nomor: 49607/SDPP/2017, PLG ID: 3965, C/NO. 5.029k9 40192', '102'),
(130, '4LOLO171020221233201', '', '4LO', '', 'LO', '17', '022', '', '1233201', 'Laptop', '', NULL, '', 'Notebook GIGABYTE Tegangan : 100V-240V AC, Frekuensi: 50-60 Hz, Nomor: 49607/SDPP/2017, PLG ID: 3965, C/NO. 5.029k9 40193', '102'),
(131, '4LOLO171020231233201', '', '4LO', '', 'LO', '17', '023', '', '1233201', 'Laptop', '', NULL, '', 'Notebook GIGABYTE Tegangan : 100V-240V AC, Frekuensi: 50-60 Hz, Nomor: 49607/SDPP/2017, PLG ID: 3965, C/NO. 5.029k9 40194', '102'),
(132, '4LOLO171020241233201', '', '4LO', '', 'LO', '17', '024', '', '1233201', 'Laptop', '', NULL, '', 'Notebook GIGABYTE Tegangan : 100V-240V AC, Frekuensi: 50-60 Hz, Nomor: 49607/SDPP/2017, PLG ID: 3965, C/NO. 5.029k9 40195', '102'),
(133, '4LOLO171020251233201', '', '4LO', '', 'LO', '17', '025', '', '1233201', 'Laptop', '', NULL, '', 'Notebook GIGABYTE Tegangan : 100V-240V AC, Frekuensi: 50-60 Hz, Nomor: 49607/SDPP/2017, PLG ID: 3965, C/NO. 5.029k9 40196', '102'),
(134, '4LOLO171020261233201', '', '4LO', '', 'LO', '17', '026', '', '1233201', 'Laptop', '', NULL, '', 'Notebook GIGABYTE Tegangan : 100V-240V AC, Frekuensi: 50-60 Hz, Nomor: 49607/SDPP/2017, PLG ID: 3965, C/NO. 5.029k9 40197', '102'),
(135, '4LOLO171020271233201', '', '4LO', '', 'LO', '17', '027', '', '1233201', 'Drone', '', NULL, '', 'Notebook GIGABYTE Tegangan : 100V-240V AC, Frekuensi: 50-60 Hz, Nomor: 49607/SDPP/2017, PLG ID: 3965, C/NO. 5.029k9 40198', '102'),
(136, '4LOLO171070011233201', '', '4LO', '', 'LO', '17', '001', '', '1233201', 'Harddisk', '', NULL, '', 'Phantom 4 PRO (USA) S/N 0AXCE9UOB30426', '107'),
(137, '4LOOP171410011234101', '', '4LO', '', 'OP', '17', '001', '', '1234101', 'Harddisk', '', NULL, '', 'HDD IBM 1 TB 7.2 K Gbps XG8SLGD ; X68SHQF', '141'),
(138, '4LOOP171410021234101', '', '4LO', '', 'OP', '17', '002', '', '1234101', 'LCD Proyektor', '', NULL, '', 'HDD IBM 1 TB 7.2 K Gbps XG8SLGD ; X68SHQF', '141'),
(139, '4LOOP171090111234101', '', '4LO', '', 'OP', '17', '011', '', '1234101', 'LCD Proyektor', '', NULL, '', 'proyektor EPSON EBX 400', '109'),
(140, '4LOOP171090121234101', '', '4LO', '', 'OP', '17', '012', '', '1234101', 'Laptop', '', NULL, '', 'proyektor EPSON EBX 400', '109'),
(141, '4LOLO171020281233201', '', '4LO', '', 'LO', '17', '028', '', '1233201', 'Laptop', '', NULL, '', 'LENOVO Ideapad 100-141BD, model 80RK, Notebook IP 100-141BD 13 2G 500, CPU: intel 13-50050 2.0 g, RAM: 4G, LAN: 10 M/100 M, OOD: DVD RW, Display: 14.0\' HD LED Battery: 4 cell, OS: DOS ', '102'),
(142, '4LOLO171020291233201', '', '4LO', '', 'LO', '17', '029', '', '1233201', 'Laptop', '', NULL, '', 'LENOVO Ideapad 100-141BD, model 80RK, Notebook IP 100-141BD 13 2G 500, CPU: intel 13-50050 2.0 g, RAM: 4G, LAN: 10 M/100 M, OOD: DVD RW, Display: 14.0\' HD LED Battery: 4 cell, OS: DOS ', '102'),
(143, '4LOLO171020301233201', '', '4LO', '', 'LO', '17', '030', '', '1233201', 'Laptop', '', NULL, '', 'LENOVO Ideapad 100-141BD, model 80RK, Notebook IP 100-141BD 13 2G 500, CPU: intel 13-50050 2.0 g, RAM: 4G, LAN: 10 M/100 M, OOD: DVD RW, Display: 14.0\' HD LED Battery: 4 cell, OS: DOS ', '102'),
(144, '4LOLO171020311233201', '', '4LO', '', 'LO', '17', '031', '', '1233201', 'Laptop', '', NULL, '', 'LENOVO Ideapad 100-141BD, model 80RK, Notebook IP 100-141BD 13 2G 500, CPU: intel 13-50050 2.0 g, RAM: 4G, LAN: 10 M/100 M, OOD: DVD RW, Display: 14.0\' HD LED Battery: 4 cell, OS: DOS ', '102'),
(145, '4LOLO171020321233201', '', '4LO', '', 'LO', '17', '032', '', '1233201', 'Laptop', '', NULL, '', 'LENOVO Ideapad 100-141BD, model 80RK, Notebook IP 100-141BD 13 2G 500, CPU: intel 13-50050 2.0 g, RAM: 4G, LAN: 10 M/100 M, OOD: DVD RW, Display: 14.0\' HD LED Battery: 4 cell, OS: DOS ', '102'),
(146, '4LOLO171020331233201', '', '4LO', '', 'LO', '17', '033', '', '1233201', 'Laptop', '', NULL, '', 'LENOVO Ideapad 100-141BD, model 80RK, Notebook IP 100-141BD 13 2G 500, CPU: intel 13-50050 2.0 g, RAM: 4G, LAN: 10 M/100 M, OOD: DVD RW, Display: 14.0\' HD LED Battery: 4 cell, OS: DOS ', '102'),
(147, '4LOLO171020341233201', '', '4LO', '', 'LO', '17', '034', '', '1233201', 'Laptop', '', NULL, '', 'LENOVO Ideapad 100-141SK, model 80UC, Notebook IP 110-141SK 13 4G 1TB, CPU: intel 13-61000 2.3 G, RAM: 4G, LAN: 10 M/100 M, OOD: DVD RW, Display: 14.\' HD LED Battery: 4 cell, OS: DOS ', '102'),
(148, '4LOLO171020351233201', '', '4LO', '', 'LO', '17', '035', '', '1233201', 'WALKY TALKY', '', NULL, '', 'LENOVO Ideapad 100-141SK, model 80UC, Notebook IP 110-141SK 13 4G 1TB, CPU: intel 13-61000 2.3 G, RAM: 4G, LAN: 10 M/100 M, OOD: DVD RW, Display: 14.\' HD LED Battery: 4 cell, OS: DOS ', '102'),
(149, '4LOLO171420011233201', '', '4LO', '', 'LO', '17', '001', '', '1233201', 'WALKY TALKY', '', NULL, '', 'LUPAX Professional Fm Handheld Transceiver, High ilumination flashlight, dual brnd, dual display, dual standby', '142'),
(150, '4LOLO171420021233201', '', '4LO', '', 'LO', '17', '002', '', '1233201', 'WALKY TALKY', '', NULL, '', 'LUPAX Professional Fm Handheld Transceiver, High ilumination flashlight, dual brnd, dual display, dual standby', '142'),
(151, '4LOLO171420031233201', '', '4LO', '', 'LO', '17', '003', '', '1233201', 'WALKY TALKY', '', NULL, '', 'LUPAX Professional Fm Handheld Transceiver, High ilumination flashlight, dual brnd, dual display, dual standby', '142'),
(152, '4LOLO171420041233201', '', '4LO', '', 'LO', '17', '004', '', '1233201', 'WALKY TALKY', '', NULL, '', 'LUPAX Professional Fm Handheld Transceiver, High ilumination flashlight, dual brnd, dual display, dual standby', '142'),
(153, '4LOLO171420051233201', '', '4LO', '', 'LO', '17', '005', '', '1233201', 'WALKY TALKY', '', NULL, '', 'LUPAX Professional Fm Handheld Transceiver, High ilumination flashlight, dual brnd, dual display, dual standby', '142'),
(154, '4LOLO171420061233201', '', '4LO', '', 'LO', '17', '006', '', '1233201', 'WALKY TALKY', '', NULL, '', 'LUPAX Professional Fm Handheld Transceiver, High ilumination flashlight, dual brnd, dual display, dual standby', '142'),
(155, '4LOLO171420071233201', '', '4LO', '', 'LO', '17', '007', '', '1233201', 'WALKY TALKY', '', NULL, '', 'LUPAX Professional Fm Handheld Transceiver, High ilumination flashlight, dual brnd, dual display, dual standby', '142'),
(156, '4LOLO171420081233201', '', '4LO', '', 'LO', '17', '008', '', '1233201', 'WALKY TALKY', '', NULL, '', 'LUPAX Professional Fm Handheld Transceiver, High ilumination flashlight, dual brnd, dual display, dual standby', '142'),
(157, '4LOLO171420091233201', '', '4LO', '', 'LO', '17', '009', '', '1233201', 'Laptop', '', NULL, '', 'LUPAX Professional Fm Handheld Transceiver, High ilumination flashlight, dual brnd, dual display, dual standby', '142'),
(158, '4LOLO171020361233201', '', '4LO', '', 'LO', '17', '036', '', '1233201', 'Drone', '', NULL, '', 'ASUS A456U ID+COLOR - GOLDENN - PLASTIC, LCD: 14.0 FHD USLIM, VRAM: 2 GB, CPU: INTEL 17 - 7500 U/BQA, HDD: 1 TB 2.5\' 5400R STA. ODD: 8X S-M DL, RAM: DDR4 4G+4G (ON BD), WLAN: CB-802.11bgn_SEA+BT4.0, USB: USB3.1+USB3.0+USB2.0, OS TYPE: FREE DOS, KB LANGUAGE: US, POWER CORD: CEE, ACCESSORY: 2 CELL 38 WH, BACKPACK', '102'),
(159, '4LOLO171070021233201', '', '4LO', '', 'LO', '17', '002', '', '1233201', 'Kamera', '', NULL, '', 'Drone DJI Phantom 3 ', '107'),
(160, '4LOLO191100011233201', '', '4LO', '', 'LO', '19', '001', '', '1233201', 'Lcd Proyektor', '', NULL, '', 'Fuji Film XA5 ', '110'),
(161, '4LOLO191090011234101', '', '4LO', '', 'LO', '19', '001', '', '1234101', 'Lcd Proyektor', '', NULL, '', 'Epson EB-W05 WXGA', '109'),
(162, '4LOLO191090021234101', '', '4LO', '', 'LO', '19', '002', '', '1234101', 'Laptop', '', NULL, '', 'Epson EB-W05 WXGA', '109'),
(163, '4LOLO191020361233201', '', '4LO', '', 'LO', '19', '036', '', '1233201', 'Laptop', '', NULL, '', 'Laptop ASUS FX505GD-i7-8750H', '102'),
(164, '4LOLO191020371233201', '', '4LO', '', 'LO', '19', '037', '', '1233201', 'Laptop', '', NULL, '', 'Laptop ASUS FX505GD-i7-8750H', '102'),
(165, '4LOLO191020381233201', '', '4LO', '', 'LO', '19', '038', '', '1233201', 'Laptop', '', NULL, '', 'Laptop ASUS FX505GD-i7-8750H', '102'),
(166, '4LOLO191020391233201', '', '4LO', '', 'LO', '19', '039', '', '1233201', 'Speaker Aktif', '', NULL, '', 'Laptop ASUS FX505GD-i7-8750H', '102'),
(167, '4LOLO191060011233201', '', '4LO', '', 'LO', '19', '001', '', '1233201', 'Software berlisensi', '', NULL, '', 'Krezt WAS-115B-15\' PORTABLE BLUETOOTH', '106'),
(168, '4LOLO192230011233201', '', '4LO', '', 'LO', '19', '001', '', '1233201', 'Software berlisensi', '', NULL, '', 'Windows 10 Pro 64Bit', '223'),
(169, '4LOLO192230021233201', '', '4LO', '', 'LO', '19', '002', '', '1233201', 'Software berlisensi', '', NULL, '', 'Windows 10 Pro 64Bit', '223'),
(170, '4LOLO192230031233201', '', '4LO', '', 'LO', '19', '003', '', '1233201', 'Software berlisensi', '', NULL, '', 'Windows 10 Pro 64Bit', '223'),
(171, '4LOLO192230041233201', '', '4LO', '', 'LO', '19', '004', '', '1233201', 'Software berlisensi', '', NULL, '', 'Windows 10 Pro 64Bit', '223'),
(172, '4LOLO192230051233201', '', '4LO', '', 'LO', '19', '005', '', '1233201', 'Software berlisensi', '', NULL, '', 'Windows 10 Pro 64Bit', '223'),
(173, '4LOLO192230061233201', '', '4LO', '', 'LO', '19', '006', '', '1233201', 'Software berlisensi', '', NULL, '', 'Windows 10 Pro 64Bit', '223'),
(174, '4LOLO192230071233201', '', '4LO', '', 'LO', '19', '007', '', '1233201', 'Lemari Besi Kaca', '', NULL, '', 'Windows 10 Pro 64Bit', '223'),
(175, '4LOLOXX2070011234101', '', '4LO', '', 'LO', 'XX', '001', '', '1234101', 'Lemari Besi Kaca', '', NULL, '', 'Lemari Coklat Kaca Tipe A', '207'),
(176, '4LOLOXX2070021234101', '', '4LO', '', 'LO', 'XX', '002', '', '1234101', 'Lemari Besi Kaca', '', NULL, '', 'Lemari Abu Tipe B', '207'),
(177, '4LOLOXX2070031234101', '', '4LO', '', 'LO', 'XX', '003', '', '1234101', 'Lemari Besi Kaca', '', NULL, '', 'Lemari Abu Tipe B', '207'),
(178, '4LOLOXX2070041234101', '', '4LO', '', 'LO', 'XX', '004', '', '1234101', 'Lemari Besi Kaca', '', NULL, '', 'Lemari Abu Tipe B', '207'),
(179, '4LOLOXX2070051234101', '', '4LO', '', 'LO', 'XX', '005', '', '1234101', 'Lemari Besi Kaca', '', NULL, '', 'Lemari Abu Kaca Tipe C', '207'),
(180, '4LOLOXX2070061234101', '', '4LO', '', 'LO', 'XX', '006', '', '1234101', 'Lemari Besi Kaca', '', NULL, '', 'Lemari Abu Kaca Tipe C', '207'),
(181, '4LOLOXX2070071234101', '', '4LO', '', 'LO', 'XX', '007', '', '1234101', 'Lemari Besi Kaca', '', NULL, '', 'Lemari Abu Kaca Tipe C', '207'),
(182, '4LOLOXX2070081234101', '', '4LO', '', 'LO', 'XX', '008', '', '1234101', 'Lemari Besi Kaca', '', NULL, '', 'Lemari Abu Kaca Tipe C', '207'),
(183, '4LOLOXX2070091234101', '', '4LO', '', 'LO', 'XX', '009', '', '1234101', 'Lemari Besi Kaca', '', NULL, '', 'Lemari Abu Kaca Tipe C', '207'),
(184, '4LOLOXX2070101234101', '', '4LO', '', 'LO', 'XX', '010', '', '1234101', 'Lemari Besi Kaca', '', NULL, '', 'Lemari Abu Kaca Tipe C', '207'),
(185, '4LOLOXX2070111234101', '', '4LO', '', 'LO', 'XX', '011', '', '1234101', 'Lemari Besi Kaca', '', NULL, '', 'Lemari Abu Kaca Tipe C', '207'),
(186, '4LOLOXX2070121234101', '', '4LO', '', 'LO', 'XX', '012', '', '1234101', 'Lemari Besi Kaca', '', NULL, '', 'Lemari Abu Kaca Tipe C', '207'),
(187, '4LOLOXX2070131234101', '', '4LO', '', 'LO', 'XX', '013', '', '1234101', 'Lemari Besi Kaca', '', NULL, '', 'Lemari Abu Kaca Tipe C', '207'),
(188, '4LOLOXX2070141234101', '', '4LO', '', 'LO', 'XX', '014', '', '1234101', 'Lemari Besi Kaca', '', NULL, '', 'Lemari Abu Kaca Tipe C', '207'),
(189, '4LOLOXX2070151234101', '', '4LO', '', 'LO', 'XX', '015', '', '1234101', 'AC', '', NULL, '', 'Lemari Abu Kaca Tipe C', '207'),
(190, '4LOLOXX1080011234101', '', '4LO', '', 'LO', 'XX', '001', '', '1234101', 'CPU', '', NULL, '', 'AC', '108'),
(191, '4LOLOXX1010011234101', '', '4LO', '', 'LO', 'XX', '001', '', '1234101', 'PC', '', NULL, '', 'LG', '101'),
(192, '4LOLOXX1010021234101', '', '4LO', '', 'LO', 'XX', '002', '', '1234101', 'PC', '', NULL, '', 'LG', '101'),
(193, '4LOLOXX1010031234101', '', '4LO', '', 'LO', 'XX', '003', '', '1234101', 'PC', '', NULL, '', 'LG', '101'),
(194, '4LOLOXX1010041234101', '', '4LO', '', 'LO', 'XX', '004', '', '1234101', 'PC', '', NULL, '', 'LG', '101'),
(195, '4LOLOXX1010051234101', '', '4LO', '', 'LO', 'XX', '005', '', '1234101', 'PC', '', NULL, '', 'LG', '101'),
(196, '4LOLOXX1010061234101', '', '4LO', '', 'LO', 'XX', '006', '', '1234101', 'PC', '', NULL, '', 'LG', '101'),
(197, '4LOLOXX1010071234101', '', '4LO', '', 'LO', 'XX', '007', '', '1234101', 'PC', '', NULL, '', 'LG', '101'),
(198, '4LOLOXX1010081234101', '', '4LO', '', 'LO', 'XX', '008', '', '1234101', 'PC', '', NULL, '', 'LG', '101'),
(199, '4LOLOXX1010091234101', '', '4LO', '', 'LO', 'XX', '009', '', '1234101', 'PC', '', NULL, '', 'LG', '101'),
(200, '4LOLOXX1010101234101', '', '4LO', '', 'LO', 'XX', '010', '', '1234101', 'PC', '', NULL, '', 'LG', '101'),
(201, '4LOLOXX1010111234101', '', '4LO', '', 'LO', 'XX', '011', '', '1234101', 'PC', '', NULL, '', 'LG', '101'),
(202, '4LOLOXX1010121234101', '', '4LO', '', 'LO', 'XX', '012', '', '1234101', 'PC', '', NULL, '', 'LG', '101'),
(203, '4LOLOXX1010131234101', '', '4LO', '', 'LO', 'XX', '013', '', '1234101', 'PC', '', NULL, '', 'LG', '101'),
(204, '4LOLOXX1010141234101', '', '4LO', '', 'LO', 'XX', '014', '', '1234101', 'PC', '', NULL, '', 'Samsung', '101'),
(205, '4LOLOXX1010151234101', '', '4LO', '', 'LO', 'XX', '015', '', '1234101', 'PC', '', NULL, '', 'Samsung', '101'),
(206, '4LOLOXX1010161234101', '', '4LO', '', 'LO', 'XX', '016', '', '1234101', 'PC', '', NULL, '', 'Samsung', '101'),
(207, '4LOLOXX1010171234101', '', '4LO', '', 'LO', 'XX', '017', '', '1234101', 'PC', '', NULL, '', 'Samsung', '101'),
(208, '4LOLOXX1010181234101', '', '4LO', '', 'LO', 'XX', '018', '', '1234101', 'PC', '', NULL, '', 'Samsung', '101'),
(209, '4LOLOXX1230011234101', '', '4LO', '', 'LO', 'XX', '001', '', '1234101', 'Monitor', '', NULL, '', 'Lenovo', '123'),
(210, '4LOLOXX1160011234101', '', '4LO', '', 'LO', 'XX', '001', '', '1234101', 'Monitor', '', NULL, '', 'Samsung', '116'),
(211, '4LOLOXX1160021234101', '', '4LO', '', 'LO', 'XX', '002', '', '1234101', 'Monitor', '', NULL, '', 'Samsung', '116'),
(212, '4LOLOXX1160031234101', '', '4LO', '', 'LO', 'XX', '003', '', '1234101', 'Monitor', '', NULL, '', 'Samsung', '116'),
(213, '4LOLOXX1160041234101', '', '4LO', '', 'LO', 'XX', '004', '', '1234101', 'Monitor', '', NULL, '', 'Samsung', '116'),
(214, '4LOLOXX1160051234101', '', '4LO', '', 'LO', 'XX', '005', '', '1234101', 'Monitor', '', NULL, '', 'LG', '116'),
(215, '4LOLOXX1160061234101', '', '4LO', '', 'LO', 'XX', '006', '', '1234101', 'Wi-Fi', '', NULL, '', 'LG', '116'),
(216, '4LOLOXX1340011233201', '', '4LO', '', 'LO', 'XX', '001', '', '1233201', 'LCD Proyektor', '', NULL, '', 'TP-LINK the reliable choice model No. TD-8840 T, 4-Port, ADSL2+MODEM ROUTER', '134'),
(217, '4LOOPXX1090131233201', '', '4LO', '', 'OP', 'XX', '013', '', '1233201', 'LCD Proyektor', '', NULL, '', 'Hitachi CP-RX94, 100-I20v~/220-240v~50/60 Hz, 3.3A/16 A', '109'),
(218, '4LOOPXX1090141233201', '', '4LO', '', 'OP', 'XX', '014', '', '1233201', 'LCD Proyektor', '', NULL, '', 'Hitachi CP-RX94, 100-I20v~/220-240v~50/60 Hz, 3.3A/16 A', '109'),
(219, '4LOOPXX1090151233201', '', '4LO', '', 'OP', 'XX', '015', '', '1233201', 'Wi-Fi', '', NULL, '', 'Model No. NP-VE281 100-240V~50/60 Hz 2.7-1.2 A tegangan dan frekuensi: 100-240 V~50/60 Hz', '109'),
(220, '4LOLOXX1340021233201', '', '4LO', '', 'LO', 'XX', '002', '', '1233201', 'Scanner', '', NULL, '', 'Unifienterprise wifi system, mac address: 00:15:6d:00:03:cd, model: unifi Ap, version : 6.0.5920, Ip address: 192.168.1.173, uptime : 7d 3h 6m, #user: 8, #guest: 1', '134'),
(221, '4LOLOXX1050041233201', '', '4LO', '', 'LO', 'XX', '004', '', '1233201', 'Wi-Fi', '', NULL, '', 'CANON S/N : KEFF.30644', '105'),
(222, '4LOLOXX1340031233201', '', '4LO', '', 'LO', 'XX', '003', '', '1233201', 'Wi-Fi', '', NULL, '', 'PORTABLE WI-FI', '134'),
(223, '4LOLOXX1340041233201', '', '4LO', '', 'LO', 'XX', '004', '', '1233201', 'RAM', '', NULL, '', 'PROLINK LINE INTERACTIVE UPS', '134'),
(224, '4LOLOXX1430011233201', '', '4LO', '', 'LO', 'XX', '001', '', '1233201', 'Fiber Optik Portabel', '', NULL, '', 'RAM Rusak 2', '143'),
(225, '4LOLOXX1440011233201', '', '4LO', '', 'LO', 'XX', '001', '', '1233201', 'Lcd Proyektor', '', NULL, '', 'alat pelatihan perangkat fiber optik portable', '144'),
(226, 'R7DLOXX1090031234101', '', 'R7D', '', 'LO', 'XX', '003', '', '1234101', 'Lcd Proyektor', '', NULL, '', 'PROYEKTOR OPTOMA', '109'),
(227, 'R7DLOXX1090041234101', '', 'R7D', '', 'LO', 'XX', '004', '', '1234101', 'Lcd Proyektor', '', NULL, '', 'INFOKUS', '109'),
(228, 'R7DLOXX1090051234101', '', 'R7D', '', 'LO', 'XX', '005', '', '1234101', 'PC', '', NULL, '', 'INFOKUS', '109'),
(229, 'R7DLOXX1010011234101', '', 'R7D', '', 'LO', 'XX', '001', '', '1234101', 'PC', '', NULL, '', 'PC R2 DEPAN', '101'),
(230, 'R7DLOXX1160011234101', '', 'R7D', '', 'LO', 'XX', '001', '', '1234101', 'Keyboard', '', NULL, '', 'MONITOR R2 DEPAN', '116'),
(231, 'R7DLOXX1230011234101', '', 'R7D', '', 'LO', 'XX', '001', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KEYBOARD R2 DEPAN', '123'),
(232, '4LOLOXX2050021234101', '', '4LO', '', 'LO', 'XX', '002', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE  A', '205'),
(233, '4LOLOXX2050031234101', '', '4LO', '', 'LO', 'XX', '003', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'Kursi kantor  Tipe B', '205'),
(234, '4LOLOXX2020091234101', '', '4LO', '', 'LO', 'XX', '009', '', '1234101', 'LCD Proyektor', '', NULL, '', 'Meja Kantor Tipe A', '202'),
(235, '4GROPXX1090011234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '001', '', '1234101', 'Screen Proyektor', '', NULL, '', 'LCD Proyektor', '109'),
(236, '4GROPXX1150011234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '001', '', '1234101', 'Kaca Whiteboard', '', NULL, '', 'Screen Proyektor', '115'),
(237, '4GROPXX2250011234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '001', '', '1234101', 'Monitor', '', NULL, '', 'Kaca Whiteboard', '225'),
(238, '4GROPXX1160011234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '001', '', '1234101', 'Monitor', '', NULL, '', 'Monitor', '116'),
(239, '4GROPXX1160021234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '002', '', '1234101', 'Monitor', '', NULL, '', 'Monitor', '116'),
(240, '4GROPXX1160031234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '003', '', '1234101', 'Monitor', '', NULL, '', 'Monitor', '116'),
(241, '4GROPXX1160041234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '004', '', '1234101', 'Monitor', '', NULL, '', 'Monitor', '116'),
(242, '4GROPXX1160051234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '005', '', '1234101', 'Monitor', '', NULL, '', 'Monitor', '116'),
(243, '4GROPXX1160061234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '006', '', '1234101', 'Monitor', '', NULL, '', 'Monitor', '116'),
(244, '4GROPXX1160071234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '007', '', '1234101', 'Monitor', '', NULL, '', 'Monitor', '116'),
(245, '4GROPXX1160081234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '008', '', '1234101', 'Monitor', '', NULL, '', 'Monitor', '116'),
(246, '4GROPXX1160091234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '009', '', '1234101', 'Monitor', '', NULL, '', 'Monitor', '116'),
(247, '4GROPXX1160101234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '010', '', '1234101', 'Monitor', '', NULL, '', 'Monitor', '116'),
(248, '4GROPXX1160111234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '011', '', '1234101', 'Monitor', '', NULL, '', 'Monitor', '116'),
(249, '4GROPXX1160121234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '012', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'Monitor', '116'),
(250, '4GROPXX2020021234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '002', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'MEJA KANTOR TIPE A', '202'),
(251, '4GROPXX2020031234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '003', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'MEJA KANTOR TIPE B', '202'),
(252, '4GROPXX2020041234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '004', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'MEJA KANTOR TIPE B', '202'),
(253, '4GROPXX2020051234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '005', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'MEJA KANTOR TIPE B', '202'),
(254, '4GROPXX2020061234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '006', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'MEJA KANTOR TIPE B', '202'),
(255, '4GROPXX2020071234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '007', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'MEJA KANTOR TIPE B', '202'),
(256, '4GROPXX2020081234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '008', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'MEJA KANTOR TIPE B', '202'),
(257, '4GROP182050011234101', 'Graphic Room', '4GR', '', 'OP', '18', '001', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE A', '205'),
(258, '4GROP182050021234101', 'Graphic Room', '4GR', '', 'OP', '18', '002', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE A', '205'),
(259, '4GROP182050031234101', 'Graphic Room', '4GR', '', 'OP', '18', '003', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE A', '205'),
(260, '4GROP182050041234101', 'Graphic Room', '4GR', '', 'OP', '18', '004', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE A', '205'),
(261, '4GROP182050051234101', 'Graphic Room', '4GR', '', 'OP', '18', '005', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE A', '205'),
(262, '4GROPXX2050061234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '006', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE B', '205'),
(263, '4GROPXX2050071234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '007', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE B', '205'),
(264, '4GROPXX2050081234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '008', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE B', '205'),
(265, '4GROPXX2050091234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '009', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE B', '205'),
(266, '4GROPXX2050101234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '010', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE B', '205'),
(267, '4GROPXX2050111234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '011', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE B', '205'),
(268, '4GROPXX2050121234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '012', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE B', '205'),
(269, '4GROPXX2050131234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '013', '', '1234101', 'Keyboard', '', NULL, '', 'KURSI KANTOR TIPE B', '205'),
(270, '4GROPXX1230011234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '001', '', '1234101', 'Keyboard', '', NULL, '', 'Keyboard', '123'),
(271, '4GROPXX1230021234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '002', '', '1234101', 'Keyboard', '', NULL, '', 'Keyboard', '123'),
(272, '4GROPXX1230031234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '003', '', '1234101', 'Keyboard', '', NULL, '', 'Keyboard', '123'),
(273, '4GROPXX1230041234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '004', '', '1234101', 'Keyboard', '', NULL, '', 'Keyboard', '123'),
(274, '4GROPXX1230051234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '005', '', '1234101', 'Keyboard', '', NULL, '', 'Keyboard', '123'),
(275, '4GROPXX1230061234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '006', '', '1234101', 'Keyboard', '', NULL, '', 'Keyboard', '123'),
(276, '4GROPXX1230071234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '007', '', '1234101', 'Keyboard', '', NULL, '', 'Keyboard', '123'),
(277, '4GROPXX1230081234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '008', '', '1234101', 'Keyboard', '', NULL, '', 'Keyboard', '123'),
(278, '4GROPXX1230091234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '009', '', '1234101', 'Keyboard', '', NULL, '', 'Keyboard', '123'),
(279, '4GROPXX1230101234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '010', '', '1234101', 'Keyboard', '', NULL, '', 'Keyboard', '123'),
(280, '4GROPXX1230111234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '011', '', '1234101', 'Keyboard', '', NULL, '', 'Keyboard', '123'),
(281, '4GROPXX1230121234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '012', '', '1234101', 'PC', '', NULL, '', 'Keyboard', '123'),
(282, '4GROPXX1010011234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '001', '', '1234101', 'PC', '', NULL, '', 'PC', '101'),
(283, '4GROPXX1010021234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '002', '', '1234101', 'PC', '', NULL, '', 'PC', '101'),
(284, '4GROPXX1010031234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '003', '', '1234101', 'PC', '', NULL, '', 'PC', '101'),
(285, '4GROPXX1010041234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '004', '', '1234101', 'PC', '', NULL, '', 'PC', '101'),
(286, '4GROPXX1010051234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '005', '', '1234101', 'PC', '', NULL, '', 'PC', '101'),
(287, '4GROPXX1010061234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '006', '', '1234101', 'PC', '', NULL, '', 'PC', '101'),
(288, '4GROPXX1010071234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '007', '', '1234101', 'PC', '', NULL, '', 'PC', '101'),
(289, '4GROPXX1010081234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '008', '', '1234101', 'PC', '', NULL, '', 'PC', '101'),
(290, '4GROPXX1010091234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '009', '', '1234101', 'PC', '', NULL, '', 'PC', '101'),
(291, '4GROPXX1010101234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '010', '', '1234101', 'PC', '', NULL, '', 'PC', '101'),
(292, '4GROPXX1010111234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '011', '', '1234101', 'PC', '', NULL, '', 'PC', '101'),
(293, '4GROPXX1010121234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '012', '', '1234101', 'PC', '', NULL, '', 'PC', '101'),
(294, '4GROPXX2240011234101', 'Graphic Room', '4GR', '', 'OP', 'XX', '001', '', '1234101', 'CCTV', '', NULL, '', 'CCTV', '224'),
(295, '4FOOPXX2050011234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '001', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE A', '205'),
(296, '4FOOPXX2050021234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '002', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE A', '205'),
(297, '4FOOPXX2050031234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '003', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE A', '205'),
(298, '4FOOPXX2050041234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '004', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE A', '205'),
(299, '4FOOPXX2050051234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '005', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE A', '205'),
(300, '4FOOPXX2050061234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '006', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE A', '205'),
(301, '4FOOPXX2050071234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '007', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE A', '205'),
(302, '4FOOPXX2050081234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '008', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE A', '205'),
(303, '4FOOPXX2050091234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '009', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE A', '205'),
(304, '4FOOPXX2050101234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '010', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE A', '205'),
(305, '4FOOPXX2050111234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '011', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE B', '205'),
(306, '4FOOPXX2050121234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '012', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE B', '205'),
(307, '4FOOPXX2050131234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '013', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE B', '205'),
(308, '4FOOPXX2050141234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '014', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE B', '205'),
(309, '4FOOPXX2050151234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '015', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE B', '205'),
(310, '4FOOPXX2050161234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '016', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE B', '205'),
(311, '4FOOPXX2050171234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '017', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE B', '205'),
(312, '4FOOPXX2050181234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '018', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE B', '205'),
(313, '4FOOPXX2050191234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '019', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE C', '205'),
(314, '4FOOPXX2050201234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '020', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE D', '205'),
(315, '4FOOPXX2050211234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '021', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE D', '205');
INSERT INTO `barang` (`id`, `kode_inventaris`, `tempat`, `kode_lokasi`, `nama_unit`, `kode_unit`, `kode_tahun`, `nomor_urut`, `nama_akun`, `nomor_mtp`, `nama_barang`, `nilai_barang`, `tgl_beli`, `kondisi`, `spesifikasi`, `kode_barang`) VALUES
(316, '4FOOPXX2050221234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '022', '', '1234101', 'Kursi Kerja Staf', '', NULL, '', 'KURSI KANTOR TIPE D', '205'),
(317, '4FOOPXX2050231234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '023', '', '1234101', 'Flip Chart', '', NULL, '', 'KURSI KANTOR TIPE E', '205'),
(318, '4FOOPXX2340011234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '001', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'Flip Chart', '234'),
(319, '4FOOPXX2020011234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '001', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'MEJA KANTOR TIPE A', '202'),
(320, '4FOOPXX2020021234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '002', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'MEJA  KANTOR TIPE B', '202'),
(321, '4FOOPXX2020031234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '003', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'MEJA  KANTOR TIPE B', '202'),
(322, '4FOOPXX2020041234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '004', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'MEJA  KANTOR TIPE B', '202'),
(323, '4FOOPXX2020051234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '005', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'MEJA  KANTOR TIPE B', '202'),
(324, '4FOOPXX2020061234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '006', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'MEJA  KANTOR TIPE B', '202'),
(325, '4FOOPXX2020071234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '007', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'MEJA  KANTOR TIPE B', '202'),
(326, '4FOOPXX2020081234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '008', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'MEJA KANTOR TIPE C', '202'),
(327, '4FOOPXX2020091234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '009', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'MEJA KANTOR TIPE C', '202'),
(328, '4FOOPXX2020101234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '010', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'MEJA KANTOR TIPE C', '202'),
(329, '4FOOPXX2020111234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '011', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'MEJA KANTOR TIPE D', '202'),
(330, '4FOOPXX2020121234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '012', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'MEJA KANTOR TIPE D', '202'),
(331, '4FOOPXX2020131234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '013', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'MEJA KANTOR TIPE D', '202'),
(332, '4FOOPXX2020141234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '014', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'MEJA KANTOR TIPE D', '202'),
(333, '4FOOPXX2020151234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '015', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'MEJA KANTOR TIPE E', '202'),
(334, '4FOOPXX2020161234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '016', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'MEJA KANTOR TIPE E', '202'),
(335, '4FOOPXX2020171234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '017', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'MEJA KANTOR TIPE E', '202'),
(336, '4FOOPXX2020181234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '018', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'MEJA KANTOR TIPE E', '202'),
(337, '4FOOPXX2020191234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '019', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'MEJA KANTOR TIPE E', '202'),
(338, '4FOOPXX2020201234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '020', '', '1234101', 'Meja Kerja 1/2 Biro', '', NULL, '', 'MEJA KANTOR TIPE E', '202'),
(339, '4FOOPXX2020211234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '021', '', '1234101', 'Lemari Kayu Kaca ', '', NULL, '', 'MEJA KANTOR TIPE E', '202'),
(340, '4FOOPXX2190011234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '001', '', '1234101', 'Lemari Kayu Kaca ', '', NULL, '', 'LEMARI KANTOR TIPE A', '219'),
(341, '4FOOPXX2190021234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '002', '', '1234101', 'Speaker Aktif', '', NULL, '', 'LEMARI KANTOR TIPE B', '219'),
(342, '4FOOPXX1060011233201', 'Fiber Optik', '4FO', '', 'OP', 'XX', '001', '', '1233201', 'Speaker Aktif', '', NULL, '', 'Speaker Aktif ', '106'),
(343, '4FOOPXX1600011234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '001', '', '1234101', 'MIC', '', NULL, '', 'Mic', '160'),
(344, '4FOOPXX2240011234101', 'Fiber Optik', '4FO', '', 'OP', 'XX', '001', '', '1234101', 'CCTV', '', NULL, '', 'CCTV', '224');

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
(1, 101, 'PC'),
(2, 102, 'Laptop'),
(3, 103, 'Printer'),
(4, 104, 'Televisi'),
(5, 105, 'Scanner'),
(6, 106, 'Speaker Aktif'),
(7, 107, 'Drone'),
(8, 108, 'AC'),
(9, 109, 'Lcd Proyektor'),
(10, 110, 'Kamera'),
(11, 111, 'Tripod Camera'),
(12, 112, 'Flash Camera'),
(13, 113, 'Memory Camera'),
(14, 114, 'Card Reader'),
(15, 115, 'Screen Proyektor'),
(16, 116, 'Monitor'),
(17, 117, 'CPU'),
(18, 118, 'Sound System'),
(19, 201, 'Meja Kerja 1 Biro'),
(20, 202, 'Meja Kerja 1/2 Biro'),
(21, 203, 'Meja Rapat'),
(22, 204, 'Kursi Kerja Manager'),
(23, 205, 'Kursi Kerja Staf'),
(24, 206, 'Lemari Besi '),
(25, 207, 'Lemari Besi Kaca'),
(26, 208, 'Filling Cabinet Besi'),
(27, 209, 'Filling Cabinet Kayu');

-- --------------------------------------------------------

--
-- Table structure for table `kodetempat`
--

CREATE TABLE `kodetempat` (
  `kode_lokasi` varchar(11) NOT NULL,
  `lokasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kodetempat`
--

INSERT INTO `kodetempat` (`kode_lokasi`, `lokasi`) VALUES
('MKT', 'RUANG MARKETING'),
('SOL', 'RUANG SOLUTION'),
('RR2', 'RUANG RAPAT R2'),
('RR6', 'RUANG RAPAT R6'),
('RDR', 'RUANG DIREKTUR'),
('401', 'RUANG '),
('402', 'RUANG '),
('403', 'RUANG '),
('404', 'RUANG '),
('405', 'RUANG '),
('406', 'RUANG '),
('507', 'RUANG '),
('UKM', 'RUANG UKM'),
('LTF', 'LABORATORIUM TIFO'),
('LTC', 'LABORATORIUM TEST CENTER');

-- --------------------------------------------------------

--
-- Table structure for table `kodeunit`
--

CREATE TABLE `kodeunit` (
  `id` int(11) NOT NULL,
  `kode_unit` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kodeunit`
--

INSERT INTO `kodeunit` (`id`, `kode_unit`, `nama`) VALUES
(1, 'MT', 'AMELIA KATRIN'),
(2, 'SO', 'EKA PUJAPRIYANTA'),
(3, 'LO', 'HERI IMAN NURJAMAN'),
(4, 'OP', 'FIDIA LESTARI');

-- --------------------------------------------------------

--
-- Table structure for table `kode_akun`
--

CREATE TABLE `kode_akun` (
  `kode_mtp` int(11) NOT NULL,
  `akun` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kode_akun`
--

INSERT INTO `kode_akun` (`kode_mtp`, `akun`) VALUES
(1231101, 'Tanah'),
(1232101, 'Gedung dan Bangunan'),
(1233101, 'SarPen Laboratorium'),
(1233201, 'Sarana Pendidikan'),
(1233301, 'Peralatan Proyek/PPLMI'),
(1234101, 'Inventaris Kantor'),
(1235101, 'Alat Pengolah Data'),
(1236101, 'Alat Catu Daya'),
(1237101, 'Kendaraan Bermotor'),
(1238101, 'Aktiva Dalam Pembangunan'),
(1241101, 'AP Gedung dan Bangunan'),
(1242100, 'AP SARPEN LABORATORIUM'),
(1242101, 'AP SarPen Laboratorium'),
(1242201, 'AP Sarana Pendidikan'),
(1242301, 'AP Peralatan Proyek/PPLMI'),
(1242401, 'AP SarPen Lainnya'),
(1243101, 'AP Inventaris Kantor'),
(1244101, 'AP Alat Pengolah Data'),
(1245101, 'AP Alat Catu Daya'),
(1246101, 'AP Kendaraan Bermotor'),
(1251101, 'Akreditasi'),
(1252101, 'Hak Atas Kekayaan Intelektual'),
(1252102, 'Software SIM YPT'),
(1253101, 'Seritifikasi Pendidikan Lanjutan'),
(1254101, 'Seritifikasi Pendidikan Lanjutan Dalam Proses'),
(1254102, 'Penelitian Dalam Proses'),
(1254103, 'Akreditasi Dalam Proses'),
(1261101, 'Akumulasi Amortisasi Akreditasi'),
(1262101, 'Akumulasi Amortisasi Hak Atas Kekayaan Intelektual'),
(1262102, 'Akumulasi Amortisasi SIM YPT'),
(1263101, 'Akumulasi Amortisasi Sertifikasi Pendidikan Lanjutan'),
(1271101, 'Aset Pajak Tangguhan'),
(1271102, 'Beban Ditangguhkan'),
(1291101, 'Aset Lain-lain'),
(1291102, 'Bank Garansi'),
(1231101, 'Tanah'),
(1232101, 'Gedung dan Bangunan'),
(1233101, 'SarPen Laboratorium'),
(1233201, 'Sarana Pendidikan'),
(1233301, 'Peralatan Proyek/PPLMI'),
(1234101, 'Inventaris Kantor'),
(1235101, 'Alat Pengolah Data'),
(1236101, 'Alat Catu Daya'),
(1237101, 'Kendaraan Bermotor'),
(1238101, 'Aktiva Dalam Pembangunan'),
(1241101, 'AP Gedung dan Bangunan'),
(1242100, 'AP SARPEN LABORATORIUM'),
(1242101, 'AP SarPen Laboratorium'),
(1242201, 'AP Sarana Pendidikan'),
(1242301, 'AP Peralatan Proyek/PPLMI'),
(1242401, 'AP SarPen Lainnya'),
(1243101, 'AP Inventaris Kantor'),
(1244101, 'AP Alat Pengolah Data'),
(1245101, 'AP Alat Catu Daya'),
(1246101, 'AP Kendaraan Bermotor'),
(1251101, 'Akreditasi'),
(1252101, 'Hak Atas Kekayaan Intelektual'),
(1252102, 'Software SIM YPT'),
(1253101, 'Seritifikasi Pendidikan Lanjutan'),
(1254101, 'Seritifikasi Pendidikan Lanjutan Dalam Proses'),
(1254102, 'Penelitian Dalam Proses'),
(1254103, 'Akreditasi Dalam Proses'),
(1261101, 'Akumulasi Amortisasi Akreditasi'),
(1262101, 'Akumulasi Amortisasi Hak Atas Kekayaan Intelektual'),
(1262102, 'Akumulasi Amortisasi SIM YPT'),
(1263101, 'Akumulasi Amortisasi Sertifikasi Pendidikan Lanjutan'),
(1271101, 'Aset Pajak Tangguhan'),
(1271102, 'Beban Ditangguhkan'),
(1291101, 'Aset Lain-lain'),
(1291102, 'Bank Garansi');

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
  `tgl_aju` varchar(15) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `waktu_pinjam` varchar(10) NOT NULL,
  `tgl_balik` date NOT NULL,
  `waktu_balik` varchar(10) NOT NULL,
  `sts` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kodebarang`
--
ALTER TABLE `kodebarang`
  ADD PRIMARY KEY (`id_kode`);

--
-- Indexes for table `kodeunit`
--
ALTER TABLE `kodeunit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;

--
-- AUTO_INCREMENT for table `kodebarang`
--
ALTER TABLE `kodebarang`
  MODIFY `id_kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `kodeunit`
--
ALTER TABLE `kodeunit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
