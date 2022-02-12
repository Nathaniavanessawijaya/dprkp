-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2022 at 05:36 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `matrial1`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggotas`
--

CREATE TABLE `anggotas` (
  `id` int(11) NOT NULL,
  `seksis_id` int(11) NOT NULL DEFAULT 0,
  `nama` text NOT NULL,
  `nip` varchar(50) NOT NULL,
  `tempat_tanggal_lahir` varchar(50) NOT NULL,
  `jenis_kelamin` text NOT NULL,
  `nomor_telepon` text NOT NULL,
  `alamat_lengkap` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `pendidikan_terakhir` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anggotas`
--

INSERT INTO `anggotas` (`id`, `seksis_id`, `nama`, `nip`, `tempat_tanggal_lahir`, `jenis_kelamin`, `nomor_telepon`, `alamat_lengkap`, `email`, `pendidikan_terakhir`, `created_at`, `updated_at`) VALUES
(1, 2, 'H. Edi Santoso, ST', '19750707 200901 1 002', 'Bandung, 28 Januari 1987', 'Laki Laki', '086546372654', 'Ciwidey, Bandung', 'edi@gmail.com', 'S1', '2021-11-26 01:00:18', '2021-11-26 01:00:56'),
(2, 13, 'Neneng Wahyuningsih, ST', '19720804 200604 2 017', 'Garut, 27 Desember 1997', 'Perempuan', '088123456789', 'Limbangan, Garut', 'neneng@gmail.com', 'S1', '2021-11-26 01:03:25', '2022-02-10 18:39:02'),
(3, 3, 'Retno Anggraeni, ST., M.Si', '19750701 201001 2 001', 'Ciamis, 30 Mei 1999', 'Perempuan', '089999666786', 'Banjarsari, Ciamis', 'retno@gmail.com', 'S2', '2021-11-26 01:03:57', '2022-01-12 08:31:33'),
(5, 17, 'Widiyanti, ST', '19810513 200501 2 013', 'Jakarta, 27 Oktober 1998', 'Perempuan', '082345678909', 'Jakarta Selatan', 'widiyanti@gmail.com', 'S1', '2021-11-26 01:08:02', '2022-02-10 18:41:06'),
(35, 16, 'Haniah, ST., MT', '19730823 200501 2 006', 'Cirebon, 4 September 1999', 'Perempuan', '088987564123', 'Cirebon, Jawa Barat', 'haniah@gmail.com', 'S2', '2021-11-26 02:44:34', '2022-02-10 18:40:53'),
(39, 15, 'Budi Harjo, S.T', '19680724 199603 1 003', 'Bandung, 31 Januari 2021', 'Laki-laki', '089666234678', 'Cikole, Lembang', 'budiraharjo@gmail.com', 'S1', '2022-01-22 08:54:16', '2022-02-10 18:40:32'),
(40, 0, 'Wadi, SE', '19640212 2006 04 1 004', 'Indramayu', 'Laki Laki', '087898765456', 'Krangkeng, Indramayu', 'wadi@gmail.com', 'S1', '2022-01-23 07:14:04', '2022-01-23 07:14:04'),
(41, 0, 'H. Nanang Rosadi, S. Si., M.Mkes', '19670623 199103 1 005', 'Karawang, 12 November 1999', 'Laki Laki', '087678543567', 'Karawang ', 'nanang@gmail.com', 'S2', '2022-01-23 07:17:49', '2022-01-23 07:17:49'),
(42, 0, 'Tommy Fahlevianto, SE., MM', '19790526 2006004 1 013', 'Tangerang, 26 April 1997', 'Laki Laki', '087456789654', 'Tangerang Selatan', 'tommy@gmail.com', 'S2', '2022-01-23 07:20:27', '2022-01-23 07:20:27'),
(43, 0, 'Amiyati, S.Sos', '19740505 201001 2 002', 'Brebes, 25 Juli 1995', 'Perempuan', '082567876543', 'Brebes', 'amiyati@gmail.com', 'S1', '2022-01-23 07:24:48', '2022-01-23 07:24:48'),
(44, 0, 'Siti Susanti, S.Sos', '19531005 200801 2 020', 'Tegal, 15 Juni 1996', 'Perempuan', '089456376543', 'Tegal', 'siti@gmail.com', 'S1', '2022-01-23 07:24:48', '2022-01-23 07:24:48'),
(45, 0, 'Dra. Sri Rizki Mulyawati', '19650616 199102 2 001', 'Bandung, 23 Februari 1997', 'Perempuan', '089567453625', 'Soreang, Bandung', 'sri@gmail.com', 'S1', '2022-01-23 07:31:27', '2022-01-23 07:31:27'),
(46, 0, 'Ujianto Wahyu Utomo, ATD', '19691114 199203 1 004', 'Tegal, 15 Juni 1995', 'Laki Laki', '086435678543', 'Tegal', 'ujiyanto@gmail.com', 'D3', '2022-01-23 07:31:27', '2022-01-23 07:31:27'),
(47, 0, 'Ir. Agung Sedijono, M.Si', '19650711 199403 1 006', 'Ciamis, 11 Juli 1965', 'Laki Laki', '087675876453', 'Rajadesa, Ciamis', 'agungsedijono@gmail.com', 'S1', '2022-01-23 07:36:14', '2022-01-23 07:36:14');

-- --------------------------------------------------------

--
-- Table structure for table `bidangs`
--

CREATE TABLE `bidangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `jumlah_seksi` int(100) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bidangs`
--

INSERT INTO `bidangs` (`id`, `name`, `description`, `jumlah_seksi`, `created_at`, `updated_at`) VALUES
(3, 'Bidang Perumahan, Prasarana, Sarana dan Utilitas', 'Fungsi : a. penyiapan bahan penyusunan rencana kerja Bidang Perumahan, Prasarana, Sarana dan Utilitas; b. penyiapan bahan perumusan kebijakan umum dan teknis operasional dalam lingkup tugas Bidang Perumahan, Prasarana, Sarana dan Utilitas; c. pengoordinasian penyiapan bahan penyusunan perencanaan lingkup tugas Bidang Perumahan, Prasarana, Sarana dan Utilitas; d. pengoordinasian penyiapan bahan perumusan kebijakan umum dan teknis operasional Bidang Perumahan, Prasarana, Sarana dan Utilitas; e. pengoordinasian penyelenggaraan tugas Bidang Perumahan, Prasarana, Sarana dan Utilitas; f. penyiapan bahan bimbingan dan pengendalian teknis Bidang Perumahan, Prasarana, Sarana dan Utilitas; g. pengoordinasian penyiapan bahan penyusunan laporan penyelengaraan tugas Bidang Perumahan, Prasarana, Sarana dan Utilitas; h. pengelolaan layanan administrasi dalam lingkup tugas Bidang Perumahan, Prasarana, Sarana dan Utilitas; i. pelaksanaan pengendalian, evaluasi dan pelaporan pengelolaan layanan administrasi dalam lingkup tugas Bidang Perumahan, Prasarana, Sarana dan Utilitas; dan j. pelaksanaan tugas lain berdasarkan kebijakan Wali Kota serta ketentuan peraturan perundangundangan.', 3, '2022-02-06 08:06:23', '2022-02-10 18:18:00'),
(4, 'Bidang Kawasan Permukiman', 'Fungsi : a. penyusunan perencanaan, program dan kegiatan Dinas lingkup Bidang Kawasan Permukiman; b. penyiapan bahan perumusan dan penetapan kebijakan teknis operasional penyelenggaraan tugas pokok dan fungsi Dinas lingkup Bidang Kawasan Permukiman; c. pelaksanaan tugas pokok Bidang Kawasan Permukiman; d. pengoordinasian pelaksanaan teknis penyelenggaraan pelayanan publik dalam lingkup Bidang Kawasan Permukiman; e. pengoordinasian pelaksanaan tugas pokok Bidang Kawasan Permukiman; f. pemfasilitasian dalam lingkup bidang tugasnya; g. pembinaan, pengawasan, pengendalian dan pengevaluasian pelaksanaan tugas pokok Bidang Kawasan Permukiman; h. pelaporan pelaksanaan tugas pokok dan fungsi lingkup Bidang Kawasan Permukiman; dan i. pelaksanaan tugas lain berdasarkan kebijakan pimpinan dalam lingkup bidang tugasnya.', 4, '2022-02-06 08:08:24', '2022-02-10 18:16:50');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `seksis_id` int(11) NOT NULL,
  `bidangs_id` int(11) NOT NULL,
  `activity` varchar(20) NOT NULL COMMENT '1 = masuk, 0 = keluar',
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `seksis_id`, `bidangs_id`, `activity`, `date`) VALUES
(1, 11, 2, '1', '2022-02-06 06:27:57'),
(2, 11, 2, '0', '2022-02-06 06:28:04'),
(3, 11, 2, '1', '2022-02-06 06:28:15'),
(4, 11, 2, '0', '2022-02-06 06:28:22'),
(5, 11, 2, '1', '2022-02-06 06:46:04'),
(6, 11, 2, '0', '2022-02-06 07:04:06'),
(7, 11, 2, '1', '2022-02-06 07:10:08'),
(8, 3, 2, '1', '2022-02-06 07:12:51'),
(9, 2, 2, '1', '2022-02-06 07:16:20'),
(10, 2, 2, '0', '2022-02-06 07:31:08'),
(11, 3, 2, '0', '2022-02-06 07:31:09'),
(12, 12, 4, '1', '2022-02-06 08:10:52'),
(13, 13, 4, '1', '2022-02-06 08:11:21'),
(14, 14, 4, '1', '2022-02-06 08:11:52'),
(15, 14, 4, '0', '2022-02-06 08:12:06'),
(16, 14, 4, '1', '2022-02-06 08:13:02'),
(17, 16, 3, '1', '2022-02-06 08:14:42'),
(18, 15, 3, '1', '2022-02-06 08:14:55'),
(19, 17, 3, '1', '2022-02-06 08:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `id` int(11) NOT NULL,
  `anggotas_id` int(11) NOT NULL,
  `seksis_id` int(11) NOT NULL,
  `activity` varchar(20) NOT NULL COMMENT '1 = masuk, 0 = keluar',
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `riwayat`
--

INSERT INTO `riwayat` (`id`, `anggotas_id`, `seksis_id`, `activity`, `date`) VALUES
(8, 30, 2, '1', '2021-11-26 01:00:56'),
(9, 31, 2, '1', '2021-11-26 01:08:29'),
(10, 32, 2, '1', '2021-11-26 01:08:58'),
(11, 32, 2, '0', '2021-11-26 01:09:01'),
(12, 32, 3, '1', '2021-11-26 01:09:08'),
(13, 34, 3, '1', '2021-11-26 01:09:17'),
(14, 34, 3, '0', '2021-11-26 01:09:19'),
(15, 33, 3, '1', '2021-11-26 01:09:23'),
(16, 34, 2, '1', '2021-11-26 01:09:38'),
(17, 5, 2, '1', '2021-11-26 04:30:48'),
(18, 4, 3, '0', '2021-11-26 05:44:12'),
(19, 4, 3, '1', '2021-11-26 05:44:17'),
(20, 5, 2, '0', '2021-11-26 05:44:38'),
(21, 5, 3, '1', '2021-11-26 05:44:44'),
(22, 5, 3, '0', '2021-11-26 05:44:47'),
(23, 5, 2, '1', '2021-11-26 05:45:00'),
(24, 3, 3, '0', '2022-01-11 15:40:40'),
(25, 2, 2, '0', '2022-01-11 16:46:16'),
(26, 3, 3, '1', '2022-01-12 08:31:33'),
(27, 2, 7, '1', '2022-01-12 12:53:28'),
(28, 2, 7, '0', '2022-01-12 12:53:30'),
(29, 5, 10, '1', '2022-02-03 15:37:14'),
(30, 5, 10, '0', '2022-02-03 15:37:36'),
(31, 2, 13, '1', '2022-02-10 18:39:04'),
(32, 39, 15, '1', '2022-02-10 18:40:35'),
(33, 35, 16, '1', '2022-02-10 18:40:53'),
(34, 5, 17, '1', '2022-02-10 18:41:07');

-- --------------------------------------------------------

--
-- Table structure for table `sekses`
--

CREATE TABLE `sekses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bidangs_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_users_join` int(11) NOT NULL DEFAULT 0,
  `total_users_leave` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sekses`
--

INSERT INTO `sekses` (`id`, `bidangs_id`, `name`, `description`, `total_users_join`, `total_users_leave`, `created_at`, `updated_at`) VALUES
(12, 4, 'Seksi Perencanaan dan Pengendalian', 'Fungsi: a. penyusunan perencanaan, program dan kegiatan lingkup Seksi Perencanaan dan Pengendalian; b. penyiapan bahan perumusan kebijakan umum lingkup Seksi Perencanaan dan Pengendalian; c. pemfasilitasian dan koordinasi pelaksanaan tugas lingkup Seksi Perencanaan dan Pengendalian; d. pelaksanaan pemberian layanan administrasi lingkup Seksi Perencanaan dan Pengendalian; e. pembinaan, pengawasan, pengendalian dan pengevaluasian pelaksanaan tugas pokok Seksi Perencanaan dan Pengendalian; f. pelaporan pelaksanaan tugas pokok dan fungsi Dinas lingkup Seksi Perencanaan dan Pengendalian; dan g. pelaksanaan tugas lain berdasarkan kebijakan pimpinan dalam lingkup bidang tugasnya.', 0, 0, '2022-02-06 07:35:07', '2022-02-06 08:10:52'),
(13, 4, 'Seksi Pengembangan Perumahan', 'Fungsi : a. penyusunan perencanaan, program dan kegiatan lingkup Seksi Pengembangan Perumahan; b. penyiapan bahan perumusan kebijakan umum lingkup Seksi Pengembangan Perumahan; c. pemfasilitasian dan koordinasi pelaksanaan tugas lingkup Seksi Pengembangan Perumahan; d. pelaksanaan pemberian layanan administrasi lingkup Seksi Pengembangan Perumahan; e. pembinaan, pengawasan, pengendalian dan pengevaluasian pelaksanaan tugas pokok Seksi Pengembangan Perumahan; f. pelaporan pelaksanaan tugas pokok dan fungsi Dinas lingkup Seksi Pengembangan Perumahan; dan g. pelaksanaan tugas lain berdasarkan kebijakan pimpinan dalam lingkup bidang tugasnya.', 1, 0, '2022-02-06 07:52:42', '2022-02-10 18:39:02'),
(14, 4, 'Seksi Prasarana, Sarana dan Utilitas', 'Fungsi: a. penyusunan perencanaan, program dan kegiatan lingkup Seksi Prasarana, Sarana dan Utilitas; b. penyiapan bahan perumusan kebijakan umum lingkup Seksi Prasarana, Sarana dan Utilitas; c. pemfasilitasian dan koordinasi pelaksanaan tugas lingkup Seksi Prasarana, Sarana dan Utilitas; d. pelaksanaan pemberian layanan administrasi lingkup Seksi Prasarana, Sarana dan Utilitas; e. pembinaan, pengawasan, pengendalian dan pengevaluasian pelaksanaan tugas pokok Seksi Prasarana, Sarana dan Utilitas; f. pelaporan pelaksanaan tugas pokok dan fungsi Dinas lingkup Seksi Prasarana, Sarana dan Utilitas; dan g. pelaksanaan tugas lain berdasarkan kebijakan pimpinan dalam lingkup bidang tugasnya.', 0, 0, '2022-02-06 07:54:15', '2022-02-10 18:29:57'),
(15, 3, 'Seksi Perencanaan Kawasan Pemukiman Kumuh', 'Fungsi: a. penyusunan perencanaan, program dan kegiatan lingkup Seksi Perencanaan Kawasan Permukiman Kumuh; b. penyiapan bahan perumusan kebijakan umum lingkup Seksi Perencanaan Kawasan Permukiman Kumuh; c. pemfasilitasian dan koordinasi pelaksanaan tugas lingkup Seksi Perencanaan Kawasan Permukiman Kumuh; d. pelaksanaan pemberian layanan administrasi lingkup Seksi Perencanaan Kawasan Permukiman Kumuh; e. pembinaan, pengawasan, pengendalian dan pengevaluasian pelaksanaan tugas pokok Seksi Perencanaan Kawasan Permukiman Kumuh; f. pelaporan pelaksanaan tugas pokok dan fungsi Dinas lingkup Seksi Perencanaan Kawasan Permukiman Kumuh; dan g. pelaksanaan tugas lain berdasarkan kebijakan pimpinan dalam lingkup bidang tugasnya.', 1, 0, '2022-02-06 07:57:16', '2022-02-10 18:40:34'),
(16, 3, 'Seksi Peningkatan Kualitas Kawasan Permukiman Kumuh', 'Fungsi : a. penyusunan perencanaan, program dan kegiatan lingkup Seksi Peningkatan Kualitas Kawasan Permukiman Kumuh; b. penyiapan bahan perumusan kebijakan umum lingkup Seksi Peningkatan Kualitas Kawasan Permukiman Kumuh; c. pemfasilitasian dan koordinasi pelaksanaan tugas lingkup Seksi Peningkatan Kualitas Kawasan Permukiman Kumuh; d. pelaksanaan pemberian layanan administrasi lingkup Seksi Peningkatan Kualitas Kawasan Permukiman Kumuh; e. pembinaan, pengawasan, pengendalian dan pengevaluasian pelaksanaan tugas pokok Seksi Peningkatan Kualitas Kawasan Permukiman Kumuh; f. pelaporan pelaksanaan tugas pokok dan fungsi Dinas lingkup Seksi Peningkatan Kualitas Kawasan Permukiman Kumuh; dan g. pelaksanaan tugas lain berdasarkan kebijakan pimpinan dalam lingkup bidang tugasnya.', 1, 0, '2022-02-06 07:59:18', '2022-02-10 18:40:53'),
(17, 3, 'Seksi Pengendalian dan Pencegahan Kawasan Permukiman Kumuh', 'Fungsi : a. penyusunan perencanaan, program dan kegiatan lingkup Seksi Pengendalian dan Pencegahan Kawasan Permukiman Kumuh; b. penyiapan bahan perumusan kebijakan umum lingkup Seksi Pengendalian dan Pencegahan Kawasan Permukiman Kumuh; c. pemfasilitasian dan koordinasi pelaksanaan tugas lingkup Seksi Pengendalian dan Pencegahan Kawasan Permukiman Kumuh; d. pelaksanaan pemberian layanan administrasi lingkup Seksi Pengendalian dan Pencegahan Kawasan Permukiman Kumuh; e. pembinaan, pengawasan, pengendalian dan pengevaluasian pelaksanaan tugas pokok Seksi Pengendalian dan Pencegahan Kawasan Permukiman Kumuh; f. pelaporan pelaksanaan tugas pokok dan fungsi Dinas lingkup Seksi Pengendalian dan Pencegahan Kawasan Permukiman Kumuh; dan g. pelaksanaan tugas lain berdasarkan kebijakan pimpinan dalam lingkup bidang tugasnya.', 1, 0, '2022-02-06 08:01:35', '2022-02-10 18:41:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `nip` int(11) DEFAULT NULL,
  `nis` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_orang_tua` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maps` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_role_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `forgot` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permohonan_akun` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mode_gelap` int(11) NOT NULL,
  `pola_wajah` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nip`, `nis`, `name`, `image`, `email`, `email_orang_tua`, `email_verified_at`, `telepon`, `password`, `alamat`, `maps`, `user_role_id`, `is_active`, `forgot`, `permohonan_akun`, `mode_gelap`, `pola_wajah`, `created_at`, `updated_at`) VALUES
(3, NULL, NULL, 'Ayu', 'Capture.PNG', 'admin@gmail.com', NULL, '1', '0838371444', '$2y$10$/50MXxCKZpi1XjHqKWh3MOldLpj6wcRy4wFjJkXd85aVQyHk3pa7e', 'desa suci blok tenggeran mundu cirebon', NULL, 1, 1, NULL, NULL, 2, NULL, '2020-10-18 14:23:15', '2021-08-12 10:51:23'),
(1602863100, NULL, NULL, 'Tomi', 'user.webp', 'sales@gmail.com', NULL, '1', '0838371444', '$2y$10$/50MXxCKZpi1XjHqKWh3MOldLpj6wcRy4wFjJkXd85aVQyHk3pa7e', 'desa suci blok tenggeran mundu cirebon', NULL, 2, 1, '1613648446', NULL, 2, NULL, '2020-10-08 14:23:15', '2021-08-10 20:29:55'),
(1626748649, NULL, NULL, 'Deno', 'user.webp', 'sales2@gmail.com', NULL, '1', '0838371444', '$2y$10$/50MXxCKZpi1XjHqKWh3MOldLpj6wcRy4wFjJkXd85aVQyHk3pa7e', 'desa suci blok tenggeran mundu cirebon', NULL, 2, 1, '1613648446', NULL, 2, NULL, '2020-10-08 14:23:15', '2021-08-14 15:41:38'),
(1626748651, NULL, NULL, 'Wahyu', 'user.webp', 'sales3@gmail.com', NULL, '1', '0838371444', '$2y$10$/50MXxCKZpi1XjHqKWh3MOldLpj6wcRy4wFjJkXd85aVQyHk3pa7e', 'desa suci blok tenggeran mundu cirebon', NULL, 2, 1, '1613648446', NULL, 2, NULL, '2020-10-08 14:23:15', '2021-08-14 15:41:38'),
(1642744105, NULL, NULL, 'Nathania Vanessa Wijaya', 'user.webp', 'nathaniavw28@gmail.com', NULL, '1642744105', NULL, '$2y$10$DQ.yuvK8rOXjbHASp9cHJ.iANxPN5ZGlznTl.rgSfkgwWiffxsRby', 'Belum Di Input', NULL, 1, 1, NULL, NULL, 2, NULL, '2022-01-21 05:48:25', '2022-01-21 05:48:25'),
(1642834302, NULL, NULL, 'Nathania Vanessa W', 'user.webp', 'nathaniavw2@gmail.com', NULL, '1642834302', NULL, '$2y$10$nm0v8KRc.0v3u3/ZW843IO58wN96rb0.wHQU160nH9xcVb/BbxGt.', 'Belum Di Input', NULL, 2, 1, NULL, NULL, 2, NULL, '2022-01-22 06:51:42', '2022-01-22 06:51:42'),
(1642916958, NULL, NULL, 'akun1', 'user.webp', 'admin1@gmail.com', NULL, '1642916958', NULL, '$2y$10$g2gL8JpSobZka/.I823LM.yGwoo8CM4Asg4.hnos3GdeAPjtsREW6', 'Belum Di Input', NULL, 1, 1, NULL, NULL, 2, NULL, '2022-01-23 05:49:18', '2022-01-23 05:49:18'),
(1644527736, NULL, NULL, 'Anita Indah Permata Sari', 'user.webp', 'nengitaanaknyaii25@gmail.com', NULL, '1644527736', NULL, '$2y$10$HX2dejZERVoY2YB3S6MXtOdjkE15s3DXr6Cme6InPQo0k3gjTZtnS', 'Belum Di Input', NULL, 2, 1, '1644529729', NULL, 2, NULL, '2022-02-10 21:15:36', '2022-02-10 21:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `user_role_id` int(11) NOT NULL,
  `user_menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `user_role_id`, `user_menu_id`, `created_at`, `updated_at`) VALUES
(89, 1, 1, '2021-03-02 16:30:51', '2021-03-02 16:30:51'),
(104, 2, 2, '2021-06-05 21:24:15', '2021-06-05 21:24:15'),
(151, 1, 11, '2021-03-02 16:30:51', '2021-03-02 16:30:51'),
(154, 2, 3, '2021-06-05 21:24:15', '2021-06-05 21:24:15'),
(155, 1, 283, '2021-06-05 21:24:15', '2021-06-05 21:24:15'),
(156, 1, 284, '2021-06-05 21:24:15', '2021-06-05 21:24:15'),
(157, 1, 285, '2021-06-05 21:24:15', '2021-06-05 21:24:15'),
(158, 1, 286, '2021-06-05 21:24:15', '2021-06-05 21:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `title`, `url`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', '/dashboard', 'pie-chart', '2020-08-31 02:49:50', '2021-06-09 22:44:13'),
(2, 'Dashboard', '/home', 'home', '2021-06-05 21:22:20', '2021-06-05 21:22:37'),
(284, 'Bidang', '/bidangs', 'home', '2021-06-05 21:22:20', '2021-06-05 21:22:37'),
(285, 'Seksi', '/seksis', 'user', '2021-06-05 21:22:20', '2021-06-05 21:22:37'),
(286, 'Anggota', '/anggotas', 'users', '2021-06-05 21:22:20', '2021-06-05 21:22:37');

-- --------------------------------------------------------

--
-- Table structure for table `user_menu2`
--

CREATE TABLE `user_menu2` (
  `id` int(11) NOT NULL,
  `menu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_menu2`
--

INSERT INTO `user_menu2` (`id`, `menu`, `created_at`, `updated_at`) VALUES
(6, 'Dashboard', '2020-08-31 02:04:06', '2021-03-02 16:30:19'),
(8, 'MenuManagement', '2020-08-31 02:04:39', '2020-08-31 02:04:39'),
(14, 'Home', '2021-06-05 21:21:14', '2021-06-05 21:21:14'),
(15, 'PPDB', '2021-06-09 22:45:20', '2021-06-11 06:49:46'),
(16, 'Pembelajaran', '2021-06-11 06:52:23', '2021-06-11 06:52:23'),
(17, 'Arsip', '2021-06-11 09:11:38', '2021-06-11 09:11:38'),
(18, 'DashboardGuru', '2021-07-05 07:52:44', '2021-07-05 07:53:04'),
(19, 'Pengajaran', '2021-07-05 08:21:00', '2021-07-05 08:21:00'),
(20, 'GuruPiket', '2021-07-05 10:39:08', '2021-07-05 10:39:08'),
(21, 'Ujian guru', '2021-07-10 06:47:47', '2021-07-10 06:47:47'),
(22, 'Raport guru', '2021-07-10 06:48:30', '2021-07-10 06:48:30'),
(23, 'Dashboard Siswa', '2021-07-12 09:22:03', '2021-07-12 09:22:03'),
(24, 'Pembelajaran', '2021-07-12 09:22:33', '2021-07-12 09:22:33'),
(25, 'Nilai', '2021-07-12 09:23:04', '2021-07-12 09:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2020-08-31 02:10:28', '2021-03-01 21:13:46'),
(2, 'Sales', '2020-12-16 07:13:02', '2020-12-08 07:12:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggotas`
--
ALTER TABLE `anggotas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bidangs`
--
ALTER TABLE `bidangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sekses`
--
ALTER TABLE `sekses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `user_role_id` (`user_role_id`) USING BTREE;

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_access_menu_role_id_index` (`user_role_id`),
  ADD KEY `user_access_menu_menu_id_index` (`user_menu_id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu2`
--
ALTER TABLE `user_menu2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggotas`
--
ALTER TABLE `anggotas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `bidangs`
--
ALTER TABLE `bidangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `sekses`
--
ALTER TABLE `sekses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1644527737;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;

--
-- AUTO_INCREMENT for table `user_menu2`
--
ALTER TABLE `user_menu2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
