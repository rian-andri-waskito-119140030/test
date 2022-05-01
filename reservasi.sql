-- phpMyAdmin SQL Dump
-- version 5.1.4-dev+20220420.d842c89d5c
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Bulan Mei 2022 pada 16.52
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reservasi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `lapangan`
--

CREATE TABLE `lapangan` (
  `id` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `jumlah` varchar(10) NOT NULL,
  `harga` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `lapangan`
--

INSERT INTO `lapangan` (`id`, `gambar`, `jenis`, `jumlah`, `harga`) VALUES
(1, 'single1.jpg', 'Single Room', '20', '280000'),
(2, 'twin1.jpg', 'Twin Room', '15', '350000'),
(3, 'deluxe1.jpg', 'Deluxe Room', '10', '420000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no` varchar(15) NOT NULL,
  `akses` enum('Admin','User') NOT NULL DEFAULT 'User',
  `gambar` varchar(100) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `email`, `no`, `akses`, `gambar`) VALUES
(1, 'putu', 'putu@gmail.com', '0987654321', 'Admin', '5_puisi.jpg'),
(2, 'cloud', 'visitor@gmail.com', '123', 'User', 'default.png'),
(3, 'tes', 'tes@gmail.com', '123', 'User', 'default.png'),
(4, 'rian', 'rian@gmail.com', '12345678', 'User', 'default.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `tgl_in` varchar(20) NOT NULL,
  `tgl_out` varchar(20) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `jenis` varchar(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no` varchar(15) NOT NULL,
  `status` enum('Confirm','Pending') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `tgl_in`, `tgl_out`, `jumlah`, `jenis`, `nama`, `email`, `no`, `status`) VALUES
(16, '15-Jul-2021', '16-Jul-2021', 2, 'Twin Room', 'cloud', 'visitor@gmail.com', '123', 'Pending'),
(17, '24-Aug-2021', '25-Aug-2021', 2, 'Twin Room', 'tes', 'tes@gmail.com', '123', 'Pending'),
(18, '11-May-2022', '11-May-2022', 2, 'Single Room', 'rian', 'rian@gmail.com', '12345678', 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `lapangan`
--
ALTER TABLE `lapangan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `lapangan`
--
ALTER TABLE `lapangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
