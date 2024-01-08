-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2023 at 01:39 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miemiebrownie`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_absensi`
--

CREATE TABLE `db_absensi` (
  `id_absen` bigint(20) NOT NULL,
  `kode_absen` varchar(100) NOT NULL,
  `nama_pegawai` varchar(125) NOT NULL,
  `kode_pegawai` varchar(125) NOT NULL,
  `tgl_absen` varchar(125) NOT NULL,
  `jam_masuk` varchar(13) NOT NULL,
  `jam_pulang` varchar(13) NOT NULL,
  `status_pegawai` int(1) NOT NULL,
  `keterangan_absen` varchar(100) NOT NULL,
  `maps_absen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_absensi`
--

INSERT INTO `db_absensi` (`id_absen`, `kode_absen`, `nama_pegawai`, `kode_pegawai`, `tgl_absen`, `jam_masuk`, `jam_pulang`, `status_pegawai`, `keterangan_absen`, `maps_absen`) VALUES
(1, 'absen_20230672604', 'Haikal Akhalul Azhar', '293571010111', 'Sabtu, 3 Juni 2023', '12:57:16', '13:40:52', 2, 'Bekerja Di Kantor', '-6.9818737, 109.1718423'),
(2, 'absen_20230680209', 'Wimas Mutas Subkhan', '536185489360701', 'Sabtu, 3 Juni 2023', '15:22:36', '15:26:14', 2, 'Bekerja Di Kantor', '-6.9763072, 109.1796992'),
(3, 'absen_20230675204', 'Haikal Akhalul Azhar', '293571010111', 'Minggu, 4 Juni 2023', '10:52:56', '13:04:11', 2, 'Bekerja Di Kantor', '-6.8898362, 109.6745916'),
(5, 'absen_20230645952', 'Haikal Akhalul Azhar', '293571010111', 'Senin, 5 Juni 2023', '09:14:14', '12:09:23', 1, 'Bekerja Di Kantor', '-6.8898362, 109.6745916'),
(6, 'absen_20230656072', 'Wimas Mutas Subkhan', '536185489360701', 'Senin, 5 Juni 2023', '10:07:31', '12:09:47', 2, 'Bekerja Di Kantor', '-6.8898362, 109.6745916'),
(8, 'absen_20230684253', 'Wimas Mutas Subkhan', '536185489360701', 'Selasa, 6 Juni 2023', '08:00:41', '21:39:35', 1, 'Bekerja Di Kantor', '-6.8898362, 109.6745916'),
(9, 'absen_20230672230', 'Haikal Akhalul Azhar', '293571010111', 'Selasa, 6 Juni 2023', '08:00:53', '21:38:35', 1, 'Bekerja Di Kantor', '-6.8898362, 109.6745916'),
(10, 'absen_20230636435', 'Nadya Fitriani', '010347952685632', 'Selasa, 6 Juni 2023', '08:05:54', '21:39:51', 1, 'Bekerja Di Kantor', '-6.8898362, 109.6745916'),
(11, 'absen_20230653454', 'Moh. Adib N.F', '612278493953486', 'Selasa, 6 Juni 2023', '08:05:06', '21:39:10', 1, 'Bekerja Di Kantor', '-6.8898362, 109.6745916'),
(12, 'absen_20230624991', 'Haikal Akhalul Azhar', '293571010111', 'Kamis, 8 Juni 2023', '14:24:07', '14:24:23', 2, 'Bekerja Di Kantor', '-7.0051453, 110.4381254'),
(13, 'absen_20230660356', 'Moh. Adib N.F', '612278493953486', 'Kamis, 8 Juni 2023', '15:45:18', '', 2, 'Bekerja Di Kantor', '-7.0051453, 110.4381254'),
(14, 'absen_20230631278', 'Nadya Fitriani', '010347952685632', 'Senin, 19 Juni 2023', '14:33:18', '', 2, 'Bekerja Di Kantor', '-6.8644441, 109.1209777'),
(15, 'absen_20230652811', 'Wimas Mutas Subkhan', '536185489360701', 'Senin, 19 Juni 2023', '16:08:50', '16:09:15', 2, 'Bekerja Di Kantor', '-6.8644518, 109.1209764'),
(16, 'absen_20230674699', 'Dimas', '863145015623729', 'Senin, 19 Juni 2023', '16:11:13', '', 2, 'Bekerja Di Kantor', '-6.8644614, 109.1209748'),
(17, 'absen_20230628537', 'Cut Mutia Septiana', '293571010111', 'Kamis, 22 Juni 2023', '16:41:22', '18:35:29', 2, 'Bekerja Di Kantor', '-7.0051453, 110.4381254'),
(18, 'absen_20230643986', 'Wimas Mutas Subkhan', '536185489360701', 'Kamis, 22 Juni 2023', '16:56:20', '18:38:23', 2, 'Bekerja Di Kantor', '-7.0051453, 110.4381254'),
(19, 'absen_20230676979', 'Moh. Adib N.F', '612278493953486', 'Kamis, 22 Juni 2023', '16:57:23', '', 2, 'Bekerja Di Kantor', '-7.0051453, 110.4381254');

-- --------------------------------------------------------

--
-- Table structure for table `db_rememberme`
--

CREATE TABLE `db_rememberme` (
  `id_session` int(11) NOT NULL,
  `kode_pegawai` varchar(125) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_agent` varchar(35) NOT NULL,
  `agent_string` varchar(255) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `user_ip` varchar(35) NOT NULL,
  `cookie_hash` varchar(255) NOT NULL,
  `expired` int(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `db_setting`
--

CREATE TABLE `db_setting` (
  `status_setting` int(1) NOT NULL DEFAULT 0,
  `nama_instansi` varchar(255) NOT NULL,
  `jumbotron_lead_set` varchar(125) NOT NULL,
  `nama_app_absensi` varchar(20) NOT NULL DEFAULT 'Absensi Online',
  `logo_instansi` varchar(255) NOT NULL,
  `timezone` varchar(35) NOT NULL,
  `absen_mulai` varchar(13) NOT NULL,
  `absen_mulai_to` varchar(13) NOT NULL,
  `absen_pulang` varchar(13) NOT NULL,
  `maps_use` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_setting`
--

INSERT INTO `db_setting` (`status_setting`, `nama_instansi`, `jumbotron_lead_set`, `nama_app_absensi`, `logo_instansi`, `timezone`, `absen_mulai`, `absen_mulai_to`, `absen_pulang`, `maps_use`) VALUES
(1, 'PT Nibras Berkah Mulia', 'Oleh Oleh ? YA Miemie Brownie', 'Miemie Brownie', '23c0555ce69ee171a9bd41a2439aa5d3.png', 'Asia/Jakarta', '06:30:00', '06:40:00', '17:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_pegawai` int(11) NOT NULL,
  `nama_lengkap` varchar(125) NOT NULL,
  `username` varchar(125) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(1) NOT NULL,
  `umur` int(11) NOT NULL,
  `image` varchar(125) NOT NULL,
  `qr_code_image` varchar(125) NOT NULL,
  `kode_pegawai` varchar(125) NOT NULL,
  `instansi` varchar(125) NOT NULL,
  `jabatan` varchar(125) NOT NULL,
  `npwp` varchar(255) NOT NULL,
  `tgl_lahir` varchar(25) NOT NULL,
  `tempat_lahir` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `bagian_shift` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `qr_code_use` int(2) NOT NULL,
  `last_login` int(11) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_pegawai`, `nama_lengkap`, `username`, `password`, `role_id`, `umur`, `image`, `qr_code_image`, `kode_pegawai`, `instansi`, `jabatan`, `npwp`, `tgl_lahir`, `tempat_lahir`, `jenis_kelamin`, `bagian_shift`, `is_active`, `qr_code_use`, `last_login`, `date_created`) VALUES
(12, 'Cut Mutia Septiana', 'admin-muti', '$2y$10$giINz91e0X76fsrNMnmCXOe7zIbHmHDEeNrkaE/gTv3wUKUIBdAtO', 1, 20, '77b5a8aab8e768a487d7220182ca78b7.jpg', 'no-qrcode.png', '293571010111', 'PT Nibras Berkah Mulia', 'Admin', 'Tidak Ada', '2002-09-19', 'Tegal', 'Perempuan', 1, 1, 0, 1687433865, 1584698797),
(43, 'Wimas Mutas Subkhan', 'moderator-wimas', '$2y$10$cUorwmBLmJgBnqDVFwMWC.0Z7THE2tfvYQsQx8DoSYs/QUbfKtl/2', 2, 20, 'c752c05e202459640781427290a22a5b.jpg', 'qr_code_536185489360701.png', '536185489360701', 'PT Nibras Berkah Mulia', 'Moderator', 'Tidak Ada', '2003-05-10', 'Tegal', 'Laki - Laki', 3, 1, 1, 1687427822, 1685778252),
(44, 'Nadya Fitriani', 'nadya', '$2y$10$C9MrDq8RJrD3eWAHtVU6JOu5I6BWIrHhCE783R4xQCgPTQMP/zuAC', 3, 20, 'a946b851b2af9b9c1b393d31b8fd8c06.png', 'no-qrcode.png', '010347952685632', 'PT Nibras Berkah Mulia', 'Kasir', 'Tidak Ada', '2003-05-10', 'Kota Tegal', 'Perempuan', 2, 1, 0, 1687160230, 1685933694),
(45, 'Moh. Adib N.F', 'adib', '$2y$10$wpHNQBzGHdNbUa8o52E9e.moZ0XFWtYtuojMxzuJjmS6B7bJjSiw.', 3, 22, '5fe70be0af1f47e195974306791bd9d5.png', 'no-qrcode.png', '612278493953486', 'PT Nibras Berkah Mulia', 'Supervisor', 'Tidak Ada', '2001-04-22', 'Kota Tegal', 'Laki - Laki', 1, 1, 0, 1687427924, 1686013440),
(46, 'Vitha Azhari', 'vitha', '$2y$10$CRO5rZbQif9DX380CZit/O6L9ZbZrTEdQDzfGrGePAMlNymzP2xBC', 3, 20, 'b3ddef3603dd55fd2335b3a185289ac1.png', 'no-qrcode.png', '909326570184236', 'PT Nibras Berkah Mulia', 'Kasir', 'Tidak Ada', '2003-02-08', 'Kota Tegal', 'Perempuan', 1, 1, 0, 1687160362, 1686213612),
(48, 'Haikal Akhalul Azhar', 'haikal', '$2y$10$bmmr07O/0.Te8GTFvLzFGerlB7W/oqrU92oif5Gt1GrxMMdTygtVa', 3, 21, 'bee804fb25346ca0ed818ddc60af5a47.jpeg', 'no-qrcode.png', '873062360494925', 'PT Nibras Berkah Mulia', 'Food &amp; Drink', 'Tidak Ada', '2001-06-05', 'Kota Tegal', 'Laki - Laki', 2, 1, 0, 1687427302, 1687427226);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_absensi`
--
ALTER TABLE `db_absensi`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indexes for table `db_rememberme`
--
ALTER TABLE `db_rememberme`
  ADD PRIMARY KEY (`id_session`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_absensi`
--
ALTER TABLE `db_absensi`
  MODIFY `id_absen` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `db_rememberme`
--
ALTER TABLE `db_rememberme`
  MODIFY `id_session` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
