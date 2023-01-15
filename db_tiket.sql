-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jan 2023 pada 12.49
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tiket`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwalpenerbangan`
--

CREATE TABLE `jadwalpenerbangan` (
  `id_penerbangan` int(11) NOT NULL,
  `nama_maskapai` varchar(30) NOT NULL,
  `tujuan_penerbangan` varchar(30) NOT NULL,
  `tanggal_penerbangan` varchar(30) NOT NULL,
  `jam_penerbangan` varchar(10) NOT NULL,
  `jenis_penerbangan` varchar(25) NOT NULL,
  `harga` varchar(13) NOT NULL,
  `status_ketersediaan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jadwalpenerbangan`
--

INSERT INTO `jadwalpenerbangan` (`id_penerbangan`, `nama_maskapai`, `tujuan_penerbangan`, `tanggal_penerbangan`, `jam_penerbangan`, `jenis_penerbangan`, `harga`, `status_ketersediaan`) VALUES
(4, 'NadiaAir', 'JAKARTA', '8 Januari 2023', '06 : 00', 'Ekonomi Class', '1200000', 'Available'),
(5, 'NadiaAir', 'BALI', '9 Januari 2023', '20 : 30', 'Ekonomi Class', '1000000', 'Available');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `nama_pelanggan` varchar(20) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `nama_maskapai` varchar(30) NOT NULL,
  `tujuan_penerbangan` varchar(50) NOT NULL,
  `jenis_penerbangan` varchar(25) NOT NULL,
  `jam_penerbangan` varchar(20) NOT NULL,
  `harga_tiket` int(30) NOT NULL,
  `jumlah_tiket` int(15) NOT NULL,
  `total_pembayaran` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `nama_pelanggan`, `tanggal`, `nama_maskapai`, `tujuan_penerbangan`, `jenis_penerbangan`, `jam_penerbangan`, `harga_tiket`, `jumlah_tiket`, `total_pembayaran`) VALUES
(2, 'Yulia', '15 Januari 2023', 'NadiaAir', 'JAKARTA', 'Bussinness Class', '06 : 00', 1000000, 1, 1000000),
(4, 'Nurul', '10 Januari 2023', 'NadiaAir', 'YOGYAKARTA', 'Economy Class', '14 : 00', 900000, 2, 1800000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `id_level` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_user`, `id_level`) VALUES
(1, 'admin', 'admin123', 'Nadia', 1),
(3, 'user', 'user123', 'Yulia', 1),
(4, 'Nurul', 'nurul123', 'Nurul Huda', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jadwalpenerbangan`
--
ALTER TABLE `jadwalpenerbangan`
  ADD PRIMARY KEY (`id_penerbangan`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jadwalpenerbangan`
--
ALTER TABLE `jadwalpenerbangan`
  MODIFY `id_penerbangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
