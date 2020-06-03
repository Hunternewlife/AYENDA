-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 01, 2020 at 10:18 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ayenda`
--

-- --------------------------------------------------------

--
-- Table structure for table `subservicios`
--

CREATE TABLE `subservicios` (
  `idSubservicio` int(11) NOT NULL,
  `idServicio` int(11) DEFAULT NULL,
  `subservicio` varchar(255) NOT NULL,
  `icono` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subservicios`
--

INSERT INTO `subservicios` (`idSubservicio`, `idServicio`, `subservicio`, `icono`) VALUES
(1, 1, 'tradicional', 'sources/images/mock_logo.png'),
(2, 1, 'semipermanente', 'sources/images/mock_logo.png'),
(3, 1, 'acrílico', 'sources/images/mock_logo.png'),
(4, 2, 'corte', 'sources/images/mock_logo.png'),
(5, 2, 'peinados', 'sources/images/mock_logo.png'),
(6, 2, 'cepillado', 'sources/images/mock_logo.png'),
(7, 2, 'ondulado', 'sources/images/mock_logo.png'),
(8, 3, 'social', 'sources/images/mock_logo.png'),
(9, 3, 'artístico', 'sources/images/mock_logo.png'),
(10, 3, 'maquillaje de bodas', 'sources/images/mock_logo.png'),
(11, 4, 'cejas', 'sources/images/mock_logo.png'),
(12, 4, 'pestañas pelo a pelo', 'sources/images/mock_logo.png'),
(13, 4, 'masajes', 'sources/images/mock_logo.png'),
(14, 4, 'depilación', 'sources/images/mock_logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subservicios`
--
ALTER TABLE `subservicios`
  ADD PRIMARY KEY (`idSubservicio`),
  ADD KEY `FK_SUBSERVICIOS_SERVICIOS` (`idServicio`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `subservicios`
--
ALTER TABLE `subservicios`
  MODIFY `idSubservicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `subservicios`
--
ALTER TABLE `subservicios`
  ADD CONSTRAINT `FK_SUBSERVICIOS_SERVICIOS` FOREIGN KEY (`idServicio`) REFERENCES `servicios` (`idServicio`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
