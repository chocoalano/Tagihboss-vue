-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 04 Bulan Mei 2021 pada 06.15
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tagih_boss_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `documentations_models`
--

CREATE TABLE `documentations_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `information` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attention` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorization` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` enum('active','nonactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `documentations_models`
--

INSERT INTO `documentations_models` (`id`, `title`, `slug`, `information`, `attention`, `authorization`, `state`, `created_by_name`, `created_at`, `updated_at`) VALUES
(2, 'Settings & Konfigurasi', 'settings-konfigurasi', 'Menu <b>Setting</b> adalah menu paling krusial didalam sistem, dikarenakan menu tersebut menyimpan <b>fungsi dan data fundamental</b> yang digunakan sistem untuk pengoprasianya. didalam menu tersebut <b>terdapat beberapa sub menu lainya yang juga menyimpan data fundamental</b> pendukung sistem.', '<ul><li>Menu <b>Setting</b> adalah menu paling krusial, pastikan menu Setting hanya di akses oleh <b>role group users</b> yang memiliki <b>capability</b>.</li><li>Menu&nbsp;<span style=\"font-weight: bolder;\">Setting</span>&nbsp;memiliki sub menu yang juga menyimpan <b>data fundamental</b> didalam sistem sebagai <b>parameter</b> pengoprasianya.</li></ul>', 'setting-list', 'active', 'alan', '2021-02-25 06:20:03', '2021-03-01 23:57:57'),
(3, 'Settings & konfigurasi Role Group User List', 'settings-konfigurasi-role-group-user-list', '<p><b>Submenu Role Group Users</b>&nbsp;adalah sub menu dari menu <b>Setting, </b>menu ini menyimpan seluruh data role grup user yang berfungsi menjadi parameter <b>authorization </b>setiap user yang masuk kedalam sistem (<b>login</b>) dan memvalidasi akses user serta menu yang akan di sajikan oleh sistem kepada user berdasarkan data <b>Permission </b>yang sudah diatur sebelumnya.</p>', '<p><span style=\"font-weight: bolder;\">Submenu Role Group Users </span>memiliki fungsi pada umumnya yakni <b>create, read, delete, &amp; update </b>yang telah disesuaikan dengan data <b>permission</b> sebelumnya.<br></p>', 'role-list', 'active', 'alan', '2021-03-02 00:08:53', '2021-03-02 00:08:53'),
(4, 'Settings & konfigurasi role group user create', 'settings-konfigurasi-role-group-user-create', '<p>Submenu Role Group Users&nbsp;adalah sub menu dari menu&nbsp;Setting,&nbsp;menu ini menyimpan seluruh data role grup user yang berfungsi menjadi parameter&nbsp;authorization&nbsp;setiap user yang masuk kedalam sistem (login) dan memvalidasi akses user serta menu yang akan di sajikan oleh sistem kepada user berdasarkan data&nbsp;Permission&nbsp;yang sudah diatur sebelumnya.</p><p><strong>1. Fungsi</strong></p><p>Fungsi <strong>create</strong>&nbsp;pada&nbsp;Submenu Role Group Users&nbsp;adalah suatu fungsi untuk membuat <strong>role group users baru, </strong>dan menyesuaikan seluruh hak akses yang akan diberikan kepada <strong>role group users</strong> tersebut.</p><p><strong>2. Validation</strong></p><p>Fungsi&nbsp;create&nbsp;pada&nbsp;Submenu Role Group Users&nbsp;juga dilengkapi dengan validasi disetiap form input yang disajikan sistem ketika user hendak akan membuat role group users baru. Fungsi ini akan berjalan dengan dipicu oleh tombol submit pada form create yang disajikan sistem.</p><p><strong>3. Submit/Save/Simpan</strong></p><p>Fungsi&nbsp;create&nbsp;pada&nbsp;Submenu Role Group Users&nbsp;juga dilengkapi dengan <strong>button submit/save/simpan </strong>yang akan memicu validation pada form dan memproses data dedalam database sistem.<strong><br></strong></p>', '<ul><li>Form create dilengkapi dengan <b>serverside validation</b> sebagai cara untuk mempermudah user dalam pengelolaan serta penggunaan nya pastikan user<b> mengikuti intruksi form input.</b></li><li><b>serverside validation</b>&nbsp;juga akan membantu mengurangi resource pada file javascript didalam sistem.</li></ul>', 'role-create', 'active', 'alan', '2021-03-02 00:30:15', '2021-04-20 06:33:29'),
(5, 'Settings & konfigurasi role group user edit', 'settings-konfigurasi-role-group-user-edit', '<p>Submenu Role Group Users&nbsp;adalah sub menu dari menu&nbsp;Setting,&nbsp;menu ini menyimpan seluruh data role grup user yang berfungsi menjadi parameter&nbsp;authorization&nbsp;setiap user yang masuk kedalam sistem (login) dan memvalidasi akses user serta menu yang akan di sajikan oleh sistem kepada user berdasarkan data&nbsp;Permission&nbsp;yang sudah diatur sebelumnya.</p><p><strong>1. Fungsi</strong></p><p>Fungsi <strong>edit</strong>&nbsp;pada&nbsp;Submenu Role Group Users&nbsp;adalah suatu fungsi untuk membuat <strong>role group users baru, </strong>dan menyesuaikan seluruh hak akses yang akan diberikan kepada <strong>role group users</strong> tersebut.</p><p><strong>2. Validation</strong></p><p>Fungsi&nbsp;edit&nbsp;pada&nbsp;Submenu Role Group Users&nbsp;juga dilengkapi dengan validasi disetiap form input yang disajikan sistem ketika user hendak akan membuat role group users baru. Fungsi ini akan berjalan dengan dipicu oleh tombol submit pada form edit yang disajikan sistem.</p><p><strong>3. Submit/Save/Simpan</strong></p><p>Fungsi&nbsp;edit&nbsp;pada&nbsp;Submenu Role Group Users&nbsp;juga dilengkapi dengan <strong>button submit/save/simpan </strong>yang akan memicu validation pada form dan memproses data dedalam database sistem.</p>', '<ul><li>Form edit dilengkapi dengan <strong>serverside validation</strong> sebagai cara untuk mempermudah user dalam pengelolaan serta penggunaan nya pastikan user<strong> mengikuti intruksi form input.</strong></li><li><strong>serverside validation</strong>&nbsp;juga akan membantu mengurangi resource pada file javascript didalam sistem.</li></ul><p><br></p>', 'role-edit', 'active', 'alan', '2021-04-20 06:54:45', '2021-04-20 06:54:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `infocoll_models`
--

CREATE TABLE `infocoll_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `information` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` enum('active','nonactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `infocoll_models`
--

INSERT INTO `infocoll_models` (`id`, `title`, `slug`, `information`, `state`, `created_at`, `updated_at`) VALUES
(1, 'Sebelah Mata Ku Yang Lain Menyinari', 'sebelah-mata-ku-yang-lain-menyinari', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'active', '2021-02-23 08:43:23', '2021-02-23 09:00:52'),
(2, 'Akses Menu Settings', 'akses-menu-settings', '<ol><li style=\"text-align: justify;\"><b>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</b></li><li style=\"text-align: justify;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</li><li style=\"text-align: justify;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</li><li style=\"text-align: justify;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</li><li style=\"text-align: justify;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</li><li style=\"text-align: justify;\">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</li></ol>', 'active', '2021-02-25 00:56:23', '2021-02-25 00:56:23'),
(3, 'data testing', 'data-testing', '<p><strong>lorem data testing</strong></p>', 'nonactive', '2021-04-20 04:04:23', '2021-04-20 04:04:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_timelines_models`
--

CREATE TABLE `log_timelines_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_in_apps` enum('true','false') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `boot` enum('true','false') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `device` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser_engine` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `log_timelines_models`
--

INSERT INTO `log_timelines_models` (`id`, `user_id`, `name`, `title`, `event`, `description`, `ip_address`, `platform`, `is_in_apps`, `boot`, `device`, `browser`, `browser_engine`, `agent`, `created_at`, `updated_at`) VALUES
(1, 5, 'alan', 'authenticated', 'login', 'User dengan akun username: alan telah berhasil login non sync micro bpr online.', '127.0.0.1', 'GNU/Linux', 'false', 'false', 'Computer/Laptop/Notebook', 'Chrome version 89.0.4389', 'Blink', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-25 03:15:24', '2021-03-25 03:15:24'),
(2, 5, 'alan', 'home access', 'access', 'User dengan akun username: alan telah mengakses menu home.', '127.0.0.1', 'GNU/Linux', 'false', 'false', 'Computer/Laptop/Notebook', 'Chrome version 89.0.4389', 'Blink', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-25 03:15:26', '2021-03-25 03:15:26'),
(3, 5, 'alan', 'activity access', 'access', 'User dengan akun username: alan telah mengakses submenu activity pada menu task list.', '127.0.0.1', 'GNU/Linux', 'false', 'false', 'Computer/Laptop/Notebook', 'Chrome version 89.0.4389', 'Blink', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-25 03:15:36', '2021-03-25 03:15:36'),
(4, 5, 'alan', 'activity access', 'access', 'User dengan akun username: alan telah mengakses submenu activity pada menu task list.', '127.0.0.1', 'GNU/Linux', 'false', 'false', 'Computer/Laptop/Notebook', 'Chrome version 89.0.4389', 'Blink', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-25 03:16:03', '2021-03-25 03:16:03'),
(5, 5, 'alan', 'activity access', 'access', 'User dengan akun username: alan telah mengakses submenu activity pada menu task list.', '127.0.0.1', 'GNU/Linux', 'false', 'false', 'Computer/Laptop/Notebook', 'Chrome version 89.0.4389', 'Blink', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-25 03:21:21', '2021-03-25 03:21:21'),
(6, 5, 'alan', 'authenticated', 'login', 'User dengan akun username: alan telah berhasil login non sync micro bpr online.', '127.0.0.1', 'GNU/Linux', 'false', 'false', 'Computer/Laptop/Notebook', 'Chrome version 89.0.4389', 'Blink', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-25 05:22:10', '2021-03-25 05:22:10'),
(7, 5, 'alan', 'home access', 'access', 'User dengan akun username: alan telah mengakses menu home.', '127.0.0.1', 'GNU/Linux', 'false', 'false', 'Computer/Laptop/Notebook', 'Chrome version 89.0.4389', 'Blink', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', '2021-03-25 05:22:13', '2021-03-25 05:22:13'),
(8, 5, 'alan', 'authenticated', 'login', 'User dengan akun username: alan telah berhasil login non sync micro bpr online.', '127.0.0.1', 'GNU/Linux', 'false', 'false', 'Computer/Laptop/Notebook', 'Chrome version 89.0.4389', 'Blink', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2021-04-07 02:39:06', '2021-04-07 02:39:06'),
(9, 5, 'alan', 'home access', 'access', 'User dengan akun username: alan telah mengakses menu home.', '127.0.0.1', 'GNU/Linux', 'false', 'false', 'Computer/Laptop/Notebook', 'Chrome version 89.0.4389', 'Blink', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2021-04-07 02:39:08', '2021-04-07 02:39:08'),
(10, 5, 'alan', 'store', 'store', 'User dengan akun username: alan telah menambahkan activity baru dengan task_code: 34776180421 pada tab activity yang terdapat pada menu task assigment.', '127.0.0.1', 'GNU/Linux', 'false', 'false', 'Computer/Laptop/Notebook', 'Chrome version 90.0.4430', 'Blink', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', '2021-04-18 05:35:29', '2021-04-18 05:35:29'),
(11, 5, 'alan', 'store', 'store', 'User dengan akun username: alan telah menambahkan activity baru dengan task_code: 34775180421 pada tab activity yang terdapat pada menu task assigment.', '127.0.0.1', 'GNU/Linux', 'false', 'false', 'Computer/Laptop/Notebook', 'Chrome version 90.0.4430', 'Blink', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', '2021-04-18 05:37:40', '2021-04-18 05:37:40'),
(12, 5, 'alan', 'store', 'store', 'User dengan akun username: alan telah menambahkan activity baru dengan task_code: 34774180421 pada tab activity yang terdapat pada menu task assigment.', '127.0.0.1', 'GNU/Linux', 'false', 'false', 'Computer/Laptop/Notebook', 'Chrome version 90.0.4430', 'Blink', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', '2021-04-18 05:40:23', '2021-04-18 05:40:23'),
(13, 5, 'alan', 'store', 'store', 'User dengan akun username: alan telah menambahkan activity baru dengan task_code: 34774180421 pada tab activity yang terdapat pada menu task assigment.', '127.0.0.1', 'GNU/Linux', 'false', 'false', 'Computer/Laptop/Notebook', 'Chrome version 90.0.4430', 'Blink', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', '2021-04-18 05:41:48', '2021-04-18 05:41:48'),
(14, 5, 'alan', 'store', 'store', 'User dengan akun username: alan telah menambahkan activity baru dengan task_code: 34774180421 pada tab activity yang terdapat pada menu task assigment.', '127.0.0.1', 'GNU/Linux', 'false', 'false', 'Computer/Laptop/Notebook', 'Chrome version 90.0.4430', 'Blink', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', '2021-04-18 05:43:04', '2021-04-18 05:43:04'),
(15, 5, 'alan', 'store', 'store', 'User dengan akun username: alan telah menambahkan activity baru dengan task_code: 36129190421 pada tab activity yang terdapat pada menu task assigment.', '127.0.0.1', 'GNU/Linux', 'false', 'false', 'Computer/Laptop/Notebook', 'Chrome version 90.0.4430', 'Blink', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', '2021-04-19 04:51:29', '2021-04-19 04:51:29'),
(16, 5, 'alan', 'visit store', 'store', 'User dengan akun username: alan telah menambahkan visit tempat tinggal baru dengan task_code: 36129190421 pada form visit yang terdapat pada menu task assigment.', '127.0.0.1', 'GNU/Linux', 'false', 'false', 'Computer/Laptop/Notebook', 'Chrome version 90.0.4430', 'Blink', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', '2021-04-19 07:04:02', '2021-04-19 07:04:02'),
(17, 5, 'alan', 'activity update', 'activity', 'User dengan akun username: alan telah memperbaharui data activity dengan taskcode: 34780180421 pada menu master activity.', '127.0.0.1', 'GNU/Linux', 'false', 'false', 'Computer/Laptop/Notebook', 'Chrome version 90.0.4430', 'Blink', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', '2021-04-21 01:56:13', '2021-04-21 01:56:13'),
(18, 5, 'alan', 'activity delete', 'activity', 'User dengan akun username: alan telah menghapus data activity dengan taskcode: 36129190421 pada menu master activity.', '127.0.0.1', 'GNU/Linux', 'false', 'false', 'Computer/Laptop/Notebook', 'Chrome version 90.0.4430', 'Blink', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', '2021-04-21 01:58:39', '2021-04-21 01:58:39'),
(19, 5, 'alan', 'store', 'activity', 'User dengan akun username: alan telah menambahkan activity baru dengan task_code: 38831210421 pada tab activity yang terdapat pada menu task assigment.', '127.0.0.1', 'GNU/Linux', 'false', 'false', 'Computer/Laptop/Notebook', 'Chrome version 90.0.4430', 'Blink', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', '2021-04-21 03:23:00', '2021-04-21 03:23:00'),
(20, 5, 'alan', 'visit store', 'visit', 'User dengan akun username: alan telah menambahkan visit tempat tinggal baru dengan task_code: 38831210421 pada form visit yang terdapat pada menu task assigment.', '127.0.0.1', 'GNU/Linux', 'false', 'false', 'Computer/Laptop/Notebook', 'Chrome version 90.0.4430', 'Blink', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', '2021-04-21 03:27:27', '2021-04-21 03:27:27'),
(21, 5, 'alan', 'store', 'activity', 'User dengan akun username: alan telah menambahkan activity baru dengan task_code: 38830210421 pada tab activity yang terdapat pada menu task assigment.', '127.0.0.1', 'Android 6.0.1', 'false', 'false', 'Mobilephone/Smartphone Device Motorola model: Moto G4 grade: A', 'Chrome Mobile version 90.0.4430', 'Blink', 'Mozilla/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Mobile Safari/537.36', '2021-04-21 07:46:39', '2021-04-21 07:46:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_asset_debiturs`
--

CREATE TABLE `master_asset_debiturs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `options` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_asset_debiturs`
--

INSERT INTO `master_asset_debiturs` (`id`, `options`) VALUES
(1, 'Jaminan'),
(2, 'Hunian'),
(3, 'Disewakan'),
(4, 'Kosong');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_case_categories`
--

CREATE TABLE `master_case_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `options` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_case_categories`
--

INSERT INTO `master_case_categories` (`id`, `options`) VALUES
(1, 'Debitur Tidak Kooperatif'),
(2, 'Debitur Hilang'),
(3, 'Asset Atau Debitur Terkena Kasus Hukum'),
(4, 'Perusahaan Debitur Bangkrut'),
(5, 'Pindah Tangan Pihak Ke-3/Overkredit'),
(6, 'Penghasilan Tidak Tetap/Menurun'),
(7, 'Debitur Dikeluarkan Dari Pekerjaan/Perusahaan'),
(8, 'Debitur Pindah Rumah'),
(9, 'Sudah Bayar'),
(10, 'Belum Terkunjungi'),
(11, 'Perbedaan Tanggal JT Dan Penggajian'),
(12, 'Error Sistem'),
(13, 'Bencana Alam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_kondisi_pekerjaans`
--

CREATE TABLE `master_kondisi_pekerjaans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `options` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_kondisi_pekerjaans`
--

INSERT INTO `master_kondisi_pekerjaans` (`id`, `options`) VALUES
(1, 'Masih Bekerja'),
(2, 'Menganggur'),
(3, 'Kondisi Bisnis Baik'),
(4, 'Kondisi Bisnis Tidak Baik'),
(5, 'Kondisi Bisnis Bangkrut');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_next_actions`
--

CREATE TABLE `master_next_actions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `options` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `master_next_actions`
--

INSERT INTO `master_next_actions` (`id`, `options`) VALUES
(1, 'Dikunjungi Kembali'),
(2, 'Proses Claim Asuransi'),
(3, 'Pemanggilan Litigasi'),
(4, 'Proses Lelang'),
(5, 'Proses Jual Jaminan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('main-menu','sub-menu') COLLATE utf8mb4_unicode_ci NOT NULL,
  `masters_id` int(11) NOT NULL,
  `icon` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hrefjs` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorization` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `name`, `type`, `masters_id`, `icon`, `hrefjs`, `link`, `authorization`, `list`, `created_at`, `updated_at`) VALUES
(1, 'Setting', 'main-menu', 0, 'micon dw dw-settings2', 'javascript:void(0)', 'javascript:void(0)', 'setting-list', 1, '2021-02-01 04:56:32', '2021-02-01 04:56:32'),
(2, 'Roles', 'sub-menu', 1, '', '#roles', 'roles.index', 'role-list', 1, '2021-02-01 04:58:31', '2021-02-01 04:58:31'),
(3, 'Konfigurasi Menu', 'sub-menu', 1, '', '#menus', 'menus.index', 'menu-list', 2, '2021-02-01 06:30:41', '2021-02-01 06:30:41'),
(4, 'Konfigurasi User', 'sub-menu', 1, '', '#users', 'users.index', 'user-list', 3, '2021-02-01 06:30:41', '2021-02-01 06:30:41'),
(6, 'Task List', 'main-menu', 0, 'micon dw dw-list3', 'javascript:void(0)', 'javascript:void(0)', 'tasklist-list', 3, '2021-02-07 23:22:25', '2021-02-07 23:22:25'),
(13, 'Information', 'main-menu', 0, 'micon dw dw-chat3', 'javascript:void(0)', 'javascript:void(0)', 'infocoll-list', 5, '2021-02-08 00:18:14', '2021-02-08 00:20:33'),
(14, 'Collections', 'sub-menu', 13, NULL, '#infocolls', 'infocolls.index', 'infocoll-list', 1, '2021-02-08 00:23:26', '2021-02-08 00:23:26'),
(15, 'Documentation', 'sub-menu', 13, NULL, '', 'documentations.index', 'documentation-list', 2, '2021-02-24 22:02:33', '2021-02-24 22:02:33'),
(16, 'Visit', 'sub-menu', 6, NULL, '', 'visits.index', 'visit-list', 2, '2021-03-06 22:48:59', '2021-03-06 22:48:59'),
(17, 'Activity', 'sub-menu', 6, NULL, '', 'activitys.index', 'activity-list', 3, '2021-03-06 22:53:50', '2021-03-06 22:53:50'),
(18, 'Payment', 'sub-menu', 6, NULL, '', 'payments.index', 'payment-list', 4, '2021-03-06 22:55:28', '2021-03-06 22:55:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_01_022724_create_permission_tables', 1),
(5, '2021_02_01_044401_create_menus_table', 2),
(6, '2021_02_15_160615_create_master_kondisi_pekerjaans_table', 3),
(7, '2021_02_15_160730_create_master_asset_debiturs_table', 3),
(8, '2021_02_15_160757_create_master_case_categories_table', 3),
(9, '2021_02_15_160821_create_master_next_actions_table', 3),
(10, '2021_02_23_145118_create_infocoll_models_table', 4),
(11, '2021_02_24_085742_create_log_timelines_models_table', 5),
(12, '2021_02_25_033323_create_documentations_models_table', 6),
(14, '2021_02_27_071830_create_notification_models_table', 7),
(15, '2021_02_28_154040_create_userrole_view', 8),
(21, '2016_06_01_000001_create_oauth_auth_codes_table', 9),
(22, '2016_06_01_000002_create_oauth_access_tokens_table', 9),
(23, '2016_06_01_000003_create_oauth_refresh_tokens_table', 9),
(24, '2016_06_01_000004_create_oauth_clients_table', 9),
(25, '2016_06_01_000005_create_oauth_personal_access_clients_table', 9),
(26, '2021_04_18_200019_create_push_subscriptions_table', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 6),
(4, 'App\\User', 5),
(4, 'App\\User', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notification_models`
--

CREATE TABLE `notification_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event` enum('visit','activity','payment','helper') COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_show` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `notification_models`
--

INSERT INTO `notification_models` (`id`, `event`, `user_id`, `desc`, `link_show`, `created_at`, `updated_at`) VALUES
(1, '', 5, 'Alan telah menambahkan activity baru dengan no pengajuan : 42-38-00006-19.', 'activity', '2021-04-18 05:35:29', '2021-04-18 05:35:29'),
(2, '', 5, 'Alan telah menambahkan activity baru dengan no pengajuan : 42-38-00002-19.', 'activity', '2021-04-18 05:37:41', '2021-04-18 05:37:41'),
(3, '', 5, 'Alan telah menambahkan activity baru dengan no pengajuan : 42-012-00003-18.', 'activity', '2021-04-18 05:40:23', '2021-04-18 05:40:23'),
(4, '', 5, 'Alan telah menambahkan activity baru dengan no pengajuan : 42-012-00003-18.', 'activity', '2021-04-18 05:41:48', '2021-04-18 05:41:48'),
(5, '', 5, 'Alan telah menambahkan activity baru dengan no pengajuan : 42-012-00003-18.', 'activity', '2021-04-18 05:43:05', '2021-04-18 05:43:05'),
(6, '', 5, 'Alan telah menambahkan activity baru dengan no pengajuan : 42-40-00001-19.', 'activity', '2021-04-19 04:51:29', '2021-04-19 04:51:29'),
(7, '', 5, 'Alan telah menambahkan visit tempat tinggal baru dengan no pengajuan : 42-40-00001-19.', 'visit', '2021-04-19 07:04:04', '2021-04-19 07:04:04'),
(8, 'activity', 5, 'Alan telah memperbaharui data activity dengan no taskcode : 34780180421.', 'activity', '2021-04-21 01:56:13', '2021-04-21 01:56:13'),
(9, 'activity', 5, 'Alan telah menghapus data activity dengan no taskcode : 36129190421.', 'activity', '2021-04-21 01:58:39', '2021-04-21 01:58:39'),
(10, 'activity', 5, 'Alan telah menambahkan activity baru dengan no pengajuan : 16-53-00038-20.', 'activity', '2021-04-21 03:23:00', '2021-04-21 03:23:00'),
(11, 'visit', 5, 'Alan telah menambahkan visit tempat tinggal baru dengan no pengajuan : 16-53-00038-20.', 'visit', '2021-04-21 03:27:27', '2021-04-21 03:27:27'),
(12, 'activity', 5, 'Alan telah menambahkan activity baru dengan no pengajuan : 16-53-00035-20.', 'activity', '2021-04-21 07:46:39', '2021-04-21 07:46:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `notification_to`
--

CREATE TABLE `notification_to` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notification_models_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `show` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `notification_to`
--

INSERT INTO `notification_to` (`id`, `notification_models_id`, `user_id`, `show`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'n', '2021-04-18 05:35:29', '2021-04-18 05:35:29'),
(2, 1, 0, 'n', '2021-04-18 05:35:30', '2021-04-18 05:35:30'),
(3, 1, 0, 'n', '2021-04-18 05:35:30', '2021-04-18 05:35:30'),
(4, 1, 5, 'n', '2021-04-18 05:35:30', '2021-04-18 05:35:30'),
(5, 2, 0, 'n', '2021-04-18 05:37:41', '2021-04-18 05:37:41'),
(6, 2, 0, 'n', '2021-04-18 05:37:41', '2021-04-18 05:37:41'),
(7, 2, 0, 'n', '2021-04-18 05:37:41', '2021-04-18 05:37:41'),
(8, 2, 5, 'n', '2021-04-18 05:37:41', '2021-04-18 05:37:41'),
(9, 3, 0, 'n', '2021-04-18 05:40:24', '2021-04-18 05:40:24'),
(10, 3, 0, 'n', '2021-04-18 05:40:24', '2021-04-18 05:40:24'),
(11, 3, 0, 'n', '2021-04-18 05:40:24', '2021-04-18 05:40:24'),
(12, 3, 5, 'n', '2021-04-18 05:40:24', '2021-04-18 05:40:24'),
(13, 4, 0, 'n', '2021-04-18 05:41:48', '2021-04-18 05:41:48'),
(14, 4, 0, 'n', '2021-04-18 05:41:48', '2021-04-18 05:41:48'),
(15, 4, 0, 'n', '2021-04-18 05:41:48', '2021-04-18 05:41:48'),
(16, 4, 5, 'n', '2021-04-18 05:41:48', '2021-04-18 05:41:48'),
(17, 5, 0, 'n', '2021-04-18 05:43:05', '2021-04-18 05:43:05'),
(18, 5, 0, 'n', '2021-04-18 05:43:05', '2021-04-18 05:43:05'),
(19, 5, 0, 'n', '2021-04-18 05:43:05', '2021-04-18 05:43:05'),
(20, 5, 5, 'n', '2021-04-18 05:43:05', '2021-04-18 05:43:05'),
(21, 6, 0, 'n', '2021-04-19 04:51:30', '2021-04-19 04:51:30'),
(22, 6, 0, 'n', '2021-04-19 04:51:30', '2021-04-19 04:51:30'),
(23, 6, 0, 'n', '2021-04-19 04:51:30', '2021-04-19 04:51:30'),
(24, 6, 5, 'n', '2021-04-19 04:51:30', '2021-04-19 04:51:30'),
(25, 7, 0, 'n', '2021-04-19 07:04:04', '2021-04-19 07:04:04'),
(26, 7, 0, 'n', '2021-04-19 07:04:05', '2021-04-19 07:04:05'),
(27, 7, 0, 'n', '2021-04-19 07:04:05', '2021-04-19 07:04:05'),
(28, 7, 5, 'n', '2021-04-19 07:04:05', '2021-04-19 07:04:05'),
(29, 8, 0, 'n', '2021-04-21 01:56:13', '2021-04-21 01:56:13'),
(30, 8, 0, 'n', '2021-04-21 01:56:13', '2021-04-21 01:56:13'),
(31, 8, 0, 'n', '2021-04-21 01:56:13', '2021-04-21 01:56:13'),
(32, 8, 5, 'n', '2021-04-21 01:56:13', '2021-04-21 01:56:13'),
(33, 9, 0, 'n', '2021-04-21 01:58:39', '2021-04-21 01:58:39'),
(34, 9, 0, 'n', '2021-04-21 01:58:40', '2021-04-21 01:58:40'),
(35, 9, 0, 'n', '2021-04-21 01:58:40', '2021-04-21 01:58:40'),
(36, 9, 5, 'y', '2021-04-21 01:58:40', '2021-04-21 02:15:52'),
(37, 10, 0, 'n', '2021-04-21 03:23:00', '2021-04-21 03:23:00'),
(38, 10, 0, 'n', '2021-04-21 03:23:00', '2021-04-21 03:23:00'),
(39, 10, 0, 'n', '2021-04-21 03:23:00', '2021-04-21 03:23:00'),
(40, 10, 5, 'n', '2021-04-21 03:23:00', '2021-04-21 03:23:00'),
(41, 11, 0, 'n', '2021-04-21 03:27:27', '2021-04-21 03:27:27'),
(42, 11, 0, 'n', '2021-04-21 03:27:27', '2021-04-21 03:27:27'),
(43, 11, 0, 'n', '2021-04-21 03:27:27', '2021-04-21 03:27:27'),
(44, 11, 5, 'y', '2021-04-21 03:27:27', '2021-04-21 06:17:11'),
(45, 12, 0, 'n', '2021-04-21 07:46:39', '2021-04-21 07:46:39'),
(46, 12, 0, 'n', '2021-04-21 07:46:40', '2021-04-21 07:46:40'),
(47, 12, 0, 'n', '2021-04-21 07:46:40', '2021-04-21 07:46:40'),
(48, 12, 5, 'y', '2021-04-21 07:46:40', '2021-04-21 07:47:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('02232592c4ab26a145b9012fc718d84cb150c08c9752c4724938451fef153875cc7f2f1421e4053a', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 1, '2021-03-22 05:55:35', '2021-03-22 05:55:35', '2022-03-22 12:55:35'),
('11e15b964b2acc5ade76604a06b8a2517b0df51c4afc3cb5de6529cb2935bac10271e79771b4e7e4', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 0, '2021-04-11 17:49:21', '2021-04-11 17:49:21', '2022-04-12 00:49:21'),
('176d5c09c0177d605549fc8c273217df1598334e06b70cff51371050b4680bbfed86c729416cdc97', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 0, '2021-04-21 03:17:25', '2021-04-21 03:17:25', '2022-04-21 10:17:25'),
('17a75ebb3b6ccac310f5db40edd3df043a480a0763bdf77f67d3414f28b34cd229c7a09126bbbee0', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 0, '2021-04-14 01:45:39', '2021-04-14 01:45:39', '2022-04-14 08:45:39'),
('1a1d832f3021b578fd56976afb1f422bd4a4c929636a7da037362a3fd300d34672c806b5bbfe8e33', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 1, '2021-04-13 01:41:32', '2021-04-13 01:41:32', '2022-04-13 08:41:32'),
('1becac770a8aadb44d134991a64630a6cd9c3b6cc05886eb5a1307e96d860d07503f6e8edc97660a', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 0, '2021-04-21 09:00:32', '2021-04-21 09:00:32', '2022-04-21 16:00:32'),
('1d1b8b3560cc62e9149a9f58c694b8509531ad61726608c8dffad7b52cd22fbd29be6816a963a110', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 0, '2021-04-08 02:06:13', '2021-04-08 02:06:13', '2022-04-08 09:06:13'),
('291af33c783f46c4c3425495c67c9acd33679204e9411ab77c7563d7806377f4eaf064721db9f437', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 0, '2021-03-25 19:39:38', '2021-03-25 19:39:38', '2022-03-26 02:39:38'),
('2f5d07bb0be225404786b0336e8c3543163617a061381ae54b415217be7f78cfab3f5c45583433e7', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 0, '2021-03-25 18:30:45', '2021-03-25 18:30:45', '2022-03-26 01:30:45'),
('33ee79a011e5d6e494ad6bf2a547005b3cc83996a0a35d861f215c9bcc095242d1cea8bbfa030828', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 0, '2021-04-07 02:43:13', '2021-04-07 02:43:13', '2022-04-07 09:43:13'),
('3ee8a7d8bbc8deccad6afd4dda123307dc9f5cac90291fa59b98adb82371337b376dedd732c61a25', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 0, '2021-04-18 13:42:37', '2021-04-18 13:42:37', '2022-04-18 20:42:37'),
('3f2dc55dbb74f8552d343f0fcc1c5bbcf48ed3b5a900209662d550a62309b395193d5e961661b8f1', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 0, '2021-04-08 07:18:30', '2021-04-08 07:18:30', '2022-04-08 14:18:30'),
('40f2c703f84a3cf2ee60d5938573355baa5598db3771786d056bfb80bd16e0cd92d91522f20e8086', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 0, '2021-04-10 07:17:35', '2021-04-10 07:17:35', '2022-04-10 14:17:35'),
('43ec9e8457209993eed7b918e5c42403252d614848a214a52191e58dbe9dddb712aa8fc836348352', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 1, '2021-03-25 19:00:18', '2021-03-25 19:00:18', '2022-03-26 02:00:18'),
('4852593a3602472c885faa61483610dd142a65598b8e4e1b18dbde8c69fcd924adf486b40ac70a3a', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 0, '2021-04-07 03:52:08', '2021-04-07 03:52:08', '2022-04-07 10:52:08'),
('4d8ed5a53f39680950edc7b1ab80ef76e9055718c85dbd5ec36b31140395d9948c335d5e56ecdac1', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 0, '2021-03-25 19:00:45', '2021-03-25 19:00:45', '2022-03-26 02:00:45'),
('4ed52913dc8aadc801903b051d57deae89697222832819fec87b9a3b188c816adb882b181b1ca6a5', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 0, '2021-04-17 06:32:20', '2021-04-17 06:32:20', '2022-04-17 13:32:20'),
('519ad750403736c92f3897b67c877e00a74006491cb87e842492541c7060b11ee361e067bfb860bd', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 0, '2021-04-16 10:41:38', '2021-04-16 10:41:38', '2022-04-16 17:41:38'),
('531b01eef07f9bae8922303ee231d74cf4f8d9d0579ea16d1a38ffeec9174bf993f3049ada4f497e', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 0, '2021-04-07 06:13:13', '2021-04-07 06:13:13', '2022-04-07 13:13:13'),
('587c06468cb2eab58e382d13d546eca02ed71dbec52318c98fa0b6de7108046901b50fa1ce12b4ac', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 0, '2021-03-25 20:00:28', '2021-03-25 20:00:28', '2022-03-26 03:00:28'),
('6311002515e1a0139b31efc516df1157af536c530298827973cf2d0cebdffa298ad8d7ab154a51b0', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 0, '2021-03-25 19:42:09', '2021-03-25 19:42:09', '2022-03-26 02:42:09'),
('63ccfc7466e32583b84c2cfecb99736ab1e58914d45d1120faa8238af6e5c33769c866bf5524e063', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 0, '2021-04-18 05:24:23', '2021-04-18 05:24:23', '2022-04-18 12:24:23'),
('673a070cfcbb1b967f4dd19de63c5ffab91add6fb1aa1093a6d4bec2205270115961670591358971', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 0, '2021-04-20 01:34:15', '2021-04-20 01:34:15', '2022-04-20 08:34:15'),
('6e9ec3081009cdcdcb1e86fe97faa476a0f36eb60d5a84491caf1d8defcc385188eac888317453d3', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 0, '2021-04-21 03:11:42', '2021-04-21 03:11:42', '2022-04-21 10:11:42'),
('7024599deb0f5642e5fec39b107f5659dcfea0ac731f22c8fe0bb58d7f9502c2321e453c88215be1', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 0, '2021-04-17 06:23:18', '2021-04-17 06:23:18', '2022-04-17 13:23:18'),
('7af42c53377795b362fea63337b15ad17d7a612493ae834abf137fb1039e5e797d5d5efac10f25c5', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 0, '2021-04-17 23:00:25', '2021-04-17 23:00:25', '2022-04-18 06:00:25'),
('8531ca0a2f4d0e2ce49101c8595f95f261e992f800e91b314429507c8108beb3a5cf0b94d74cef5c', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 0, '2021-03-22 18:28:33', '2021-03-22 18:28:33', '2022-03-23 01:28:33'),
('89f915d612d97d608b3d769593b281875f1ae7a9d52060c6535a26467e4083674e75e62b2dc2ac16', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 0, '2021-04-18 05:16:23', '2021-04-18 05:16:23', '2022-04-18 12:16:23'),
('8bc01a7b6979df2d9668ba9b0c9d2d1c2e59cc700e93b2b9f9a2ee18de1b8c2f2c6b4a22ad180e5f', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 0, '2021-04-16 10:38:46', '2021-04-16 10:38:46', '2022-04-16 17:38:46'),
('92ab00736f0e8a1467116e06c543d00ca2d874590f4e34fc382acbe9ac6d353a027839532b81540e', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 0, '2021-03-22 18:04:17', '2021-03-22 18:04:17', '2022-03-23 01:04:17'),
('9997bace633d19ae5145fcf6b6b34bdfa36ce2faf5d09d04bd196c47dc8369fe6e94053f8d96750c', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 0, '2021-04-07 02:59:16', '2021-04-07 02:59:16', '2022-04-07 09:59:16'),
('9cc38cdd70e9cdfe6e63e97ed979b9e642fcadf1c6bb4181c6f0ccce0849fe61bf8190ec12961351', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 1, '2021-03-22 17:22:13', '2021-03-22 17:22:13', '2022-03-23 00:22:13'),
('b5f971905b1e1c73e0d8bca83ba58abf383e63f4cf939daf48da12cf430765fbf31ba3c257aa9b8b', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 0, '2021-03-22 17:22:36', '2021-03-22 17:22:36', '2022-03-23 00:22:36'),
('bff3c8bab205fba86539f897fee97b9c92eb1e54f97f06a08b4213ee0677b6315fab64f19847a48d', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 0, '2021-03-25 19:45:23', '2021-03-25 19:45:23', '2022-03-26 02:45:23'),
('c25626ff23d2ad418ea7589558635ce1c65c6010ed0758aa66ee1090c1a80220e4b3811fcbcaa33c', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 0, '2021-04-14 04:21:02', '2021-04-14 04:21:02', '2022-04-14 11:21:02'),
('c32ab1521f4d9dcee4233107ed0390a40b87ac2e05c0f2f6fd89648c15d0e20b517e0479161cf071', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 0, '2021-04-09 03:27:25', '2021-04-09 03:27:25', '2022-04-09 10:27:25'),
('c35200b202992a218c412603a73316358940f74d3de8c2fe43bda9bcd34cfaadf677dbc258396abf', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 0, '2021-04-14 15:17:16', '2021-04-14 15:17:16', '2022-04-14 22:17:16'),
('c4e633c3a53075a577176b246c98ab71a90c2c7212c8c5fe1ece000ba94998d6ea82a002df5c5c53', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 0, '2021-04-16 08:28:42', '2021-04-16 08:28:42', '2022-04-16 15:28:42'),
('c5310e1d42906be93e4f349f1a5f8ba6d0b9a7fbf16a3177760435c5ed110c439a49df1b49b56d35', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 0, '2021-04-07 04:08:36', '2021-04-07 04:08:36', '2022-04-07 11:08:36'),
('c9154fcfb98f647a35cb55499468d79306d688d6de741de06f19ca705d5318c033659dbf313cc7f4', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 0, '2021-04-07 04:54:23', '2021-04-07 04:54:23', '2022-04-07 11:54:23'),
('d217057874a6b814efa97f53a8b8c56eb6ec11798b462f362dddaf4f496d94fe7fd0f8b125194db9', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 0, '2021-04-15 03:17:57', '2021-04-15 03:17:57', '2022-04-15 10:17:57'),
('d8c591b93bdd0b9f2cce0311440b53bd2fa6d5f4943b216a05a97c13e615c1ee3d82b28da7da44db', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 0, '2021-03-23 01:57:48', '2021-03-23 01:57:48', '2022-03-23 08:57:48'),
('d9d47b86635b9270f04f4b55b608fd147f09548a800f1875a97c42bff004f7eae04d735b037cfb35', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 0, '2021-04-08 03:14:54', '2021-04-08 03:14:54', '2022-04-08 10:14:54'),
('e2ed72256caac391650f9b5360192e08911e9d1b5becd2a7064911ec38b1c1572ea749cc8c302306', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 0, '2021-04-07 05:20:42', '2021-04-07 05:20:42', '2022-04-07 12:20:42'),
('eb1fea4fb2e35faa94c8d1978111151b52fcdd520b587c8f86d8cd18f8cf3d8db1453b516adb0d27', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 0, '2021-04-09 04:40:50', '2021-04-09 04:40:50', '2022-04-09 11:40:50'),
('ee5cdaa8591041068f446bd9e48b3a415c23fa55a1de0157a239a87b47547d3fbf6bcd8cefe1836f', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 0, '2021-04-17 22:48:57', '2021-04-17 22:48:57', '2022-04-18 05:48:57'),
('f0036992ce6bcb16c28c1df6adf8de35e9c89d3e0ea6607885b4d0e3815b58567123873889f6d446', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 0, '2021-03-22 19:48:22', '2021-03-22 19:48:22', '2022-03-23 02:48:22'),
('f15d16380d1e2618ece46e93845b3557bd1794972def191341cd361c89e8952ed28d3b32b8788034', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 0, '2021-04-08 03:43:50', '2021-04-08 03:43:50', '2022-04-08 10:43:50'),
('f24ed0e4815d35a0d8adb7d0bf1bcae8d66d03492c0011cc7d732763e17b00bc1084567ef8a8a80e', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 0, '2021-04-16 10:42:17', '2021-04-16 10:42:17', '2022-04-16 17:42:17'),
('f263f5c3ed96dd305876b2374d2e54baa2ccf3f06497e6af6e2a2f6fd98c297ec774a2287c59e940', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 0, '2021-04-14 07:31:47', '2021-04-14 07:31:47', '2022-04-14 14:31:47'),
('f3e71d0d1497f191e11d7f5b46c66f463a7b0d01ebcb0ab94b306afa18a16a839e7397ed210a1f9e', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'nApp', '[]', 0, '2021-04-17 22:36:38', '2021-04-17 22:36:38', '2022-04-18 05:36:38'),
('faeedd600928dd00a785a7a43af98b70cdb03ef580b6ad7ab67629a55e501498d882fe202e88251a', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 0, '2021-03-25 19:50:31', '2021-03-25 19:50:31', '2022-03-26 02:50:31'),
('fb0df5e9c49078f3d8be7055b93a494be9646957fd11910722399521f2921aa093088132e53c2aa3', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 0, '2021-03-22 19:19:53', '2021-03-22 19:19:53', '2022-03-23 02:19:53'),
('fc238e8a5fbe1d24e1f80ac814bb182a15b627bc1dcbd95331656a1c2a4bbf4f4091b4a88ea00b08', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 0, '2021-04-07 04:18:07', '2021-04-07 04:18:07', '2022-04-07 11:18:07'),
('fc275f3056643e5351746853ebb714828c40b843d83d9fc0abf11a9673d7be7de86f685458f3638e', 5, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', 'Personal Access Token', '[]', 0, '2021-04-07 04:03:43', '2021-04-07 04:03:43', '2022-04-07 11:03:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
('92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', NULL, 'Laravel Personal Access Client', 'D8cjm9MR03WyNBsQO2UiM4Z0AjZSA2MzyNXFnpOp', NULL, 'http://localhost', 1, 0, 0, '2021-03-03 00:26:53', '2021-03-03 00:26:53'),
('92dc7a3f-766d-4828-8577-892c773ccc80', NULL, 'Laravel Password Grant Client', 'neTSTlJOhnre6ZBcW2FhFJmKd1i81U4cGzgKU5nx', 'users', 'http://localhost', 0, 1, 0, '2021-03-03 00:26:54', '2021-03-03 00:26:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '92dc7a3e-5279-4fe1-9095-eb3ae601dd4e', '2021-03-03 00:26:53', '2021-03-03 00:26:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'setting-list', 'web', '2021-02-01 01:36:10', '2021-02-01 01:36:10'),
(2, 'role-list', 'web', '2021-02-01 01:36:10', '2021-02-01 01:36:10'),
(3, 'role-create', 'web', '2021-02-01 01:36:10', '2021-02-01 01:36:10'),
(4, 'role-edit', 'web', '2021-02-01 01:36:11', '2021-02-01 01:36:11'),
(5, 'role-delete', 'web', '2021-02-01 01:36:11', '2021-02-01 01:36:11'),
(6, 'user-list', 'web', '2021-02-01 01:36:11', '2021-02-01 01:36:11'),
(7, 'user-create', 'web', '2021-02-01 01:36:11', '2021-02-01 01:36:11'),
(8, 'user-edit', 'web', '2021-02-01 01:36:11', '2021-02-01 01:36:11'),
(9, 'user-delete', 'web', '2021-02-01 01:36:11', '2021-02-01 01:36:11'),
(10, 'menu-list', 'web', '2021-02-01 01:36:11', '2021-02-01 01:36:11'),
(11, 'menu-create', 'web', '2021-02-01 01:36:11', '2021-02-01 01:36:11'),
(12, 'menu-edit', 'web', '2021-02-01 01:36:11', '2021-02-01 01:36:11'),
(13, 'menu-delete', 'web', '2021-02-01 01:36:11', '2021-02-01 01:36:11'),
(15, 'tasklist-list', 'web', '2021-02-07 23:22:23', '2021-02-07 23:22:23'),
(49, 'info-list', 'web', '2021-02-08 00:18:14', '2021-02-08 00:20:33'),
(50, 'infocoll-list', 'web', NULL, NULL),
(51, 'infocoll-create', 'web', NULL, NULL),
(52, 'infocoll-edit', 'web', NULL, NULL),
(53, 'infocoll-delete', 'web', NULL, NULL),
(54, 'documentation-list', 'web', NULL, NULL),
(55, 'documentation-create', 'web', NULL, NULL),
(56, 'documentation-edit', 'web', NULL, NULL),
(57, 'documentation-delete', 'web', NULL, NULL),
(58, 'visit-list', 'web', NULL, NULL),
(59, 'visit-create', 'web', NULL, NULL),
(60, 'visit-edit', 'web', NULL, NULL),
(61, 'visit-delete', 'web', NULL, NULL),
(62, 'activity-list', 'web', NULL, NULL),
(63, 'activity-create', 'web', NULL, NULL),
(64, 'activity-edit', 'web', NULL, NULL),
(65, 'activity-delete', 'web', NULL, NULL),
(66, 'payment-list', 'web', NULL, NULL),
(67, 'payment-create', 'web', NULL, NULL),
(68, 'payment-edit', 'web', NULL, NULL),
(69, 'payment-delete', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `push_subscriptions`
--

CREATE TABLE `push_subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscribable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscribable_id` bigint(20) UNSIGNED NOT NULL,
  `endpoint` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_encoding` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'web', '2021-02-01 01:36:27', '2021-02-01 01:36:27'),
(3, 'Field Collections', 'web', '2021-02-01 23:38:47', '2021-02-02 23:41:39'),
(4, 'Superadmin', 'web', '2021-02-02 00:46:09', '2021-02-02 00:46:09'),
(5, 'Remedial Collections', 'web', '2021-02-02 23:42:18', '2021-02-02 23:42:18'),
(6, 'Area Recovery Collections', 'web', '2021-02-02 23:44:44', '2021-02-02 23:44:44'),
(7, 'Dept Head Collections', 'web', '2021-02-27 02:06:05', '2021-02-27 02:06:05'),
(8, 'Unit Head Collections', 'web', '2021-02-27 02:08:21', '2021-02-27 02:08:21'),
(9, 'Supervisor Collections', 'web', '2021-02-27 02:09:59', '2021-02-27 02:09:59'),
(10, 'Support', 'web', '2021-03-14 15:10:48', '2021-03-14 15:10:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 9),
(1, 10),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(6, 1),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 9),
(6, 10),
(7, 1),
(7, 4),
(7, 9),
(7, 10),
(8, 1),
(8, 4),
(8, 10),
(9, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(15, 1),
(15, 4),
(15, 7),
(15, 8),
(15, 9),
(15, 10),
(49, 1),
(49, 4),
(49, 7),
(49, 8),
(49, 9),
(50, 1),
(50, 4),
(50, 7),
(50, 8),
(50, 9),
(51, 1),
(51, 4),
(51, 9),
(52, 1),
(52, 4),
(52, 9),
(53, 1),
(53, 4),
(53, 9),
(54, 4),
(54, 8),
(54, 9),
(54, 10),
(55, 4),
(55, 10),
(56, 4),
(56, 10),
(57, 4),
(57, 10),
(58, 4),
(58, 10),
(59, 4),
(60, 4),
(60, 10),
(61, 4),
(62, 4),
(62, 10),
(63, 4),
(64, 4),
(64, 10),
(65, 4),
(66, 4),
(66, 10),
(67, 4),
(68, 4),
(68, 10),
(69, 4);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `userrole_view`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `userrole_view` (
`id` bigint(20) unsigned
,`user_id` char(20)
,`location` char(10)
,`nik` char(30)
,`name` varchar(255)
,`email` varchar(255)
,`password` varchar(255)
,`gender` enum('pria','wanita','other')
,`whatsup_number` char(14)
,`agree_wa_notification` enum('y','n')
,`last_active` timestamp
,`rolename` varchar(255)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('pria','wanita','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsup_number` char(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agree_wa_notification` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `last_active` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `user_id`, `location`, `nik`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `gender`, `whatsup_number`, `agree_wa_notification`, `last_active`, `created_at`, `updated_at`) VALUES
(5, '1464', '04', '022007124', 'alan', 'staf_tidev8@kreditmandiri.co.id', NULL, '$2y$10$K6iC1MWcP7fm9CrD1I7d5.vfvAvqbOnAxfdjXDa4BFIqEzKXGNxk6', NULL, 'pria', '081212439564', 'n', '2021-03-13 05:40:17', '2021-02-02 06:49:56', '2021-03-15 02:06:32'),
(6, '', '04', '011801005', 'bonar', 'bonar@kreditmandiri.co.id', NULL, '$2y$10$iYpFqrvLPTnC1uqLlEkOFe.HtpEq6nqqLwBGVS.Vr88cfXy.hwqJ.', NULL, 'pria', '', 'n', '0000-00-00 00:00:00', '2021-02-02 21:31:55', '2021-02-03 01:03:40'),
(7, '', '04', '021901013', 'indra_maulana', 'indra.maulana@kreditmandiri.co.id', NULL, '$2y$10$3kZeda0kAidE8uODAibqceyCGbK6dX9MnRZ/pELaTvzVUc.TOvIQW', NULL, 'pria', '', 'n', '0000-00-00 00:00:00', '2021-03-15 02:09:44', '2021-03-15 02:10:01');

-- --------------------------------------------------------

--
-- Struktur untuk view `userrole_view`
--
DROP TABLE IF EXISTS `userrole_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `userrole_view`  AS SELECT `users`.`id` AS `id`, `users`.`user_id` AS `user_id`, `users`.`location` AS `location`, `users`.`nik` AS `nik`, `users`.`name` AS `name`, `users`.`email` AS `email`, `users`.`password` AS `password`, `users`.`gender` AS `gender`, `users`.`whatsup_number` AS `whatsup_number`, `users`.`agree_wa_notification` AS `agree_wa_notification`, `users`.`last_active` AS `last_active`, `roles`.`name` AS `rolename` FROM ((`users` join `model_has_roles` on(`model_has_roles`.`model_id` = `users`.`id`)) join `roles` on(`roles`.`id` = `model_has_roles`.`role_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `documentations_models`
--
ALTER TABLE `documentations_models`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `documentations_models_title_unique` (`title`),
  ADD UNIQUE KEY `documentations_models_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `infocoll_models`
--
ALTER TABLE `infocoll_models`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `infocoll_models_title_unique` (`title`),
  ADD UNIQUE KEY `infocoll_models_slug_unique` (`slug`);

--
-- Indeks untuk tabel `log_timelines_models`
--
ALTER TABLE `log_timelines_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_timelines_models_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `master_asset_debiturs`
--
ALTER TABLE `master_asset_debiturs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_case_categories`
--
ALTER TABLE `master_case_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_kondisi_pekerjaans`
--
ALTER TABLE `master_kondisi_pekerjaans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_next_actions`
--
ALTER TABLE `master_next_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `notification_models`
--
ALTER TABLE `notification_models`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notification_to`
--
ALTER TABLE `notification_to`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_to_notification_models_id_foreign` (`notification_models_id`);

--
-- Indeks untuk tabel `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `push_subscriptions_endpoint_unique` (`endpoint`),
  ADD KEY `push_subscriptions_subscribable_type_subscribable_id_index` (`subscribable_type`,`subscribable_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `documentations_models`
--
ALTER TABLE `documentations_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `infocoll_models`
--
ALTER TABLE `infocoll_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `log_timelines_models`
--
ALTER TABLE `log_timelines_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `master_asset_debiturs`
--
ALTER TABLE `master_asset_debiturs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `master_case_categories`
--
ALTER TABLE `master_case_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `master_kondisi_pekerjaans`
--
ALTER TABLE `master_kondisi_pekerjaans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `master_next_actions`
--
ALTER TABLE `master_next_actions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `notification_models`
--
ALTER TABLE `notification_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `notification_to`
--
ALTER TABLE `notification_to`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT untuk tabel `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `log_timelines_models`
--
ALTER TABLE `log_timelines_models`
  ADD CONSTRAINT `log_timelines_models_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `notification_to`
--
ALTER TABLE `notification_to`
  ADD CONSTRAINT `notification_to_notification_models_id_foreign` FOREIGN KEY (`notification_models_id`) REFERENCES `notification_models` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
