-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2019 at 08:16 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `gambar`
--

CREATE TABLE `gambar` (
  `id` int(11) NOT NULL,
  `judul_gambar` text NOT NULL,
  `nama_gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tm_gol`
--

CREATE TABLE `tm_gol` (
  `id` int(4) NOT NULL,
  `gol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tm_gol`
--

INSERT INTO `tm_gol` (`id`, `gol`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E');

-- --------------------------------------------------------

--
-- Table structure for table `tm_mahasiswa`
--

CREATE TABLE `tm_mahasiswa` (
  `nim` varchar(9) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tm_prodi_id` int(4) DEFAULT NULL,
  `tm_gol_id` int(4) DEFAULT NULL,
  `telp` int(13) DEFAULT NULL,
  `alamat` text NOT NULL,
  `photo` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tm_mahasiswa`
--

INSERT INTO `tm_mahasiswa` (`nim`, `nama`, `tm_prodi_id`, `tm_gol_id`, `telp`, `alamat`, `photo`) VALUES
('E31170156', 'Maulidiyawati', 1, 1, 861234563, 'Probolinggo', 0x4465615f32303138303730385f3139353834362e6a7067),
('E31171396', 'Alda Gheauly Hastary Rubi', 1, 3, 2147483647, 'Probolinggo', ''),
('E31171494', 'Teddi Juniarlaksoo', 1, 4, 2147483647, 'Bondowoso', '');

-- --------------------------------------------------------

--
-- Table structure for table `tm_prodi`
--

CREATE TABLE `tm_prodi` (
  `id` int(4) NOT NULL,
  `prodi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tm_prodi`
--

INSERT INTO `tm_prodi` (`id`, `prodi`) VALUES
(1, 'MIF'),
(2, 'TKK'),
(3, 'TIF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tm_gol`
--
ALTER TABLE `tm_gol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tm_mahasiswa`
--
ALTER TABLE `tm_mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `tm_prodi_id` (`tm_prodi_id`),
  ADD KEY `tm_gol_id` (`tm_gol_id`);

--
-- Indexes for table `tm_prodi`
--
ALTER TABLE `tm_prodi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tm_gol`
--
ALTER TABLE `tm_gol`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tm_prodi`
--
ALTER TABLE `tm_prodi`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tm_mahasiswa`
--
ALTER TABLE `tm_mahasiswa`
  ADD CONSTRAINT `tm_mahasiswa_ibfk_1` FOREIGN KEY (`tm_gol_id`) REFERENCES `tm_gol` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tm_mahasiswa_ibfk_2` FOREIGN KEY (`tm_prodi_id`) REFERENCES `tm_prodi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
