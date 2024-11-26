-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2024 at 12:52 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unit_pengurusan_aset_fasiliti`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_upadf`
--

CREATE TABLE `admin_upadf` (
  `id` int(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_upadf`
--

INSERT INTO `admin_upadf` (`id`, `username`, `password`) VALUES
(13, 'amir', 'amir2003'),
(15, 'admin', '12345678'),
(16, 'abmwt2024', '0172571259');

-- --------------------------------------------------------

--
-- Table structure for table `approvals`
--

CREATE TABLE `approvals` (
  `id` int(11) NOT NULL,
  `ulasan` text DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jawatan` varchar(100) DEFAULT NULL,
  `tarikh` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `approvals`
--

INSERT INTO `approvals` (`id`, `ulasan`, `nama`, `jawatan`, `tarikh`, `status`) VALUES
(33, '.', 'Amir', 'Intern', '2024-10-22', 'approved'),
(47, '.', 'Amir', 'Intern', '2024-11-22', 'approved'),
(49, '.', 'Unknown', '.', '2024-11-08', 'not_approved'),
(50, '.', 'Test', 'Test', '2024-10-21', 'approved'),
(51, '.', 'Unknown', '.', '2024-11-08', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `approvals2`
--

CREATE TABLE `approvals2` (
  `id` int(11) NOT NULL,
  `ulasan` text DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jawatan` varchar(100) DEFAULT NULL,
  `tarikh` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `approvals2`
--

INSERT INTO `approvals2` (`id`, `ulasan`, `nama`, `jawatan`, `tarikh`, `status`) VALUES
(33, '.', 'Amir', 'Intern', '2024-10-22', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `approvals3`
--

CREATE TABLE `approvals3` (
  `id` int(11) NOT NULL,
  `ulasan` text DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jawatan` varchar(100) DEFAULT NULL,
  `tarikh` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `approvals3`
--

INSERT INTO `approvals3` (`id`, `ulasan`, `nama`, `jawatan`, `tarikh`, `status`) VALUES
(16, 'Done ', 'obai', 'Assist', '2024-11-22', 'approved'),
(56, '.', 'Amir', 'Intern', '2024-11-06', 'approved'),
(58, '.', 'Unknown', '.', '2024-11-08', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `approvals4`
--

CREATE TABLE `approvals4` (
  `id` int(11) NOT NULL,
  `ulasan` text DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jawatan` varchar(100) DEFAULT NULL,
  `tarikh` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `approvals4`
--

INSERT INTO `approvals4` (`id`, `ulasan`, `nama`, `jawatan`, `tarikh`, `status`) VALUES
(2, '.', 'Amir', 'Intern', '2024-11-06', 'approved'),
(11, '.', 'Amir', 'Intern', '2024-11-22', 'approved'),
(12, '.', 'Amir', 'Intern', '2024-11-07', 'approved'),
(21, '.', 'Amir', 'Intern', '2024-11-07', 'approved'),
(37, '.', 'Unknown', '.', '2024-11-08', 'approved'),
(40, 'Done', 'obai', 'Assist', '2024-11-22', 'approved'),
(44, '.', 'Amir', 'Intern', '2024-11-07', 'approved'),
(49, '.', 'Amir', 'Intern', '2024-11-22', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `approvals5`
--

CREATE TABLE `approvals5` (
  `id` int(11) NOT NULL,
  `ulasan` text DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jawatan` varchar(100) DEFAULT NULL,
  `tarikh` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `approvals5`
--

INSERT INTO `approvals5` (`id`, `ulasan`, `nama`, `jawatan`, `tarikh`, `status`) VALUES
(12, '.', 'Amir', 'Intern', '2024-11-22', 'approved'),
(14, '.', 'Amir', 'IT', '2024-11-06', 'approved'),
(21, '.', 'Amir', 'Intern', '2024-11-06', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `approvals6`
--

CREATE TABLE `approvals6` (
  `id` int(11) NOT NULL,
  `ulasan` text DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jawatan` varchar(100) DEFAULT NULL,
  `tarikh` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `approvals6`
--

INSERT INTO `approvals6` (`id`, `ulasan`, `nama`, `jawatan`, `tarikh`, `status`) VALUES
(10, '.', 'Amir', 'Intern', '2024-11-06', 'approved'),
(21, '.', 'Amir', 'Intern', '2024-11-06', 'approved'),
(33, '.', 'Amir', 'Intern', '2024-11-06', 'approved'),
(49, '.', 'Amir', 'Intern', '2024-11-22', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `borangaduankerosakan`
--

CREATE TABLE `borangaduankerosakan` (
  `id` int(11) NOT NULL,
  `aduan_oleh` varchar(255) NOT NULL,
  `organisasi` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `tarikh1` date NOT NULL,
  `masa` time(4) NOT NULL,
  `perihal_aduan` varchar(255) NOT NULL,
  `t_tangan` text NOT NULL,
  `tarikh_tandatangan` date NOT NULL,
  `catatan` varchar(255) NOT NULL,
  `diterima_oleh` varchar(255) NOT NULL,
  `t_tangan2` text NOT NULL,
  `jawatan` varchar(255) NOT NULL,
  `tarikh2` date NOT NULL,
  `masa2` time(6) NOT NULL,
  `tarikh_masa` date NOT NULL,
  `dibaikpulih` varchar(255) NOT NULL,
  `tarikh_baikpulih` date NOT NULL,
  `jawatan2` varchar(255) NOT NULL,
  `tarikh3` date NOT NULL,
  `masa3` time(6) NOT NULL,
  `status` enum('Pending','Approved','Not Approved') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borangaduankerosakan`
--

INSERT INTO `borangaduankerosakan` (`id`, `aduan_oleh`, `organisasi`, `lokasi`, `tarikh1`, `masa`, `perihal_aduan`, `t_tangan`, `tarikh_tandatangan`, `catatan`, `diterima_oleh`, `t_tangan2`, `jawatan`, `tarikh2`, `masa2`, `tarikh_masa`, `dibaikpulih`, `tarikh_baikpulih`, `jawatan2`, `tarikh3`, `masa3`, `status`) VALUES
(2, 'M. Sidek Bin Hashim', 'MEP', 'Kelas PW2', '2024-07-05', '15:50:00.0000', '3 unit lampu kalimantang tidak berfungsi.', '', '2024-07-05', '.', '.', '', '.', '2024-07-05', '15:50:00.000000', '0000-00-00', '.', '2024-07-05', '.', '2024-07-05', '15:50:00.000000', 'Pending'),
(3, 'M. Suhaimi Bin Abu Bakar', 'Unit Kerja Bangunan & Arkitek ', 'Kelas Drafting Manual', '2024-07-11', '21:00:00.0000', 'Siling hampir jatuh.', 'WhatsApp Image 2024-07-30 at 15.56.12.jpeg', '2024-07-11', '.', '.', '', '.', '2024-07-11', '00:00:00.000000', '0000-00-00', '.', '2024-07-11', '.', '2024-07-11', '00:00:00.000000', 'Pending'),
(4, 'Aswat Bin Hj Ahmad', 'Corporate and Promotion', 'Korporat & Promosi Pejabat Utama', '2024-07-12', '08:00:00.0000', 'Terdapat lampu yang terbakar.', 'WhatsApp Image 2024-07-30 at 16.02.30.jpeg', '2024-07-12', '.', '.', '', '.', '2024-07-12', '00:00:00.000000', '0000-00-00', '.', '2024-07-12', '.', '2024-07-12', '00:00:00.000000', 'Pending'),
(5, 'Kelas A0', '.', 'Kelas A0', '2024-07-15', '15:30:00.0000', 'Siling kelas roboh.', '', '2024-07-15', '.', 'Muhammad Amirul Eqbal', '', 'Ketua Kelas', '2024-07-15', '00:00:00.000000', '0000-00-00', '.', '2024-07-15', '.', '2024-07-15', '00:00:00.000000', 'Pending'),
(6, 'M. Suhaimi Bin Abu Bakar', 'Unit Kerja Bangunan & Arkitek ', 'Kelas Drafting Manual', '2024-07-02', '09:00:00.0000', 'Pengunci pada tombol pintu rosak.', 'WhatsApp Image 2024-07-30 at 15.56.12.jpeg', '2024-07-02', '.', 'M. Suhaimi Bin Abu Bakar', 'WhatsApp Image 2024-07-30 at 15.56.12.jpeg', 'Pengajar/Penilai', '2024-07-02', '09:00:00.000000', '0000-00-00', '.', '2024-07-02', '.', '2024-07-02', '00:00:00.000000', 'Pending'),
(7, 'Umar Bin Mat Amin', 'Mechanical Electrical Plumbing Units', 'Bengkel Gas Pipe Filter', '2024-07-03', '09:30:00.0000', 'Pendawaian untuk kegunaan mesin-mesin di bengkel gas pipe filter tidak sesuai bagi kegunaan di bengkel yang menyebabkan DB kerap trip apabila digunakan dan juga menyebabkan banyak mesin yang rosak.Untuk makluman 4 mesin welding dan 7 grinder machine sudah', 'WhatsApp Image 2024-07-30 at 16.17.35.jpeg', '2024-07-03', '1.Dapatkan maklumat/advise daripada Cikgu Yus berkenaan isu ini.\r\n2.Melihat kenapa mesin ada rosak?', '.', '', '.', '2024-07-03', '00:00:00.000000', '0000-00-00', '.', '2024-07-03', '.', '2024-07-03', '00:00:00.000000', 'Pending'),
(8, 'Muhammad Al-Amir Bin Amran', '.', 'Bilik Simulator', '2024-07-16', '23:30:00.0000', 'Mengecat warna putih pada dinding.', '', '2024-07-16', '.', '.', '', '.', '2024-07-16', '00:00:00.000000', '0000-00-00', '.', '2024-07-16', '.', '2024-07-16', '00:00:00.000000', 'Pending'),
(9, 'Muhammad Al-Amir Bin Amran', '.', 'Nissan Body Paint Kepong', '2024-07-16', '11:50:00.0000', 'Kereta Nissa Navara kepunyaan ABM:\r\n-Air Filter kotor.\r\n-Bateri sudah lama.\r\n-Wiper sudah lama.\r\n-Tayar 4 biji sudah merekah.\r\n-3rd brakelight tidak menyala.', '', '2024-07-16', '-Tiada udara yang bersih.\r\n-Kereta akan mati secara tiba-tiba.\r\n-Tidak dapat mengelap cermin dengan baik.\r\n-Menyebabkan tergelincir.\r\n-Membahayakan pengguna lain.', '.', '', '.', '2024-07-16', '00:00:00.000000', '0000-00-00', '.', '2024-07-16', '.', '2024-07-16', '00:00:00.000000', 'Pending'),
(10, 'Muhammad Al-Amir Bin Amran', '.', 'Tingkat 2 Bengkel BOM ', '2024-07-16', '23:58:00.0000', 'Membaik pulih kabel internet di bilik tong air.', '', '2024-07-16', 'Untuk kegunaan internet lebih laju.', '.', '', '.', '2024-07-16', '00:00:00.000000', '0000-00-00', '.', '2024-07-16', '.', '2024-07-16', '00:00:00.000000', 'Pending'),
(11, 'Muhammad Al-Amir Bin Amran', '.', 'Bengkel Drafting', '2024-07-16', '13:05:00.0000', 'Tiler di tangga hampir tertanggal.', '', '2024-07-16', 'Mesti di baik pulih sebelum terkopak', '.', '', '.', '2024-07-16', '00:00:00.000000', '0000-00-00', '.', '2024-07-16', '.', '2024-07-16', '00:00:00.000000', 'Pending'),
(12, 'Muhammad Al-Amir Bin Amran', '.', 'Tan Chong Ekspres Auto Servis', '2024-07-16', '16:15:00.0000', 'Van mengalami kerosakan', '', '2024-07-16', 'Untuk membawa barang', '.', '', '.', '2024-07-16', '00:00:00.000000', '0000-00-00', '.', '2024-07-16', '.', '2024-07-16', '00:00:00.000000', 'Pending'),
(13, 'Muhammad Al-Amir Bin Amran', '.', 'Luar pejabat Bengkel BOM', '2024-07-17', '12:00:00.0000', 'Tiada Wi-Fi.', '', '2024-07-17', 'Untuk kegunaan Wi-Fi di dalam pejabat.', '.', '', '.', '2024-07-17', '00:00:00.000000', '0000-00-00', '.', '2024-07-17', '.', '2024-07-17', '00:00:00.000000', 'Pending'),
(14, 'Muhammad Al-Amir Bin Amran', '.', 'Drafting kelas ABM', '2024-07-17', '12:13:00.0000', '-Siling hampir tercabut.\r\n-Lampu rosak.', '', '2024-07-17', 'Menyebabkan siling terjatuh atas kepala staf.', '.', '', '.', '2024-07-17', '00:00:00.000000', '0000-00-00', '.', '2024-07-17', '.', '2024-07-17', '00:00:00.000000', 'Pending'),
(15, 'Muhammad Al-Amir Bin Amran', '.', 'Bilik Simulator', '2024-07-17', '17:20:00.0000', 'Wayar telah lama di Bilik Simulator.', '', '2024-07-17', 'Memasang wayar yang baru.', '.', '', '.', '2024-07-17', '00:00:00.000000', '0000-00-00', '.', '2024-07-17', '.', '2024-07-17', '00:00:00.000000', 'Pending'),
(16, 'Muhammad Al-Amir Bin Amran', '.', 'Laluan kereta staf CIDB Tech', '2024-07-17', '18:25:00.0000', '3 tayar kereta staf bocor akibat terkena dawai.', '', '2024-07-17', 'Dawai yang bersepah menyebabkan tayar bocor.', '.', '', '.', '2024-07-17', '00:00:00.000000', '0000-00-00', '.', '2024-07-17', '.', '2024-07-17', '00:00:00.000000', 'Pending'),
(17, 'Muhammad Al-Amir Bin Amran', '.', 'Office ABM', '2024-07-18', '10:05:00.0000', 'Rak meja Puan Ema rosak.', '', '2024-07-18', 'Untuk meletakkan barang dengan baik', '.', '', '.', '2024-07-18', '00:00:00.000000', '0000-00-00', '.', '2024-07-18', '.', '2024-07-18', '00:00:00.000000', 'Pending'),
(18, 'Muhammad Al-Amir Bin Amran', '.', 'Bilik Simulator', '2024-07-18', '13:00:00.0000', 'Saluran kabel internet telah lama.', '', '2024-07-18', 'Perlu memasang saluran baru', '.', '', '.', '2024-07-18', '13:00:00.000000', '0000-00-00', '.', '2024-07-18', '.', '2024-07-18', '00:00:00.000000', 'Pending'),
(19, 'Muhammad Al-Amir Bin Amran', '.', 'Asrama lelaki', '2024-07-19', '16:00:00.0000', 'Persekitaran luar dan dalam asrama lelaki tidak bersih', '', '2024-07-19', 'Untuk pemandangan yang lebih cantik.', '.', '', '.', '2024-07-19', '00:00:00.000000', '0000-00-00', '.', '2024-07-19', '.', '2024-07-19', '00:00:00.000000', 'Pending'),
(20, 'Muhammad Al-Amir Bin Amran', '.', 'Pusat Servis Kereta Alam Autowork', '2024-07-19', '16:41:00.0000', 'Kereta Nissan X-Trail rosak.', '', '2024-07-19', 'Untuk kegunaan staf ABM.', '.', '', '.', '2024-07-19', '00:00:00.000000', '0000-00-00', '.', '2024-07-19', '.', '2024-07-19', '00:00:00.000000', 'Pending'),
(21, 'Muhammad Al-Amir Bin Amran', '.', 'ABM Wilayah Tengah', '2024-07-22', '10:30:00.0000', 'Tiada fire extinguisher.', '', '2024-07-22', 'Untuk memadam api.', '.', '', '.', '2024-07-22', '00:00:00.000000', '0000-00-00', '.', '2024-07-22', '.', '2024-07-22', '00:00:00.000000', 'Pending'),
(22, 'Muhammad Al-Amir Bin Amran', '.', 'Tandas Bengkel BOM', '2024-07-23', '08:15:00.0000', 'Tandas di Bengkel BOM rosak', '', '2024-07-23', 'Untuk kegunaan staf di Bengkel BOM.', '.', '', '.', '2024-07-23', '00:00:00.000000', '0000-00-00', '.', '2024-07-23', '.', '2024-07-23', '00:00:00.000000', 'Pending'),
(23, 'Muhammad Al-Amir Bin Amran', '.', 'Asrama atas kedai tayar', '2024-07-23', '16:00:00.0000', 'Tiada tempat sidai untuk pelajar.', '', '2024-07-23', 'Untuk menyidai pakaian.', '.', '', '.', '2024-07-23', '00:00:00.000000', '0000-00-00', '.', '2024-07-23', '.', '2024-07-23', '00:00:00.000000', 'Pending'),
(24, 'Muhammad Al-Amir Bin Amran', '.', 'Bengkel', '2024-07-24', '12:30:00.0000', 'Gas habis.', '', '2024-07-24', 'Untuk kegunaan yang terdapat pada gas.', '.', '', '.', '2024-07-24', '00:00:00.000000', '0000-00-00', '.', '2024-07-24', '.', '2024-07-24', '00:00:00.000000', 'Pending'),
(25, 'Muhammad Al-Amir Bin Amran', '.', 'Bengkel Wettrade', '2024-07-24', '15:00:00.0000', 'Kayu pecah.', '', '2024-07-24', 'Kelihatan kurang sesuai.', '.', '', '.', '2024-07-24', '00:00:00.000000', '0000-00-00', '.', '2024-07-24', '.', '2024-07-24', '00:00:00.000000', 'Pending'),
(26, 'Muhammad Al-Amir Bin Amran', '.', 'Sekitar pintu longkang ABM', '2024-07-25', '23:09:00.0000', 'Longkang mengalami masalah.', '', '2024-07-25', 'Perlu membaik pulih longkang.', '.', '', '.', '2024-07-25', '00:00:00.000000', '0000-00-00', '.', '2024-07-25', '.', '2024-07-25', '00:00:00.000000', 'Pending'),
(27, 'Muhammad Al-Amir Bin Amran', '.', 'Tandas sebelah Bengkel BOM', '2024-07-25', '13:41:00.0000', 'Air tidak berhenti mengalir', '', '2024-07-25', 'Membazir air.', '.', '', '.', '2024-07-25', '00:00:00.000000', '0000-00-00', '.', '2024-07-25', '.', '2024-07-25', '00:01:00.000000', 'Pending'),
(28, 'Muhammad Al-Amir Bin Amran', '.', 'PW4', '2024-07-26', '08:37:00.0000', 'Lampu berkelip sangat cerah', '', '2024-07-26', 'Menganggu pelajar yang berada di situ.', '.', '', '.', '2024-07-26', '00:00:00.000000', '0000-00-00', '.', '2024-07-26', '.', '2024-07-26', '00:00:00.000000', 'Pending'),
(29, 'Muhammad Al-Amir Bin Amran', '.', 'Hostel lelaki ABM', '2024-07-26', '17:09:00.0000', 'Tiada tempat untuk menyidai baju.', '', '2024-07-26', 'Untuk pelajar menyidai baju.', '.', '', '.', '2024-07-26', '00:00:00.000000', '0000-00-00', '.', '2024-07-26', '.', '2024-07-26', '00:00:00.000000', 'Pending'),
(30, 'Muhammad Al-Amir Bin Amran', '.', 'Luar kawasan ABM', '2024-07-29', '10:30:00.0000', 'Enjin forklift kotor.', '', '2024-07-29', 'Untuk kegunaan pelajar atau pekerja ABM.', '.', '', '.', '2024-07-29', '00:00:00.000000', '0000-00-00', '.', '2024-07-29', '.', '2024-07-29', '00:00:00.000000', 'Pending'),
(31, 'Muhammad Al-Amir Bin Amran', '.', 'Hostel ABM Homestay Permaisuri', '2024-07-29', '11:00:00.0000', 'Homestay tidak kemas dan cadar telah lama', '', '2024-07-29', '.', '.', '', '.', '2024-07-29', '00:00:00.000000', '0000-00-00', '.', '2024-07-29', '.', '2024-07-29', '00:00:00.000000', 'Pending'),
(32, 'Muhammad Al-Amir Bin Amran', '.', 'Asrama atas kedai tayar tingkat 2', '2024-07-29', '12:30:00.0000', 'Asrama tidak kemas.', '', '2024-07-29', 'Perlu kemaskan asrama.', '.', '', '.', '2024-07-29', '00:00:00.000000', '0000-00-00', '.', '2024-07-29', '.', '2024-07-29', '00:00:00.000000', 'Pending'),
(33, 'Muhammad Al-Amir Bin Amran', '.', 'Luar pejabat ABM', '2024-07-30', '02:40:00.0000', 'Persekitaran tidak bersih.', '', '2024-07-30', 'Perlu membersihkan persekitaran luar pejabat ABM.', '.', '', '.', '2024-07-30', '00:00:00.000000', '0000-00-00', '.', '2024-07-30', '.', '2024-07-30', '00:00:00.000000', 'Pending'),
(35, 'Muhammad Al-Amir Bin Amran', '.', 'Tingkat 2 Bengkel BOM', '2024-07-17', '12:00:34.5560', 'Tiada Wi-Fi di tingkat 2.', '', '0000-00-00', 'Perlu mempunyai Wi-Fi untuk kegunaan staf di tingkat 2', '', '', '', '0000-00-00', '00:00:00.000000', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '00:00:00.000000', 'Pending'),
(36, 'Muhammad Al-Amir Bin Amran', '.', 'Pusat Servis Kereta', '2024-07-31', '11:30:00.0000', 'Nissan X-Trail T32\r\n-Sistem A/C bermasalah\r\n-Minyak kotor\r\n-A.F kotor\r\n-Bearing tayar kiri belakang berbunyi\r\n-Tayar belakang botak', '', '0000-00-00', 'Untuk kegunaan staf lain jika ingin meminjam kenderaan.', '', '', '', '0000-00-00', '00:00:00.000000', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '00:00:00.000000', 'Pending'),
(37, 'Muhammad Al-Amir Bin Amran', '.', 'Pusat Servis Kereta', '2024-07-31', '16:18:00.0000', 'Nissan X-Trail\r\n-Pully aircond tercabut.', '', '0000-00-00', 'Untuk staf meminjam kereta. ', '', '', '', '0000-00-00', '00:00:00.000000', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '00:00:00.000000', 'Pending'),
(38, 'Muhammad Al-Amir Bin Amran', '.', 'Luar pejabat ABM', '2024-07-31', '17:50:00.0000', 'Lampu solar bermasalah.', '', '0000-00-00', 'Untuk kegunaan waktu malam.', '', '', '', '0000-00-00', '00:00:00.000000', '0000-00-00', '', '0000-00-00', '', '0000-00-00', '00:00:00.000000', 'Pending'),
(39, 'Muhammad Al-Amir Bin Amran', '.', 'Bekalan Eletrik ABM Wilayah Tengah', '2024-08-02', '11:50:00.0000', 'Persekitaran tidak bersih dan banyak daun.', '', '2024-08-02', 'Perlu bersihkan di kawasan tersebut.', '.', '', '.', '2024-08-02', '00:00:00.000000', '0000-00-00', '.', '2024-08-02', '.', '2024-08-02', '00:00:00.000000', 'Pending'),
(40, 'Muhammad Al-Amir Bin Amran', '.', 'Hostel Perempuan', '2024-08-09', '11:27:00.0000', 'Paip bocor', '', '2024-08-09', 'Menyebabkan lantai basah.', '.', '', '.', '2024-08-09', '00:00:00.000000', '0000-00-00', '.', '2024-08-09', '.', '2024-08-09', '00:00:00.000000', 'Pending'),
(41, 'Muhammad Al-Amir Bin Amran', '.', 'Singki Pejabat Utama', '2024-08-12', '21:26:00.0000', 'Singki tersumbat', '', '2024-08-12', 'Untuk kegunaan membasuh tangan dan pinggan.', '.', '', '.', '2024-08-12', '00:00:00.000000', '0000-00-00', '.', '2024-08-12', '.', '2024-08-12', '00:00:00.000000', 'Pending'),
(42, 'Muhammad Al-Amir Bin Amran', '.', 'Bilik Mini Teater', '2024-08-12', '12:32:00.0000', 'Kerusi rosak.', '', '2024-08-12', 'Untuk tempat duduk', '.', '', '.', '2024-08-12', '00:00:00.000000', '0000-00-00', '.', '2024-08-12', '.', '2024-08-12', '00:00:00.000000', 'Pending'),
(43, 'Muhammad Al-Amir Bin Amran', '.', 'Bilik Mesyuarat Pejabat Utama', '2024-08-13', '09:25:00.0000', 'Papan hiasan pada dinding tercabut.', '', '2024-08-13', '.', '.', '', '.', '2024-08-13', '00:00:00.000000', '0000-00-00', '.', '2024-08-13', '.', '2024-08-13', '00:00:00.000000', 'Pending'),
(44, 'Muhammad Al-Amir Bin Amran', '.', 'Pejabat ABM Wilayah Tengah', '2024-08-13', '09:22:00.0000', 'Penghawa dingin rosak dan tidak bersih.', '', '2024-08-13', 'Pejabat tidak sejuk.', '.', '', '.', '2024-08-13', '00:00:00.000000', '0000-00-00', '.', '0001-01-01', '.', '0001-01-01', '00:00:00.000000', 'Pending'),
(45, 'Muhammad Al-Amir Bin Amran', '.', 'Stor Pejabat  Bengkel Bom', '2024-08-13', '12:17:00.0000', 'Lampu tidak menyala.', '', '0001-01-01', 'Untuk kelihatan cerah di stor.', '.', '', '.', '0001-01-01', '00:00:00.000000', '0000-00-00', '.', '0001-01-01', '.', '0001-01-01', '00:00:00.000000', 'Pending'),
(46, 'Muhammad Al-Amir Bin Amran', '.', 'Lampu di hallway ke tandas', '2024-08-15', '11:28:00.0000', 'Salah satu lampu berkelip-kelip', '', '0001-01-01', 'Menyebabkan sakit mata.', '.', '', '.', '0001-01-01', '00:00:00.000000', '0000-00-00', '.', '0001-01-01', '.', '0001-01-01', '00:00:00.000000', 'Pending'),
(47, 'Al-Amir', 'it', 'bangunan it', '2024-10-01', '16:27:00.0000', 'komputer rosak', '', '2024-10-02', 'kkk', 'sesiapa', '', 'maintenance', '2024-10-01', '16:27:00.000000', '2024-10-01', '.', '2024-10-02', '.', '2024-10-01', '16:28:00.000000', 'Not Approved'),
(49, '.', '.', '.', '2024-10-01', '16:44:00.0000', '.', '', '2024-10-01', '.', '.', '', '.', '2024-10-01', '16:44:00.000000', '0000-00-00', '.', '2024-10-01', '.', '2024-10-01', '16:44:00.000000', 'Not Approved'),
(50, 'Amir', 'IT', 'Office Bengkel BOM', '2024-10-09', '10:44:00.0000', 'Barang rosak', '', '2024-10-09', 'perlu baiki', '.', '', '.', '0001-01-01', '10:45:00.000000', '0000-00-00', '.', '0001-01-01', '.', '0001-01-01', '00:00:00.000000', 'Approved'),
(51, 'U', '.', '.', '2024-11-08', '09:47:00.0000', '.', '', '2024-11-08', '.', '.', '', '.', '2024-11-08', '09:47:00.000000', '0000-00-00', '.', '2024-11-08', '.', '2024-11-08', '09:48:00.000000', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `borangbupadf`
--

CREATE TABLE `borangbupadf` (
  `id` int(11) NOT NULL,
  `laporan_oleh` varchar(255) NOT NULL,
  `tarikh` date NOT NULL,
  `hari` varchar(11) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `tajuk` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `gambar2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borangbupadf`
--

INSERT INTO `borangbupadf` (`id`, `laporan_oleh`, `tarikh`, `hari`, `lokasi`, `tajuk`, `gambar`, `gambar2`) VALUES
(16, 'CIKGU SITI ', '2024-07-08', 'Isnin', 'Tandas Pelatih Perempuan', 'Membaik pulih tandas pelatih perempuan.', 'WhatsApp Image 2024-07-22 at 11.01.17.jpeg,WhatsApp Image 2024-07-22 at 11.01.16.jpeg', ''),
(17, 'PUAN ZETY ', '2024-07-11', 'Khamis', 'Pejabat ABM', 'Membaik pulih lampu yang rosak di Pejabat ABM.', 'WhatsApp_Image_2024-10-14_at_01.03.23_1728869673.jpeg,WhatsApp_Image_2024-07-22_at_11.01.18__1___1__1728869673.jpeg', ''),
(18, 'cidb holdding', '2024-07-16', 'Selasa', 'Bilik Simulator', 'Melakukan kerja mengecat di Bilik Simulator.', 'WhatsApp Image 2024-07-16 at 14.34.47.jpeg,WhatsApp Image 2024-07-16 at 11.38.19.jpeg', ''),
(20, 'CIKGU SITI ', '2024-07-16', 'Selasa', 'Tingkat 2 Bengkel BOM Bilik Tong Air', 'Membaik pulih kabel internet dan memasang Wi-Fi baharu.', 'WhatsApp Image 2024-07-16 at 11.58.52.jpeg,WhatsApp Image 2024-07-17 at 12.01.04.jpeg', ''),
(22, 'CIKGU SUHAIMI', '2024-07-17', 'Rabu', 'Bengkel Drafting', 'Membaik pulih tiler tangga yang pecah.', 'WhatsApp Image 2024-07-17 at 11.58.08.jpeg,WhatsApp Image 2024-07-17 at 09.09.18.jpeg,WhatsApp Image 2024-07-17 at 08.13.21.jpeg', ''),
(23, 'CIKGU SITI', '2024-07-17', 'Rabu', 'Luar pejabat Bengkel BOM', 'Memasang Wi-Fi baru di luar pejabat Bengkel BOM.', 'WhatsApp Image 2024-07-17 at 12.01.05.jpeg', ''),
(24, 'CIKGU SUHAIMI', '2024-07-17', 'Rabu', 'Drafting kelas ABM', 'Siling hampir tercabut dan lampu rosak.', 'WhatsApp Image 2024-07-17 at 12.13.51.jpeg,WhatsApp Image 2024-07-17 at 12.14.40 (1).jpeg,WhatsApp Image 2024-07-17 at 12.14.40.jpeg', ''),
(25, 'cidb holdding', '2024-07-17', 'Rabu', 'Bilik Simulator', 'Membuat kerja persiapan di Bilik Simulator.', 'WhatsApp Image 2024-07-17 at 17.33.18.jpeg,WhatsApp Image 2024-07-17 at 17.19.07.jpeg', ''),
(27, 'PUAN EMA ', '2024-07-18', 'Khamis', 'Pejabatt ABM ', 'Membaiki meja Puan Ema dan sudah siap dibaiki.', 'WhatsApp Image 2024-07-18 at 10.08.38.jpeg,WhatsApp Image 2024-07-18 at 10.30.33.jpeg', ''),
(28, 'cidb holdding', '2024-07-18', 'Khamis', 'Bilik Simulator', 'Membuat persiapan di bilik Simulator (Memasang saluran kabel,kabel,besi dan tembok penghadang.)', 'WhatsApp Image 2024-07-18 at 19.16.10.jpeg,WhatsApp Image 2024-07-18 at 19.16.03.jpeg,WhatsApp Image 2024-07-18 at 19.15.48.jpeg,WhatsApp Image 2024-07-18 at 16.11.01.jpeg,WhatsApp Image 2024-07-18 at 16.11.00.jpeg,WhatsApp Image 2024-07-18 at 13.02.20.jpeg', ''),
(29, 'Muhammad Al-Amir', '2024-07-19', 'Jumaat', 'Asrama lelaki luar dan dalam', 'Gotong-royong membersihkan kawasan asrama lelaki luar dan dalam.', 'WhatsApp Image 2024-07-19 at 16.02.09 (1).jpeg,WhatsApp Image 2024-07-19 at 16.02.09.jpeg,WhatsApp Image 2024-07-19 at 16.02.08.jpeg', ''),
(31, 'Muhammad Al-Amir', '2024-07-22', 'Isnin', 'ABM Wilayah Tengah', 'Meletakkan Fire Extinguisher di setiap tempat ABM.', 'WhatsApp Image 2024-07-22 at 11.16.32 (1).jpeg,WhatsApp Image 2024-07-22 at 11.16.32.jpeg,WhatsApp Image 2024-07-22 at 11.16.31 (1).jpeg,WhatsApp Image 2024-07-22 at 11.16.31.jpeg,WhatsApp Image 2024-07-22 at 11.16.30 (1).jpeg,WhatsApp Image 2024-07-22 at 11.16.30.jpeg', ''),
(34, 'Muhammad Al-Amir', '2024-07-23', 'Selasa', 'Asrama atas kedai tayar', 'Memasang tempat sidai baju untuk pelajar di asrama.', 'WhatsApp Image 2024-07-23 at 16.00.54 (1).jpeg,WhatsApp Image 2024-07-23 at 16.00.54.jpeg,WhatsApp Image 2024-07-23 at 11.38.10.jpeg,WhatsApp Image 2024-07-23 at 11.30.42.jpeg,WhatsApp Image 2024-07-23 at 11.30.37.jpeg,WhatsApp Image 2024-07-23 at 11.29.02.jpeg', ''),
(36, 'Muhammad Al-Amir', '2024-07-24', 'Rabu', 'Bengkel wettrade', 'Tempat letak yang tercabut dan meninggalkan kesan.Kayu yang pecah.', 'WhatsApp Image 2024-07-24 at 15.01.55.jpeg,WhatsApp Image 2024-07-24 at 15.01.43.jpeg', ''),
(38, 'Muhammad Al-Amir', '2024-07-25', 'Khamis', 'Pintu longkang sekitar ABM.', 'Membaik pulih di pintu longkang.', 'WhatsApp Image 2024-07-25 at 11.25.00.jpeg,WhatsApp Image 2024-07-25 at 11.22.01.jpeg,WhatsApp Image 2024-07-25 at 11.13.24.jpeg,WhatsApp Image 2024-07-25 at 11.09.40.jpeg,WhatsApp Image 2024-07-25 at 11.09.31.jpeg', ''),
(39, 'Muhammad Al-Amir', '2024-07-26', 'Jumaat', 'Bilik Simulator', 'Melakukan kerja pemasangan di Bilik Simulator', 'WhatsApp Image 2024-07-26 at 16.58.48 (1).jpeg,WhatsApp Image 2024-07-26 at 16.58.48.jpeg,WhatsApp Image 2024-07-26 at 16.58.47.jpeg,WhatsApp Image 2024-07-26 at 16.58.46.jpeg,WhatsApp Image 2024-07-26 at 12.43.33.jpeg', ''),
(40, 'Muhammad Al-Amir', '2024-07-26', 'Jumaat', 'Hostel lelaki ABM', 'Melakukan kerja drilling dan kerja pemasangan.', 'WhatsApp Image 2024-07-26 at 17.09.42.jpeg,WhatsApp Image 2024-07-26 at 17.09.30.jpeg', ''),
(41, 'Muhammad Al-Amir', '2024-07-29', 'Isnin', 'Luar kawasan ABM', 'Membersihkan excavator kepunyaan ABM.', 'WhatsApp Image 2024-07-29 at 10.29.56.jpeg,WhatsApp Image 2024-07-29 at 10.29.44.jpeg,WhatsApp Image 2024-07-29 at 10.27.45.jpeg', ''),
(42, 'Muhammad Al-Amir', '2024-07-29', 'Isnin', 'Hostel ABM Homestay Permaisuri', 'Mengemaskan dan menukar cadar sarung bantal.', 'WhatsApp Image 2024-07-29 at 11.02.15.jpeg,WhatsApp Image 2024-07-29 at 10.56.04.jpeg', ''),
(43, 'Muhammad Al-Amir', '2024-07-29', 'Isnin', 'Asrama atas kedai tayar tingkat 2', 'Pelajar malakukan kerja mengemas.', 'WhatsApp Image 2024-07-29 at 12.37.37.jpeg,WhatsApp Image 2024-07-29 at 12.37.36 (1).jpeg,WhatsApp Image 2024-07-29 at 12.37.36.jpeg', ''),
(45, 'Muhammad Al-Amir', '2024-07-29', 'Isnin', 'Pintu masuk asrama lelaki', 'Pelajar melakukan kerja mengemas.', 'WhatsApp Image 2024-07-29 at 19.47.42.jpeg,WhatsApp Image 2024-07-29 at 19.47.41.jpeg', ''),
(48, 'Muhammad Al-Amir', '2024-07-30', 'Isnin', 'Luar pejabat ABM', 'Melakukan kerja pembersihan di luar pejabat ABM.', 'WhatsApp Image 2024-07-30 at 14.40.32.jpeg,WhatsApp Image 2024-07-30 at 14.40.29.jpeg', ''),
(49, 'Muhammad Al-Amir', '2024-07-31', 'Rabu', 'Bilik Simulator', 'Melakukan kerja pembersihan di dalam Bilik Simulator.', 'WhatsApp Image 2024-07-31 at 12.28.22.jpeg,WhatsApp Image 2024-07-31 at 12.28.21 (1).jpeg,WhatsApp Image 2024-07-31 at 12.28.21.jpeg,WhatsApp Image 2024-07-31 at 12.27.32.jpeg,WhatsApp Image 2024-07-31 at 11.33.18.jpeg', ''),
(51, 'Muhammad Al-Amir', '2024-07-31', 'Rabu', 'Luar pejabat ABM', 'Membaiki lampu solar yang bermasalah.', 'WhatsApp Image 2024-07-31 at 17.49.23.jpeg', ''),
(60, 'Muhammad Al-Amir', '2024-08-07', 'Rabu', 'Bilik Simulator', 'Mengecat,membersih dan membetulkan wayar di bilik Simulator.', 'WhatsApp Image 2024-08-08 at 14.38.55 (1).jpeg,WhatsApp Image 2024-08-08 at 14.38.55.jpeg,WhatsApp Image 2024-08-08 at 14.38.54 (2).jpeg,WhatsApp Image 2024-08-08 at 14.38.54 (1).jpeg,WhatsApp Image 2024-08-08 at 14.38.54.jpeg,WhatsApp Image 2024-08-08 at 14.38.52.jpeg', ''),
(61, 'Muhammad Al-Amir', '2024-08-08', 'Khamis', 'Bilik Simulator', 'Mengelap lantai dan memasang \"TV\" dan alat \"VR\" di bilik Simulator.', 'WhatsApp Image 2024-08-08 at 08.30.56.jpeg,WhatsApp Image 2024-08-08 at 09.37.18 (1).jpeg,WhatsApp Image 2024-08-08 at 08.30.56 (1).jpeg', ''),
(64, 'Muhammad Al-Amir', '2024-08-09', 'Jumaat', 'Bilik Simulator', 'Memasang \"TV\" dan alat \"VR\" di dalam bilik Simulator.', 'WhatsApp Image 2024-08-09 at 16.23.25.jpeg,WhatsApp Image 2024-08-09 at 16.23.24.jpeg,WhatsApp Image 2024-08-09 at 16.23.22.jpeg', ''),
(65, 'Muhammad Al-Amir', '2024-08-12', 'Isnin', 'Bilik Mini Teater', 'Membaik pulih kerusi di bilik Mini Teater.', 'WhatsApp Image 2024-08-12 at 12.33.24.jpeg,WhatsApp Image 2024-08-12 at 12.32.12 (1).jpeg,WhatsApp Image 2024-08-12 at 12.32.12.jpeg,WhatsApp Image 2024-08-12 at 12.32.11.jpeg', ''),
(66, 'Muhammad Al-Amir', '2024-08-13', 'Selasa', 'Pejabat ABM Wilayah Tengah', 'Membersihkan penghawa dingin di seluruh pejabat.', 'WhatsApp Image 2024-08-13 at 10.01.18.jpeg,WhatsApp Image 2024-08-13 at 10.15.13.jpeg,WhatsApp Image 2024-08-13 at 09.34.05.jpeg,WhatsApp Image 2024-08-13 at 09.26.30.jpeg,WhatsApp Image 2024-08-13 at 09.26.29 (1).jpeg,WhatsApp Image 2024-08-13 at 09.22.23.jpeg', ''),
(67, 'Muhammad Al-Amir', '2024-08-13', 'Selasa', 'Bilik \"Meeting\"', 'Meletakkan papan hiasan yang tercabut pada dinding dengan melekatkan gam.', 'WhatsApp Image 2024-08-13 at 09.25.17.jpeg,WhatsApp Image 2024-08-13 at 09.25.18.jpeg', ''),
(68, 'Muhammad Al-Amir', '2024-08-13', 'Selasa', 'Kawasan parkir staf ABM Wilayah Tengah', 'Mengalihkan motor yang diletak oleh pelajar di bahagian parkir yang salah.', 'WhatsApp Image 2024-08-13 at 11.58.58 (1).jpeg,WhatsApp Image 2024-08-13 at 11.58.59 (1).jpeg,WhatsApp Image 2024-08-13 at 10.50.29.jpeg', ''),
(69, 'Muhammad Al-Amir', '2024-08-13', 'Selasa', 'Setiap Kawasan ABM Wilayah Tengah', 'Memasang bendera Malaysia dan lain-lain di setiap Kawasan ABM Wilayah Tengah.', 'WhatsApp Image 2024-08-13 at 22.12.56 (1).jpeg,WhatsApp Image 2024-08-13 at 22.12.56.jpeg,WhatsApp Image 2024-08-13 at 18.01.36 (1).jpeg,WhatsApp Image 2024-08-13 at 18.01.36.jpeg,WhatsApp Image 2024-08-13 at 18.01.35.jpeg,WhatsApp Image 2024-08-13 at 16.48.37 (1).jpeg', ''),
(70, 'Muhammad Al-Amir', '2024-08-15', 'Khamis', 'Lampu di \"Hallway\" ke Tandas', 'Menukar salah satu lampu yang berkelip.', 'WhatsApp Image 2024-08-15 at 09.54.14.jpeg,WhatsApp Image 2024-08-15 at 09.54.02.jpeg', ''),
(72, 'Muhammad Al-Amir', '2024-08-15', 'Khamis', 'Bilik Simulator', 'Memasang dan membetulkan kabel “Ethernet” di bilik Simulator.', 'WhatsApp Image 2024-08-16 at 08.59.49.jpeg,WhatsApp Image 2024-08-16 at 08.56.56 (1).jpeg,WhatsApp Image 2024-08-16 at 08.56.56.jpeg,WhatsApp Image 2024-08-15 at 11.32.13.jpeg,WhatsApp Image 2024-08-15 at 11.32.12.jpeg,WhatsApp Image 2024-08-15 at 11.32.11.jpeg', ''),
(73, 'Muhammad Al-Amir', '2024-08-19', 'Isnin', 'Bilik Simulator', 'Membersihkan dan menyusun meja di bilik Simulator.', 'WhatsApp Image 2024-08-19 at 15.19.22.jpeg,WhatsApp Image 2024-08-19 at 15.19.07.jpeg,WhatsApp Image 2024-08-19 at 15.14.51.jpeg,WhatsApp Image 2024-08-19 at 14.59.16.jpeg,WhatsApp Image 2024-08-19 at 14.59.14.jpeg', ''),
(74, 'Muhammad Al-Amir', '2024-08-20', 'Selasa', 'Bengkel “Aircond” Cikgu Din', 'Memasang papan tanda “Akademi Binaan Malaysia” yang Baharu.', 'WhatsApp Image 2024-08-20 at 12.26.27.jpeg,WhatsApp Image 2024-08-20 at 12.25.50.jpeg,WhatsApp Image 2024-08-20 at 12.25.48.jpeg,WhatsApp Image 2024-08-20 at 12.24.55.jpeg,WhatsApp Image 2024-08-20 at 12.24.52.jpeg', ''),
(75, 'Muhammad Al-Amir', '2024-08-20', 'Selasa', 'Luar Pejabat Utama ABM', 'Mengecat pada bahagian simen batu.', 'WhatsApp Image 2024-08-20 at 14.56.14.jpeg,WhatsApp Image 2024-08-20 at 14.49.17.jpeg,WhatsApp Image 2024-08-20 at 14.49.16.jpeg', ''),
(76, 'Muhammad Al-Amir', '2024-08-21', 'Rabu', 'Bilik Simulator', 'Mengecat warna putih di Bilik Simulator.', 'WhatsApp Image 2024-08-21 at 18.47.28.jpeg,WhatsApp Image 2024-08-21 at 18.47.41 (1).jpeg,WhatsApp Image 2024-08-21 at 18.47.41.jpeg', ''),
(77, 'Muhammad Al-Amir', '2024-08-22', 'Khamis', 'Bilik “Meeting” di Pejabat Utama ABM.', 'Membaik pulih meja di bilik “Meeting”.', 'WhatsApp Image 2024-08-22 at 17.46.45.jpeg,WhatsApp Image 2024-08-22 at 17.46.44.jpeg,WhatsApp Image 2024-08-22 at 17.46.41.jpeg', ''),
(78, 'Muhammad Al-Amir', '2024-08-22', 'Jumaat', 'Bilik Simulator', 'Memasang langsir di bilik Simulator.', 'WhatsApp Image 2024-08-23 at 10.53.21.jpeg,WhatsApp Image 2024-08-23 at 10.53.03.jpeg', ''),
(79, 'Muhammad Al-Amir', '2024-08-26', 'Isnin', 'Bilik Simulator', 'Mengecat warna putih dan memasang alatan “Network”.', 'WhatsApp Image 2024-08-26 at 10.14.20.jpeg,WhatsApp Image 2024-08-26 at 09.54.22.jpeg', ''),
(80, 'Muhammad Al-Amir', '2024-08-28', 'Rabu', 'Bengkel ABM', 'Membaiki kebocoran pada atap.', 'WhatsApp Image 2024-08-28 at 12.40.32 (1).jpeg,WhatsApp Image 2024-08-28 at 12.40.32.jpeg,WhatsApp Image 2024-08-28 at 12.40.31 (1).jpeg,WhatsApp Image 2024-08-28 at 12.40.31.jpeg,WhatsApp Image 2024-08-28 at 11.50.33.jpeg', ''),
(81, 'Muhammad Al-Amir', '2024-08-28', 'Rabu', 'Bengkel Scafolding', 'Membaik pulih “Exhaust Duct”.', 'WhatsApp Image 2024-09-02 at 09.00.19.jpeg,WhatsApp Image 2024-08-28 at 13.07.01.jpeg', ''),
(82, 'DR . ROZAIMI ', '2024-08-28', 'Rabu', 'Pondok Pengawal Keselamatan', 'Membaik pulih pagar yang rosak di Pondok Pengawal Keselamatan.', 'WhatsApp Image 2024-08-28 at 15.09.55.jpeg,WhatsApp Image 2024-08-28 at 15.09.17.jpeg', ''),
(83, 'Muhammad Al-Amir', '2024-08-29', 'Khamis', 'Bilik Simulator', 'Membaik pulih wayar eletrik di kotak suis eletrik.', 'WhatsApp Image 2024-08-29 at 13.40.29.jpeg,WhatsApp Image 2024-08-29 at 13.40.27.jpeg', ''),
(84, 'Muhammad Al-Amir', '2024-08-30', 'Jumaat', 'Kelas Jentera Berat', 'Membaik pulih penghawa dingin yang bocor.', 'WhatsApp Image 2024-08-30 at 10.46.55.jpeg,WhatsApp Image 2024-08-30 at 10.46.54.jpeg,WhatsApp Image 2024-08-30 at 12.28.32.jpeg,WhatsApp Image 2024-08-30 at 12.05.16.jpeg,WhatsApp Image 2024-08-30 at 11.37.50.jpeg', ''),
(87, 'cikgu shafie plumbing', '2024-07-01', 'Isnin', 'Kelas Plumbing', 'Membaik pulih pendingin hawa.', 'WhatsApp Image 2024-07-22 at 11.01.11 (1).jpeg,WhatsApp Image 2024-07-22 at 11.01.11.jpeg,WhatsApp Image 2024-07-22 at 11.01.10 (2).jpeg,WhatsApp Image 2024-07-22 at 11.01.10 (1).jpeg,WhatsApp Image 2024-07-22 at 11.01.10.jpeg,WhatsApp Image 2024-07-22 at 11.01.09.jpeg', ''),
(88, 'DR ROZAIMI KPO ABM', '2024-07-02', 'Selasa', 'Kawasan perkarangan \\\"parking\\\" kenderaan ABM', 'Membuat operasi menebang pokok.', 'WhatsApp Image 2024-07-22 at 11.01.13 (1).jpeg,WhatsApp Image 2024-07-22 at 11.01.13.jpeg', ''),
(89, 'NURUL RAIHAN ', '2024-07-02', 'Selasa', 'Pejabat Utama', 'Membaik pulih bekalan wayar yang terputus.', 'WhatsApp Image 2024-07-22 at 11.01.14.jpeg,WhatsApp Image 2024-07-22 at 11.01.13 (4).jpeg', ''),
(90, 'CIKGU SHAHRIZAL', '2024-07-02', 'Selasa', 'Kelas Drafting (Manual)', 'Membaik pulih pintu di kelas Drafting.', 'WhatsApp Image 2024-07-22 at 11.01.14 (2).jpeg,WhatsApp Image 2024-07-22 at 11.01.14 (1).jpeg', ''),
(93, 'Muhammad Al-Amir', '2024-09-03', 'Selasa', 'Bilik Pengurusan Kewangan Pejabat ABM', 'Mengganti almari yang rosak dengan almari baharu.', 'WhatsApp_Image_2024-09-02_at_16.03.54__1__1728896227.jpeg,WhatsApp_Image_2024-09-03_at_11.26.12__1__1728896227.jpeg,WhatsApp_Image_2024-09-03_at_11.08.34__1__1728896227.jpeg', ''),
(94, 'Muhammad Al-Amir', '2024-09-04', 'Rabu', 'Bilik Simulator', 'Memasang dan menulis no “tagging aircond” di Bilik Simulator. ', 'WhatsApp Image 2024-09-04 at 14.31.59 (1).jpeg,WhatsApp Image 2024-09-04 at 14.31.59.jpeg,WhatsApp Image 2024-09-04 at 14.31.58.jpeg,WhatsApp Image 2024-09-04 at 14.31.57 (1).jpeg', ''),
(95, 'Muhammad Al-Amir', '2024-09-06', 'Jumaat', 'Pejabat Utama ABM', 'Mengalihkan meja dan pintu yang rosak ke Bengkel BOM.', 'WhatsApp Image 2024-09-06 at 12.41.58.jpeg,WhatsApp_Image_2024-09-06_at_12.41.59__1__1728870855.jpeg', ''),
(96, 'Muhammad Al-Amir', '2024-09-09', 'Isnin', 'Kelas Jentera Berat', 'Membaik pulih aircond yang bocor di kelas Jentera Berat.', 'WhatsApp Image 2024-09-09 at 10.08.11.jpeg,WhatsApp Image 2024-09-09 at 10.10.03.jpeg,WhatsApp Image 2024-09-09 at 10.28.32.jpeg', ''),
(99, 'Muhammad Al-Amir', '2024-09-10', 'Selasa', 'Luar Pejabat Utama ABM', '.', 'WhatsApp Image 2024-09-10 at 11.26.07.jpeg,WhatsApp Image 2024-09-10 at 11.25.54.jpeg', ''),
(105, 'Muhammad Al-Amir', '2024-09-26', 'Khamis', 'Dewan Makan,Bilik Korporat,Bilik Syarahan dan Bilik Simulator di Pejabat Utama ABM', 'Memasang lampu baru pada lampu yang tidak berfungsi.', 'WhatsApp Image 2024-09-27 at 16.15.39.jpeg,WhatsApp Image 2024-09-27 at 16.15.40.jpeg,WhatsApp Image 2024-09-27 at 16.15.40 (1).jpeg,WhatsApp Image 2024-09-27 at 16.15.40 (2).jpeg', ''),
(107, 'Muhammad Al-Amir', '2024-09-09', 'Isnin ', 'Dewan Makan ABM', 'Kerja-kerja hacking di Dewan Makan ABM.', 'WhatsApp Image 2024-09-09 at 16.43.15.jpeg,WhatsApp Image 2024-09-09 at 16.43.14.jpeg', ''),
(110, 'Muhammad Al-Amir', '2024-09-30', 'Isnin', 'Lobi Utama Di Pejabat Utama', 'Membaik pulih transformer pada kotak bekalan suis aircond.', 'WhatsApp Image 2024-09-30 at 10.50.48.jpeg,WhatsApp Image 2024-09-30 at 16.17.42.jpeg', ''),
(111, 'Muhammad Al-Amir', '2024-10-01', 'Selasa', 'Tandas Lelaki di Pejabat Utama', 'Membaik pulih kerosakan yang ada di Tandas Lelaki di Pejabat Utama ABM.', 'WhatsApp_Image_2024-10-02_at_11.02.40_1728895810.jpeg,WhatsApp_Image_2024-10-02_at_11.02.41_1728895810.jpeg,WhatsApp_Image_2024-10-02_at_11.03.04_1728895810.jpeg,WhatsApp_Image_2024-10-02_at_11.03.04__1__1728895810.jpeg,WhatsApp_Image_2024-10-02_at_11.03.05_1728895810.jpeg,WhatsApp_Image_2024-10-02_at_11.03.06_1728895810.jpeg', ''),
(112, 'Muhammad Al-Amir', '2024-10-02', 'Rabu', 'Bumbung di Pejabat Utama ABM', 'Menutup kebocoran yang terdapat di atas bumbung Pejabat Utama ABM.', 'WhatsApp_Image_2024-10-02_at_11.07.21_1728895964.jpeg,WhatsApp_Image_2024-10-02_at_11.58.42_1728895964.jpeg,WhatsApp_Image_2024-10-02_at_11.22.24_1728895964.jpeg,WhatsApp_Image_2024-10-02_at_11.22.25_1728895964.jpeg,WhatsApp_Image_2024-10-02_at_11.22.25__1__1728895964.jpeg,WhatsApp_Image_2024-10-02_at_11.22.26_1728895964.jpeg', ''),
(113, 'Muhammad Al-Amir', '2024-10-02', 'Rabu', '.', 'Memasang no “tagging” pada kipas yang baru.', 'WhatsApp_Image_2024-10-01_at_11.37.22_1728896030.jpeg,WhatsApp_Image_2024-10-01_at_13.18.24_1728896030.jpeg,WhatsApp_Image_2024-10-02_at_11.58.42__2__1728896030.jpeg', ''),
(114, 'Muhammad Al-Amir', '2024-10-02', 'Rabu', 'Bilik Dr.Rozaimi ', 'Memasang gambar hiasan pada dinding di bilik Dr.Rozaimi.', 'WhatsApp Image 2024-10-02 at 12.09.10.jpeg,WhatsApp Image 2024-10-02 at 12.09.33.jpeg', ''),
(115, 'Muhammad Al-Amir', '2024-10-04', 'Jumaat', 'Kelas Cikgu Khatim', 'Membaik pulih aircond yang kurang sejuk di kelas Cikgu Khatim.', 'WhatsApp_Image_2024-10-04_at_11.30.16_1728896156.jpeg,WhatsApp_Image_2024-10-04_at_13.16.43_1728896156.jpeg,WhatsApp_Image_2024-10-04_at_13.16.43__1__1728896156.jpeg,WhatsApp_Image_2024-10-04_at_13.16.43__2__1728896156.jpeg,WhatsApp_Image_2024-10-04_at_12.58.07_1728896156.jpeg,WhatsApp_Image_2024-10-04_at_12.58.12_1728896156.jpeg', ''),
(116, '.', '2024-10-08', 'Selasa', 'Atas Bumbung Pejabat Utama', 'Menutup kebocoran yang terdapat di atas bumbung Pejabat Utama ABM.', 'WhatsApp Image 2024-10-08 at 11.43.53.jpeg,WhatsApp_Image_2024-10-08_at_12.15.55_1729154316.jpeg,WhatsApp_Image_2024-10-08_at_12.15.56_1729154316.jpeg,WhatsApp_Image_2024-10-08_at_12.15.58_1729154316.jpeg,WhatsApp_Image_2024-10-08_at_12.39.51_1729154316.jpeg,WhatsApp_Image_2024-10-08_at_12.39.53_1729154316.jpeg', ''),
(117, '.', '2024-10-11', 'Jumaat', 'Tempat Landskap', 'Memasang karpet rumput pada dinding di tempat Landskap.', 'WhatsApp Image 2024-10-11 at 10.39.49.jpeg,WhatsApp Image 2024-10-11 at 10.39.50.jpeg', ''),
(118, '.', '2024-10-16', 'Rabu', 'Bilik Meeting', 'Membaik pulih wayar-wayar yang rosak di bilik Meeting.', 'WhatsApp Image 2024-10-16 at 09.38.40.jpeg,WhatsApp_Image_2024-10-16_at_09.38.42_1729562103.jpeg,WhatsApp_Image_2024-10-16_at_09.41.08_1729562103.jpeg', ''),
(119, '.', '2024-10-16', 'Rabu', 'Luar Pejabat Utama ABM', 'Membaik pulih pagar yang berlubang di luar Pejabat Utama ABM.', 'WhatsApp Image 2024-10-16 at 14.49.36.jpeg,WhatsApp Image 2024-10-16 at 14.49.35.jpeg', ''),
(120, '.', '2024-10-17', 'Khamis', 'Atas Bumbung Kelas Cikgu Haizem', 'Menampal kebocoran yang terdapat di atas bumbung kelas Cikgu Haizem.', 'WhatsApp Image 2024-10-17 at 15.11.12.jpeg,WhatsApp_Image_2024-10-17_at_15.11.21_1729564571.jpeg', ''),
(121, '.', '2024-10-17', 'Khamis', 'Atas Bumbung Kelas Cikgu Din', 'Menutup bahagian skru yang hilang dengan gam di atas bumbung kelas Cikgu Din.', 'WhatsApp Image 2024-10-17 at 16.12.11.jpeg,WhatsApp Image 2024-10-17 at 16.12.11 (1).jpeg', ''),
(122, '.', '2024-10-22', 'Selasa', 'Tandas Pelatih Lelaki 2', 'Membaik pulih jubin yang pecah di singki dan meletkkan cermin pada dinding di bahagian singki.', 'WhatsApp Image 2024-10-22 at 11.58.50.jpeg,WhatsApp_Image_2024-10-22_at_13.04.59_1730083084.jpeg,WhatsApp_Image_2024-10-22_at_13.05.01_1730083084.jpeg,WhatsApp_Image_2024-10-22_at_13.10.13_1730083084.jpeg,WhatsApp_Image_2024-10-22_at_11.25.11_1730083084.jpeg,WhatsApp_Image_2024-10-22_at_16.57.59_1730083084.jpeg', ''),
(123, '', '2024-11-01', 'Jumaat', 'Bilik Mesyuarat', 'Memasang gambar Yang Di-Pertuan Agong, Raja Permaisuri Agong, dan Perdana Menteri pada dinding di Bilik Mesyuarat.', 'WhatsApp Image 2024-11-01 at 16.31.07.jpeg,WhatsApp_Image_2024-11-01_at_17.42.51_1731289436.jpeg,WhatsApp_Image_2024-11-01_at_17.42.51__1__1731289436.jpeg', ''),
(124, '.', '2024-10-24', 'Khamis', 'Tempat Landskap', 'Merapatkan karpet rumput ke bawah bahagian zink di tempat Landskap.', 'WhatsApp_Image_2024-10-24_at_17.05.47__1__1731289726.jpeg,WhatsApp_Image_2024-10-24_at_17.05.48__2__1731289726.jpeg,WhatsApp_Image_2024-10-24_at_17.05.48__3__1731289726.jpeg,WhatsApp_Image_2024-10-24_at_17.05.49__2__1731289726.jpeg,WhatsApp_Image_2024-10-24_at_17.05.49__3__1731289726.jpeg', ''),
(125, '.', '2024-10-28', 'Isnin', 'Kelas PW2', 'Memasang kayu pada bahagian cermin pintu di kelas PW2.', 'WhatsApp_Image_2024-10-25_at_15.53.15_1731289808.jpeg,WhatsApp_Image_2024-10-28_at_11.40.59_1731289808.jpeg,WhatsApp_Image_2024-10-28_at_11.48.04_1731289808.jpeg,WhatsApp_Image_2024-10-28_at_11.48.18_1731289808.jpeg', ''),
(126, '.', '2024-10-29', 'Selasa', 'Tempat Landskap', 'Memasang karpet rumput pada dinding di tempat Landskap.', 'WhatsApp_Image_2024-10-29_at_15.05.26_1731289880.jpeg,WhatsApp_Image_2024-10-29_at_15.35.43_1731289880.jpeg,WhatsApp_Image_2024-10-29_at_15.35.44_1731289880.jpeg,WhatsApp_Image_2024-10-30_at_14.49.19_1731289880.jpeg', ''),
(127, '.', '2024-11-06', 'Rabu', 'Pejabat Utama ABM', 'Menukar lampu kalimantang yang rosak kepada lampu kalimantang yang baru di Pejabat Utama ABM.', 'WhatsApp Image 2024-11-06 at 09.38.05.jpeg,WhatsApp_Image_2024-11-06_at_09.48.16_1731290608.jpeg', ''),
(128, '.', '2024-11-06', 'Rabu', 'Tandas VVIP', 'Menutup penutup exhaust fan di tandas VVIP.', 'WhatsApp Image 2024-11-06 at 09.55.50.jpeg,WhatsApp_Image_2024-11-06_at_09.57.17_1731290621.jpeg', ''),
(129, '.', '2024-11-07', 'Khamis', 'Blok Parking Motor', 'Membuang bumbung yang rosak dan membersihkan kawasan blok parking motor.', 'WhatsApp_Image_2024-11-06_at_17.49.59_1731294042.jpeg,WhatsApp_Image_2024-11-07_at_16.04.03_1731294042.jpeg,WhatsApp_Image_2024-11-07_at_16.04.04_1731294042.jpeg,WhatsApp_Image_2024-11-07_at_15.32.17_1731294042.jpeg', ''),
(135, '.', '2024-11-13', 'Rabu', 'Kelas Drafting ABM', 'Menukar lampu kalimantang yang rosak kepada lampu kalimantang yang baru di kelas Drafting ABM.', 'WhatsApp Image 2024-11-13 at 14.57.24.jpeg,WhatsApp Image 2024-11-13 at 15.05.46.jpeg,WhatsApp Image 2024-11-13 at 15.18.35.jpeg', ''),
(136, '.', '2024-11-13', 'Rabu', 'Tandas Pelatih Lelaki ', 'Menukar siling yang rosak kepada siling yang baru di tandas pelatih lelaki.', 'WhatsApp_Image_2024-11-13_at_16.03.16_1731636870.jpeg,WhatsApp_Image_2024-11-13_at_16.03.16__1__1731636870.jpeg,WhatsApp_Image_2024-11-13_at_16.03.17_1731636870.jpeg', ''),
(139, '.', '2024-11-15', 'Jumaat', 'Blok Parking Motor ', 'Kerja-kerja pemasangan bumbung di blok parking motor.', 'WhatsApp Image 2024-11-15 at 12.51.19.jpeg,WhatsApp Image 2024-11-15 at 12.51.19 (1).jpeg,WhatsApp Image 2024-11-18 at 16.20.18.jpeg,WhatsApp Image 2024-11-15 at 20.37.15 (1).jpeg', ''),
(144, '', '2024-11-21', 'Khamis', 'Pejabat Utama ABM dan Bilik VVIP', 'Melakukan aktiviti fogging di Pejabat Utama ABM dan bilik VVIP.', 'WhatsApp Image 2024-11-21 at 09.50.36.jpeg,WhatsApp Image 2024-11-21 at 09.50.38.jpeg,WhatsApp Image 2024-11-21 at 09.50.40.jpeg', ''),
(146, '', '2024-11-26', 'Selasa', 'Dewan Makan ABM', 'Menukar lampu kalimantang yang rosak kepadda lampu kalimantang yang baru di Dewan Makan ABM.', 'Screenshot 2024-11-26 143810.png,WhatsApp Image 2024-11-26 at 10.08.59.jpeg,WhatsApp Image 2024-11-26 at 10.09.00.jpeg', '');

-- --------------------------------------------------------

--
-- Table structure for table `borangcadanganpembaikan`
--

CREATE TABLE `borangcadanganpembaikan` (
  `id` int(11) NOT NULL,
  `CPO` varchar(255) NOT NULL,
  `tarikh1` date NOT NULL,
  `CP` varchar(255) NOT NULL,
  `t_tangan` text NOT NULL,
  `tarikh_tandatangan` date NOT NULL,
  `status` enum('Pending','Approved','Not Approved') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borangcadanganpembaikan`
--

INSERT INTO `borangcadanganpembaikan` (`id`, `CPO`, `tarikh1`, `CP`, `t_tangan`, `tarikh_tandatangan`, `status`) VALUES
(2, 'Cik Obai,Cik Nizam,Cik Adi,Cik Irfan,Nabil dan Amir', '2024-07-16', 'Dinding sudah dicat warna putih dan kelihatan lebih sesuai.', '', '0000-00-00', 'Pending'),
(3, 'Cik Nizam', '2024-07-16', '-Wiring dan sistem forbic sahaja baru di baik pulih.\r\n-Kerosakan yang lain perlu dibaiki.', '', '0000-00-00', 'Pending'),
(4, 'Cik Nizam,Cik Obai ', '2024-07-16', 'Kabel internet di bilik tong air sudah di baik pulih.', '', '0000-00-00', 'Pending'),
(5, 'Cik Obai', '2024-07-17', 'Wi-Fi di bilik tong air sudah siap dipasang.', '', '0000-00-00', 'Pending'),
(6, 'Cik Obai,Cik Nizam,Cik Adi,Cik Irfan', '2024-07-17', 'Tiler di tangga sudah di baik pulih.', '', '0000-00-00', 'Pending'),
(7, 'Cik Nizam', '2024-07-16', 'Membaik pulih van yang rosak.', '', '0000-00-00', 'Pending'),
(8, 'Cik Obai,Cik Nizam,Cik Irfan,Cik Adi', '2024-07-17', 'Wi-Fi di luar pejabat Bengkel BOM sudah dipasang.', '', '0000-00-00', 'Pending'),
(9, 'Cik Obai,Cik Nizam', '2024-07-17', '-Perlu memasang siling yang baru pada siling yang rosak.\r\n-Perlu memasang lampu yang baru pada lampu yang tidak menyala.', '', '0000-00-00', 'Pending'),
(10, 'Cik Obai,Cik Nizam', '2024-07-17', 'Memasang wayar yang baru pada kedudukan yang lebih baik.', '', '0000-00-00', 'Pending'),
(11, 'Cik Obai', '2024-07-17', 'Perlu mengalihkan tong dawai dari laluan kereta staf CIDB Tech.', '', '0000-00-00', 'Pending'),
(12, 'Nabil', '2024-07-18', 'Rak di meja Puan Ema sudah di baik pulih.', '', '0000-00-00', 'Pending'),
(13, 'Cik Nizam,Cik Obai', '2024-07-18', 'Memasang saluran kabel internet yang baru.', '', '0000-00-00', 'Pending'),
(14, 'Cik Obai,Cik Nizam,Cik Adi,Cik Irfan,Nabil ', '2024-07-18', '-Saluran kabel internet baru perlu dipasang.\r\n-Menggunakan kabel baru.\r\n-Memasang tembok penghadang.', '', '0000-00-00', 'Pending'),
(15, 'Cik Nizam,Cik Irfan', '2024-07-19', 'Pelajar lelaki sudah membersihkan persekitaran luar dan dalam asrama lelaki', '', '0000-00-00', 'Pending'),
(16, 'Cik Nizam', '2024-07-19', 'Kereta Nissan X-Trail perlu dibaiki.', '', '0000-00-00', 'Pending'),
(17, 'Cik Nizam,Cik Obai,Cik Irfan', '2024-07-22', 'Fire Extinguisher sudah ada di setiap ABM Wilayah Tengah.', '', '0000-00-00', 'Pending'),
(18, 'Cik Obai', '2024-07-23', 'Perlu membaik pulih tandas di Bengkel BOM.', '', '0000-00-00', 'Pending'),
(19, 'Cik Nizam,Cik Irfan,Cik Adi', '2024-07-23', 'Tempat sidai pakaian untuk pelajar sudah dipasang.', '', '0000-00-00', 'Pending'),
(20, 'Cik Nizam', '2024-07-31', 'Sedang dibaikpulih oleh pekerja di Pusat Servis Kereta.', '', '0000-00-00', 'Pending'),
(21, 'Cik Nizam,Cik Irfan,Nabil', '2024-07-31', 'Sedang dibaikpulih', '', '0000-00-00', 'Pending'),
(22, 'Cik Nizam,Cik Irfan,Nabil', '2024-07-31', 'Sedang dibaikpulih', '', '0000-00-00', 'Pending'),
(23, 'Cik Nizam', '2024-07-31', 'Membaiki lampu solar yang bermasalah.', '', '0000-00-00', 'Pending'),
(24, 'Cik Nizam,Cik Irfan', '2024-08-02', 'Kawasan di bekalan eletrik sudah dibersihkan.', '', '0000-00-00', 'Pending'),
(25, 'Cik Obai,Cik Adi,Cik Irfan,Nabil', '2024-08-09', 'Perlu membaik pulih paip yang bocor', '', '0000-00-00', 'Pending'),
(26, 'Cik Obai,Cik Irfan', '2024-08-12', 'Singki sudah di baik pulih', '', '0000-00-00', 'Pending'),
(27, 'Cik Obai,Cik Irfan,Nabil', '2024-08-12', 'Kerusi perlu di baik pulih.', '', '0000-00-00', 'Pending'),
(28, 'Cik Obai,Cik Nizam,Cik Irfan,Nabil', '2024-08-13', 'Papan hiasan pada dinding sudah di baik pulih.', '', '0000-00-00', 'Pending'),
(29, 'Penghawa dingin sudah di baik pulih dan dibersihkan.', '2024-08-13', 'Penghawa dingin sudah di baik pulih dan dibersihkan.', '', '0000-00-00', 'Pending'),
(30, 'Cik Obai,Cik Nizam', '2024-08-13', 'Lampu sudah siap dipasang.', '', '0000-00-00', 'Pending'),
(31, 'Cik Obai,Cik Irfan,Nabil', '2024-08-15', 'Lampu yang berkeli-kelip sudah ditukar', '', '0000-00-00', 'Pending'),
(32, 'Cik Obai,Nabil', '2024-08-16', 'Perlu membaik pulih pagar.', '', '0000-00-00', 'Pending'),
(33, 'Amir', '2024-10-04', 'Sudah baikpulih', '', '0000-00-00', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `boranglaporantukangcuci`
--

CREATE TABLE `boranglaporantukangcuci` (
  `id` int(11) NOT NULL,
  `laporan_oleh` varchar(255) NOT NULL,
  `bulan` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `skop_kerja` varchar(255) NOT NULL,
  `bila` enum('Harian','Mingguan','Bulanan','Tahunan') NOT NULL,
  `daily` text DEFAULT NULL,
  `weekly` text DEFAULT NULL,
  `monthly` text DEFAULT NULL,
  `yearly` text DEFAULT NULL,
  `status` enum('Pending','Approved','Not Approved') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `boranglaporantukangcuci`
--

INSERT INTO `boranglaporantukangcuci` (`id`, `laporan_oleh`, `bulan`, `lokasi`, `skop_kerja`, `bila`, `daily`, `weekly`, `monthly`, `yearly`, `status`) VALUES
(2, 'Amir', 'Oktober', 'LANDSKAP', 'Mengutip sampah & mengosongkan tong sampah', 'Harian', NULL, NULL, NULL, NULL, 'Pending'),
(3, 'Amir', 'Oktober', 'LANDSKAP', 'Menyapu, mengumpul dan membuang daun-daun kering, batu-batu, sampah (plastik, kertas, puntung rokok dan kayu)', 'Mingguan', NULL, NULL, NULL, NULL, 'Pending'),
(4, 'Amir', 'Oktober', 'LANDSKAP', 'Mengembur tanah,membaja dan memangkas daun kering', 'Mingguan', NULL, NULL, NULL, NULL, 'Pending'),
(5, 'Amir', 'Oktober', 'LANDSKAP', 'Menyiram pokok', 'Mingguan', NULL, NULL, NULL, NULL, 'Pending'),
(6, 'Amir', 'Oktober', 'PEMBERSIHAN LONGKANG', 'Menyapu, mengutip, mengumpul, membersih dan membuang sampah (plastik, kertas, puntung rokok, kayu dsbnya)', 'Mingguan', NULL, NULL, NULL, NULL, 'Pending'),
(7, 'Amir', 'Oktober', 'PEMBERSIHAN LONGKANG', 'Membersih,mencuci dan membuang tumbuhan atau algae(lumut)', 'Mingguan', NULL, NULL, NULL, NULL, 'Pending'),
(8, 'Amir', 'Oktober', 'PAPAN TANDA', 'Mengilap dan membersihkan', 'Mingguan', NULL, NULL, NULL, NULL, 'Pending'),
(9, 'Amir', 'Oktober', 'KAWALAN SERANGGA', 'Menyembur ubat lipas,semut dan anai-anai', 'Mingguan', NULL, NULL, NULL, NULL, 'Pending'),
(10, 'Amir', 'Oktober', 'SAMPAH', 'Pembuangan sampah domestik yang dibenarkan oleh Majlis Perbandaran', 'Mingguan', NULL, NULL, NULL, NULL, 'Pending'),
(11, 'Amir', 'Oktober', 'BANGUNAN', 'Mencuci cermin luar bangunan', 'Mingguan', NULL, NULL, NULL, NULL, 'Pending'),
(12, 'Amir', 'Oktober', 'LANDSKAP', 'Meracun rumput dan tumbuhan yang tidak diperlukan di keseluruhan kawasan longkang,pagar dan tepi jalan', 'Bulanan', NULL, NULL, NULL, NULL, 'Pending'),
(13, 'Amir', 'Oktober', 'PEMBERSIHAN LONGKANG', 'Membersih dan membuang tanah-tanah dan sebagainya', 'Bulanan', NULL, NULL, NULL, NULL, 'Pending'),
(14, 'Amir', 'Oktober', 'TEMPAT LETAK KERETA JALAN UTAMA LALUAN PEJALAN KAKI', 'Menyapu,mengumpul,membersih dan membuang sampah seperti plastik,kertas,puntung rokok,kayu,tin aluminium,kotak,botol dan bahan-bahan buangan', 'Bulanan', NULL, NULL, NULL, NULL, 'Pending'),
(15, 'Amir', 'Oktober', 'TEMPAT LETAK KERETA JALAN UTAMA LALUAN PEJALAN KAKI', 'Mengutip sampah dan mengosongkan tong sampah', 'Bulanan', NULL, NULL, NULL, NULL, 'Pending'),
(16, 'Amir', 'Oktober', 'SAMPAH', 'Pembuangan sampah industri di tempat yang dibenarkan oleh Majlis Perbandaran', 'Bulanan', NULL, NULL, NULL, NULL, 'Pending'),
(17, 'Amir', 'Oktober', 'BANGUNAN', 'Mengecat luar bangunan', 'Bulanan', NULL, NULL, NULL, NULL, 'Pending'),
(22, 'Amir', 'Januari', 'TEMPAT LETAK KERETA JALAN UTAMA LALUAN PEJALAN KAKI', 'Menyapu,mengumpul,membersih dan membuang sampah seperti plastik,kertas,puntung rokok,kayu,tin aluminium,kotak,botol dan bahan-bahan buangan', 'Harian', NULL, NULL, NULL, NULL, 'Pending'),
(23, 'Amir', 'Januari', 'BANGUNAN', 'Mencuci cermin luar bangunan', 'Harian', '{\"BANGUNAN\":{\"Mengecat luar bangunan\":\"on\"}}', '[]', '[]', '[]', 'Pending'),
(24, 'Amir', 'Januari', 'LANDSKAP', 'Menyapu, mengumpul dan membuang daun-daun kering, batu-batu, sampah (plastik, kertas, puntung rokok dan kayu)', 'Mingguan', NULL, NULL, NULL, NULL, 'Pending'),
(25, 'Amir', 'Januari', 'LANDSKAP', 'Mengembur tanah,membaja dan memangkas daun kering', 'Mingguan', NULL, NULL, NULL, NULL, 'Pending'),
(26, 'Amir', 'Januari', 'PEMBERSIHAN LONGKANG', 'Membersih,mencuci dan membuang tumbuhan atau algae(lumut)', 'Mingguan', NULL, NULL, NULL, NULL, 'Pending'),
(27, 'Amir', 'Januari', 'PAPAN TANDA', 'Mengilap dan membersihkan', 'Mingguan', '[]', '[]', '[]', '{\"BANGUNAN\":{\"Mencuci cermin luar bangunan\":\"on\"}}', 'Pending'),
(28, 'Amir', 'Januari', 'KAWALAN SERANGGA', 'Menyembur ubat lipas,semut dan anai-anai', 'Mingguan', NULL, NULL, NULL, NULL, 'Pending'),
(29, 'Amir', 'Januari', 'LANDSKAP', 'Meracun rumput dan tumbuhan yang tidak diperlukan di keseluruhan kawasan longkang,pagar dan tepi jalan', 'Bulanan', NULL, NULL, NULL, NULL, 'Pending'),
(30, 'Amir', 'Januari', 'LANDSKAP', 'Memotong rumput', 'Bulanan', NULL, NULL, NULL, NULL, 'Pending'),
(31, 'Amir', 'Januari', 'PEMBERSIHAN LONGKANG', 'Menyapu, mengutip, mengumpul, membersih dan membuang sampah (plastik, kertas, puntung rokok, kayu dsbnya)', 'Bulanan', NULL, NULL, NULL, NULL, 'Pending'),
(32, 'Amir', 'Januari', 'PEMBERSIHAN LONGKANG', 'Membersih dan membuang tanah-tanah dan sebagainya', 'Bulanan', NULL, NULL, NULL, NULL, 'Pending'),
(33, 'Amir', 'Januari', 'TEMPAT LETAK KERETA JALAN UTAMA LALUAN PEJALAN KAKI', 'Mengutip sampah dan mengosongkan tong sampah', 'Bulanan', NULL, NULL, NULL, NULL, 'Pending'),
(34, 'Amir', 'Januari', 'SAMPAH', 'Pembuangan sampah domestik yang dibenarkan oleh Majlis Perbandaran', 'Bulanan', NULL, NULL, NULL, NULL, 'Pending'),
(35, 'Amir', 'Januari', 'SAMPAH', 'Pembuangan sampah industri di tempat yang dibenarkan oleh Majlis Perbandaran', 'Bulanan', NULL, NULL, NULL, NULL, 'Pending'),
(36, 'Amir', 'Januari', 'BANGUNAN', 'Mengecat luar bangunan', 'Tahunan', '[]', '[]', '[]', '{\"SAMPAH\":{\"Pembuangan sampah industri di tempat yang dibenarkan oleh Majlis Perbandaran\":\"on\"}}', 'Pending'),
(37, 'Amir', 'Mac', 'LANDSKAP', 'Memtong, mengumpul dan membuang rumput, lalang dan tumbuhan yang tidak diperlukan', 'Harian', NULL, NULL, NULL, NULL, 'Pending'),
(38, 'Amir', 'Mac', 'LANDSKAP', 'Menyapu, mengumpul dan membuang daun-daun kering, batu-batu, sampah (plastik, kertas, puntung rokok dan kayu)', 'Mingguan', NULL, NULL, NULL, NULL, 'Pending'),
(39, 'Amir', 'Mac', 'LANDSKAP', 'Meracun rumput dan tumbuhan yang tidak diperlukan di keseluruhan kawasan longkang,pagar dan tepi jalan', 'Mingguan', NULL, NULL, NULL, NULL, 'Pending'),
(40, 'Amir', 'Mac', 'LANDSKAP', 'Mengutip sampah & mengosongkan tong sampah', 'Mingguan', NULL, NULL, NULL, NULL, 'Pending'),
(41, 'Amir', 'Mac', 'LANDSKAP', 'Memotong rumput', 'Bulanan', NULL, NULL, NULL, NULL, 'Pending'),
(42, 'Amir', 'Mac', 'LANDSKAP', 'Mengembur tanah,membaja dan memangkas daun kering', 'Tahunan', NULL, NULL, NULL, NULL, 'Pending'),
(43, 'Amir', 'Mac', 'LANDSKAP', 'Menyiram pokok', 'Tahunan', NULL, NULL, NULL, NULL, 'Pending'),
(44, 'Amir', 'Oktober', 'LANDSKAP', 'Menyiram pokok', 'Harian', NULL, NULL, NULL, NULL, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `borangpemantauandanpemeriksaan`
--

CREATE TABLE `borangpemantauandanpemeriksaan` (
  `id` int(11) NOT NULL,
  `laporan_oleh` varchar(255) NOT NULL,
  `bulan` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `skop_kerja` varchar(255) NOT NULL,
  `bila` int(20) NOT NULL,
  `daily_tasks` text DEFAULT NULL,
  `status` enum('Pending','Approved','Not Approved') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borangpemantauandanpemeriksaan`
--

INSERT INTO `borangpemantauandanpemeriksaan` (`id`, `laporan_oleh`, `bulan`, `lokasi`, `skop_kerja`, `bila`, `daily_tasks`, `status`) VALUES
(11, 'Amir', 'Februari', 'Blok 1 (Keseluruhan Pejabat Utama)', 'Membuang Sampah', 1, '{\"Blok 1 (Keseluruhan Pejabat Utama)\":{\"Menyapu & Vacuum\":{\"7\":\"1\"}}}', 'Approved'),
(12, 'Amir', 'Jun', 'Blok 1 (Keseluruhan Pejabat Utama)', 'Menyapu & Vacuum', 2, '{\"Blok 1 (Keseluruhan Pejabat Utama)\":{\"Membuang Sampah\":{\"13\":\"1\"}}}', 'Pending'),
(13, 'Amir', 'Februari', 'Blok 1 (Keseluruhan Pejabat Utama)', 'Mengelap Perkakasan', 3, '{\"Blok 1 (Keseluruhan Pejabat Utama)\":{\"Mengelap Perkakasan\":{\"5\":\"1\",\"6\":\"1\",\"7\":\"1\"}}}', 'Approved'),
(14, 'Amir', 'Mac', 'Blok 1 (Keseluruhan Pejabat Utama)', 'Membersih Sawang & Tingkap', 3, '{\"Blok 1 (Keseluruhan Pejabat Utama)\":{\"Membuang Sampah\":{\"6\":\"1\"}}}', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `borangpinjamankenderaan`
--

CREATE TABLE `borangpinjamankenderaan` (
  `id` int(11) NOT NULL,
  `nama_peminjam` varchar(255) NOT NULL,
  `jawatan` varchar(255) NOT NULL,
  `bahagian` varchar(255) NOT NULL,
  `no_telefon` varchar(255) NOT NULL,
  `tarikh_luput_lesen` date NOT NULL,
  `bil_penumpang` int(20) NOT NULL,
  `kad_petronas` varchar(255) NOT NULL,
  `jenis_kenderaan` varchar(255) NOT NULL,
  `no_plat_kenderaan` varchar(255) NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `destinasi` varchar(255) NOT NULL,
  `tarikh_pinjam` date NOT NULL,
  `tarikh_pulang` date NOT NULL,
  `status` enum('Pending','Approved','Not Approved') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borangpinjamankenderaan`
--

INSERT INTO `borangpinjamankenderaan` (`id`, `nama_peminjam`, `jawatan`, `bahagian`, `no_telefon`, `tarikh_luput_lesen`, `bil_penumpang`, `kad_petronas`, `jenis_kenderaan`, `no_plat_kenderaan`, `tujuan`, `destinasi`, `tarikh_pinjam`, `tarikh_pulang`, `status`) VALUES
(5, 'Haizem Hezrie', 'Pengajar', 'MEP', '199048842', '2025-10-04', 2, 'Petrol', 'Toyota Innova 3353', 'VAW 3353', 'Ambil Sijil Kompeten.', 'ST, Putrajaya', '2024-07-01', '2024-07-01', 'Pending'),
(9, 'M/yzmuki Mohamad', 'Pengajar', 'Jentera Berat', '133105395', '0000-00-00', 0, 'Diesel', 'NissanNavara2', 'VBK 3354', 'Sita tower crane.', 'Puchong', '2024-07-01', '2024-07-01', 'Pending'),
(10, 'Noor Azmi Bin Muhammad Hanapi', 'Pembantu Eksekutif', 'Bahagian Latihan', '196034465', '2026-04-16', 0, 'Diesel', 'NissanNavara2', 'VBK 3354', 'Meeting koordinasi Cidb N9', 'Seremban', '2024-07-04', '2024-07-04', 'Pending'),
(11, 'Mohamad Sidek Bin Hashim', 'Pengajar/Penilai', 'Unit Mekanikal,Eletrikal, & Perpaipan', '122667975', '0000-00-00', 0, '', 'Toyota', 'VAW 3353', 'CSR sekitar KL', 'Chow Kit, Masjid Jamek, Menara Maybank', '2024-07-10', '2024-07-10', 'Pending'),
(12, 'Mohamad Sidek Bin Hashim', 'Pengajar/Penilai', 'Unit Mekanikal,Eletrikal, & Perpaipan', '0', '0000-00-00', 0, '', 'NissanNavara1', 'VCX 3353', 'CSR sekitar KL', 'Chow Kit, Masjid Jamek, Menara Maybank', '2024-07-10', '2024-07-10', 'Pending'),
(13, 'Borhan Anak Arifin', 'Pengajar', 'Jentera Berat & Operation', '196486046', '2026-07-03', 0, 'Diesel', 'NissanNavara2', 'VBK 3354', 'Pemantauan program 180.', 'Kuala Selangor', '2024-07-10', '2024-07-11', 'Pending'),
(14, 'Nur Izati Jamel', 'Kerani ', 'Latihan', '163353744', '2025-03-16', 2, 'Diesel', 'NissanNavara2', 'VBK 3354', 'Pkk di tapak bina', 'Site Setia Alam Shah Alam', '2024-07-18', '2024-07-18', 'Pending'),
(15, 'Nur Izzati Binti Jamel', 'Kerani ', 'Latihan', '163353744', '2025-03-16', 2, 'Diesel', 'NissanNavara2', 'VBK 3353', 'Pkk di tapak bina.', 'Site Setia Alam,Shah Alam', '2024-07-19', '2024-07-19', 'Pending'),
(16, 'Muhamad Faiz Bin Haron', '', 'Corporate and Promotion', '196328204', '0000-00-00', 0, '', 'Toyota', 'VAW 3353', 'Lawatan Tapak PKK', 'Penjara Kajang', '2024-07-22', '2024-07-22', 'Pending'),
(17, 'Muhamad Shahrizal Bin Abu Bakar', 'Pengajar', 'Bangunan & Kemasan', '165669254', '0000-00-00', 0, 'Petrol', 'Toyota', 'VAW 3353', 'Penilaian Belia ABD2 ABM Timur.', 'ABM Timur', '2024-07-29', '2024-07-31', 'Pending'),
(19, 'Nur Izzati Binti Jamel (Driver: Aina Hadirah, Borhan Azam Syukur)', 'Kerani', 'Latihan', '163353744', '2025-03-16', 3, 'Diesel', 'NissanNavara2', '.VBK 3353', 'Operasi Penguatkuasaan khas.', 'Sekitar Negeri Sembilan', '2024-07-24', '2024-07-25', 'Pending'),
(20, 'Nurul Raihan Binti Abu Samah', 'Pembantu Eksekutif', 'Sumber Manusia & Pentadbiran', '142228055', '2024-08-22', 8, 'Petrol, Diesel', 'Toyota', 'VAW 3353', 'Anugerah Perkhidmatan Cemerlang 2023', 'Alor Setar,Kedah', '2024-07-24', '2024-07-26', 'Pending'),
(21, 'Nurul Raihan Binti Abu Samah', 'Pembantu Eksekutif', 'Sumber Manusia & Pentadbiran', '142228055', '2024-08-22', 8, 'Petrol, Diesel', 'NissanNavara2', 'VBK 3353', 'Anugerah Perkhidmatan Cemerlang 2023', 'Alor Setar,Kedah', '2024-07-24', '2024-07-26', 'Pending'),
(27, 'Noor Azmi Bin Muhammad Hanapi', 'Pembantu Eksekutif', 'Bahagian Latihan', '196034465', '2026-04-16', 1, 'diesel', 'NissanNavara3', 'VBK 3353', 'PKK Tapak Bina\\r\\n', 'Sendayan N.9.', '2024-07-30', '2024-07-30', 'Pending'),
(28, 'Borhan Anak Arifin', 'Ketua Unit', 'Jentera Berat & Operasi Kren', '196486046', '2026-07-03', 1, '', 'NissanNavara1', 'VCX 3353', 'Pemantauan Program Customized 180', 'Kuala Selangor', '2024-07-31', '2024-08-01', 'Pending'),
(29, 'Muhamad Faiz Bin Haron', '-', 'Corporate and Promotion', '196328204', '0001-01-01', 1, '', 'Toyota', 'VAW 3353', 'Ambil pluq (Hadiah) Majlis Graduasi.', 'Pertama Complex,KL', '2024-08-02', '2024-08-02', 'Pending'),
(30, 'Muhamad Faiz Bin Haron', '-', 'Corporate and Promotion', '196328204', '0001-01-01', 1, '', 'Toyota', 'VAW 3353', 'Hantar Barang (Goodies, Pluq, Beg) untuk Majlis Graduasi', 'Sunway Hotel,Kuala Lumpur', '2024-08-05', '2024-08-06', 'Pending'),
(31, 'Noor Azmi Bin Muhammad Hanapi', 'Pembantu Eksekutif', 'Bahagian Latihan', '196034465', '2026-04-16', 1, 'diesel', 'NissanNavara2', 'VBK 3354', 'OPK & OPB CIDB N9', 'Sekitar Seremban-Nilai', '2024-08-07', '2024-08-08', 'Pending'),
(32, 'Azrul Nizam Bin Abd Razak', 'Pengajar ', 'MEP', '173867593', '0001-01-01', 1, '', 'Toyota', 'VAW 3353', 'Majlis Graduasi ABM KL', 'Sunway Putra', '2024-08-05', '2024-08-06', 'Pending'),
(35, 'Noor Azmi Bin Muhammad Hanapi', 'Pembantu Eksekutif', 'Latihan', '196034465', '2026-04-16', 1, 'diesel', 'NissanNavara2', 'VBK 3354', 'OPK & OPB CIDB N9', 'Sekitar Seremban - Nilai', '2024-08-07', '2024-08-08', 'Pending'),
(36, 'Muhamad Faiz Bin Haron', '.', 'Koperat & Promosi', '196328204', '0001-01-01', 2, '', 'Toyota', 'VAW 3353', 'Lawatan Tapak', 'PRP SG PELEK', '2024-08-08', '2024-08-08', 'Pending'),
(37, 'Myzuuki Mohamad', 'Prusejai', 'Jentera Berat', '133605395', '2025-07-14', 1, 'diesel', 'NissanNavara1', 'VCX 3353', 'Saujana Putra.Training TC.', 'Saujana Putra', '2024-08-12', '2024-08-12', 'Pending'),
(38, 'Mohd Haris Hasan', 'Penolong Pengajar', 'Kerja Bangunan & Kemasan', '123677574', '2028-12-27', 1, '', 'NissanNavara2', 'VBK 3354', 'TTT SCAFOLO TG20', 'ABM Wilayah Utara', '2024-08-11', '2024-08-17', 'Pending'),
(39, 'Borhan Anak Arifin', 'Pengajar', 'Jentera Berat & Operasi Kren', '196486046', '0001-01-01', 1, '', 'NissanNavara3', 'VBK 3353', 'Lawatan Tapak Toner Kren di Jenjarom', 'Jenjarom, Selangor', '2024-08-14', '2024-08-14', 'Pending'),
(40, 'Noor Azmi Bin Muhammad Hanapi', 'Latihan', '.', '196034465', '2026-04-16', 2, '', 'Toyota', 'VAW 3353', 'PKK ', 'SRI PETALING', '2024-08-14', '2024-08-14', 'Pending'),
(41, 'MOHD EFFENDY BIN AZMAN', 'PENGAJAR', 'PERPAIPAN', '196565448', '0001-01-01', 5, 'petrol', 'Toyota', 'VAW 3353', 'WSMB di ABM Terengganu', 'ABM Timur', '2024-08-17', '2024-08-22', 'Pending'),
(42, 'Mohamad Yuzaini Bin Mohamad Yahya', 'Pengajar', 'Chargeman', '133940274', '2024-11-28', 5, 'petrol', 'Toyota', 'VAW 3353', 'Peperiksaan Akhir BT A0', 'KL dan Selangor', '2024-08-18', '2024-08-23', 'Pending'),
(43, 'SHAIRUL BIN SHAMSUDIN', 'Pengajar/Penilai', 'OPERASI KREN', '162484522', '0001-01-01', 1, '', 'NissanNavara3', 'VBK 3353', 'Kursus Customized & PKK', 'Pusat Reintegrasi Penghuni , Sepang , Selangor', '2024-08-19', '2024-08-23', 'Pending'),
(44, 'Borhan Anak Arifin', 'PENGAJAR', 'Jentera Berat & Operasi Kren', '196486046', '2026-08-07', 1, 'diesel', 'NissanNavara3', 'VBK 3353', 'PKK', 'ALMINA SG BULOK', '2024-08-15', '2024-08-15', 'Pending'),
(46, 'Mohd Khatim Bin Abdl Aduwad', 'Penolong Pengajar', 'Jabatan Bangunan & Operasi Kren', '183244293', '2024-06-06', 1, '', 'NissanNavara2', 'VBK 3354', 'BELIAN BAHAN CUSTOMIZE IWPI', 'SG. CHUA KAJANG', '2024-08-23', '2024-08-23', 'Pending'),
(47, 'Haizem Hezrie', 'Pengajar', 'MEP', '199048842', '2025-10-04', 2, '', 'Toyota', 'VAW 3353', 'Bawa Pemeriksa PW4', 'Maluri', '2024-08-26', '2024-08-26', 'Pending'),
(48, 'MUHAMMAD IRFAN AMIR', 'Technician / Warden', 'Unit Sumber Manusia & Pentadbiran', '1111416009', '0001-01-01', 1, '', 'Van2', 'VCX 3353', 'Ambil rak kasut.', 'Rawang,Jalan Batu Arang,48000 Rawang Selangor', '2024-08-26', '2024-08-26', 'Pending'),
(49, 'Borhan Anak Arifin', 'Ketua Unit', 'Jentera Berat', '196486046', '2026-03-07', 1, '', 'Motor2', 'Tidak Diketahui', 'PEMANTAUAN & PERJUMPAAN KONTRAKTOR', 'SHAH ALAM', '2024-08-28', '2024-08-28', 'Pending'),
(50, 'UMAR BIN MAT AMIN', 'Penolong Pengajar', 'MECH ELECTRICAL PLUMBING', '139304403', '2025-01-05', 12, 'petrol', 'Van2', 'VCX 3353', 'FUTSAL BERMAIN', 'AVENGER SPORTS ARENA JALAN PERDANA 4/8 , JALAN PERDANA 3/3 PANDAN PERDANA,55300 KUALA LUMPUR', '2024-08-30', '2024-08-30', 'Pending'),
(51, 'Myzuuki Bin Mohamad', 'Pengajar/Penilai', 'Unit Jentera Berat & Operasi Kren', '133605395', '0001-01-01', 1, '', 'Toyota', 'VAW 3353', 'Jemputan Sesi Libat Urus Penyelia Latihan PLB', 'JKKP Putrajaya', '2024-09-10', '2024-09-10', 'Pending'),
(52, 'Noor Azmi Bin Muhammad Hanapi', 'Pembantu Eksekutif', 'Bahagian Latihan', '196034465', '2025-04-16', 1, 'diesel', 'NissanNavara3', 'VBK 3353', 'Lawatan Tapak Kilang Dutch Lady Gemas', 'Gemas , N. Sembilan', '2024-09-05', '2024-09-05', 'Pending'),
(53, 'Mohamad Sidek Bin Hashim', 'Pengajar', 'MEP', '122667975', '2025-12-22', 1, '', 'NissanNavara1', 'VCX 3353', 'KLIA 1', 'KLIA 1', '2024-09-06', '2024-09-06', 'Pending'),
(54, 'MUHAMMAD IRFAN AMIR', 'Technician / Warden', 'Unit Sumber Manusia & Pentadbiran', '1111416009', '0001-01-01', 20, '', 'NissanNavara1', 'VCX 3353', 'PERLAWANAN BOLA SEPAK', 'UIA GOMBAK', '2024-08-29', '2024-08-29', 'Pending'),
(55, 'SALMI BINTI AHMAD', '.', 'Bahagian Latihan', '1123617404', '0001-01-01', 1, '', 'Toyota', 'VAW 3353', 'Menghantar sijil & ke klia untuk worldskills.', 'ILP Pedas , N.Sembilan', '2024-09-06', '2024-09-06', 'Pending'),
(56, 'Muhammad Al-Amir', '', '', '199048842', '2024-10-11', 1, 'petrol', 'Toyota', 'VAW 3353', 'Jalan', 'KL', '2024-10-04', '2024-10-07', 'Approved'),
(58, 'Unknow', '.', '.', '.', '2024-11-30', 0, 'Yes', '0', 'VBK 3354', '.', '.', '2024-11-08', '2024-11-11', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `semakanpembersihantandas`
--

CREATE TABLE `semakanpembersihantandas` (
  `id` int(11) NOT NULL,
  `disemak_oleh` varchar(255) NOT NULL,
  `bulan` varchar(255) NOT NULL,
  `tarikh` date NOT NULL,
  `lokasi_tandas` varchar(255) NOT NULL,
  `kerja` varchar(255) NOT NULL,
  `status` enum('Pending','Approved','Not Approved') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `semakanpembersihantandas`
--

INSERT INTO `semakanpembersihantandas` (`id`, `disemak_oleh`, `bulan`, `tarikh`, `lokasi_tandas`, `kerja`, `status`) VALUES
(5, 'al amir', 'September', '2024-10-03', 'Tandas pelatih', 'Floor - Mop,Wall - Wipe,Sink - Scrub,Soap dispenser - add,Hand bidet - wipe,Jumbo & Toilet Roll,Remark', 'Pending'),
(10, 'ff', 'January', '2024-10-10', 'jjj', 'Floor - Mop,Sink - Scrub,Soap dispenser - add,Toilet roll Holder - Scrub & wipe', 'Approved'),
(21, 'al amir', 'January', '2024-10-17', 'Tandas pelatih', 'Floor - Mop', 'Approved'),
(33, 'amir', 'October', '2024-10-01', 'Tandas Pelatih', 'Floor - Mop,Wall - Wipe,Toilet bowl - Scrub,WC tank - Wipe,Mirror - Wipe,Sink - Scrub,Urine bowl - Scrub,Dustbin - Trash , Wipe in & out,Soap dispenser - add,Toilet roll Holder - Scrub & wipe,Jumbo & Toilet Roll,Checked By,Remark', 'Pending'),
(52, '', '', '0000-00-00', '', '', 'Pending'),
(53, '', '', '0000-00-00', '', '', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `signatures`
--

CREATE TABLE `signatures` (
  `id` int(11) NOT NULL,
  `signature_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signatures2`
--

CREATE TABLE `signatures2` (
  `id` int(11) NOT NULL,
  `signature_image2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signatures3`
--

CREATE TABLE `signatures3` (
  `id` int(11) NOT NULL,
  `signature_image3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signatures4`
--

CREATE TABLE `signatures4` (
  `id` int(11) NOT NULL,
  `signature_image4` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signatures5`
--

CREATE TABLE `signatures5` (
  `id` int(11) NOT NULL,
  `signature_image5` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signatures6`
--

CREATE TABLE `signatures6` (
  `id` int(11) NOT NULL,
  `signature_image6` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signatures7`
--

CREATE TABLE `signatures7` (
  `id` int(11) NOT NULL,
  `signature_image7` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `simulatorlab`
--

CREATE TABLE `simulatorlab` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `peralatan` varchar(255) NOT NULL,
  `tarikh_ambil` date NOT NULL,
  `tarikh_pulang` date NOT NULL,
  `ttambil` text NOT NULL,
  `ttpulang` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usernameandpassword`
--

CREATE TABLE `usernameandpassword` (
  `id` int(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usernameandpassword`
--

INSERT INTO `usernameandpassword` (`id`, `username`, `password`) VALUES
(1, 'Admin', '12345678'),
(6, 'MAAmir15', 'amir2003'),
(8, '007', 'abcd1234'),
(9, 'abmwt', '0172571259');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_upadf`
--
ALTER TABLE `admin_upadf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `approvals`
--
ALTER TABLE `approvals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `approvals2`
--
ALTER TABLE `approvals2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `approvals3`
--
ALTER TABLE `approvals3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `approvals4`
--
ALTER TABLE `approvals4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `approvals5`
--
ALTER TABLE `approvals5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `approvals6`
--
ALTER TABLE `approvals6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borangaduankerosakan`
--
ALTER TABLE `borangaduankerosakan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borangbupadf`
--
ALTER TABLE `borangbupadf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borangcadanganpembaikan`
--
ALTER TABLE `borangcadanganpembaikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boranglaporantukangcuci`
--
ALTER TABLE `boranglaporantukangcuci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borangpemantauandanpemeriksaan`
--
ALTER TABLE `borangpemantauandanpemeriksaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borangpinjamankenderaan`
--
ALTER TABLE `borangpinjamankenderaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semakanpembersihantandas`
--
ALTER TABLE `semakanpembersihantandas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signatures`
--
ALTER TABLE `signatures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signatures2`
--
ALTER TABLE `signatures2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signatures3`
--
ALTER TABLE `signatures3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signatures4`
--
ALTER TABLE `signatures4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signatures5`
--
ALTER TABLE `signatures5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signatures6`
--
ALTER TABLE `signatures6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signatures7`
--
ALTER TABLE `signatures7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simulatorlab`
--
ALTER TABLE `simulatorlab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usernameandpassword`
--
ALTER TABLE `usernameandpassword`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_upadf`
--
ALTER TABLE `admin_upadf`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `borangaduankerosakan`
--
ALTER TABLE `borangaduankerosakan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `borangbupadf`
--
ALTER TABLE `borangbupadf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `borangcadanganpembaikan`
--
ALTER TABLE `borangcadanganpembaikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `boranglaporantukangcuci`
--
ALTER TABLE `boranglaporantukangcuci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `borangpemantauandanpemeriksaan`
--
ALTER TABLE `borangpemantauandanpemeriksaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `borangpinjamankenderaan`
--
ALTER TABLE `borangpinjamankenderaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `semakanpembersihantandas`
--
ALTER TABLE `semakanpembersihantandas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `signatures`
--
ALTER TABLE `signatures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `signatures2`
--
ALTER TABLE `signatures2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `signatures3`
--
ALTER TABLE `signatures3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `signatures4`
--
ALTER TABLE `signatures4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `signatures5`
--
ALTER TABLE `signatures5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `signatures6`
--
ALTER TABLE `signatures6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `signatures7`
--
ALTER TABLE `signatures7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `simulatorlab`
--
ALTER TABLE `simulatorlab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usernameandpassword`
--
ALTER TABLE `usernameandpassword`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
