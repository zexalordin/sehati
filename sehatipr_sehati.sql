-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 11, 2017 at 10:17 PM
-- Server version: 10.0.32-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sehatipr_sehati`
--
CREATE DATABASE IF NOT EXISTS `sehatipr_sehati` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sehatipr_sehati`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `email`) VALUES
(1, 'admin', '4bc95fd9c40a28776690d4506a7ccbd3', 'rizmedh@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul_artikel` varchar(100) NOT NULL,
  `isi_artikel` text NOT NULL,
  `photo_artikel` varchar(200) NOT NULL,
  `status_artikel` varchar(15) NOT NULL,
  `tanggal_artikel` date NOT NULL,
  `post_artikel` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul_artikel`, `isi_artikel`, `photo_artikel`, `status_artikel`, `tanggal_artikel`, `post_artikel`) VALUES
(10, 'Minggu ke 02', '<p><strong>Panjang / BB</strong></p>\n\n<p>Pada minggu ke empat, janin Bunda sudah sebesar biji wijen dengan panjang sekitar 2 mm</p>\n\n<p><strong>Perkembangan</strong></p>\n\n<ul>\n	<li>Hormon kehamilan hCG mulai berproduksi yang berfungsi menstimulasi pertumbuhan plasenta.</li>\n	<li>Cairan ketuban yang akan membuat si kecil nyaman selama 9 bulan ke depan juga mulai terbentuk</li>\n</ul>\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week2.jpg', 'bayiku', '2016-09-23', 2),
(11, 'minggu ke 03', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>Pada minggu ke empat, janin Bunda sudah sebesar biji wijen dengan panjang sekitar 2 mm</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Hormon kehamilan hCG mulai berproduksi yang berfungsi menstimulasi pertumbuhan plasenta.</li>\r\n	<li>Cairan ketuban yang akan membuat si kecil nyaman selama 9 bulan ke depan juga mulai terbentuk</li>\r\n</ul>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week3.jpg', 'bayiku', '2016-09-23', 3),
(12, 'Minggu ke 05', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<ul>\r\n	<li>Pada minggu kelima, janin Bunda berukuran sebesar biji wijen dengan panjang sekitar 2 &ndash; 5mm</li>\r\n	<li>Bentuknya menyerupai kecebong mungil</li>\r\n</ul>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<p>Pada tahap ini, janin Bunda bertumbuh dengan pesat di bagian dalam rahim. Apa saja yang terjadi?</p>\r\n\r\n<ul>\r\n	<li>Otak, tulang belakang, jaringan syaraf dan tulang punggung mulai terbentuk</li>\r\n	<li>Jantung dan sistem peredaran darah si kecil juga mulai terbentuk, begitu juga bilik-bilik jantungnya. Jantung sudah mulai berdenyut dan memompa darah</li>\r\n	<li>Plasenta dan tali pusat yang menyalurkan nutrisi dan oksigen untuk si kecil sudah berfungsi</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week5.jpg', 'bayiku', '2016-09-24', 5),
(13, 'Minggu ke 06', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>Si kecil kini sudah berukuran butir beras dengan panjang sekitar 6 mm dan berat 2 gram.</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Pada minggu ini hidung, mulut dan telinga si kecil mulai terbentuk, begitu juga dengan mata dan lubang hidungnya</li>\r\n	<li>Usus si kecil di dalam rahim juga mulai berkembang, begitu juga dengan jaringan yang akan membentuk paru-parunya</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week6.jpg', 'bayiku', '2016-09-24', 6),
(14, 'Minggu ke 04', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>Pada minggu ke empat, janin Bunda sudah sebesar biji wijen dengan panjang sekitar 2 mm</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Hormon kehamilan hCG mulai berproduksi yang berfungsi menstimulasi pertumbuhan plasenta.</li>\r\n	<li>Cairan ketuban yang akan membuat si kecil nyaman selama 9 bulan ke depan juga mulai terbentuk</li>\r\n</ul>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week4.jpg', 'bayiku', '2016-09-26', 4),
(5, 'Minggu ke 07', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<ul>\r\n	<li>Hai Bunda, di minggu ketujuh ini ukuran si kecil sudah sebesar buah blueberry.</li>\r\n	<li>Panjangnya sudah mencapai 10 mm dengan berat 0.5 gram.</li>\r\n</ul>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Pertumbuhan si kecil di dalam rahim sudah dua kali lipat minggu lalu.</li>\r\n	<li>Dua belahan otaknya semakin berkembang dan hatinya memproduksi sel darah merah hingga sum-sum tulang si kecil terbentuk dan mengambil alih fungsi ini.</li>\r\n	<li>Usus dan pancreas sudah mulai terbentuk yang nantinya akan berfungsi memproduksi hormon insulin untuk membantu proses pencernaan.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week7.jpg', 'bayiku', '2016-09-11', 7),
(9, 'Minggu ke 01', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>Pada minggu ke empat, janin Bunda sudah sebesar biji wijen dengan panjang sekitar 2 mm</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Hormon kehamilan hCG mulai berproduksi yang berfungsi menstimulasi pertumbuhan plasenta.</li>\r\n	<li>Cairan ketuban yang akan membuat si kecil nyaman selama 9 bulan ke depan juga mulai terbentuk</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week1.jpg', 'bayiku', '2016-09-15', 1),
(15, 'Minggu ke 01', '<p><strong>Tubuh</strong></p>\r\n\r\n<p>Pada tahap ini belum terlihat adanya perubahan pada bentuk fisik Bunda</p>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Pada minggu-minggu ini Bunda mulai dapat merasakan sejumlah perubahan, diantaranya:</p>\r\n\r\n<ul>\r\n	<li>Suasana hati dan libido mulai berubah. Sebagian besar terjadi penurunan libido</li>\r\n	<li>Biasanya Ibu mulai merasa sering lelah akibat perubahan hormon</li>\r\n	<li>Emosi mulai berfluktuasi. Dapat marah atau senang secara tiba-tiba.</li>\r\n</ul>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Pada umumnya Bunda mulai mengalami:</p>\r\n\r\n<ul>\r\n	<li>Morning sickness, mual atau muntah</li>\r\n	<li>Perubahan selera makan dan berat badan.</li>\r\n	<li>Peningkatan produksi hormon progesteron dan payudara mulai terasa lunak.</li>\r\n	<li>Perut belum terlihat membesar.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week4.jpg', 'kehamilanku', '2016-10-20', 1),
(16, 'Minggu ke 02', '<p><strong>Tubuh</strong></p>\r\n\r\n<p>Pada tahap ini belum terlihat adanya perubahan pada bentuk fisik Bunda</p>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Pada minggu-minggu ini Bunda mulai dapat merasakan sejumlah perubahan, diantaranya:</p>\r\n\r\n<ul>\r\n	<li>Suasana hati dan libido mulai berubah. Sebagian besar terjadi penurunan libido</li>\r\n	<li>Biasanya Ibu mulai merasa sering lelah akibat perubahan hormon</li>\r\n	<li>Emosi mulai berfluktuasi. Dapat marah atau senang secara tiba-tiba.</li>\r\n</ul>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Pada umumnya Bunda mulai mengalami:</p>\r\n\r\n<ul>\r\n	<li>Morning sickness, mual atau muntah</li>\r\n	<li>Perubahan selera makan dan berat badan.</li>\r\n	<li>Peningkatan produksi hormon progesteron dan payudara mulai terasa lunak.</li>\r\n	<li>Perut belum terlihat membesar.</li>\r\n</ul>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week4.jpg', 'kehamilanku', '2016-10-20', 2),
(17, 'Minggu ke 03', '<p><strong>Tubuh</strong></p>\r\n\r\n<p>Pada tahap ini belum terlihat adanya perubahan pada bentuk fisik Bunda</p>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Pada minggu-minggu ini Bunda mulai dapat merasakan sejumlah perubahan, diantaranya:</p>\r\n\r\n<ul>\r\n	<li>Suasana hati dan libido mulai berubah. Sebagian besar terjadi penurunan libido</li>\r\n	<li>Biasanya Ibu mulai merasa sering lelah akibat perubahan hormon</li>\r\n	<li>Emosi mulai berfluktuasi. Dapat marah atau senang secara tiba-tiba.</li>\r\n</ul>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Pada umumnya Bunda mulai mengalami:</p>\r\n\r\n<ul>\r\n	<li>Morning sickness, mual atau muntah</li>\r\n	<li>Perubahan selera makan dan berat badan.</li>\r\n	<li>Peningkatan produksi hormon progesteron dan payudara mulai terasa lunak.</li>\r\n	<li>Perut belum terlihat membesar.</li>\r\n</ul>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week4.jpg', 'kehamilanku', '2016-10-20', 3),
(19, 'Minggu ke 05', '<p><strong>Tubuh</strong></p>\r\n\r\n<p>Perubahan fisik Bunda belum terlihat.</p>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<ul>\r\n	<li>Suasana hati dan libido mulai berubah. Sebagian besar terjadi penurunan libido</li>\r\n	<li>Biasanya Ibu mulai merasa sering lelah akibat perubahan hormone</li>\r\n	<li>Emosi mulai berfluktuasi. Dapat marah atau senang secara tiba-tiba</li>\r\n</ul>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Pada umumnya Bunda mulai mengalami:</p>\r\n\r\n<ul>\r\n	<li>Morning sickness, mual atau muntah</li>\r\n	<li>Perubahan selera makan dan berat badan.</li>\r\n	<li>Peningkatan produksi hormon progesteron dan payudara mulai terasa lunak.</li>\r\n	<li>Perut belum terlihat membesar.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week5.jpg', 'kehamilanku', '2016-10-27', 5),
(18, 'Minggu ke 04', '<p><strong>Tubuh</strong></p>\r\n\r\n<p>Pada tahap ini belum terlihat adanya perubahan pada bentuk fisik Bunda</p>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Pada minggu-minggu ini Bunda mulai dapat merasakan sejumlah perubahan, diantaranya:</p>\r\n\r\n<ul>\r\n	<li>Suasana hati dan libido mulai berubah. Sebagian besar terjadi penurunan libido</li>\r\n	<li>Biasanya Ibu mulai merasa sering lelah akibat perubahan hormon</li>\r\n	<li>Emosi mulai berfluktuasi. Dapat marah atau senang secara tiba-tiba.</li>\r\n</ul>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Pada umumnya Bunda mulai mengalami:</p>\r\n\r\n<ul>\r\n	<li>Morning sickness, mual atau muntah</li>\r\n	<li>Perubahan selera makan dan berat badan.</li>\r\n	<li>Peningkatan produksi hormon progesteron dan payudara mulai terasa lunak.</li>\r\n	<li>Perut belum terlihat membesar.</li>\r\n</ul>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week4.jpg', 'kehamilanku', '2016-10-20', 4),
(30, 'Minggu ke 12', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>&ldquo;Hai Bunda dan Ayah, aku kini sudah berukuran sebesar jeruk nipis. Panjangku telah mencapai sekitar 5.4 cm dengan berat 14 gram.</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Bunda, pada tahap ini, kemampuan reflex si kecil sudah baik. Ia sudah dapat menggerakkan jari tangan dan kakinya, otot matanya sudah menguat.</li>\r\n	<li>&ldquo;Aku sudah bisa menggerakkan mulutku untuk menghisap&rdquo;</li>\r\n	<li>Usus si kecil tumbuh pesat dan mulai mengisi rongga perutnya dan ginjalnya mulai dapat mengeluarkan urin ke saluran kencing.</li>\r\n	<li>Mata dan telinga si kecil sudah berada pada tempat yang seharusnya.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week12.jpg', 'bayiku', '2016-10-27', 12),
(27, 'Minggu ke 10', '<p><strong>Tubuh</strong></p>\r\n\r\n<ul>\r\n	<li>Pada minggu ini Bunda akan merasakan meningkatnya rasa mual dan muntah karena produksi hormon HcG yang mencapai puncaknya</li>\r\n	<li>Payudara dan perut mulai membesar</li>\r\n</ul>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Peningkatan nafsu makan yang diiringi dengan penambahan berat badan dan perut yang sedikit membesar.</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Bunda akan mulai merasa begah karena ukuran tubuh dan payudara Bunda semakin membesar seiring dengan bertambahnya usia kehamilan</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week10.jpg', 'kehamilanku', '2016-10-27', 10),
(20, 'Minggu ke 06', '<p><strong>Tubuh</strong></p>\r\n\r\n<p>Walau perubahan fisik Bunda belum terlihat, namun umumnya tanda-tanda kehamilan lainnya mulai terlihat.</p>\r\n\r\n<p>Payudara Bunda mulai melunak dan terasa sakit</p>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Pada minggu-minggu ini Bunda mulai dapat merasakan sejumlah perubahan, diantaranya:</p>\r\n\r\n<ul>\r\n	<li>Suasana hati dan libido mulai berubah. Sebagian besar terjadi penurunan libido</li>\r\n	<li>Emosi mulai berfluktuasi. Dapat marah atau senang secara tiba-tiba.</li>\r\n</ul>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Pada umumnya Bunda mulai mengalami:</p>\r\n\r\n<ul>\r\n	<li>Sering buang air kecil dan cukup mengganggu tidur di malam hari. Hal ini dapat menyebabkan terjadi kecenderungan menurunnya tekanan tekanan darah Bunda</li>\r\n	<li>Pada beberapa ibu hamil, terlihat bercak darah pada celana dalam atau tissue setelah Bunda Buang Air Kecil. Walau hal ini bisa terjadi, tetapi dianjurkan untuk segera menghubungi dokter atau bidan Bunda karena dapat menjadi tanda adanya keguguran atau hamil di luar kandungan</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week6.jpg', 'kehamilanku', '2016-10-27', 6),
(21, 'Minggu ke 07', '<p><strong>Tubuh</strong></p>\r\n\r\n<p>Ukuran rahim Bunda sudah meningkat dua kali lipat dalam 5 minggu terakhir, walau secara kasat mata belum ada perubahan pada penampilan fisik Bunda</p>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Pada minggu ini, selain perubahan yang terjadi pada minggu-minggu sebelumnya, kemungkinan Bunda akan mengalami malas makan karena <em>morning sickness</em>.</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Umumnya Bunda akan mulai mengalami:</p>\r\n\r\n<ul>\r\n	<li>Nyeri pada payudara</li>\r\n	<li>Pembuluh darah mulai samar terlihat pada payudara.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week7.jpg', 'kehamilanku', '2016-10-27', 7),
(22, 'Minggu ke 08', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<ul>\r\n	<li>Si kecil kini sudah berukuran sebesar kacang merah dengan panjang mencapai 16 mm dan berat 0.8 gram</li>\r\n</ul>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Pada minggu ini, jari-jari berselaput mulai terbentuk di tangan dan kaki si kecil</li>\r\n	<li>Kelopak mata hampir menutup penuh mata dan</li>\r\n	<li>Sistem saraf dan sistem sirkuler juga mulai terbentuk.</li>\r\n	<li>Bunda masih belum bisa mengetahui jenis kelamin sang janin walau alat kelamin luar sudah mulai terbentuk.</li>\r\n</ul>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week8.jpg', 'bayiku', '2016-10-27', 8),
(23, 'Minggu ke 08', '<p><strong>Tubuh</strong></p>\r\n\r\n<p>Secara umum penampilan fisik Bunda belum berubah pada minggu ini. Namun payudara Bunda mulai membesar seiring perubahan hormonal yang terjadi</p>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Pada minggu ini, Bunda dapat mengalami hal berikut:</p>\r\n\r\n<ul>\r\n	<li>Suasana hati dan libido mulai berubah. Sebagian besar terjadi penurunan libido</li>\r\n	<li>Biasanya Ibu mulai merasa sering lelah akibat perubahan hormon</li>\r\n	<li>Emosi mulai berfluktuasi. Dapat marah atau senang secara tiba-tiba.</li>\r\n</ul>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<ul>\r\n	<li>Bunda dapat mengalami sembelit akibat gerakan peristaltik usus yang melambat sehingga kotoran / feses cenderung keras</li>\r\n	<li>Umumnya Bunda akan mulai merasa lelah karena meningkatnya produksi hormone progesteron dan sering buang air kecil</li>\r\n	<li>Rasa mual dan muntah juga kerap dirasakan pada tahap kehamilan ini ya Bun.</li>\r\n</ul>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week8.jpg', 'kehamilanku', '2016-10-27', 8),
(25, 'Minggu ke 09', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>Ukuran si kecil kini sebesar buah anggur dengan panjang antara 18 &ndash; 22 mm berat 2 gram</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Pada minggu ini, keempat bilik jantung si kecil sudah terbentuk.</li>\r\n	<li>Mata si kecil juga sudah terbentuk sempurna walau baru akan terbuka pada minggu ke-27</li>\r\n	<li>Pertumbuhan plasenta terus berlangsung dan sudah dapat memproduksi hormon</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week9.jpg', 'bayiku', '2016-10-27', 9),
(26, 'Minggu ke 10', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>Ukuran si kecil kini sebesar buah kumkuat dengan panjang sekitar 31 mm dan berat 4 gram.</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Pada minggu ini pertumbuhan jaringan dan organ tubuh si kecil berlangsung sangat cepat.</li>\r\n	<li>Semua organ penting internal seperti ginjal, usus, otak dan hati mulai berfungsi dan akan terus berkembang.</li>\r\n	<li>Selaput diantara jari tangan dan kaki sudah hilang dan kuku mulai tumbuh di jari-jari mungil si kecil</li>\r\n</ul>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week10.jpg', 'bayiku', '2016-10-27', 10),
(28, 'Minggu ke 11', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>Bunda, si kecil sudah berukuran sebesar buah ara pada minggu ini dengan panjang mencapai 4.1 cm dan berat 7 gram</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Si kecil sudah semakin terlihat menyerupai bayi.</li>\r\n	<li>Tak lama lagi si kecil sudah dapat mengepalkan tangannya, gigi geliginya mulai tumbuh dan beberapa tulangnya mulai mengeras.</li>\r\n	<li>Si kecil mulai sibuk menendang dan melakukan peregangan di perut walau mungkin baru dapat Bunda rasakan dalam 1 atau 2 bulan ke depan.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week11.jpg', 'bayiku', '2016-10-27', 11),
(29, 'Minggu ke 11', '<p><strong>Tubuh</strong></p>\r\n\r\n<p>Nah, rasa mual dan muntah yang Bunda rasakan mulai berkurang. Biasanya pada usia kehamilan ini para ibu hamil mulai merasakan peningkatan berat badan.</p>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Rasa mual dan muntah yang mulai berkurang membuat Bunda merasa lebih enak untuk makan dan sedikit lebih bertenaga</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Pada tahap kehamilan ini, beberapa keluhan ini biasanya kerap dirasakan oleh para ibu hamil:</p>\r\n\r\n<ul>\r\n	<li>Sembelit. Kondisi ini disebabkan oleh melambatnya gerakan peristaltik usus akibat perubahan hormon.</li>\r\n	<li>Rasa panas atau nyeri di uluhati akibat perubahan hormon yang menyebabkan melemahnya daya kerja katup di antara perut dan kerongkongan Bunda</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week11.jpg', 'kehamilanku', '2016-10-27', 11),
(31, 'Minggu ke 12', '<p><strong>Tubuh</strong></p>\r\n\r\n<ul>\r\n	<li>Perut Bunda sudah mulai terlihat membesar dan Bunda mulai dapat beradaptasi dengan perubahan hormonal.</li>\r\n	<li>Bunda juga mulai dapat merasakan heartburn (rasa nyeri dan panas yang terasa menjalar dari perut hingga ke kerongkongan.)</li>\r\n	<li>Rasa mual dan muntah mulai berkurang</li>\r\n</ul>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Bunda biasanya akan mengalami peningkatan nafsu makan dan ini dapat membuat Bunda merasa lebih bertenaga.</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Pada minggu ini Bunda umumnya masih merasakan sembelit</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week12.jpg', 'kehamilanku', '2016-10-27', 12),
(94, 'Minggu ke 13', '<p><strong>Tubuh</strong></p>\r\n\r\n<ul>\r\n	<li>Kini Bunda sudah memasuki Trimester Kedua</li>\r\n	<li>Perut dan payudara Bunda sudah terlihat membesar walau lebih lunak. Daerah puting susu cenderung lebih gelap dan Bunda sudah mulai memproduksi kolostrum.&nbsp;</li>\r\n</ul>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Bunda biasanya akan lebih ceria dan berenergi karena rasa mual mulai hilang sehingga makan menjadi lebih nikmat.</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Nikmati kehamilan pada minggu ini ya Bun, walau keluhan pada minggu lalu masih dapat terjadi.</p>\r\n\r\n<ul>\r\n	<li>Pada beberapa ibu hamil, mulai muncul linea atau garis gelap memanjang di sekitar perut mulai dari daerah sekitar kelamin hinga pusar karena meregangnya kulit.</li>\r\n	<li>Bagian leher mulai terlihat berwarna hitam semu.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week13.jpg', 'kehamilanku', '2016-11-01', 13),
(92, 'Minggu ke 13', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>Si kecil kini berukuran sebesar melanding atau edamame dengan panjang mencapai 7.4 cm dan berat sekitar 23-25 &nbsp;gram.</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Kini si sidik jari si kecil sudah mulai terbentuk</li>\r\n	<li>Pertumbuhan kepala si kecil meningkat pesat</li>\r\n	<li>Jika si kecil perempuan, maka sel telur sudah terbentuk di dalam ovarium si kecil.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week13.jpg', 'bayiku', '2016-11-01', 13),
(93, 'Minggu ke 14', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>&ldquo;Aku kini sudah sebesar buah lemon dengan panjang mencapai sekitar 8.5 cm dan berat hampir 43 gram.</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Si kecil kini sudah dapat memutar bola matanya, cemberut dan meringis, bahkan pipis dan menghisap ibu jarinya.&nbsp;</li>\r\n	<li>Ginjal si kecil sudah memproduksi air seni dan membuangnya di air ketuban yang mengelilinginya.</li>\r\n</ul>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week14.jpg', 'bayiku', '2016-11-01', 14),
(35, 'Minggu ke 14', '<p><strong>Tubuh</strong></p>\r\n\r\n<ul>\r\n	<li>Kini Bunda sudah memasuki Trimester Kedua</li>\r\n	<li>Perut dan payudara Bunda sudah terlihat membesar walau lebih lunak. Daerah puting susu cenderung lebih gelap dan Bunda sudah mulai memproduksi kolostrum.</li>\r\n</ul>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Bunda biasanya akan lebih ceria dan berenergi karena rasa mual mulai hilang sehingga makan menjadi lebih nikmat.</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Nikmati kehamilan pada minggu ini ya Bun, walau keluhan pada minggu lalu masih dapat terjadi.</p>\r\n\r\n<ul>\r\n	<li>Pada beberapa ibu hamil, mulai muncul linea atau garis gelap memanjang di sekitar perut mulai dari daerah sekitar kelamin hinga pusar karena meregangnya kulit.</li>\r\n	<li>Bagian leher mulai terlihat berwarna hitam semu.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week14.jpg', 'kehamilanku', '2016-10-27', 14),
(36, 'Minggu ke 15', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>Kini si kecil telah berukuran sebesar buah apel dengan panjang mencapai 10.1 cm dan berat hampir 70 gram</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Paru-paru si kecil mulai terbentuk dan kakinya kini tumbuh lebih panjang daripada lengannya serta sudah dapat menggerakkan persendiannya.</li>\r\n	<li>Walau belum dapat membuka kelopak matanya, si kecil sudah dapat merasakan cahaya.</li>\r\n	<li>Pada minggu ini, indera perasa si kecil sudah mulai terbentuk.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week15.jpg', 'bayiku', '2016-10-27', 15),
(37, 'Minggu ke 15', '<p><strong>Tubuh</strong></p>\r\n\r\n<p>Perut dan payudara Bunda sudah terlihat membesar walau lebih lunak. Daerah puting susu cenderung lebih gelap dan Bunda sudah mulai memproduksi kolostrum.</p>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Bunda lebih riang dan bersemangat dibandingkan dengan tiga bulan pertama setelah gejala awal kehamilan terlewati.</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Beberapa ibu hamil mengalami hidung berlendir dan mimisan pada usia kehamilan ini. Hal ini disebabkan karena perubahan hormon dan meningkatnya aliran darah ke selaput lendir di hidung.</p>\r\n\r\n<p>Sementara mimisan bisa disebabkan oleh bertambahnya volume darah dan melebarnya pembuluh darah di hidung.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week15.jpg', 'kehamilanku', '2016-10-27', 15),
(38, 'Minggu ke 16', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>&ldquo;Bunda, Ayah, aku kini sudah seukuran buah alpukat dengan panjang mencapai sekitar 10,6 - 12 cm dan berat 70 &ndash; 110.&rdquo;</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Beberapa minggu ke depan, pertumbuhan si kecil akan meningkat luar biasa.</li>\r\n	<li>Tulang si kecil memasuki fase pengerasan sehingga kaki kecil dan lengan sudah benar-benar terbentuk.</li>\r\n	<li>Kuku si kecil sudah tumbuh dan jantungnya sudah dapat memompa darah.</li>\r\n</ul>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week16.jpg', 'bayiku', '2016-10-27', 16),
(39, 'Minggu ke 16', '<p><strong>Tubuh</strong></p>\r\n\r\n<p>Pada minggu ini, Bunda dapat mengalami:</p>\r\n\r\n<ul>\r\n	<li>Sakit kepala akibat volume darah yang bertambah (kadang-kadang)</li>\r\n	<li>Pada kehamilan kedua, kadang mulai dapat dirasakan gerakan bayi</li>\r\n</ul>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Pada minggu ini perubahan mood Bunda, rasa mual dan pusing yang sebelumnya Bunda alami berkurang. Kulit Bunda yang umumnya semakin bercahaya akan membuat kehamilan Bunda lebih ceria.</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Bunda dapat mulai merasakan pegal-pegal atau agak nyeri di pinggang atau punggung. Kondisi ini umum dirasakan oleh ibu hamil karena panggung yang &nbsp;mengalami peregangan.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week16.jpg', 'kehamilanku', '2016-10-27', 16),
(40, 'Minggu ke 17', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>Si kecil saat ini sudah berukuran sebesar lobak dengan panjang mencapai 13 cm dan berat sekitar 150 gram.</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>&ldquo;Saat ini tulang rawan yang membentuk kerangka tubuhku telah berganti menjadi tulang yang keras.&rdquo;</li>\r\n	<li>Tali pusat si kecil juga sudah berkembang semakin kuat dan tebal. Selain itu kelenjar keringat si kecil sudah mulai terbentuk.&rdquo;&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week17.jpg', 'bayiku', '2016-10-27', 17),
(41, 'Minggu ke 17', '<p><strong>Tubuh</strong></p>\r\n\r\n<ul>\r\n	<li>Rahim yang terus berkembang membuat Bunda kemungkinan akan merasakan denyutan dan rasa nyeri yang disebabkan oleh peregangan ligamen dalam perut.</li>\r\n	<li>Pada minggu ini, perut Bunda yang semakin membesar membuat poros keseimbangan berubah. Pastikan Bunda menjaga keseimbangan agar tidak jatuh.</li>\r\n</ul>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Pada minggu ini perubahan mood Bunda, rasa mual dan pusing yang sebelumnya Bunda alami berkurang. Kulit Bunda yang umumnya semakin bercahaya akan membuat kehamilan Bunda lebih ceria.</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<ul>\r\n	<li>Bunda mungkin akan merasa mata Bunda lebih kering dari biasanya. Meneteskan obat tetes mata dapat membantu Bunda merasa lebih nyaman. Konsultasikan ke dokter kandungan Bunda ya Bun.</li>\r\n	<li>Jika Bunda memakai lensa kontak dan terasa semakin tidak nyaman, sebaiknya untuk sementara Bunda memakai kacamata terlebih dahulu.</li>\r\n</ul>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week17.jpg', 'kehamilanku', '2016-10-27', 17),
(42, 'Minggu ke 18', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>Hai Ayah dan Bunda, kini aku sudah sebesar paprika dengan panjang janin mencapai 14.2 cm dan berat sekitar 190 gram</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Si kecil saat ini sedang sibuk menggerakkan kaki dan lengannya.</li>\r\n	<li>Telinga si kecil sudah pada posisiyang seharusnya dan pendengaran bayi sudah mengalami perkembangan.</li>\r\n	<li>Jika si kecil perempuan, rahim dan tuba falopi-nya sudah terbentuk dan berada pada tempatnya.</li>\r\n	<li>Myelin yang merupakan lapisan pelindung saraf pada masa ini sedang diproduksi. Dan jika Bunda melakukan USG pada masa ini, makan kelainan struktural akan terdeteksi sebab tali pusat bayi Bunda sedang tumbuh untuk mendukung kebutuhan bagi dirinya sendiri.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week18.jpg', 'bayiku', '2016-10-27', 18),
(43, 'Minggu ke 18', '<p><strong>Tubuh</strong></p>\r\n\r\n<ul>\r\n	<li>Nafsu makan Bunda semakin meningkat dan mulai merasakan &ldquo;ngidam&rdquo;</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Sistem kardiovaskular Bunda mengalami perubahan berarti saat ini dan dapat membuat tekanan darah Bunda turun</li>\r\n</ul>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p><em>Mood</em> makan dan libido Bunda mulai stabil dibandingkan bulan-bulan sebelumnya. Pastikan Bunda mengkonsumsi makanan dan camilan yang kaya akan nutrisi ya Bun</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Pada umumnya kram, mual, pusing, lelah dan muntah sudah mulai menghilang.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week18.jpg', 'kehamilanku', '2016-10-27', 18),
(44, 'Minggu ke 19', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>Saat ini si kecil sudah berukuran sebesar buah tomat dengan panjang mencapai 13 - 15 cm dan berat berkisar 240 gram.</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Pertumbuhan si kecil sangat pesat pada minggu ini. Perkembangan otak si kecil memungkinkan bayi Bunda kini dapat mencium, merasa,mendengar, melihat dan meraba.</li>\r\n	<li>Lengan dan kaki sudah tampak lebih proposional</li>\r\n	<li>Wajah sudah terlihat jelas.</li>\r\n	<li>Bayi kecil Bunda sudah mulai terjaga walau hanya sekitar 6 jam sehari.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week19.jpg', 'bayiku', '2016-10-27', 19),
(45, 'Minggu ke 19', '<p><strong>Tubuh</strong></p>\r\n\r\n<ul>\r\n	<li>Bertambah besarnya perut Bunda membuat guratan di perut semakin terlihat jelas</li>\r\n	<li>Jangan digaruk ya Bunda. Cukup diusap saja agar tidak meninggalkan bekas.</li>\r\n</ul>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p><em>Mood</em> makan dan libido Bunda mulai stabil dibandingkan bulan-bulan sebelumnya.</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<ul>\r\n	<li>Kemungkinan Bunda akan sulit untuk tidur nyenyak akibat rasa panas dalam perut atau gangguan pencernaan.</li>\r\n	<li>Perut Bunda yang semakin membesar membuat Bunda kemungkinan akan merasakan nyeri di bagian bawah perut.</li>\r\n</ul>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week19.jpg', 'kehamilanku', '2016-10-27', 19),
(46, 'Minggu ke 20', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>&ldquo;Aku kini berukuran sebesar buah pisang dengan panjang mencapai 25.6 cm dengan berat sekitar 300 gram.&rdquo;</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Jika bayi Bunda laki-laki, testisnya mulai turun ke dalam skrotum.</li>\r\n	<li>Si kecil kini mulai sering melakukan gerakan menelan yang merupakan latihan baik untuk sistem pencernaannya</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week20.jpg', 'bayiku', '2016-10-27', 20),
(47, 'Minggu ke 20', '<p><strong>Tubuh</strong></p>\r\n\r\n<ul>\r\n	<li>Tubuh Bunda sudah semakin mekar dan perut Bunda membesar</li>\r\n	<li>Warna puting susu Bunda juga semakin gelap akibat meningkatnya kadar pigmen.</li>\r\n	<li>Pada tahap kehamilan ini tubuh Bunda membutuhkan tambahan asupan zat besi untuk mengimbangi kebutuhan peningkatan produksi volume darah</li>\r\n</ul>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p><em>Mood</em> makan dan libido Bunda mulai stabil dibandingkan bulan-bulan sebelumnya.</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Bunda kemungkinan akan sulit tidur nyenyak:</p>\r\n\r\n<ul>\r\n	<li>Jika karena gangguan pencernaan, cobalah untuk tidak makan lagi 2-3 jam sebelum tidur.</li>\r\n	<li>Tidur dengan posisi miring dan lutut tertekuk dengan bantal di antara dua kaki Bunda.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week20.jpg', 'kehamilanku', '2016-10-27', 20),
(48, 'Minggu ke 21', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>&ldquo;Aku sudah tumbuh menjadi sebesar wortel sekarang. Panjang dan berat badanku sekitar 27 cm dan 360 gram.&rdquo;</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Si kecil kini sudah mulai bergerak dinamis di dalam rahim Bunda. Perhatikan pola gerakannya ya Bun.</li>\r\n	<li>Kelopak mata dan alisnya sudah mulai terbentuk, begitu juga dengan alat kelaminnya jika si kecil perempuan.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week21.jpg', 'bayiku', '2016-10-27', 21),
(49, 'Minggu ke 21', '<p><strong>Tubuh</strong></p>\r\n\r\n<ul>\r\n	<li>Pada tahap ini, Bunda kemungkinan akan merasakan bagian lambung yang mulai terasa hangat karena rahim semakin membesar dan mulai mendesak lambung.</li>\r\n	<li>Bunda juga akan mengalami perubahan pada kulit dan rambut serta kemungkinan timbul jerawat serta noda di pipi.</li>\r\n</ul>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Pada tahap kehamilan ini Bunda umumnya sudah merasa lebih nyaman dan menikmati kehamilan karena ketidak-nyamanan yang timbul sebelumnya umumnya sudah hilang. Nafsu makan dan libido Bunda juga membaik.</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Umumnya kaki mulai bengkak, karena terlalu lama duduk dan pinggang serta pantat Bunda kadang terasa sakit karena posisi duduk yang salah (posisi tulang belakang tidak tegak/lurus)</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week21.jpg', 'kehamilanku', '2016-10-27', 21),
(50, 'Minggu ke 22', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>&ldquo;Hai Bunda dan Ayah di usiaku yang ke-22 minggu ini, panjangku sudah mencapai sekitar 27 cm dengan berat 430 gram dan berukuran sebesar labu mie.</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Si kecil sudah mulai terlihat seperti bayi. Kelopak mata, alis dan bibirnya sudah semakin terbentuk.</li>\r\n	<li>Pankreas si kecil yang memiliki fungsi penting memproduksi sejumlah hormon mulai terbentuk dan berkembang.</li>\r\n</ul>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week22.jpg', 'bayiku', '2016-10-27', 22),
(51, 'Minggu ke 22', '<p><strong>Tubuh</strong></p>\r\n\r\n<ul>\r\n	<li>Biasanya pada tahap kehamilan ini, kaki Bunda mengalami pembengkakkan dan kram karena terhambatnya peredaran darah.</li>\r\n	<li>Selain itu, stretch mark mulai terlihat di perut Bunda yang bertambah besar seiring usia kehamilan.</li>\r\n</ul>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Perut yang semakin menonjol seringkali membuat orang di sekitar kita ingin ikut merasakan kebahagiaan dengan mengusapnya. Jika Bunda</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Bunda kemungkinan akan mulai ngidam</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week22.jpg', 'kehamilanku', '2016-10-27', 22),
(52, 'Minggu ke 23', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>Pada minggu ke-23 si kecil sudah memiliki panjang sekitar 29 cm dengan berat 500 gram dan memiliki ukuran sebesar buah mangga.</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Kepekaan si kecil untuk merasakan gerakan sudah semakin sempurna. Begitu juga kemampuannya untuk mendengar apa yang terjadi di sekeliling Bunda</li>\r\n	<li>Selain itu, pembuluh di paru-paru si kecil sedang tumbuh berkembang untuk persiapan bernafas.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week23.jpg', 'bayiku', '2016-10-27', 23),
(53, 'Minggu ke 23', '<p><strong>Tubuh</strong></p>\r\n\r\n<ul>\r\n	<li>Bunda mengalami peningkatan produksi lendir vagina akibat meningkatnya aliran darah ke bagian tubuh.</li>\r\n	<li>Selain itu, Bunda juga akan merasakan keingin Buang Air Kecil yang lebih sering dari biasanya</li>\r\n</ul>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Nikmati <em>mood</em> makan dan libido Bunda yang mulai stabil ya Bun. Tetap makan sehat dan mesra dengan Ayah</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Pada tahap kehamilan ini Bunda kemungkinan sudah mulai mengalami bengkak pada kaki atau edema karena sirkulasi peredaran darah yang melemah di kaki Bunda</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week23.jpg', 'kehamilanku', '2016-10-27', 23),
(54, 'Minggu ke 24', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<ul>\r\n	<li>Si kecil saat ini sudah memiliki panjang mencapai 30 cm dengan berat sekitar 600 gram dan berukuran sebesar jagung</li>\r\n</ul>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Pertumbuhan otak si kecil berkembang dengan sangat pesat dan sensor pengecapnya mulai berkembang.</li>\r\n	<li>Paru-paru si kecil semakin tumbuh dan berkembang, mempersiapkannya untuk bernafas dengan baik saat lahir nanti.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week24.jpg', 'bayiku', '2016-10-27', 24),
(55, 'Minggu ke 24', '<p><strong>Tubuh</strong></p>\r\n\r\n<p>Bunda akan dapat merasakan gusi menjadi lebih sensitif karena produksi hormon kehamilan yang bisa membuat gusi membengkak, meradang, dan berdarah, khususnya saat menggosok atau membersihkan gigi.</p>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p><em>Mood</em> makan dan libido Bunda mulai stabil dibandingkan bulan-bulan sebelumnya.</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Pada tahap kehamilan ini Bunda dapat mengalami sulit tidur dan &nbsp;jumlah getah/cairan vagina yang bertambah kemungkinan dapat mengganggu Bunda</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week24.jpg', 'kehamilanku', '2016-10-27', 24),
(56, 'Minggu ke 25', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>&ldquo;Hai Bunda dan Ayah, di minggu ke-25 ini aku sudah sebesar buah papaya kecil dengan panjang sekitar 35 cm dan berat sekitar 660 gram.</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<p>&ldquo;Kulitku yang semula berkeriput, kini lebih halus. Aku juga sudah dapat mendengar suara yang akan disimpan di dalam memori primitive-ku.&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week25.jpg', 'bayiku', '2016-10-27', 25),
(57, 'Minggu ke 25', '<p><strong>Tubuh</strong></p>\r\n\r\n<ul>\r\n	<li>Pada tahap kehamilan ini Bunda dapat mengalami kontraksi, meskipun tidak sakit tapi perut akan terasa kaku.</li>\r\n	<li>Selain itu, perubahan hormon membuat rambut Bunda menjadi lebih lebat.</li>\r\n</ul>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p><em>Mood</em> makan dan libido Bunda mulai stabil dibandingkan bulan-bulan sebelumnya.</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<ul>\r\n	<li>Pada tahap kehamilan ini Bunda dapat mengalami sulit tidur dan&nbsp; jumlah getah/cairan vagina yang bertambah kemungkinan dapat mengganggu Bunda</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week25.jpg', 'kehamilanku', '2016-10-27', 25),
(58, 'Minggu ke 26', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>Kini si kecil sudah berukuran sebesar buah papaya dengan panjang sekitar 35,6 cm dan berat berkisar 760 gram.</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Jaringan syaraf di telinga bayi Bunda semakin berkembang dan peka. Putarkan music untuk si kecil ya Bun.</li>\r\n	<li>Si kecil mulai menghisap dan menghembuskan cairan ketuban sebagai caranya berlatih untuk bernafas saat lahir nanti.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week26.jpg', 'bayiku', '2016-10-27', 26),
(59, 'Minggu ke 26', '<p><strong>Tubuh</strong></p>\r\n\r\n<ul>\r\n	<li>Bunda kini kemungkinan akan mulai merasakan nyeri dan pegal di bagian pinggang dan persendian tulang belakang.</li>\r\n	<li>Nafas juga menjadi lebih pendek saat melakukan aktivitas yang agak berat</li>\r\n	<li>Tekanan darah Bunda juga dapat mengalami sedikit peningkatan.</li>\r\n</ul>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Pada tahap kehamilan ini Bunda mulai cemas dengan proses persalinan dan posisi serta berat bayi.</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<ul>\r\n	<li>Bunda mungkin mengalami sulit tidur</li>\r\n	<li>Jumlah getah/cairan vagina bertambah dan dapat mengganggu Bunda</li>\r\n	<li>Bunda mulai merasa nyeri dan pegal di bagian pinggang dan persendian tulang belakang.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week26.jpg', 'kehamilanku', '2016-10-27', 26),
(60, 'Minggu ke 27', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>&ldquo;Hai Ayah dan Bunda, kini aku sudah seukuran kembang kol. Beratku sekitar 875 gram dan panjangku sekitar 37 cm.&rdquo;</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>&ldquo;Aku sudah mulai bangun dan tidur secara teratur di dalam kandungan Bunda. Aku juga sudah bisa membuka dan menutup mataku serta menghisap jari.&rdquo;</li>\r\n	<li>Pertumbuhan jaringan otak si kecil meningkat dan kini sudah lebih sering bergerak.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week27.jpg', 'bayiku', '2016-10-27', 27),
(61, 'Minggu ke 27', '<p><strong>Tubuh</strong></p>\r\n\r\n<ul>\r\n	<li>Bunda mulai merasa gerah dan mudah berkeringat karena beban yang dikandung semakin besar.</li>\r\n	<li>Pada tahap kehamilan ini beberapa ibu hamil mengalami gejala anemia</li>\r\n</ul>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Pada tahap kehamilan ini Bunda mulai cemas dengan proses persalinan dan posisi serta berat bayi.</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<ul>\r\n	<li>Bunda kemungkinan mulai sulit tidur di malam hari karena umumnya di saat inilah bayi aktif bergerak.</li>\r\n	<li>Pada tahap ini, Bunda juga dapat mulai mengalami keram kaki.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week27.jpg', 'kehamilanku', '2016-10-27', 27),
(62, 'Minggu ke 28', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<ul>\r\n	<li>Pada minggu ini, si kecil sudah berukuran sebesar terong dengan panjang mencapai sekitar 38 cm dan berat sekitar 1000 gram.</li>\r\n</ul>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Mata si kecil sudah mulai terbuka dan dapat berkedip sehingga sudah dapat merasakan cahaya yang menembus ke rahim Bunda.</li>\r\n	<li>Miliaran neuron berkembang di otak si mungil begitu juga dengan lemak tubuhnya yang semakin bertambah.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week28.jpg', 'bayiku', '2016-10-27', 28),
(63, 'Minggu ke 28', '<p><strong>Tubuh</strong></p>\r\n\r\n<ul>\r\n	<li>Pada minggu ini Bunda dapat mengalami pembengkakan, tidak hanya pada kaki tetapi juga pada tangan.</li>\r\n</ul>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Naluri keibuan Bunda akan semakin kuat memasuki Trimester Ketiga ini. Itu sebabnya biasanya Bunda mulai cemas dengan proses persalinan dan posisi serta berat bayi karena Bunda ingin semuanya berjalan sehat dan baik.</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<ul>\r\n	<li>Bunda kemungkinan mulai sulit tidur di malam hari karena umumnya di saat inilah bayi aktif bergerak.</li>\r\n	<li>Pada tahap ini, Bunda juga dapat mulai mengalami keram kaki.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week28.jpg', 'kehamilanku', '2016-10-27', 28),
(65, 'Minggu ke 29', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<ul>\r\n	<li>Panjang si kecil pada minggu ini menjadi sekitar 39 cm dengan berat 1200 gram dan berukuran sebesar labu kuning.</li>\r\n</ul>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Otot dan paru-paru si kecil sudah semakin matang dan kepalanya membesar untuk memberikan ruang bagi otak tumbuh.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week29.jpg', 'bayiku', '2016-10-27', 29),
(66, 'Minggu ke 29', '<p><strong>Tubuh</strong></p>\r\n\r\n<p>Bunda mulai merasakan sering ingin buang air kecil, karena letak janin yang mulai membesar dan mendesak kandung kemih. Bunda juga menjadi lebih mudah capek dan lelah.</p>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Banyak ibu hamil merasakan kegembiraan karena si kecil yang mulai aktif menendang. Bunda dihimbau untuk mulai mengamati pola gerakan si kecil dengan cara menghitung tendangan. Konsultasikan dengan dokter atau bidan caranya ya Bun.</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<ul>\r\n	<li>Bunda kemungkinan mulai sulit tidur di malam hari karena umumnya di saat inilah bayi aktif bergerak.</li>\r\n	<li>Kemungkinan sembelit dan nyeri pada ulu hati kembali timbul, selain munculnya wasir yang disebabkan oleh membengkaknya pembuluh darah di daerah anus.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week29.jpg', 'kehamilanku', '2016-10-27', 29),
(67, 'Minggu ke 30', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>&ldquo;Hai Bunda dan Ayah, pada minggu ini panjangku telah mencapai sekitar 39 cm dengan berat sekitar 1300 gram dan ukuranku sudah sebesar kubis besar.&rdquo;</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<p>Otak si kecil berkembang semakin pesat serta daya lihatnya juga semakin berkembang.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week30.jpg', 'bayiku', '2016-10-27', 30),
(68, 'Minggu ke 30', '<p><strong>Tubuh</strong></p>\r\n\r\n<p>Pada minggu ini Bunda kemungkinan akan merasakan sakit pada punggung karena peregangan yang terjadi pada ligamen di seputar panggul untuk memudahkan proses kelahiran si kecil nanti.</p>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Perubahan mood yang terjadi pada Trimester Pertama dapat kembali muncul. Bunda juga dapat merasa menjadi lebih kikuk saat bergerak karena perubahan poros keseimbangan dan perubahan hormon.</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<ul>\r\n	<li>Bunda kemungkinan mulai sulit tidur di malam hari karena umumnya di saat inilah bayi aktif bergerak.</li>\r\n	<li>Kemungkinan sembelit dan nyeri pada ulu hati kembali timbul</li>\r\n	<li>Timbul rasa lelah</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week30.jpg', 'kehamilanku', '2016-10-27', 30),
(69, 'Minggu ke 31', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>Panjang si kecil sudah mencapai sekitar 41 cm dengan berat 1500 gram dan berukuran sebesar buah kelapa.</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<p>Si kecil semakin aktif bergerak dan sudah dapat menggerakkan kepalanya ke kiri dan kanan. Tulangnya semakin mengeras dan siap mendukung saat proses persalinan nanti</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week31.jpg', 'bayiku', '2016-10-27', 31),
(70, 'Minggu ke 31', '<p><strong>Tubuh</strong></p>\r\n\r\n<ul>\r\n	<li>Pada tahap ini Bunda dapat mengalami kesulitan untuk tidur nyenyak karena perut yang semakin membesar sehingga sulit mencari posisi tidur yang nyaman.</li>\r\n	<li>Selain itu, biasanya frekuensi Buang Air Kecil Bunda semakin sering karena tekanan pada kandung kemih. &nbsp;</li>\r\n	<li>Kelenjar susu Bunda kemungkinan juga telah mulai memproduksi kolustrum</li>\r\n</ul>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<ul>\r\n	<li>Semakin mendekati hari H kelahiran, merupakan hal yang normal jika Bunda mulai cemas dengan proses persalinan</li>\r\n	<li>Suasana hati kembali dapat berubah dengan cepat pada minggu ini</li>\r\n</ul>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Bunda kemungkinan mulai sulit tidur di malam hari karena umumnya di saat inilah bayi aktif bergerak.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week31.jpg', 'kehamilanku', '2016-10-27', 31),
(71, 'Minggu ke 32', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>Si kecil saat ini berukuran sebesar bengkuang besar dengan panjang sekitar 42 cm dan berat berkisar 1700 gram.</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Si kecil sedang sibuk berlatih pernapasan, meraih apa yang ada di jangkauannya, mencicipi cairan ketuban dan mendengarkan suara Bunda dan Ayah.</li>\r\n	<li>Kuku pada jemari si kecil sudah tumbuh, begitu juga rambut di kepalanya.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week32.jpg', 'bayiku', '2016-10-27', 32),
(72, 'Minggu ke 32', '<p><strong>Tubuh</strong></p>\r\n\r\n<ul>\r\n	<li>Pada minggu ini Bunda dapat mengalami sembelit karena proses pencernaan yang terganggu.</li>\r\n	<li>Keseimbangan Bunda kemungkinan juga terganggu karena perubahan pada poros keseimbangan tubuh Bunda.</li>\r\n</ul>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Semakin mendekati kelahiran si kecil, beberapa ibu hamil merasakan kecemasan karena posisi dan berat bayi dan kemungkinan tidak dapat melahirkan dengan normal.</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Pada minggu ini beberapa keluhan yang kemungkinan akan dirasakan adalah:</p>\r\n\r\n<ul>\r\n	<li>Cepat lelah</li>\r\n	<li>Sulit tidur</li>\r\n	<li>Nyeri akibat gerakan bayi</li>\r\n	<li>Kaki bengkak.</li>\r\n	<li>Sesak nafas</li>\r\n	<li>Nyeri pada ulu hati</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week32.jpg', 'kehamilanku', '2016-10-27', 32),
(73, 'Minggu ke 33', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>&ldquo;Hai Bunda dan Ayah, ukuran aku sekarang sudah sebesar buah nanas dengan panjang mencapai sekitar 44 cm dan berat 1700 gram.</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<p>&ldquo;Tulang-tulangku semakin mengeras dan aku sudah mulai dapat mengendalikan pernapasan, fungsi pencernaan serta suhu tubuh dan membedakan siang dan malam.&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week33.jpg', 'bayiku', '2016-10-27', 33);
INSERT INTO `artikel` (`id_artikel`, `judul_artikel`, `isi_artikel`, `photo_artikel`, `status_artikel`, `tanggal_artikel`, `post_artikel`) VALUES
(74, 'Minggu ke 33', '<p><strong>Tubuh</strong></p>\r\n\r\n<ul>\r\n	<li>Pada tahap kehamilan ini Bunda dapat mengalami sakit punggung akibat peregangan otot.</li>\r\n	<li>Bunda juga akan semakin merasakan gerakan si kecil karena si kecil kini hampir mengisi seluruh ruang rahim Bunda.</li>\r\n</ul>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<ul>\r\n	<li>Pada minggu ini Ayah pasti melihat Bunda semakin menarik.</li>\r\n	<li>Rasa cemas karena posisi dan berat bayi serta kemungkinan tidak dapat melahirkan dengan normal masih sering dirasakan</li>\r\n</ul>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Pada minggu ini beberapa keluhan yang kemungkinan akan dirasakan adalah:</p>\r\n\r\n<ul>\r\n	<li>Cepat lelah</li>\r\n	<li>Sulit tidur</li>\r\n	<li>Nyeri akibat gerakan bayi</li>\r\n	<li>Kaki bengkak.</li>\r\n	<li>Sesak nafas</li>\r\n	<li>Nyeri pada ulu hati</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week33.jpg', 'kehamilanku', '2016-10-27', 33),
(75, 'Minggu ke 34', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>Panjang si kecil pada minggu ini sudah mencapai 45 cm dengan berat badan berkisar 2100 gram dan berukuran sebesar buah melon.</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Sistem kekebalan tubuh si kecil mulai terbangun untuk melawan infeksi. Perkembangan sistem syaraf pusatnya juga semakin matang begitu juga paru-parunya.</li>\r\n	<li>Pada usia kehamilan ini, jika si kecil harus lahir prematur, umumnya keadaannya akan baik selama tidak ada kelainan atau gangguan apapun</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week34.jpg', 'bayiku', '2016-10-27', 34),
(76, 'Minggu ke 34', '<p><strong>Tubuh</strong></p>\r\n\r\n<ul>\r\n	<li>Pada tahap kehamilan ini rahim Bunda mengeras dan berkontraksi sebagai persiapan untuk melahirkan.</li>\r\n	<li>Panggul Bunda juga cenderung melebar dan mungkin akan timbul rasa sakit, terutama di bagian belakang tubuh.</li>\r\n	<li>Pusar Bunda akan menonjol karena perut meregang dan ini umumnya akan meningkatkan pigmentasi pada linea nigra.</li>\r\n	<li>Beberapa ibu hamil dapat mengalami kadar hemoglobin yang rendah pada tahap kehamilan ini.</li>\r\n</ul>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Walau rasa cemas timbul mendekati saat kelahiran, tetap berpikir positif karena Bunda sebaiknya menabung energi untuk proses kelahiran nanti.</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Bunda akan mengalami cepat lelah dan keinginan untuk Buang Air Kecil yang semakin sering.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week34.jpg', 'kehamilanku', '2016-10-27', 34),
(77, 'Minggu ke 35', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>&ldquo;Hai Bunda dan Ayah, saat ini aku sudah berukuran sebesar buah melon dengan panjang mencapai sekitar 46 cm dan berat berkisar 2400 gram.</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<p>&ldquo;Ginjalku sudah berkembang sempurna dan hati aku sudah mulai berfungsi. Pertumbuhan organ tubuhku sudah lengkap dan aku akan semakin bertambah berat beberapa minggu ke depan ini.&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week35.jpg', 'bayiku', '2016-10-27', 35),
(78, 'Minggu ke 35', '<p><strong>Tubuh</strong></p>\r\n\r\n<p>Rahim Bunda kini sudah semakin besar dan berkembang hingga berada di bawah tulang rusuk Bunda. Cairan ketuban semakin sedikit karena si kecil kini mendominasi hampir seluruh ruang rahim.</p>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Bunda semakin sulit tidur karena mengalami kecemasan yang kadang tidak beralasan. Jaga kesehatan dan energi Bunda ya.</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<ul>\r\n	<li>Rahim Bunda yang semakin membesar dapat membuat Bunda merasakan heartburn.</li>\r\n	<li>Bunda juga dapat mengalami nyeri atau denyut pada pinggul, bokong, atau panggul selama minggu-minggu terakhir kehamilan.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week35.jpg', 'kehamilanku', '2016-10-27', 35),
(79, 'Minggu ke 36', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>Si kecil saat ini sudah berukuran sebesar sebonggol selada dengan panjang mencapai sekitar 47.4 cm dan berat badan berkisar 2400 gram.</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<p>Umumnya pada minggu ini posisi kepala si kecil sudah berada di bawah</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week36.jpg', 'bayiku', '2016-10-27', 36),
(80, 'Minggu ke 36', '<p><strong>Tubuh</strong></p>\r\n\r\n<p>Bunda mulai merasakan peningkatan tekanan di perut bagian bawah karena si kecil perlahan mulai turun. Hal ini menyebabkan frekuensi buang air kecil semakin meningkat, tetapi rasa nyeri <em>heartburn</em> berkurang.</p>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Bunda semakin sulit tidur karena mengalami kecemasan yang kadang tidak beralasan. Jaga kesehatan dan energi Bunda ya.</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Kemungkinan Bunda akan kesulitan untuk makan dalam porsi normal karena ukuran si kecil yang semakin besar di rahim. Makan dalam porsi lebih kecil dengan frekuensi lebih banyak sangat dianjurkan</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week36.jpg', 'kehamilanku', '2016-10-27', 36),
(81, 'Minggu ke 37', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>Panjang si kecil pada minggu ini sudah mencapai sekitar 48.6 cm dan berat badannya berkisar 2900 gram dengan ukuran sebesar buah semangka kecil</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Di minggu ke-37 ini si kecil sudah dapat dikatakan cukup bulan dan akan menghabiskan 2 minggu ke depan menyempurnakan pertumbuhan otak dan paru-parunya.</li>\r\n	<li>Posisi kepala &nbsp;si kecil biasanya sudah di bawah namun masih bisa berubah ke kanan atau ke kiri.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week37.jpg', 'bayiku', '2016-10-27', 37),
(82, 'Minggu ke 37', '<p><strong>Tubuh</strong></p>\r\n\r\n<p>Kulit di bagian perut &nbsp;Bunda akan semakin gatal, tapi sebaiknya jangan digaruk dan cukup diusap krim, losion, minyak zaitun atau baby oil saja ya Bunda.</p>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Tetap semangat dan berpikir positif ya Bunda walau timbul rasa cemas karena kekhawatiran tidak dapat melahirkan dengan normal.</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Dengan semakin matangnya usia kehamilan Bunda, dapat timbul rasa nyeri karena kontraksi</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week37.jpg', 'kehamilanku', '2016-10-27', 37),
(83, 'Minggu ke 38', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>Panjang si kecil kini sekitar 49 cm dengan berat kira-kira 2900 gram dan berukuran sebesar buah semangka kecil.</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Seluruh organ tubuh si kecil telah berkembang sempurna.</li>\r\n	<li>Tulangnya mulai padat, walau sebenarnya tulang si kecil tetap lunak untuk memudahkan ia melalui jalan lahir saat persalinan.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week38.jpg', 'bayiku', '2016-10-27', 38),
(84, 'Minggu ke 38', '<p><strong>Tubuh</strong></p>\r\n\r\n<p>Kontraksi akan semakin sering dirasakan oleh Bunda pada minggu ini.</p>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Untuk menghalau rasa cemas, Bunda dan Ayah dapat berkonsentrasi untuk hal-hal lain yang menyenangkan seperti menyiapkan kamar si kecil, menyiapkan rumah agar aman untuk si kecil.</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Bunda akan semakin sering merasakan kontraksi, dan karenanya dapat timbul rasa nyeri</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week38.jpg', 'kehamilanku', '2016-10-27', 38),
(85, 'Minggu ke 39', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>Panjang si kecil pada minggu ke-39 ini telah mencapai 50.7 cm dan berat badannya berkisar 3300 gram. Kini si kecil berukuran sebesar buah semangka kecil</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<ul>\r\n	<li>Si kecil sudah siap menyapa dunia. Seluruh organ tubuhnya sudah siap dan berfungsi sempurna.</li>\r\n	<li>Sistem pencernaannya sudah mampu mencerna makanan cair dan si kecil juga sudah sibuk buang air kecil secara berkala.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week39.jpg', 'bayiku', '2016-10-27', 39),
(86, 'Minggu ke 39', '<p><strong>Tubuh</strong></p>\r\n\r\n<p>Dalam minggu-minggu terakhir ini, tubuh Bunda yang semakin membesar membuat Bunda merasa tidak nyaman bergerak dan tidur</p>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Rasa cemas yang Bunda rasakan saat ini umumnya berasal dari kekhawatiran mengapa si kecil belum kunjung lahir.</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Bunda dapat merasakan nyeri dari kontraksi yang timbul menjelang kelahiran si kecil.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week39.jpg', 'kehamilanku', '2016-10-27', 39),
(87, 'Minggu ke 40', '<p><strong>Panjang / BB</strong></p>\r\n\r\n<p>Panjang si kecil dapat mencapai sekitar 51 cm dan berat badannya berkisar 3500 gram.</p>\r\n\r\n<p><strong>Perkembangan</strong></p>\r\n\r\n<p>Aku sudah siap menyapa Dunia.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_bayiku/thumb_week40.jpg', 'bayiku', '2016-10-27', 40),
(88, 'Minggu ke 40', '<p><strong>Tubuh</strong></p>\r\n\r\n<ul>\r\n	<li>Bunda semakin sulit tidur nyenyak di malam hari, perut yang besar membuat semakin tidak nyaman.</li>\r\n</ul>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Dapat timbul rasa cemas karena bayi belum lahir</p>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Dapat timbul rasa nyeri karena kontraksi.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week40.jpg', 'kehamilanku', '2016-10-27', 40),
(89, 'Minggu ke 09', '<p><strong>Tubuh</strong></p>\r\n\r\n<ul>\r\n	<li>Pada minggu ini Bunda akan merasakan meningkatnya rasa mual dan muntah karena produksi hormon HcG yang mencapai puncaknya</li>\r\n	<li>Payudara dan perut mulai membesar</li>\r\n</ul>\r\n\r\n<p><strong>Mood</strong></p>\r\n\r\n<p>Pada minggu ini Bunda dapat mengalami hal-hal sebagai berikut</p>\r\n\r\n<ul>\r\n	<li>Suasana hati dan libido mulai berubah. Sebagian besar terjadi penurunan libido</li>\r\n	<li>Biasanya Bunda mulai merasa sering lelah akibat perubahan hormon</li>\r\n	<li>Emosi mulai berfluktuasi. Dapat marah atau senang secara tiba-tiba.</li>\r\n</ul>\r\n\r\n<p><strong>Keluhan</strong></p>\r\n\r\n<p>Bunda dapat mengalami sembelit akibat gerakan peristaltik usus yang melambat sehingga kotoran / feses cenderung keras</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/post_kehamilan/thumb_week9.jpg', 'kehamilanku', '2016-10-27', 9);

-- --------------------------------------------------------

--
-- Table structure for table `barang_belanja`
--

CREATE TABLE `barang_belanja` (
  `id_barang_belanja` int(11) NOT NULL,
  `nama_barang_belanja` varchar(50) NOT NULL,
  `merk_barang_belanja` varchar(50) NOT NULL,
  `detail_barang_belanja` text NOT NULL,
  `fitur_barang_belanja` text NOT NULL,
  `spesifikasi_barang_belanja` text NOT NULL,
  `harga_barang_belanja` int(11) NOT NULL,
  `id_kategori_barang_statis` int(11) NOT NULL,
  `photo1_barang_belanja` varchar(200) DEFAULT NULL,
  `photo2_barang_belanja` varchar(200) DEFAULT NULL,
  `photo3_barang_belanja` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_belanja`
--

INSERT INTO `barang_belanja` (`id_barang_belanja`, `nama_barang_belanja`, `merk_barang_belanja`, `detail_barang_belanja`, `fitur_barang_belanja`, `spesifikasi_barang_belanja`, `harga_barang_belanja`, `id_kategori_barang_statis`, `photo1_barang_belanja`, `photo2_barang_belanja`, `photo3_barang_belanja`) VALUES
(30, 'Waslap', '', '<p>Seperti handuk, pilihlah waslap dari bahan yang lembut dan mudah menyerap</p>\r\n', '', '', 0, 20, '', '', ''),
(31, 'Losion Bayi', '', '', '', '', 0, 20, '', '', ''),
(29, 'Sabun Bayi', '', '<p>Disarankan untuk memilih sabun bayi yang tidak pedih di mata, dengan kandungan soda sabun yang rendah. Diskusikan dengan dokter anak Bunda, khususnya jika si kecil memiliki alergi tertentu.</p>\r\n', '', '', 0, 20, '', '', ''),
(28, 'Handuk', '', '<p>Disarankan untuk memilih handuk yang terbuat dari bahan yang lembut, mudah menyerap dan dilengkapi tutup kepala.</p>\r\n', '', '', 0, 20, '', '', ''),
(32, 'Sampo Bayi', '', '', '', 'Pilihlah sampo bayi yang tidak pedih di mata ya Bun.', 0, 20, '', '', ''),
(33, 'Deterjen cuci khusus untuk bayi', '', '<p>Supaya lebih aman, pilihlah deterjen yang diperuntukkan khusus untuk bayi. Biasanya deterjen jenis ini akan memiliki kadar sabun, pewangi dan pelembut yang sesuai untuk si kecil. Pemakaian kapur barus sangat tidak disarankan untuk perlengkapan si kecil.</p>\r\n', '', '', 0, 20, '', '', ''),
(34, 'Termometer', '', '<p>untuk mengukur suhu air mandi</p>\r\n', '', '', 0, 20, '', '', ''),
(35, 'Mainan', '', '<p>untuk menemani si kecil mandi (biasanya terbuat dari karet)</p>\r\n', '', '', 0, 20, '', '', ''),
(36, 'Sikat / Sisir rambut lembut', '', '', '', '', 0, 20, '', '', ''),
(37, 'Kapas', '', '', '', '', 0, 20, '', '', ''),
(38, 'Nasal Aspirator', '', '', '', '', 0, 20, '', '', ''),
(39, 'Gunting Kuku Bayi', '', '', '', '', 0, 20, '', '', ''),
(40, 'Busa Mandi Lembut', '', '', '', '', 0, 20, '', '', ''),
(41, 'Bak Mandi Bayi', '', '', '', '', 0, 20, '', '', ''),
(42, 'Bra Menyusui', '', '', '', '', 0, 21, '', '', ''),
(43, 'Tatakan iler', '', '', '', '', 0, 21, '', '', ''),
(44, 'Bantalan penyerap ASI atau breast pads (sekali pak', '', '', '', '', 0, 21, '', '', ''),
(45, 'Tas Penyimpanan Perasan ASI', '', '', '', '', 0, 21, '', '', ''),
(46, 'Pompa ASI', '', '', '', '', 0, 21, '', '', ''),
(47, 'Gelas untuk Memberi ASI', '', '', '', '', 0, 21, '', '', ''),
(48, 'Bantal menyusui untuk bayi Bunda', '', '', '', '', 0, 21, '', '', ''),
(49, 'Baju dengan kancing/bukaan depan untuk memudahkan ', '', '', '', '', 0, 21, '', '', ''),
(50, 'Krim untuk putting susu yang lecet', '', '', '', '', 0, 21, '', '', ''),
(51, 'Kapas', '', '', '', '', 0, 21, '', '', ''),
(52, 'Gendongan untuk menyusui', '', '', '', '', 0, 21, '', '', ''),
(53, 'Tatakan iler', '', '', '', '', 0, 22, '', '', ''),
(54, 'Dot', '', '', '', '', 0, 22, '', '', ''),
(55, 'Botol Susu', '', '', '', '', 0, 22, '', '', ''),
(56, 'Susu bubuk bayi', '', '<p>Diskusikan dengan dokter anak Bunda ya</p>\r\n', '', '', 0, 22, '', '', ''),
(57, 'Sikat botol bayi', '', '', '', '', 0, 22, '', '', ''),
(58, 'Penghangat botol', '', '', '', '', 0, 22, '', '', ''),
(59, 'Perlengkapan steril botol susu', '', '', '', '', 0, 22, '', '', ''),
(60, 'Losion Bayi', '', '', '', '', 0, 23, '', '', ''),
(61, 'Tisu Basah (anti alergi dan bebas wangi, khusus un', '', '', '', '', 0, 23, '', '', ''),
(62, 'Perlak', '', '', '', '', 0, 23, '', '', ''),
(63, 'Matras', '', '', '', '', 0, 23, '', '', ''),
(64, 'Kapas', '', '', '', '', 0, 23, '', '', ''),
(65, 'Wadah untuk air', '', '', '', '', 0, 23, '', '', ''),
(66, 'Krim Anti Ruam', '', '', '', '', 0, 23, '', '', ''),
(67, 'Popok atau Diaper', '', '', '', '', 0, 23, '', '', ''),
(68, 'Pengait untuk popok atau celana plastik', '', '<p>untuk dikenakan di luar popok</p>\r\n', '', '', 0, 21, '', '', ''),
(69, 'Waslap', '', '', '', '', 0, 23, '', '', ''),
(70, 'Baju Hangat', '', '', '', '', 0, 24, '', '', ''),
(71, 'Sarung Tangan', '', '', '', '', 0, 24, '', '', ''),
(72, 'Topi Bayi', '', '', '', '', 0, 24, '', '', ''),
(73, 'Bedong Bayi', '', '', '', '', 0, 24, '', '', ''),
(74, 'Kaos Lengan Pendek', '', '', '', '', 0, 24, '', '', ''),
(75, 'Kaos Lengan Panjang', '', '', '', '', 0, 24, '', '', ''),
(76, 'Kaos Kaki Bayi', '', '', '', '', 0, 24, '', '', ''),
(77, 'Celana Bayi', '', '', '', '', 0, 24, '', '', ''),
(78, 'Kelambu', '', '', '', '', 0, 25, '', '', ''),
(79, 'Meja ganti popok', '', '', '', '', 0, 25, '', '', ''),
(80, 'Boks bayi', '', '', '', '', 0, 25, '', '', ''),
(81, 'Matras bayi', '', '', '', '', 0, 25, '', '', ''),
(82, 'Kursi makan bayi', '', '', '', '', 0, 25, '', '', ''),
(83, 'Perlengkapan makan bayi ', '', '<p>(mangkuk, sendok, garpu, gelas, dll)</p>\r\n', '', '', 0, 25, '', '', ''),
(84, 'Ayunan bayi', '', '', '', '', 0, 25, '', '', ''),
(85, 'Seprai dan perlengkapan tidur', '', '', '', '', 0, 25, '', '', ''),
(86, 'Selimut', '', '', '', '', 0, 25, '', '', ''),
(87, 'Buaian', '', '', '', '', 0, 25, '', '', ''),
(88, 'Perlak', '', '', '', '', 0, 25, '', '', ''),
(89, 'Monitor bayi', '', '', '', '', 0, 26, '', '', ''),
(90, 'Sabun bebas kuman', '', '', '', '', 0, 26, '', '', ''),
(91, 'Termometer', '', '', '', '', 0, 26, '', '', ''),
(92, 'Pagar pengaman', '', '', '', '', 0, 26, '', '', ''),
(93, 'Perlengkapan untuk keamanan bayi di rumah', '', '<p>seperti&nbsp;karet pengaman untuk siku meja, pengaman colokan listrik, dll)</p>\r\n', '', '', 0, 26, '', '', ''),
(94, 'Buku bayi dari bahan kain atau kertas/plastik lemb', '', '', '', '', 0, 27, '', '', ''),
(95, 'Mainan untuk menemani si kecil mandi', '', '', '', '', 0, 27, '', '', ''),
(96, 'Empeng bayi', '', '', '', '', 0, 27, '', '', ''),
(97, 'Mainan untuk si kecil', '', '<p>kicrikan, boneka atau benda yang nyaman untuk dipeluk, mainan berputar untuk digantung di atas tempat tidur si kecil, mainan untuk di kereta dorong bayi, dll</p>\r\n', '', '', 0, 27, '', '', ''),
(98, 'Karpet bermain khusus untuk bayi (activity mat)', '', '', '', '', 0, 27, '', '', ''),
(99, 'Gendongan bayi', '', '', '', '', 0, 28, '', '', ''),
(100, 'Tempat duduk bayi untuk di mobil', '', '', '', '', 0, 28, '', '', ''),
(101, 'Kereta dorong bayi', '', '', '', '', 0, 28, '', '', ''),
(102, 'Tas dengan banyak kantung untuk digantungkan di be', '', '', '', '', 0, 28, '', '', ''),
(103, 'Tas popok', '', '', '', '', 0, 28, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bidan`
--

CREATE TABLE `bidan` (
  `id_bidan` int(11) NOT NULL,
  `no_induk` varchar(50) NOT NULL,
  `nama_bidan` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `alamat_praktek` varchar(50) NOT NULL,
  `kota_bidan` varchar(30) NOT NULL,
  `propinsi_bidan` varchar(30) NOT NULL,
  `kode_pos_bidan` varchar(10) NOT NULL,
  `kontak_bidan` varchar(15) NOT NULL,
  `kode_verifikasi` varchar(6) NOT NULL,
  `foto_ktp_kipb` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bidan`
--

INSERT INTO `bidan` (`id_bidan`, `no_induk`, `nama_bidan`, `password`, `alamat_praktek`, `kota_bidan`, `propinsi_bidan`, `kode_pos_bidan`, `kontak_bidan`, `kode_verifikasi`, `foto_ktp_kipb`) VALUES
(8, '111', 'test bidan', '202cb962ac59075b964b07152d234b70', 'jalan jalan', 'malang', 'jawa timur', '62115', '01111', '', 'http://sehati-project.net/uploads/bidan/thumb_7.jpg'),
(9, '123', 'asdsad', '202cb962ac59075b964b07152d234b70', 'ada', 'malang', 'jawa timur', '62115', '123', '', 'http://sehati-project.net/uploads/bidan/thumb_debby-red.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id_faq` int(11) NOT NULL,
  `judul_faq` varchar(100) NOT NULL,
  `detail_faq` text NOT NULL,
  `post_faq` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id_faq`, `judul_faq`, `detail_faq`, `post_faq`) VALUES
(1, 'Apa pentingnya susu bayi bagi pertumbuhan janin ?', '<p>Penting bla bla bla bla lba <strong>bala bala am lasba bala....</strong></p>\r\n', 4),
(31, 'Alat test pack apa yang bagus?', '<p>Semua yang memiliki standar pemerintah mempunyai akurasi yang baik</p>\r\n', 2),
(5, 'Kenapa sulit tidur?', '<ul>\r\n	<li>Biasanya Bunda sulit tidur nyenyak karena posisi tidur tidak nyaman, bolak-balik ke kamar mandi, keram kaki, atau gelisah dan bersemangat menyambut kehadiran bayi.</li>\r\n	<li>Apa yang dapat Bunda lakukan?\r\n	<ul>\r\n		<li>Lakukan hal yang dapat membuat Bunda merasa tenang dan rileks: mandi air hangat, minum teh hangat, minta ayah untuk memijat kaki Bunda.</li>\r\n		<li>Pastikan kamar tidur Bunda sudah membuat Bunda nyaman untuk tidur</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n', 21),
(6, 'Boleh makan yang pedas-pedas?', '<p>Boleh. Makanan pedas tidak membahayakan bayi Bunda, hanya saja bisa membuat Bunda tidak nyaman karena dapat menimbulkan gangguan pencernaan, mulas dan asam lambung. Jika gangguan ini timbul, Bunda dapat mencoba minum segelas susu &nbsp;atau satu sendok makan madu.</p>\r\n', 22),
(7, 'Kenapa sering merasa kembung?', '<p>Umumnya hal ini disebabkan oleh meningkatnya kadar hormon progesterone. Pada kehamilan yang lebih lanjut, rahim yang membesar membuat rongga perut Bunda penuh, pencernaan melambat, dan menekan perut Bunda. Untuk membantu meredakan rasa kembung, Bunda dapat:</p>\r\n\r\n<ul>\r\n	<li>Hindari makan sekaligus dalam jumlah besar</li>\r\n	<li>Hindari makan dengan terburu-buru. Pastikan terkunyah dengan baik dan jangan makan sambil bicara</li>\r\n	<li>Batasi asupan minuman saat sedang makan</li>\r\n	<li>Minum menggunakan gelas. Hindari langsung dari botol atau menggunakan sedotan</li>\r\n	<li>Hindari minuman bersoda.</li>\r\n	<li>Duduk dengan tegak saat makan dan minum, dll.</li>\r\n</ul>\r\n', 22),
(8, 'Apa yang harus dilakukan jika timbul rasa gatal?', '<p>Rasa gatal di sekitar perut dan payudara merupakan kondisi yang jamak timbul selama kehamilan yang disebabkan oleh perubahan hormon. Beberapa bahkan merasakan gatal di telapak tangan dan kaki yang kemungkinan disebabkan oleh peningkatan hormon estrogen.</p>\r\n\r\n<p>Rasa gatal juga dapat disebabkan oleh kulit yang kering. Untuk meredakannya, Bunda dapat:</p>\r\n\r\n<ul>\r\n	<li>Hindari mandi dengan air panas</li>\r\n	<li>Gunakan sabun mandi&nbsp; yang ringan dan tanpa pewangi</li>\r\n	<li>Gunakan body lotion yang sesuai setelah mandi</li>\r\n	<li>Kompres bagian yang gatal dengan air dingin</li>\r\n	<li>Kenakan pakaian yang tidak ketat dan menyerap keringat.</li>\r\n</ul>\r\n', 23),
(9, 'Normalkah untuk merasa cepat lelah pada tahap kehamilan ini?', '<p>Ya, karena si kecil sudah semakin besar dan berat di rahim Bunda. Pastikan Bunda beristirahat dengan cukup ya.</p>\r\n', 24),
(10, 'Mengapa menjadi lebih sulit tidur dan istirahat?', '<ul>\r\n	<li>Pada tahap kehamilan ini, si kecil sudah lebih terasa gerakannya.</li>\r\n	<li>Selain itu, kesulitan mencari posisi yang nyaman dan keinginan untuk Buang Air Kecil yang lebih sering dapat menjadi penyebab Bunda sulit tidur dan istirahat.</li>\r\n	<li>Namun, Bunda tidak perlu khawatir karena kondisi ini tidak membahayakan si kecil.</li>\r\n	<li>Coba untuk mencuri waktu guna beristirahat walau sebentar, misalnya dengan tidur siang dan tidur lebih cepat di malam hari.</li>\r\n	<li>Menghindari asupan teh, kopi atau minuman bersoda pada sore atau malam hari juga dapat membantu karena minuman ini mengandung kafein.</li>\r\n	<li>Cobalah untuk pergi tidur dalam keadaan rileks. Melakukan olah tubuh ringan dapat membantu Bunda merasa rileks, misalnya berjalan kaki saat makan siang atau berenang. Selalu konsultasikan dengan dokter kandungan sebelum Bunda melakukan ini ya Bun.</li>\r\n	<li>Jika Bunda merasa kondisi sulit tidur ini mengganggu, diskusikan hal ini dengan Ayah, teman, dokter atau bidan Bunda.</li>\r\n</ul>\r\n', 24),
(11, 'Apakah meningkatnya produksi getah/cairan vagina atau keputihan tidak apa-apa?', '<ul>\r\n	<li>Ya, mayoritas ibu hamil mengalami kondisi ini.</li>\r\n	<li>Biasanya kondisi ini disebabkan karena saat hamil, mulut rahim atau cervix dan dinding vagina menjadi lebih lunak. Cairan atau getah vagina secara otomatis meningkat sebagai cara tubuh Bunda menjaga agar tidak ada infeksi yang masuk ke dalam rahim melalui vagina.</li>\r\n	<li>Walau normal, segera hubungi dokter atau bidan Bunda jika: terdapat tanda dan gejala seperti perubahan warna, bau dan keluhan subyektif seperti nyeri dan panas.</li>\r\n</ul>\r\n', 24),
(12, 'Apa penyebab timbulnya bercak darah atau pendarahan saat hamil?', '<p>Tidak ada penyebab pasti dari terjadinya pendarahan atau timbulnya bercak darah saat hamil. Berikut adalah hal-hal yang umumnya dapat menyebabkan terjadinya kondisi ini:</p>\r\n\r\n<ul>\r\n	<li>Melakukan hubungan intim. Saat Bunda hamil, aliran darah ke mulut rahim bertambah, sehingga terkadang timbul bercak darah atau pendarahan setelah berhubungan intim</li>\r\n	<li>Pap-smear atau periksa dalam dengan penyebab sama seperti melakukan hubungan intim</li>\r\n	<li>Infeksi. Keadaan ini juga bisa disebabkan oleh kondisi yang tidak berhubungan dengan kehamilan seperti infeksi pada vagina atau infeksi akibat penyakit menular seksual.</li>\r\n	<li>Gangguan pada plasenta atau kelahiran prematur.</li>\r\n</ul>\r\n', 25),
(13, 'Apakah cegukan pada janin di dalam rahim hal yang normal?', '<ul>\r\n	<li>Ya. Sebenarnya bayi Bunda sudah mulai cegukan sesekali pada awal trimester kedua, walau pada tahap awal ini Bunda belum bisa merasakannya.</li>\r\n	<li>Saat bayi Bunda cegukan di dalam rahim, Bunda akan merasakan serangkaian gerakan berirama di dalam perut. Hal ini dapat terjadi beberapa kali dalam sehari atau sesekali saja.</li>\r\n	<li>Informasikan dokter Bunda jika ada perubahan dalam gerakan bayi Bunda atau bayi Bunda cegukan terlalu sering.</li>\r\n</ul>\r\n', 26),
(14, 'Apa yang dapat dilakukan jika keram kaki semakin sering dirasakan?', '<ul>\r\n	<li>Seiring bertambahnya usia kehamilan Bunda, keram kaki dapat semakin sering dirasakan.</li>\r\n	<li>Hal ini kemungkinan terjadi karena otot kaki Bunda mengalami kelelahan akibat bertambahnya beban yang harus ditopang.</li>\r\n	<li>Saat terjadi, ini yang dapat Bunda coba lakukan:\r\n	<ul>\r\n		<li>Hindari berdiri atau duduk dengan kaki bersilang untuk waktu yang lama.</li>\r\n		<li>Lakukan peregangan otot betis dengan meluruskan kaki dan perlahan gerakkan jari kaki ke arah tulang kering.</li>\r\n		<li>Berjalan selama beberapa saat atau memijat betis juga dapat menjadi solusi.</li>\r\n		<li>Kenakan sepatu yang nyaman</li>\r\n		<li>Putar pergelangan kaki Bunda lalu gerakkan jemari kaki Bunda saat duduk, nonton TV, dll.</li>\r\n		<li>Hindari terlalu lelah</li>\r\n		<li>Tidur menghadap ke kiri karena dapat meningkatkan sirkulasi dari dan ke kaki Bunda</li>\r\n		<li>Jaga asupan air Bunda, jangan sampai kekurangan</li>\r\n		<li>Mandi air hangat sebelum tidur dapat menjadi solusi</li>\r\n		<li>Asupan potassium dan magnesium yang cukup juga dapat membantu mengurangi keram kaki. Konsultasikan dengan dokter kandungan Bunda ya.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n', 27),
(15, 'Perlukan lakukan pemeriksaan laboratorium lagi ?', '<p>Sangat perlu. Penting untuk mengetahui status gizi, adanya infeksi dan skrining kencing manis pada tahap kehamilan ini Bun.</p>\r\n\r\n<p>Pada beberapa kasus, yang biasanya terkait dengan gaya hidup dan kebiasaan, dokter atau bidan akan menganjurkan untuk dilakukan pemeriksaan laboratorium HIV dan syphilis, dan juga pemeriksaan kultur chlamydia dan gonorrhea.</p>\r\n', 28),
(16, 'Masih bolehkah traveling?', '<p>Beberapa maskapai penerbangan membatasi izin terbang bagi ibu hamil pada kehamilan 28 minggu mengingat risiko yang meningkat.</p>\r\n\r\n<p>Jika seizing dokter kandungan Bunda melakukan perjalan, sebaiknya Bunda tidak duduk lebih dari 3 jam, pilih tempat duduk di lorong agar lebih mudah bergerak (ke kamar mandi, atau jalan ringan setiap 3 jam)</p>\r\n', 28),
(17, 'Apakah normal jika sembelit dan nyeri ulu hati kembali timbul?', '<p>Hormon progesteron membuat jaringan otot di seluruh tubuh mengendur, termasuk yang terdapat di saluran pencernaan. Kondisi ini, ditambah dengan rongga perut yang semakin sesak, membuat proses pencernaan melambat. Hal ini dapat menyebabkan meningkanya gas dan nyeri ulu hati, khususnya setelah makan dalam jumlah banyak, dan sembelit.</p>\r\n', 29),
(18, 'Apa yang harus dilakukan untuk memerangi rasa lelah yang kerap timbul?', '<ul>\r\n	<li>Perhatikan sinyal tubuh Bunda. Pastikan Bunda cukup istirahat, tidurlah lebih awal dan tidur siang. Tidur siang walau hanya 15 menit sangat berarti.</li>\r\n	<li>Sesuaikan kembali jadwal Bunda</li>\r\n	<li>Pastikan kecukupan dan kesehatan asupan nutrisi dan pola makan Bunda</li>\r\n	<li>Pastikan kecukupan asupan cairan Bunda. Sebaiknya hindari konsumsi kafein</li>\r\n	<li>Lakukan olah tubuh ringan setiap hari seperti jalan singkat.</li>\r\n</ul>\r\n', 30),
(19, 'Apa yang biasanya paling dirisaukan oleh ibu hamil terkait persalinan?', '<ul>\r\n	<li>Tidak kuat menanggung rasa sakit yang timbul saat melahirkan.</li>\r\n</ul>\r\n\r\n<p>Ada beberapa metode pengelolaan rasa sakit yang dapat dilakukan saat melahirkan. Diskusikan dengan dokter kandungan dan anastesi untuk melakukannya.</p>\r\n\r\n<ul>\r\n	<li>Robek pada area perineum (antara vagina dan anus) saat proses melahirkan. Umumnya dokter akan melakukan episiotomy untuk memperbesar bukaan tepat sebelum proses kelahiran. Tanyakan kepada dokter Bunda untuk mengetahui hal ini lebih lanjut.</li>\r\n	<li>Buang Air Besar saat proses persalinan. Jangan khawatir Bunda, dokter, bidan dan perawat tidak akan mempermasalahkan hal ini.</li>\r\n	<li>Berada dalam situasi dan kondisi yang mengharuskan dilakukannya intervensi atau tindakan medis yang tidak perlu. Jika ini menjadi kekhawatiran Bunda, segera diskusikan dengan dokter Bunda ya.</li>\r\n	<li>Merasa belum menjadi &ldquo;ibu yang sesungguhnya&rdquo; jika melahirkan dengan operasi cesar. Diskusikan hal ini dengan dokter Bunda karena cukup sering situasi, kondisi Bunda dan bayi mengharuskan untuk dilakukannya operasi demi keselamatan pasien.</li>\r\n	<li>Terlambat sampai di rumah sakit.</li>\r\n</ul>\r\n', 31),
(20, 'Mengapa timbul sesak nafas dan nyeri pada ulu hati?', '<p>Pertumbuhan bayi dan kebutuhan Bunda membuat adanya peningkatan volume darah sebesar 40-50% selama masa kehamilan. Dengan rahim yang semakin membesar dan mendesak diafragma serta menyesaki rongga perut, memungkinkan sesak nafas dan nyeri pada ulu hati untuk timbul. Untuk mengatasinya: Tidurlah dengan disokong bantal dan makanlah dalam porsi kecil dengan frekuensi lebih sering.</p>\r\n', 32),
(21, 'Apakah melakukan hubungan seksual dengan Ayah boleh tetap dilakukan?', '<ul>\r\n	<li>Hubungan seksual tetap diperbolehkan untuk dilakukan dengan beberapa kondisi.</li>\r\n	<li>Konsultasikan dengan dokter Bunda untuk kondisinya dan jika Bunda memiliki faktor resiko.</li>\r\n	<li>Gunakan kondom saat berhubungan seksual ya Ayah dan Bunda.</li>\r\n</ul>\r\n', 33),
(22, 'Mengapa tes kultur GBS penting?', '<ul>\r\n	<li>Jika Bunda memiliki bakteri ini dan bayi Bunda tertular saat kelahiran, komplikasi serius seperti pneumonia, meningitis atau infeksi darah dapat timbul.</li>\r\n	<li>10-30% ibu hamil memiliki bakteri ini dan tidak menyadarinya, sehingga skrining GBS penting untuk dilakukan</li>\r\n	<li>Jika diketahui sejak awal, pemberian antibiotic IV saat kelahiran bayi dapat mencegah resiko bayi Bunda terinfeksi.</li>\r\n</ul>\r\n', 35),
(23, 'Apa itu air ketuban?', '<p>Berikut serba-serbinya ya Bun:</p>\r\n\r\n<ol>\r\n	<li>Sebagian besar ketuban ibu hamil pecah saat proses persalinan, walau juga dapat terjadi sebelum proses persalinan dimulai.</li>\r\n	<li>Janin Bunda tumbuh dan berkembang di dalam kantung cairan yang disebut kantung ketuban</li>\r\n	<li>Saat tiba waktunya lahir, kantung ketuban pecah dan airnya mengalir keluar melalui vagina Bunda. Saat inilah yang disebut Pecah Ketuban.</li>\r\n	<li>Air ketuban dapat keluar dengan menetes, merembes, atau berupa aliran deras yang tidak dapat dikontrol. Siapkan handuk bersih (jangan tampon) setiap bepergian dan pelindung kasur.</li>\r\n	<li>Air ketuban jernih dan berwarna pucat kekuningan. Terkadang sulit membedakan air ketuban dan air seni.</li>\r\n	<li><strong>Penting:</strong>\r\n	<ul>\r\n		<li>Saat ketuban pecah, kemungkinan di saat awal ada sedikit campuran darah dalam airnya.</li>\r\n		<li>Segera hubungi dokter, bidan atau rumah sakit jika air ketuban Bunda berbau atau berwarna, atau jika keluar darah. Hal ini dapat menandakan Bunda dan bayi membutuhkan pertolongan segera.</li>\r\n		<li>Jika ketuban pecah sebelum proses persalinan, segera hubungi dokter, bidan atau rumah sakit untuk panduan. Tanpa air ketuban bayi Bunda tak lagi terlindungi dan dapat terpapar resiko infeksi.</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n', 36),
(24, 'Alat test pack apa yang bagus?', '<p>Semua yang memiliki standar pemerintah mempunyai akurasi yang baik</p>\r\n', 1),
(25, 'Apa tanda kehamilan?', '<p>Hamil memiliki tanda tidak pasti dan tanda pasti.</p>\r\n\r\n<p>Tanda tidak pasti misalnya : telat haid, mual muntah.</p>\r\n\r\n<p>Tanda pasti : hasil <em>test pack</em> positif (beta Hcg)&nbsp; dan melalui hasil USG</p>\r\n', 1),
(26, 'Apakah hasil test pack bisa tidak akurat?', '<p>Hasil <em>test pack</em> negatif belum tentu menandakan tidak hamil karena pada kehamilan muda kadar hormon Hcg masih rendah sehingga belum bisa terdeteksi/terbaca alat <em>test pack</em>. Hasil negatif bisa juga disebabkan karena kerusakan alat <em>test pack</em></p>\r\n', 1),
(27, 'Apa yang biasanya ditanya oleh dokter/ bidan saat pertama kali periksa?', '<ul>\r\n	<li>Panjang siklus haid Bunda selama ini</li>\r\n	<li>Kapan Hari Pertama Haid Terakhir (HPHT) Bunda untuk menghitung perkiraan hari kelahiran si bayi.</li>\r\n	<li>Gejala atau gangguan yang Bunda rasakan sejak haid terakhir. Hal ini untuk membantu mengetahui apakah Bunda positif hamil atau tidak</li>\r\n	<li>Masalah atau gangguan ginekologis (kandungan) yang Bunda miliki atau pernah miliki, termasuk penyakit menular seksual</li>\r\n	<li>Detil terkait kehamilan sebelumnya jika sudah pernah hamil</li>\r\n</ul>\r\n', 1),
(28, 'Apakah tanda hamil di luar kandungan ?', '<p>Nyeri perut hebat , perdarahan dari kemaluan dan test pack negatif.</p>\r\n\r\n<p>Standar baku untuk memastikan diagnostik kehamilan di luar kandungan adalah dengan USG</p>\r\n', 5),
(29, 'Pemeriksaan apa saja yang dianjurkan saat diketahui hamil ?', '<p>Pemeriksaan laboratorium Trimester 1 dan USG</p>\r\n', 5),
(30, 'Kenapa keinginan Buang Air Kecil meningkat?', '<p>Pada tahap ini umumnya hal ini disebabkan karena jumlah darah di dalam tubuh meningkat drastis saat Bunda hamil. Hal ini menyebabkan jumlah cairan yang diproses di ginjal bertambah dan semuanya berakhir di saluran kencing Bunda. Seiring bertambahnya usia kehamilan Bunda, keinginan untuk BAK akan semakin meningkat karena rahim yang membesar mulai menekan saluran kencing.</p>\r\n', 5),
(32, 'Apa tanda kehamilan?', '<p>Hamil memiliki tanda tidak pasti dan tanda pasti.</p>\r\n', 2),
(33, 'Apakah hasil test pack bisa tidak akurat?', '<p>Hasil <em>test pack</em> negatif belum tentu menandakan tidak hamil karena pada kehamilan muda kadar hormon Hcg masih rendah sehingga belum bisa terdeteksi/terbaca alat <em>test pack</em>. Hasil negatif bisa juga disebabkan karena kerusakan alat <em>test pack</em></p>\r\n', 2),
(34, 'Apa yang biasanya ditanya oleh dokter/ bidan saat pertama kali periksa?', '<ul>\r\n	<li>Panjang siklus haid Bunda selama ini</li>\r\n	<li>Kapan Hari Pertama Haid Terakhir (HPHT) Bunda untuk menghitung perkiraan hari kelahiran si bayi.</li>\r\n	<li>Gejala atau gangguan yang Bunda rasakan sejak haid terakhir. Hal ini untuk membantu mengetahui apakah Bunda positif hamil atau tidak</li>\r\n	<li>Masalah atau gangguan ginekologis (kandungan) yang Bunda miliki atau pernah miliki, termasuk penyakit menular seksual</li>\r\n	<li>Detil terkait kehamilan sebelumnya jika sudah pernah hamil</li>\r\n</ul>\r\n', 2),
(35, 'Alat test pack apa yang bagus?', '<p>Semua yang memiliki standar pemerintah mempunyai akurasi yang baik</p>\r\n', 3),
(36, 'Apa tanda kehamilan?', '<p>Hamil memiliki tanda tidak pasti dan tanda pasti.</p>\r\n\r\n<p>Tanda tidak pasti misalnya : telat haid, mual muntah.</p>\r\n\r\n<p>Tanda pasti : hasil <em>test pack</em> positif (beta Hcg)&nbsp; dan melalui hasil USG</p>\r\n', 3),
(37, 'Apakah hasil test pack bisa tidak akurat?', '<p>Hasil <em>test pack</em> negatif belum tentu menandakan tidak hamil karena pada kehamilan muda kadar hormon Hcg masih rendah sehingga belum bisa terdeteksi/terbaca alat <em>test pack</em>. Hasil negatif bisa juga disebabkan karena kerusakan alat <em>test pack</em></p>\r\n', 3),
(38, 'Apa yang biasanya ditanya oleh dokter/ bidan saat pertama kali periksa?', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Panjang siklus haid Bunda selama ini</li>\r\n	<li>Kapan Hari Pertama Haid Terakhir (HPHT) Bunda untuk menghitung perkiraan hari kelahiran si bayi.</li>\r\n	<li>Gejala atau gangguan yang Bunda rasakan sejak haid terakhir. Hal ini untuk membantu mengetahui apakah Bunda positif hamil atau tidak</li>\r\n	<li>Masalah atau gangguan ginekologis (kandungan) yang Bunda miliki atau pernah miliki, termasuk penyakit menular seksual</li>\r\n	<li>Detil terkait kehamilan sebelumnya jika sudah pernah hamil</li>\r\n</ul>\r\n', 3),
(39, 'Alat test pack apa yang bagus?', '<p>Semua yang memiliki standar pemerintah mempunyai akurasi yang baik</p>\r\n', 4),
(40, 'Apa tanda kehamilan?', '<p>Hamil memiliki tanda tidak pasti dan tanda pasti.</p>\r\n\r\n<p>Tanda tidak pasti misalnya : telat haid, mual muntah.</p>\r\n\r\n<p>Tanda pasti : hasil <em>test pack</em> positif (beta Hcg)&nbsp; dan melalui hasil USG</p>\r\n', 4),
(41, 'Apakah hasil test pack bisa tidak akurat?', '<p>Hasil <em>test pack</em> negatif belum tentu menandakan tidak hamil karena pada kehamilan muda kadar hormon Hcg masih rendah sehingga belum bisa terdeteksi/terbaca alat <em>test pack</em>. Hasil negatif bisa juga disebabkan karena kerusakan alat <em>test pack</em></p>\r\n', 4),
(42, 'Apa yang biasanya ditanya oleh dokter/ bidan saat pertama kali periksa?', '<ul>\r\n	<li>Panjang siklus haid Bunda selama ini</li>\r\n	<li>Kapan Hari Pertama Haid Terakhir (HPHT) Bunda untuk menghitung perkiraan hari kelahiran si bayi.</li>\r\n	<li>Gejala atau gangguan yang Bunda rasakan sejak haid terakhir. Hal ini untuk membantu mengetahui apakah Bunda positif hamil atau tidak</li>\r\n	<li>Masalah atau gangguan ginekologis (kandungan) yang Bunda miliki atau pernah miliki, termasuk penyakit menular seksual</li>\r\n	<li>Detil terkait kehamilan sebelumnya jika sudah pernah hamil</li>\r\n</ul>\r\n', 4),
(43, 'Makanan apa yang dianjurkan untuk ibu hamil ?', '<p>Perhatikan kecukupan asupan kalori Bunda. Makanan penuh nutrisi dan mengandung unsur &nbsp;karbohidrat, berserat, protein, DHA, dan sayuran hijau pada setiap porsinya sangat dianjurkan</p>\r\n', 6),
(44, 'Aktifitas apa yang sebaiknya dihindari saat hamil muda ?', '<p>Olahraga <em>high impact</em> dan berisiko seperti aerobik.</p>\r\n', 6),
(45, 'Apakah tanda hamil di luar kandungan ?', '<ul>\r\n	<li>Nyeri perut hebat</li>\r\n	<li>Perdarahan dari kemaluan dan test pack negatif.</li>\r\n	<li>Dan dalam beberapa kasus, nyeri yang sangat pada bagian samping perut Bunda karena janin yang berkembang di luar rahim</li>\r\n	<li>Standar baku untuk memastikan diagnostik kehamilan di luar kandungan adalah dengan USG</li>\r\n	<li>Segera hubungi dokter atau bidan Bunda ya.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 6),
(46, 'Apakah tanda keguguran? Hal-hal ini di bawah ini dapat menjadi pertanda terjadinya keguguran:', '<ul>\r\n	<li>Perdarahan. Timbul bercak darah dapat terjadi saat hamil, namun segera hubungi dokter atau bidan Bunda jika terjadi perdarahan dalam jumlah banyak, perdarahan yang tiba-tiba dan cepat, perdarahan yang tidak henti-henti, bercak darah berwarna merah segar atau coklat, atau darah yang mengandung jaringan atau gumpalan.</li>\r\n	<li>Keram. Keram umum terjadi saat implantasi janin di rahim, tetapi segera hubungi dokter atau bidan jika keram yang Bunda rasakan lebih hebat dan menyakitkah daripada keram saat haid yang biasa Bunda rasakan, instensitas keram terasa hingga ke punggung, terjadi perdarahan saat keram melanda.</li>\r\n	<li>Lendir berwarna putih-merah jambu yang dapat merupakan jaringan dari plasenta</li>\r\n	<li>Gejala lainnya seperti: hilangnya tanda kehamilan secara mendadak, penurunan berat badan tanpa sebab.</li>\r\n</ul>\r\n', 6),
(47, 'Pakaian apa yang sebaiknya Bunda kenakan agar nyaman saat hamil?', '<ul>\r\n	<li>Pakaian yang menyerap keringat dan tidak membatasi gerakan atau aktifitas (tidak terlalu ketat)</li>\r\n	<li>Dapat menyangga payudara dengan baik</li>\r\n</ul>\r\n', 7),
(48, 'Apa yang bisa dilakukan untuk mengatasi morning sickness?', '<ul>\r\n	<li>Makan lebih sering dalam porsi lebih kecil untuk menghindari perut kosong karena dapat membuat rasa mual semakin parah</li>\r\n	<li>Konsumsi makanan kaya protein dan kandungan vitamin B seperti kacang. Hindari makanan yang kaya bumbu, bersantan, pedas, berlemak, gas dan gorengan karena dapat memperparah rasa mual.</li>\r\n	<li>Sarapan pagi di tempat tidur karena turun dari tempat tidur dalam keadaan perut kosong dapat memicu rasa mual</li>\r\n	<li>Pastikan kecukupan konsumsi air</li>\r\n	<li>Tidur cukup</li>\r\n	<li>Cium aroma jeruk atau jeruk nipis. Menambahkan potongan jeruk nipis ke dalam teh atau air putih Bunda juga dapat mengurangi rasa mual</li>\r\n	<li>Konsumsi air jahe atau makan permen jahe</li>\r\n	<li>Cerdas dalam mengkonsumsi vitamin dan suplemen kehamilan. Mengkonsumsi vitamin kehamilan saat makan atau tepat sebelum tidur dapat membantu&nbsp; mengurangi rasa mual.</li>\r\n</ul>\r\n', 7),
(49, 'Kenapa BAB sulit dan keras?', '<p>Karena gerakan peristaltik usus yang melambat sehingga kotoran / feses cenderung keras</p>\r\n', 8),
(50, 'Kenapa lebih sering kembung?', '<p>Pada minggu awal kehamilan, beberapa masih mengalami mual dan muntah sehingga menyebabkan tidak nafsu makan dan berimbas pada kosongnya lambung</p>\r\n', 8),
(51, 'Bagaimana mengatasi mual muntah saat hamil?', '<ul>\r\n	<li>Jangan stress dan rubah pola pikir bahwa mual merupakan bagian dari proses kehamilan yang bersifat sementara</li>\r\n	<li>Jangan takut mual dan muntah dan tetap makan dalam porsi kecil dengan frekuensi sering</li>\r\n	<li>Makan roti kering, minum air jahe atau makan es krim</li>\r\n</ul>\r\n', 9),
(52, 'Apakah diperlukan USG skrining?', '<p>Perlu untuk dilakukan di awal kehamilan.</p>\r\n', 10),
(53, 'Apa saja yang dilihat / diperiksa saat USG?', '<p>Bunda dapat menanyakan kepada dokter :</p>\r\n\r\n<ul>\r\n	<li>Ukuran dan bentuk embrio,</li>\r\n	<li>Tulang hidung,</li>\r\n	<li>NT (lipatan leher belakang), dan</li>\r\n	<li>Bentuk, ukuran dan kondisi rahim</li>\r\n</ul>\r\n', 10),
(54, 'Mengapa tetap bergerak bermanfaat untuk kehamilan?', '<ul>\r\n	<li>Olah tubuh membuat otot dan badan Bunda lebih kuat dan memiliki daya tahan lebih baik.</li>\r\n	<li>Hal ini membuat tubuh Bunda lebih kuat menopang berat badan yang bertambah akibat kehamilan, mempersiapkan fisik untuk proses persalinan dan mempercepat pengembalian bentuk tubuh Bunda setelah melahirkan.</li>\r\n</ul>\r\n', 10),
(55, 'Apakah diperlukan USG skrining?', '<p>Perlu untuk dilakukan di awal kehamilan.</p>\r\n', 11),
(56, 'Apa saja yang dilihat / diperiksa saat USG?', '<p>Bunda dapat menanyakan kepada dokter :</p>\r\n\r\n<ul>\r\n	<li>Ukuran dan bentuk embrio,</li>\r\n	<li>Tulang hidung,</li>\r\n	<li>NT (lipatan leher belakang), dan</li>\r\n	<li>Bentuk, ukuran dan kondisi rahim</li>\r\n</ul>\r\n', 11),
(57, 'Apakah aku sudah siap jadi orang tua? ', '<p><em>Well,</em> Bunda dan Ayah pasti sudah paham bahwa kehidupan kita saat sudah menjadi orang tua pasti berubah jauh karena rutinitas dan prioritas dalam hidup-pun akan banyak berubah. Akan banyak hal-hal yang harus dipersiapkan dengan matang karena kebutuhan dan pengeluaran akan bertambah. Beberapa hal yang harus dipersiapkan:</p>\r\n\r\n<ul>\r\n	<li>Keperluan dan perlengkapan bayi dan kamar tidur bayi. Jenisnya beragam, mulai dari pampers, tempat tidur bayi, kereta dorong bayi, pakaian, perlengkapan makan, dll. Kebutuhan-kebutuhan ini bisa disikapi dengan cerdas dan jeli, misalnya: memanfaatkan diskon, meminjam, atau mencicil pembeliannya baik dari sisi waktu maupun uang. (masukkan link koinworks, plomo, freemium Sehati, babyloania dan sejenisnya)</li>\r\n	<li>Memastikan kesehatan dan pendidikan si kecil. Pastinya Ayah dan Bunda menginginkan yang terbaik buat si kecil. Melakukan perencanaan yang baik untuk kesehatan dan pendidikan si kecil sejak dini adalah langkah yang sangat tepat, misalnya dengan mulai &ldquo;belanja&rdquo; dokter anak yang sesuai untuk Bunda dan Ayah, mengikuti program asuransi sedari dini, dll.</li>\r\n	<li>Melakukan perencanaan keuangan dan penganggaran. <em>Nah,</em> ini penting Ayah dan Bunda. Walau umumnya membicarakan mengenai keuangan secara gamblang masih &ldquo;tabu&rdquo; di Indonesia, tetapi hal ini sangat penting. Keterbukaan dan kejujuran dalam melakukan perencanaan dan penganggaran keuangan di antara Ayah dan Bunda akan menjadi salah satu fondasi kuat untuk hubungan yang sehat. Mulai browsing-browsing asuransi atau cara pembiayaan cerdas bersama bisa menjadi solusi agar &ldquo;kehidupan&rdquo; aman tentram.</li>\r\n	<li>Merencanakan cuti hamil untuk Bunda dan Ayah</li>\r\n	<li>Perawatan si kecil saat Bunda dan Ayah harus kembali bekerja. Walau budaya masyarakat Indonesia dimana biasanya keluarga besar dengan sukarela membantu menjaga si kecil akan membuat hal ini menjadi lebih mudah, namun tetap ini merupakan hal yang harus Bunda dan Ayah sepakati bersama karena menyangkut pola asuh yang berperan dalam pembentukan&nbsp;karakter si kecil. Tidak ada salahnya untuk membicarakan sejak awal dan mulai mencari pilihan-pilihan yang ada misalnya: menitipkan kepada orang tua, melatih Asisten Rumah Tangga (ART) yang ada saat ini, menggunakan jasa baby sitter atau menitipkan di tempat penitipan anak (daycare) atau PAUD.</li>\r\n	<li>Selalu bersiap dan berpikir positif karena perjalanan yang akan dilalui setiap orang tua pasti berbeda. Bergabung dalam komunitas akan sangat membantu Ayah dan Bunda bersiap diri (Joy Parenting)</li>\r\n</ul>\r\n', 11),
(58, 'Apakah diperlukan USG skrining?', '<p>Perlu untuk dilakukan di awal kehamilan.</p>\r\n', 1),
(59, 'Apa saja yang dilihat / diperiksa saat USG?', '<p>Bunda dapat menanyakan kepada dokter :</p>\r\n\r\n<ul>\r\n	<li>Ukuran dan bentuk embrio,</li>\r\n	<li>Tulang hidung,</li>\r\n	<li>NT (lipatan leher belakang), dan</li>\r\n	<li>Bentuk, ukuran dan kondisi rahim</li>\r\n</ul>\r\n', 12),
(60, 'Amankah untuk berolahraga mengangkat beban saat hamil?', '<p>Selalu konsultasikan terlebih dahulu kepada dokter kandungan Bunda sebelumnya. Jika diperbolehkan, berolahraga mengangkat beban ringan bermanfaat untuk dilakukan. Beberapa hal yang dapat dilakukan dan konsultasikan terlebih dahulu kepada dokter kandungan Bunda:</p>\r\n\r\n<ul>\r\n	<li>Disarankan berat beban tidak lebih dari 5 kilogram</li>\r\n	<li>Selalu lakukan dalam posisi duduk dan tegak, jangan pernah melakukannya dengan posisi terlentang.</li>\r\n	<li>Peka terhadap apa yang tubuh Bunda rasakan. Bila otot terasa tertarik dan Bunda mulai lelah, segera hentikan.</li>\r\n</ul>\r\n', 12),
(61, 'Boleh tidak berolahraga dan bepergian ?', '<p>Boleh, asalkan tidak ada riwayat perdarahan, keguguran serta kontraksi sebelumnya. Periksakan kondisi sebelum Bunda melakukan aktivitas ini.</p>\r\n\r\n<p>Olahraga yoga atau pilates sudah diperbolehkan asalkan gerakan disesuaikan dengan kondisi kehamilan</p>\r\n\r\n<p>Selalu konsultasikan hal-hal tersebut di atas kepada dokter atau bidan Bunda</p>\r\n', 13),
(62, 'Minuman apa yang sebaiknya dikonsumsi saat hamil?', '<ul>\r\n	<li>Yang terbaik adalah air putih, tetapi susu dan jus buah-buahan segar juga sangat baik untuk menjaga Bunda tetap&nbsp; terhidrasi dan ternutrisi.</li>\r\n	<li>Hindari konsumsi minuman bersoda secara berlebihan (lebih 1 porsi per hari) karena dari beberapa penelitian yang masih terus dilakukan dan didalami,&nbsp; dapat meningkatkan resiko lahir prematur dan berisiko untuk bayi Bunda mengalami kelebihan berat badan saat berusia 1 tahun.</li>\r\n	<li>Mayoritas minuman bersoda mengandung kafein dan asupan yang diperbolehkan untuk kesehatan adalah dibawah 200 miligram per hari. (minuman 350 mililiter mengandung sekitar 35 &ndash; 55 miligram kafein)</li>\r\n</ul>\r\n', 13),
(63, 'Bolehkah melakukan hubungan seksual saat hamil?', '<ul>\r\n	<li>Tentu boleh, posisi hubungan seks yang aman sebaiknya tidak menekan perut, misalnya dengan posisi &ldquo;rear entry&rdquo; atau lebih dikenal dengan &ldquo;doggy style&rdquo;</li>\r\n	<li>Berhentilah segera apabila merasakan kontraksi pada perut dan timbul flek, serta segera konsultasikan kepada dokter kandungan bunda.</li>\r\n</ul>\r\n', 14),
(64, 'Apakah asupan kalsium saya cukup?', '<ul>\r\n	<li>Bunda memerlukan asupan kalsium agar pertumbuhan tulang dan gigi si kecil baik dan kuat. Selain itu, kalsium juga dapat mengurangi resiko hipertensi dan pre-eklampsia.</li>\r\n	<li>Kekurangan asupan kalsium membuat kebutuhan kalsium si kecil diambil dari tulang Bunda yang berpotensi dan beresiko menimbulkan osteoporosis pada Bunda kelak.</li>\r\n	<li>Saat hamil Bunda membutuhkan kalsium antara 1000 &ndash; 1.300 miligram setiap hari.</li>\r\n	<li>Susu dan produk olahan susu merupakan sumber kalsium yang baik selain ikan (kalengan) dan makanan yang diperkaya kalsium (misalnya sereal yang ditambah kandungan kalsiumnya)</li>\r\n	<li>Beberapa contoh makanan yang mengandung kalsium: es krim vanilla, sayuran pakcoy, ikan sarden kalengan (dengan tulang), yogurt rendah lemak, dll</li>\r\n	<li>Suplemen kalsium penting saat hamil. Dengan mengkonsumsinya setidaknya kebutuhan sebesar 150 mg sudah terpenuhi. Pastikan saja Bunda juga mengkonsumsi vitamin D karena fungsinya yang penting sebagai penyerap kalsium.</li>\r\n</ul>\r\n', 14),
(65, 'Apakah sudah boleh melakukan perjalanan/traveling ?', '<p>Konsultasikan terlebih dahulu dengan dokter bunda.</p>\r\n', 15),
(66, 'Amankah mengkonsumsi teh herbal?', '<p>Teh herbal dapat memiliki efek samping. Disarankan untuk bertanya kepada dokter kandungan Bunda sebelum mengkonsumsinya</p>\r\n', 15),
(67, 'Bagaimana posisi tidur yang dianjurkan ?', '<p>Hindari tidur terlentang karena rahim semakin besar dan dapat menekan pembuluh darah yang berada di bawahnya sehingga bisa menggangu aliran darah ke jantung (ibu dapat sinkope/pingsan)</p>\r\n', 16),
(68, 'Apakah janin sudah mendengar perkataan Bunda ?', '<p>Ya. Sering-seringlah menstimulasi janin dengan mendengarkan musik, mengobrol, membacakan doa</p>\r\n', 17),
(69, 'Amankah mengkonsumsi sushi yang terbuat dari ikan mentah saat hamil?', '<p>Tidak. Pastikan ikan dan kerang yang Bunda konsumsi sudah dimasak dengan matang pada tingkat panas setidaknya 63 derajat celcius. Pada saat hamil, umumnya daya tahan tubuh Bunda menurun dan ini membuat daya tahan terhadap bakteri Listeria yang biasanya terdapat pada makanan laut mentah&nbsp; berbahaya bagi kehamilan. Konsumsi ikan dan kerang mentah saat hamil dapat mengakibatkan penyakit yang memicu infeksi darah dan membahayakan jiwa Bunda dan si kecil.</p>\r\n', 17),
(70, 'Jenis kelamin bayi saya apa ya?', '<p>Bunda bisa minta dilakukan USG ke dokter kandungan Bunda agar dapat melihat jenis kelamin si kecil.</p>\r\n', 18),
(71, 'Bolehkah saya mengangkat barang berat?', '<p>Sebagai panduan umum, Bunda disarankan untuk tidak mengangkat beban lebih dari 9 kilogram. Dengan perubahan poros keseimbangan Bunda saat hamil, mengangkat benda berat dapat meningkatkan resiko Bunda untuk jatuh, dan kondisi ini dapat membahayakan Bunda dan janin.</p>\r\n', 18),
(72, 'Apakah normal untuk merasakan nyeri di bagian bawah perut?', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Ya, walau jika Bunda merasa tidak nyaman, tidak ada salahnya jika Bunda berkonsultasi ke dokter Bunda.</li>\r\n	<li>Kondisi ini biasanya terjadi karena peregangan pada ikatan sendi atau ligament yang menopang rahim Bunda seiring kehamilan yang membesar.</li>\r\n</ul>\r\n', 19),
(73, 'Kenapa suka sakit kepala?', '<p>Sakit kepala akibat tegang cukup sering terjadi saat hamil. Diperkirakan kondisi ini disebabkan karena perubahan hormon, meningkatnya volume dan sirkulasi darah. Kurang tidur, kelelahan, dehidrasi juga dapat menjadi penyebab sakit kepala saat hamil.</p>\r\n\r\n<p>Apa yang dapat dilakukan:</p>\r\n\r\n<ul>\r\n	<li>Perhatikan asupan makanan</li>\r\n	<li>Kompres dahi dengan air dingin atau hangat</li>\r\n	<li>Mandi air dingin, atau basuh wajah Bunda dengan air dingin</li>\r\n	<li>Pastikan Bunda tidak kelaparan atau kehausan</li>\r\n	<li>Istirahat yang cukup</li>\r\n	<li>Bergerak</li>\r\n</ul>\r\n', 20),
(74, 'Amankah memakai sabuk pengaman saat mengendarai mobil?', '<ul>\r\n	<li>Ya, justru berbahaya jika Bunda tidak memakai sabuk pengaman. Penelitian menunjukkan bahwa cara terbaik untuk melindungi si kecil di dalam rahim adalah dengan memastikan keselamatan Bunda terlebih dahulu.</li>\r\n	<li>Agar tidak menimbulkan cidera, gunakan sabuk pengaman dengan tepat (sabuk pengaman 3 titik yang terdiri dari sabuk yang menyilang di pangkuan dan bahu)</li>\r\n	<li>Posisikan sabuk pangkuan di bagian terbawah dari perut (di bawah tulang panggul). Jangan kenakan di atas atau melintang di perut karena akan menimbulkan cidera.</li>\r\n	<li>Posisikan sabuk bahu menyilang diantara payudara ke samping perut Bunda</li>\r\n	<li>Saat mengemudi, atur posisi Bunda sejauh mungkin dari kemudi dan dasbor, tetapi masih dalam jarak nyaman untuk menginjak pedal.</li>\r\n	<li>Posisi duduk teraman bagi Bunda saat naik mobil adalah di kursi belakang.</li>\r\n	<li>Jika Bunda mengalami kecelakaan mobil, sekecil apapun, segera periksakan diri dan kandungan Bunda ke dokter kandungan.</li>\r\n</ul>\r\n', 21),
(75, 'Ngidam, dituruti atau dilawan?', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Menurut beberapa ahli, ngidam pada hal tertentu atau hingga skala tertentu dapat diartikan sebagai sebuah pertanda, misalnya kekurangan asupan magnesium pada ibu hamil dapat menimbulkan keinginan <em>berat </em>untuk makan cokelat. Walau hingga saat ini belum ada penelitian pasti yang menyatakan korelasi signifikan antara <em>ngidam</em> dan kebutuhan tubuh ibu hamil akan asupan tertentu.</li>\r\n	<li>Beberapa ibu hamil merasakan ngidam-nya berkurang dan bahkan hilang saat mengkonsumsi asam lemak penting, misalnya minyak ikan.</li>\r\n	<li>Kesimpulannya, tidak ada salahnya mengikuti keinginan ngidam selama tidak mengubah pola makan sehat Bunda.</li>\r\n	<li>Jika Bunda <em>ngidam</em> benda bukan makanan seperti kapur, debu, tepung, lumpur, dsbnya, konsultasikan ke dokter kandungan Bunda ya.</li>\r\n</ul>\r\n', 22),
(76, 'Apa yang harus dilakukan jika ada bercak darah atau terjadi pendarahan?', '<p>Segera hubungi dokter atau bidan Bunda walau pendarahan sudah berhenti karena bisa merupakan pertanda adanya masalah.</p>\r\n', 25),
(77, 'Apa penyebab pegal dan nyeri pada pinggang dan persendian tulang belakang?', '<ul>\r\n	<li>Perubahan hormon yang terjadi membuat persendian dan ligament Bunda mengendur</li>\r\n	<li>Juga, semakin bertambah besarnya kandungan Bunda membuat poros keseimbangan Bunda berubah, membuat otot perut Bunda meregang serta mengendur dan dapat menekan syaraf.</li>\r\n	<li>&nbsp;Selain itu, pertambahan berat yang ditanggung Bunda dengan tumbuhnya si kecil di rahim membuat otot Bunda harus bekerja lebih keras untuk menopangnya selain menambah tekanan pada persendian Bunda.</li>\r\n</ul>\r\n', 26),
(78, 'Mengapa perlu melakukan observasi gerakan si kecil di rahim?', '<ul>\r\n	<li>Pada tahap kehamilan ini, si kecil pasti sudah semakin aktif bergerak. Setiap bayi memilki pola dan kebiasaan bergerak yang berbeda satu dengan lainnya. Selama Bunda tidak merasa ada perubahan besar pada pola gerakan dan tingkat aktivitas gerakannya, kemungkinan besar si kecil baik-baik saja.</li>\r\n	<li>Observasi gerakan si kecil dapat menambah rasa tenang dan aman. Dokter dan bidan menganjurkan agar observasi ini mulai dilakukan sejak usia kehamilan 28 minggu.</li>\r\n	<li>Konsultasikan kepada dokter atau bidan Bunda cara menghitung tendangan si kecil. Bunda dapat menggunakan fitur &ldquo;Hitung Tendangan&rdquo; yang ada dalam aplikasi ini setelah sebelumnya sepakat dengan dokter atau bidan Bunda.</li>\r\n	<li>Segera hubungi dokter atau bidan jika Bunda merasa ada perlambatan dalam gerakan atau tendangan si kecil.</li>\r\n</ul>\r\n', 34),
(79, 'Apa itu lendir bercampur darah?', '<p>Keluarnya lendir bercampur darah dari jalan lahir merupakan tanda dimulainya proses persalinan.</p>\r\n\r\n<ol>\r\n	<li>Saat hamil, terdapat gumpalan sumbatan lendir di mulut rahim Bunda.</li>\r\n	<li>Sesaat sebelum proses persalinan dimulai atau pada tahap awal persalinan, gumpalan sumbatan lendir terlepas dan dapat keluar melalui vagina Bunda.</li>\r\n	<li>Saat keluar, lendir dapat berupa satu gumpalan atau terbagi dalam beberapa bagian.</li>\r\n	<li>Lendir bercampur darah menandakan bahwa serviks atau mulut rahim Bunda mulai terbuka dan proses persalinan umumnya akan segera dimulai. Dalam beberapa kasus kehamilan, tidak terdapat lendir bercampur darah.</li>\r\n	<li>Campuran sedikit darah dalam lendir merupakan hal yang normal. Jika jumlah darah yang keluar semakin banyak, ini dapat merupakan pertanda adanya masalah. Segera hubungi dokter, bidan atau rumah sakit Bunda.</li>\r\n</ol>\r\n', 37),
(80, 'Apa yang terjadi jika si kecil tak kunjung lahir dan telah melewati tanggal taksiran kelahiran?', '<ul>\r\n	<li>Jangan langsung khawatir Bunda. Biasanya lahir tidak sesuai dengan taksiran tanggal kelahiran bukan karena terlambat tapi memang sulit menentukan tanggal kelahiran secara tepat dan pasti</li>\r\n	<li>Tanggal kelahiran umumnya berupa taksiran kasar mengingat setiap ibu memiliki siklus haid dan ovulasi yang beragam.</li>\r\n	<li>Memang umumnya setelah kehamilan 42 minggu, rahim Bunda tidak lagi &ldquo;seramah&rdquo; sebelumnya, begitu juga dengan plasenta yang fungsinya dalam menyalurkan nutrisi dan oksigen tak sebaik sebelumnya dan cairan ketuban yang mulai berkurang.</li>\r\n	<li>Kehamilan melebihi 42 minggu menimbulkan resiko seperti harus dilakukan dengan operasi, atau membutuhkan alat bantu vakum atau forcep. Kotoran atau feces yang dikeluarkan si kecil ke cairan ketuban juga dapat tertelan kembali oleh si kecil yang berpotensi menimbulkan gangguan pasca lahir.</li>\r\n	<li>Untuk mencegah kondisi di ats, banyak dokter melakukan induksi atau percepatan lahir saat mereka pasti bahwa kehamilan telah melewati 41 minggu dan mulut rahim telah siap, atau bahkan lebih cepat jika ada komplikasi.</li>\r\n	<li>Jika kehamilan Bunda telah melebihi masanya, diskusikan dengan dokter dan bidan Bunda untuk langkah selanjutnya.</li>\r\n</ul>\r\n', 39);
INSERT INTO `faq` (`id_faq`, `judul_faq`, `detail_faq`, `post_faq`) VALUES
(81, 'Serba Serbi Pre-Eklampsia ', '<p>Bunda dan Ayah, salah satu kondisi serius yang harus sangat diwaspadai saat kehamilan adalah pre-eklampsia. Diderita sekitar 5% ibu hamil, pre-eklampsia dapat menimbulkan komplikasi yang membahayakan ibu dan bayi jika tidak ditangani dengan baik sejak dini. Memastikan Bunda melakukan perawatan kehamilan (ANC) dengan baik dan benar, serta tidak melewatkan waktu kunjungan ke dokter kebidanan dan kandungan atau bidan adalah hal yang sangat disarankan. Kita pelajari lebih jauh yuk tentang pre-eklampsia.</p>\r\n\r\n<p><strong>Apa Itu Pre-eklampsia?</strong></p>\r\n\r\n<ul>\r\n	<li>Pre-eklampsia adalah komplikasi pada kehamilan yang ditandai dengan tekanan darah yang tinggi dan timbulnya kerusakan pada salah satu sistem organ tubuh, pada umumnya ginjal.</li>\r\n	<li>Pre-eklampsia umumnya timbul pada usia kehamilan 20 minggu ke atas pada ibu hamil yang sebelumnya memiliki tekanan darah normal.</li>\r\n	<li>Pre-eklampsia dapat terjadi tiba-tiba. Peningkatan tekanan darah, walau sedikit, dapat merupakan tanda pre-eklampsia.</li>\r\n	<li>Jika tidak dirawat dan ditangani dengan baik, pre-eklampsia dapat mengakibatkan komplikasi serius, bahkan fatal, bagi ibu dan bayi.</li>\r\n	<li>Konsultasikan dengan dokter kebidanan dan kandungan, jika Bunda didiagnosa dengan pre-eklampsia.</li>\r\n	<li>Pengobatan pre-eklampsia adalah dengan melahirkan si kecil. Jika kehamilan Bunda masih terlalu muda, maka Bunda, Ayah dan dokter dapat berdiskusi untuk mencari jalan terbaik.</li>\r\n</ul>\r\n\r\n<p><strong>Gejala Pre-eklampsia</strong></p>\r\n\r\n<ul>\r\n	<li>Terkadang pre-eklampsia muncul dan berkembang tanpa menunjukkan gejala apapun.</li>\r\n	<li>Pada beberapa kasus, peningkatan tekanan darah terjadi perlahan, tetapi umumnya peningkatan tekanan darah terjadi secara drastis dan tiba-tiba.</li>\r\n	<li><strong>Melakukan pemantauan dan pemeriksaan tekanan darah merupakan bagian penting dari perawatan kehamilan atau ANC</strong> mengingat gejala awal pre-eklampsia pada umumnya adalah peningkatan tekanan darah. Jangan lupa isi &ldquo;JURNAL&rdquo; ya Bunda</li>\r\n	<li>Tekanan darah 140/90 milimeter merkuri (mm Hg) atau lebih tinggi, yang tercatat dalam dua kali kesempatan dalam jarak setidaknya empat jam, merupakan kondisi yang abnormal dan harus diwaspadai.</li>\r\n	<li>Beberapa tanda dan gejala lain pre-eklampsia adalah:\r\n	<ul>\r\n		<li>Kelebihan protein dalam urin (proteinuria) atau timbulnya gejala/tanda gangguan ginjal.</li>\r\n		<li>Sangat kepala sangat parah</li>\r\n		<li>Perubahan pada penglihatan, termasuk kehilangan penglihatan temporer, penglihatan kabur atau sensitif terhadap cahaya.</li>\r\n		<li>Nyeri pada perut bagian atas, umumnya di bawah tulang rusak pada sisi kanan.</li>\r\n		<li>Mual atau muntah</li>\r\n		<li>Berkurangnya produksi urin atau air seni.</li>\r\n		<li>Berkurangnya trombosit darah (thrombocytopenia)</li>\r\n		<li>Terganggunya atau rusaknya fungsi hati/liver.</li>\r\n		<li>Kesulitan bernafas atau nafas pendek akibat cairan dalam paru-paru.</li>\r\n		<li>Peningkatan berat badan tiba-tiba dan bengkak (edema), khususnya di wajah atau tangan, seringkali timbul pada kondisi pre-eklampsia. Namun kondisi ini juga muncul pada kehamilan normal, sehingga tidak dapat diandalkan sebagai gejala pre-eklampsia.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Kapan Sebaiknya Berkonsultasi ke Dokter?</strong></p>\r\n\r\n<ul>\r\n	<li>Pastikan Bunda tidak melewatkan waktu kunjungan ke dokter agar pemantauan tekanan darah tidak terlewatkan.</li>\r\n	<li>Segera hubungi dokter atau ke Unit Gawat Darurat (UGD) jika Bunda mengalami sakit kepala hebat, penglihatan kabur, nyeri hebat pada perut atau kesulitan bernafas yang hebat.</li>\r\n	<li>Mengingat sakit kepala, mual, rasa nyeri dan sakit adalah keluhan yang biasa terjadi saat hamil, terkadang menjadi sulit bagi Bunda untuk memilah apakah kondisi ini normal atau mengindikasikan adanya masalah serius, khususnya jika ini merupakan kehamilan pertama Bunda. Disarankan untuk menghubungi dokter Bunda jika gejala ini timbul.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Penyebab Pre-eklampsia </strong></p>\r\n\r\n<ul>\r\n	<li>Penyebab pasti pre-eklampsia masih belum diketahui.</li>\r\n	<li>Para ahli meyakini komplikasi ini berawal dari plasenta, organ pemasok nutrisi bagi janin selama masa kehamilan.</li>\r\n	<li>Di awal kehamilan, terbentuk pembuluh-pembuluh darah baru yang kemudian berkembang sehingga pasokan darah ke plasenta menjadi efisien.</li>\r\n	<li>Pada perempuan dengan pre-eklampsia, pembuluh darah-pembuluh darah ini sepertinya tidak berkembang sebagaimana seharusnya; lebih sempit dibandingkan pembuluh darah normal dan memiliki reaksi yang berbeda terhadap perubahan hormon. Hal ini membatasi jumlah darah yang dapat mengalir melaluinya.</li>\r\n	<li>Dampak yang dapat timbul akibat kondisi di atas mencakup:\r\n	<ul>\r\n		<li>Kurangnya aliran darah ke rahim/kandungan</li>\r\n		<li>Kerusakan pembuluh darah</li>\r\n		<li>Masalah pada sistem imunitas atau kekebalan tubuh</li>\r\n		<li>Gen tertentu.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>Komplikasi terkait Tekanan Darah Tinggi Lain yang Dapat Timbul Selama Kehamilan.</strong></p>\r\n\r\n<p>Pre-eklampsia merupakan salah satu dari empat komplikasi terkait tekanan darah tinggi yang dapat timbul selama kehamilan. Tiga lainnya adalah:</p>\r\n\r\n<ul>\r\n	<li><strong>Hipertensi Gestasional.</strong></li>\r\n</ul>\r\n\r\n<p>Penderita hipertensi gestasional memiliki tekanan darah yang tinggi tetapi tidak terdapat kelebihan protein di air seninya atau tanda-tanda kerusakan organ lainnya. Beberapa pendeita hipertensi gestasional pada akhirnya mengalami pre-eklampsia.</p>\r\n\r\n<ul>\r\n	<li><strong>Hipertensi Kronis.</strong></li>\r\n</ul>\r\n\r\n<p>Hipertensi kronis adalah tekanan darah tinggi yang terjadi sebelum kehamilan atau sebelum usia kehamilan mencapai 20 minggu. Namun, karena tekanan darah tinggi umumnya tidak menunjukkan gejala, kemungkinan sulit untuk mendeteksinya saat kondisi ini terjadi.</p>\r\n\r\n<ul>\r\n	<li><strong>Hipertensi Kronis dengan Pre-eklampsia. </strong></li>\r\n</ul>\r\n\r\n<p>Kondisi ini terjadi pada perempuan yang mengalami tekanan darah tinggi kronis sebelum hamil dan berkembang semakin parah saat ia hamil dengan disertai adanya kandungan protein dalam air seninya atau komplikasi kesehatan lainnya selama kehamilannya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Faktor Resiko</strong></p>\r\n\r\n<p>Pre-eklampsia merupakan komplikasi yang hanya terjadi saat kehamilan. Berikut faktor resikonya:</p>\r\n\r\n<ul>\r\n	<li>Memiliki sejarah pre-eklampsia.</li>\r\n</ul>\r\n\r\n<p>Pernah mengidap pre-eklampsia, baik diri Bunda sendiri ataupun anggota keluarga lainnya, secara berarti meningkatkan resiko terjadinya komplikasi ini.</p>\r\n\r\n<ul>\r\n	<li>Kehamilan pertama</li>\r\n</ul>\r\n\r\n<p>Resiko tertinggi terkena pre-eklampsia adalah saat kehamilan pertama.</p>\r\n\r\n<ul>\r\n	<li>Pasangan baru</li>\r\n</ul>\r\n\r\n<p>Kehamilan yang terjadi bersama pasangan baru meningkatkan resiko terjadinya pre-eklampsia dibandingkan kehamilan kedua, ketiga dan seterusnya bersama pasangan yang sama.</p>\r\n\r\n<ul>\r\n	<li>Usia</li>\r\n</ul>\r\n\r\n<p>Resiko terjadinya pre-eklampsia lebih tinggi pada perempuan yang hamil di usia lebih dari 40 tahun.</p>\r\n\r\n<ul>\r\n	<li>Obesitas</li>\r\n</ul>\r\n\r\n<p>Resiko terjadinya pre-eklampsia lebih tinggi pada perempuan dengan obesitas.</p>\r\n\r\n<ul>\r\n	<li>Kehamilan kembar</li>\r\n</ul>\r\n\r\n<p>Pre-eklampsia lebih sering terjadi pada ibu hamil dengan bayi kembar.</p>\r\n\r\n<ul>\r\n	<li>Jarak kehamilan</li>\r\n</ul>\r\n\r\n<p>Kehamilan berjarak kurang dari dua tahun atau lebih dari 10 tahun memiliki resiko lebih tinggi terhadap pre-eklampsia.</p>\r\n\r\n<ul>\r\n	<li>Memiliki sejarah kondisi tertentu</li>\r\n</ul>\r\n\r\n<p>Mengidap kondisi tertentu sebelum hamil seperti tekanan darah tinggi kronis, sakit kepala migren, diabetes tipe 1 atau 2, penyakit ginjal, kecenderungan penggumpalan darah atau lupus, dapat meningkatkan resiko pre-eklampsia. &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Komplikasi yang Dapat Timbul</strong></p>\r\n\r\n<ul>\r\n	<li>Semakin parah dan semakin dini pre-eklampsia terjadi, resiko yang dihadapi ibu dan bayi juga semakin besar.</li>\r\n	<li>Pre-eklampsia dapat mengharuskan dilakukannya persalinan dipercepat baik melalui induksi atau operasi (sectio cesaria). Konsultasikan dengan dokter Bunda ya.</li>\r\n	<li>Komplikasi yang dapat timbul mencakup:</li>\r\n</ul>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>Berkurangnya Aliran Darah ke Plasenta.</li>\r\n</ul>\r\n\r\n<p>Pre-eklampsia berpengaruh terhadap pembuluh nadi yang membawa darah ke plasenta. Jika pasokan darah ke plasenta tidak cukup, jumlah oksigen dan nutrisi yang akan diterima si kecil di dalam rahim dapat berkurang dan hal ini dapat menyebabkan Pertumbuhan Janin Terhambat (PJT), Berat Badan Bayi Lahir Rendah (BBLR) atau kelahiran premature. Kelahiran premature dapat menimbulkan masalah pernafasan pada bayi.</p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>Plasenta Abrupsi<strong>.</strong></li>\r\n</ul>\r\n\r\n<p>Pre-eklampsia meningkatkan resiko Bunda terkena Plasenta Abrupsi, kondisi serius dimana sebagian atau seluruh plasenta terlepas dari dinding bagian dalam rahim sebelum si kecil lahir. Abrupsi berat dapat menyebabkan terjadinya perdarahan hebat dan kerusakan plasenta, yang bisa membahayakan jiwa Bunda dan si kecil.</p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>Sindroma HELLP</li>\r\n</ul>\r\n\r\n<p>HELLP merupakan singkatan dari kondisi terjadinya Hemolysis (kerusakan sel darah merah), peningkatan enzim Liver (atau hati), dan kadar atau jumlah trombosit rendah (Low Platelet). Sindroma ini dapat dengan cepat mengancam jiwa Bunda dan si kecil. Gejalanya adalah: mual dan muntah, sakit kepala dan nyeri di perut kanan bagian atas. Sindroma HELLP sangat berbahaya karena dapat menjadi pertanda adanya kerusakan pada sejumlah sistem organ tubuh. Pada beberapa kasus, sindroma ini muncul secara tiba-tiba, bahkan sebelum terdeteksi adanya kondisi tekanan darah tinggi.</p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>Eklampsia</li>\r\n</ul>\r\n\r\n<p>Saat pre-eklampsia tidak terkendali, eklampsia yang pada intinya adalah pre-eklampsia disertai kejang, dapat terjadi. Gejala eklampsia yang langsung terjadi diantaranya adalah nyeri pada perut bagian kanan atas, sakit kepala berat, penglihatan terganggu dan perubahan keadaan mental seperti menurunnya kewaspadaan. Dampak eklampsia yang sangat serius bagi ibu dan bayi, mengharuskan bayi untuk segera dilahirkan berapapun usia kehamilannya.</p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>Penyakit Jantung.</li>\r\n</ul>\r\n\r\n<p>Pre-eklampsia berpotensi meningkatkan resiko terkena gangguan pada jantung dan pembuluh darah jantung di masa mendatang. Resiko akan semakin bertambah jika sebelumnya pernah mengalami pre-eklampsia lebih dari satu satu kali atau kelahiran prematur. Untuk meminimalkan resiko, jaga berat badan ideal Bunda setelah melahirkan, konsumsi beragam sayuran dan buah-buahan, berolahraga teratur dan jangan merokok.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Kunjungan ke Dokter </strong></p>\r\n\r\n<p>Pre-eklampsia biasanya terdiagnosa saat Bunda melakukan kunjungan dan pemeriksaan kehamilan rutin. Apabila terdiagnosa, kemungkinan besar Bunda harus melakukan pemeriksaan kehamilan tambahan ke dokter kebidanan dan kandungan.</p>\r\n\r\n<p>Berikut hal-hal yang dapat Bunda dan Ayah persiapkan sebelum kunjungan ke dokter:</p>\r\n\r\n<ul>\r\n	<li>Tuliskan semua gejala yang Bunda alami dan rasakan, bahkan jika menurut Bunda itu adalah gejala kehamila normal. &nbsp;</li>\r\n	<li>Buat daftar semua obat-obatan, vitamin, suplemen yang Bunda konsumsi.</li>\r\n	<li>Jika memungkinkan, ajak Ayah, keluarga atau teman untuk membantu mengingat semua informasi yang diberikan saat kunjungan ke dokter.</li>\r\n	<li>Buat daftar pertanyaan untuk dokter Bunda sesuai kadar kepentingannya sebagai antisipasi terbatasnya waktu.</li>\r\n</ul>\r\n\r\n<p>Berikut adalah pertanyaan-pertanyaan umum terkait pre-eklampsia yang dapat Bunda tanyakan ke dokter:</p>\r\n\r\n<ul>\r\n	<li>Apakah kondisi ini telah mempengaruhi / membahayakan bayi saya?</li>\r\n	<li>Apakah aman untuk melanjutkan kehamilan ini?</li>\r\n	<li>Apakah pertanda atau gejala yang harus diwaspadai, dan kapan saya harus menghubungi dokter?</li>\r\n	<li>Seberapa sering saya harus kontrol, dan bagaimana kesehatan serta kesejahteraan bayi saya dimonitor?</li>\r\n	<li>Perawatan apa yang tersedia, dan mana yang dokter rekomendasikan?</li>\r\n	<li>Saya memiliki kondisi atau gangguan kesehatan lain. Bagaimana saya sebaiknya mengelola kondisi ini?</li>\r\n	<li>Adakah larangan aktivitas yang harus saya patuhi?</li>\r\n	<li>Apakah saya harus melahirkan melalui operasi section cesaria?</li>\r\n	<li>Selain pertanyaan-pertanyaan di atas, jangan ragu untuk bertanya jika ada yang terlintas saat konsultasi.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tes dan Diagnosa</strong></p>\r\n\r\n<p>Gejala yang timbul untuk dapat didiagnosa dengan pre-eklampsia adalah memiliki tekanan darah yang tinggi dan salah satu atau lebih komplikasi di bawah ini setelah kehamilan berusia lebih dari 20 minggu:</p>\r\n\r\n<ul>\r\n	<li>Terdapat kandungan protein di air seni atau proteinuria</li>\r\n	<li>Trombosit rendah</li>\r\n	<li>Gangguan fungsi liver/hati</li>\r\n	<li>Gejala atau tanda adanya gangguan ginjal selain protein dalam air seni.</li>\r\n	<li>Cairan di paru-paru (oedema paru)</li>\r\n	<li>Serangan sakit kepala</li>\r\n	<li>Gangguan penglihatan</li>\r\n</ul>\r\n\r\n<p>Sebelumnya, gejala untuk diagnosa pre-eklampsia adalah jika ibu hamil memiliki tekanan darah tinggi dan protein di dalam air seni. Namun, para ahli kini mengetahui bahwa memungkinkan untuk terkena pre-eclampsia walau tidak terdapat kadar protein dalam air seni.</p>\r\n\r\n<p>Tekanan darah yang melebihi 140/90 mm Hg pada ibu hamil dianggap abnormal. Namun, satu kali pengukuran dengan hasil tekanan darah yang tinggi tidak langsung berarti Bunda mengalami pre-eklampsia. Pada saat Bunda satu kali terdeteksi memiliki tekanan darah abnormal, atau cukup jauh lebih tinggi daripada tekanan darah Bunda biasanya, umumnya dokter Bunda akan memantau hasil pengukuran tekanan darah selanjutnya.</p>\r\n\r\n<p>Apabila hasil pengukuran tekanan darah Bunda empat jam setelah yang pertama tetap menunjukkan hasil abnormal, kemungkinan kecurigaan dokter bahwa Bunda mengalami pre-eklampsia terbukti. Dokter biasanya akan meminta Bunda untuk melakukan pengukuran tekanan darah tambahan serta melakukan tes darah dan air seni.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tes yang Dapat Dilakukan</strong></p>\r\n\r\n<p>Jika dokter Bunda mencurigai adanya pre-eklampsia, kemungkinan ada beberapa tes yang harus dilakukan:</p>\r\n\r\n<ul>\r\n	<li><strong>Tes Darah.</strong> Tes ini akan dapat membantu menentukan fungsi hati dan ginjal serta jumlah hemoglobin di dalam darah, sel yang membantu proses pembekuan darah.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Analisa Air Seni (Urin).</strong> Sampel air seni tunggal untuk mengukur rasio protein hingga kreatinin &ndash; senyawa kimia yang terkandung di dalam urin &ndash; dapat digunakan untuk membuat diagnosa. Sampel air seni (urin) yang diambil lebih dari 24 jam sebelumnya dapat digunakan untuk menghitung jumlah protein yang hilang di dalam urin dan merupakan petunjuk untuk mengetahui kegawatan pre-eklampsia.</li>\r\n	<li><strong>USG Janin.</strong> Umumnya dokter akan merekomendasikan untuk dilakukannya pengawasan dan pemantauan ketat terhadap pertumbuhan bayi dengan menggunakan USG. Citra si kecil yang terlihat saat pemeriksaan USG memungkinkan dokter untuk membuat taksiran berat badan janin dan jumlah cairan di dalam rahim (cairan amniotik).</li>\r\n	<li><strong>Tes Non-stres atau profil biofisik. </strong>Tes nonstres merupakan prosedur sederhana untuk menguji reaksi detak jantung janin saat ia bergerak. Profil biofisik memadukan hasil USG dan tes non-stres untuk mendapatkan informasi lebih banyak mengenai pernafasan, irama, pergerakan serta volume cairan amniotik di dalam rahim.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Perawatan dan Pengobatan</strong></p>\r\n\r\n<p>Satu-satunya penawar pre-eklampsia adalah kelahiran. Bunda dihadapkan pada resiko yang tinggi terhadap terjadinya kejang, abrupsi plasenta, stroke dan kemungkinan perdarahan hebat hingga tekanan darah Bunda turun. Jika usia kehamilan Bunda masih muda, kelahiran mungkin bukan merupakan hal yang terbaik bagi si kecil.</p>\r\n\r\n<p>Dokter akan memberitahu jadwal berkunjung Bunda untuk pemeriksaan kehamilan jika didiagnosa dengan pre-eklampsia, dan sepertinya Bunda harus lebih sering melakukannya dibandingkan dengan kehamilan tanpa komplikasi pre-eklampsia. Hal yang sama juga berlaku untuk tes darah, USG dan tes non-stres.</p>\r\n\r\n<p>Perawatan yang dapat dilakukan untuk pre-eklampsia diantaranya adalah:</p>\r\n\r\n<ul>\r\n	<li><strong>Pengobatan untuk menurunkan tekanan darah. </strong>Tanyakan dan diskusikan dengan dokter Bunda ya.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Pemberian corticosteroids.</strong> Jika Bunda menderita pre-eklampsia berat atau sindroma HELLP, pengobatan corticosteroid dapat untuk sementara meningkatkan fungsi liver/hati dan hemoglobin guna membantu memperpanjang usia kehamilan. Corticosteroid juga dapat membantu mematangkan paru-paru si kecil setidaknya dalam 48 jam. Hal ini merupakan langkah penting untuk mempersiapkan kehidupan bayi lahir premature. Tanyakan lebih jauh mengenai hal ini kepada dokter ya Bunda</li>\r\n	<li><strong>Bed rest.</strong> Umumnya ibu hamil dengan pre-eklampsia disarankan untuk melakukan bedrest. Namun penelitian menunjukkan bahwa tidak terlihat manfaat yang berarti. Selain itu dapat meningkatkan resiko terjadinya penggumpalan darah selain berdampak pada kondisi ekonomi dan kehidupan sosial Bunda. Diskusikan dengan dokter Bunda untuk hal ini ya.</li>\r\n	<li><strong>Rawat Inap. </strong>Pre-eklampsia berat kemungkinan mengharuskan Bunda untuk dirawat di rumah sakit guna perawatan yang lebih intensif dan uji yang lebih teratur untuk memonitor kesejahteraan janin serta memonitor volume cairan amniotik. Kekurangan cairan amniotik merupakan pertanda buruknya pasokan darah ke janin.</li>\r\n	<li><strong>Melahirkan. </strong>Jika Bunda didiagnosa dengan pre-eklampsia mendekati akhir kehamilan, umumnya dokter akan merekomendasikan untuk dilakukan percepatan kelahiran. Diskusikan dengan dokter Bunda ya.</li>\r\n</ul>\r\n\r\n<p>Umumnya tekanan darah Bunda akan kembali normal dalam 12 minggu setelah melahirkan, atau lebih cepat.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Pencegahan </strong></p>\r\n\r\n<ul>\r\n	<li>Walau para peneliti terus melakukan penelitian tentang cara pencegahan pre-eklampsia, namun sejauh ini belum ditemukan strategi yang jitu.</li>\r\n	<li>Mengkonsumsi lebih sedikit garam, mengubah aktivitas, membatasi asupan kalori, mengkonsumsi bawang putih atau minyak ikan tidak mengurangi resiko terhadap pre-eklampsia. Begitu juga dengan meningkatkan asupan vitamin E dan C.</li>\r\n	<li>Dalam beberapa kasus, konsumsi aspirin dalam dosis rendah dan suplemen Kalsium dapat membantu menurunkan resiko terhadap pre-eklampsia. Namun, langkah pencegahan ini hanya dapat dilakukan setelah Bunda berkonsultasi dengan dokter kandungan Bunda ya.</li>\r\n	<li>Sebelum kembali hamil, khususnya jika Bunda terkena pre-eklampsia pada kehamilan sebelumnya, langkah dan persiapan terbaik adalah dengan memastikan kondisi kesehatan Bunda sudah prima.</li>\r\n	<li>Kurangi berat badan jika memang dianjurkan oleh dokter dan pastikan kondisi lain seperti diabetes terkelola dengan baik.</li>\r\n	<li>Begitu hamil, rawat diri dan kehamilan Bunda serta si kecil dengan melakukan perawatan kehamilan sejak dini secara teratur.</li>\r\n	<li>Jika pre-eklampsia terdeteksi dini, Bunda, Ayah dan dokter dapat berkolaborasi untuk mencegah timbulnya komplikasi serta merencanakan langkah terbaik untuk Bunda dan si kecil.</li>\r\n	<li>Untuk saat ini, hal terbaik yang dapat dilakukan adalah mengikuti dan melakukan perawatan kehamilan dengan baik dan jangan lewatkan janji temu dengan dokter/bidan.</li>\r\n	<li>Bunda akan diukur tekanan darahnya dan diuji untuk melihat kadar protein dalam urin. Juga, penting bagi Bunda dan Ayah untuk cermat mengamati pertanda pre-eklampsia agar dapat segera menginformasikan dokter atau bidan Bunda dan segera mendapatkan perawatan.</li>\r\n</ul>\r\n', 18);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_static`
--

CREATE TABLE `jadwal_static` (
  `id_jadwal_static` int(11) NOT NULL,
  `judul_jadwal` varchar(100) NOT NULL,
  `judul_detail_jadwal` varchar(100) NOT NULL,
  `detail_jadwal` text NOT NULL,
  `post_jadwal` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal_static`
--

INSERT INTO `jadwal_static` (`id_jadwal_static`, `judul_jadwal`, `judul_detail_jadwal`, `detail_jadwal`, `post_jadwal`) VALUES
(90, 'Lakukan Observasi gerakan janin', 'Lakukan Observasi gerakan janin. Bagaimana?', '<p>Lakukan Observasi gerakan janin, sepuluh episode dalam 12 jam, atau 10 gerakan dalam 2 jam</p>\r\n', 35),
(91, 'Kunjungan ke dokter kandungan', 'Lakukan Evaluasi', '<p>Kunjungan ke dokter kandungan: Lakukan evaluasi keadaan umum Bunda dan faktor resiko serta status gizi Bunda</p>', 36),
(92, 'Kunjungan ke dokter anastesi', 'Kunjungan ke dokter anastesi', '<p>Kunjungan ke dokter anastesi untuk tatap muka pertama jika pasien direncanakan untuk melahirkan dengan operasi section atau pengelolaan rasa sakit dengan anastesi spinal (ILA)</p>', 36),
(93, 'Kunjungan ke konselor laktasi', 'Kunjungan ke konselor laktasi', '<p>Kunjungan ke konselor laktasi untuk kontak ke 2 (lihat &ldquo;7 Kontak Laktasi&rdquo;)</p>', 36),
(89, 'Kunjungan ke dokter kandungan', 'Kunjungan ke dokter kandungan', '<p>Lakukan kunjungan ke dokter kandungan untuk pemeriksaan rutin</p>', 35),
(88, 'Lakukan pengamatan dan observasi gerakan si kecil ', 'Lakukan pengamatan dan observasi gerakan si kecil. Bagaimana?', '<p>Lakukan pengamatan dan observasi gerakan si kecil ya Bunda, sepuluh episode dalam 12 jam, atau 10 gerakan dalam 2 jam</p>\r\n', 34),
(87, 'Kunjungan ke dokter kandungan', 'Kunjungan ke dokter kandungan', '<p>Lakukan kunjungan ke dokter kandungan untuk pemantauan pertumbuhan Bunda dan bayi.</p>', 33),
(86, 'Kunjungan ke dokter gizi', 'Kunjungan ke dokter gizi', '<p>Kunjungan ke dokter gizi untuk persiapan nutrisi saat menyusui serta pemantauan Berat Badan Bunda.</p>', 32),
(85, 'Kunjungan ke dokter kandungan', 'Lakukan Evaluasi', '<p>Kunjungan ke dokter kandungan: Lakukan evaluasi keadaan umum Bunda dan faktor resiko serta evaluasi status gizi</p>', 32),
(84, 'Kunjungan ke konselor laktasi', 'Kunjungan ke konselor laktasi', '<p>Kunjungan ke konselor laktasi. (lihat &ldquo;7 Kontak Laktasi&rdquo;)</p>', 31),
(83, 'Kunjungan ke dokter anak', 'Dokter anak memberikan konsultasi', '<p>Kunjungan ke dokter anak: sesuai indikasi, dokter anak memberikan konsultasi serta pengetahuan apabila ada gangguan pada janin</p>', 31),
(82, 'Kunjungan ke dokter kandungan', 'Lakukan pemantauan kondisi', '<p>Kunjungan ke dokter kandungan: Lakukan pemantauan kondisi Bunda, pertumbuhan janin dan letak plasenta</p>', 31),
(80, 'Kunjungan ke konselor laktasi', 'Kunjungan ke konselor laktasi', '<p>Kunjungan ke konselor laktasi. (lihat &ldquo;7 Kontak Laktasi&rdquo;)</p>', 30),
(81, 'Pemeriksaan Laboratorium', 'Lakukan Pemeriksaan Laboratorium Trimester 3', '<p>Pemeriksaan Laboratorium: Lakukan Pemeriksaan Laboratorium Trimester 3</p>', 31),
(79, 'Kunjungan ke dokter anak', 'Lakukan pemantauan kondisi', '<p>Kunjungan ke dokter anak: sesuai indikasi, dokter anak memberikan konsultasi serta pengetahuan apabila ada gangguan pada janin</p>', 30),
(78, 'Kunjungan ke dokter kandungan', 'Kunjungan ke dokter kandungan', '<p>Kunjungan ke dokter kandungan: Lakukan pemantauan kondisi Bunda, pertumbuhan janin dan letak plasenta</p>', 30),
(77, 'Pemeriksaan Laboratorium', 'Lakukan Pemeriksaan Laboratorium Trimester 3', '<p>Pemeriksaan Laboratorium: Lakukan Pemeriksaan Laboratorium Trimester 3</p>', 30),
(76, 'Kunjungan ke konselor laktasi', 'Kunjungan ke konselor laktasi', '<p>Kunjungan ke konselor laktasi. (lihat &ldquo;7 Kontak Laktasi&rdquo;)</p>', 29),
(75, 'Kunjungan ke dokter anak', 'Dokter anak memberikan konsultasi', '<p>Kunjungan ke dokter anak: sesuai indikasi, dokter anak memberikan konsultasi serta pengetahuan apabila ada gangguan pada janin</p>', 29),
(74, 'Kunjungan ke dokter kandungan', 'Lakukan pemantauan kondisi Bunda', '<p>Lakukan pemantauan kondisi Bunda, pertumbuhan janin dan letak plasenta.</p>', 29),
(73, 'Pemeriksaan Laboratorium', 'Lakukan Pemeriksaan Laboratorium Trimester 3', '<p>Pemeriksaan Laboratorium: Lakukan Pemeriksaan Laboratorium Trimester 3</p>', 29),
(72, 'Kunjungan ke konselor laktasi', 'Kunjungan ke konselor laktasi', '<p>Kunjungan ke konselor laktasi. (lihat &ldquo;7 Kontak Laktasi&rdquo;)</p>\r\n', 28),
(71, 'Kunjungan ke dokter anak', 'Dokter anak memberikan konsultasi. mengapa?', '<p>sesuai indikasi, dokter anak memberikan konsultasi serta pengetahuan apabila ada gangguan pada janin</p>\r\n', 28),
(70, 'Kunjungan ke dokter kandungan', 'Lakukan pemantauan kondisi', '<p>Lakukan pemantauan kondisi Bunda, pertumbuhan janin dan letak plasenta.</p>\r\n', 28),
(69, 'Pemeriksaan Laboratorium Trimester 3', 'Lakukan Pemeriksaan Laboratorium Trimester 3', '<p>Lakukan Pemeriksaan Laboratorium Trimester 3</p>\r\n', 28),
(68, 'Kunjungan ke dokter gizi 2', 'Kunjungan ke dokter gizi', '<p>&lt;p&gt;Pantau berat badan Ibu dan Bayi&lt;/p&gt;</p>\r\n', 27),
(67, 'Kunjungan ke dokter gizi 1', 'Kunjungan ke dokter gizi', '<p>Lakukan konseling nutrisi yang tepat</p>', 27),
(65, 'Kunjungan ke dokter kandungan 1', 'Kunjungan ke dokter kandungan', '<p>&lt;p&gt;Evaluasi keadaan umum ibu&lt;/p&gt;</p>\r\n', 27),
(66, 'Kunjungan ke dokter kandungan 2', 'Kunjungan ke dokter kandungan', '<p>Evaluasi faktor resiko jika morfological screening scan sudah dilakukan</p>', 27),
(64, 'Kunjungan ke dokter gizi 2', 'Kunjungan ke dokter gizi', '<p>Pantau berat badan Ibu dan Bayi</p>', 26),
(63, 'Kunjungan ke dokter gizi 1', 'Kunjungan ke dokter gizi', '<p>Lakukan konseling nutrisi yang tepat</p>', 26),
(62, 'Kunjungan ke dokter kandungan 2', 'Kunjungan ke dokter kandungan', '<p>Evaluasi faktor resiko jika morfological screening scan sudah dilakukan</p>', 26),
(61, 'Kunjungan ke dokter kandungan 1', 'Kunjungan ke dokter kandungan', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Evaluasi keadaan umum ibu</li>\r\n</ul>\r\n', 26),
(60, 'Konsultasi', 'Konsultasi ke dokter kandungan', '<p>Lakukan pemantauan pertumbuhan janin dan kondisi Bunda saat kunjungan ke dokter kandungan</p>\r\n', 25),
(59, 'Buat janji untuk pemeriksaan Laboratorium Trimester 1 di Prodia', 'Buat janji untuk pemeriksaan Laboratorium Trimester 1 di Prodia', '<p>Buat janji untuk pemeriksaan Laboratorium Trimester 1 di Prodia ya Bun</p>\r\n', 5),
(58, 'Pemeriksaan Laboratorium Trimester 1 dan USG', 'Lakukan Pemeriksaan Laboratorium Trimester 1 dan USG', '<p>Lakukan pemeriksaan Laboratorium Trimester 1 dan USG (link ke serba-serbi pemeriksaan laboratorium selama kehamilan)</p>\r\n', 5),
(56, 'Lakukan USG', 'Lakukan USG, mengapa?', '<p>Lakukan USG untuk&nbsp;morfological screening scan (di unit fetomaternal)</p>\r\n', 24),
(57, 'Kunjungan pertama ke dokter kandungan', 'Kunjungan ke dokter kandungan', '<p>Lakukan kunjungan pertama ke dokter kandungan ya Bun untuk memastikan usia kehamilan dan letak kehamilan, apakah di dalam atau di luar rahim.</p>\r\n', 5),
(55, 'Konsultasi Lanjutan', 'Segera konsultasikan ke dokter Bunda jika terjadi pembengkakan', '<p>Segera konsultasikan ke dokter Bunda jika terjadi pembengkakan atau edema yang berat, besar dan tiba-tiba karena dapat merupakan pertanda pre-eklampsia.</p>', 23),
(54, 'Konsultasi', 'Konsultasi ke dokter kandungan', '<p>Konsultasi ke dokter kandungan terkait kondisi Bunda dan pertumbuhan serta perkembangan bayi</p>\r\n', 23),
(53, 'Konsultasi', 'Konsultasi ke dokter kandungan', '<p>Konsultasi ke dokter kandungan terkait kondisi Bunda dan pertumbuhan serta perkembangan bayi</p>\r\n', 22),
(102, 'Lakukan tes kehamilan', 'Apa yang harus dilakukan?', '<p>Jika tes kehamilan Bunda positif, buat janji temu dengan dokter atau bidan ya Bun untuk pemeriksaan pertama.</p>\r\n\r\n<p>Jika tes kehamilan Bunda negatif, ulangi lagi pada minggu ke-5 jika Bunda belum mendapatkan haid.</p>\r\n', 2),
(52, 'Konsultasi', 'Konsultasi ke dokter kandungan', '<p>Konsultasi ke dokter kandungan terkait kondisi Bunda dan pertumbuhan serta perkembangan bayi</p>', 21),
(103, 'Lakukan tes kehamilan', 'Apa yang harus dilakukan?', '<p>Jika tes kehamilan Bunda positif, buat janji temu dengan dokter atau bidan ya Bun untuk pemeriksaan pertama.</p>\r\n\r\n<p>Jika tes kehamilan Bunda negatif, ulangi lagi pada minggu ke-5 jika Bunda belum mendapatkan haid.</p>\r\n', 3),
(104, 'Lakukan tes kehamilan', 'Apa yang harus dilakukan?', '<p>Jika tes kehamilan Bunda positif, buat janji temu dengan dokter atau bidan ya Bun untuk pemeriksaan pertama.</p>\r\n\r\n<p>Jika tes kehamilan Bunda negatif, ulangi lagi pada minggu ke-5 jika Bunda belum mendapatkan haid.</p>\r\n', 4),
(94, 'Kunjungan ke dokter kandungan', 'Kunjungan ke dokter kandungan. Mengapa?', '<p>Lakukan kunjungan ke dokter kandungan untuk observasi gerakan janin.</p>\r\n', 37),
(96, 'Lakukan Pelvimetri klinis', 'Lakukan Pelvimetri klinis', '<p>Lakukan Pelvimetri klinis</p>', 38),
(97, 'Kunjungan ke dokter kandungan', 'Kunjungan ke dokter kandungan', '<p>Lakukan kunjungan ke dokter kandungan untuk observasi gerakan janin.</p>', 39),
(98, 'Lakukan Pelvimetri klinis', 'Lakukan Pelvimetri klinis', '<p>Lakukan Pelvimetri klinis</p>', 39),
(99, 'Kunjungan ke dokter kandungan', 'Kunjungan ke dokter kandungan', '<p>Lakukan kunjungan ke dokter kandungan untuk observasi gerakan janin.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Konsultasikan untuk rencana persalinan apakah normal atau sesar</li>\r\n	<li>Jika normal apakah induksi saat 40 atau 41 minggu</li>\r\n	<li>Jika ditunggu hingga 41 minggu, Bunda dianjurkan untuk dilakukan rekam jantung janin atau CTG setiap 2 hari sekali sampai 41 mgg</li>\r\n</ul>\r\n', 40),
(100, 'Lakukan konsultasi ke dokter Jantung', 'Lakukan konsultasi ke dokter Jantung untuk EKG jika akan dilakukan operasi.', '<p>Lakukan konsultasi ke dokter Jantung untuk EKG jika akan dilakukan operasi.</p>\r\n\r\n<ul>\r\n	<li>Jika pasien partus normal, maka dilakukan toleransi sehingga tidak perlu konsultasi</li>\r\n</ul>\r\n', 40),
(101, 'Lakukan tes kehamilan', 'Apa yang harus dilakukan?', '<p>Jika tes kehamilan Bunda positif, buat janji temu dengan dokter atau bidan ya Bun untuk pemeriksaan pertama.</p>\r\n\r\n<p>Jika tes kehamilan Bunda negatif, ulangi lagi pada minggu ke-5 jika Bunda belum mendapatkan haid.</p>\r\n', 1),
(105, 'Kunjungan antenatal ke dokter kandungan', 'Kunjungan antenatal ke dokter kandungan', '<p>Kunjungan antenatal ke dokter kandungan</p>\r\n', 6),
(106, 'Kunjungan pertama ke dokter jantung *', 'Kunjungan pertama ke dokter jantung *', '<p>Kunjungan pertama ke dokter jantung *</p>\r\n\r\n<p>*Kunjungan ke dokter spesialis terkait didasari oleh kondisi dan indikasi yang ada pada ibu sesuai dengan hasil kunjungan ke dokter kandungan (bila ada riwayat penyakit jantung bawaan, hipertensi tingkat 2, diabetes, dan malnutrisi pada ibu)</p>\r\n', 6),
(107, 'Kunjungan pertama ke dokter internis*', 'Kunjungan pertama ke dokter internis*', '<p>Kunjungan pertama ke dokter internis*</p>\r\n\r\n<p>*Kunjungan ke dokter spesialis terkait didasari oleh kondisi dan indikasi yang ada pada ibu sesuai dengan hasil kunjungan ke dokter kandungan (bila ada riwayat penyakit jantung bawaan, hipertensi tingkat 2, diabetes, dan malnutrisi pada ibu)</p>\r\n', 6),
(108, 'Kunjungan pertama ke dokter/ahli gizi *', 'Kunjungan pertama ke dokter/ahli gizi *', '<p>Kunjungan pertama ke dokter/ahli gizi*</p>\r\n\r\n<p>*Kunjungan ke dokter spesialis terkait didasari oleh kondisi dan indikasi yang ada pada ibu sesuai dengan hasil kunjungan ke dokter kandungan (bila ada riwayat penyakit jantung bawaan, hipertensi tingkat 2, diabetes, dan malnutrisi pada ibu)</p>\r\n', 6),
(109, 'Pemeriksaan Laboratorium Trimester 1 dan USG', 'Pemeriksaan Laboratorium Trimester 1 dan USG', '<p>Pemeriksaan Laboratorium Trimester 1 dan USG</p>\r\n', 6),
(110, 'Kunjungan ke dokter kandungan', 'Kunjungan ke dokter kandungan', '<p>Kunjungan ke dokter kandungan</p>\r\n', 7),
(111, 'Kunjungan pertama ke dokter jantung *', 'Kunjungan pertama ke dokter jantung *', '<p>* Kunjungan ke dokter spesialis terkait didasari oleh kondisi dan indikasi yang ada pada ibu sesuai dengan hasil kunjungan ke dokter kandungan (bila ada riwayat penyakit jantung bawaan, hipertensi tingkat 2, diabetes, dan malnutrisi pada ibu)</p>\r\n', 7),
(112, 'Kunjungan pertama ke dokter internis *', 'Kunjungan pertama ke dokter internis *', '<p>* Kunjungan ke dokter spesialis terkait didasari oleh kondisi dan indikasi yang ada pada ibu sesuai dengan hasil kunjungan ke dokter kandungan (bila ada riwayat penyakit jantung bawaan, hipertensi tingkat 2, diabetes, dan malnutrisi pada ibu)</p>\r\n', 7),
(113, 'Kunjungan pertama ke dokter/ahli gizi *', 'Kunjungan pertama ke dokter/ahli gizi *', '<p>* Kunjungan ke dokter spesialis terkait didasari oleh kondisi dan indikasi yang ada pada ibu sesuai dengan hasil kunjungan ke dokter kandungan (bila ada riwayat penyakit jantung bawaan, hipertensi tingkat 2, diabetes, dan malnutrisi pada ibu)</p>\r\n', 7),
(114, 'Buat janji untuk pemeriksaan Laboratorium Trimester 1 dan USG', 'Pemeriksaan Laboratorium Trimester 1 dan USG', '<p>Pemeriksaan Laboratorium Trimester 1 dan USG</p>\r\n', 7),
(115, 'Kunjungan antenatal ke dokter kandungan', 'Kunjungan antenatal ke dokter kandungan', '<p>Kunjungan antenatal ke dokter kandungan</p>\r\n', 8),
(116, 'Kunjungan pertama ke dokter jantung *', 'Kunjungan pertama ke dokter jantung *', '<p>* Kunjungan ke dokter spesialis terkait didasari oleh kondisi dan indikasi yang ada pada ibu sesuai dengan hasil kunjungan ke dokter kandungan (bila ada riwayat penyakit jantung bawaan, hipertensi tingkat 2, diabetes, dan malnutrisi pada ibu)</p>\r\n', 8),
(117, 'Kunjungan pertama ke dokter internis *', 'Kunjungan pertama ke dokter internis *', '<p>* Kunjungan ke dokter spesialis terkait didasari oleh kondisi dan indikasi yang ada pada ibu sesuai dengan hasil kunjungan ke dokter kandungan (bila ada riwayat penyakit jantung bawaan, hipertensi tingkat 2, diabetes, dan malnutrisi pada ibu)</p>\r\n', 8),
(118, 'Kunjungan pertama ke dokter/ahli gizi *', 'Kunjungan pertama ke dokter/ahli gizi *', '<p>* Kunjungan ke dokter spesialis terkait didasari oleh kondisi dan indikasi yang ada pada ibu sesuai dengan hasil kunjungan ke dokter kandungan (bila ada riwayat penyakit jantung bawaan, hipertensi tingkat 2, diabetes, dan malnutrisi pada ibu)</p>\r\n', 8),
(119, 'Lakukan kunjungan ke dokter gizi', 'Lakukan kunjungan ke dokter gizi. Mengapa?', '<p>Lakukan kunjungan ke dokter gizi ya Bun mengingat asupan nutrisi yang baik dan benar sangat penting untuk mendapatkan kehamilan yang berkualitas.</p>\r\n', 9),
(120, 'Kunjungan ke dokter kandungan', 'Kunjungan ke dokter kandungan. Mengapa?', '<p>Kunjungan ke dokter kandungan. Lakukan skrining awal anatomi janin dan organ reproduksi serta skrining genetik di unit prenatal diagnostic/fetomaternal</p>\r\n', 10),
(121, 'Kunjungan ke dokter kandungan', 'Kunjungan ke dokter kandungan. Mengapa?', '<p>Kunjungan ke dokter kandungan. Lakukan skrining awal anatomi janin dan organ reproduksi serta skrining genetik di unit prenatal diagnostic/fetomaternal</p>\r\n', 11),
(122, 'Kunjungan ke dokter kandungan', 'Kunjungan ke dokter kandungan. Mengapa?', '<p>Kunjungan ke-tiga ke dokter kandungan. Lakukan periksakan dan evaluasi keadaan umum, status gizi dan faktor risiko yang menyertai kehamilan</p>\r\n', 12),
(123, 'Kunjungan ke dokter kandungan', 'Kunjungan ke dokter kandungan. Mengapa?', '<p>Kunjungan ke dokter kandungan. Lakukan periksakan dan evaluasi keadaan umum, status gizi dan faktor risiko yang menyertai kehamilan</p>\r\n', 13),
(124, 'Lakukan fetal growth scan', 'Kunjungan ke dokter kandungan. Mengapa?', '<p>Kunjungan ke dokter kandungan untuk melakukan <em>fetal growth scan</em></p>\r\n', 14),
(125, 'valuasi keadaan umum', 'Kunjungan antenatal ke dokter kandungan. Mengapa?', '<p>Kunjungan antenatal ke dokter kandungan untuk evaluasi keadaan umum ,status gizi dan faktor resiko</p>\r\n', 15),
(126, 'Kunjungan kedua ke dokter internis *', 'Kunjungan kedua ke dokter internis. Mengapa? *', '<p>Kunjungan kedua ke dokter internis* (jika ada indikasi dan atas intruksi dokter kandungan untuk pasien dengan hipertensi, diabetes, dll)</p>\r\n', 15),
(127, 'Lakukan pemeriksaan laboratorium Trimester Kedua', 'Lakukan pemeriksaan laboratorium Trimester Kedua', '<p>Lakukan pemeriksaan laboratorium Trimester Kedua ya Bunda.</p>\r\n', 15),
(128, 'Kunjungan antenatal ke dokter kandungan', 'Kunjungan antenatal ke dokter kandungan', '<p>Kunjungan antenatal ke dokter kandungan</p>\r\n', 16),
(129, 'Pemeriksaan Laboratorium Trimester 2', 'Pemeriksaan Laboratorium Trimester 2', '<p>Pemeriksaan Laboratorium Trimester 2</p>\r\n', 16),
(130, 'Kunjungan ke dokter gizi', 'Kunjungan ke dokter gizi. Mengapa?', '<p>Kunjungan ke dokter gizi. Lakukan kontrol gizi, asupan mikronutrisi, dan pemantauan berat badan (BB) ibu dan bayi</p>\r\n', 16),
(131, 'Kunjungan ke dokter kandungan', 'Kunjungan ke dokter kandungan', '<p>Kunjungan ke dokter kandungan</p>\r\n', 17),
(132, 'Pemeriksaan Laboratorium Trimester 2', 'Pemeriksaan Laboratorium Trimester 2', '<p>Pemeriksaan Laboratorium Trimester 2</p>\r\n', 17),
(133, 'Kunjungan ke dokter gizi', 'Kunjungan ke dokter gizi. Mengapa?', '<p>Kunjungan ke dokter gizi. Lakukan kontrol gizi, asupan mikronutrisi, dan pemantauan berat badan (BB) ibu dan bayi</p>\r\n', 1),
(134, 'Kunjungan antenatal ke dokter kandungan', 'Kunjungan antenatal ke dokter kandungan', '<p>Kunjungan antenatal ke dokter kandungan</p>\r\n', 18),
(135, 'Lakukan morfological', 'Lakukan morfological. Mengapa?', '<p>Melakukan <em>morfological screening scan</em> (di unit fetomaternal)</p>\r\n', 18),
(136, 'Lakukan fetal growth scan', 'Lakukan fetal growth scan', '<p>Lakukan growth scan atau pemindaian pertumbuhan janin saat ke dokter kandungan Bunda</p>\r\n', 19),
(137, 'Evaluasi keadaan umum ibu', 'Kunjungan ke dokter kandungan.Mengapa?', '<p>Saat berkunjung ke dokter kandungan, lakukan evaluasi keadaan umum ibu</p>\r\n', 20),
(138, 'Evaluasi faktor resiko jika morfological screening scan ', 'Kunjungan ke dokter kandungan. Mengapa?', '<p>Saat berkunjung ke dokter kandungan, lakukan evaluasi faktor resiko jika morfological screening scan sudah dilakukan</p>\r\n', 20),
(139, 'Selamat! Bunda sudah memasuki Trimester Ketiga', 'Lakukan kunjungan ke dokter atau bidan. Mengapa?', '<p>Kunjungan ke dokter atau bidan kini sebaiknya Bunda lakukan setiap 2 minggu.</p>\r\n', 28),
(140, 'Lakukan kunjungan ke dokter kandungan untuk pemeriksaan rutin', 'Lakukan kunjungan ke dokter kandungan untuk pemeriksaan rutin. Kapan?', '<p>Lakukan kunjungan ke dokter kandungan untuk pemeriksaan rutin. Mulai minggu ini kunjungan dianjurkan untuk dilakukan seminggu sekali</p>\r\n', 35);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_user`
--

CREATE TABLE `jadwal_user` (
  `id_jadwal_user` int(11) NOT NULL,
  `nama_rs` varchar(100) NOT NULL,
  `nama_dokter` varchar(50) NOT NULL,
  `waktu_buat_janji` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `waktu_pertemuan` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `waktu_pengingat` int(11) NOT NULL,
  `status_jadwal` varchar(5) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_jadwal_static` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal_user`
--

INSERT INTO `jadwal_user` (`id_jadwal_user`, `nama_rs`, `nama_dokter`, `waktu_buat_janji`, `waktu_pertemuan`, `waktu_pengingat`, `status_jadwal`, `id_user`, `id_jadwal_static`) VALUES
(2630, '', '', '2016-10-27 18:35:46', '0000-00-00 00:00:00', 0, 'belum', 158, 96),
(4877, '', '', '2016-10-31 21:09:32', '2016-11-01 08:09:32', 1, 'belum', 182, 64),
(2632, '', '', '2016-10-27 18:35:46', '0000-00-00 00:00:00', 0, 'belum', 160, 96),
(129279, '', '', '2016-11-21 16:19:02', '2016-11-21 16:19:02', 1, 'belum', 1595, 140),
(2626, '', '', '2016-10-27 18:35:46', '0000-00-00 00:00:00', 0, 'belum', 154, 96),
(2625, '', '', '2016-10-27 18:35:46', '0000-00-00 00:00:00', 0, 'belum', 153, 96),
(5169, '', '', '2016-11-01 18:49:46', '2016-11-02 05:49:46', 1, 'belum', 185, 110),
(2616, '', '', '2016-10-27 18:35:46', '0000-00-00 00:00:00', 0, 'belum', 142, 96),
(2617, '', '', '2016-10-27 18:35:46', '0000-00-00 00:00:00', 0, 'belum', 143, 96),
(5295, '', '', '2016-11-02 00:54:27', '2016-11-02 11:54:27', 1, 'belum', 187, 86),
(5274, '', '', '2016-11-01 22:53:46', '2016-11-02 09:53:46', 1, 'belum', 186, 127),
(5253, '', '', '2016-11-01 22:53:46', '2016-11-02 09:53:46', 1, 'belum', 186, 106),
(5232, '', '', '2016-11-01 22:53:46', '2016-11-02 09:53:46', 1, 'belum', 186, 61),
(5211, '', '', '2016-11-01 22:53:46', '2016-11-02 09:53:46', 1, 'belum', 186, 82),
(5190, '', '', '2016-11-01 18:49:46', '2016-11-02 05:49:46', 1, 'belum', 185, 131),
(11843, '', '', '2016-11-08 14:24:53', '2016-11-08 14:24:53', 1, 'belum', 261, 103),
(4727, '', '', '2016-10-31 18:29:43', '0000-00-00 00:00:00', 0, 'belum', 158, 139),
(4728, '', '', '2016-10-31 18:29:43', '0000-00-00 00:00:00', 0, 'belum', 160, 139),
(4729, '', '', '2016-10-31 18:29:43', '0000-00-00 00:00:00', 0, 'belum', 161, 139),
(4730, '', '', '2016-10-31 18:29:43', '0000-00-00 00:00:00', 0, 'belum', 162, 139),
(2825, 'test', 'etst', '2017-09-05 03:07:40', '2016-11-17 09:53:33', 3, 'belum', 164, 103),
(4921, '', '', '2016-10-31 21:09:32', '2016-11-01 08:09:32', 1, 'belum', 182, 126);

-- --------------------------------------------------------

--
-- Table structure for table `jurnal_bayi`
--

CREATE TABLE `jurnal_bayi` (
  `id_jurnal_bayi` int(11) NOT NULL,
  `panjang_tubuh` int(11) NOT NULL,
  `berat_tubuh` int(11) NOT NULL,
  `denyut_jantung` int(11) NOT NULL,
  `plasenta_bentuk` varchar(20) NOT NULL,
  `plasenta_proporsi` varchar(20) NOT NULL,
  `plasenta_ketebalan` varchar(20) NOT NULL,
  `plasenta_letak` varchar(20) NOT NULL,
  `cairan_ketuban` varchar(20) NOT NULL,
  `kelainan_kongenital` varchar(20) NOT NULL,
  `waktu_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurnal_bayi`
--

INSERT INTO `jurnal_bayi` (`id_jurnal_bayi`, `panjang_tubuh`, `berat_tubuh`, `denyut_jantung`, `plasenta_bentuk`, `plasenta_proporsi`, `plasenta_ketebalan`, `plasenta_letak`, `cairan_ketuban`, `kelainan_kongenital`, `waktu_input`, `id_user`) VALUES
(1, 21, 4, 120, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'tidak ada', '2016-09-13 07:14:04', 1),
(5, 1, 2, 3, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'tidak ada', '2016-10-04 08:37:22', 1),
(7, 30, 2, 60, 'normal', 'normal', 'normal', 'normal', 'normal', 'mayor', '2016-11-19 05:36:09', 1),
(8, 12, 125, 0, 'Tidak Normal', 'Normal', 'Normal', 'Tidak Normal', 'Banyak', 'Minor', '2016-11-29 15:52:00', 164),
(9, 12, 42, 678, 'Tidak Normal', 'Normal', 'Tidak Normal', 'Normal', 'Banyak', 'Minor', '2016-11-29 16:01:11', 164),
(10, 50, 80, 30, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-11-30 06:20:36', 164),
(11, 0, 0, 0, 'Normal', 'Tidak Normal', 'Normal', 'Normal', 'Banyak', 'Tidak Ada', '2016-11-30 06:31:22', 164),
(12, 123, 1233, 1551, 'Normal', 'Normal', 'Normal', 'Normal', 'Sedikit', 'Mayor', '2016-11-30 06:35:09', 164),
(13, 50, 80, 80, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Minor', '2016-12-01 04:17:40', 174),
(14, 55, 90, 40, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-01 04:19:28', 174),
(15, 2, 5, 6, 'Normal', 'Tidak Normal', 'Normal', 'Tidak Normal', 'Sedikit', 'Minor', '2016-12-04 05:33:59', 1682),
(16, 0, 0, 0, 'Tidak Normal', 'Tidak Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-04 05:47:02', 1682),
(17, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-04 05:59:07', 1682),
(18, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-04 06:14:54', 1682),
(19, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-04 06:15:04', 1682),
(20, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-04 06:15:56', 1682),
(21, 0, 0, 0, 'Normal', 'Tidak Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-04 14:47:08', 1682),
(22, 0, 0, 0, 'Normal', 'Tidak Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-04 14:48:35', 1682),
(23, 0, 0, 0, 'Tidak Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-04 14:51:45', 1682),
(24, 0, 0, 0, 'Normal', 'Tidak Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-04 14:52:35', 1682),
(25, 0, 0, 0, 'Tidak Normal', 'Tidak Normal', 'Tidak Normal', 'Tidak Normal', 'Normal', 'Tidak Ada', '2016-12-04 14:53:15', 1682),
(26, 0, 0, 0, 'Normal', 'Tidak Normal', 'Normal', 'Tidak Normal', 'Banyak', 'Mayor', '2016-12-04 14:56:04', 1682),
(27, 0, 0, 0, 'Normal', 'Tidak Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-04 14:56:42', 1682),
(28, 0, 0, 0, 'Normal', 'Tidak Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-04 14:57:09', 1682),
(29, 0, 0, 0, 'Tidak Normal', 'Tidak Normal', 'Tidak Normal', 'Tidak Normal', 'Normal', 'Tidak Ada', '2016-12-04 14:58:10', 1682),
(30, 0, 0, 0, 'Normal', 'Tidak Normal', 'Tidak Normal', 'Tidak Normal', 'Normal', 'Tidak Ada', '2016-12-04 14:58:23', 1682),
(31, 0, 0, 0, 'Tidak Normal', 'Normal', 'Tidak Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-04 15:03:44', 1682),
(32, 0, 0, 0, 'Normal', 'Tidak Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-04 15:06:20', 1682),
(33, 12, 13, 14, 'Tidak Normal', 'Normal', 'Tidak Normal', 'Normal', 'Sedikit', 'Minor', '2016-12-04 15:34:13', 1682),
(34, 12, 121241, 123, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-04 15:42:01', 164),
(35, 1, 1, 3, 'Tidak Normal', 'Tidak Normal', 'Tidak Normal', 'Tidak Normal', 'Sedikit', 'Minor', '2016-12-05 07:59:10', 164),
(36, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-05 16:19:13', 154),
(37, 50, 15, 120, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-06 05:07:26', 1581),
(38, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-06 05:50:57', 154),
(39, 150, 45, 102, 'Normal', 'Normal', 'Tidak Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-06 08:08:10', 1330),
(40, 0, 2800, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-06 10:01:58', 199),
(41, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-07 04:10:08', 1330),
(42, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-09 14:37:02', 1268),
(43, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-09 14:38:04', 1268),
(44, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-19 00:50:27', 1826),
(45, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-21 08:32:52', 173),
(46, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-22 02:25:03', 173),
(47, 0, 213, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-24 09:59:33', 1850),
(48, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-28 14:12:37', 1876),
(49, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-30 08:34:56', 1103),
(50, 0, 39, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2016-12-30 23:01:48', 1878),
(51, 0, 54, 140, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-01-07 19:41:25', 1636),
(52, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-01-16 01:50:39', 1956),
(53, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-01-16 10:08:38', 951),
(54, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-01-18 01:06:58', 173),
(55, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-01-18 01:07:31', 173),
(56, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-01-18 01:11:17', 173),
(57, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-01-18 02:19:45', 173),
(58, 17, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-01-21 12:34:52', 1979),
(59, 1600, 5800, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-01-22 05:44:19', 1985),
(60, 0, 7100, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-01-27 03:28:45', 1991),
(61, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-01-27 09:17:19', 2011),
(62, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-01-27 12:03:39', 2013),
(63, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-01-30 06:51:08', 173),
(64, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-02-02 05:59:31', 1633),
(65, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-02-03 23:49:00', 1937),
(66, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-02-06 03:38:53', 2038),
(67, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-02-06 03:40:47', 2038),
(68, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-02-10 21:13:55', 2052),
(69, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-02-10 21:15:16', 2052),
(70, 5, 300, 12, 'Normal', 'Normal', 'Normal', 'Normal', 'Sedikit', 'Minor', '2017-02-15 11:30:01', 2072),
(71, 0, 745, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-02-16 15:08:23', 1850),
(72, 48000, 2700, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Banyak', 'Tidak Ada', '2017-02-22 05:41:00', 1915),
(73, 0, 1328, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-03-01 06:00:54', 2113),
(74, 10, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-03-02 09:00:28', 2117),
(75, 100, 100, 100, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-03-05 13:34:43', 2118),
(76, 0, 0, 0, 'Tidak Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-03-06 04:21:37', 2129),
(77, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-03-14 07:15:06', 2149),
(78, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-03-14 07:21:15', 2149),
(79, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-03-24 03:03:50', 2185),
(80, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-03-25 15:31:49', 2190),
(81, 163, 5600, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-04-03 23:32:59', 2207),
(82, 35, 1000, 78, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-04-10 16:00:39', 2236),
(83, 0, 2500, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-04-12 01:14:59', 2212),
(84, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-04-15 02:07:12', 2241),
(85, 5, 5, 2, 'Tidak Normal', 'Tidak Normal', 'Tidak Normal', 'Tidak Normal', 'Banyak', 'Minor', '2017-04-21 09:55:49', 2272),
(86, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-04-22 22:21:26', 1899),
(87, 10, 50, 60, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-04-30 15:43:34', 2292),
(88, 0, 37, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-04-30 17:09:34', 2018),
(89, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-05-08 08:38:57', 2315),
(90, 0, 3097, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-05-08 14:13:53', 2335),
(91, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-05-13 10:03:44', 2345),
(92, 0, 486, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-06-05 02:45:11', 2397),
(93, 10, 250, 25, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-06-06 04:19:15', 2288),
(94, 58, 147, 50, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-06-06 04:19:51', 2288),
(95, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-06-07 16:25:53', 2409),
(96, 10, 10, 10, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-06-10 00:07:18', 2418),
(97, 2395, 1217, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-06-14 11:37:50', 2011),
(98, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-06-25 23:58:41', 2253),
(99, 1480, 610, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-06-26 21:09:41', 2435),
(100, 0, 1305, 142, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-07-03 03:53:23', 2438),
(101, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-07-07 13:46:01', 2261),
(102, 15, 10, 15, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-07-10 06:38:27', 2390),
(103, 17, 17, 17, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-07-10 06:40:12', 2390),
(104, 1480, 640, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-07-11 07:30:01', 2435),
(105, 0, 775, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-07-16 10:26:49', 2431),
(106, 20, 200, 20, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-07-17 09:01:58', 1866),
(107, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-07-18 08:28:40', 1866),
(108, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-07-18 08:52:23', 1866),
(109, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-07-18 08:53:43', 1866),
(110, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-07-18 08:54:45', 1866),
(111, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-07-18 08:55:43', 1866),
(112, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-07-18 08:56:16', 1866),
(113, 12, 35, 54, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-07-21 07:06:08', 305),
(114, 13, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-07-21 07:06:35', 305),
(115, 0, 368, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-08-01 23:58:50', 2472),
(116, 12, 12, 3, 'Tidak Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-08-03 10:01:03', 1866),
(117, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-08-04 09:04:09', 2503),
(118, 100, 100, 100, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-08-04 14:00:29', 1866),
(119, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-08-04 14:02:13', 1866),
(120, 100, 100, 100, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-08-04 14:09:43', 164),
(121, 99, 99, 99, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-08-04 14:14:38', 305),
(122, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-08-07 03:29:54', 164),
(123, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-08-07 03:30:29', 164),
(124, 11, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-08-08 00:19:38', 2510),
(125, 11, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-08-08 00:20:08', 2510),
(126, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-08-16 12:58:34', 2531),
(127, 355, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-08-26 06:39:26', 2520),
(128, 35, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-08-26 07:39:19', 2520),
(129, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-08-26 08:30:46', 2520),
(130, 799, 84, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-08-26 15:12:25', 2551),
(131, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-09-10 15:56:02', 0),
(132, 0, 0, 0, 'Normal', 'Normal', 'Normal', 'Normal', 'Normal', 'Tidak Ada', '2017-09-11 02:11:41', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jurnal_kehamilan`
--

CREATE TABLE `jurnal_kehamilan` (
  `id_jurnal_kehamilan` int(11) NOT NULL,
  `tinggi_tubuh` int(11) NOT NULL,
  `berat_tubuh` int(11) NOT NULL,
  `denyut_jantung` int(11) NOT NULL,
  `tekanan_darah` int(11) NOT NULL,
  `suhu_tubuh` int(11) NOT NULL,
  `pernapasan` int(11) NOT NULL,
  `lingkar_lengan` int(11) NOT NULL,
  `waktu_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurnal_kehamilan`
--

INSERT INTO `jurnal_kehamilan` (`id_jurnal_kehamilan`, `tinggi_tubuh`, `berat_tubuh`, `denyut_jantung`, `tekanan_darah`, `suhu_tubuh`, `pernapasan`, `lingkar_lengan`, `waktu_input`, `id_user`) VALUES
(1, 160, 80, 120, 120, 23, 12, 25, '2016-09-29 03:28:45', 1),
(3, 150, 81, 121, 121, 24, 13, 26, '2016-09-29 03:36:51', 1),
(5, 150, 90, 60, 40, 20, 50, 30, '2016-11-19 05:36:31', 1),
(6, 123, 33, 45, 78, 890, 6, 897, '2016-11-29 16:01:11', 164),
(7, 180, 86, 890, 87, 675, 765, 64, '2016-11-30 06:20:36', 164),
(8, 0, 0, 0, 0, 0, 0, 0, '2016-11-30 06:31:22', 164),
(9, 0, 0, 0, 0, 0, 0, 0, '2016-11-30 06:35:09', 164),
(10, 145, 90, 100, 100, 24, 50, 50, '2016-12-01 04:17:40', 174),
(11, 170, 95, 55, 40, 24, 50, 45, '2016-12-01 04:19:28', 174),
(12, 0, 0, 0, 0, 0, 0, 0, '2016-12-03 05:37:30', 1264),
(13, 1212, 126, 125, 124, 123, 32, 34, '2016-12-04 05:33:59', 1682),
(14, 0, 0, 0, 0, 0, 0, 0, '2016-12-04 05:47:02', 1682),
(15, 0, 0, 0, 0, 0, 0, 0, '2016-12-04 05:59:07', 1682),
(16, 0, 0, 0, 0, 0, 0, 0, '2016-12-04 06:14:54', 1682),
(17, 0, 0, 0, 0, 0, 0, 0, '2016-12-04 06:15:05', 1682),
(18, 0, 0, 0, 0, 0, 0, 0, '2016-12-04 06:15:57', 1682),
(19, 0, 0, 0, 0, 0, 0, 0, '2016-12-04 14:47:08', 1682),
(20, 0, 0, 0, 0, 0, 0, 0, '2016-12-04 14:48:35', 1682),
(21, 0, 0, 0, 0, 0, 0, 0, '2016-12-04 14:51:44', 1682),
(22, 0, 0, 0, 0, 0, 0, 0, '2016-12-04 14:52:35', 1682),
(23, 0, 0, 0, 0, 0, 0, 0, '2016-12-04 14:53:15', 1682),
(24, 0, 0, 0, 0, 0, 0, 0, '2016-12-04 14:56:04', 1682),
(25, 0, 0, 0, 0, 0, 0, 0, '2016-12-04 14:56:42', 1682),
(26, 0, 0, 0, 0, 0, 0, 0, '2016-12-04 14:57:10', 1682),
(27, 0, 0, 0, 0, 0, 0, 0, '2016-12-04 14:58:10', 1682),
(28, 0, 0, 0, 0, 0, 0, 0, '2016-12-04 14:58:23', 1682),
(29, 0, 0, 0, 0, 0, 0, 0, '2016-12-04 15:03:44', 1682),
(30, 0, 0, 0, 0, 0, 0, 0, '2016-12-04 15:06:19', 1682),
(31, 132, 123, 412, 134, 124, 1245, 1234, '2016-12-04 15:34:13', 1682),
(32, 0, 0, 0, 0, 0, 0, 0, '2016-12-04 15:42:01', 164),
(33, 2, 3, 4, 5, 6, 7, 3, '2016-12-05 07:59:09', 164),
(34, 0, 0, 0, 0, 0, 0, 0, '2016-12-05 16:19:13', 154),
(35, 178, 65, 128, 120, 40, 15, 56, '2016-12-06 05:07:26', 1581),
(36, 0, 0, 0, 0, 0, 0, 0, '2016-12-06 05:50:57', 154),
(37, 155, 85, 120, 50, 31, 150, 23, '2016-12-06 08:08:09', 1330),
(38, 0, 0, 0, 0, 0, 0, 0, '2016-12-06 10:01:58', 199),
(39, 0, 0, 0, 0, 0, 0, 0, '2016-12-07 04:10:10', 1330),
(40, 155, 70, 0, 0, 0, 0, 0, '2016-12-09 14:37:02', 1268),
(41, 155, 70, 80, 0, 0, 0, 0, '2016-12-09 14:38:04', 1268),
(42, 0, 0, 0, 0, 0, 0, 0, '2016-12-19 00:50:27', 1826),
(43, 0, 0, 0, 0, 0, 0, 0, '2016-12-21 08:32:51', 173),
(44, 0, 0, 0, 0, 0, 0, 0, '2016-12-22 02:25:03', 173),
(45, 0, 0, 0, 0, 0, 0, 0, '2016-12-24 09:59:33', 1850),
(46, 0, 0, 0, 0, 0, 0, 0, '2016-12-28 14:12:37', 1876),
(47, 0, 0, 0, 0, 0, 0, 0, '2016-12-30 08:34:59', 1103),
(48, 0, 39, 0, 0, 0, 0, 0, '2016-12-30 23:01:48', 1878),
(49, 153, 54, 0, 10070, 0, 0, 23, '2017-01-07 19:41:25', 1636),
(50, 0, 0, 0, 0, 0, 0, 0, '2017-01-16 01:50:39', 1956),
(51, 0, 0, 0, 0, 0, 0, 0, '2017-01-16 10:08:38', 951),
(52, 0, 0, 0, 0, 0, 0, 0, '2017-01-18 01:06:58', 173),
(53, 165, 52, 0, 0, 0, 0, 0, '2017-01-18 01:07:31', 173),
(54, 0, 0, 90, 110, 36, 52, 52, '2017-01-18 01:11:18', 173),
(55, 0, 0, 0, 0, 0, 0, 0, '2017-01-18 02:19:45', 173),
(56, 0, 0, 0, 0, 0, 0, 0, '2017-01-21 12:34:52', 1979),
(57, 160, 58, 0, 0, 0, 0, 0, '2017-01-22 05:44:19', 1985),
(58, 158, 70, 0, 90, 37, 0, 0, '2017-01-27 03:28:45', 1991),
(59, 0, 0, 0, 0, 0, 0, 0, '2017-01-27 09:17:29', 2011),
(60, 157, 64, 78, 110, 36, 22, 0, '2017-01-27 12:03:37', 2013),
(61, 165, 65, 0, 0, 0, 0, 0, '2017-01-30 06:51:08', 173),
(62, 154, 56, 86, 110, 36, 18, 0, '2017-02-02 05:59:31', 1633),
(63, 0, 0, 0, 0, 0, 0, 0, '2017-02-03 23:49:00', 1937),
(64, 163, 53, 90, 150100, 368, 24, 24, '2017-02-06 03:38:53', 2038),
(65, 0, 0, 0, 0, 0, 0, 0, '2017-02-06 03:40:47', 2038),
(66, 0, 56, 0, 0, 0, 0, 0, '2017-02-10 21:13:55', 2052),
(67, 0, 53, 0, 0, 0, 0, 0, '2017-02-10 21:15:16', 2052),
(68, 0, 0, 0, 0, 0, 0, 0, '2017-02-15 11:30:01', 2072),
(69, 0, 0, 0, 0, 0, 0, 0, '2017-02-16 15:08:24', 1850),
(70, 48, 27, 0, 0, 0, 0, 0, '2017-02-22 05:40:57', 1915),
(71, 155, 56, 0, 110, 0, 0, 0, '2017-03-01 06:00:54', 2113),
(72, 10, 12, 0, 0, 0, 0, 0, '2017-03-02 09:00:28', 2117),
(73, 0, 0, 0, 0, 0, 0, 0, '2017-03-05 13:34:43', 2118),
(74, 0, 0, 0, 0, 0, 0, 0, '2017-03-06 04:21:38', 2129),
(75, 158, 64, 0, 100, 0, 0, 28, '2017-03-14 07:15:06', 2149),
(76, 158, 63, 90, 0, 36, 20, 28, '2017-03-14 07:21:16', 2149),
(77, 0, 0, 0, 0, 0, 0, 0, '2017-03-24 03:03:50', 2185),
(78, 0, 0, 0, 0, 0, 0, 0, '2017-03-25 15:31:49', 2190),
(79, 0, 0, 0, 0, 0, 0, 0, '2017-04-03 23:32:59', 2207),
(80, 0, 0, 0, 0, 0, 0, 0, '2017-04-10 16:00:39', 2236),
(81, 0, 68, 0, 0, 0, 0, 0, '2017-04-12 01:14:59', 2212),
(82, 150, 43, 0, 0, 0, 0, 25, '2017-04-15 02:07:12', 2241),
(83, 2, 2, 25, 5, 85, 0, 0, '2017-04-21 09:55:49', 2272),
(84, 155, 84, 0, 100, 0, 0, 0, '2017-04-22 22:21:26', 1899),
(85, 0, 0, 0, 0, 0, 0, 0, '2017-04-30 15:43:34', 2292),
(86, 136, 37, 0, 130100, 0, 0, 23, '2017-04-30 17:09:34', 2018),
(87, 150, 68, 0, 0, 0, 0, 0, '2017-05-08 08:38:57', 2315),
(88, 0, 0, 0, 0, 0, 0, 0, '2017-05-08 14:13:53', 2335),
(89, 145, 41, 80, 90, 36, 20, 24, '2017-05-13 10:03:44', 2345),
(90, 170, 20, 0, 100, 0, 0, 0, '2017-06-05 02:45:11', 2397),
(91, 125, 15, 12, 258, 31, 125, 25, '2017-06-06 04:19:15', 2288),
(92, 140, 12, 25, 12, 25, 25, 12, '2017-06-06 04:19:52', 2288),
(93, 158, 46, 0, 106, 0, 0, 0, '2017-06-07 03:14:49', 2391),
(94, 158, 46, 0, 106, 0, 0, 0, '2017-06-07 03:14:49', 2391),
(95, 0, 0, 0, 0, 0, 0, 0, '2017-06-07 16:25:53', 2409),
(96, 10, 10, 10, 10, 10, 10, 10, '2017-06-10 00:07:18', 2418),
(97, 0, 0, 0, 0, 0, 0, 0, '2017-06-14 11:37:50', 2011),
(98, 0, 0, 0, 0, 0, 0, 0, '2017-06-25 23:58:41', 2253),
(99, 148, 62, 0, 0, 0, 0, 0, '2017-06-26 21:09:41', 2435),
(100, 0, 0, 0, 0, 0, 0, 0, '2017-07-03 03:53:23', 2438),
(101, 0, 0, 0, 0, 0, 0, 0, '2017-07-07 13:46:01', 2261),
(102, 15, 15, 15, 15, 25, 15, 15, '2017-07-10 06:38:28', 2390),
(103, 17, 17, 17, 17, 28, 17, 17, '2017-07-10 06:40:12', 2390),
(104, 148, 64, 0, 0, 0, 0, 0, '2017-07-11 07:30:01', 2435),
(105, 150, 44, 0, 110, 0, 0, 0, '2017-07-16 10:26:49', 2431),
(106, 15, 48, 46, 7, 34, 45, 150, '2017-07-21 07:06:08', 305),
(107, 0, 0, 0, 0, 0, 0, 0, '2017-07-21 07:06:35', 305),
(108, 152, 62, 0, 11080, 0, 0, 0, '2017-08-01 23:58:50', 2472),
(109, 157, 48, 0, 0, 0, 0, 0, '2017-08-04 09:04:09', 2503),
(110, 33, 33, 33, 33, 33, 33, 250, '2017-08-04 14:14:39', 305),
(111, 100, 100, 100, 100, 100, 100, 100, '2017-08-07 03:30:39', 164),
(112, 0, 0, 0, 0, 0, 0, 0, '2017-08-08 00:19:38', 2510),
(113, 0, 0, 0, 0, 0, 0, 0, '2017-08-08 00:20:08', 2510),
(114, 159, 59, 0, 0, 0, 0, 0, '2017-08-16 12:58:34', 2531),
(115, 0, 0, 0, 0, 0, 0, 0, '2017-08-26 06:39:26', 2520),
(116, 165, 51, 0, 0, 0, 0, 0, '2017-08-26 07:39:19', 2520),
(117, 0, 0, 0, 110, 0, 0, 0, '2017-08-26 08:30:46', 2520),
(118, 153, 78, 0, 110, 0, 0, 0, '2017-08-26 15:12:25', 2551);

-- --------------------------------------------------------

--
-- Table structure for table `kader`
--

CREATE TABLE `kader` (
  `id_kader` int(11) NOT NULL,
  `nama_kader` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `rate` float NOT NULL DEFAULT '0',
  `kontak_kader` varchar(15) NOT NULL,
  `kode_verifikasi` varchar(6) NOT NULL,
  `foto_kader` varchar(200) NOT NULL,
  `id_bidan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kader`
--

INSERT INTO `kader` (`id_kader`, `nama_kader`, `password`, `rate`, `kontak_kader`, `kode_verifikasi`, `foto_kader`, `id_bidan`) VALUES
(6, 'test', '202cb962ac59075b964b07152d234b70', 0, '2123123', '', 'http://sehati-project.net/uploads/kader/thumb_myhome.jpg', 8);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_barang_statis`
--

CREATE TABLE `kategori_barang_statis` (
  `id_kategori_barang_statis` int(11) NOT NULL,
  `nama_kategori_barang_statis` varchar(200) NOT NULL,
  `id_kategori_kategori_barang_statis` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_barang_statis`
--

INSERT INTO `kategori_barang_statis` (`id_kategori_barang_statis`, `nama_kategori_barang_statis`, `id_kategori_kategori_barang_statis`) VALUES
(20, 'Perawatan Bayi', 11),
(21, 'Keperluan Menyusui', 11),
(22, 'Keperluan Menyusui (Tambahan)', 11),
(23, 'Perlengkapan Ganti Popok', 11),
(24, 'Pakaian Bayi', 11),
(25, 'Perabot Bayi', 11),
(26, 'Perangkat Keamanan Bayi', 11),
(27, 'Mainan Bayi', 11),
(28, 'Perlengkapan untuk Bepergian', 11),
(29, 'Buku bayi', 12),
(30, 'Empeng bayi', 12),
(31, 'Karpet bermain', 12),
(32, 'Baju hangat', 13),
(33, 'Sarung tangan', 13),
(34, 'Topi bayi', 13),
(35, 'Bedong bayi', 13),
(36, 'Kaos lengan pendek', 13),
(37, 'Kaos lengan panjang', 13),
(38, 'Kaos kaki bayi', 13),
(39, 'Celana bayi ', 13),
(40, 'Kelambu', 14),
(41, 'Meja ganti popok', 14),
(42, 'Boks bayi', 14),
(43, 'Matras bayi', 14),
(44, 'Kursi makan bayi', 14),
(45, 'Perlengkapan makan bayi', 14),
(46, 'Ayunan bayi', 14),
(47, 'Seprai dan perlengkapan tidur', 14),
(48, 'Selimut', 14),
(49, 'Buaian', 14),
(50, 'Perlak', 14),
(51, 'Monitor bayi', 15),
(52, 'Sabun bebas kuman', 15),
(53, 'Termometer', 15),
(54, 'Pagar pengaman', 15),
(55, 'Losion bayi', 16),
(56, 'Tisu basah', 16),
(57, 'Perlak', 16),
(58, 'Matras', 16),
(59, 'Kapas', 16),
(60, 'Wadah untuk air', 16),
(61, 'Krim anti ruam', 16),
(62, 'Popok atau diaper', 16),
(63, 'Pengait untuk popok', 16),
(64, 'Waslap', 16);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_barang_user`
--

CREATE TABLE `kategori_barang_user` (
  `id_kategori_barang_user` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori_barang_statis` int(11) NOT NULL,
  `status_kategori_barang` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_barang_user`
--

INSERT INTO `kategori_barang_user` (`id_kategori_barang_user`, `id_user`, `id_kategori_barang_statis`, `status_kategori_barang`) VALUES
(388, 181, 22, 'belum'),
(387, 180, 22, 'belum'),
(386, 179, 22, 'belum'),
(385, 178, 22, 'belum'),
(384, 177, 22, 'belum'),
(383, 176, 22, 'belum'),
(382, 175, 22, 'belum'),
(381, 174, 22, 'belum'),
(380, 173, 22, 'belum'),
(379, 164, 22, 'sudah'),
(378, 163, 22, 'belum'),
(377, 162, 22, 'belum'),
(376, 161, 22, 'belum'),
(375, 160, 22, 'belum'),
(374, 158, 22, 'belum');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_kategori_barang_statis`
--

CREATE TABLE `kategori_kategori_barang_statis` (
  `id_kategori_kategori_barang_statis` int(11) NOT NULL,
  `nama_kategori_kategori_barang_statis` varchar(200) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kategori_kategori_barang_statis`
--

INSERT INTO `kategori_kategori_barang_statis` (`id_kategori_kategori_barang_statis`, `nama_kategori_kategori_barang_statis`) VALUES
(11, 'Belanja untuk Si Kecil'),
(12, 'Mainan Bayi'),
(13, 'Pakaian Bayi'),
(14, 'Perabot Bayi'),
(15, 'Perangkat Keamanan Bayi'),
(16, 'Perlengkapan Ganti Popok');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_tips_kehamilan`
--

CREATE TABLE `kategori_tips_kehamilan` (
  `id_kategori_tips` int(11) NOT NULL,
  `nama_kategori_tips` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `photo_kategori_tips` varchar(200) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kategori_tips_kehamilan`
--

INSERT INTO `kategori_tips_kehamilan` (`id_kategori_tips`, `nama_kategori_tips`, `photo_kategori_tips`) VALUES
(1, 'Asupan Nutrisi & Pola Makan', 'http://sehati-project.net/uploads/kategori_tips_kehamilan/thumb_asupan-nutrisi.jpg'),
(2, 'Biasakan Hidup Sehat', 'http://sehati-project.net/uploads/kategori_tips_kehamilan/thumb_olahraga.jpg'),
(3, 'Kesehatan', 'http://sehati-project.net/uploads/kategori_tips_kehamilan/thumb_kesehatan.jpg'),
(4, 'Persiapkan Kehamilan Berikutnya', 'http://sehati-project.net/uploads/kategori_tips_kehamilan/thumb_next-pregnant2.jpg'),
(5, 'Serba-Serbi Laktasi', 'http://sehati-project.net/uploads/kategori_tips_kehamilan/thumb_serba2-laktasi.jpg'),
(6, 'Hai Buah Hati', 'http://sehati-project.net/uploads/kategori_tips_kehamilan/thumb_hai-buah-hati.jpg'),
(7, 'Kondisi Yang Harus Diwaspadai', 'http://sehati-project.net/uploads/kategori_tips_kehamilan/thumb_kondisi-waspada.jpg'),
(8, 'Untuk Ayah', 'http://sehati-project.net/uploads/kategori_tips_kehamilan/thumb_untuk-ayah.jpg'),
(9, 'Perawatan Kehamilan', '');

-- --------------------------------------------------------

--
-- Table structure for table `konten_static`
--

CREATE TABLE `konten_static` (
  `id_konten_static` int(11) NOT NULL,
  `judul_konten_static` varchar(100) NOT NULL,
  `detail_konten_static` text NOT NULL,
  `status_konten_static` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konten_static`
--

INSERT INTO `konten_static` (`id_konten_static`, `judul_konten_static`, `detail_konten_static`, `status_konten_static`) VALUES
(2, 'INFO 2', '<p>hola</p>\r\n', 'info'),
(3, 'info hitung tendangan', '<p>pada hitung tendangan user....</p>\r\n', 'hitung tendangan'),
(4, 'info hitung kontraksi', '<p>pada hitung tendangan user....</p>\r\n', 'hitung kontraksi');

-- --------------------------------------------------------

--
-- Table structure for table `kontraksi`
--

CREATE TABLE `kontraksi` (
  `id_kontraksi` int(11) NOT NULL,
  `durasi_kontraksi` int(11) NOT NULL,
  `time_apart` int(11) NOT NULL,
  `time_kontraksi` varchar(20) NOT NULL,
  `tanggal_kontraksi` date NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kontraksi`
--

INSERT INTO `kontraksi` (`id_kontraksi`, `durasi_kontraksi`, `time_apart`, `time_kontraksi`, `tanggal_kontraksi`, `id_user`) VALUES
(17, 1, 0, '19:12-19:12', '2016-12-29', 164),
(267, 9, 0, '10:20-10:21', '2017-05-10', 2336);

-- --------------------------------------------------------

--
-- Table structure for table `momen`
--

CREATE TABLE `momen` (
  `id_momen` int(11) NOT NULL,
  `waktu_upload_momen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `photo_momen` varchar(200) NOT NULL,
  `caption_momen` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `status_momen` varchar(10) NOT NULL,
  `post_momen` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `momen`
--

INSERT INTO `momen` (`id_momen`, `waktu_upload_momen`, `photo_momen`, `caption_momen`, `id_user`, `status_momen`, `post_momen`) VALUES
(70, '2016-12-06 14:47:28', 'http://sehati-project.net/uploads/user/momen/70.png', 'yooomaaaannn', 1607, 'foto', 0),
(35, '2016-11-29 16:50:33', 'http://sehati-project.net/uploads/user/100294672113693055610/35.png', '', 306, '', 0),
(50, '2016-12-06 13:07:37', 'http://sehati-project.net/uploads/user/hilmilyas/50.png', '', 164, '', 0),
(56, '2016-12-06 14:08:04', 'http://sehati-project.net/uploads/user/hilmilyas/56.png', 'test 3', 164, 'foto', 0),
(75, '2016-12-06 15:14:24', '', 'asdasdasd', 164, 'caption', 0),
(73, '2016-12-06 15:12:30', 'http://sehati-project.net/uploads/user/hilmilyas/73.png', 'test', 164, 'foto', 0),
(15, '2016-11-22 15:18:50', 'http://sehati-project.net/uploads/user/hilmilyas/14.png', '', 164, '', 0),
(16, '2016-11-23 03:12:36', 'http://sehati-project.net/uploads/user/hilmilyas/16.png', '', 164, '', 0),
(18, '2016-11-23 04:18:29', 'http://sehati-project.net/uploads/user/hilmilyas/18.png', '', 164, '', 0),
(49, '2016-12-06 13:01:38', 'http://sehati-project.net/uploads/user/hilmilyas/49.png', '', 164, '', 0),
(48, '2016-12-06 12:43:10', 'http://sehati-project.net/uploads/user/hilmilyas/36.png', '', 164, '', 0),
(55, '2016-12-06 14:07:46', 'http://sehati-project.net/uploads/user/hilmilyas/55.png', 'test 2', 164, 'foto', 0),
(95, '2016-12-08 04:17:33', 'http://sehati-project.net/uploads/user/100294672113693055610/95.png', 'makanan', 306, 'foto', 0),
(53, '2016-12-06 14:03:02', 'http://sehati-project.net/uploads/user/hilmilyas/53.png', 'test', 164, 'foto', 0),
(74, '2016-12-06 15:13:33', 'http://sehati-project.net/uploads/user/hilmilyas/74.png', 'asdasdasd', 164, 'foto', 0),
(72, '2016-12-06 14:50:21', 'http://sehati-project.net/uploads/user/hilmilyas/72.png', 'test', 164, 'foto', 0),
(71, '2016-12-06 14:48:10', '', 'yooo yezie gua uda siap yooooo.....', 1607, 'caption', 0),
(69, '2016-12-06 14:46:33', 'http://sehati-project.net/uploads/user/momen/69.png', 'salam 2 jari', 1607, 'foto', 0),
(52, '2016-12-06 13:27:37', 'http://sehati-project.net/uploads/user/hilmilyas/52.png', '', 164, 'foto', 0),
(34, '2016-11-27 13:21:21', 'http://sehati-project.net/uploads/user/hilmilyas/34.png', '', 164, '', 0),
(51, '2016-12-06 13:12:36', 'http://sehati-project.net/uploads/user/hilmilyas/51.png', 'makanan bul', 164, 'foto', 0),
(57, '2016-12-06 14:24:38', 'http://sehati-project.net/uploads/user/hilmilyas/57.png', '', 164, 'foto', 0),
(58, '2016-12-06 14:26:04', '', 'covjc', 164, 'caption', 0),
(59, '2016-12-06 14:26:56', 'http://sehati-project.net/uploads/user/hilmilyas/59.png', 'miaw', 164, 'foto', 0),
(61, '2016-12-06 14:27:16', 'http://sehati-project.net/uploads/user/hilmilyas/61.png', '', 164, 'foto', 0),
(62, '2016-12-06 14:29:24', 'http://sehati-project.net/uploads/user/hilmilyas/62.png', '', 164, 'foto', 0),
(63, '2016-12-06 14:30:57', 'http://sehati-project.net/uploads/user/hilmilyas/63.png', '', 164, 'foto', 0),
(64, '2016-12-06 14:32:31', 'http://sehati-project.net/uploads/user/hilmilyas/64.png', '', 164, 'foto', 0),
(65, '2016-12-06 14:32:48', 'http://sehati-project.net/uploads/user/hilmilyas/65.png', '', 164, 'foto', 0),
(66, '2016-12-06 14:33:06', 'http://sehati-project.net/uploads/user/hilmilyas/66.png', '', 164, 'foto', 0),
(67, '2016-12-06 14:33:26', 'http://sehati-project.net/uploads/user/hilmilyas/67.png', '', 164, 'foto', 0),
(68, '2016-12-06 14:34:38', '', 'miaa', 164, 'caption', 0),
(76, '2016-12-06 15:14:40', '', 'asdasd', 164, 'caption', 0),
(77, '2016-12-06 15:15:14', '', 'asdaccccc', 164, 'caption', 0),
(125, '2016-12-13 02:03:27', '', 'Baruu', 164, 'caption', 8),
(79, '2016-12-06 16:06:09', 'http://sehati-project.net/uploads/user/hilmilyas/79.png', '', 164, 'foto', 0),
(80, '2016-12-07 01:05:09', 'http://sehati-project.net/uploads/user/100294672113693055610/80.png', 'test', 306, 'foto', 0),
(81, '2016-12-07 01:06:19', '', 'test momen nih', 306, 'caption', 0),
(82, '2016-12-07 01:42:59', 'http://sehati-project.net/uploads/user/100294672113693055610/82.png', 'll', 306, 'foto', 0),
(83, '2016-12-07 03:00:50', '', 'gkjj', 306, 'caption', 0),
(84, '2016-12-07 04:08:26', 'http://sehati-project.net/uploads/user/100294672113693055610/84.png', 'woi', 306, 'foto', 0),
(85, '2016-12-07 04:11:21', 'http://sehati-project.net/uploads/user/jujuuuuu/85.png', 'test', 1330, 'foto', 0),
(132, '2017-01-11 02:31:40', 'http://sehati-project.net/uploads/user/106833831800965027200/132.png', 'USG pertama si dedek bayi....#4weekpregnant\n', 1939, 'foto', 6),
(89, '2016-12-07 04:31:07', '', 'uooo', 1330, 'caption', 0),
(91, '2016-12-07 06:47:35', 'http://sehati-project.net/uploads/user/hindy/91.png', '', 175, 'foto', 0),
(92, '2016-12-07 06:47:54', '', 'bayi bebek', 175, 'caption', 0),
(131, '2017-01-02 05:37:44', 'http://sehati-project.net/uploads/user/Farah/131.png', 'Hari yang begitu membahagiakan ketika mengetahui dua strip merah jelas sekali di testpack keduaku..\n', 1899, 'foto', 5),
(97, '2016-12-09 09:41:37', '', 'test', 164, 'caption', 0),
(98, '2016-12-09 09:41:37', '', 'test', 164, 'caption', 0),
(130, '2016-12-22 04:10:32', '', 'tezt', 1722, 'caption', 9),
(134, '2017-01-16 07:04:18', 'http://sehati-project.net/uploads/user/fatmanita/134.png', 'I am Positive ^_^', 1958, 'foto', 8),
(112, '2016-12-12 03:33:44', 'http://sehati-project.net/uploads/user/hilmilyas/112.png', 'sdfsdf', 164, 'foto', 8),
(133, '2017-01-11 02:33:46', 'http://sehati-project.net/uploads/user/106833831800965027200/133.png', 'Kemunculan pertama 2 garis yg\ndinanti.... #7Januari2017', 1939, 'foto', 6),
(129, '2016-12-16 09:24:45', '', 'cba', 1330, 'caption', 8),
(163, '2017-05-31 13:14:56', 'http://sehati-project.net/uploads/user/111366089379284344973/163.png', 'baby 11 weeks ðŸ˜˜ðŸ˜˜ðŸ˜˜ kontrol di dokter taufik 23 mei 2017 \nsehat2 ya sayanggg', 2241, 'foto', 11),
(137, '2017-01-17 07:24:44', 'http://sehati-project.net/uploads/user/endah/135.png', 'memasuki bulan ke 5 ..\nsedikit\" mulai terasa gerakan mu nak meskipun belum jelas tapi ini hal yg membahagiakan buat mamahðŸ˜„\nsemoga km sehat selalu sayang .mamah tunggu kejutan\" berikut nya dari km sayangðŸ˜™ðŸ˜™ðŸ˜—', 1651, 'foto', 21),
(138, '2017-01-30 06:33:36', 'http://sehati-project.net/uploads/user/Farah/138.png', '9week 5day..\nperut udah mulai membesar\nsehat terus ya nak...', 1899, 'foto', 9),
(139, '2017-02-01 03:54:06', 'http://sehati-project.net/uploads/user/zexalordin/139.png', 'Dingin ', 1903, 'foto', 5),
(140, '2017-02-19 04:40:24', 'http://sehati-project.net/uploads/user/hudafi22/140.png', '5 bulan', 1086, 'foto', 22),
(141, '2017-03-01 09:47:11', '', '1 maret 2017\n\nbadan kadang panas\n\nperut suka kram/kembung\n\npusing\n\n2 minggu setelah haid mual dan sempat muntah\n\nmudah lelah', 2112, 'caption', 6),
(142, '2017-03-01 18:05:25', '', '2 maret\njam 01.00 bangun tidur merasa sesak dan batuk', 2112, 'caption', 6),
(143, '2017-03-02 08:57:33', 'http://sehati-project.net/uploads/user/taufik/143.png', 'tes', 2117, 'foto', 4),
(144, '2017-03-05 13:47:37', 'http://sehati-project.net/uploads/user/kamiptgue/144.png', 'hai el..', 2118, 'foto', 8),
(145, '2017-03-07 08:04:24', '', '6 maret \nseharian pusing sampe sempoyongan\nmual mual tp engga muntah (cium bau amis)\n', 2112, 'caption', 6),
(146, '2017-03-08 11:14:13', '', '08 maret\ntidur siang 1 jam, bangun kepala pusing.\npusingnya lbh dari yg biasa\n\nperut tidak nyaman', 2112, 'caption', 7),
(147, '2017-03-11 04:37:50', '', '11 maret\nmalam tgl 10 kram dikanan\n\nturun berat badan', 2112, 'caption', 7),
(148, '2017-03-11 04:37:50', '', '11 maret\nmalam tgl 10 kram dikanan\n\nturun berat badan', 2112, 'caption', 7),
(150, '2017-03-15 08:32:14', 'http://sehati-project.net/uploads/user/113656109742643524446/149.png', '', 2154, 'foto', 1),
(151, '2017-03-16 01:21:08', '', 'tgl 14 mlm\nengga bs tidur, dada belakang engga nyaman', 2112, 'caption', 7),
(152, '2017-03-16 01:21:51', '', '14-15 maret\nmual, pusing, demam (kaya mau flu)\n\nengga napsu makan', 2112, 'caption', 7),
(155, '2017-03-27 15:29:48', 'http://sehati-project.net/uploads/user/110526249569346999868/155.png', 'abis usg ama dokter choirul td di yabis.. alhamdulillah udah bsa liat adek walau masih kecil tpi dah kelihatan... sehat terus y dek ddlm perut bunda ampe masa lahiran ntar.. aamiiiin ðŸ˜‡ðŸ˜‡ðŸ˜‡ðŸ˜‡', 2149, 'foto', 10),
(154, '2017-03-27 15:27:52', 'http://sehati-project.net/uploads/user/110526249569346999868/154.png', 'abis periksa ke dokter gara2 semingguan mual n muntah ternyata pas cek urin malah positif hamil..', 2149, 'foto', 6),
(156, '2017-04-04 06:48:20', '', 'mulai mual,berasa gemuk dikit tp waktu ukur berat badan tidak ada perubahan ðŸ˜‘\n\ntidur malam pun mulai gak nyenyak,', 2218, 'caption', 9),
(157, '2017-04-12 06:57:48', 'http://sehati-project.net/uploads/user/Farah/157.png', '20week pregnant', 1899, 'foto', 20),
(158, '2017-04-17 10:07:26', 'http://sehati-project.net/uploads/user/104494132318358600457/158.png', 'foto usg kesayangan mbun n mpah  ðŸ˜˜ðŸ˜˜ðŸ˜\n\n', 2252, 'foto', 36),
(159, '2017-04-30 05:37:04', 'http://sehati-project.net/uploads/user/citycrypt/159.png', '', 2291, 'foto', 1),
(160, '2017-05-08 08:26:54', '', 'rabu,19 april 2017\nsaat tidur malam berasa seperti ngompol karna ada rembesan air,jam 2 pagi ganti celana dalam dan saat bangun subuh darah kluar byk\n', 2218, 'caption', 16),
(161, '2017-05-08 08:28:49', '', 'sabtu,30 mar 17\nkluar bercak darah lagi stelah pendarahan minggu sebelumnya,\nobat penguat dgn dosis lebih besar ðŸ˜§\nsehat\" ya kak di perut bunda â˜º', 2218, 'caption', 16),
(162, '2017-05-09 05:36:55', 'http://sehati-project.net/uploads/user/neneng elisa kania/162.png', '', 2287, 'foto', 35),
(164, '2017-05-31 13:25:38', 'http://sehati-project.net/uploads/user/111366089379284344973/164.png', 'Alhamdulillah setelah 3 tahun pernikahan, testpack positif ðŸ˜Š senengnya,, Allah memang Maha Baik. dedeeeeeðŸ˜˜ðŸ˜˜ðŸ˜˜ðŸ˜˜', 2241, 'foto', 11),
(165, '2017-06-09 21:29:34', 'http://sehati-project.net/uploads/user/jemisanosi/165.png', '#28weekspregnan', 2417, 'foto', 29),
(166, '2017-06-15 00:49:03', '', '15 juni\npagi, mulai jam 6 bayi aktif dan terlihat lbh menonjol saat gerak', 2112, 'caption', 21),
(167, '2017-06-21 10:10:32', 'http://sehati-project.net/uploads/user/111366089379284344973/167.png', '15w4d 20 Juni 2017, dedenya lagi sujud, Masya Allah ðŸ˜ðŸ˜ðŸ˜ sehat terus ya kesayangan ayah bunda ðŸ˜˜ðŸ˜˜ðŸ˜˜', 2241, 'foto', 14),
(168, '2017-08-02 07:30:36', 'http://sehati-project.net/uploads/user/111366089379284344973/168.png', 'Nak, kata dokternya kemungkinan kamu baby girlðŸ˜ dan alhamdulillah kamu sehat2 #pertama kali kontrol sama dr.yolanda #21week', 2241, 'foto', 20),
(169, '2017-08-03 15:46:44', 'http://sehati-project.net/uploads/user/alghifari/169.png', 'Bina mulia :) ', 174, 'foto', 9),
(170, '2017-08-03 15:47:02', '', 'Testimony ', 174, 'caption', 9),
(171, '2017-08-16 10:40:21', 'http://sehati-project.net/uploads/user/alghifari/171.png', 'Tes', 174, 'foto', 30),
(172, '2017-08-27 15:44:59', 'http://sehati-project.net/uploads/user/sittimaharani/172.png', '23 Agustus 2017\n\nsetelah telat 5 hari akhirnya beraniin diri buat test pack....Dari semalem udah gelisah tidur nya buat cepet cepet pagi biar bisa test pack...dan alhamdulillah hasilnya positif', 2544, 'foto', 5),
(173, '2017-08-27 15:48:00', 'http://sehati-project.net/uploads/user/sittimaharani/173.png', '24 Agustus 2017\n\nPertama kali nya cek ke dokter setelah baca review dokter yg bagus finally memutuskan dengan dr. Yusfa di RSIA YPK Mandiri, dan alhamdulillah dokter bilang sudah ada kantung dalam kandungan....', 2544, 'foto', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tendangan`
--

CREATE TABLE `tendangan` (
  `id_tendangan` int(11) NOT NULL,
  `tanggal_tendangan` date NOT NULL,
  `waktu_tendangan` varchar(5) NOT NULL,
  `durasi_tendangan` varchar(5) NOT NULL,
  `count_tendangan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tendangan`
--

INSERT INTO `tendangan` (`id_tendangan`, `tanggal_tendangan`, `waktu_tendangan`, `durasi_tendangan`, `count_tendangan`, `id_user`) VALUES
(33, '2016-12-06', '00:45', '00:04', 10, 174),
(28, '2016-12-05', '23:20', '00:02', 10, 154),
(29, '2016-12-05', '23:21', '00:15', 10, 154),
(31, '2016-12-06', '00:44', '00:09', 10, 174),
(32, '2016-12-06', '00:45', '00:06', 10, 174),
(34, '2016-12-06', '09:40', '00:14', 10, 1732),
(35, '2016-12-06', '09:40', '00:03', 10, 1732),
(252, '2017-04-28', '22:10', '00:03', 0, 1408),
(253, '2017-04-29', '08:49', '01:15', 2, 2233),
(42, '2016-12-06', '00:05', '00:10', 10, 1581),
(43, '2016-12-06', '12:51', '00:03', 10, 154),
(254, '2017-04-29', '08:49', '01:15', 2, 2233),
(67, '2016-12-14', '22:59', '00:06', 10, 1796),
(86, '2017-01-02', '15:05', '00:02', 10, 1330),
(64, '2016-12-10', '00:11', '00:02', 10, 1607),
(65, '2016-12-10', '00:11', '00:02', 10, 1607),
(50, '2016-12-07', '11:16', '00:02', 10, 1607),
(51, '2016-12-07', '11:16', '00:02', 10, 1607),
(87, '2017-01-02', '15:04', '00:15', 10, 173),
(54, '2016-12-07', '11:19', '00:01', 10, 1607),
(59, '2016-12-07', '12:15', '00:02', 10, 1607),
(56, '2016-12-07', '11:19', '00:02', 10, 1607),
(66, '2016-12-10', '06:08', '00:07', 10, 245),
(68, '2016-12-18', '14:27', '12:02', 10, 1819),
(69, '2016-12-19', '08:52', '01:58', 10, 1819),
(70, '2016-12-23', '13:37', '00:13', 10, 1816),
(249, '2017-04-26', '14:52', '00:41', 0, 918),
(255, '2017-04-29', '08:50', '02:40', 10, 2233),
(256, '2017-04-30', '22:42', '00:05', 5, 1695),
(257, '2017-05-01', '21:24', '00:05', 1, 2269),
(96, '2017-01-03', '14:34', '00:34', 10, 175),
(97, '2017-01-03', '14:50', '00:08', 2, 1909),
(98, '2017-01-03', '14:59', '00:07', 3, 1909),
(99, '2017-01-03', '14:59', '00:21', 3, 1909),
(100, '2017-01-03', '15:00', '00:07', 5, 1909),
(101, '2017-01-03', '16:31', '00:01', 3, 1908),
(185, '2017-03-06', '11:24', '00:23', 6, 2129),
(184, '2017-03-06', '11:24', '00:03', 1, 2129),
(104, '2017-01-04', '16:42', '01:48', 1, 965),
(105, '2017-01-06', '14:19', '00:08', 10, 1832),
(106, '2017-01-06', '14:20', '00:05', 10, 1832),
(107, '2017-01-06', '17:58', '00:06', 0, 1636),
(108, '2017-01-07', '10:01', '00:23', 2, 1926),
(109, '2017-01-09', '18:17', '00:06', 0, 1755),
(112, '2017-01-13', '10:33', '00:28', 0, 1888),
(113, '2017-01-13', '17:10', '00:19', 2, 1946),
(114, '2017-01-14', '00:12', '00:08', 10, 1951),
(115, '2017-01-14', '00:12', '00:20', 1, 1951),
(116, '2017-01-15', '05:16', '00:08', 2, 1580),
(117, '2017-01-15', '21:54', '00:06', 2, 1904),
(118, '2017-01-16', '17:01', '00:12', 2, 1959),
(119, '2017-01-16', '18:41', '00:05', 0, 1914),
(120, '2017-01-16', '18:53', '02:14', 10, 1934),
(121, '2017-01-17', '19:34', '00:17', 0, 1957),
(122, '2017-01-17', '19:35', '00:01', 0, 1957),
(123, '2017-01-17', '19:35', '01:00', 4, 1957),
(124, '2017-01-18', '23:05', '00:11', 6, 260),
(125, '2017-01-19', '13:11', '00:06', 2, 173),
(126, '2017-01-19', '17:24', '00:31', 0, 1978),
(127, '2017-01-19', '17:24', '00:31', 0, 1978),
(128, '2017-01-21', '04:09', '00:10', 3, 1849),
(129, '2017-01-22', '14:31', '00:24', 10, 1909),
(130, '2017-01-22', '14:31', '00:04', 10, 1909),
(131, '2017-01-22', '14:32', '00:06', 10, 1909),
(132, '2017-01-22', '14:32', '00:04', 9, 1909),
(133, '2017-01-22', '18:39', '00:08', 0, 1879),
(134, '2017-01-22', '18:39', '00:05', 0, 1879),
(135, '2017-01-24', '20:32', '00:15', 1, 1998),
(136, '2017-01-26', '01:31', '00:07', 0, 2005),
(137, '2017-01-26', '08:29', '00:06', 4, 2004),
(140, '2017-01-28', '08:21', '00:45', 0, 522),
(141, '2017-01-28', '08:42', '00:09', 0, 2015),
(142, '2017-01-31', '09:43', '00:03', 0, 2023),
(143, '2017-01-31', '09:43', '00:09', 0, 2023),
(144, '2017-01-31', '10:48', '00:01', 0, 1003),
(145, '2017-02-04', '10:06', '00:08', 0, 2034),
(146, '2017-02-04', '10:06', '00:37', 0, 2034),
(147, '2017-02-07', '14:13', '00:00', 0, 2042),
(148, '2017-02-07', '23:32', '00:16', 5, 1221),
(149, '2017-02-07', '23:34', '00:05', 10, 2018),
(150, '2017-02-09', '13:49', '00:37', 3, 2049),
(151, '2017-02-11', '12:06', '00:09', 2, 2058),
(152, '2017-02-11', '17:03', '00:06', 10, 1084),
(153, '2017-02-11', '17:04', '00:08', 10, 1084),
(154, '2017-02-11', '17:04', '00:18', 10, 1084),
(155, '2017-02-13', '09:45', '00:14', 10, 1084),
(156, '2017-02-13', '09:46', '00:04', 10, 1084),
(157, '2017-02-13', '09:46', '00:03', 10, 1084),
(158, '2017-02-14', '15:48', '00:10', 2, 2042),
(159, '2017-02-14', '15:48', '00:00', 0, 2042),
(160, '2017-02-15', '19:26', '00:20', 1, 2072),
(161, '2017-02-16', '13:16', '00:03', 0, 2074),
(162, '2017-02-16', '13:16', '00:06', 0, 2074),
(163, '2017-02-16', '15:12', '00:08', 1, 526),
(164, '2017-02-16', '20:48', '00:01', 0, 1408),
(165, '2017-02-16', '20:48', '00:01', 0, 1408),
(166, '2017-02-16', '20:48', '00:02', 0, 1408),
(167, '2017-02-17', '13:47', '01:17', 9, 2078),
(168, '2017-02-18', '13:05', '00:01', 0, 1544),
(169, '2017-02-18', '20:07', '00:05', 0, 2058),
(170, '2017-02-21', '16:04', '00:27', 8, 2093),
(171, '2017-02-21', '16:05', '01:49', 2, 2093),
(172, '2017-02-23', '10:56', '00:02', 0, 2059),
(173, '2017-02-24', '06:50', '00:06', 1, 461),
(174, '2017-02-26', '17:14', '00:04', 0, 1571),
(175, '2017-02-27', '17:59', '00:05', 4, 2108),
(176, '2017-02-28', '16:16', '00:08', 2, 1811),
(177, '2017-03-03', '20:52', '00:04', 1, 2024),
(178, '2017-03-03', '20:52', '00:01', 0, 2024),
(179, '2017-03-05', '04:37', '00:09', 0, 1521),
(180, '2017-03-05', '16:17', '00:07', 1, 2127),
(181, '2017-03-05', '20:45', '00:02', 0, 2118),
(182, '2017-03-06', '05:41', '00:07', 0, 2117),
(183, '2017-03-06', '05:42', '00:06', 2, 2117),
(186, '2017-03-07', '14:13', '00:20', 10, 510),
(187, '2017-03-07', '14:13', '00:20', 10, 510),
(188, '2017-03-08', '14:33', '00:20', 10, 2046),
(189, '2017-03-08', '14:33', '00:07', 10, 2046),
(190, '2017-03-08', '14:34', '00:07', 10, 2046),
(191, '2017-03-08', '18:15', '00:02', 0, 707),
(193, '2017-03-11', '09:52', '01:03', 2, 233),
(194, '2017-03-12', '05:42', '00:06', 1, 908),
(195, '2017-03-12', '05:42', '00:06', 1, 908),
(196, '2017-03-12', '05:42', '00:06', 1, 908),
(197, '2017-03-12', '05:42', '00:06', 1, 908),
(198, '2017-03-12', '05:42', '00:21', 1, 908),
(199, '2017-03-13', '07:03', '00:01', 0, 2137),
(200, '2017-03-14', '20:30', '00:07', 1, 2152),
(201, '2017-03-15', '15:29', '00:03', 9, 2154),
(202, '2017-03-16', '22:01', '00:06', 1, 2012),
(203, '2017-03-19', '10:57', '00:03', 0, 1301),
(204, '2017-03-20', '10:15', '00:18', 0, 2121),
(205, '2017-03-20', '14:41', '00:06', 3, 173),
(206, '2017-03-21', '23:10', '00:51', 0, 1936),
(207, '2017-03-23', '15:16', '00:09', 3, 2182),
(208, '2017-03-24', '12:53', '00:03', 1, 719),
(209, '2017-03-24', '16:23', '00:04', 1, 2188),
(210, '2017-03-24', '16:23', '00:04', 1, 2188),
(211, '2017-03-25', '16:48', '00:14', 2, 1421),
(212, '2017-03-28', '02:42', '00:02', 0, 2197),
(213, '2017-03-28', '02:42', '00:08', 4, 2197),
(214, '2017-03-29', '07:29', '00:07', 0, 2201),
(215, '2017-03-30', '18:24', '00:02', 0, 1927),
(216, '2017-03-30', '18:24', '00:03', 0, 1927),
(217, '2017-04-01', '15:06', '00:12', 2, 2211),
(218, '2017-04-01', '15:08', '00:14', 3, 2211),
(219, '2017-04-01', '15:11', '00:01', 0, 2211),
(220, '2017-04-01', '21:42', '00:03', 1, 819),
(221, '2017-04-04', '20:42', '00:04', 1, 1751),
(222, '2017-04-09', '23:26', '00:09', 3, 2226),
(223, '2017-04-10', '23:40', '00:09', 2, 2236),
(224, '2017-04-11', '08:55', '00:23', 0, 522),
(225, '2017-04-12', '06:24', '00:01', 0, 1936),
(226, '2017-04-12', '06:25', '05:12', 6, 1936),
(227, '2017-04-13', '10:52', '00:02', 0, 942),
(228, '2017-04-13', '22:43', '00:02', 0, 2240),
(229, '2017-04-13', '23:20', '00:29', 10, 942),
(230, '2017-04-13', '23:22', '00:24', 10, 942),
(231, '2017-04-13', '23:23', '00:26', 10, 942),
(232, '2017-04-15', '12:03', '00:11', 1, 2242),
(233, '2017-04-15', '12:57', '00:07', 1, 2213),
(234, '2017-04-15', '22:20', '00:18', 10, 305),
(235, '2017-04-16', '11:47', '00:04', 1, 2246),
(343, '2017-06-04', '16:33', '00:45', 2, 1869),
(237, '2017-04-18', '01:48', '00:16', 10, 2243),
(238, '2017-04-18', '07:32', '00:02', 0, 791),
(239, '2017-04-21', '12:35', '00:01', 0, 510),
(240, '2017-04-21', '12:35', '00:23', 10, 510),
(241, '2017-04-21', '16:55', '00:11', 10, 2272),
(242, '2017-04-22', '19:56', '00:37', 10, 2252),
(243, '2017-04-22', '19:57', '00:01', 0, 2252),
(244, '2017-04-22', '19:57', '00:53', 7, 2252),
(245, '2017-04-23', '03:59', '00:14', 5, 2275),
(246, '2017-04-23', '12:28', '00:30', 1, 575),
(247, '2017-04-25', '11:52', '00:03', 10, 164),
(251, '2017-04-27', '20:41', '00:08', 0, 1873),
(258, '2017-05-02', '21:13', '00:19', 0, 2296),
(259, '2017-05-02', '21:41', '02:22', 7, 2296),
(260, '2017-05-03', '13:38', '00:03', 0, 2229),
(261, '2017-05-04', '20:24', '00:03', 0, 1408),
(262, '2017-05-04', '22:13', '00:05', 2, 2313),
(263, '2017-05-05', '19:41', '00:23', 0, 575),
(264, '2017-05-05', '21:56', '00:07', 1, 892),
(265, '2017-05-06', '01:16', '00:04', 0, 2318),
(266, '2017-05-06', '01:16', '00:08', 2, 2318),
(267, '2017-05-06', '10:54', '00:01', 0, 2315),
(268, '2017-05-06', '10:54', '00:03', 0, 2315),
(269, '2017-05-06', '16:26', '01:22', 1, 2324),
(270, '2017-05-06', '16:55', '00:08', 0, 2319),
(271, '2017-05-07', '11:28', '00:02', 10, 164),
(272, '2017-05-07', '11:28', '00:02', 10, 164),
(273, '2017-05-07', '11:28', '00:01', 10, 164),
(274, '2017-05-07', '11:28', '00:01', 10, 164),
(275, '2017-05-07', '18:46', '00:00', 0, 2018),
(276, '2017-05-07', '18:46', '00:00', 0, 2018),
(277, '2017-05-07', '18:46', '00:00', 0, 2018),
(278, '2017-05-07', '18:46', '00:05', 1, 2018),
(279, '2017-05-08', '05:52', '00:15', 2, 1826),
(280, '2017-05-08', '12:16', '00:02', 10, 164),
(281, '2017-05-08', '12:17', '00:00', 0, 164),
(282, '2017-05-08', '12:17', '00:01', 0, 164),
(283, '2017-05-08', '12:17', '00:01', 0, 164),
(284, '2017-05-08', '12:17', '00:05', 10, 164),
(285, '2017-05-08', '12:18', '00:00', 0, 164),
(286, '2017-05-08', '12:18', '00:00', 0, 164),
(287, '2017-05-08', '12:18', '00:00', 0, 164),
(288, '2017-05-08', '12:34', '00:13', 1, 642),
(289, '2017-05-08', '13:18', '00:03', 0, 1651),
(290, '2017-05-08', '15:31', '00:06', 3, 2218),
(291, '2017-05-08', '18:01', '00:29', 0, 2314),
(292, '2017-05-08', '18:02', '01:39', 2, 2314),
(293, '2017-05-09', '11:40', '00:03', 10, 164),
(294, '2017-05-09', '12:27', '00:00', 0, 164),
(295, '2017-05-09', '12:59', '00:02', 6, 164),
(296, '2017-05-09', '13:00', '00:03', 10, 164),
(297, '2017-05-09', '13:00', '00:02', 10, 164),
(298, '2017-05-09', '13:00', '00:02', 10, 164),
(299, '2017-05-09', '13:00', '00:01', 10, 164),
(300, '2017-05-09', '13:00', '00:01', 10, 164),
(301, '2017-05-10', '10:21', '00:17', 3, 2336),
(302, '2017-05-10', '10:21', '00:17', 3, 2336),
(303, '2017-05-10', '18:00', '00:05', 5, 2337),
(304, '2017-05-12', '12:06', '00:02', 10, 164),
(305, '2017-05-12', '12:06', '00:02', 10, 164),
(306, '2017-05-12', '12:06', '00:05', 10, 164),
(308, '2017-05-14', '18:16', '00:04', 0, 2326),
(309, '2017-05-14', '18:16', '00:07', 10, 2326),
(310, '2017-05-14', '18:16', '00:07', 10, 2326),
(311, '2017-05-14', '18:16', '00:06', 8, 2326),
(312, '2017-05-15', '12:56', '00:06', 2, 2346),
(314, '2017-05-18', '15:45', '00:24', 1, 892),
(315, '2017-05-18', '20:02', '02:43', 10, 2346),
(316, '2017-05-21', '19:46', '00:01', 0, 2360),
(326, '2017-05-22', '14:28', '00:01', 0, 1864),
(327, '2017-05-22', '14:28', '00:01', 0, 1864),
(328, '2017-05-22', '14:28', '00:07', 10, 1864),
(329, '2017-05-22', '14:28', '00:07', 10, 1864),
(323, '2017-05-21', '20:44', '00:16', 10, 1864),
(330, '2017-05-27', '16:36', '00:12', 10, 2375),
(331, '2017-05-27', '16:36', '00:02', 0, 2375),
(332, '2017-05-27', '16:36', '00:08', 10, 2375),
(333, '2017-05-28', '13:45', '00:04', 0, 2378),
(334, '2017-05-28', '13:45', '00:04', 0, 2378),
(344, '2017-06-07', '23:21', '00:09', 7, 2409),
(345, '2017-06-08', '06:07', '00:02', 2, 164),
(346, '2017-06-08', '14:16', '00:03', 0, 2411),
(340, '2017-05-29', '20:34', '00:09', 5, 2336),
(341, '2017-05-29', '20:34', '00:09', 5, 2336),
(342, '2017-06-03', '14:14', '00:05', 4, 164),
(347, '2017-06-08', '20:44', '00:02', 0, 2380),
(348, '2017-06-08', '22:05', '00:07', 3, 2181),
(350, '2017-06-10', '15:13', '01:37', 9, 2417),
(353, '2017-06-14', '18:40', '01:00', 1, 2011),
(354, '2017-07-03', '12:16', '00:03', 0, 2408),
(355, '2017-07-05', '00:09', '00:07', 0, 2448),
(356, '2017-07-05', '00:10', '00:10', 10, 2448),
(357, '2017-07-05', '00:10', '00:00', 0, 2448),
(358, '2017-07-09', '21:51', '00:21', 0, 1869),
(359, '2017-07-10', '15:32', '00:00', 0, 1873),
(360, '2017-07-10', '15:32', '00:05', 1, 1873),
(361, '2017-07-18', '16:01', '00:04', 10, 305),
(362, '2017-07-27', '12:15', '00:04', 0, 2018),
(363, '2017-07-27', '12:15', '00:06', 10, 2018),
(364, '2017-07-27', '12:15', '00:02', 10, 2018),
(365, '2017-07-27', '12:15', '00:03', 10, 2018),
(366, '2017-07-27', '12:15', '00:02', 9, 2018),
(368, '2017-08-01', 'Tue A', '', 10, 164),
(369, '2017-08-01', 'Tue A', '00:00', 10, 164),
(370, '2017-08-01', 'Tue A', '00:03', 10, 164),
(371, '2017-08-01', '13', '00:02', 10, 164),
(372, '2017-08-01', '13', '00:03', 10, 164),
(373, '2017-08-01', '13:52', '00:01', 10, 164),
(374, '2017-08-01', '13:52', '00:04', 10, 164),
(375, '2017-08-01', '13:53', '00:01', 10, 164),
(376, '2017-08-01', '13:53', '00:02', 10, 164),
(377, '2017-08-01', '13:54', '00:01', 10, 164),
(378, '2017-08-01', '13:54', '00:01', 10, 164),
(379, '2017-08-01', '13:58', '00:15', 10, 164),
(380, '2017-08-02', '17:58', '00:15', 8, 2241),
(381, '2017-08-02', '17:58', '00:15', 8, 2241),
(382, '2017-08-02', '23:47', '01:14', 9, 2501),
(383, '2017-08-03', '17:2', '00:04', 10, 164),
(384, '2017-08-03', '17:2', '00:05', 10, 164),
(385, '2017-08-03', '22:49', '00:10', 10, 174),
(386, '2017-08-06', '09:26', '04:23', 10, 2112),
(387, '2017-08-06', '09:33', '12:05', 4, 2112),
(388, '2017-08-07', '10:49', '00:08', 3, 2508),
(389, '2017-08-09', '06:05', '05:15', 8, 2112),
(390, '2017-08-11', '06:33', '08:23', 9, 2112),
(391, '2017-08-14', '05:27', '00:13', 3, 2522),
(392, '2017-08-15', '13:4', '00:08', 10, 164),
(393, '2017-08-25', '21:41', '00:16', 1, 2060),
(394, '2017-08-26', '22:43', '00:10', 10, 1973),
(395, '2017-08-28', '19:25', '00:03', 10, 164),
(396, '2017-08-29', '09:54', '00:02', 0, 2556),
(397, '2017-09-01', '15:32', '00:13', 3, 2561),
(399, '2017-09-06', '13:06', '00:02', 0, 305),
(400, '2017-09-06', '13:07', '00:02', 3, 305),
(401, '2017-09-06', '13:07', '00:02', 3, 305),
(402, '2017-09-06', '13:07', '00:00', 0, 305);

-- --------------------------------------------------------

--
-- Table structure for table `tips_kehamilan`
--

CREATE TABLE `tips_kehamilan` (
  `id_tips` int(11) NOT NULL,
  `judul_tips` varchar(100) NOT NULL,
  `id_kategori_tips` int(11) NOT NULL,
  `detail_tips` text NOT NULL,
  `photo_tips` varchar(200) NOT NULL,
  `sumber_tips` varchar(200) NOT NULL,
  `tanggal_tips` date NOT NULL,
  `post_tips` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tips_kehamilan`
--

INSERT INTO `tips_kehamilan` (`id_tips`, `judul_tips`, `id_kategori_tips`, `detail_tips`, `photo_tips`, `sumber_tips`, `tanggal_tips`, `post_tips`) VALUES
(1, 'Aman dan Nyaman di Kantor', 3, '<p>Walau secara keseluruhan kantor merupakan lingkungan yang aman, namun ada beberapa hal yang harus Bunda perhatikan supaya aman dan nyaman di kantor.</p>\r\n\r\n<ul>\r\n	<li><strong>Layar Komputer</strong></li>\r\n</ul>\r\n\r\n<p>Mayoritas radiasi yang terpancar dari layar komputer Bunda masih dalam batasan aman. Namun, jika Bunda tetap khawatir, tak ada salahnya untuk memasang pelindung radiasi di layar komputer.</p>\r\n\r\n<ul>\r\n	<li><strong>Meja Kerja</strong></li>\r\n</ul>\r\n\r\n<p>Kursi kerja yang dapat menopang punggung dengan baik serta dapat disesuaikan dengan ketinggian meja kerja dan layar komputer Bunda merupakan hal yang sangat penting. Memiliki penopang kaki sangat membantu agar kaki leluasa dan memiliki tempat bertumpu. Juga, seringlah beristirahat sejenak dan bergerak agar sirkulasi darah di tubuh mengalir lancar. Apakah ventilasi dan sirkulasi udara di ruang kerja Bunda cukup baik? Jika tidak, pastikan Bunda cukup sering beristirahat dan mendapatkan udara segar.</p>\r\n\r\n<ul>\r\n	<li><strong>Olah Tubuh di Kantor</strong></li>\r\n</ul>\r\n\r\n<p>Terkurung sepanjang hari di belakang meja, telepon atau komputer bukanlah hal yang baik bagi siapapun. Dengan kehamilan yang bertambah besar, Bunda umumnya akan lebih sering merasakan nyeri dan tegang otot. Bergerak dan melakukan peregangan di antara waktu kerja adalah cara yang baik untuk mengurangi rasa tidak nyaman yang timbul akibat hal ini. Coba Bunda lakukan hal-hal berikut, semoga membantu:</p>\r\n\r\n<ul>\r\n	<li><strong>Bernapas</strong></li>\r\n</ul>\r\n\r\n<p>Bernapas dengan cara yang tepat dapat membantu membuat tubuh lebih rileks serta mengurangi stress dan ketegangan. Duduk dengan posisi tertopang baik dan bahu rileks. Sandarkan kedua tangan di bagian bawah lekuk perut Bunda. Tarik napas dalam perlahan hingga perut Bunda terasa mengembang. Tahan napas sejenak dan buang perlahan.</p>\r\n\r\n<ul>\r\n	<li><strong>Gerakan Tangan Berputar</strong></li>\r\n</ul>\r\n\r\n<p>Latihan ini dapat membantu meregangkan bahu serta melapangkan dada sehingga Bunda merasa lebih rileks. Sangat tepat untuk dilakukan setelah menjalani jadwal yang padat:</p>\r\n\r\n<ol>\r\n	<li>Berdiri dengan kaki terbuka selebar pinggul dan tangan di sisi tubuh</li>\r\n	<li>Menghadap ke depan, putar lengan kanan ke depan membentuk lingkaran mendekati telinga dan lanjutkan ke arah belakang dengan gerakan perlahan tanpa putus. Lakukan dengan mengencangkan perut dan punggung tegak.</li>\r\n	<li>Letakkan kembali lengan kanan di sisi tubuh, pastikan bahu Bunda dalam posisi rileks, dan ulangi gerakan yang sama untuk lengan kiri.</li>\r\n	<li>Lakukan delapan kali untuk setiap lengan.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Meregangkan Bahu Sambil Duduk</strong></li>\r\n</ul>\r\n\r\n<p>Latihan peregangan ini berfungsi untuk mengendurkan otot bahu dan lengan selain membuat leher dan punggung Bunda lebih rileks.</p>\r\n\r\n<ol>\r\n	<li>Duduk tegak dengan kedua kaki Bunda menapak rata di lantai, perlahan regangkan lengan kanan Bunda dengan mengangkatnya ke atas ke samping telinga</li>\r\n	<li>Tekuk siku dan biarkan tangan Bunda menyentuh bagian punggung. Tekan siku Bunda semakin jauh ke belakang menggunakan tangan kiri.</li>\r\n	<li>Tahan selama 20 detik dan ulangi untuk lengan kiri.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li><strong>Olah Kepala dan Leher</strong></li>\r\n</ul>\r\n\r\n<p>Menjaga fleksibilitas otot leher dan bahu dapat membantu mencegah terjadinya ketegangan di tubuh bagian atas. Dua alternatif latihan ini dapat dilakukan dengan mudah di meja kerja.</p>\r\n\r\n<ol>\r\n	<li>Duduk tegak dengan bahu rileks dan kepala tegak. Miringkan kepala perlahan hingga telinga kanan Bunda menyentuh bahu kanan.</li>\r\n	<li>Kembali ke tengah dan miringkan kepala ke kiri.</li>\r\n	<li>Ulangi gerakan ini lima kali.</li>\r\n	<li>Selain ini, Bunda juga dapat duduk tegak di kursi dengan bahu rileks. Putar kepala perlahan ke kanan, kembali ke tengah, lalu putar kepala perlahan ke kiri.</li>\r\n	<li>Ulangi rangkaian gerakan ini sebanyak 5 kali. Jika ingin, Bunda dapat mengkombinasikan kedua latihan ini.</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li><strong>Gerakkan Kaki dan Pergelangan</strong></li>\r\n</ul>\r\n\r\n<p>Gerakan ini dapat memperbaiki sirkulasi, membantu menghindari terjadinya keram dan mengencangkan otot betis dan paha.</p>\r\n\r\n<ul>\r\n	<li>Duduk santai di kursi dengan punggung Bunda tertumpu baik, angkat kaki kanan Bunda sedikit dan mulailah menggambar huruf-huruf alphabet menggunakan kaki kanan Bunda di udara. Pastikan kaki kiri Bunda menapak dengan sempurna di lantai.</li>\r\n	<li>Ulangi gerakan yang sama menggunakan kaki kiri dan ulangi seluruh rangkaian gerakan ini sebanyak dua kali.</li>\r\n</ul>\r\n\r\n<p>untuk menjaga kecantikan bla bla bla .....</p>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_aman-dikantor.jpg', '', '2016-10-13', 1),
(4, 'Makan Sehat Yuk Bun...', 1, '<p>Apa yang Bunda makan saat hamil sangat berpengaruh pada kualitas kehamilan Bunda. Makanan dan cara makan yang sehat akan membantu perkembangan bayi dalam kandungan dan membuat Bunda fit serta sehat.</p>\r\n\r\n<p><strong>PRINSIP DASAR</strong></p>\r\n\r\n<p><strong>1. Perhatikan Pola Makan</strong></p>\r\n\r\n<ul>\r\n	<li>Telaah kembali pola makan Bunda selama ini.</li>\r\n	<li>Saat hamil, Bunda membutuhkan lebih banyak konsumsi protein, vitamin dan mineral seperti asam folat dan zat besi yang sangat penting untuk pertumbuhan bayi. Bunda membutuhkan 300 kalori tambahan per harinya.</li>\r\n	<li>Sebaiknya kebutuhan kalori dipenuhi 55% dari karbohidrat, 35% dari lemak baik nabati maupun hewani, 10% dari protein dan sayuran serta buah-buahan.</li>\r\n	<li>Pola makan khusus tidak diperlukan. Namun pastikan Bunda mengkonsumsi beragam makanan agar mendapatkan nutrisi seimbang yang dibutuhkan Bunda dan bayi.</li>\r\n	<li>Walau lebih cepat lapar daripada biasanya, tetap konsumsi makanan dalam jumlah wajar, tidak perlu jadi &ldquo;dua porsi&rdquo; walau hamil kembar atau kembar tiga.&nbsp;</li>\r\n	<li>Sarapan sehat ya Bunda karena dapat membantu menghindari &ldquo;ngemil&rdquo; makanan yang tinggi kandungan lemak dan gula.</li>\r\n	<li>Pastikan Bunda makan dengan sehat. Bunda tetap boleh menyantap makanan kesukaan, tetapi pastikan jenisnya beragam agar kebutuhan nutrisi tercukupi.Hindari Makanan yang Membahayakan</li>\r\n</ul>\r\n\r\n<p><strong>2. Hindari Makanan yang Membahayakan</strong></p>\r\n\r\n<p>Ada beberapa jenis makanan yang sebaiknya dihindari selama kehamilan:</p>\r\n\r\n<p>Makanan mentah atau yang dimasak kurang matang. Dikhawatirkan makanan-makanan ini dapat mengandung:</p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li><strong>Toksoplasmosis</strong>, parasit yang dapat menyebabkan infeksi serius pada janin. Parasit ini biasanya terdapat pada sayuran yang tidak dicuci dengan baik. Sangat penting untuk membersihkan sayuran dengan baik apalagi jika akan diolah menjadi salad atau lalapan yang dimakan mentah. Untuk menghindari kemungkinan terkena toksoplasmosis, sangat disarankan untuk sementara menghindari bermain dengan kucing dan bersentuhan dengan kotorannya.</li>\r\n	<li><strong>Salmonella</strong>. Bakteri ini dapat menjadi penyebab diare berat pada ibu hamil. Biasanya terdapat pada daging dan telur mentah atau dimasak kurang matang. Pastikan juga untuk mencuci bersih piring dan alat masak yang terpapar daging mentah.</li>\r\n</ul>\r\n\r\n<p>Ikan-ikan berukuran besar yang diketahui mengandung tingkat merkuri yang tinggi karena dapat menyebabkan kerusakan saraf jika dimakan dalam&nbsp; jumlah besar, misalnya: ikan tuna, kakap putih, hiu, dll.</p>\r\n\r\n<p>Susu yang tidak melalui proses pasteurisasi dan keju lunak seperti brie, camembert, bluecheese, keju dari susu kambing dan domba, karena mempunyai resiko membawa bakteri ecoli dan listeria yang dapat menyebabkan diare berdarah. Listeria sendiri adalah bakteri yang bisa menembus plasenta serta menyebabkan infeksi janin dan dapat menyebabkan <a href=\"http://bidanku.com/Penyebab-dan-Tanda-Tanda-Keguguran\">keguguran</a>, <a href=\"http://bidanku.com/Persalinan-Prematur\">kelahiran prematur</a>, dan keracunan dalam darah.</p>\r\n\r\n<p>Minuman yang mengandung alkohol karena dapat menyebabkan kelainan perkembangan pada janin dan problem emosional pada bayi.</p>\r\n\r\n<p>Minuman yang mengandung kafein seperti kopi, teh, dll. Hindari dan batasi karena dapat menyebabkan berat badan lahir rendah pada bayi, keguguran dan mengganggu penyerapan zat besi.</p>\r\n\r\n<p><strong>3. Jangan Diet Selama Kehamilan</strong></p>\r\n\r\n<p>Diet dapat membahayakan karena bisa menyebabkan kekurangan asupan nutrisi yang diperlukan Bunda dan bayi. Pertambahan berat badan secara bertahap (10 &ndash; 15 kg) saat hamil merupakan hal yang seharusnya terjadi dan menandakan kehamilan yang sehat.</p>\r\n\r\n<p><strong>4. Makan dengan Porsi Kecil tetapi Sering</strong></p>\r\n\r\n<p>Makan dengan porsi kecil tetapi sering sangat dianjurkan. Cara ini juga dapat membantu Bunda yang mengalami mual muntah di awal kehamilan untuk menjaga asupan nutrisi. Dianjurkan untuk makan setiap empat jam.</p>\r\n\r\n<p><strong>5. Minum Vitamin Kehamilan secara Teratur</strong></p>\r\n\r\n<p>Walau sumber vitamin terbaik berasal dari makanan yang Bunda konsumsi, namun sangat dianjurkan untuk meyakinkan kecukupan vitamin saat hamil terpenuhi, khususnya asam folat dan zat besi. Jangan ragu untuk mengkonsumsi vitamin secara teratur sesuai anjuran dokter atau bidan ya Bun.</p>\r\n\r\n<p><strong>6. Minum Cukup Air</strong></p>\r\n\r\n<p>Cairan yang cukup sangat penting untuk Bunda dan bayi karena dibutuhkan guna membangun sel darah merah bayi, sistim sirkulasi cairan ketuban, dan mengatasi sembelit mengatur suhu tubuh Bunda. Pastikan konsumsi 8 gelas air setiap harinya tidak terlewatkan ya Bun. Oiya, info saja, saat hamil 33% pertambahan berat adalah cairan.</p>\r\n\r\n<p><strong>7. Makanan Berserat, Buah-Buahan dan Sayuran</strong></p>\r\n\r\n<p>Perbanyak konsumsi makanan berserat tinggi. Buah-buahan dan sayuran dapat membantu mengatasi sembelit selama kehamilan.</p>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_makan-yuk-bun.jpg', '', '2016-10-27', 1),
(5, 'Panduan Kebutuhan Nutrisi Pada Tiap Trimester', 1, '<p>Bunda, masa kehamilan terbagi ke dalam tiga bagian: Trimester Pertama (bulan 1 -3), Trimester Kedua (bulan 4 &ndash; 6), dan Trimester Ketiga (bulan 7 &ndash; hingga bayi lahir). Setiap trimester memiliki pertumbuhan janin yang berbeda, sehingga nutrisi yang dibutuhkan pun berbeda). Berikut kebutuhan nutrisi untuk setiap trimester kehamilan Bunda:</p>\r\n\r\n<p><strong>Trimester Pertama</strong></p>\r\n\r\n<ul>\r\n	<li>Usia kehamilan: Minggu 1 sampai 16</li>\r\n	<li>Pada masa hamil muda ini, pembentukan kelengkapan organ penting berlangsung.</li>\r\n	<li>Kebutuhan pada periode ini:&nbsp;\r\n	<ul>\r\n		<li>Ekstra kalori sebanyak 300 untuk mendukung pertumbuhan dan perkembangan janin.</li>\r\n		<li>Karbohidrat yang didapat dari nasi, roti, gandum, sereal</li>\r\n		<li>Kalsium untuk membentuk tulang rangka janin. Perbanyak konsumsi kalsium memasuki minggu ke 7. Beberapa sumber kalsium: susu, produk susu, yogurt dan jenis makanan lain yang mengandung susu.</li>\r\n		<li>Protein untuk membentuk sel otak.</li>\r\n		<li>Tambahkan vitamin A, B1, B2,B3 dan B6&nbsp; untuk tumbuh kembang janin dan vitamin B12&nbsp;untuk pembentukan sel darah.</li>\r\n		<li>Vitamin D untuk pembentukan tulang dan</li>\r\n		<li>Vitamin E untuk metabolisme dan didapat di sayuran dan buah-buahan.</li>\r\n	</ul>\r\n	</li>\r\n	<li>Pentingnya asupan nutrisi dan karbohidrat pada masa ini mengharuskan Bunda untuk &ldquo;melawan&rdquo; rasa mual dan muntah yang umum dialami. Hal ini sangat penting agar tidak mengurangi dan menghambat asupan nutrisi dan karbohidrat.</li>\r\n	<li>Semoga panduan makanan sehat untuk masa hamil muda ini dapat membantu ya Bun:</li>\r\n</ul>\r\n\r\n<p><strong>Sereal</strong></p>\r\n\r\n<p>Kandungan mineral, vitamin B, karbohidrat dan kalsium serta variasi rasa menjadikan sereal sebagai sumber nutrisi dan energi yang baik bagi Bunda, khususnya untuk mengatasi mual dan muntah yang kerap dirasakan pada masa ini.</p>\r\n\r\n<p><strong>Produk susu</strong></p>\r\n\r\n<p>Kandungan dalam susu dapat membantu pertumbuhan jaringan baru, memperbaiki jaringan rusak dan pembentukan otot serta transportasi oksigen ke janin. Susu kedelai dapat menjadi alternatif untuk variasi rasa dan pemenuhan kecukupan vitamin D.</p>\r\n\r\n<p><strong>Buah dan Sayur</strong></p>\r\n\r\n<p>Vitamin C yang banyak terdapat pada buah-buahan seperti jeruk dan kiwi dibutuhkan oleh Bunda untuk meningkatkan kekebalan tubuh dan memerangi infeksi. Lengkapi asupan nutrisi Bunda dengan makanan yang mengandung zat besi, seperti sayuran hijau, untuk mencegah anemia dan meningkatkan asupan hemoglobin ke sel-sel tubuh serta memberikan energi.</p>\r\n\r\n<p><strong>Ikan</strong></p>\r\n\r\n<p>Protein dan asam lemak omega 3 yang banyak terdapat pada ikan dapat membantu pembentukan otak janin, tetapi perhatikan dan waspadai kandungan merkuri pada ikan yang Bunda konsumsi karena dapat menggangu perkembangan janin. Hindari mengkonsumsi ikan mentah.</p>\r\n\r\n<p><strong>Kacang-kacangan</strong></p>\r\n\r\n<p>Kacang-kacangan sangat bermanfaat untuk tumbuh kembang janin, khususnya pertumbuhan sistem saraf, dan juga menambah energi serta meningkatkan kekebalan tubuh Bunda. Bubur kacang hijau dapat menjadi pilihan makanan Bunda karena kandungan asam folat dan vitamin B-nya yang tinggi. &nbsp;</p>\r\n\r\n<p><strong>Air dan Vitamin</strong></p>\r\n\r\n<p>Air dan vitamin sangat penting dalam tahap kehamilan ini. Konsumsi air dalam jumlah cukup dapat membantu mengatasi rasa mual. Agar lebih menggugah selera, campurkan dengan sari buah tanpa tambahan gula. Tambahan asupan vitamin juga sangat penting selama masa kehamilan. Konsultasikan dengan dokter Bunda ya untuk suplemen vitamin yang tepat. Berikut contoh menu agar kehamilan Bunda di Trimester Pertama lebih menyenangkan:</p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\">Sarapan</th>\r\n			<th scope=\"col\">Makan Siang</th>\r\n			<th scope=\"col\">Makan Malam</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Jus Buah</p>\r\n\r\n			<p>Nasi Goreng</p>\r\n\r\n			<p>Telur Mata Sapi</p>\r\n\r\n			<p>Susu / susu khusus kehamilan</p>\r\n			</td>\r\n			<td>\r\n			<p>Nasi</p>\r\n\r\n			<p>Sayur Bening</p>\r\n\r\n			<p>Ikan Bumbu Kuning</p>\r\n\r\n			<p>Tempe Goreng</p>\r\n\r\n			<p>Buah Jeruk</p>\r\n			</td>\r\n			<td>\r\n			<p>Nasi</p>\r\n\r\n			<p>Bistik</p>\r\n\r\n			<p>Bakwan Jagung</p>\r\n\r\n			<p>Selada Buah</p>\r\n\r\n			<p>Susu (menjelang tidur)</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trimester Kedua </strong></p>\r\n\r\n<ul>\r\n	<li>Usia Kehamilan : 17 &ndash; 28 minggu</li>\r\n	<li>Perkembangan dan pertumbuhan janin semakin pesat sehingga harus diimbangi dengan asupan nutrisi yang baik.</li>\r\n	<li>Asupan kalori, zat besi dan vitamin C penting untuk mengoptimalkan pembentukan sel darah merah guna mendukung perkembangan jantung dan sistem peredaran darah janin.</li>\r\n	<li>Asam lemak omega 3 dibutuhkan untuk memaksimalkan pembentukan otak janin di trimester kedua akhir.</li>\r\n	<li>Hindari makanan dengan kandungan kafein tinggi dan kandungan garam yang berlebih karena dapat memicu kaki bengkak akibat cairan tubuh yang tertahan.</li>\r\n	<li>&nbsp;Konsumsi cukup air setiap hari untuk menghindari sembelit dan wasir.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trimester Ketiga </strong></p>\r\n\r\n<ul>\r\n	<li>Usia kehamilan : 29 minggu &ndash; lahir</li>\r\n	<li>Bunda membutuhkan asupan energi yang cukup untuk mendukung proses persalinan dan juga kalori untuk mendukung pertumbuhan jaringan janin dan plasentanya.</li>\r\n	<li>Asupan kalori bisa Bunda dapatkan dari sereal, kentang, mentega, susu, telur, alpukat, dan minyak nabati.</li>\r\n	<li>Bunda juga membutuhkan asupan vit B6 untuk membantu metabolisme dalam pembentukan senyawa kimia yang diantarkan pada sel saraf.</li>\r\n	<li>Vitamin B1, B2 dan B3 juga penting untuk membantu enzim mengatur sistem pernapasan dan energi.</li>\r\n	<li>Pada tahap ini, yodium tidak kalah penting untuk proses perkembangan janin dan meminimalisir kemungkinan terhambatnya perkembangan otak dan tinggi badan.</li>\r\n	<li>Konsumsi cairan yang cukup sangat penting pada tahap kehamilan ini untuk mengatur sel-sel&nbsp; baru, suhu tubuh dan proses metabolisme</li>\r\n</ul>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_nutrisi-bumil.jpg', '', '2016-10-27', 1),
(6, 'Nutrisi Penting Selama Kehamilan. ', 1, '<p>Kekurangan gizi saat hamil berdampak buruk bagi Bunda dan janin. Kekurangan gizi dapat menyebabkan bayi lahir prematur, keguguran, kelainan sistem syaraf, janin berkembang tidak normal, bahkan hingga kematian janin.</p>\r\n\r\n<p>Asupan gizi yang berkualitas dengan komposisi yang berimbang dan cukup sangatlah penting. Walau secara umum, jika tidak mengalami gejala seperti anemia, gusi berdarah dan gejala lainnya, serta memiliki perkembangan berat badan yang sehat dan setelah dinyatakan oleh dokter dan bidan, maka bisa dikatakan kebutuhan gizi dan nutrisi Bunda telah tercukupi.</p>\r\n\r\n<p>Berikut nutrisi penting untuk kehamilan yang sehat:</p>\r\n\r\n<p>1. Karbohidrat dan Lemak</p>\r\n\r\n<ul>\r\n	<li>Sumber zat tenaga untuk menghasilkan kalori.</li>\r\n	<li>Dapat diperoleh dari serelia, umbi-umbian.</li>\r\n</ul>\r\n\r\n<p>2. Protein</p>\r\n\r\n<ul>\r\n	<li>Sumber kalori dan zat pembangun, pembentukan sel dan darah</li>\r\n	<li>Kebutuhan harian protein adalah 60 gram atau 10 gram lebih banyak dari biasanya.</li>\r\n	<li>Dapat diperoleh dari daging, ikan, telur dan kacang-kacangan, tempe, tahu.</li>\r\n</ul>\r\n\r\n<p>3. Mineral</p>\r\n\r\n<ul>\r\n	<li>Zat pengatur</li>\r\n	<li>Dapat diperoleh dari buah-buahan dan sayur - sayuran.</li>\r\n</ul>\r\n\r\n<p>4. Vitamin A</p>\r\n\r\n<ul>\r\n	<li>Bermanfaat untuk pemeliharaan fungsi mata, pertumbuhan tulang dan kulit serta meningkatkan imunitas dan pertumbuhan janin.</li>\r\n	<li>Jangan sampai berlebih mengkonsumsi vitamin A ya Bun karena dapat mengganggu pertumbuhan janin</li>\r\n	<li>Terdapat pada sayuran berwarna hijau dan jingga, susu, hati ayam</li>\r\n</ul>\r\n\r\n<p>5. Vitamin B Kompleks</p>\r\n\r\n<ul>\r\n	<li>Bermanfaat untuk menjaga sistem saraf, otot dan jantung agar berfungsi secara normal.</li>\r\n	<li>Dapat diperoleh dari serealia, biji - bijian, kacang-kacangan, sayuran hijau, ragi, telur dan produk susu.</li>\r\n</ul>\r\n\r\n<p>6.&nbsp;Vitamin C</p>\r\n\r\n<ul>\r\n	<li>Bermanfaat untuk menyerap zat besi, menjaga kesehatan gusi dan gigi, melindungi jaringan dan organ tubuh</li>\r\n	<li>Merupakan sumber antioksidan dan terdapat pada buah-buahan.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>7. Vitamin D</p>\r\n\r\n<ul>\r\n	<li>Bermanfaat untuk penyerapan kalsium, pertumbuhan dan pembentukan tulang bayi serta mengurangi resiko hipertensi dan diabetes.</li>\r\n	<li>Vitamin D juga dapat meningkatkan sistem kekebalan tubuh dan kesulitan pernafasan pada bayi.</li>\r\n	<li>Dapat diperoleh dari minyak hati ikan, kuning telur dan susu.</li>\r\n</ul>\r\n\r\n<p>8. Vitamin E</p>\r\n\r\n<ul>\r\n	<li>Bermanfaat untuk pembentukan sel darah merah yang sehat dan melindungi asam lemak yang dibutuhkan janin Bunda</li>\r\n	<li>Membantu menjaga kualitas sel kulit ibu karena peregangan seiring bertambahnya usia kehamilan.</li>\r\n	<li>Dapat diperoleh dari biji-bijian terutama gandum, kacang-kacangan, minyak sayur dan sayuran hijau.</li>\r\n</ul>\r\n\r\n<p>9.&nbsp;Vitamin K</p>\r\n\r\n<ul>\r\n	<li>Bermanfaat melindungi asam lemak yang dibutuhkan janin selain membentuk darah bagi Bunda.</li>\r\n	<li>Banyak terdapat pada sayuran berdaun hijau</li>\r\n</ul>\r\n\r\n<p>10. Asam Folat</p>\r\n\r\n<ul>\r\n	<li>Bermanfaat untuk perkembangan sistem saraf dan sel darah.</li>\r\n	<li>Dapat diperoleh dari sayuran berwarna hijau gelap seperti bayam, kembang kol dan brokoli. Buah-buahan seperti jeruk, pisang, wortel dan tomat.</li>\r\n	<li>Selama kehamilan, ada kebutuhan tambahan sebanyak 400 mcg per hari, terutama pada 12 minggu pertama kehamilan.</li>\r\n	<li>Kekurangan asam folat dapat mengganggu pembentukan otak, sampai cacat bawaan pada susunan saraf pusat maupun otak janin, terlahir dengan kelainan seperti mengalami anenchephaly (tanpa batok kepala), mengalami bibir sumbing dan menderita spina-bifida (kondisi dimana tulang belakang tidak tersambung).</li>\r\n</ul>\r\n\r\n<p>11. Zat Besi</p>\r\n\r\n<ul>\r\n	<li>Bermanfaat membentuk darah terutama sel darah merah (haemoglobin) dan mengurangi resiko ibu hamil terkena anemia.</li>\r\n	<li>Dibutuhkan sebanyak 30 mg per hari, khususnya saat kehamilan memasuki usia 20 minggu.</li>\r\n	<li>Banyak terdapat pada sayuran hijau (seperti bayam, kangkung, daun singkong, daun pepaya), daging, ikan dan hati.</li>\r\n</ul>\r\n\r\n<p>12. Kalsium</p>\r\n\r\n<ul>\r\n	<li>Bermanfaat untuk pertumbuhan tulang dan gigi janin, serta melindungi ibu hamil dari osteoporosis</li>\r\n	<li>Jika kebutuhan kalsium tidak tercukupi, maka kekurangannya akan diambil dari tulang ibu.</li>\r\n	<li>Banyak terdapat pada susu dan produk olahannya serta sayuran hijau dan kacang-kacangan.</li>\r\n</ul>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_nutrition-guide.jpg', '', '2016-10-27', 1),
(7, 'Serba-Serbi Vitamin B', 1, '<p>Mungkin Bunda sudah tahu bahwa tidak seperti vitamin lainnya, vitamin B terdiri dari beberapa jenis. Berikut ragam jenis dan kegunaannya bagi Bunda:</p>\r\n\r\n<p>1. Vitamin B1</p>\r\n\r\n<ul>\r\n	<li>Atau tiamin dan bermanfaat meminimalkan <em>morning sickness</em> dan melancarkan pencernaan.</li>\r\n	<li>Mengkonsumsi makanan dengan vitamin B pada Trimester 3 kehamilan dapat membantu produksi ASI.</li>\r\n	<li>Terdapat pada kacang-kacang, gandum dan hati</li>\r\n</ul>\r\n\r\n<p>2. Vitamin B2</p>\r\n\r\n<ul>\r\n	<li>Atau riboflavin ini berperan membantu perkembangan janin pada minggu pertama dan mengurai makanan menjadi sari makanan yang dibutuhkan janin selama dalam kandungan.</li>\r\n	<li>Bisa didapat dari keju, susu, brokoli, jamur, telur dan sayuran hijau.</li>\r\n</ul>\r\n\r\n<p>3. Vitamin B 3</p>\r\n\r\n<ul>\r\n	<li>Membantu mengurangi mual dan muntah di awal kehamilan</li>\r\n	<li>Membentuk sel otak janin</li>\r\n	<li>Kebutuhannya sebanyak 18 mg bisa didapat dengan mengkonsumsi gandum, hati, sayuran hijau, kacang tanah, susu.</li>\r\n</ul>\r\n\r\n<p>4. Vitamin B 5</p>\r\n\r\n<ul>\r\n	<li>Bermanfaat untuk memelihara sel darah merah selama kehamilan</li>\r\n	<li>Kebutuhannya sebanyak 5 mg bisa didapat dengan mengkonsumsi ayam, alpukat, semangka dan ikan sarden.</li>\r\n</ul>\r\n\r\n<p>5. Vitamin B 6.</p>\r\n\r\n<ul>\r\n	<li>Atau pridoksin, bermanfaat untuk meningkatkan kekebalan tubuh selama kehamilan.</li>\r\n	<li>Bisa didapat dengan mengkonsumsi gandum, ikan, susu, kacang kedelai.</li>\r\n</ul>\r\n\r\n<p>6. Vitamin B 12.</p>\r\n\r\n<ul>\r\n	<li>Bermanfaat membentuk sistem saraf pusat janin dan sel darah merah.</li>\r\n	<li>Kebutuhannya sebanyak Ibu hamil 2,6 mkg bisa dipenuhi dengan mengkonsumsi telur, susu, rumput laut, daging sapi.</li>\r\n</ul>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_vitaminb.jpg', '', '2016-10-27', 1),
(8, 'Susu Ibu Hamil', 1, '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fungsi susu ibu hamil adalah sebagai tambahan atau penyempurna makanan Bunda. Walau baik untuk di konsumsi, tetapi bukan sesuatu yang mutlak karena sumber utama asupan nutrisi dan gizi adalah makanan sehari-hari Bunda. Apabila nafsu makan Bunda berkurang, mengalami muntah yang hebat dan kekurangan gizi, susu ibu hamil dapat menjadi salah satu solusi untuk pemenuhan kebutuhan gizi.</p>\r\n\r\n<p>Berikut tips terkait susu ibu hamil sesuai kandungan yang terdapat di dalamnya dan usia kehamilan Bunda:</p>\r\n\r\n<ul>\r\n	<li>Kehamilan Trimester Pertama\r\n	<ul>\r\n		<li>Disarankan yang mengandung lebih banyak vitamin B6 untuk membantu mengatasi <em>morning sickness</em>, asam folat dan DHA untuk membantu pembentukan syaraf dan otak.</li>\r\n	</ul>\r\n	</li>\r\n	<li>Kehamilan Trimester Kedua dan Ketiga\r\n	<ul>\r\n		<li>Disarankan yang lebih banyak mengandung zat besi untuk membantu mencegah Bunda terkena anemia, bayi lahir prematur atau dengan Berat Badan Lahir Rendah (BBLR).</li>\r\n		<li>Dan mengandung zat fruktooligosakarida (FOS) agar dapat membantu menghindari Bunda mengalami sembelit dan kaya kandungan kalisum untuk pembentukan tulang dan gigi janin serta mencegah osteoporosis pada Bunda.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p>Semua yang dikonsumsi secara berlebihan tentu akan berdampak tidak baik, begitu juga dengan susu ibu hamil. Jangan berlebihan. Disarankan untuk mengkonsumsi tidak lebih dari 2 gelas setiap hari. Apabila setelah dicek oleh dokter atau bidan, Bunda tidak mengalami masalah dengan konsumsi makanan dan nutrisi, tidak mengkonsumsi susu ibu hamil pun tidak apa-apa.</p>\r\n\r\n<p style=\"text-align:center\"><iframe frameborder=\"0\" height=\"169\" src=\"https://www.youtube.com/embed/N5s5c1T-6cU\" width=\"300\"></iframe></p>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_susu-ibu.jpg', '', '2016-10-27', 1),
(9, 'Jus Sehat', 1, '<p>Makanan berserat sangat bermanfaat untuk dikonsumsi di masa kehamilan, dan sayuran serta buah-buahan merupakan sumber makanan berserat yang sangat baik. Supaya tidak bosan dan jadi lebih bersemangat menyantapnya, berikut jus sehat yang dapat diolah sendiri dan menjadi pilihan Bunda:</p>\r\n\r\n<p><strong>1. Jus Pepaya dan Mangga</strong></p>\r\n\r\n<ul>\r\n	<li>Mengandung karbohidrat dan enzim yang tinggi.</li>\r\n	<li>Dapat menanggulangi peradangan, pembengkakan, gangguan pencernaan dan demam karena manga yang berkhasiat mengurangi dehidrasi dan melancarkan peredaran darah, sedang papaya berkhasiat melancarkan pencernaan.</li>\r\n</ul>\r\n\r\n<p><strong>2. Jus Alpukat</strong></p>\r\n\r\n<ul>\r\n	<li>Kaya akan serat, karbohidrat, lemak sehat, protein, serta potassium, vitamin K, C, dan B</li>\r\n	<li>Baik untuk melancarkan pencernaan, menambah energi dan melengkapi nutrisi Bunda serta membantu tumbuh kembang janin.</li>\r\n</ul>\r\n\r\n<p><strong>3. Jus Apel dan Seledri</strong></p>\r\n\r\n<ul>\r\n	<li>Berkhasiat membantu Bunda mengatasi gangguan tidur, dan kandungan pektin dalam buah apel berkhasiat untuk kolesterol.</li>\r\n</ul>\r\n\r\n<p><strong>4. Jus Wortel</strong></p>\r\n\r\n<ul>\r\n	<li>Berkhasiat untuk menambah energi, mengurangi letih, kadar gula darah dan membantu mencegah pre-eklampsia.</li>\r\n</ul>\r\n\r\n<p><strong>5. Jus Bayam</strong></p>\r\n\r\n<ul>\r\n	<li>Kandungan vitamin K, C, A, B, asam folat, zat besi dan magnesium bayam sangat bermanfaat untuk kesehatan Bunda dan janin</li>\r\n	<li>Campurkan dengan apel dan jeruk nipis supaya semakin menggugah selera.</li>\r\n</ul>\r\n\r\n<p><strong>6. Jus Timun</strong></p>\r\n\r\n<ul>\r\n	<li>Menyegarkan untuk Bunda konsumsi saat panas di siang hari. Campurkan juga perasan jeruk nipis agar makin segar</li>\r\n	<li>Berkhasiat untuk mengatasi sakit punggung, gangguan kulit, atau kram otot berkat kandungan mineral silikat yang membantu menjaga jaringan otot, ligamen, peningkatan corak kulit, kuku, rambut dan tulang rawan.</li>\r\n</ul>\r\n\r\n<p><strong>7.&nbsp;Jus Pir</strong></p>\r\n\r\n<ul>\r\n	<li>Berkhasiat untuk &ldquo;menenangkan&rdquo; perut Bunda karena kadar asam yang berlebihan.</li>\r\n</ul>\r\n\r\n<p>Bunda dapat berkreasi sendiri dengan memadu-padankan sayuran dan buah-buahan sesuai selera. Tips: tambahkan campuran es krim atau susu dan&hellip;<em>voila, smoothie</em> siap untuk diteguk.</p>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_pregnant-juice.jpg', '', '2016-10-27', 1),
(10, 'Serba - Serbi Pentingnya Asupan Yodium', 1, '<p>Bunda pasti menyadari pentingnya mengkonsumsi makanan bergizi selama kehamilan, bahkan untuk menunjang perkembangan dan pertumbuhan yang optimal sering kali dokter menyarankan pemberian suplemen atau vitamin. Dari pengalaman, seringkali ibu hamil melupakan asupan mineral seperti yodium.</p>\r\n\r\n<p>Kecukupan kebutuhan yodium pada ibu hamil penting untuk Bunda ketahui karena kelebihan atau kekurangan asupan mineral ini dapat berdampak pada kesehatan Bunda dan janin. Penelitian di Australia menunjukkan bahwa ibu seringkali kekurangan yodium, walau sedikit, selama kehamilan dan enam bulan setelah melahirkan.</p>\r\n\r\n<p>Yodium adalah jenis mineral yang memberikan dampak pada perkembangan neurologi atau sistem syaraf janin sehingga penting untuk dicukupi kebutuhannya. Namun, bukan berarti Bunda dapat mengkonsumsinya secara berlebihan. Kelebihan yodium dapat menimbulkan masalah kesehatan pada ibu hamil. Dosis yodium yang direkomendasikan WHO untuk ibu hamil adalah 220 mikrogram yang berguna untuk menjaga kondisi kesehatan ibu dan janin selama kehamilan dan setelah persalinan.</p>\r\n\r\n<p>Kekurangan yodium dapat berdampak pada fisik dan juga mental bayi. Di sisi lain, kelebihan yodium dapat memicu hipotiroidisme atau kondisi dimana terjadi penurunan sintesis dan sekresi hormon tiroid dari bagian kelenjar tiroid. Kondisi ini berhubungan dengan konsumsi iodine yang terlalu banyak sehingga menginduksi terjadinya kelainan enzimatik dan menyebkan terlambatnya sintesis hormon pada bagian kelenjar yang dikenal dengan kelenjar tiroid.</p>\r\n\r\n<p>Untuk mengetahui kadar yodium di dalam tubuh, Bunda dapat melakukan tes urine. Apabila ternyata Bunda mengalami kekurangan yodium, Bunda dapat mengkonsumsi yogurt atau roti yang diperkaya kandungan yodium atau mengkonsumsi supleman sesuai yang disarankan dokter.</p>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_yodium.jpg', '', '2016-10-27', 1),
(11, '20 Pantangan Untuk Ibu Hamil', 2, '<p><strong>1. Makanan Mentah:</strong></p>\r\n\r\n<ul>\r\n	<li>Makanan mentah, berasal dari hewan ataupun sayuran beresiko tinggi memicu gangguan kesehatan karena dapat mengandung bakteri, virus, dan parasit lebih banyak dan dapat mengganggu perkembangan janin Bunda.</li>\r\n	<li>Selalu masak matang makanan yang Bunda konsumsi</li>\r\n	<li>Sayuran mentah seperti kecambah mentah memiliki resiko bakteri yang lebih tinggi dibanding dengan sayuran lainnya.</li>\r\n</ul>\r\n\r\n<p><strong>2. Ikan dengan Kandungan Merkuri</strong></p>\r\n\r\n<ul>\r\n	<li>Selektif memilih ikan laut untuk dikonsumsi saat hamil. Pastikan tidak mengandung merkuri yang membahayakan karena dapat mengganggu perkembangan otak dan sistem saraf janin.</li>\r\n	<li>Umumnya ikan laut memang sangat bagus untuk kesehatan, termasuk kesehatan janin Bunda. Akan tetapi Bunda harus selektif karena jenis ikan yang mengandung merkuri tidak baik bagi janin.</li>\r\n</ul>\r\n\r\n<p><strong>3. Makanan Pemicu Alergi</strong></p>\r\n\r\n<ul>\r\n	<li>Jika Bunda, Ayah atau kakak memiliki riwayat alergi terhadap jenis makanan tertentu, ada kemungkinan janin Bunda juga memilikinya.</li>\r\n	<li>Disarankan untuk menghindari konsumsi makanan pemicu alergi saat hamil atau menyusui karena dapat menurunkan resiko alergi pada janin Bunda.</li>\r\n</ul>\r\n\r\n<p><strong>4. Minuman Beralkohol</strong></p>\r\n\r\n<ul>\r\n	<li>Minuman beralkohol menghambat asupan nutrisi dan aliran oksigen yang dibutuhkan janin Bunda.</li>\r\n	<li>Alkohol berpengaruh pada kemampuan otak janin.</li>\r\n	<li>Konsumsi alkohol saat hamil beresiko menimbulkan gangguan saat bayi lahir seperti gangguan kecerdasan dan fisik.</li>\r\n</ul>\r\n\r\n<p><strong>5. Kafein</strong></p>\r\n\r\n<ul>\r\n	<li>Kafein dapat mengganggu kehamilan</li>\r\n	<li>Konsumsi kafein saat hamil dapat mengakibatkan resiko keguguran, bayi dengan berat badan lahir rendah (BBLR) dan pada kasus yang parah bahkan dapat mengakibatkan kematian saat lahir.</li>\r\n</ul>\r\n\r\n<p><strong>6. Kalori yang Berlebih</strong></p>\r\n\r\n<ul>\r\n	<li>Pastikan tambahan asupan kalori saat hamil tepat porsi dan jumlahnya agar Bunda tidak mengalami obesitas.</li>\r\n	<li>Obesitas sebelum dan saat hamil dapat meningkatkan resiko bayi lahir dengan berat badan tinggi atau terkena diabetes. Namun, jangan lakun diet saat hamil karena akan menghambat asupan nutrisi janin Bunda.</li>\r\n</ul>\r\n\r\n<p><strong>7. Memakai Baju Ketat</strong></p>\r\n\r\n<ul>\r\n	<li>Mengenakan baju ketat dan yang menimbulkan panas, khususnya pada bagian perut, dapat mengganggu perkembangan janin.</li>\r\n	<li>Hindari baju dengan karet di bagian perut ya Bun.</li>\r\n</ul>\r\n\r\n<p><strong>8. Merokok</strong></p>\r\n\r\n<ul>\r\n	<li>Merokok saat hamil menyebabkan bayi lahir dengan berat badan rendah (BBLR).</li>\r\n	<li>Merokok saat hamil membahayakan janin dan dapat mengurangi kemampuan anak belajar di masa depan, kecanduan nikotin dan berpotensi menjadi perokok di usia dini.</li>\r\n	<li>Hindari diri dari paparan asap rokok saat hamil.</li>\r\n</ul>\r\n\r\n<p><strong>9. Susu yang Tidak Dipasteurisasi</strong></p>\r\n\r\n<ul>\r\n	<li>Pastikan susu dan produk olahan susu yang Bunda konsumsi telah melalui proses pasteurisasi.</li>\r\n	<li>Susu yang tidak dipasteurisasi beresiko mengandung bakteri listeria yang dapat meningkatkan resiko keguguran dan infeksi serius.</li>\r\n	<li>Apa itu pasteurisasi? Proses sterilisasi menggunakan suhu panas untuk membasmi bakteri jahat.</li>\r\n</ul>\r\n\r\n<p><strong>10. Membersihkan Kotoran Kucing</strong></p>\r\n\r\n<ul>\r\n	<li>Kotoran kucing dapat menjadi habitat bagi parasit yang membahayakan ibu hamil.</li>\r\n	<li>Gejala infeksi parasit ini kemungkinan pada awalnya tidak disadari dan dirasakan oleh Bunda. Umumnya pengecekan dilakukan dengan melakukan tes laboratorium toksoplasma (ada dalam panduan perawatan antenatal Sehati Kehamilanku).</li>\r\n	<li>Infeksi parasit ini dapat menyebabkan keguguran atau bayi lahir meninggal. Jika bayi selamat, infeksi parasit ini dapat menyebabkan bayi kejang atau menderita penyakit kejiwaan. Akan tetapi, kemungkinan ibu hamil dapat mengalami keguguran</li>\r\n</ul>\r\n\r\n<p><strong>11. Berendam Dalam Air Panas atau Sauna</strong></p>\r\n\r\n<ul>\r\n	<li>Hindari berada dalam ruangan atau lingkungan bersuhu panas.</li>\r\n	<li>Berdasarkan penelitian, resiko keguguran dapat meningkat dua kali lipat jika Bunda melakukan sauna pada 3 bulan pertama kehamilan.</li>\r\n</ul>\r\n\r\n<p><strong>12. Mengkonsumsi Obat Tanpa Petunjuk Dokter</strong></p>\r\n\r\n<ul>\r\n	<li>Selalu konsultasikan kepada dokter terlebih dahulu sebelum Bunda mengkonsumsi obat-obatan.</li>\r\n	<li>Obat yang Bunda konsumsi dapat masuk ke dalam plasenta dan sirkulasi janin dalam kandungan. Beberapa jenis obat bahkan dapat tercampur di dalam Air Susu Ibu (ASI) yang diberikan, akibatnya obat dalam kadar yang dikonsumsi Bunda akan masuk ke dalam sirkulasi tubuh bayi Bunda. Dalam kondisi tertentu hal ini dapat membahayakan bayi.</li>\r\n</ul>\r\n\r\n<p><strong>13. Menggunakan Sepatu Hak Tinggi</strong></p>\r\n\r\n<ul>\r\n	<li>Walau terlihat indah, sangat disarankan untuk tidak memakai sepatu hak tinggi saat hamil.</li>\r\n	<li>Hak tinggi dapat menyebabkan otot-otot di daerah pinggang mengalami peregangan dan menyebabkan pegal serta nyeri.</li>\r\n	<li>Saat hamil Bunda mengalami perubahan poros tubuh dimana tubuh akan lebih condong ke arah depan. Secara alami Bunda akan menetralisir kondisi ini dengan menegakan tubuh belakang yang dilakukan dengan meregangkan otot-otot punggung dan pinggang. &nbsp;</li>\r\n	<li>Penggunaan hak tinggi akan menambah peregangan otot di daerah punggung dan pinggang.</li>\r\n	<li>Keseimbangan juga menjadi alasan dibalik himbauan untuk tidak menggunakan sepatu hak tinggi, khususnya dengan kehamilan yang semakin membesar karena akan meningkatkan risiko Bunda terjatuh.</li>\r\n	<li>Terjatuh saat hamil dapat membahayakan Bunda dan janin akibat trauma atau cidera yang ditimbulkan, potensi keguguran bahkan cacat janin.</li>\r\n</ul>\r\n\r\n<p><strong>14. Memakai Obat Anti Nyamuk</strong></p>\r\n\r\n<ul>\r\n	<li>Obat anti nyamuk mengandung bahan kimia aktif, salah satunya golongan pestisida yang dapat menimbulkan efek samping seperti memicu kerusakan saraf. Obat nyamuk semprot yang mengandung minyak tanah dapat memicu kerusakan ginjal janin sementara obat nyamuk losion yang dioles pada kulit mengandung korosif yang dapat diserap oleh kulit dan menjadi racun dalam tubuh.&nbsp;</li>\r\n</ul>\r\n\r\n<p><strong>15. Melakukan Diet Selama Kehamilan</strong></p>\r\n\r\n<ul>\r\n	<li>Hindari diet saat hamil karena membahayakan Bunda dan janin.</li>\r\n	<li>Diet dapat mengganggu asupan vitamin, mineral dan zat lainnya yang diperlukan selama masa kehamilan.</li>\r\n</ul>\r\n\r\n<p><strong>16. Kondisi Jalan Jelek</strong></p>\r\n\r\n<ul>\r\n	<li>Hindari mengendarai mobil dan motor melintasi jalan yang jelek karena dapat menyebabkan terjadinya guncangan pada kehamilan.</li>\r\n	<li>Guncangan yang terlalu sering dapat menimbulkan trauma/cidera pada kehamilan dan peregangan otot punggung, pinggang, paha dan perut sehingga Bunda cepat lelah.&nbsp;</li>\r\n	<li>Jika terpaksa melintasi jalan jelek, kurangi kecepatan kendaraan atau cari jalan alternatif yang kondisinya lebih baik.</li>\r\n	<li>Hindari mengemudi apabila kehamilan Bunda telah mencapai 7 bulan atau lebih karena perut yang semakin membesar membuat Bunda sulit bermanuver dengan setir.</li>\r\n</ul>\r\n\r\n<p><strong>17. Melakukan Perawatan Rambut Kimiawi</strong></p>\r\n\r\n<ul>\r\n	<li>Hindari perawatan rambut menggunakan zat kimia seperti rebonding, keriting dan cat rambut karena bahan kimia yang terkandung di dalamnya dapat masuk ke dalam pori-pori kulit kepala untuk kemudian ke dalam aliran darah Bunda. Hal ini membahayakan janin karena dapat meningkatkan resiko janin lahir dengan kondisi cacat.</li>\r\n	<li>Hindari penggunaan krim penghilang bulu saat hamil karena mengandung bahan kimia yang mudah diserap kulit dan dapat membahayakan janin.</li>\r\n</ul>\r\n\r\n<p><strong>18. Perawatan Kulit</strong></p>\r\n\r\n<ul>\r\n	<li>Hindari penggunaan losion dan pembersih kulit yang mengandung asam salisilat. Penggunaan dengan dosis tinggi dapat menyebabkan cacat pada janin.</li>\r\n	<li>Hindari pemakaian tabir surya yang mengandung bahan kimia avobenzone dan oksibenzon dan mudah diserap kulit.</li>\r\n	<li>Hindari pemakaian pemutih kulit yang mengandung hydroquinone&nbsp; karena dapat mempengaruhi enzim dalam tubuh serta menahan bahan alami yang dibutuhkan janin. Begitu juga yang terbuat dari bahan sintetis karena dapat menimbulkan alergi.</li>\r\n	<li>Hindari produk perawatan kulit yang mengandung parabens karena senyawa ini dapat menyebabkan gangguan pada sistem reproduksi bayi laki-laki.</li>\r\n</ul>\r\n\r\n<p><strong>19. Obat Jerawat</strong></p>\r\n\r\n<p>Hindari pemakaian obat jerawat dengan kandungan-kandungan sebagai berikut:</p>\r\n\r\n<ul>\r\n	<li>Retinol A. Penggunaan dalam dosis tinggi dapat menyebabkan terhambatnya perkembangan bayi.</li>\r\n	<li>Benzoil Peroksida. Penelitian pada hewan yang dilakukan obat jerawat kategori C ini menyebabkan timbulnya efek buruk pada janin hewan.</li>\r\n	<li>Hidrokortison, karena dapat menyebabkan bayi lahir cacat dan janin dalam kandungan mengalami keracunan.</li>\r\n	<li>Accutane. Dikonsumsi secara oral, penggunaannya dihimbau untuk dihindari karena dapat menyebabkan bayi lahir cacat atau meningkatkan risiko janin lahir cacat.</li>\r\n	<li>Salicylic acid karena dapat menyebabkan komplikasi pada ibu hamil.</li>\r\n</ul>\r\n\r\n<p><strong>20. Cat Kuku</strong></p>\r\n\r\n<ul>\r\n	<li>Hindari pemakaian cat kuku yang mengandung phathalates karena dapat menimbulkan permasalahan pada sistem reproduksi.</li>\r\n	<li>Penggunaan <em>basecoat, topcoat</em> dan aseton, yang apabila terhirup, dapat mempengaruhi kehamilan.</li>\r\n</ul>\r\n\r\n<p>Beberapa penelitian menunjukkan terjadinya gangguan pada janin&nbsp; yang dikandung pekerja salon seperti bayi lahir cacat atau meninggal.</p>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_pantangan-bumil.jpg', '', '2016-10-27', 1),
(12, 'Minum Air Putih', 2, '<p>Air putih sangat penting dan bermanfaat untuk kehamilan yang lebih sehat dan menyenangkan. Simak yuk Bun.</p>\r\n\r\n<p>1. Mengurangi Sakit Kepala</p>\r\n\r\n<ul>\r\n	<li>Sakit kepala biasanya disebabkan oleh ketidak-seimbangan cairan tubuh, sistem hormon, dan kelelahan.</li>\r\n	<li>Konsumsi air putih secara seimbang dan rutin dapat membuat sakit kepala berkurang atau bahkan tidak timbul sama sekali.</li>\r\n</ul>\r\n\r\n<p>2. Mencegah Dehidrasi dan Penumpukan Cairan</p>\r\n\r\n<ul>\r\n	<li>Dehidrasi atau kekurangan cairan kerap dialami ibu hamil dan ini bisa membuat Bunda mengalami sakit punggung, sakit kepala, bahkan masalah pada ginjal.</li>\r\n	<li>Mengkonsumsi air putih secara cukup dapat mencegah timbulnya dehidrasi, mengurangi resiko penumpukan cairan pada organ-organ tubuh seperti kaki, tangan, dan persendian.</li>\r\n	<li>Penumpukan cairan biasanya disebabkan oleh kurang lancarnya peredaran cairan di dalam tubuh dan tekanan berat bayi pada pembuluh darah kaki, tangan, dan persendian sehingga terjadi pembengkakan.</li>\r\n</ul>\r\n\r\n<p>3. Mencegah Munculnya <em>Stretch Mark</em></p>\r\n\r\n<ul>\r\n	<li>Stretch mark sebenarnya terjadi karena kulit yang kekurangan nutrisi dan kurang terhidrasi tertarik seiring dengan semakin besarnya ukuran kandungan.</li>\r\n	<li>Konsumsi air putih secara seimbang dan rutin membuat kulit mampu menahan dan mencegah stretch mark karena menjadi lebih elastis dan lembut.</li>\r\n</ul>\r\n\r\n<p>4. Menghilangkan Racun</p>\r\n\r\n<ul>\r\n	<li>Air putih dapat menghalau racun dan membantu hati dan ginjal mengekskresi racun dari tubuh Bunda.</li>\r\n</ul>\r\n\r\n<p>5. Menyeimbangkan Suhu Tubuh</p>\r\n\r\n<ul>\r\n	<li>Perubahan hormon, khususnya di awal kehamilan, dapat menyebabkan suhu tubuh Bunda tidak stabil dan ini mudah membuat Bunda merasa lelah dan mengalami sembelit. Konstipasi.</li>\r\n	<li>Air putih mudah diserap dan dapat membantu menyeimbangkan suhu tubuh</li>\r\n</ul>\r\n\r\n<p>Mengkonsumsi air putih secara seimbang dan teratur selama kehamilan sangat disarankan. Sebaiknya jumlah yang dikonsumsi sesuai dengan perbandingan massa tubuh. Agar takaran dan jumlahnya pas, konsultasikan dengan dokter atau bidan Bunda ya.</p>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_minum-air-putih.jpg', '', '2016-10-27', 1),
(13, 'Makanan Cepat Saji', 2, '<p>Saat hamil, makanan yang dikonsumsi bukan hanya untuk Bunda, tetapi juga untuk bayi dalam kandungan Bunda. Tentunya konsumsi makanan depat saji jadi pertanyaan, boleh tidak <em>sih</em>?</p>\r\n\r\n<p>Walau sebaiknya dihindari, tetapi bukan berarti tidak boleh selama hanya dikonsumsi sesekali dan tidak menjadi makanan utama. Kenapa sebaiknya dihindari? Umumnya makanan cepat saji:</p>\r\n\r\n<ul>\r\n	<li>Memiliki nilai gizi yang cukup rendah</li>\r\n	<li>Memiliki tingkat lemak yang tinggi</li>\r\n	<li>Memiliki kandungan gula dan garam yang tinggi</li>\r\n</ul>\r\n\r\n<p>Berikut tips memilih makanan cepat saji untuk meminimalkan dampak buruknya:</p>\r\n\r\n<ol>\r\n	<li><strong>Ayam Goreng</strong>, pilihlah yang tidak berkulit dan hindari ayam goreng <em>nugget</em>.</li>\r\n	<li><strong>Sandwich</strong>, plihlah yang ukurannya sedang, rendah lemak dengan mengurangi olesannya.</li>\r\n	<li><strong>Burger</strong>, disarankan untuk memilih burger ayam atau ikan.</li>\r\n	<li><strong>Pizza</strong>, hindari pizza dengan topping pepperoni, terlalu banyak sosis atau keju.</li>\r\n	<li>Pilih air putih untuk minumnya.&nbsp;</li>\r\n</ol>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_pantangan-ibuhamil.jpg', '', '2016-10-27', 1),
(14, 'Kenapa Harus Asi?', 5, '<p>Ternyata manfaat ASI tak hanya untuk <strong>BAYI</strong> <em>lho</em> Bunda, tapi juga bagi <strong>IBU, KELUARGA, NEGARA</strong> serta memberikan <strong>KEUNTUNGAN SOSIAL</strong>. <em>Yuk</em> kita kupas satu-persatu!</p>\r\n\r\n<p><strong>Manfaat Bagi Bayi</strong></p>\r\n\r\n<ol>\r\n	<li>Komposisi sesuai kebutuhan: Kolustrum, Peralihan, Matur, Prematur</li>\r\n	<li>Mengandung Enzim pencernaan (lipase) sehingga mudah dicerna dan diserap (sering lapar)</li>\r\n	<li>Mengandung zat penangkal penyakit (protektif ):\r\n	<ul>\r\n		<li><strong>Makrofag</strong>, sel darah putih yang menelan dan mencerna patogen. Zat ini berfungsi membantu produksi hormon, homeostatis, regulasi imun dan penyembuhan luka.</li>\r\n		<li><strong>Limfosit</strong>, salah satu jenis sel darah putih yang berfungsi membantu sistem daya tahan tubuh.</li>\r\n		<li><strong>Immunoglobulin</strong>, senyawa protein dalam darah yang berfungsi melawan kuman penyakit, virus, bakteri, racun, dll.</li>\r\n		<li><strong>Laktoferin</strong>, protein yang dapat mengikat dan mentransfer ion Fe3+ dan berfungsi untuk memaksimalkan proses penyerapan zat besi di dalam usus dan sistem daya tahan tubuh.</li>\r\n		<li><strong>Faktor bifidus</strong> (Lactobacilus Bifidus),&nbsp;genus dari bakteri anaerob yang dapat menunjang pertumbuhan kuman baik dalam usus.</li>\r\n	</ul>\r\n	</li>\r\n	<li>Tidak menyebabkan alergi dan diare</li>\r\n	<li>Suhu tepat</li>\r\n	<li>Mencegah oklusi/ kerusakan gigi</li>\r\n	<li>Mengoptimalkan perkembangan ?otak</li>\r\n	<li>Meningkatkan hubungan ibu dan bayi</li>\r\n	<li>Anak percaya diri</li>\r\n	<li>Menurut hasil penelitian, pemberian ASI pada bayi:\r\n	<ul>\r\n		<li>Mengurangi terjadinya insiden dan beratnya penyakit Diare, ISPA (Infeksi Saluran Pernafasan Atas), Otitis Media, Meningitis, ISK (Infeksi Saluran Kencing)</li>\r\n		<li>Mengurangi kemungkinan berbagai penyakit kronik dikemudian hari seperti diabetes melitus, penyakit jantung, penyakit keganasan, dll</li>\r\n	</ul>\r\n	</li>\r\n	<li>Secara psikologis, buah hati kelak menjadi pribadi tenang, percaya diri, tidak emosional dan disukai.</li>\r\n</ol>\r\n\r\n<p><strong>Manfaat Bagi Ibu</strong></p>\r\n\r\n<ol>\r\n	<li>Mencegah perdarahan</li>\r\n	<li>Mengurangi anemia</li>\r\n	<li>Mempercepat involusi rahim</li>\r\n	<li>Mengurangi resiko kanker payudara &amp; ovarium</li>\r\n	<li>Mempercepat penurunan Berat Badan (BB)</li>\r\n	<li>Memberikan rasa kasih yang dibutuhkan</li>\r\n	<li>Mampu berperan sebagai kontrasepsi selama:\r\n	<ul>\r\n		<li>Full ASI?</li>\r\n		<li>Ibu belum haid</li>\r\n		<li>6 bulan pertama</li>\r\n		<li>Tanpa formula</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>Manfaat Bagi Keluarga</strong></p>\r\n\r\n<ol>\r\n	<li>Mudah pemberiannya?</li>\r\n	<li>Menghemat biaya?</li>\r\n	<li>Anak sehat, cerdas dan jarang sakit</li>\r\n</ol>\r\n\r\n<p><strong>Manfaat Bagi Negara</strong></p>\r\n\r\n<ol>\r\n	<li>Menghemat devisa Negara karena 80 % susu formula adalah produk impor</li>\r\n	<li>Menghemat subsidi negara untuk pengobatan</li>\r\n	<li>Sumber Daya Manusia yang cerdas</li>\r\n	<li>Mencegah terjadinya pertambahan jumlah penduduk</li>\r\n	<li>Mengurangi polusi</li>\r\n</ol>\r\n\r\n<p><strong>Keuntungan Sosial</strong></p>\r\n\r\n<ol>\r\n	<li>Menurunkan biaya pengobatan</li>\r\n	<li>Menurunkan kejadian absen pegawai</li>\r\n	<li>Nyaman dan efektif secara biaya (hemat)</li>\r\n	<li>Ramah lingkungan</li>\r\n	<li>Hemat energi karena menggunakan sumber alami dalam menyiapkan nutrisi bayi</li>\r\n</ol>\r\n\r\n<p>Jadi, <strong>TIDAK ADA ALASAN UNTUK TIDAK MEMBERI AIR SUSU IBU</strong> (kecuali Ibu dalam kemoterapi) karena manfaatnya yang luar biasa.</p>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_asi.jpg', '', '2016-10-28', 1);
INSERT INTO `tips_kehamilan` (`id_tips`, `judul_tips`, `id_kategori_tips`, `detail_tips`, `photo_tips`, `sumber_tips`, `tanggal_tips`, `post_tips`) VALUES
(15, '7 Kontak Laktasi', 5, '<h1>Kontak 1</h1>\r\n\r\n<p>Dilakukan 2 kali pada saat umur kehamilan <strong>28 minggu</strong>.</p>\r\n\r\n<p>Konseling tentang apa yang sebaiknya Bunda lakukan?</p>\r\n\r\n<ol>\r\n	<li>ASI dan manfaat ASI</li>\r\n	<li>ASI eksklusif 6 bulan dan pentingnya ASI</li>\r\n	<li>Risiko tidak memberikan ASI dan tidak menyusui</li>\r\n	<li>Keluarga Berencana (KB) setelah bayi lahir</li>\r\n	<li>Pengetahuan dasar laktasi: anatomi fisiologi, posisi perlekatan menyusui, frekuensi serta durasi menyusui, hisapan nutritif serta non-nutritif serta tanda kecukupan ASI</li>\r\n	<li>Bahaya susu formula dan dot terhadap bayi</li>\r\n	<li>Pemberian ASI pada ibu yang bekerja</li>\r\n	<li>Pemeriksaan penyulit menyusui yang meliputi payudara, putting kepercayaan dan budaya yang dimiliki</li>\r\n</ol>\r\n\r\n<h1>Kontak 2</h1>\r\n\r\n<p>Dilakukan 2 kali pada saat usia kehamilan <strong>36 minggu</strong>.</p>\r\n\r\n<p>Pada kontak kedua, topik-topik konseling yang sebaiknya Bunda lakukan masih sama seperti pada kontak pertama.</p>\r\n\r\n<h1>Kontak 3</h1>\r\n\r\n<p>Dilakukan saat bayi lahir. IMD merupakan pengenalan awal dari proses menyusu yang dilakukan saat:</p>\r\n\r\n<ol>\r\n	<li>Fase 1 jam setelah kelahiran</li>\r\n	<li>Setelah bayi lahir dalam keadaan sehat dan menangis</li>\r\n	<li>Sesudah tali pusat dipotong dan dibersihkan dengan kain hangat (dengan tetap mempertahankan verniks).</li>\r\n	<li>Saat bayi diletakkan telanjang dan diletakkan di dada Bunda yang juga telanjang dengan posisi tengkurap menghadap ke arah Bunda.</li>\r\n	<li>Saat bayi sengaja dibiarkan mencari sendiri putting susu Bunda (estimasi pencarian bervariasi sekitar 30-40 menit).</li>\r\n</ol>\r\n\r\n<p>Manfaat:</p>\r\n\r\n<ol>\r\n	<li>Mempertahankan suhu bayi tetap hangatagar bayi tidak kedinginan. Skin contact baik untuk membantu menghangatkan bayi dengan suhu yang tepat.</li>\r\n	<li>Meningkatkan daya tahan tubuh bayi terhadap infeksi, agar kuman yang pertama kali terpapar ke tubuh bayi berasal dari Bunda yang kebanyakaan tidak berbahaya dan telah direpon dengan faktor protektif yang tersedia dalam ASI.</li>\r\n	<li>Detak jantuk Bunda membuat bayi merasatenang, stabil dan tidak stress.</li>\r\n	<li>Membantu bayi mendapatkan kolostrum.</li>\r\n	<li>Mewujudkan keberhasilan pemberian ASI eksklusif selama 6 bulan pertama dan berlanjut dengan pemberian ASI sampau anak berusia 2 tahun.</li>\r\n	<li>Isapan pada payudara merangsang produksi hormone oksitosin, hormone ini bermanfaat merangsang aliran ASI dalam payudara ke mulut serta merangsang kontraksi Rahim dan membantu secara alami serta mengurangi pendarahan pasca peralinan.</li>\r\n	<li>Tingkat gula darah lebih baik disbanding bayi baru lahir yang tidak langsung menyentuh ibunya.</li>\r\n	<li>Bayi akan mendapatkan zat-zat gizi penting dan mereka terlindungi dari berbagai penyakit berbahaya pada masa yang paling rentan dalam kehidupannya.</li>\r\n	<li>Mengurangi bayi menangis sehingga mengurangi stress dan tenaga pada bayi.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1>Kontak 4</h1>\r\n\r\n<p>Dilakukan pada saat hari-hari awal pasca melahirkan dan selama masih Bunda masih dirawat di rumah sakit.</p>\r\n\r\n<p>Pada saat tersebut, konselor ASI akan mengunjungi Bunda dan memberikan penjelasan mengenai:</p>\r\n\r\n<ol>\r\n	<li>Perkembangan berat badan bayi ASI eksklusif.</li>\r\n	<li>Keuntungan rawat gabung dan skin to skin contact.</li>\r\n	<li>Asupa gizi untuk Bunda yang menyusui.</li>\r\n	<li>Pembentukan ASI tahap 2 (laktogenesis 2) yang akan baik dirangsang sesuai frekuensi bayi menyusui.</li>\r\n	<li>Bonding dan kapasitas lambung bayi, sehingga tidak perlu diberikan cairan tambahan lain.</li>\r\n</ol>\r\n\r\n<h1>Kontak 5</h1>\r\n\r\n<p>Dilakukan pada saat nifas hari ke-7.</p>\r\n\r\n<p>Pada fase ini, Bunda akan menemui masalah dan kendala dalam proses menyusui di rumah. Sehingga konselor ASI akan mengunjungi Bunda dan memberikan solusi terbaik untuk Bunda dan si kecil.</p>\r\n\r\n<h1>Kontak 6</h1>\r\n\r\n<p>Dilakukan pada saat nifas hari ke-14.</p>\r\n\r\n<p>Semua solusi yang diberikan konselor ASI Bunda pada saat kontak sebelumnya akan dievaluasi dan dipantau.</p>\r\n\r\n<h1>Kontak 7</h1>\r\n\r\n<p>Dilakukan pada saat nifas hari ke-39</p>\r\n\r\n<p>Pada kontak ini, Bunda akan diberi pengarahan mengenai manajemen ASI perah untuk persiapan Bunda bekerja (jika Bunda bekerja).</p>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_laktasi2.jpg', 'http://www.kemangmedicalcare.com/kmc-tips/tips-dewasa/1513-7-kontak-laktasi-plus-menuju-keberhasilan-menyusui-menurut-who.html', '2016-10-28', 1),
(16, 'Kiat Sukses Meng-Asi-Hi', 5, '<p>Melihat manfaat ASI yang luar biasa, kami mendukung Bunda untuk ikut &ldquo;Meng-ASI-kan Dunia, dan Men-Dunia-kan ASI&rdquo;. Berikut kiat-kiat suksesnya ya Bunda:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Percaya Diri</strong></p>\r\n\r\n<ol>\r\n	<li>Ibu harus memiliki kepercayaan dan keyakinan diri bisa memberikan ASI</li>\r\n	<li>Rasa percaya diri dapat meningkatkan 2 hormon yaitu:\r\n	<ul>\r\n		<li><strong>Hormon oksitosin</strong>, hormon yang berperan untuk pengeluaran ASI. Berfungsi membuat saluran ASI lebih lebar sehingga ASI dapat mengalir dengan lancar.</li>\r\n		<li><strong>Hormon prolaktin</strong>, hormon yang berperan dalam produksi ASI. Berfungsi menstimulasi sel di dalam alveoli untuk memproduksi ASI juga dapat membuat Bunda merasa rileks.</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<p>(image)</p>\r\n\r\n<p><strong>Menyusui dengan Benar</strong></p>\r\n\r\n<p>Produksi ASI akan maksimal jika melakukan teknik menyusui dengan benar.</p>\r\n\r\n<p>Cara Menggendong Bayi saat Menyusui</p>\r\n\r\n<p>(image)</p>\r\n\r\n<p>Posisi Menyusui dan Perlekatan yang benar</p>\r\n\r\n<p>(image)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Hindari Penggunaan Dot dan Empeng</strong></p>\r\n\r\n<ol>\r\n	<li>Jangan berikan dot maupun empeng.</li>\r\n	<li>Jika dibiasakan, bayi akan menolak jika disodorkan ASI.</li>\r\n	<li>Dot dan empeng yang terbuat dari bahan karet tidak bisa menyamai payudara ibu.&nbsp;Payudara tidak bisa dibandingkan dengan botol susu (tolong masukkan slide&nbsp;no. 21)</li>\r\n	<li>Kenapa tidak boleh pake dot?\r\n	<ul>\r\n		<li>Menyebabkan bingung puting</li>\r\n		<li>Menyebabkan maloklusi gusi</li>\r\n		<li>Menyebabkan aspirasi</li>\r\n		<li>Karena pendek, susu tergenang di rongga mulut sehingga dapat menimbulkan karies dentis (<em>nursing bottle carries</em>), tonsilitis dan otitis media</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>Jangan Berikan Susu Formula</strong></p>\r\n\r\n<ol>\r\n	<li>Susu formula atau makanan lain pada bayi bisa membuat bayi kenyang.</li>\r\n	<li>Akibatnya konsumsi ASI berkurang</li>\r\n	<li>Otomatis isapan bayi pada payudara ibu pun berkurang.</li>\r\n	<li>Isapan bayi dapat merangsang hormon oksitosin yang dapat mengeluarkan ASI dan hormon prolaktin untuk memproduksi ASI.</li>\r\n</ol>\r\n\r\n<p><strong>Hindari Stres</strong></p>\r\n\r\n<ol>\r\n	<li>Jangan sampai stres ya Bunda karena dapat mempengaruhi produksi hormon oksitosin yang berfungsi merangsang produksi ASI</li>\r\n	<li>Jauhi pikiran negatif, perasaan cemas, hingga marah.</li>\r\n</ol>\r\n\r\n<p><strong>Konsumsi Makanan Bergizi</strong></p>\r\n\r\n<ol>\r\n	<li>Asupan gizi yang baik dan sesuai kebutuhan akan menghasilkan ASI yang berkualitas.</li>\r\n	<li>Jaga asupan gizi Bunda agar tidak kurang. Jika kurang, misalnya: dibawah 2100 Kal/hari, lemak cadangan untuk memproduksi ASI tidak mencukupi.</li>\r\n	<li>Konsumsi:\r\n	<ul>\r\n		<li>Lemak, minyak dan gula secukupnya saja</li>\r\n		<li>Makanan hewani, kacang dan polong-polongan kering dalam jumlah cukup</li>\r\n		<li>Perbanyak konsumsi sayuran dan buah-buahan</li>\r\n		<li>Konsumsi nasi, sereal, roti dan umbi-umbian sebagai makanan utama.</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>Pijat Punggung</strong></p>\r\n\r\n<ol>\r\n	<li>Pemijatan pada punggung ibu ternyata juga dapat merangsang pengeluaran hormon oksitosin.</li>\r\n	<li>Peningkatan hormon oksitosin dapat memperlancar pengeluaran ASI</li>\r\n	<li>Lakukan pemijatan punggung menggunakan ibu jari secara perlahan</li>\r\n</ol>\r\n\r\n<p><strong>Peran Suami, Keluarga dan Lingkungan</strong></p>\r\n\r\n<ol>\r\n	<li>Kesuksesan menyusui tak lepas dari dukungan suami, keluarga, lingkungan dan tenaga kesehatan.</li>\r\n	<li>Suami berperan penting dalam menjaga pikiran ibu tetap rileks dan happy.</li>\r\n</ol>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_asi-teknik.jpg', '', '2016-10-28', 1),
(17, 'Tetap Asi & Bekerja', 5, '<p>Walau bekerja dan berkarir, Bunda tetap dapat memberikan ASI Eksklusif. Siapkan peralatan untuk memompa ASI dan simpan di dalam lemari es.</p>\r\n\r\n<p>Berikut kiat-kiat untuk tetap dapat menyusui saat cuti hamil sudah habis:</p>\r\n\r\n<p><strong>Memerah dan Menyimpan ASI</strong></p>\r\n\r\n<ol>\r\n	<li>Pastikan Bunda mencuci tangan hingga bersih sebelum memerah dan menyimpan&nbsp;ASI</li>\r\n	<li>Pastikan wadah penyimpan bersih.</li>\r\n	<li>Bunda dapat menggunakan botol kaca atau kontainer plastik dengan tutup&nbsp;rapat&nbsp;yang terbuat dari bahan bebas bisphenol A (BPA).</li>\r\n	<li>Hindari pemakaian kantong plastik biasa maupun botol susu <em>disposable </em>karena&nbsp;wadah-wadah ini mudah bocor dan terkontaminasi.</li>\r\n	<li>Cuci kontainer dengan air panas dan sabun serta anginkan hingga kering sebelum&nbsp;dipakai.</li>\r\n	<li>Simpanlah ASI sesuai kebutuhan bayi.</li>\r\n	<li>Pastikan wadah ASI telah diberi label berisi nama anak dan tanggal ASI ?diperah.&nbsp;Tanggal ASI diperah perlu dicantumkan untuk memastikan bahwa ASI&nbsp;yang dipakai adalah ASI yang terbaru (LIFO atau Last In First Out).</li>\r\n	<li>Jangan mencampurkan ASI yang telah dibekukan dengan ASI yang masih baru&nbsp;pada wadah penyimpanan.</li>\r\n	<li>Jangan menyimpan sisa ASI yang sudah dikonsumsi untuk pemberian berikutnya.</li>\r\n	<li>Putarlah kontainer ASI agar bagian yang mengandung krim pada bagian atas tercampur merata.</li>\r\n	<li>Jangan mengocok ASI karena dapat merusak komponen penting dalam susu</li>\r\n</ol>\r\n\r\n<p><strong>Penyimpanan ASI Perah</strong></p>\r\n\r\n<p>(image)</p>\r\n\r\n<p><strong>Menyimpan ASI</strong></p>\r\n\r\n<p>(image)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Membekukan ASI</strong></p>\r\n\r\n<ol>\r\n	<li>Kencangkan tutup botol atau kontainer pada saat ASI telah membeku sepenuhnya</li>\r\n	<li>Sisakan ruang sekitar 2,5 cm dari tutup botol karena volume ASI akan meningkat pada saat beku</li>\r\n	<li>Jangan menyimpan ASI pada bagian pintu lemari es atau <em>freezer </em></li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Menghangatkan ASI</strong></p>\r\n\r\n<ol>\r\n	<li>Cek tanggal pada label wadah ASI. Gunakan ASI yang paling baru (LIFO)</li>\r\n	<li>ASI tidak harus dihangatkan. Beberapa ibu memberikannya dalam keadaan dingin</li>\r\n	<li>Untuk ASI beku. Pindahkan wadah ke lemari es selama 1 malam atau ke dalam&nbsp;bak berisi air dingin. Naikkan suhu air perlahan-lahan hingga mencapai suhu&nbsp;pemberian ASI</li>\r\n	<li>Untuk ASI dalam lemari es. Hangatkan wadah ASI dalam bak berisi air hangat&nbsp;atau&nbsp;air dalam panci yang telah dipanaskan selama beberapa menit.&nbsp;Jangan&nbsp;menghangatkan ASI dengan api kompor secara langsung.</li>\r\n	<li>Jangan menaruh wadah dalam <em>microwave. Microwave</em> tidak dapat&nbsp;memanaskan&nbsp;ASI secara merata dan justru dapat merusak komponen ASI&nbsp;dan membentuk&nbsp;bagian panas yang melukai bayi. Botol juga dapat pecah&nbsp;bila&nbsp;dimasukkan ke dalam <em>microwave</em> dalam waktu lama.</li>\r\n	<li>Goyangkan botol ASI dan teteskan pada pergelangan tangan terlebih dahulu&nbsp;untuk&nbsp;mengecek apakah suhu sudah hangat.</li>\r\n	<li>Berikan ASI yang dihangatkan dalam waktu 24 jam. Jangan membekukan&nbsp;ulang&nbsp;ASI yang sudah dihangatkan.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>YUK, MENDUNIAKAN ASI dan MENG-ASI-KAN DUNIA.<br />\r\nUntuk Konsultasi lebih lanjut:<br />\r\nBuat Perjanjian dengan dr. Ameetha Drupadi<br />\r\nKunjungi Komunitas Pejuang ASI di <a href=\"https://www.facebook.com/groups/1089664177741536/\">Facebook</a></p>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_tetap-bekerja.jpg', '', '2016-10-28', 1),
(18, 'Merencanakan Kehamilan Berikutnya', 4, '<p>Walau bukan kehamilan yang pertama, tetapi Bunda dan Ayah pasti tetap menginginkan yang terbaik sehingga perencanaan untuk kehamilan berikutnya merupakan hal yang penting. Lakukan persiapan setidaknya 3 bulan sebelumnya (masa pra-konsepsi). Berikut beberapa kiat dari Sehati Kehamilanku:</p>\r\n\r\n<ol>\r\n	<li>Perhatikan asupan gizi Bunda dan Ayah agar kesehatan optimal untuk membantu kehamilan dan&nbsp;bayi yang sehat serta mengurangi faktor resiko, misalnya: Bayi &nbsp;lahir dengan berat badan rendah, dll.</li>\r\n	<li>Asam folat merupakan asupan penting &nbsp;dalam &nbsp;masa ini (kasih link untuk info yang ada di Opening). Asam folat dibutuhkan &nbsp;selama &nbsp;kehidupan &nbsp;sampai &nbsp;usia lanjut untuk &nbsp;mencegah &nbsp;kelainan &nbsp;jantung, &nbsp;fungsi &nbsp;susunan &nbsp;syaraf &nbsp;pusat, pencernaan, pencegahan alzheimer, fungsi kemampuan memori (menghindari &nbsp;pikun).</li>\r\n	<li>Berhenti merokok. Rokok akan merusak Vitamin C dan Vitamin C sangat dibutuhkan untuk perkembangan sperma.&nbsp;</li>\r\n	<li>Berhenti mengkonsumsi alkohol. Alkohol dapat merusak &nbsp;sperma yang &nbsp;bisa mengarah pada pertumbuhan tidak normal &nbsp;untuk &nbsp;janin.</li>\r\n	<li>Perhatikan jumlah kandungan logam dalam makanan karena jumlah yang berlebih dapat merusak sperma.</li>\r\n	<li>Kelola berat tubuh karena kegemukan menghambat &nbsp;keseimbangan &nbsp;hormon testosterone dan estrogen &nbsp;yang dapat menyebabkan ketidaksuburan.&nbsp;</li>\r\n	<li>Vaksinasi rubella dan TT</li>\r\n	<li>Konsumsi Vitamin dalam &nbsp;jumlah &nbsp;cukup. Bila perlu konsumsi tambahan suplemen &nbsp;dan &nbsp;antioksidan</li>\r\n	<li>Seng &nbsp;dapat membantu melindungi &nbsp;sperma dari radikal bebas. Seng dapat &nbsp;diperoleh &nbsp;dari kerang-kerangan, biji &nbsp;labu &nbsp;kuning, dan &nbsp;suplemen seng.</li>\r\n	<li>Kurangi &nbsp;konsumsi kafein</li>\r\n	<li>Pilih bahan makanan organic. Hindari makanan yang mengandung zat kimia</li>\r\n	<li>Konsumsi air dalam jumlah cukup.<br />\r\n	&nbsp;</li>\r\n</ol>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_next-pregnant.jpg', '', '2016-10-28', 1),
(19, '10 jenis bahan  makanan  penting  pada masa pra-konsepsi ', 4, '<ol>\r\n	<li>Alpukat. Buah ini kaya akan kandungan asam folat. Jangan takut gemuk karena&nbsp;kandungan lemak dalam alpukat &nbsp;merupakan lemak tak jenuh.</li>\r\n	<li>Daging sapi&nbsp; dan&nbsp; daging&nbsp; kambing/domba mengandung&nbsp; zat&nbsp; besi&nbsp; dan&nbsp; vitamin &nbsp;B12 untuk&nbsp; menghindari&nbsp; anemia</li>\r\n	<li>Kol&nbsp; dan keluarga kol yang&nbsp; merupakan&nbsp; sumber asam&nbsp; folat</li>\r\n	<li>Wortel&nbsp; sebagai&nbsp; sumber vitamin&nbsp; A</li>\r\n	<li>Kiwi&nbsp; merupakan&nbsp; sumber vitamin&nbsp; C dan&nbsp; E&nbsp; yang penting untuk&nbsp; kesuburan</li>\r\n	<li>Ikan kembung, tenggiri, selar, salmon&nbsp; dan sejenisnya baik untuk dikonsumsi 3 kali&nbsp;seminggu</li>\r\n	<li>Telur&nbsp; dan&nbsp; daging&nbsp; unggas</li>\r\n	<li>Biji&nbsp; labu&nbsp; kuning&nbsp; sebagai&nbsp; sumber serat , vitamin E dan seng</li>\r\n	<li>Kedelai&nbsp;dan produknya merupakan&nbsp;&nbsp; sumber phytoestrogen</li>\r\n	<li>Sorgum atau gandum hitam baik untuk sirkulasi&nbsp; darah dan mengontrol&nbsp; tekanan&nbsp;darah</li>\r\n</ol>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_makanan.jpg', '', '2016-10-28', 1),
(20, 'Kelebihan berat badan pada masa pra-konsepsi', 4, '<p>Kelebihan berat badan (Indeks Masa Tubuh atau IMT lebih dari 25) atau mengidap obesitas (IMT lebih dari 27) meningkatkan timbulnya resiko masalah pada kehamilan seperti tekanan darah tinggi, penggumpalan darah, keguguran, dan diabetes gestasional.</p>\r\n\r\n<p>Hitung IMT Bunda sebelum kehamilan menggunakan rumus berikut:</p>\r\n\r\n<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Berat badan (kg)</strong></p>\r\n\r\n<p><strong>IMT&nbsp; =&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -----------------------------------------------</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tinggi&nbsp; badan (meter) kuadrat</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Parameter:</strong></p>\r\n\r\n<p><strong>&lt; 18.5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: Kurus</strong></p>\r\n\r\n<p><strong>18.5 &ndash; 25 &nbsp; : Normal</strong></p>\r\n\r\n<p><strong>25 &ndash; 27 &nbsp; &nbsp; : Gemuk</strong></p>\r\n\r\n<p><strong>&gt; 27 &nbsp; &nbsp; &nbsp;&nbsp; : Obesitas</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Misal:</strong></p>\r\n\r\n<p><strong>BB &nbsp; &nbsp; &nbsp;: 62.5 KG</strong></p>\r\n\r\n<p><strong>Tinggi &nbsp;: 1.65 M</strong></p>\r\n\r\n<p><strong>IMT &nbsp; &nbsp;&nbsp;: </strong>62.5 kg / (1.65)^2 &nbsp; &nbsp; &nbsp;=&nbsp;&nbsp;&nbsp; <strong>23&nbsp;&nbsp; (Normal)</strong></p>\r\n\r\n<p>Jika Bunda melakukan penghitungan setelah hamil, kemungkinan hasilnya tidak akurat, mohon konsultasikan dengan dokter atau bidan Bunda.</p>\r\n\r\n<p>Menerapkan pola makan sehat dan melakukan olah tubuh secukupnya sangat disarankan untuk dilakukan saat hamil. Sangat penting untuk menjaga agar tidak terjadi lonjakan berat badan</p>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_berat-badan.jpg', '', '2016-10-28', 1),
(21, 'Vaksinasi', 4, '<p><strong>Vaksinasi Rubella / Campak Jerman</strong></p>\r\n\r\n<ul>\r\n	<li>Terkena infeksi rubella atau campak jerman saat hamil dapat membahayakan janin.</li>\r\n	<li>Konsultasikan kepada dokter Bunda jika Bunda belum pernah mendapatkan 2 kali suntikan vaksin MMR (measles, mumps and rubella) sebelumnya.</li>\r\n	<li>Sangat disarankan untuk menunda kehamilan setidaknya 1 bulan setelah suntik vaksin MMR.</li>\r\n</ul>\r\n\r\n<p><strong>Vaksinasi Tetanus Toxoid (TT)</strong></p>\r\n\r\n<p>Jika sekarang merupakan kehamilan selanjutnya dan jaraknya kurang dari dua tahun sejak kehamilan terakhir dan pada kehamilan sebelumnya telah dilakukan dua kali imunisasi TT, maka saat ini Bunda hanya membutuhkan dosis <em>booster</em>. Konsultasikan hal ini dengan dokter atau bidan Bunda.</p>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_vaksin.jpg', '', '2016-10-28', 1),
(23, 'Tanda - Tandanya', 6, '<p><strong>Siap-siap menyambut buah hati yuk Bun. Berikut tanda-tandanya..</strong></p>\r\n\r\n<ol>\r\n	<li>Perut mulas secara teratur akibat kontraksi yang kuat, sering dan lama.</li>\r\n	<li>Keluar lendir bercampur darah dari jalan lahir.</li>\r\n	<li>Keluar air ketuban dari jalan lahir.</li>\r\n	<li>Nyeri punggung</li>\r\n	<li>Rasa ingin Buang Air Besar yang kuat karena tekanan kepala bayi pada usus.</li>\r\n</ol>\r\n\r\n<p>Umumnya Bunda akan dapat merasakan saat kelahiran sudah mendekat. Selalu konsultasikan hal ini dengan dokter atau bidan Bunda, khususnya jika ada keraguan. Saat salah satu tanda di atas muncul, segera hubungi dokter, bidan atau rumah sakit Bunda.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Kontraksi </strong></p>\r\n\r\n<ol>\r\n	<li>Saat kontraksi, rahim Bunda mengencang dan mengendur, rasanya seperti nyeri saat haid.</li>\r\n	<li>Bunda kemungkinan telah merasakan kontraksi sepanjang kehamilan, khususnya menjelang akhir kehamilan. Rahim yang mengencang tanpa rasa sakit ini disebut kontraksi Braxton Hicks.</li>\r\n	<li>Saat terjadi kontraksi, otot di rahim Bunda mengencang sehingga menimbulkan rasa sakit.</li>\r\n	<li>Untuk merasakannya, letakkan tangan Bunda di atas perut. Perut akan terasa&nbsp; kencang saat kontraksi terjadi. Saat otot di rahim Bunda mengendur, rasa sakit akan hilang dan perut akan terasa lebih lunak.</li>\r\n	<li>Kontraksi mendorong bayi ke bawah dan membuka mulut rahim atau serviks (yang&nbsp; merupakan jalan masuk ke rahim), siap untuk dilalui bayi.</li>\r\n	<li><strong>Penting</strong>\r\n	<ul>\r\n		<li>Jika Bunda mengalami kontraksi yang semakin kuat, sakit dan teratur serta berlangsung lebih dari 30 detik, kemungkinan proses persalinan sudah dimulai.</li>\r\n		<li>Dimulainya proses persalinan ditandai dengan kontraksi yang semakin lama, kuat dan sering.</li>\r\n		<li>Hubungi dokter, bidan atau rumah sakit Bunda jika kontraksi berlangsung selama 30-60 detik dan terjadi setiap 10 menit. Gunakan fitur Hitung Kontraksi di Sehati Kehamilanku untuk membantu Bunda.</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Nyeri Punggung</strong></p>\r\n\r\n<ol>\r\n	<li>Nyeri pada punggung seringkali timbul saat proses melahirkan</li>\r\n	<li>Nyeri punggung atau rasa sakit yang sangat kemungkinan akan Bunda rasakan, begitu juga rasa berat yang sering dialami banyak perempuan saat menstruasi.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lendir Bercampur Darah</strong></p>\r\n\r\n<p>Keluarnya lendir bercampur darah dari jalan lahir merupakan tanda dimulainya proses persalinan atau partus mulai. Apa itu lendir bercampur darah?</p>\r\n\r\n<ol>\r\n	<li>Saat hamil, terdapat gumpalan sumbatan lendir di mulut rahim Bunda.</li>\r\n	<li>Sesaat sebelum partus mulai, gumpalan sumbatan lendir terlepas dan dapat keluar melalui vagina Bunda.</li>\r\n	<li>Saat keluar, lendir dapat berupa satu gumpalan atau terbagi dalam beberapa bagian.</li>\r\n	<li>Lendir bercampur darah menandakan bahwa serviks atau mulut rahim Bunda mulai membuka dan partus umumnya akan segera dimulai. Dalam beberapa kasus kehamilan, tidak terdapat lendir bercampur darah.</li>\r\n	<li>Campuran sedikit darah dalam lendir merupakan hal yang normal. Jika jumlah darah yang keluar semakin banyak, ini dapat merupakan pertanda adanya masalah. Segera hubungi dokter, bidan atau rumah sakit.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Air Ketuban</strong></p>\r\n\r\n<ol>\r\n	<li>Sebagian besar ketuban ibu hamil pecah saat pembukaan hampir lengkap, walau juga dapat terjadi sebelum proses persalinan dimulai.</li>\r\n	<li>Janin Bunda tumbuh dan berkembang di dalam kantung cairan yang disebut kantung ketuban</li>\r\n	<li>Saat tiba waktunya lahir, kantung ketuban pecah dan airnya mengalir keluar melalui vagina Bunda. Saat inilah yang disebut Pecah Ketuban.</li>\r\n	<li>Air ketuban dapat keluar dengan menetes, merembes, atau berupa aliran deras yang tidak dapat dikontrol. Siapkan handuk bersih (jangan tampon) setiap bepergian dan pelindung kasur.</li>\r\n	<li>Air ketuban saat pecah berguna sebagai pelumas dan juga turut membantu membersihkan jalan lahir.</li>\r\n	<li>Air ketuban jernih dan berwarna pucat kekuningan. Terkadang sulit membedakan air ketuban dan air seni.</li>\r\n	<li><strong>Penting:</strong>\r\n	<ul>\r\n		<li>Saat ketuban pecah, kemungkinan di saat awal ada sedikit campuran darah dalam airnya.</li>\r\n		<li>Segera hubungi dokter, bidan atau rumah sakit jika air ketuban Bunda berbau atau berwarna, atau jika keluar darah. Hal ini dapat menandakan Bunda dan bayi membutuhkan pertolongan segera.</li>\r\n		<li>Jika ketuban pecah sebelum proses persalinan, segera hubungi dokter, bidan atau rumah sakit untuk panduan. Tanpa air ketuban bayi Bunda tak lagi terlindungi dan dapat terpapar resiko infeksi.</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_tanda-lahir.jpg', 'dr. Ari waluyo SpOG, www.NHS.uk, www.bidanku.com', '2016-11-02', 1),
(24, 'Pedoman Nutrisi Seimbang untuk Ibu Menyusui', 5, '<p>Mengonsumsi makanan sehat sangat penting saat Bunda menyusui. Tubuh Bunda memerlukan lebih banyak energi dan sebagian energi yang diperlukan pada saat menyusui diperoleh dari cadangan lemak tubuh selama kehamilan dan selebihnya adalah dari asupan sehari-hari. Untuk memenuhi kebutuhan tersebut, Bunda harus mengonsumsi berbagai variasi makanan bergizi. Sehati Kehamilanku berkolaborasi dengan <strong>DR. DIANA F. SUGANDA, M.Kes, SpGK</strong> untuk panduan dan informasi lengkap mengenai nutrisi yang diperlukan selama Bunda menyusui. Berikut pedoman untuk membantu Bunda merencanakan makanan sehari-hari.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:208px\">\r\n			<p><strong>Kelompok Makanan</strong></p>\r\n			</td>\r\n			<td style=\"width:142px\">\r\n			<p><strong>Jumalah sajian/hari</strong></p>\r\n			</td>\r\n			<td style=\"width:274px\">\r\n			<p><strong>1 sajian setara dengan&hellip;</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:208px\">\r\n			<p>Karbohidrat</p>\r\n			</td>\r\n			<td style=\"width:142px\">\r\n			<p>9</p>\r\n			</td>\r\n			<td style=\"width:274px\">\r\n			<ul>\r\n				<li>&frac12; cangkir nasi, pasta, mie, bihun, bubur</li>\r\n				<li>1 lembar roti tawar</li>\r\n				<li>1 cangkir sereal/<em>cornflakes</em></li>\r\n				<li>1 buah sedang kentang, singkong, talas</li>\r\n				<li>1 buah sedang jagung</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:208px\">\r\n			<p>Protein</p>\r\n			</td>\r\n			<td style=\"width:142px\">\r\n			<p>2 &frac12;</p>\r\n			</td>\r\n			<td style=\"width:274px\">\r\n			<ul>\r\n				<li>1 potongan sedang daging ayam tanpa kulit</li>\r\n				<li>1 potongan sedang daging sapi</li>\r\n				<li>1 potongan sedang ikan (kembung, lele, mas, kakap)</li>\r\n				<li>2 butir putih telur</li>\r\n				<li>1 buah tahu ukuran besar</li>\r\n				<li>3 potong tempe ukuran sedang</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:208px\">\r\n			<p>Sayuran dan kacang-kacangan</p>\r\n			</td>\r\n			<td style=\"width:142px\">\r\n			<p>7 &frac12;</p>\r\n			</td>\r\n			<td style=\"width:274px\">\r\n			<ul>\r\n				<li>&frac12; mangkuk sayuran hijau/<em>orange</em> (Ct: brokoli, wortel, labu, bayam, daun katuk, kangkung, sawi)</li>\r\n				<li>&frac12; gelas kacang-kacangan (kacang hijau, kedelai, kacang merah, kacang tanah)</li>\r\n				<li>&frac12; potongan sedang kentang ubi, ubi atau singkong</li>\r\n				<li>1 potongan kecil tomat</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:208px\">\r\n			<p>Buah-buahan</p>\r\n			</td>\r\n			<td style=\"width:142px\">\r\n			<p>4</p>\r\n			</td>\r\n			<td style=\"width:274px\">\r\n			<ul>\r\n				<li>1 buah sedang apel, pisang, jeruk, pir</li>\r\n				<li>2 buah aprikot, kiwi, plum</li>\r\n				<li>1 mangkuk buah papaya, semangka, melon</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:208px\">\r\n			<p>Susu, <em>Yogurt</em>, Keju</p>\r\n			</td>\r\n			<td style=\"width:142px\">\r\n			<p>2 &frac12;</p>\r\n			</td>\r\n			<td style=\"width:274px\">\r\n			<ul>\r\n				<li>1 gelas (250 ml) susu</li>\r\n				<li>2 lembar keju <em>cheddar</em></li>\r\n				<li>200 gram <em>yogurt</em></li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Contoh Menu Sehari&nbsp;</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:189px\">\r\n			<ul>\r\n				<li>Pagi</li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"width:435px\">\r\n			<ul>\r\n				<li>2 lembar roti tawar/gandum</li>\r\n				<li>2 butir putih telur didadar, tambahkan potongan bawang, jamur, bayam</li>\r\n				<li>Selada/<em>lettuce</em>, tomat, 1 lembar keju <em>cheddar</em></li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:189px\">\r\n			<ul>\r\n				<li>Camilan</li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"width:435px\">\r\n			<ul>\r\n				<li>1 gelas kacang hijau</li>\r\n				<li>1 buah apel ukuran sedang</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:189px\">\r\n			<ul>\r\n				<li>Siang</li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"width:435px\">\r\n			<ul>\r\n				<li>5-6 sdm nasi putih</li>\r\n				<li>1 potong dada ayam tanpa kulit, dimasak kecap</li>\r\n				<li>1 mangkuk sayur bayam bening</li>\r\n				<li>2 potong tahu bacem</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:189px\">\r\n			<ul>\r\n				<li>Camilan</li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"width:435px\">\r\n			<ul>\r\n				<li>1 cangkir <em>yogurt</em></li>\r\n				<li>1 buah pisang ukuran sedang (potong-potong) dicampur ke yogurt</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:189px\">\r\n			<ul>\r\n				<li>Malam</li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"width:435px\">\r\n			<ul>\r\n				<li>1 buah kentang kukus</li>\r\n				<li>1 porsi daging teriyaki</li>\r\n				<li>1 mangkuk <em>salad</em></li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:189px\">\r\n			<ul>\r\n				<li>Camilan</li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"width:435px\">\r\n			<ul>\r\n				<li>1 gelas <em>smoothies</em> (jeruk, stroberi, pisang, wortel)</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Menurunkan berat badan dengan menyusui</p>\r\n\r\n<ul>\r\n	<li>Menyusui dapat membantu menurunkan berat badan Bunda</li>\r\n	<li>Penurunan terbanyak yaitu selama 3 bulan pertama setelah melahirkan lalu melambat selama 3 bulan berikutnya</li>\r\n	<li>Dengan menyusui si kecil dapat membantu mengembalikan berat badan dengan cara yang sehat dan alami</li>\r\n	<li>Lanjutkan menyusui dengan eksklusif (ASI saja) selama 6 bulan hingga kemudian si kecil memulai MPASI (Makanan Pendamping ASI) tetap berikan ASI</li>\r\n	<li>Jangan berdiet ketat tanpa pengawasan dokter spesialis gizi. Bunda lebih baik mengikuti pola makan yang bergizi untuk menghasilkan ASI dengan kualitas baik dan untuk menjaga kesehatan Bunda</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ikuti tips di bawah ini:</p>\r\n\r\n<ol>\r\n	<li>Terapkan Pola makan sehat seperti yang tercantum di atas</li>\r\n	<li>Jangan lewati waktu makan</li>\r\n	<li>Batasi makanan tinggi lemak dan gula (permen manis, cokelat, minuman bersoda, kue, biskuit manis, keripik kentang, makanan cepat saji)</li>\r\n	<li>Olah makanan dengan cara yang lebih sehat (kukus, tim, rebus, tumis tanpa minyak/dengan sedikit minyak)</li>\r\n	<li>Pilih daging dengan sedikit lemak dan hindari kulit ayam</li>\r\n	<li>Minum air putih 1 gelas setiap sebelum menyusui</li>\r\n	<li>Rencanakan menu makanan dan camilan Bunda</li>\r\n</ol>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_nutrisi-penting.jpg', '', '2016-11-08', 1),
(25, 'Tanda - Tanda Melahirkan', 6, '<p><strong>Tanda &ndash; Tandanya</strong></p>\r\n\r\n<p><strong>Siap-siap menyambut buah hati yuk Bun. Berikut tanda-tandanya..</strong></p>\r\n\r\n<ol>\r\n	<li>Perut mulas secara teratur akibat kontraksi yang kuat, sering dan lama.</li>\r\n	<li>Keluar lendir bercampur darah dari jalan lahir.</li>\r\n	<li>Keluar air ketuban dari jalan lahir.</li>\r\n	<li>Nyeri punggung</li>\r\n	<li>Rasa ingin Buang Air Besar yang kuat karena tekanan kepala bayi pada usus.</li>\r\n</ol>\r\n\r\n<p>Umumnya Bunda akan dapat merasakan saat kelahiran sudah mendekat. Selalu konsultasikan hal ini dengan dokter atau bidan Bunda, khususnya jika ada keraguan. Saat salah satu tanda di atas muncul, segera hubungi dokter, bidan atau rumah sakit Bunda.</p>\r\n\r\n<p><strong>Kontraksi </strong></p>\r\n\r\n<ol>\r\n	<li>Saat kontraksi, rahim Bunda mengencang dan mengendur, rasanya seperti nyeri saat haid.</li>\r\n	<li>Bunda kemungkinan telah merasakan kontraksi sepanjang kehamilan, khususnya menjelang akhir kehamilan. Rahim yang mengencang tanpa rasa sakit ini disebut kontraksi Braxton Hicks.</li>\r\n	<li>Saat terjadi kontraksi, otot di rahim Bunda mengencang sehingga menimbulkan rasa sakit.</li>\r\n	<li>Untuk merasakannya, letakkan tangan Bunda di atas perut. Perut akan terasa&nbsp; kencang saat kontraksi terjadi. Saat otot di rahim Bunda mengendur, rasa sakit akan hilang dan perut akan terasa lebih lunak.</li>\r\n	<li>Kontraksi mendorong bayi ke bawah dan membuka mulut rahim atau serviks (yang&nbsp; merupakan jalan masuk ke rahim), siap untuk dilalui bayi.</li>\r\n	<li><strong>Penting</strong>\r\n	<ul>\r\n		<li>Jika Bunda mengalami kontraksi yang semakin kuat, sakit dan teratur serta berlangsung lebih dari 30 detik, kemungkinan proses persalinan sudah dimulai.</li>\r\n		<li>Dimulainya proses persalinan ditandai dengan kontraksi yang semakin lama, kuat dan sering.</li>\r\n		<li>Hubungi dokter, bidan atau rumah sakit Bunda jika kontraksi berlangsung selama 30-60 detik dan terjadi setiap 10 menit. Gunakan fitur Hitung Kontraksi di Sehati Kehamilanku untuk membantu Bunda.</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Nyeri Punggung</strong></p>\r\n\r\n<ol>\r\n	<li>Nyeri pada punggung seringkali timbul saat proses melahirkan</li>\r\n	<li>Nyeri punggung atau rasa sakit yang sangat kemungkinan akan Bunda rasakan, begitu juga rasa berat yang sering dialami banyak perempuan saat menstruasi.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lendir Bercampur Darah</strong></p>\r\n\r\n<p>Keluarnya lendir bercampur darah dari jalan lahir merupakan tanda dimulainya proses persalinan atau partus mulai. Apa itu lendir bercampur darah?</p>\r\n\r\n<ol>\r\n	<li>Saat hamil, terdapat gumpalan sumbatan lendir di mulut rahim Bunda.</li>\r\n	<li>Sesaat sebelum partus mulai, gumpalan sumbatan lendir terlepas dan dapat keluar melalui vagina Bunda.</li>\r\n	<li>Saat keluar, lendir dapat berupa satu gumpalan atau terbagi dalam beberapa bagian.</li>\r\n	<li>Lendir bercampur darah menandakan bahwa serviks atau mulut rahim Bunda mulai membuka dan partus umumnya akan segera dimulai. Dalam beberapa kasus kehamilan, tidak terdapat lendir bercampur darah.</li>\r\n	<li>Campuran sedikit darah dalam lendir merupakan hal yang normal. Jika jumlah darah yang keluar semakin banyak, ini dapat merupakan pertanda adanya masalah. Segera hubungi dokter, bidan atau rumah sakit.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Air Ketuban</strong></p>\r\n\r\n<ol>\r\n	<li>Sebagian besar ketuban ibu hamil pecah saat pembukaan hampir lengkap, walau juga dapat terjadi sebelum proses persalinan dimulai.</li>\r\n	<li>Janin Bunda tumbuh dan berkembang di dalam kantung cairan yang disebut kantung ketuban</li>\r\n	<li>Saat tiba waktunya lahir, kantung ketuban pecah dan airnya mengalir keluar melalui vagina Bunda. Saat inilah yang disebut Pecah Ketuban.</li>\r\n	<li>Air ketuban dapat keluar dengan menetes, merembes, atau berupa aliran deras yang tidak dapat dikontrol. Siapkan handuk bersih (jangan tampon) setiap bepergian dan pelindung kasur.</li>\r\n	<li>Air ketuban saat pecah berguna sebagai pelumas dan juga turut membantu membersihkan jalan lahir.</li>\r\n	<li>Air ketuban jernih dan berwarna pucat kekuningan. Terkadang sulit membedakan air ketuban dan air seni.</li>\r\n	<li><strong>Penting:</strong><strong>???????</strong>\r\n	<ul>\r\n		<li><strong>???????</strong>Saat ketuban pecah, kemungkinan di saat awal ada sedikit campuran darah dalam airnya.</li>\r\n		<li>Segera hubungi dokter, bidan atau rumah sakit jika air ketuban Bunda berbau atau berwarna, atau jika keluar darah. Hal ini dapat menandakan Bunda dan bayi membutuhkan pertolongan segera.</li>\r\n		<li>Jika ketuban pecah sebelum proses persalinan, segera hubungi dokter, bidan atau rumah sakit untuk panduan. Tanpa air ketuban bayi Bunda tak lagi terlindungi dan dapat terpapar resiko infeksi.</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_pregnant-sign.jpg', 'Dr. Ari Waluyo, SpOG , www.nhs.uk , www.bidanku.com', '2016-11-08', 1),
(26, 'Proses Persalinan', 6, '<p>Nah, inilah saat yang paling ditunggu-tunggu. Walau mendebarkan, tapi Bunda dan Ayah pasti sangat menantikan momen ini, menyapa si buah hati setelah selama kurang lebih 40 minggu mengandungnya, merupakan hal yang paling ditunggu-tunggu oleh Bunda, Ayah, keluarga besar dan si kakak. Namun di sisi lain, bagi peristiwa ini juga menegangkan, khususnya bagi Bunda mengingat persalinan merupakan sebuah perjuangan.</p>\r\n\r\n<p>Proses persalinan sendiri terbagi ke dalam empat tahap. Berikut gambaran&nbsp; terkait proses melahirkan agar Bunda dan Ayah memiliki persiapan yang lebih baik menyambut saat-saat yang membahagiakan ini.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>KALA I: TAHAP PEMBUKAAN</strong></p>\r\n\r\n<ul>\r\n	<li>Partus mulai atau in-partu ditandai dengan keluarnya lendir bercampur darah karena serviks atau mulut rahim mulai membuka dan mendatar (lihat &ldquo;Lendir Bercampur Darah&rdquo;).</li>\r\n	<li>Tahap ini terbagi atas dua fase yaitu:\r\n	<ul>\r\n		<li>Fase Laten adalah fase dimana pembukaan serviks atau mulut rahim masih berlangsung lambat dan pembukaan sampai dengan 4 cm</li>\r\n		<li>Fase Aktif yang terbagi atas 3 subfase yaitu akselerasi, steady dan deselerasi</li>\r\n	</ul>\r\n	</li>\r\n	<li>Kala I merupakan tahap terlama, dan umumnya berlangsung 12-14 jam untuk kehamilan pertama dan 6-10 jam untuk kehamilan selanjutnya.</li>\r\n	<li>Pada tahap ini, mulut rahim akan menipis dan terbuka karena adanya kontraksi rahim secara berkala untuk mendorong si kecil ke jalan lahir.</li>\r\n	<li>Setiap terjadi kontraksi rahim, si kecil akan semakin terdorong ke bawah&nbsp;yang menyebabkan pembukaan jalan lahir.</li>\r\n	<li>Menjelang berakhirnya kala I, pembukaan jalan lahir sudah hampir sempurna. Masa ini merupakan masa yang cukup sulit karena kontraksi akan semakin sering dan kuat. Bunda biasanya akan mengalami rasa mulas yang hebat dan terasa seperti ada tekanan sangat besar ke arah bawah, seperti ingin Buang Air Besar (BAB).</li>\r\n	<li>Kala I persalinan disebut lengkap ketika pembukaan jalan lahir menjadi 10 cm. Kondisi ini disebut pembukaan sempurna dan si kecil siap menyapa dunia, dan proses persalinan memasuki Kala II.</li>\r\n	<li>Apa yang dapat Bunda lakukan selama fase pembukaan? Sedapat mungkin, curi waktu untuk beristirahat walau disela-sela rasa sakit. Istirahat dan tidur bermanfaat karena Bunda akan memerlukan banyak tenaga saat proses persalinan. Beberapa tips ini semoga dapat membantu Bunda:\r\n	<ul style=\"list-style-type:circle\">\r\n		<li>Mengkonsumsi cairan. Teh manis, jus atau minuman energi dapat membantu meningkatkan energi Bunda.</li>\r\n		<li>Di awal proses persalinan, mengkonsumsi kudapan sehat bermanfaat untuk menambah tenaga karena saat kontraksi sistem pencernaan akan bekerja lebih lambat dari biasanya dan dapat menyebabkan Bunda mual. Makanan yang mudah dicerna seperti buah, yogurt atau roti panggang dapat menjadi pilihan. Hindari makanan berkadar lemak tinggi karena sulit dicerna.</li>\r\n		<li>Mempraktekkan latihan pernafasan dan relaksasi yang didapat saat kelas kehamilan saat kontrakasi semakin kuat dan sakit. Ayah dampingi Bunda ya.</li>\r\n		<li>Minta Ayah untuk memijat lembut punggung Bunda karena dapat membantu mengurangi rasa sakit akibat kontraksi.</li>\r\n		<li>Pilih posisi yang dapat membuat Bunda nyaman. Melakukan aktivitas ringan juga dapat membantu. Posisi berdiri dapat membantu Bunda dan si kecil bergerak sesuai gravitasi serta meningkatkan pergerakan si kecil ke bawah melalui pelvis atau rongga panggul.</li>\r\n		<li>Terus berpikiran positif ya Bun. Rasa takut, khawatir akan melepaskan adrenalin yang membuat proses persalinan menjadi lambat.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>KALA II: TAHAP PENGELUARAN BAYI</strong></p>\r\n\r\n<ul>\r\n	<li>Pada tahap ini, rasa mulas yang Bunda rasakan menjadi teratur, kuat, cepat dan lebih lama, kira-kira 2-3 menit sekali. Kepala si kecil turun masuk ruang panggul sehingga terjadi tekanan pada otot-otot dasar panggul dan menimbulkan rasa mengedan. Bunda akan merasa seperti ingin BAB.</li>\r\n	<li>Walau proses melahirkan baru dimulai saat leher rahim terbuka lebar, namun hal ini tidak serta merta diikuti dengan turunnya si kecil masuk ke rongga panggul. Kondisi ini menyebabkan rasa ingin mengedan pada beberapa ibu hamil timbul sebelum leher rahim benar-benar terbuka, sementara pada ibu hamil lainnya rasa ingin mengedan atau mendorong tidak timbul hingga leher rahim benar-benar terbuka.</li>\r\n	<li>Pada tahap mengedan atau mendorong, kontraksi menjadi pemicu untuk dilakukannya mengedan atau mendorong.</li>\r\n	<li>Pada kondisi dimana Bunda mulai merasa ingin mengedan sebelum leher rahim benar-benar terbuka, Bunda mungkin akan merasa bahwa yang melakukan dorongan tersebut adalah rahim Bunda dan keadaan ini tidak dapat dihentikan. Umumnya pada tahap ini dokter atau bidan akan menyarankan untuk Bunda mengedan perlahan atau menahan untuk tidak mengedan. Hindari menahan nafas atau menahannya dengan otot perut.</li>\r\n	<li>Pada kondisi dimana leher rahim sudah terbuka lebar, namun belum timbul rasa ingin mengedan, akan lebih baik untuk menunggu hingga si kecil &nbsp;berada di bawah dan memicu rasa ingin mengedan. Konsultasikan dengan dokter atau bidan Bunda ya. &nbsp;</li>\r\n	<li>Mungkin Bunda dapat merasakan si kecil bergerak menurun, walau pada beberapa ibu hamil hal ini tidak terjadi. Umumnya si kecil bergerak mengubah posisi kepalanya di panggul Bunda untuk menemukan posisi terbaik.</li>\r\n	<li>Apabila dokter anastesi melakukan bius lokal yang disuntikan pada daerah punggung guna mengurangi rasa sakit di daerah vagina, rahim dan leher rahim sesudah pembukaan 4 cm, kemungkinan kemampuan Bunda untuk merasakan keinginan mengedan atau mendorong akan berkurang. Umumnya dokter atau bidan akan memandu Bunda. Pemakaian alat CTG atau Cardiotocography yang mengukur detak jantung dan kontraksi janin dapat membantu Bunda untuk merasakan kontraksi atau rasa ingin mengedan.</li>\r\n	<li>Pemantauan kondisi janin menggunakan alat CTG tidak hanya dilakukan jika dilakukan bius lokal untuk mengurangi rasa sakit, tetapi juga pada kondisi yang dianggap perlu oleh dokter atau bidan atau pada keadaan tanpa kondisi apapun.</li>\r\n	<li>Pada waktu bersalin, saat Bunda mengedan kepala si kecil akan mulai terlihat, bagian luar vagina Bunda (vulva) membuka dan perineum (area antara anus dan vagina) meregang. Dengan mengedan terpimpin, si kecil akan menyapa dunia dengan kepala terlebih dahulu dan diikuti seluruh badannya.</li>\r\n	<li>Bunda akan merasakan tekanan yang kuat di area perineum. Perineum bersifat elastis, tapi bila dokter atau bidan memperkirakan perlu dilakukan pengguntingan di daerah perineum (episiotomi) maka tindakan ini akan dilakukan dengan tujuan mencegah perobekan paksa akibat tekanan bayi</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>KALA III: TAHAP PENGELUARAN PLASENTA</strong></p>\r\n\r\n<ul>\r\n	<li>Kala III adalah tahap pelepasan plasenta dan dimulai setelah si kecil lahir.</li>\r\n	<li>Plasenta akan keluar dengan sendirinya dan umumnya prosesnya akan&nbsp; memakan waktu antara 5-30 menit serta disertai dengan pengeluaran darah kira-kira 100-200 cc.</li>\r\n	<li>Plasenta akan terlepas dengan adanya kontraksi rahim. Dokter dan bidan Bunda akan melakukan pemeriksaan untuk memastikan plasenta sudah terlepas dari dinding rahim. Baru setelah itu semuanya dibersihkan dan dilakukan jahitan bila tindakan episiotomi dilakukan.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>KALA IV: TAHAP PENGAWASAN</strong></p>\r\n\r\n<ul>\r\n	<li>Ini adalah tahap dilakukannya pengawasan untuk mengantisipasi bahaya perdarahan.</li>\r\n	<li>Umumnya pengawasan dilakukan selama kurang lebih dua jam.</li>\r\n	<li>Pada tahap ini Bunda masih mengeluarkan darah dari vagina yang berasal dari pembuluh darah di dinding rahim tempat terlepasnya plasenta.</li>\r\n</ul>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_persalinan.jpg', 'Dr. Ari Waluyo, SpOG , www.nhs.uk , www.bidanku.com', '2016-11-08', 1),
(27, 'Serba - Serbi Persalinan', 6, '<p><strong>Pentingnya Pengawasan Pasca Persalinan</strong></p>\r\n\r\n<ul>\r\n	<li>Mungkin Bunda pernah mendengar istilah perdarahan terkait persalinan.</li>\r\n	<li>Perdarahan adalah kondisi dimana terjadi pengeluaran darah dalam jumlah banyak saat atau sesudah persalinan.</li>\r\n	<li>Ada beberapa faktor yang dapat menimbulkan kondisi ini, misalnya lemahnya kontraksi atau tidak berkontraksinya otot-otot rahim.</li>\r\n	<li>Oleh karena itu pengawasan pasca persalinan merupakan hal yang sangat penting agar jika terjadi perdarahan atau perdarahan semakin hebat dapat dilakukan tindakan secepatnya.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tubuh Bunda Menjelang dan Saat Proses Persalinan</strong></p>\r\n\r\n<ul>\r\n	<li>Saat hamil, tulang dan otot panggul menopang rahim Bunda yang akan terus membesar seiring bertambahnya usia kehamilan dan membuka jalan ketika si kecil dilahirkan.</li>\r\n	<li>Pada dasarnya mulut rahim merupakan bagian rahim. Namun keduanya memiliki susunan jaringan yang berbeda.</li>\r\n	<li>Saat hamil, mulut rahim Bunda akan menebal dan menutup.</li>\r\n	<li>Kontraksi yang Bunda alami saat menjelang proses melahirkan akan menarik mulut rahim masuk ke dalam rahim yang membuatnya menipis, disebut sebagai pengelupasan, dan membuka, yang disebut sebagai pembukaan.</li>\r\n	<li>Saat mulut rahim sudah sepenuhnya sudah terbuka, kurang lebih 10 cm, maka, kontraksi demi kontraksi yang&nbsp; terjadi akan membantu si kecil bergeser dari rahim ke mulut rahim dan vagina.</li>\r\n	<li>Vagina memiliki banyak lipatan di dalamnya yang disebut dengan rugae, dan akan terbuka saat dilewati oleh si kecil.</li>\r\n</ul>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_childbirth.jpg', 'Dr. Ari Waluyo, SpOG , www.bidanku.com', '2016-11-08', 1);
INSERT INTO `tips_kehamilan` (`id_tips`, `judul_tips`, `id_kategori_tips`, `detail_tips`, `photo_tips`, `sumber_tips`, `tanggal_tips`, `post_tips`) VALUES
(28, 'Anemia', 7, '<p>Mungkin Bunda sudah mendengar pentingnya deteksi dini anemia pada kehamilan. Kenapa?</p>\r\n\r\n<ul>\r\n	<li>Jika terdeteksi dan ditangani dengan cepat dan benar, maka umumnya tidak membahayakan untuk ibu dan bayi</li>\r\n	<li>Namun jika tidak dan dibiarkan berlangsung, anemia dapat membahayakan karena bisa menyebabkan:\r\n	<ul style=\"list-style-type:circle\">\r\n		<li>Bayi lahir dengan berat badan rendah (BBLR)</li>\r\n		<li>Kelahiran prematur</li>\r\n		<li>Depresi pasca melahirkan</li>\r\n		<li>Memiliki bayi dengan anemia</li>\r\n		<li>Memiliki anak dengan pertumbuhan terlambat</li>\r\n		<li>Kematian ibu.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kita kupas sedikit mengenai anemia <em>yuk</em> Bun.</p>\r\n\r\n<p><strong>Apa itu anemia pada kehamilan?</strong></p>\r\n\r\n<ul>\r\n	<li>Anemia adalah kondisi kekurangan / defisiensi sel darah merah atau hemoglobin di dalam darah. Hemoglobin adalah senyawa protein pembawa oksigen di dalam sel darah merah.</li>\r\n	<li>Ibu hamil memiliki resiko lebih tinggi terkena anemia akibat defisiensi zat besi karena untuk memproduksi hemoglobin, tubuh kita memerlukan zat besi.</li>\r\n	<li>Anemia akibat defisiensi zat besi adalah kondisi dimana Bunda tidak memiliki cukup sel darah merah sehat untuk menyalurkan oksigen ke jaringan tubuh. Saat jaringan tubuh tidak mendapatkan pasokan oksigen yang cukup, maka banyak organ dan fungsi tubuh akan terganggu.</li>\r\n	<li>Saat hamil tubuh Bunda akan memproduksi darah dalam jumlah lebih banyak untuk mengakomodasi perubahan di dalam tubuh Bunda dan mencukupi kebutuhan nutrisi si kecil.</li>\r\n	<li>Kondisi ini otomatis membuat tubuh Bunda membutuhkan zat besi dalam jumlah lebih banyak juga. Jika zat besi di dalam tubuh Bunda tidak cukup atau Bunda tidak mendapatkan asupan zat besi yang cukup saat hamil, Bunda dapat terkena anemia akibat defisiensi zat besi.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Faktor Resikonya</strong></p>\r\n\r\n<p>Bunda memiliki resiko lebih besar terkena anemia saat kehamilan jika:</p>\r\n\r\n<ul>\r\n	<li>Dua kali atau lebih hamil dengan jarak kehamilan yang berdekatan.</li>\r\n	<li>Mengandung kembar atau lebih dari satu bayi.</li>\r\n	<li>Muntah dalam jumlah besar dan sering akibat <em>morning sickness</em>.</li>\r\n	<li>Tidak mendapatkan asupan zat besi yang cukup.</li>\r\n	<li>Memiliki histori haid hebat sebelum hamil.</li>\r\n	<li>Hamil pada usia dini atau remaja</li>\r\n	<li>Menderita anemia sebelum hamil.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Deteksi Anemia</strong></p>\r\n\r\n<ul>\r\n	<li>Umumnya anemia tidak memiliki gejala yang jelas pada tahap awal. Dan biasanya gejala anemia dapat serupa dengan gejala umum kehamilan.</li>\r\n	<li>Untuk itu, sangat dianjurkan untuk Bunda melakukan tes darah untuk mendeteksi anemia pada kunjungan perawatan kehamilan pertama walau tidak ada gejalanya.</li>\r\n	<li>Tes darah untuk mendeteksi anemia umumnya akan kembali dilakukan oleh dokter Bunda pada Trimester Kedua dan Ketiga. Jika Bunda merasa lelah, cepat lelah atau memiliki gejala anemia, segera konsultasikan dengan dokter atau bidan Bunda ya.</li>\r\n	<li>Tes darah deteksi anemia umumnya terdiri dari:\r\n	<ul>\r\n		<li>Tes hemoglobin untuk mengukur jumlah hemoglobin.</li>\r\n		<li>Tes hematocrit untuk mengukur persentase sel darah merah di dalam sampel darah.</li>\r\n	</ul>\r\n	</li>\r\n	<li>Gejala Anemia dapat berupa:\r\n	<ul>\r\n		<li>Cepat lelah dan kondisi tubuh lemah</li>\r\n		<li>Kulit, bibir dan kuku pucat</li>\r\n		<li>Terengah-engah atau nafas pendek</li>\r\n		<li>Pusing atau pening</li>\r\n		<li>Detak jantung lebih cepat dan tidak teratur</li>\r\n		<li>Tangan dan kaki terasa dingin</li>\r\n		<li>Kesulitan konsentrasi</li>\r\n		<li>Rasa ngidam terhadap benda bukan makanan seperti tanah liat, tepung jagung.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Mencegah dan Mengobati Anemia </strong></p>\r\n\r\n<ul>\r\n	<li>Konsumsi suplemen/vitamin yang mengandung zat besi dapat membantu mencegah dan mengobati anemia semasa kehamilan.</li>\r\n	<li>Asupan zat besi yang dibutuhkan selama kehamilan adalah 27 &ndash; 30 miligram per hari.</li>\r\n	<li>Nutrisi yang baik juga dapat mencegah anemia selama kehamilan. Konsumsi makanan kaya zat besi. Akan sangat baik jika konsumsi zat besi yang berasal dari tumbuhan dan suplemen dibarengi dengan makanan yang kaya vitamin C karena dapat membantu tubuh menyerap zat besi</li>\r\n	<li>Hindari untuk mengkonsumsi suplemen zat besi yang diperkaya kalsium dengan jus jeruk, karena kandungan kalsiumnya dapat mengurangi penyerapan zat besi.</li>\r\n	<li>Contoh makanan kaya zat besi:\r\n	<ul>\r\n		<li>Daging merah tanpa lemak</li>\r\n		<li>Daging ungags</li>\r\n		<li>Telur</li>\r\n		<li>Sayur berdaun hijau gelap seperti brokoli dan bayam</li>\r\n		<li>Kacang-kacangan dan biji-bijian</li>\r\n		<li>Tahu</li>\r\n	</ul>\r\n	</li>\r\n	<li>Contoh makanan kaya vitamin C\r\n	<ul>\r\n		<li>Buah dan jus sitrus atau jeruk nipis</li>\r\n		<li>Stroberi</li>\r\n		<li>Jeruk</li>\r\n		<li>Kiwi</li>\r\n		<li>Tomat</li>\r\n		<li>Paprika.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_anemia1.jpg', 'Dr. Ari Waluyo, SpOG , www.mayoclinic.org , www.americanpregnancy.org , www.webmd.com', '2016-11-09', 1),
(29, 'Serba Serbi Pre-Eklampsia ', 7, '<p>Bunda dan Ayah, salah satu kondisi serius yang harus sangat diwaspadai saat kehamilan adalah pre-eklampsia. Diderita sekitar 5% ibu hamil, pre-eklampsia dapat menimbulkan komplikasi yang membahayakan ibu dan bayi jika tidak ditangani dengan baik sejak dini. Memastikan Bunda melakukan perawatan kehamilan (ANC) dengan baik dan benar, serta tidak melewatkan waktu kunjungan ke dokter kebidanan dan kandungan atau bidan adalah hal yang sangat disarankan. Kita pelajari lebih jauh yuk tentang pre-eklampsia.</p>\r\n\r\n<p><strong>Apa Itu Pre-eklampsia?</strong></p>\r\n\r\n<ul>\r\n	<li>Pre-eklampsia adalah komplikasi pada kehamilan yang ditandai dengan tekanan darah yang tinggi dan timbulnya kerusakan pada salah satu sistem organ tubuh, pada umumnya ginjal.</li>\r\n	<li>Pre-eklampsia umumnya timbul pada usia kehamilan 20 minggu ke atas pada ibu hamil yang sebelumnya memiliki tekanan darah normal.</li>\r\n	<li>Pre-eklampsia dapat terjadi tiba-tiba. Peningkatan tekanan darah, walau sedikit, dapat merupakan tanda pre-eklampsia.</li>\r\n	<li>Jika tidak dirawat dan ditangani dengan baik, pre-eklampsia dapat mengakibatkan komplikasi serius, bahkan fatal, bagi ibu dan bayi.</li>\r\n	<li>Konsultasikan dengan dokter kebidanan dan kandungan, jika Bunda didiagnosa dengan pre-eklampsia.</li>\r\n	<li>Pengobatan pre-eklampsia adalah dengan melahirkan si kecil. Jika kehamilan Bunda masih terlalu muda, maka Bunda, Ayah dan dokter dapat berdiskusi untuk mencari jalan terbaik.</li>\r\n</ul>\r\n\r\n<p><strong>Gejala Pre-eklampsia</strong></p>\r\n\r\n<ul>\r\n	<li>Terkadang pre-eklampsia muncul dan berkembang tanpa menunjukkan gejala apapun.</li>\r\n	<li>Pada beberapa kasus, peningkatan tekanan darah terjadi perlahan, tetapi umumnya peningkatan tekanan darah terjadi secara drastis dan tiba-tiba.</li>\r\n	<li><strong>Melakukan pemantauan dan pemeriksaan tekanan darah merupakan bagian penting dari perawatan kehamilan atau ANC</strong> mengingat gejala awal pre-eklampsia pada umumnya adalah peningkatan tekanan darah. Jangan lupa isi &ldquo;JURNAL&rdquo; ya Bunda</li>\r\n	<li>Tekanan darah 140/90 milimeter merkuri (mm Hg) atau lebih tinggi, yang tercatat dalam dua kali kesempatan dalam jarak setidaknya empat jam, merupakan kondisi yang abnormal dan harus diwaspadai.</li>\r\n	<li>Beberapa tanda dan gejala lain pre-eklampsia adalah:\r\n	<ul>\r\n		<li>Kelebihan protein dalam urin (proteinuria) atau timbulnya gejala/tanda gangguan ginjal.</li>\r\n		<li>Sangat kepala sangat parah</li>\r\n		<li>Perubahan pada penglihatan, termasuk kehilangan penglihatan temporer, penglihatan kabur atau sensitif terhadap cahaya.</li>\r\n		<li>Nyeri pada perut bagian atas, umumnya di bawah tulang rusak pada sisi kanan.</li>\r\n		<li>Mual atau muntah</li>\r\n		<li>Berkurangnya produksi urin atau air seni.</li>\r\n		<li>Berkurangnya trombosit darah (thrombocytopenia)</li>\r\n		<li>Terganggunya atau rusaknya fungsi hati/liver.</li>\r\n		<li>Kesulitan bernafas atau nafas pendek akibat cairan dalam paru-paru.</li>\r\n		<li>Peningkatan berat badan tiba-tiba dan bengkak (edema), khususnya di wajah atau tangan, seringkali timbul pada kondisi pre-eklampsia. Namun kondisi ini juga muncul pada kehamilan normal, sehingga tidak dapat diandalkan sebagai gejala pre-eklampsia.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Kapan Sebaiknya Berkonsultasi ke Dokter?</strong></p>\r\n\r\n<ul>\r\n	<li>Pastikan Bunda tidak melewatkan waktu kunjungan ke dokter agar pemantauan tekanan darah tidak terlewatkan.</li>\r\n	<li>Segera hubungi dokter atau ke Unit Gawat Darurat (UGD) jika Bunda mengalami sakit kepala hebat, penglihatan kabur, nyeri hebat pada perut atau kesulitan bernafas yang hebat.</li>\r\n	<li>Mengingat sakit kepala, mual, rasa nyeri dan sakit adalah keluhan yang biasa terjadi saat hamil, terkadang menjadi sulit bagi Bunda untuk memilah apakah kondisi ini normal atau mengindikasikan adanya masalah serius, khususnya jika ini merupakan kehamilan pertama Bunda. Disarankan untuk menghubungi dokter Bunda jika gejala ini timbul.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Penyebab Pre-eklampsia </strong></p>\r\n\r\n<ul>\r\n	<li>Penyebab pasti pre-eklampsia masih belum diketahui.</li>\r\n	<li>Para ahli meyakini komplikasi ini berawal dari plasenta, organ pemasok nutrisi bagi janin selama masa kehamilan.</li>\r\n	<li>Di awal kehamilan, terbentuk pembuluh-pembuluh darah baru yang kemudian berkembang sehingga pasokan darah ke plasenta menjadi efisien.</li>\r\n	<li>Pada perempuan dengan pre-eklampsia, pembuluh darah-pembuluh darah ini sepertinya tidak berkembang sebagaimana seharusnya; lebih sempit dibandingkan pembuluh darah normal dan memiliki reaksi yang berbeda terhadap perubahan hormon. Hal ini membatasi jumlah darah yang dapat mengalir melaluinya.</li>\r\n	<li>Dampak yang dapat timbul akibat kondisi di atas mencakup:\r\n	<ul>\r\n		<li>Kurangnya aliran darah ke rahim/kandungan</li>\r\n		<li>Kerusakan pembuluh darah</li>\r\n		<li>Masalah pada sistem imunitas atau kekebalan tubuh</li>\r\n		<li>Gen tertentu.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>Komplikasi terkait Tekanan Darah Tinggi Lain yang Dapat Timbul Selama Kehamilan.</strong></p>\r\n\r\n<p>Pre-eklampsia merupakan salah satu dari empat komplikasi terkait tekanan darah tinggi yang dapat timbul selama kehamilan. Tiga lainnya adalah:</p>\r\n\r\n<ul>\r\n	<li><strong>Hipertensi Gestasional.</strong></li>\r\n</ul>\r\n\r\n<p>Penderita hipertensi gestasional memiliki tekanan darah yang tinggi tetapi tidak terdapat kelebihan protein di air seninya atau tanda-tanda kerusakan organ lainnya. Beberapa pendeita hipertensi gestasional pada akhirnya mengalami pre-eklampsia.</p>\r\n\r\n<ul>\r\n	<li><strong>Hipertensi Kronis.</strong></li>\r\n</ul>\r\n\r\n<p>Hipertensi kronis adalah tekanan darah tinggi yang terjadi sebelum kehamilan atau sebelum usia kehamilan mencapai 20 minggu. Namun, karena tekanan darah tinggi umumnya tidak menunjukkan gejala, kemungkinan sulit untuk mendeteksinya saat kondisi ini terjadi.</p>\r\n\r\n<ul>\r\n	<li><strong>Hipertensi Kronis dengan Pre-eklampsia. </strong></li>\r\n</ul>\r\n\r\n<p>Kondisi ini terjadi pada perempuan yang mengalami tekanan darah tinggi kronis sebelum hamil dan berkembang semakin parah saat ia hamil dengan disertai adanya kandungan protein dalam air seninya atau komplikasi kesehatan lainnya selama kehamilannya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Faktor Resiko</strong></p>\r\n\r\n<p>Pre-eklampsia merupakan komplikasi yang hanya terjadi saat kehamilan. Berikut faktor resikonya:</p>\r\n\r\n<ul>\r\n	<li>Memiliki sejarah pre-eklampsia.</li>\r\n</ul>\r\n\r\n<p>Pernah mengidap pre-eklampsia, baik diri Bunda sendiri ataupun anggota keluarga lainnya, secara berarti meningkatkan resiko terjadinya komplikasi ini.</p>\r\n\r\n<ul>\r\n	<li>Kehamilan pertama</li>\r\n</ul>\r\n\r\n<p>Resiko tertinggi terkena pre-eklampsia adalah saat kehamilan pertama.</p>\r\n\r\n<ul>\r\n	<li>Pasangan baru</li>\r\n</ul>\r\n\r\n<p>Kehamilan yang terjadi bersama pasangan baru meningkatkan resiko terjadinya pre-eklampsia dibandingkan kehamilan kedua, ketiga dan seterusnya bersama pasangan yang sama.</p>\r\n\r\n<ul>\r\n	<li>Usia</li>\r\n</ul>\r\n\r\n<p>Resiko terjadinya pre-eklampsia lebih tinggi pada perempuan yang hamil di usia lebih dari 40 tahun.</p>\r\n\r\n<ul>\r\n	<li>Obesitas</li>\r\n</ul>\r\n\r\n<p>Resiko terjadinya pre-eklampsia lebih tinggi pada perempuan dengan obesitas.</p>\r\n\r\n<ul>\r\n	<li>Kehamilan kembar</li>\r\n</ul>\r\n\r\n<p>Pre-eklampsia lebih sering terjadi pada ibu hamil dengan bayi kembar.</p>\r\n\r\n<ul>\r\n	<li>Jarak kehamilan</li>\r\n</ul>\r\n\r\n<p>Kehamilan berjarak kurang dari dua tahun atau lebih dari 10 tahun memiliki resiko lebih tinggi terhadap pre-eklampsia.</p>\r\n\r\n<ul>\r\n	<li>Memiliki sejarah kondisi tertentu</li>\r\n</ul>\r\n\r\n<p>Mengidap kondisi tertentu sebelum hamil seperti tekanan darah tinggi kronis, sakit kepala migren, diabetes tipe 1 atau 2, penyakit ginjal, kecenderungan penggumpalan darah atau lupus, dapat meningkatkan resiko pre-eklampsia. &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Komplikasi yang Dapat Timbul</strong></p>\r\n\r\n<ul>\r\n	<li>Semakin parah dan semakin dini pre-eklampsia terjadi, resiko yang dihadapi ibu dan bayi juga semakin besar.</li>\r\n	<li>Pre-eklampsia dapat mengharuskan dilakukannya persalinan dipercepat baik melalui induksi atau operasi (sectio cesaria). Konsultasikan dengan dokter Bunda ya.</li>\r\n	<li>Komplikasi yang dapat timbul mencakup:</li>\r\n</ul>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>Berkurangnya Aliran Darah ke Plasenta.</li>\r\n</ul>\r\n\r\n<p>Pre-eklampsia berpengaruh terhadap pembuluh nadi yang membawa darah ke plasenta. Jika pasokan darah ke plasenta tidak cukup, jumlah oksigen dan nutrisi yang akan diterima si kecil di dalam rahim dapat berkurang dan hal ini dapat menyebabkan Pertumbuhan Janin Terhambat (PJT), Berat Badan Bayi Lahir Rendah (BBLR) atau kelahiran premature. Kelahiran premature dapat menimbulkan masalah pernafasan pada bayi.</p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>Plasenta Abrupsi<strong>.</strong></li>\r\n</ul>\r\n\r\n<p>Pre-eklampsia meningkatkan resiko Bunda terkena Plasenta Abrupsi, kondisi serius dimana sebagian atau seluruh plasenta terlepas dari dinding bagian dalam rahim sebelum si kecil lahir. Abrupsi berat dapat menyebabkan terjadinya perdarahan hebat dan kerusakan plasenta, yang bisa membahayakan jiwa Bunda dan si kecil.</p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>Sindroma HELLP</li>\r\n</ul>\r\n\r\n<p>HELLP merupakan singkatan dari kondisi terjadinya Hemolysis (kerusakan sel darah merah), peningkatan enzim Liver (atau hati), dan kadar atau jumlah trombosit rendah (Low Platelet). Sindroma ini dapat dengan cepat mengancam jiwa Bunda dan si kecil. Gejalanya adalah: mual dan muntah, sakit kepala dan nyeri di perut kanan bagian atas. Sindroma HELLP sangat berbahaya karena dapat menjadi pertanda adanya kerusakan pada sejumlah sistem organ tubuh. Pada beberapa kasus, sindroma ini muncul secara tiba-tiba, bahkan sebelum terdeteksi adanya kondisi tekanan darah tinggi.</p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>Eklampsia</li>\r\n</ul>\r\n\r\n<p>Saat pre-eklampsia tidak terkendali, eklampsia yang pada intinya adalah pre-eklampsia disertai kejang, dapat terjadi. Gejala eklampsia yang langsung terjadi diantaranya adalah nyeri pada perut bagian kanan atas, sakit kepala berat, penglihatan terganggu dan perubahan keadaan mental seperti menurunnya kewaspadaan. Dampak eklampsia yang sangat serius bagi ibu dan bayi, mengharuskan bayi untuk segera dilahirkan berapapun usia kehamilannya.</p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>Penyakit Jantung.</li>\r\n</ul>\r\n\r\n<p>Pre-eklampsia berpotensi meningkatkan resiko terkena gangguan pada jantung dan pembuluh darah jantung di masa mendatang. Resiko akan semakin bertambah jika sebelumnya pernah mengalami pre-eklampsia lebih dari satu satu kali atau kelahiran prematur. Untuk meminimalkan resiko, jaga berat badan ideal Bunda setelah melahirkan, konsumsi beragam sayuran dan buah-buahan, berolahraga teratur dan jangan merokok.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Kunjungan ke Dokter </strong></p>\r\n\r\n<p>Pre-eklampsia biasanya terdiagnosa saat Bunda melakukan kunjungan dan pemeriksaan kehamilan rutin. Apabila terdiagnosa, kemungkinan besar Bunda harus melakukan pemeriksaan kehamilan tambahan ke dokter kebidanan dan kandungan.</p>\r\n\r\n<p>Berikut hal-hal yang dapat Bunda dan Ayah persiapkan sebelum kunjungan ke dokter:</p>\r\n\r\n<ul>\r\n	<li>Tuliskan semua gejala yang Bunda alami dan rasakan, bahkan jika menurut Bunda itu adalah gejala kehamila normal. &nbsp;</li>\r\n	<li>Buat daftar semua obat-obatan, vitamin, suplemen yang Bunda konsumsi.</li>\r\n	<li>Jika memungkinkan, ajak Ayah, keluarga atau teman untuk membantu mengingat semua informasi yang diberikan saat kunjungan ke dokter.</li>\r\n	<li>Buat daftar pertanyaan untuk dokter Bunda sesuai kadar kepentingannya sebagai antisipasi terbatasnya waktu.</li>\r\n</ul>\r\n\r\n<p>Berikut adalah pertanyaan-pertanyaan umum terkait pre-eklampsia yang dapat Bunda tanyakan ke dokter:</p>\r\n\r\n<ul>\r\n	<li>Apakah kondisi ini telah mempengaruhi / membahayakan bayi saya?</li>\r\n	<li>Apakah aman untuk melanjutkan kehamilan ini?</li>\r\n	<li>Apakah pertanda atau gejala yang harus diwaspadai, dan kapan saya harus menghubungi dokter?</li>\r\n	<li>Seberapa sering saya harus kontrol, dan bagaimana kesehatan serta kesejahteraan bayi saya dimonitor?</li>\r\n	<li>Perawatan apa yang tersedia, dan mana yang dokter rekomendasikan?</li>\r\n	<li>Saya memiliki kondisi atau gangguan kesehatan lain. Bagaimana saya sebaiknya mengelola kondisi ini?</li>\r\n	<li>Adakah larangan aktivitas yang harus saya patuhi?</li>\r\n	<li>Apakah saya harus melahirkan melalui operasi section cesaria?</li>\r\n	<li>Selain pertanyaan-pertanyaan di atas, jangan ragu untuk bertanya jika ada yang terlintas saat konsultasi.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tes dan Diagnosa</strong></p>\r\n\r\n<p>Gejala yang timbul untuk dapat didiagnosa dengan pre-eklampsia adalah memiliki tekanan darah yang tinggi dan salah satu atau lebih komplikasi di bawah ini setelah kehamilan berusia lebih dari 20 minggu:</p>\r\n\r\n<ul>\r\n	<li>Terdapat kandungan protein di air seni atau proteinuria</li>\r\n	<li>Trombosit rendah</li>\r\n	<li>Gangguan fungsi liver/hati</li>\r\n	<li>Gejala atau tanda adanya gangguan ginjal selain protein dalam air seni.</li>\r\n	<li>Cairan di paru-paru (oedema paru)</li>\r\n	<li>Serangan sakit kepala</li>\r\n	<li>Gangguan penglihatan</li>\r\n</ul>\r\n\r\n<p>Sebelumnya, gejala untuk diagnosa pre-eklampsia adalah jika ibu hamil memiliki tekanan darah tinggi dan protein di dalam air seni. Namun, para ahli kini mengetahui bahwa memungkinkan untuk terkena pre-eclampsia walau tidak terdapat kadar protein dalam air seni.</p>\r\n\r\n<p>Tekanan darah yang melebihi 140/90 mm Hg pada ibu hamil dianggap abnormal. Namun, satu kali pengukuran dengan hasil tekanan darah yang tinggi tidak langsung berarti Bunda mengalami pre-eklampsia. Pada saat Bunda satu kali terdeteksi memiliki tekanan darah abnormal, atau cukup jauh lebih tinggi daripada tekanan darah Bunda biasanya, umumnya dokter Bunda akan memantau hasil pengukuran tekanan darah selanjutnya.</p>\r\n\r\n<p>Apabila hasil pengukuran tekanan darah Bunda empat jam setelah yang pertama tetap menunjukkan hasil abnormal, kemungkinan kecurigaan dokter bahwa Bunda mengalami pre-eklampsia terbukti. Dokter biasanya akan meminta Bunda untuk melakukan pengukuran tekanan darah tambahan serta melakukan tes darah dan air seni.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tes yang Dapat Dilakukan</strong></p>\r\n\r\n<p>Jika dokter Bunda mencurigai adanya pre-eklampsia, kemungkinan ada beberapa tes yang harus dilakukan:</p>\r\n\r\n<ul>\r\n	<li><strong>Tes Darah.</strong> Tes ini akan dapat membantu menentukan fungsi hati dan ginjal serta jumlah hemoglobin di dalam darah, sel yang membantu proses pembekuan darah.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Analisa Air Seni (Urin).</strong> Sampel air seni tunggal untuk mengukur rasio protein hingga kreatinin &ndash; senyawa kimia yang terkandung di dalam urin &ndash; dapat digunakan untuk membuat diagnosa. Sampel air seni (urin) yang diambil lebih dari 24 jam sebelumnya dapat digunakan untuk menghitung jumlah protein yang hilang di dalam urin dan merupakan petunjuk untuk mengetahui kegawatan pre-eklampsia.</li>\r\n	<li><strong>USG Janin.</strong> Umumnya dokter akan merekomendasikan untuk dilakukannya pengawasan dan pemantauan ketat terhadap pertumbuhan bayi dengan menggunakan USG. Citra si kecil yang terlihat saat pemeriksaan USG memungkinkan dokter untuk membuat taksiran berat badan janin dan jumlah cairan di dalam rahim (cairan amniotik).</li>\r\n	<li><strong>Tes Non-stres atau profil biofisik. </strong>Tes nonstres merupakan prosedur sederhana untuk menguji reaksi detak jantung janin saat ia bergerak. Profil biofisik memadukan hasil USG dan tes non-stres untuk mendapatkan informasi lebih banyak mengenai pernafasan, irama, pergerakan serta volume cairan amniotik di dalam rahim.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Perawatan dan Pengobatan</strong></p>\r\n\r\n<p>Satu-satunya penawar pre-eklampsia adalah kelahiran. Bunda dihadapkan pada resiko yang tinggi terhadap terjadinya kejang, abrupsi plasenta, stroke dan kemungkinan perdarahan hebat hingga tekanan darah Bunda turun. Jika usia kehamilan Bunda masih muda, kelahiran mungkin bukan merupakan hal yang terbaik bagi si kecil.</p>\r\n\r\n<p>Dokter akan memberitahu jadwal berkunjung Bunda untuk pemeriksaan kehamilan jika didiagnosa dengan pre-eklampsia, dan sepertinya Bunda harus lebih sering melakukannya dibandingkan dengan kehamilan tanpa komplikasi pre-eklampsia. Hal yang sama juga berlaku untuk tes darah, USG dan tes non-stres.</p>\r\n\r\n<p>Perawatan yang dapat dilakukan untuk pre-eklampsia diantaranya adalah:</p>\r\n\r\n<ul>\r\n	<li><strong>Pengobatan untuk menurunkan tekanan darah. </strong>Tanyakan dan diskusikan dengan dokter Bunda ya.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Pemberian corticosteroids.</strong> Jika Bunda menderita pre-eklampsia berat atau sindroma HELLP, pengobatan corticosteroid dapat untuk sementara meningkatkan fungsi liver/hati dan hemoglobin guna membantu memperpanjang usia kehamilan. Corticosteroid juga dapat membantu mematangkan paru-paru si kecil setidaknya dalam 48 jam. Hal ini merupakan langkah penting untuk mempersiapkan kehidupan bayi lahir premature. Tanyakan lebih jauh mengenai hal ini kepada dokter ya Bunda</li>\r\n	<li><strong>Bed rest.</strong> Umumnya ibu hamil dengan pre-eklampsia disarankan untuk melakukan bedrest. Namun penelitian menunjukkan bahwa tidak terlihat manfaat yang berarti. Selain itu dapat meningkatkan resiko terjadinya penggumpalan darah selain berdampak pada kondisi ekonomi dan kehidupan sosial Bunda. Diskusikan dengan dokter Bunda untuk hal ini ya.</li>\r\n	<li><strong>Rawat Inap. </strong>Pre-eklampsia berat kemungkinan mengharuskan Bunda untuk dirawat di rumah sakit guna perawatan yang lebih intensif dan uji yang lebih teratur untuk memonitor kesejahteraan janin serta memonitor volume cairan amniotik. Kekurangan cairan amniotik merupakan pertanda buruknya pasokan darah ke janin.</li>\r\n	<li><strong>Melahirkan. </strong>Jika Bunda didiagnosa dengan pre-eklampsia mendekati akhir kehamilan, umumnya dokter akan merekomendasikan untuk dilakukan percepatan kelahiran. Diskusikan dengan dokter Bunda ya.</li>\r\n</ul>\r\n\r\n<p>Umumnya tekanan darah Bunda akan kembali normal dalam 12 minggu setelah melahirkan, atau lebih cepat.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Pencegahan </strong></p>\r\n\r\n<ul>\r\n	<li>Walau para peneliti terus melakukan penelitian tentang cara pencegahan pre-eklampsia, namun sejauh ini belum ditemukan strategi yang jitu.</li>\r\n	<li>Mengkonsumsi lebih sedikit garam, mengubah aktivitas, membatasi asupan kalori, mengkonsumsi bawang putih atau minyak ikan tidak mengurangi resiko terhadap pre-eklampsia. Begitu juga dengan meningkatkan asupan vitamin E dan C.</li>\r\n	<li>Dalam beberapa kasus, konsumsi aspirin dalam dosis rendah dan suplemen Kalsium dapat membantu menurunkan resiko terhadap pre-eklampsia. Namun, langkah pencegahan ini hanya dapat dilakukan setelah Bunda berkonsultasi dengan dokter kandungan Bunda ya.</li>\r\n	<li>Sebelum kembali hamil, khususnya jika Bunda terkena pre-eklampsia pada kehamilan sebelumnya, langkah dan persiapan terbaik adalah dengan memastikan kondisi kesehatan Bunda sudah prima.</li>\r\n	<li>Kurangi berat badan jika memang dianjurkan oleh dokter dan pastikan kondisi lain seperti diabetes terkelola dengan baik.</li>\r\n	<li>Begitu hamil, rawat diri dan kehamilan Bunda serta si kecil dengan melakukan perawatan kehamilan sejak dini secara teratur.</li>\r\n	<li>Jika pre-eklampsia terdeteksi dini, Bunda, Ayah dan dokter dapat berkolaborasi untuk mencegah timbulnya komplikasi serta merencanakan langkah terbaik untuk Bunda dan si kecil.</li>\r\n	<li>Untuk saat ini, hal terbaik yang dapat dilakukan adalah mengikuti dan melakukan perawatan kehamilan dengan baik dan jangan lewatkan janji temu dengan dokter/bidan.</li>\r\n	<li>Bunda akan diukur tekanan darahnya dan diuji untuk melihat kadar protein dalam urin. Juga, penting bagi Bunda dan Ayah untuk cermat mengamati pertanda pre-eklampsia agar dapat segera menginformasikan dokter atau bidan Bunda dan segera mendapatkan perawatan.</li>\r\n</ul>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_pre-eklamsia.jpg', 'Dr. Ari Waluyo, SpOG , www.mayoclinic.org', '2016-11-22', 1),
(30, 'Panduan Umum Untuk Ayah', 8, '<p>Kehamilan merupakan momen menggembirakan, dinantikan dan juga menegangkan untuk Bunda. Untuk itu, dukungan Ayah sangat diperlukan. Nah, berikut hal-hal umum yang sebaiknya diketahui dan dapat Ayah lakukan untuk membantu dan bersama Bunda menjalani saat kehamilan dan kelahiran yang menyenangkan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dukungan untuk Bunda selama Kehamilan </strong></p>\r\n\r\n<ul>\r\n	<li>Dukungan Ayah terhadap Bunda di masa kehamilan sangat penting. Peran aktif dan dukungan Ayah dapat menjauhkan Bunda dari perilaku yang dapat membahayakan kehamilan, seperti merokok, dan membuat Bunda menjalani gaya hidup yang lebih sehat.</li>\r\n	<li>Selain itu, si kecil juga diharapkan lahir lebih sehat dengan kemungkinan kelahiran prematur dan gangguan pertumbuhan yang lebih kecil.</li>\r\n	<li>Mendapatkan dukungan yang dibutuhkan selama kehamilan dapat membuat Bunda lebih tenang dan lebih tidak stres pasca melahirkan.</li>\r\n	<li>Ayah dapat melakukan beberapa hal ini untuk mendukung dan membuat Bunda semakin semangat: mempelajari tentang kehamilan, menemani Bunda saat ke dokter atau bidan untuk memeriksakan kandungan dan ikut menjalani gaya hidup sehat bersama Bunda.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Berapa Lama Kehamilan Berlangsung?</strong></p>\r\n\r\n<ul>\r\n	<li>Kehamilan normal umumnya berlangsung selama 40 minggu sejak Hari Pertama Haid Terakhir (HPHT) yang dibagi ke dalam tiga trimester.</li>\r\n	<li>Setiap trimester berlangsung selama sekitar 3 bulan.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bagaimana Menentukan Taksiran Tanggal Kelahiran? </strong></p>\r\n\r\n<ul>\r\n	<li>Perkiraan tanggal kelahiran si kecil disebut dengan Taksiran Tanggal Kelahiran atau Estimated Due Date (EDD).</li>\r\n	<li>Tanggal ini dihitung dengan menggunakan HPHT atau pemeriksaan USG.</li>\r\n	<li>Keduanya sering kali digunakan secara simultan untuk memperkirakan EDD.</li>\r\n	<li>Perlu diingat bahwa hanya 1 dari sekitar 20 ibu hamil yang melahirkan sesuai dengan EDD.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Apa yang Umumnya Terjadi pada Trimester Pertama Kehamilan? </strong></p>\r\n\r\n<ul>\r\n	<li>Pada trimester pertama (13 minggu pertama), Bunda umumnya membutuhkan lebih banyak istirahat dari biasanya.</li>\r\n	<li>Gejala mual serta muntah umumnya muncul pada tahap ini dan dikenal sebagai <em>&ldquo;morning sickness</em>,&rdquo; &nbsp;walaupun dapat terjadi di siang, sore dan malam hari.</li>\r\n	<li>Awal kehamilan umumnya merupakan masa yang emosional bagi Bunda.</li>\r\n	<li>Perubahan suasana hati atau <em>mood swings</em> merupakan hal yang lazim terjadi bagi Bunda dan juga Ayah.</li>\r\n	<li>Kehamilan dan menjadi orang tua merupakan perubahan besar dalam hidup, dan kadang butuh waktu untuk penyesuaian. Saling berkomunikasi dan menawarkan dukungan dapat membantu Ayah dan Bunda melalui masa kehamilan yang lebih menyenangkan.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Apa yang Umumnya Terjadi pada Trimester Kedua Kehamilan? </strong></p>\r\n\r\n<ul>\r\n	<li>Sebagian besar Bunda merasakan trimester kedua kehamilan (14&ndash;27 minggu) sebagai masa kehamilan yang paling menyenangkan.</li>\r\n	<li>Kehamilan semakin terlihat seiring perut yang semakin membuncit.</li>\r\n	<li>Mayoritas mulai merasa lebih baik. Pada tahap ini umumnya tubuh lebih bugar serta berenergi dan <em>morning sickness</em> sudah hilang.</li>\r\n	<li>Bunda dapat mulai merasakan gerakan si kecil yang umumnya terjadi di sekitar usia 20 minggu kehamilan. Pada sejumlah kasus, hal ini dapat terjadi lebih cepat atau lebih lambat.</li>\r\n	<li>Mengajak Bunda ikut kelas kehamilan juga merupakan bentuk dukungan yang dapat Ayah lakukan.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Apa yang Umumnya Terjadi pada Trimester Ketiga Kehamilan?</strong></p>\r\n\r\n<ul>\r\n	<li>Trimester terakhir (28 &ndash; 40 minggu) umumnya merupakan tahapan yang paling tidak nyaman bagi Bunda. Dukungan Ayah sangat diperlukan mengingat pada masa ini juga umumnya kesibukan persiapan menyambut si kecil terjadi.</li>\r\n	<li>Umumnya Bunda akan merasa tidak nyaman dengan si kecil yang semakin besar dan perubahan tubuh menjelang kelahiran. Kemungkinan Bunda akan mengalami kesulitan tidur, berjalan cepat dan melakukan rutinitas harian. Selalu <em>support</em> Bunda ya, Ayah.</li>\r\n	<li>Merupakan hal yang normal jika Ayah dan Bunda merasa senang dan cemas pada saat yang bersamaan.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Perubahan Gaya Hidup yang Sebaiknya Ayah Lakukan untuk Mendukung Kehamilan Bunda</strong></p>\r\n\r\n<ul>\r\n	<li>Menjaga kesehatan merupakan prioritas utama Bunda selama kehamilan, jadi tidak ada salahnya jika Ayah juga menerapkan gaya hidup sehat sebagai bentuk dukungan kepada Bunda.</li>\r\n	<li>Menyiapkan dan menyantap makanan sehat bersama, memastikan Bunda beristirahat cukup dan berolahraga bersama merupakan aktivitas yang dapat Ayah lakukan untuk mendukung Bunda.</li>\r\n	<li>Ayah juga dapat memastikan agar Bunda menghindari konsumsi alkohol, narkoba atau rokok serta zat-zat berbahaya lainnya yang dapat membahayakan si kecil.</li>\r\n	<li>Alkohol, sekecil apa pun jumlahnya, sangat berbahaya untuk kehamilan.</li>\r\n	<li>Begitu juga dengan narkoba seperti mariyuana, heroin, kokain, methamaphetamine, dan obat-obatan yang diresepkan bukan untuk pengobatan medis yang dapat membahayakan perkembangan si kecil.</li>\r\n	<li>Penggunaan zat berbahaya ini dapat mencetuskan perilaku tidak sehat seperti gizi buruk yang sangat berbahaya bagi kehamilan.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Apakah Ayah Harus Berhenti Merokok saat Bunda Hamil? </strong></p>\r\n\r\n<ul>\r\n	<li>Harus. Ayah dan Bunda sangat disarankan untuk tidak merokok.</li>\r\n	<li>Merokok di masa kehamilan dapat meningkatkan risiko terjadinya Pertumbuhan Janin Terhambat (PJT) dan kelahiran premature.</li>\r\n	<li>Menjadi perokok pasif juga membahayakan kehamilan karena dapat meningkatkan risiko si kecil lahir dengan berat badan rendah atau Berat Badan Bayi Lahir Rendah (BBLR).</li>\r\n	<li>Bayi dan anak-anak yang terpapar sebagai perokok pasif memiliki kecenderungan lebih tinggi untuk terkena serangan asma, infeksi pernafasan, infeksi telinga dan Sindroma Kematian Bayi Mendadak (SIDS) dibandingkan yang tidak terpapar.</li>\r\n	<li>Mengingat risiko dan dampak buruknya, sebaiknya Ayah dan Bunda memastikan untuk tidak merokok di rumah dan mobil.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Amankah untuk Berhubungan Intim saat Bunda Hamil? </strong></p>\r\n\r\n<ul>\r\n	<li>Kecuali dilarang oleh dokter kebidanan dan kandungan atau bidan, Ayah dan Bunda tetap dapat berhubungan intim selama masa kehamilan.</li>\r\n	<li>Ayah kemungkinan harus mencari posisi baru seiring perut Bunda yang membesar.</li>\r\n	<li>Perlu Ayah ingat bahwa ada masa-masa saat kehamilan di mana Bunda merasa tidak nyaman untuk berhubungan intim.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Apa yang Dapat Ayah Lakukan untuk Membantu Bunda Mempersiapkan Persalinan dan Kelahiran? </strong></p>\r\n\r\n<p>Ayah dapat melakukan beberapa hal berikut untuk membantu proses persalinan dan kelahiran agar berjalan selancar mungkin:</p>\r\n\r\n<ul>\r\n	<li>Tur/Kunjungan ke Rumah Sakit</li>\r\n</ul>\r\n\r\n<p>Ini merupakan saat yang tepat untuk bertanya mengenai kebijakan yang berlaku seperti siapa yang boleh menemani di Kamar Bersalin atau Kamar Operasi saat melahirkan, apakah boleh menginap di ruang rawat, dan apakah boleh memotret atau memfilmkan saat proses kelahiran dan hal-hal lain yang ingin Ayah ketahui.</p>\r\n\r\n<ul>\r\n	<li>Mempelajari pilihan jalan ke rumah sakit</li>\r\n	<li>Memastikan kesiapan tas untuk dibawa ke rumah sakit</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Apa yang Dapat Ayah Lakukan untuk Membantu Bunda saat Proses Persalinan dan Kelahiran? </strong></p>\r\n\r\n<ul>\r\n	<li>Membantu mengalihkan perhatian Bunda dari rasa sakit dengan mengajak mengobrol, bermain <em>game</em> atau menonton film</li>\r\n	<li>Mengajak Bunda berjalan-jalan singkat, kecuali jika Bunda diharuskan untuk berbaring oleh dokter/bidan.</li>\r\n	<li>Menghitung kontraksi</li>\r\n	<li>Memijat punggung dan bahu Bunda di sela kontraksi.</li>\r\n	<li>Menenangkan dan memberi semangat kepada Bunda.</li>\r\n	<li>Membantu dengan memberikan semangat saat mengejan (proses menekan supaya bayi keluar).</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Kapan si Kecil Dapat Pulang ke Rumah?</strong></p>\r\n\r\n<p>Dalam keadaan tidak ada komplikasi dan saat ibu serta bayi dalam kondisi sehat. Umumnya si kecil dapat dibawa pulang 3 hari setelah kelahiran melalui jalan lahir (partus normal) atau 5 hari setelah operasi Sectio Cesaria.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Apa Itu Depresi Pasca Persalinan?</strong></p>\r\n\r\n<ul>\r\n	<li>Cukup sering terjadi Bunda merasa sedih, kesal atau cemas setelah melahirkan. Rasa sedih ringan yang timbul disebut sebagai <em>baby blues</em> dan cukup banyak dirasakan para ibu baru.</li>\r\n	<li>Saat rasa sedih yang dirasa semakin hebat dan berlangsung lebih dari 1-2 minggu, kondisi ini boleh jadi merupakan pertanda adanya depresi pasca persalinan.</li>\r\n	<li>Sering kali Bunda tidak menyadari dirinya terkena depresi pasca persalinan. Umumnya Ayahlah yang pertama kali menyadari gejala dan tandanya.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Apa Pertanda dan Gejala Depresi Pasca Persalinan? </strong></p>\r\n\r\n<ul>\r\n	<li><em>Baby blues</em> belum berakhir setelah satu minggu, atau rasa sedih yang dirasa bertambah berat.</li>\r\n	<li>Bunda merasa sedih, ragu, bersalah atau tak berdaya yang intensitasnya terus meningkat setiap minggu dan mengganggu aktivitas rutinnya.</li>\r\n	<li>Bunda tidak dapat merawat diri dan si kecil.</li>\r\n	<li>Bunda kesulitan mengerjakan pekerjaan baik di rumah atau di kantor</li>\r\n	<li>Selera makan Bunda berubah</li>\r\n	<li>Bunda tidak lagi menikmati hal-hal yang disukainya</li>\r\n	<li>Rasa cemas dan khawatir terhadap si kecil yang berlebihan, atau berkurangnya perhatian dan minat pada si kecil.</li>\r\n	<li>Bunda dihinggapi kepanikan dan kecemasan yang kuat. Kemungkinan ada ketakutan saat ditinggalkan sendirian dengan si kecil.</li>\r\n	<li>Bunda merasa ketakutan akan menyakiti atau melukai si kecil. Rasa ini dapat menimbulkan rasa bersalah yang membuat depresi yang dirasakannya semakin berat.</li>\r\n	<li>Terlihat adanya kecenderungan untuk melukai diri sendiri atau bunuh diri.</li>\r\n</ul>\r\n\r\n<p>Jika Ayah melihat tanda-tanda atau gejala ini, tunjukkan perhatian dan keprihatinan. Dengarkan dan beri Bunda dukungan serta dampingi untuk mendapatkan bantuan profesional yang diperlukan. Perlu diingat bahwa semua orang tua baru dapat mengalami depresi pasca persallinan. Segera hubungi dokter jika terlihat tanda dan gejala di atas.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bagaimana agar Ayah dapat Merasa Terlibat saat Bunda Menyusui? </strong></p>\r\n\r\n<p>Para ahli kesehatan sepakat bahwa menyusui memberikan manfaat yang sangat luar biasa bagi kesehatan Bunda dan si kecil. Terkadang Ayah dapat merasa &ldquo;tersingkirkan&rdquo; saat melihat kedekatan dan ikatan yang tercipta karena menyusui. Berikut beberapa tips agar Ayah dapat terlibat dalam proses menyusui:</p>\r\n\r\n<ul>\r\n	<li>Antarkan si kecil ke Bunda untuk disusui</li>\r\n	<li>Ayah membantu membuat si kecil bersendawa setelah menyusu dan mengganti pakaiannya.</li>\r\n	<li>Menidurkan si kecil dengan memeluk dan menimangnya</li>\r\n	<li>Membantu memberikan perasan ASI.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Kapan Ayah Dapat Kembali Berhubungan Intim dengan Bunda setelah Melahirkan? </strong></p>\r\n\r\n<ul>\r\n	<li>Tidak ada periode waktu yang baku untuk hal ini. Beberapa dokter atau bidan menyarankan untuk menunggu 4 &ndash; 6 minggu setelah melahirkan.</li>\r\n	<li>Kemungkinan timbul masalah seperti perdarahan atau infeksi relatif kecil terjadi setelah sekitar 2 minggu pasca melahirkan.</li>\r\n	<li>Jika Bunda menjalani episiotomi atau sayatan untuk melebarkan bukaan vagina saat melahirkan, umumnya dokter/bidan menyarankan untuk menunggu hingga lukanya telah pulih sempurna.</li>\r\n</ul>\r\n', 'http://sehati-project.net/uploads/tips_kehamilan/thumb_untuk-ayah.jpg', 'www.acog.org , dr. Ari Waluyo, SpOG', '2016-11-28', 1),
(34, 'Kalendar Kehamilan', 9, '<p><img alt=\"\" src=\"http://sehat-i.com/images/perawatan-kehamilan.jpg\" style=\"height:926px; width:340px\" /></p>\r\n', '', '', '2017-01-04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `display_name` varchar(50) NOT NULL,
  `haid_terakhir` date NOT NULL,
  `pengalaman_hamil` int(11) NOT NULL,
  `pengalaman_keguguran` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `kontak_user` varchar(15) NOT NULL,
  `login_type` varchar(10) NOT NULL DEFAULT 'normal',
  `token_user` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `display_name`, `haid_terakhir`, `pengalaman_hamil`, `pengalaman_keguguran`, `email`, `kontak_user`, `login_type`, `token_user`) VALUES
(164, 'hilmilyas', '6f08bf907f3c52779223b0b1e19876d6', 'hilmi ilyas', '2016-10-13', 6, 3, 'hilmimihil@gmail.com', '', 'normal', ''),
(160, '113108777844495225083', '9ce21d8f3992d89a325aa9dcf520a591', 'Abul A\'la Alghifari', '2016-10-01', 1, 1, '-@gmail.com', '021321', 'google', ''),
(143, 'hilmimi', 'b7d517ff31bff1dc9367177f8ed39ceb', 'hilmi', '2016-09-13', 9, 8, 'hilmimihil@gmail.com', '', 'normal', ''),
(142, '110886438014428506456', '9ce21d8f3992d89a325aa9dcf520a591', 'Hilmi Rizaldi', '2016-09-17', 19, 0, 'hilmimihil@gmail.com', '', 'google', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `barang_belanja`
--
ALTER TABLE `barang_belanja`
  ADD PRIMARY KEY (`id_barang_belanja`);

--
-- Indexes for table `bidan`
--
ALTER TABLE `bidan`
  ADD PRIMARY KEY (`id_bidan`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id_faq`);

--
-- Indexes for table `jadwal_static`
--
ALTER TABLE `jadwal_static`
  ADD PRIMARY KEY (`id_jadwal_static`);

--
-- Indexes for table `jadwal_user`
--
ALTER TABLE `jadwal_user`
  ADD PRIMARY KEY (`id_jadwal_user`);

--
-- Indexes for table `jurnal_bayi`
--
ALTER TABLE `jurnal_bayi`
  ADD PRIMARY KEY (`id_jurnal_bayi`);

--
-- Indexes for table `jurnal_kehamilan`
--
ALTER TABLE `jurnal_kehamilan`
  ADD PRIMARY KEY (`id_jurnal_kehamilan`);

--
-- Indexes for table `kader`
--
ALTER TABLE `kader`
  ADD PRIMARY KEY (`id_kader`);

--
-- Indexes for table `kategori_barang_statis`
--
ALTER TABLE `kategori_barang_statis`
  ADD PRIMARY KEY (`id_kategori_barang_statis`);

--
-- Indexes for table `kategori_barang_user`
--
ALTER TABLE `kategori_barang_user`
  ADD PRIMARY KEY (`id_kategori_barang_user`);

--
-- Indexes for table `kategori_kategori_barang_statis`
--
ALTER TABLE `kategori_kategori_barang_statis`
  ADD PRIMARY KEY (`id_kategori_kategori_barang_statis`);

--
-- Indexes for table `kategori_tips_kehamilan`
--
ALTER TABLE `kategori_tips_kehamilan`
  ADD PRIMARY KEY (`id_kategori_tips`);

--
-- Indexes for table `konten_static`
--
ALTER TABLE `konten_static`
  ADD PRIMARY KEY (`id_konten_static`);

--
-- Indexes for table `kontraksi`
--
ALTER TABLE `kontraksi`
  ADD PRIMARY KEY (`id_kontraksi`);

--
-- Indexes for table `momen`
--
ALTER TABLE `momen`
  ADD PRIMARY KEY (`id_momen`);

--
-- Indexes for table `tendangan`
--
ALTER TABLE `tendangan`
  ADD PRIMARY KEY (`id_tendangan`);

--
-- Indexes for table `tips_kehamilan`
--
ALTER TABLE `tips_kehamilan`
  ADD PRIMARY KEY (`id_tips`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `barang_belanja`
--
ALTER TABLE `barang_belanja`
  MODIFY `id_barang_belanja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT for table `bidan`
--
ALTER TABLE `bidan`
  MODIFY `id_bidan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id_faq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `jadwal_static`
--
ALTER TABLE `jadwal_static`
  MODIFY `id_jadwal_static` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT for table `jadwal_user`
--
ALTER TABLE `jadwal_user`
  MODIFY `id_jadwal_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215256;
--
-- AUTO_INCREMENT for table `jurnal_bayi`
--
ALTER TABLE `jurnal_bayi`
  MODIFY `id_jurnal_bayi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT for table `jurnal_kehamilan`
--
ALTER TABLE `jurnal_kehamilan`
  MODIFY `id_jurnal_kehamilan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `kader`
--
ALTER TABLE `kader`
  MODIFY `id_kader` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `kategori_barang_statis`
--
ALTER TABLE `kategori_barang_statis`
  MODIFY `id_kategori_barang_statis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `kategori_barang_user`
--
ALTER TABLE `kategori_barang_user`
  MODIFY `id_kategori_barang_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108168;
--
-- AUTO_INCREMENT for table `kategori_kategori_barang_statis`
--
ALTER TABLE `kategori_kategori_barang_statis`
  MODIFY `id_kategori_kategori_barang_statis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `kategori_tips_kehamilan`
--
ALTER TABLE `kategori_tips_kehamilan`
  MODIFY `id_kategori_tips` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `konten_static`
--
ALTER TABLE `konten_static`
  MODIFY `id_konten_static` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `kontraksi`
--
ALTER TABLE `kontraksi`
  MODIFY `id_kontraksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;
--
-- AUTO_INCREMENT for table `momen`
--
ALTER TABLE `momen`
  MODIFY `id_momen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;
--
-- AUTO_INCREMENT for table `tendangan`
--
ALTER TABLE `tendangan`
  MODIFY `id_tendangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;
--
-- AUTO_INCREMENT for table `tips_kehamilan`
--
ALTER TABLE `tips_kehamilan`
  MODIFY `id_tips` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2575;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
