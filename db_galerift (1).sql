-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Bulan Mei 2024 pada 06.28
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_galerift`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `album_id` int(11) NOT NULL,
  `nama_album` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggal_dibuat` date DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto`
--

CREATE TABLE `foto` (
  `foto_id` int(11) NOT NULL,
  `judul_foto` varchar(255) NOT NULL,
  `deskripsi_foto` text NOT NULL,
  `tanggal_unggah` date NOT NULL DEFAULT current_timestamp(),
  `lokasi_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `foto`
--

INSERT INTO `foto` (`foto_id`, `judul_foto`, `deskripsi_foto`, `tanggal_unggah`, `lokasi_file`) VALUES
(30, 'Jl. Braga Bandung', 'in a world full of trends, i want to remain a classic.', '2024-05-03', 'braga_jpg.jpg'),
(31, 'Jl. Asia Afrika', 'embracing the beauty of imperfection.', '2024-05-03', 'images_jpg.jpg'),
(32, 'Jl. Braga ', 'Life is an adventure, go explore.', '2024-05-03', 'jalanbraga_jpg.jpg'),
(33, 'Braga Citywalk', 'Happines is homemade.', '2024-05-03', 'bragacity_png.jpg'),
(34, 'Mokopi Garden', 'Sorround yourself with good vibes', '2024-05-03', 'mokopi-garden.jpg'),
(35, 'Kiara Condong', 'living in the moment, loving every second.', '2024-05-03', 'kircon.jpg'),
(36, 'Bandung', 'chasing my own version of succes.', '2024-05-03', 'images_(4).jpg'),
(37, 'Sunsets', 'spreading kindness wherever i go.', '2024-05-03', 'images_(3).jpg'),
(39, 'Coffeshop Umbira', 'finding peace in the midst of chaos.', '2024-05-03', 'Screenshot_20231008_073936_Instagram.jpg'),
(40, 'Jabarano Coffe', 'lletting go of what no longer serves.', '2024-05-03', 'Screenshot_20231230_154751_Instagram_(1).jpg'),
(41, 'Mokopi Garden', 'Choosing love over fear, every single time.', '2024-05-03', 'Screenshot_20231002_215904_Instagram.jpg'),
(42, 'Jurnalisa', 'collecting moments, not things.', '2024-05-03', 'Screenshot_20231230_154130_Instagram_(1).jpg'),
(43, 'Choosing joy', 'appreciating the beauty of simple moments.', '2024-05-03', 'Screenshot_20240102_075850_Instagram.jpg'),
(44, 'Braga ', 'believe u can and you\'re halfway there.', '2024-05-03', 'Screenshot_20231226_170624_Instagram1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar_foto`
--

CREATE TABLE `komentar_foto` (
  `komentar_id` int(11) NOT NULL,
  `foto_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `isi_komentar` text NOT NULL,
  `tanggal_komentar` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komentar_foto`
--

INSERT INTO `komentar_foto` (`komentar_id`, `foto_id`, `user_id`, `isi_komentar`, `tanggal_komentar`) VALUES
(11, 18, 1, 'keren', '2024-04-24'),
(14, 0, 0, 'keren banget', '0000-00-00'),
(15, 0, 0, '', '0000-00-00'),
(16, 0, 0, 'cantik banget', '0000-00-00'),
(17, 0, 0, 'wah bagus banget foto-fotonya', '0000-00-00'),
(18, 0, 0, 'p', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `like_foto`
--

CREATE TABLE `like_foto` (
  `like_id` int(11) NOT NULL,
  `foto_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tanggal_likie` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'Gigin Septiar', 'giginseptiar@gmail.com', 'default.png', '$2y$10$C4pNzRPyomfJuxqwgQalceMZJwfIMeg6/0lLvrwKNfJ4OIr023AIa', 2, 1, '0000-00-00'),
(2, 'Ilham Maulana', 'ilham@gmail.com', 'default.jpg', '$2y$10$eRrHjszjhdwHRBbfZ0lD.ehgXsWDx9anu5OYlNZ.26udKLxYyVfSS', 2, 1, '0000-00-00'),
(3, 'Administator', 'admin@gmail.com', 'default.jpg', '$2y$10$QYApJvlFv8CEDSnr7F37Yufulw.5DE7t.z5LgImSXpVBYm1wJ3lVS', 2, 1, '0000-00-00'),
(4, 'Tia', 'tiarmdni@gmail.com', 'default.jpg', '$2y$10$S2jF9qFCUZgGI.Z15v36HuTmy7PxREb2JDen6HeJBVl1CGixVplA.', 2, 1, '0000-00-00'),
(5, 'nabilash', 'bilaaash6@gmail.com', 'default.jpg', '$2y$10$Zd6Xc4J1Gu6exkMy11d0F.gRTrvrrXzW82NEMaXwY0KOjq1ws6Nxe', 2, 1, '0000-00-00');

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
(1, 'administator'),
(2, 'member');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`);

--
-- Indeks untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`foto_id`);

--
-- Indeks untuk tabel `komentar_foto`
--
ALTER TABLE `komentar_foto`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `foto_id` (`foto_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `like_foto`
--
ALTER TABLE `like_foto`
  ADD PRIMARY KEY (`like_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `foto`
--
ALTER TABLE `foto`
  MODIFY `foto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `komentar_foto`
--
ALTER TABLE `komentar_foto`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `like_foto`
--
ALTER TABLE `like_foto`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
