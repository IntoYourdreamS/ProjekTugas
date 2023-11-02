-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 02 Nov 2023 pada 01.10
-- Versi server: 8.0.31
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

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
  `kelas` int NOT NULL,
  `kode_kelas` varchar(50) NOT NULL,
  `wali_kelas` varchar(50) NOT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

DROP TABLE IF EXISTS `pegawai`;
CREATE TABLE IF NOT EXISTS `pegawai` (
  `id_pegawai` int NOT NULL AUTO_INCREMENT,
  `nama_pegawai` varchar(50) NOT NULL,
  `ttl` varchar(50) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `status_perkawinan` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

DROP TABLE IF EXISTS `siswa`;
CREATE TABLE IF NOT EXISTS `siswa` (
  `id_siswa` int NOT NULL AUTO_INCREMENT,
  `nama_siswa` varchar(50) NOT NULL,
  `jk` varchar(50) NOT NULL,
  `id_jurusan` int NOT NULL,
  `no_induk` int NOT NULL,
  `nik` int NOT NULL,
  `ttl` varchar(50) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `warganegara` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `rt_rw` varchar(50) NOT NULL,
  `dusun` varchar(50) NOT NULL,
  `kelurahan` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kabupaten` varchar(50) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `kode_pos` int NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `ttl_ayah` varchar(50) NOT NULL,
  `pendidikan_ayah` varchar(50) NOT NULL,
  `pekerjaan_ayah` varchar(50) NOT NULL,
  `gaji_ayah` varchar(50) NOT NULL,
  `no_hp_ayah` int NOT NULL,
  `agama_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `ttl_ibu` varchar(50) NOT NULL,
  `pendidikan_ibu` varchar(50) NOT NULL,
  `pekerjaan_ibu` varchar(50) NOT NULL,
  `gaji_ibu` varchar(50) NOT NULL,
  `no_hp_ibu` int NOT NULL,
  `agama_ibu` varchar(50) NOT NULL,
  `nama_wali` varchar(50) NOT NULL,
  `ttl_wali` varchar(50) NOT NULL,
  `pendidikan_wali` varchar(50) NOT NULL,
  `pekerjaan_wali` varchar(50) NOT NULL,
  `gaji_wali` varchar(50) NOT NULL,
  `no_hp_wali` int NOT NULL,
  `agama_wali` varchar(50) NOT NULL,
  `foto_bersama` varchar(50) NOT NULL,
  `foto_ktp` varchar(50) NOT NULL,
  `foto_kk` varchar(50) NOT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
