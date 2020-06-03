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
-- Table structure for table `servicio_negocio`
--

CREATE TABLE `servicio_negocio` (
  `idServicioNegocio` int(11) NOT NULL,
  `idServicio` int(11) DEFAULT NULL,
  `idNegocio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `servicio_negocio`
--

INSERT INTO `servicio_negocio` (`idServicioNegocio`, `idServicio`, `idNegocio`) VALUES
(1, 1, 300),
(2, 2, 300),
(3, 3, 300),
(4, 4, 300),
(5, 1, 301),
(6, 2, 301),
(7, 3, 301),
(8, 4, 301),
(9, 1, 302),
(10, 2, 302),
(11, 3, 302),
(12, 4, 302),
(13, 1, 303),
(14, 2, 303),
(15, 3, 303),
(16, 4, 303),
(17, 1, 304),
(18, 2, 304),
(19, 3, 304),
(20, 4, 304),
(21, 1, 305),
(22, 2, 305),
(23, 3, 305),
(24, 4, 305),
(25, 1, 306),
(26, 2, 306),
(27, 3, 306),
(28, 4, 306),
(29, 1, 307),
(30, 2, 307),
(31, 3, 307),
(32, 4, 307),
(33, 1, 308),
(34, 2, 308),
(35, 3, 308),
(36, 4, 308),
(37, 1, 309),
(38, 2, 309),
(39, 3, 309),
(40, 4, 309);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `servicio_negocio`
--
ALTER TABLE `servicio_negocio`
  ADD PRIMARY KEY (`idServicioNegocio`),
  ADD KEY `FK_SERVICIO_NEGOCIO_NEGOCIOS` (`idNegocio`),
  ADD KEY `FK_SERVICIO_NEGOCIO_SERVICIOS` (`idServicio`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `servicio_negocio`
--
ALTER TABLE `servicio_negocio`
  MODIFY `idServicioNegocio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `servicio_negocio`
--
ALTER TABLE `servicio_negocio`
  ADD CONSTRAINT `FK_SERVICIO_NEGOCIO_NEGOCIOS` FOREIGN KEY (`idNegocio`) REFERENCES `negocios` (`idNegocio`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SERVICIO_NEGOCIO_SERVICIOS` FOREIGN KEY (`idServicio`) REFERENCES `servicios` (`idServicio`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
