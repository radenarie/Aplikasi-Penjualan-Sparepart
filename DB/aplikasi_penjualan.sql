-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2018 at 08:26 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi_penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `master_barang`
--

CREATE TABLE `master_barang` (
  `Kode_Brg` int(10) NOT NULL,
  `Nama_Brg` varchar(35) NOT NULL,
  `Harga_jual` int(8) NOT NULL,
  `Harga_beli` int(8) NOT NULL,
  `Satuan` varchar(20) NOT NULL,
  `Kategori` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_barang`
--

INSERT INTO `master_barang` (`Kode_Brg`, `Nama_Brg`, `Harga_jual`, `Harga_beli`, `Satuan`, `Kategori`) VALUES
(25, 'Obeng', 400, 350, 'buah', 'perkakas'),
(26, 'Ban dalam', 300, 150, 'buah', 'Bahan');

-- --------------------------------------------------------

--
-- Table structure for table `master_detailpenjualan`
--

CREATE TABLE `master_detailpenjualan` (
  `No_faktur` int(11) NOT NULL,
  `Kode_Brg` int(10) NOT NULL,
  `Harga_Satuan` int(10) NOT NULL,
  `Jumlah` int(5) NOT NULL,
  `Harga_Total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `master_penjulan`
--

CREATE TABLE `master_penjulan` (
  `No_faktur` int(11) NOT NULL,
  `Tgl_faktur` date NOT NULL,
  `Nama_konsumen` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_penjulan`
--

INSERT INTO `master_penjulan` (`No_faktur`, `Tgl_faktur`, `Nama_konsumen`) VALUES
(30, '2018-07-08', 'dono');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_barang`
--
ALTER TABLE `master_barang`
  ADD PRIMARY KEY (`Kode_Brg`);

--
-- Indexes for table `master_detailpenjualan`
--
ALTER TABLE `master_detailpenjualan`
  ADD KEY `Kode_Brg` (`Kode_Brg`),
  ADD KEY `No_faktur` (`No_faktur`);

--
-- Indexes for table `master_penjulan`
--
ALTER TABLE `master_penjulan`
  ADD PRIMARY KEY (`No_faktur`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master_barang`
--
ALTER TABLE `master_barang`
  MODIFY `Kode_Brg` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `master_detailpenjualan`
--
ALTER TABLE `master_detailpenjualan`
  ADD CONSTRAINT `master_detailpenjualan_ibfk_1` FOREIGN KEY (`Kode_Brg`) REFERENCES `master_barang` (`Kode_Brg`),
  ADD CONSTRAINT `master_detailpenjualan_ibfk_2` FOREIGN KEY (`No_faktur`) REFERENCES `master_penjulan` (`No_faktur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
