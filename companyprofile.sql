-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2022 at 10:31 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `companyprofile`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `kutipan` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`id`, `judul`, `kutipan`, `isi`, `tgl_isi`) VALUES
(4, 'Judul 1', 'Kutipan 1', '<p>Isi adalah update</p>', '2021-03-28 00:31:37'),
(5, 'Judul 2', 'Kutipan 2', '<p>Isi 2</p>', '2021-03-28 00:10:45'),
(6, 'Judul 3', 'Kutipan 3', '<p>Isi 3</p>', '2021-03-28 00:10:54'),
(7, 'Judul 4', 'Kutipan 4', '<p>Isi 4</p>', '2021-03-28 00:11:05'),
(8, 'Tetap Sehat Tetap Semangat', 'karena hidup harus sehat', '<p><img src=\"../gambar/47d1e990583c9c67424d369f3414728e.jpeg\" style=\"width: 223px;\"><span style=\"font-family: var(--bs-font-sans-serif); font-size: 1rem;\">selalu semangat</span></p>', '2022-06-30 08:29:40'),
(9, 'Online kursus', 'Hidupku, ya aturanku.', '<p>selalu belajar dalam segala situasi<img src=\"../gambar/0f28b5d49b3020afeecd95b4009adf4c.jpg\" data-filename=\"0f28b5d49b3020afeecd95b4009adf4c.jpg\"></p>', '2022-06-30 08:22:37');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(50) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `judul`, `isi`, `tgl_isi`) VALUES
(1, 'Alamat', '<p>UPN Veteran Jawa Timur&nbsp;</p>', '2022-06-30 07:34:28'),
(2, 'Social', 'IG:<a class=\"oajrlxb2 g5ia77u1 qu0x051f esr5mh6w e9989ue4 r7d6kgcz rq0escxv nhd2j8a9 nc684nl6 p7hjln8o kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x jb3vyjys rz4wbd8a qt6c0cv9 a8nywdso i1ao9s8h esuyzwwr f1sip0of lzcic4wl _aak1 _a6hd\" href=\"https://www.instagram.com/muhammadhilmithabibi/\" role=\"link\" tabindex=\"0\" style=\"text-decoration-line: none; outline: none; list-style: none; border: 0px; padding: 0px; margin: 0px; touch-action: manipulation; display: inline; cursor: pointer; -webkit-tap-highlight-color: transparent; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: var(--font-weight-system-semibold); font-stretch: inherit; line-height: inherit; background-color: rgb(255, 255, 255);\" segoe=\"\" ui\",=\"\" roboto,=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" vertical-align:=\"\" baseline;=\"\" overflow-x:=\"\" hidden;=\"\" text-overflow:=\"\" ellipsis;=\"\" white-space:=\"\" nowrap;\"=\"\"><font color=\"#0000ff\">muhammadhilmithabibi</font></a>', '2022-06-30 07:38:53'),
(3, 'About', '<p><b>Yang paling terpecaya dalam menghadapi cobaan</b></p>', '2022-06-30 07:33:53'),
(4, 'Contact', '<p>Jalan Medokan Asri Barat gang No.3, Medokan Ayu, Rungkut (Medokan asri barat gang no lll -37, (No. MA.1E-33)) Masuk lewat gapura depan UPN Surabaya</p><p>No :082140654551</p>', '2022-06-30 07:37:47');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `status` text NOT NULL,
  `token_ganti_password` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `email`, `nama_lengkap`, `password`, `status`, `token_ganti_password`, `tgl_isi`) VALUES
(1, '20082010124@student.upnjatim.ac.id', 'latihan', '4832ab9df8aeaf0a765d2c20ebe8775b', 'e836d813fd184325132fca8edcdfb40e', '', '2022-06-30 07:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `isi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `nama`, `foto`, `isi`) VALUES
(1, 'UPN Veteran Jawa Timur', 'partners_1656573397_2240767858.png', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` int(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `isi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tutors`
--

INSERT INTO `tutors` (`id`, `nama`, `foto`, `isi`) VALUES
(1, 'hilmi', 'tutors_1656573331_Hilmi Tapas-min.jpg', '0000-00-00 00:00:00'),
(2, 'Alamsyah', 'tutors_1656574903_Capture.jpeg', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tutors`
--
ALTER TABLE `tutors`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
