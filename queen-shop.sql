-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jul 2023 pada 13.23
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas-akhir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_akun`
--

CREATE TABLE `daftar_akun` (
  `kode_akun` varchar(10) NOT NULL,
  `akun` varchar(100) NOT NULL,
  `pos_laporan` varchar(50) NOT NULL,
  `pos_akun` varchar(50) NOT NULL,
  `saldo_normal` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `daftar_akun`
--

INSERT INTO `daftar_akun` (`kode_akun`, `akun`, `pos_laporan`, `pos_akun`, `saldo_normal`) VALUES
('1-101', 'Kas', 'Laporan Posisi Keuangan', 'Aset Lancar', 'Debit'),
('1-102', 'Piutang Jasa', 'Laporan Posisi Keuangan', 'Aset Lancar', 'Debit'),
('1-103', 'Perlengkapan', 'Laporan Posisi Keuangan', 'Aset Lancar', 'Debit'),
('1-201', 'Peralatan', 'Laporan Posisi Keuangan', 'Aset Tetap', 'Debit'),
('1-202', 'Akumulasi Penyusutan Peralatan', 'Laporan Posisi Keuangan', 'Aset Tetap', 'Debit'),
('1-203', 'Kendaraan', 'Laporan Posisi Keuangan', 'Aset Tetap', 'Debit'),
('1-204', 'Akumulasi Penyusutan Kendaraan', 'Laporan Posisi Keuangan', 'Aset Tetap', 'Debit'),
('2-001', 'Utang Usaha', 'Laporan Posisi Keuangan', 'Kewajiban', 'Kredit'),
('2-002', 'Hutang Gaji', 'Laporan Posisi Keuangan', 'Kewajiban', 'Kredit'),
('2-003', 'Hutang Listrik dan Telepon', 'Laporan Posisi Keuangan', 'Kewajiban', 'Kredit'),
('3-001', 'Modal', 'Laporan Posisi Keuangan', 'Ekuitas', 'Kredit'),
('3-002', 'Prive', 'Laporan Posisi Keuangan', 'Ekuitas', 'Debit'),
('4-001', 'Pendapatan Jasa', 'Laba Rugi', 'Pendapatan', 'Kredit'),
('4-002', 'Pendapatan lain-lain', 'Laba Rugi', 'Pendapatan', 'Kredit'),
('4-003', 'Ikhtisar Laba Rugi', 'Laba Rugi', 'Pendapatan', 'Kredit'),
('5-001', 'Beban Listrik dan Telepon', 'Laba Rugi', 'Beban', 'Debit'),
('5-002', 'Beban Honor', 'Laba Rugi', 'Beban', 'Debit'),
('5-003', 'Beban Gaji', 'Laba Rugi', 'Beban', 'Debit'),
('5-004', 'Beban Pajak', 'Laba Rugi', 'Beban', 'Debit'),
('5-005', 'Beban Perlengkapan', 'Laba Rugi', 'Beban', 'Debit'),
('5-006', 'Beban Penyusutan Peralatan', 'Laba Rugi', 'Beban', 'Debit'),
('5-007', 'Beban BBM', 'Laba Rugi', 'Beban', 'Debit'),
('5-008', 'Beban Kontrak Kendaraan', 'Laba Rugi', 'Beban', 'Debit'),
('5-009', 'Beban Perawatan Kendaraan', 'Laba Rugi', 'Beban', 'Debit'),
('5-010', 'Beban Penyusutan Kendaraan', 'Laba Rugi', 'Beban', 'Debit'),
('5-011', 'Beban lain-lain', 'Laba Rugi', 'Beban', 'Debit'),
('5-012', 'Beban Sewa', 'Laba Rugi', 'Beban', 'Debit'),
('5-013', 'Beban Iklan', 'Laba Rugi', 'Beban', 'Debit'),
('5-014', 'Beban Pajak Kendaraan', 'Laba Rugi', 'Beban', 'Debit'),
('5-015', 'Beban Angsuran Kendaraan', 'Laba Rugi', 'Beban', 'Debit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kendaraan`
--

CREATE TABLE `data_kendaraan` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `plat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_kendaraan`
--

INSERT INTO `data_kendaraan` (`id`, `nama`, `plat`) VALUES
(4, 'Kijang', 'K 3051 JP'),
(5, 'Avanza', 'AE 9021 P');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_sewa`
--

CREATE TABLE `data_sewa` (
  `id` int(5) NOT NULL,
  `nama_penyewa` varchar(50) NOT NULL,
  `tgl_sewa` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `biaya_sewa` decimal(15,2) NOT NULL,
  `uang_muka` decimal(15,2) NOT NULL,
  `bayar` decimal(15,2) NOT NULL,
  `kendaraan` varchar(50) NOT NULL,
  `tgl_lunas` date NOT NULL,
  `status` varchar(5) NOT NULL,
  `id_sewa` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_sewa`
--

INSERT INTO `data_sewa` (`id`, `nama_penyewa`, `tgl_sewa`, `tgl_kembali`, `biaya_sewa`, `uang_muka`, `bayar`, `kendaraan`, `tgl_lunas`, `status`, `id_sewa`) VALUES
(85, 'Adi', '2020-04-30', '2020-04-30', '5500000.00', '1500000.00', '0.00', 'Avanza', '0000-00-00', 'BL', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `saldo_awal`
--

CREATE TABLE `saldo_awal` (
  `id` int(5) NOT NULL,
  `kode_akun` varchar(7) NOT NULL,
  `keterangan` varchar(128) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `pos_laporan` varchar(100) NOT NULL,
  `akun` varchar(50) NOT NULL,
  `debit` decimal(15,2) NOT NULL,
  `kredit` decimal(15,2) NOT NULL,
  `pos_akun` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(5) NOT NULL,
  `kode_akun` varchar(7) NOT NULL,
  `keterangan` varchar(128) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `pos_saldo` varchar(20) NOT NULL,
  `pos_laporan` varchar(100) NOT NULL,
  `bukti_transaksi` varchar(8) NOT NULL,
  `akun` varchar(50) NOT NULL,
  `debit` decimal(15,2) NOT NULL,
  `kredit` decimal(15,2) NOT NULL,
  `pos_akun` varchar(50) NOT NULL,
  `id_sewa` int(7) DEFAULT NULL,
  `ref` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `kode_akun`, `keterangan`, `tanggal_transaksi`, `pos_saldo`, `pos_laporan`, `bukti_transaksi`, `akun`, `debit`, `kredit`, `pos_akun`, `id_sewa`, `ref`) VALUES
(815, '1-101', 'Sewa Adi', '2020-04-30', 'Debit', 'Laporan Posisi Keuangan', '000001', 'Kas', '1500000.00', '0.00', 'Aset Lancar', 1, 'JU'),
(816, '1-102', 'Sewa Adi', '2020-04-30', 'Debit', 'Laporan Posisi Keuangan', '000001', 'Piutang Jasa', '4000000.00', '0.00', 'Aset Lancar', 1, 'JU'),
(817, '4-001', 'Sewa Adi', '2020-04-30', 'Kredit', 'Laba Rugi', '000001', 'Pendapatan Jasa', '0.00', '5500000.00', 'Pendapatan', 1, 'JU'),
(818, '1-101', 'Terharu', '2020-05-01', 'Debit', 'Laporan Posisi Keuangan', '000002', 'Kas', '5000000.00', '0.00', 'Aset Lancar', NULL, 'JU'),
(819, '4-001', 'Terharu', '2020-05-01', 'Kredit', 'Laba Rugi', '000002', 'Pendapatan Jasa', '0.00', '5000000.00', 'Pendapatan', NULL, 'JU'),
(820, '1-201', 'Beli peralatan', '2020-05-01', 'Debit', 'Laporan Posisi Keuangan', '000003', 'Peralatan', '1000000.00', '0.00', 'Aset Tetap', NULL, 'JU'),
(821, '1-101', 'Beli peralatan', '2020-05-01', 'Kredit', 'Laporan Posisi Keuangan', '000003', 'Kas', '0.00', '1000000.00', 'Aset Lancar', NULL, 'JU');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `gambar` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `gambar`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(5, 'Pemilik', 'owner@mkas.co.id', 'M-KAS.png', '$2y$10$pDlB6vR7siClHaHAyZ.3DuhEiIYkGNo.LoWCe6wqvIMW.bavUO12S', 1, 1, 1689792299),
(6, 'Toko Kelontong', 'owner@kelontong.com', 'default.jpg', '$2y$10$xZ0cPUlD/Evdexs4S0AHE.rRnfpPuZ/F/iIhaoAlqDwZCHnSz0dNm', 2, 1, 1690432399);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Pemilik'),
(2, 'UMKM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(1, 'owner@mkas.co.id', 'VyWtXy4MP/pcYLviKsscOlfv5PlNGmMLhP22/NnjNJ8=', '0000-00-00'),
(2, 'owner@mkas.co.id', 'XTim1VQ9eTvZDvEUZcdsxejJOlt1H2EzfYktzUFwetM=', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daftar_akun`
--
ALTER TABLE `daftar_akun`
  ADD PRIMARY KEY (`kode_akun`);

--
-- Indeks untuk tabel `data_kendaraan`
--
ALTER TABLE `data_kendaraan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_sewa`
--
ALTER TABLE `data_sewa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `saldo_awal`
--
ALTER TABLE `saldo_awal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_kendaraan`
--
ALTER TABLE `data_kendaraan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `data_sewa`
--
ALTER TABLE `data_sewa`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT untuk tabel `saldo_awal`
--
ALTER TABLE `saldo_awal`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=822;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
