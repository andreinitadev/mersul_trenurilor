-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2021 at 05:39 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mersul_trenurilor`
--

-- --------------------------------------------------------

--
-- Table structure for table `administreaza`
--

CREATE TABLE `administreaza` (
  `cod_com` varchar(3) NOT NULL,
  `cod_tren` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `administreaza`
--

INSERT INTO `administreaza` (`cod_com`, `cod_tren`) VALUES
('IR', 15055),
('IR', 15056),
('IR', 15060),
('TFC', 2327),
('TFC', 2329);

-- --------------------------------------------------------

--
-- Table structure for table `apartin`
--

CREATE TABLE `apartin` (
  `cod_statie` int(11) NOT NULL,
  `cod_cb` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `apartin`
--

INSERT INTO `apartin` (`cod_statie`, `cod_cb`) VALUES
(1, 2),
(1, 3),
(4, 21);

-- --------------------------------------------------------

--
-- Table structure for table `case_de_bilete`
--

CREATE TABLE `case_de_bilete` (
  `cod_cb` int(11) NOT NULL,
  `cod_com` varchar(3) NOT NULL,
  `telefon` varchar(13) DEFAULT NULL,
  `program` varchar(255) DEFAULT NULL,
  `nr_ghisee` varchar(30) DEFAULT NULL,
  `nr_angajati` int(11) DEFAULT NULL,
  `nr_reclamatii` int(11) DEFAULT NULL,
  `nr_posturi_libere` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `case_de_bilete`
--

INSERT INTO `case_de_bilete` (`cod_cb`, `cod_com`, `telefon`, `program`, `nr_ghisee`, `nr_angajati`, `nr_reclamatii`, `nr_posturi_libere`) VALUES
(2, 'CFR', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'TFC', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'BDZ', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'ATC', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'DB', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'H', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'IR', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'IRN', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'MAV', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'MMV', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'OBB', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'R', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'RE', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'RFO', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'TB', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'TIT', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'TRC', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'TTF', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'UC', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'CFR', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companii`
--

CREATE TABLE `companii` (
  `cod_com` varchar(3) NOT NULL,
  `denumire` varchar(30) DEFAULT NULL,
  `infiintare` varchar(30) DEFAULT NULL,
  `nr_trenuri` int(11) DEFAULT NULL,
  `nr_angajati` int(11) DEFAULT NULL,
  `sediu` varchar(30) DEFAULT NULL,
  `telefon_callcenter` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `companii`
--

INSERT INTO `companii` (`cod_com`, `denumire`, `infiintare`, `nr_trenuri`, `nr_angajati`, `sediu`, `telefon_callcenter`) VALUES
('ATC', 'Astra Trans Carpatic SRL', '16 octombrie 2014', NULL, NULL, NULL, NULL),
('BDZ', 'BDZ', '1888', NULL, 17867, 'Sofia', NULL),
('CFR', 'CFR Calatori SA', '1998', 60, 12600, 'Bucuresti', ' 00400219521'),
('DB', 'Deutsche Bahn', 'ianuarie 1994', NULL, 295653, 'Berlin', NULL),
('H', 'Softrans SRL', '2002', 1, 43, 'Craiova', '0040742018798'),
('IR', 'Via Terra Group SRL', 'iunie 2001', 45, 250, 'Cluj-Napoca', '0040264596775'),
('IRN', 'InterRegionalNight', NULL, NULL, NULL, NULL, NULL),
('MAV', 'Magyar Államvasutak ZRT', '1868', NULL, NULL, 'Budapesta', NULL),
('MMV', 'MMV Rail SA', '2015', NULL, NULL, 'Cluj-Napoca', '0040371600396'),
('OBB', 'Österreichische Bundesbahnen', '21 noiembrie 1919', NULL, 40265, 'Viena', NULL),
('R', 'Regio Calatori SRL', '2004', 34, 666, 'Brasov', '0040310800900'),
('RE', 'Reloc SA', '1992', NULL, 850, 'Craiova', NULL),
('RFO', 'Rail Force SRL', '2008', NULL, NULL, 'Brasov', '0371042020'),
('TB', 'Transblue SRL', NULL, NULL, NULL, 'Bucuresti', '0040212318127'),
('TFC', 'Transferoviar Calatori SRL', '2011', 23, 391, 'Cluj-Napoca', '0040238434380'),
('TIT', 'Trenitalia SA', '2000', NULL, NULL, 'Roma', NULL),
('TRC', 'Tim Rail Cargo SRL', '2013', NULL, NULL, 'Dumbrãviţa', NULL),
('TTF', 'Tehnotrans Feroviar SRL', NULL, NULL, NULL, 'Constanța', '0040736022988'),
('UC', 'Unicom Tranzit SA', '1993', NULL, NULL, 'Chisinau', NULL),
('VTR', 'Vest Trans Rail SRL', NULL, NULL, NULL, 'Ploiesti', '0040244210566');

-- --------------------------------------------------------

--
-- Table structure for table `lucreaza_cu`
--

CREATE TABLE `lucreaza_cu` (
  `cod_com` varchar(3) NOT NULL,
  `cod_statie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lucreaza_cu`
--

INSERT INTO `lucreaza_cu` (`cod_com`, `cod_statie`) VALUES
('CFR', 1),
('TFC', 18);

-- --------------------------------------------------------

--
-- Table structure for table `ofera_bilete_pentru`
--

CREATE TABLE `ofera_bilete_pentru` (
  `cod_ruta` int(11) NOT NULL,
  `cod_cb` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ofera_bilete_pentru`
--

INSERT INTO `ofera_bilete_pentru` (`cod_ruta`, `cod_cb`) VALUES
(3, 3),
(4, 2),
(7, 21);

-- --------------------------------------------------------

--
-- Table structure for table `parcurg`
--

CREATE TABLE `parcurg` (
  `cod_tren` int(11) NOT NULL,
  `cod_ruta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parcurg`
--

INSERT INTO `parcurg` (`cod_tren`, `cod_ruta`) VALUES
(15053, 13),
(15054, 14),
(15202, 9),
(15203, 10);

-- --------------------------------------------------------

--
-- Table structure for table `rute`
--

CREATE TABLE `rute` (
  `cod_ruta` int(11) NOT NULL,
  `statie_plecare` int(11) NOT NULL,
  `statie_sosire` int(11) NOT NULL,
  `ora_plecarii` time DEFAULT NULL,
  `ora_sosirii` time DEFAULT NULL,
  `schimbari` int(11) DEFAULT NULL,
  `facilitati` varchar(255) DEFAULT NULL,
  `observatii` varchar(255) DEFAULT NULL,
  `lungime` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rute`
--

INSERT INTO `rute` (`cod_ruta`, `statie_plecare`, `statie_sosire`, `ora_plecarii`, `ora_sosirii`, `schimbari`, `facilitati`, `observatii`, `lungime`) VALUES
(1, 1, 15, '13:27:00', '21:33:00', 0, 'cu vagon de dormit\r\ncu vagon bar', 'schimbare locomotiva la Deda', '380 km'),
(2, 15, 1, '12:13:00', '20:15:00', 0, 'cu vagon de dormit\r\ncu vagon bar', 'schimbare locomotiva la Deda', '380 km'),
(3, 2, 1, '06:31:00', '07:33:00', 0, '', NULL, '55 km'),
(4, 1, 2, '05:32:00', '06:36:00', 0, NULL, NULL, '55 km'),
(5, 1, 18, '10:27:00', '22:10:00', 2, NULL, NULL, NULL),
(6, 18, 1, '12:13:00', '22:05:00', 1, NULL, NULL, NULL),
(7, 17, 5, '15:49:00', '23:36:00', 1, '', NULL, '290 km'),
(8, 5, 17, '12:50:00', '20:30:00', 1, NULL, NULL, '290 km'),
(9, 1, 16, '07:52:00', '12:29:00', 0, NULL, NULL, '209 km'),
(10, 16, 1, '07:52:00', '12:29:00', 0, NULL, NULL, '209 km'),
(11, 4, 10, '14:13:00', '21:58:00', 3, NULL, NULL, '270 km'),
(12, 10, 4, NULL, NULL, NULL, NULL, NULL, '270 km'),
(13, 20, 10, '12:06:00', '15:35:00', 0, NULL, NULL, '186 km'),
(14, 10, 20, '13:05:00', '16:34:00', 0, NULL, NULL, '186 km'),
(15, 13, 14, '15:27:00', '15:43:00', 0, NULL, NULL, '22 km'),
(16, 14, 13, '14:27:00', '14:43:00', 0, NULL, NULL, '22 km'),
(17, 11, 4, '14:00:00', '16:19:00', 0, NULL, NULL, '225 km'),
(18, 4, 11, '00:00:13', '15:20:00', 0, NULL, NULL, '225 km'),
(19, 3, 5, '08:20:00', '10:16:00', 0, NULL, NULL, '107 km'),
(20, 5, 3, '09:20:00', '11:16:00', NULL, NULL, NULL, '107 km');

-- --------------------------------------------------------

--
-- Table structure for table `specificatii_tren`
--

CREATE TABLE `specificatii_tren` (
  `cod_tren` int(11) NOT NULL,
  `tonaj` varchar(30) NOT NULL,
  `tip_motor` varchar(30) NOT NULL,
  `putere` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `specificatii_tren`
--

INSERT INTO `specificatii_tren` (`cod_tren`, `tonaj`, `tip_motor`, `putere`) VALUES
(15053, '350 t', 'Diesel', '444 CP');

-- --------------------------------------------------------

--
-- Table structure for table `statii`
--

CREATE TABLE `statii` (
  `cod_statie` int(11) NOT NULL,
  `denumire` varchar(30) DEFAULT NULL,
  `lungime_peron` varchar(30) DEFAULT NULL,
  `parcare` varchar(30) DEFAULT NULL,
  `nr_linii` int(11) DEFAULT NULL,
  `magazin` varchar(30) DEFAULT NULL,
  `toaleta` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `statii`
--

INSERT INTO `statii` (`cod_statie`, `denumire`, `lungime_peron`, `parcare`, `nr_linii`, `magazin`, `toaleta`) VALUES
(1, 'București Nord', '1,8 km', 'cu plata', 14, 'alimentar\r\nhaine\r\njucarii', 'cu plata'),
(2, 'Ploiești Sud', '600 m', 'fara', 10, 'alimentar', 'cu plata'),
(3, 'Ploiești Vest', '1 km', 'gratuita', 5, 'alimentar', 'cu plata'),
(4, 'București Sud', '1,5 km', 'gratuita', 7, 'alimentar\r\njucarii', 'fara plata'),
(5, 'Brașov', ' 2 km', 'gratuita\r\ncu plata', 16, 'alimentar', 'fara plata'),
(6, 'Zărnești', NULL, NULL, NULL, NULL, NULL),
(7, 'Nădlac', NULL, NULL, NULL, NULL, NULL),
(8, 'Alba Iulia', NULL, NULL, NULL, NULL, NULL),
(9, 'Arad', NULL, NULL, NULL, NULL, NULL),
(10, 'Timișoara Nord', NULL, NULL, NULL, NULL, NULL),
(11, 'Constanța', NULL, NULL, NULL, NULL, NULL),
(12, 'Sfântul Gheorge', NULL, NULL, NULL, NULL, NULL),
(13, 'Deda', NULL, NULL, NULL, NULL, NULL),
(14, 'Reghin', NULL, NULL, NULL, NULL, NULL),
(15, 'Târgu-Mureș', NULL, NULL, NULL, NULL, NULL),
(16, 'Craiova', NULL, NULL, NULL, NULL, NULL),
(17, 'Bistrița', NULL, NULL, NULL, NULL, NULL),
(18, 'Cluj-Napoca', NULL, NULL, NULL, NULL, NULL),
(19, 'Iași', NULL, NULL, NULL, NULL, NULL),
(20, 'Orşova', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trenuri`
--

CREATE TABLE `trenuri` (
  `cod_tren` int(11) NOT NULL,
  `cod_com` varchar(3) NOT NULL,
  `nr_locuri` int(11) DEFAULT NULL,
  `nr_vagoane` int(11) DEFAULT NULL,
  `producator` varchar(30) DEFAULT NULL,
  `culoare` varchar(30) DEFAULT NULL,
  `an_fabricatie` int(11) DEFAULT NULL,
  `ani_utilizare` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trenuri`
--

INSERT INTO `trenuri` (`cod_tren`, `cod_com`, `nr_locuri`, `nr_vagoane`, `producator`, `culoare`, `an_fabricatie`, `ani_utilizare`) VALUES
(139, 'H', 188, 4, 'Softronic', NULL, 2010, 10),
(2327, 'TFC', 144, 3, 'Izotron', NULL, 1983, 14),
(2328, 'TFC', 234, 5, 'Izotron', NULL, 1989, 13),
(2329, 'TFC', 234, 5, 'Izotron', NULL, 1989, 12),
(2330, 'TFC', 296, 6, 'Izotron', NULL, 1991, 9),
(15051, 'IRN', 282, 6, 'Alstom', NULL, 1990, 15),
(15052, 'IRN', 282, 6, 'Alstom', NULL, 1990, 14),
(15053, 'IR', 282, 6, 'Alstom', NULL, 1990, 13),
(15054, 'IR', 282, 6, 'Alstom', NULL, 1990, 11),
(15055, 'IR', 282, 6, 'Alstom', NULL, 1990, 20),
(15056, 'IR', 255, 5, 'Alstom', NULL, 1986, 13),
(15057, 'IR', 255, 5, 'Alstom', NULL, 1986, 11),
(15058, 'IR', 255, 5, 'Alstom', NULL, 1986, 12),
(15059, 'IR', 255, 5, 'Alstom', NULL, 1986, 14),
(15060, 'IR', 255, 5, 'Alstom', NULL, 1986, 15),
(15202, 'R', 141, 3, 'Desiro', NULL, 1981, 12),
(15203, 'R', 141, 3, 'Desiro', NULL, 1981, 11),
(15204, 'R', 141, 3, 'Desiro', NULL, 1981, 13),
(15205, 'R', 141, 3, 'Desiro', NULL, 1981, 14),
(15206, 'R', 141, 3, 'Desiro', NULL, 1981, 15);

-- --------------------------------------------------------

--
-- Table structure for table `vehicule`
--

CREATE TABLE `vehicule` (
  `cod_tren` int(11) NOT NULL,
  `viteza_maxima` varchar(30) NOT NULL,
  `inaltime` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehicule`
--

INSERT INTO `vehicule` (`cod_tren`, `viteza_maxima`, `inaltime`) VALUES
(15206, '60 km/h', '3,5 m');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administreaza`
--
ALTER TABLE `administreaza`
  ADD PRIMARY KEY (`cod_tren`),
  ADD KEY `cod_com` (`cod_com`);

--
-- Indexes for table `apartin`
--
ALTER TABLE `apartin`
  ADD PRIMARY KEY (`cod_cb`),
  ADD KEY `cod_statie` (`cod_statie`);

--
-- Indexes for table `case_de_bilete`
--
ALTER TABLE `case_de_bilete`
  ADD PRIMARY KEY (`cod_cb`),
  ADD KEY `cod_com` (`cod_com`);

--
-- Indexes for table `companii`
--
ALTER TABLE `companii`
  ADD PRIMARY KEY (`cod_com`);

--
-- Indexes for table `lucreaza_cu`
--
ALTER TABLE `lucreaza_cu`
  ADD PRIMARY KEY (`cod_com`,`cod_statie`),
  ADD KEY `cod_statie` (`cod_statie`);

--
-- Indexes for table `ofera_bilete_pentru`
--
ALTER TABLE `ofera_bilete_pentru`
  ADD PRIMARY KEY (`cod_ruta`,`cod_cb`),
  ADD KEY `cod_cb` (`cod_cb`);

--
-- Indexes for table `parcurg`
--
ALTER TABLE `parcurg`
  ADD PRIMARY KEY (`cod_tren`,`cod_ruta`),
  ADD KEY `cod_ruta` (`cod_ruta`);

--
-- Indexes for table `rute`
--
ALTER TABLE `rute`
  ADD PRIMARY KEY (`cod_ruta`),
  ADD KEY `statie_plecare` (`statie_plecare`),
  ADD KEY `statie_sosire` (`statie_sosire`);

--
-- Indexes for table `specificatii_tren`
--
ALTER TABLE `specificatii_tren`
  ADD PRIMARY KEY (`cod_tren`);

--
-- Indexes for table `statii`
--
ALTER TABLE `statii`
  ADD PRIMARY KEY (`cod_statie`);

--
-- Indexes for table `trenuri`
--
ALTER TABLE `trenuri`
  ADD PRIMARY KEY (`cod_tren`),
  ADD KEY `cod_com` (`cod_com`) USING BTREE;

--
-- Indexes for table `vehicule`
--
ALTER TABLE `vehicule`
  ADD PRIMARY KEY (`cod_tren`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `case_de_bilete`
--
ALTER TABLE `case_de_bilete`
  MODIFY `cod_cb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `rute`
--
ALTER TABLE `rute`
  MODIFY `cod_ruta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `statii`
--
ALTER TABLE `statii`
  MODIFY `cod_statie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `administreaza`
--
ALTER TABLE `administreaza`
  ADD CONSTRAINT `administreaza_ibfk_1` FOREIGN KEY (`cod_tren`) REFERENCES `trenuri` (`cod_tren`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `administreaza_ibfk_2` FOREIGN KEY (`cod_com`) REFERENCES `companii` (`cod_com`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `apartin`
--
ALTER TABLE `apartin`
  ADD CONSTRAINT `apartin_ibfk_1` FOREIGN KEY (`cod_cb`) REFERENCES `case_de_bilete` (`cod_cb`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `apartin_ibfk_2` FOREIGN KEY (`cod_statie`) REFERENCES `statii` (`cod_statie`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `case_de_bilete`
--
ALTER TABLE `case_de_bilete`
  ADD CONSTRAINT `case_de_bilete_ibfk_1` FOREIGN KEY (`cod_com`) REFERENCES `companii` (`cod_com`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lucreaza_cu`
--
ALTER TABLE `lucreaza_cu`
  ADD CONSTRAINT `lucreaza_cu_ibfk_1` FOREIGN KEY (`cod_com`) REFERENCES `companii` (`cod_com`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lucreaza_cu_ibfk_2` FOREIGN KEY (`cod_statie`) REFERENCES `statii` (`cod_statie`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ofera_bilete_pentru`
--
ALTER TABLE `ofera_bilete_pentru`
  ADD CONSTRAINT `ofera_bilete_pentru_ibfk_1` FOREIGN KEY (`cod_ruta`) REFERENCES `rute` (`cod_ruta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ofera_bilete_pentru_ibfk_2` FOREIGN KEY (`cod_cb`) REFERENCES `case_de_bilete` (`cod_cb`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `parcurg`
--
ALTER TABLE `parcurg`
  ADD CONSTRAINT `parcurg_ibfk_1` FOREIGN KEY (`cod_ruta`) REFERENCES `rute` (`cod_ruta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `parcurg_ibfk_2` FOREIGN KEY (`cod_tren`) REFERENCES `trenuri` (`cod_tren`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rute`
--
ALTER TABLE `rute`
  ADD CONSTRAINT `rute_ibfk_1` FOREIGN KEY (`statie_plecare`) REFERENCES `statii` (`cod_statie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rute_ibfk_2` FOREIGN KEY (`statie_sosire`) REFERENCES `statii` (`cod_statie`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `specificatii_tren`
--
ALTER TABLE `specificatii_tren`
  ADD CONSTRAINT `specificatii_tren_ibfk_1` FOREIGN KEY (`cod_tren`) REFERENCES `trenuri` (`cod_tren`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trenuri`
--
ALTER TABLE `trenuri`
  ADD CONSTRAINT `trenuri_ibfk_1` FOREIGN KEY (`cod_com`) REFERENCES `companii` (`cod_com`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vehicule`
--
ALTER TABLE `vehicule`
  ADD CONSTRAINT `vehicule_ibfk_1` FOREIGN KEY (`cod_tren`) REFERENCES `trenuri` (`cod_tren`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
