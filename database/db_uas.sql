-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2023 at 03:12 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `aduan`
--

CREATE TABLE `aduan` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `aduan` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aduan`
--

INSERT INTO `aduan` (`id`, `name`, `email`, `subject`, `aduan`, `tanggal`) VALUES
(1, 'chifuyu', 'chifuyu@gmail.com', '', 'halo ges!', '2022-12-26 14:03:20'),
(2, 'Oh Sehun', 'sehun@gmail.com', 'oohsehun.com', 'tes123', '2022-12-26 15:42:03'),
(3, 'tes', 'tes@gmail.com', 'mau ngadu', 'ada yg salah ga nie', '2023-01-02 03:10:02'),
(4, 'admin', 'admin@gmail.com', 'tes', '354', '2023-01-04 02:37:08'),
(5, 'tes', 'tes@gmail.com', '', 'webnya keren', '2023-01-04 03:19:45'),
(6, 'tes', 'tes@gmail.com', '', 'tes komen', '2023-01-04 03:20:52'),
(7, 'muna', 'muna@gmail.com', 'halo', 'asb', '2023-01-04 03:21:04'),
(8, 'admin', 'admin@gmail.com', 'apaniech', 'tes', '2023-01-04 03:26:44'),
(10, 'muna', 'muna@gmail.com', 'amsbcb', 'asjkbakbs', '2023-01-04 03:28:16');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `headline` text NOT NULL,
  `isi` text NOT NULL,
  `pengirim` varchar(255) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `id_kategori`, `judul`, `headline`, `isi`, `pengirim`, `tanggal`) VALUES
(2, 2, 'Geger Temuan Mayat Laki-Laki di Sungai Desa Karangjati: Lilitan Tali di Leher', 'Penemuan Mayat', 'Warga Karangjati, Wonosegoro digegerkan dengan penemuan mayat laki-laki di Kali Serang, Desa Karangjati, Wonosegoro, Selasa (4/1) siang. Korban merupakan warga Dusun Sambiroto, Desa Walen, Simo atas nama Agung Kusuma Wardana, 33. Saat ini, tim inafis dan Satreskrim Polres Boyolali telah menuju ke tempat kejadian perkara (TKP).\r\n\r\nKorban yang memiliki tinggi 160 sentimeter ini ditemukan tak bernyawa di dasar Sungai Karangjati, Wonosegoro oleh warga setempat. Penemuan mayat ini juga telah tersebar di grup Facebook info Wonosegoro dan Wonosamudro yang langsung dibanjiri komentar netizen.\r\n\r\nSaat ditemukan, korban masih mengenakan masker yang diturunkan di dagu dan masih memakai jumper hitam. Terlihat, kaki kiri korban mengalami luka. Kemudian, ada tali dadung plastik berwarna oranye yang melilit di leher korban.\r\n\r\nKapolres Boyolali AKBP Morry Ermond mengatakan, tim inafis dan Satreskrim Boyolali telah meluncur ke lokasi untuk olah TKP. Belum diketahui pasti penyebab meninggalnya korban.\r\n\r\n“Betul ada laporan seperti itu. Ini petugas ident, piket reskrim dan resmob sudah ke TKP. Ini sedang dalam lidik dan terlalu dini untuk menyimpulkan penyebab kematiannya,” singkatnya. (rgl/ria)', 'admin', '2022-12-26 12:38:18'),
(3, 2, 'Hilang Kendali, Truk Molen Serempet Motor Lalu Terperosok di Jurang Kawasan Wonosegoro Boyolali', 'Kecelakaan', 'Truk mixer atau biasa dikenal dengan molen terjatuh ke jurang di Jalan Karanggede - Wonosegoro, pada Sabtu (17/12/2022).\r\n\r\nTepatnya di Dukuh Jamblegan, Desa Karangjati, Kecamatan Wonosegoro, Kabupaten Boyolali.\r\n\r\nKasatlantas Polres Boyolali, AKP Herdi Pratama mengatakan, kecelakaan melibatkan sejumlah kendaraan di antranya truk mixer dengan nopol H-1902-AB yang dikendarai Jaenal (42) warga Kecamatan Karanggede.\r\n\r\nSementara kendaraan lain yakni Honda Vario dengan nopol K-5756-GZ yang di kendarai Sudarsono (55) warga Kecamatan Gubug, Kabupaten Grobogan.\r\n\r\nDia membawa AM (7), dan Muntowiyah (42).\r\n\r\nKejadian bermula saat truk berjalan dari arah selatan ke utara.\r\n\r\nSetibanya di jalanan menurun, truk mengalami oleng.\r\n\r\n\"Sopir diduga kehilangan kendali hingga truk oleng,\" ujar Herdi\r\n\r\nTruk hilang kendali hingga menyerempet kendaraan roda dua yang berjalan dari arah berlawanan.\r\n\r\n\"Truk hilang kendali dan sempat menyerempet kendaraan roda dua yang berjalan dari lawan arah, lalu truk terperosok,\" ucap Herdi.\r\n\r\nAkibatnya ke dua pengendara dan penumpang mengalami luka.\r\n\r\nPengemudi truk dan penumpang motor dalam keadaan sadar dan hanya mengalami luka ringan.\r\n\r\nHasil analisa awal penyebab kecelakaan terjadi akibat kurang hati-hatinya pengemudi truk mixer.\r\n\r\n\"Analisa awal laka terjadi akibat sopir yang kurang hati-hati sehingga tidak dapat mengendalikan laju kendaraan tidak aman,\" kata Herdi.\r\n\r\nPihak kepolisian sudah menerima laporan dan mendatangi tkp dan melaksanakan olah tkp.\r\n\r\nSedangkan truk terperosok di parit tertutup terpal.\r\n\r\nKerugian material dalam laka tersebut diperkirakan belasan juta.\r\n\r\n\"Kerugian ditaksir Rp.18 juta,\" imbuhnya.', 'admin', '2022-12-26 12:40:03');

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `id` int(11) NOT NULL,
  `foto` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`id`, `foto`, `tanggal`) VALUES
(1, 'foto1.jpeg', '2023-01-04 14:14:58'),
(2, 'foto2.jpg', '2023-01-04 14:14:58'),
(3, 'foto3.jpeg', '2023-01-04 14:14:58');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `deskripsi`) VALUES
(1, 'Olahraga', 'Olahraga'),
(2, 'Politik', 'Politik');

-- --------------------------------------------------------

--
-- Table structure for table `komen`
--

CREATE TABLE `komen` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komen`
--

INSERT INTO `komen` (`id`, `name`, `email`, `subject`, `message`, `tanggal`) VALUES
(3, 'muna', 'muna@gmail.com', '', 'tes', '2023-01-02 02:57:23'),
(4, 'muna', 'muna@gmail.com', '', 'halo', '2023-01-02 03:06:48'),
(6, 'muna', 'muna@gmail.com', '', 'tes123', '2023-01-02 03:07:20'),
(8, 'tes', 'tes@gmail.com', '', 'ada yg salah ga nie', '2023-01-02 03:10:02'),
(10, 'tes', 'tes@gmail.com', '', 'tes komen', '2023-01-04 03:20:52'),
(16, 'sehun', 'sehun@gmail.com', 'tes', 'tes', '2023-01-05 09:24:55'),
(17, 'muna', 'muna@gmail.com', 'ngadu', 'apaya', '2023-01-06 00:14:35'),
(19, 'admin', 'admin@gmail.com', 'halo', '123', '2023-01-07 10:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `ctg` int(11) NOT NULL,
  `stok` int(5) NOT NULL,
  `foto_pdt` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `deskripsi`, `ctg`, `stok`, `foto_pdt`, `tanggal`) VALUES
(11, 'Mesin Kopi', 50000000, '', 1, 6, 'mesin.jpeg', '2023-05-04 04:29:10'),
(12, 'Microwave', 850000, '', 1, 4, 'mesin2.jpg', '2023-05-04 04:29:10'),
(13, 'Lampu LED', 50000, '', 3, 2, 'lampuled.jpg', '2023-05-04 04:31:33'),
(14, 'Lampu LED Strip', 65000, '', 3, 5, 'lampuled2.jpeg', '2023-05-04 04:31:33'),
(15, 'HP', 45000000, '', 2, 3, 'hp.jpg', '2023-05-04 04:34:11'),
(16, 'HP Juga', 85000000, '', 2, 2, 'hp2.jpeg', '2023-05-04 04:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `total_harga` double NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `ongkir` double NOT NULL,
  `status` int(1) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `username`, `total_harga`, `alamat`, `ongkir`, `status`, `created_by`, `created_date`) VALUES
(1, 'muna', 180974000, 'jatiluhur', 9000, 0, 'muna', '2023-06-20 00:49:41'),
(2, 'muna', 50054000, '', 54000, 0, 'muna', '2023-06-20 00:54:56'),
(3, 'muna', 50086000, 'halo', 86000, 0, 'muna', '2023-06-22 03:32:21'),
(4, 'muna', 50016000, 'jatiluhur', 16000, 0, 'muna', '2023-06-22 04:01:05');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` double NOT NULL,
  `diskon` double NOT NULL,
  `subtotal_harga` double NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id`, `id_transaksi`, `id_barang`, `jumlah`, `diskon`, `subtotal_harga`, `created_by`, `created_date`) VALUES
(1, 1, 11, 1, 0, 50000000, 'muna', '2023-06-20 00:49:41'),
(2, 1, 12, 1, 0, 850000, 'muna', '2023-06-20 00:49:41'),
(3, 1, 13, 1, 0, 50000, 'muna', '2023-06-20 00:49:41'),
(4, 1, 14, 1, 0, 65000, 'muna', '2023-06-20 00:49:41'),
(5, 1, 15, 1, 0, 45000000, 'muna', '2023-06-20 00:49:41'),
(6, 1, 16, 1, 0, 85000000, 'muna', '2023-06-20 00:49:41'),
(7, 2, 11, 1, 0, 50000000, 'muna', '2023-06-20 00:54:56'),
(8, 3, 11, 1, 0, 50000000, 'muna', '2023-06-22 03:32:21'),
(9, 4, 11, 1, 0, 50000000, 'muna', '2023-06-22 04:01:05');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email_user` varchar(255) NOT NULL,
  `notelp` int(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `isActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email_user`, `notelp`, `name`, `username`, `password`, `role`, `isActive`) VALUES
(5, 'admin@gmail.com', 546845, 'muna', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 1),
(30, 'muna@gmail.com', 35641, 'muna', 'muna', 'ee11cbb19052e40b07aac0ca060c23ee', 'user', 1),
(36, '', 0, '', 'tes123', '0134a762b1c7d4acab4a766061b57093', 'user', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user2`
--

CREATE TABLE `user2` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `role` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user2`
--

INSERT INTO `user2` (`id`, `username`, `role`, `password`) VALUES
(1, 'ulimamunas', 'admin', 'muna');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `link_video` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `link_video`, `tanggal`) VALUES
(1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PgU54KB64BA\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '2023-01-04 14:28:54'),
(2, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/pKGJKhphEms\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '2023-01-04 14:34:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aduan`
--
ALTER TABLE `aduan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komen`
--
ALTER TABLE `komen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user2`
--
ALTER TABLE `user2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aduan`
--
ALTER TABLE `aduan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `komen`
--
ALTER TABLE `komen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user2`
--
ALTER TABLE `user2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
