-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 07 Nov 2023 pada 07.37
-- Versi server: 8.0.31
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sim`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

DROP TABLE IF EXISTS `jurusan`;
CREATE TABLE IF NOT EXISTS `jurusan` (
  `id_jurusan` int NOT NULL AUTO_INCREMENT,
  `nama_jurusan` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `kaproli` varchar(50) NOT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

DROP TABLE IF EXISTS `kelas`;
CREATE TABLE IF NOT EXISTS `kelas` (
  `id_kelas` int NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(10) NOT NULL,
  `wali_kelas` varchar(25) NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

DROP TABLE IF EXISTS `pegawai`;
CREATE TABLE IF NOT EXISTS `pegawai` (
  `id_pegawai` int NOT NULL AUTO_INCREMENT,
  `nama_pegawai` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tempat _lahir_pegawai` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tanggal_lahir_pegawai` date NOT NULL,
  `agama` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status_perkawinan` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

DROP TABLE IF EXISTS `siswa`;
CREATE TABLE IF NOT EXISTS `siswa` (
  `id_siswa` int NOT NULL AUTO_INCREMENT,
  `nama_siswa` varchar(50) NOT NULL,
  `jk` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_kelas` int NOT NULL,
  `id_jurusan` int NOT NULL,
  `nisn` int NOT NULL,
  `nik` int NOT NULL,
  `tempat _lahir` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `warganegara` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `rt` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rw` varchar(10) NOT NULL,
  `kelurahan` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kecamatan` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kabupaten` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `provinsi` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kode_pos` int NOT NULL,
  `nama_ayah` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tempat_lahir_ayah` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tanggal_lahir_ayah` date NOT NULL,
  `pendidikan_ayah` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pekerjaan_ayah` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gaji_ayah` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `no_hp_ayah` int NOT NULL,
  `agama_ayah` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nama_ibu` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tempat_lahir_ibu` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tanggal_lahir_ibu` date NOT NULL,
  `pendidikan_ibu` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pekerjaan_ibu` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gaji_ibu` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `no_hp_ibu` int NOT NULL,
  `agama_ibu` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nama_wali` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tempat_lahir_wali` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tanggal_lahir_wali` date NOT NULL,
  `pendidikan_wali` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pekerjaan_wali` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gaji_wali` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `no_hp_wali` int NOT NULL,
  `agama_wali` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `foto_pribadi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `foto_kk` varchar(50) NOT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` int NOT NULL,
  `id_siswa` int NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
