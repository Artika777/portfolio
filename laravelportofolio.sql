-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Nov 2024 pada 03.03
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelportofolio`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `halaman`
--

CREATE TABLE `halaman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `halaman`
--

INSERT INTO `halaman` (`id`, `judul`, `isi`, `created_at`, `updated_at`) VALUES
(2, 'PORTOFOLIO', 'ARTIKA SUCI SALSABILA', '2024-11-14 14:31:25', '2024-11-14 14:41:00'),
(3, 'AWARDS', '<p>-&nbsp;Penghargaan Makalah Terbaik pada Konferensi Internasional IEEE tentang Ilmu Komputer</p><p>-Finalis Microsoft Imagine Cup dalam Kategori Kecerdasan Buatan</p><p>-Juara 3 Kompetisi Coding Nasional dari Kementerian Kominfo</p>', '2024-11-15 03:41:37', '2024-11-15 03:49:45'),
(4, 'INTEREST', '<p>-Pengembangan Perangkat Lunak dan Bahasa Pemrograman</p><p>-Pengembangan Game</p><p>-Front dan Development</p>', '2024-11-15 03:48:37', '2024-11-15 04:12:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `metadata`
--

CREATE TABLE `metadata` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `metadata`
--

INSERT INTO `metadata` (`id`, `meta_key`, `meta_value`, `created_at`, `updated_at`) VALUES
(1, '_language', 'android', '2024-11-14 14:25:48', '2024-11-14 14:25:48'),
(2, '_workflow', '<p>Android adalah sistem operasi berbasis Linux yang dirancang khusus untuk perangkat mobile, seperti smartphone, tablet, smartwatch, dan bahkan televisi. Dikembangkan oleh Google, Android menjadi salah satu sistem operasi paling populer di dunia karena sifatnya yang open-source, memungkinkan pengembang dan produsen perangkat untuk menyesuaikan dan mengembangkan sistem ini sesuai kebutuhan mereka.</p><p><span style=\"font-family: var(--bs-font-sans-serif); font-size: 0.875rem; text-align: var(--bs-body-text-align);\">Android menyediakan antarmuka pengguna berbasis sentuhan yang memudahkan interaksi pengguna melalui gerakan, seperti mengetuk, menggesek, dan mencubit layar. Sistem ini juga mendukung aplikasi pihak ketiga yang dapat diunduh dari Google Play Store, sehingga pengguna memiliki akses ke berbagai jenis aplikasi, dari media sosial hingga produktivitas dan game.</span></p>', '2024-11-14 14:25:48', '2024-11-14 14:25:48'),
(3, '_foto', '241114092937.jpg', '2024-11-14 14:29:00', '2024-11-14 14:29:37'),
(4, '_email', 'artikaa356@gmail.com', '2024-11-14 14:29:00', '2024-11-14 14:29:00'),
(5, '_kota', 'SAMBAS', '2024-11-14 14:29:00', '2024-11-14 14:29:00'),
(6, '_provinsi', 'KALIMANTAN BARAT', '2024-11-14 14:29:00', '2024-11-14 14:29:00'),
(7, '_nohp', '082256783209', '2024-11-14 14:29:00', '2024-11-14 14:29:00'),
(8, '_facebook', 'Artikaa', '2024-11-14 14:29:00', '2024-11-14 14:29:00'),
(9, '_twitter', 'Salsabila7_', '2024-11-14 14:29:00', '2024-11-14 14:29:00'),
(10, '_linkedin', 'cyz257', '2024-11-14 14:29:00', '2024-11-14 14:29:00'),
(11, '_github', 'zuu321_', '2024-11-14 14:29:00', '2024-11-14 14:29:00'),
(12, '_halaman_about', '2', '2024-11-15 03:33:17', '2024-11-15 03:44:10'),
(13, '_halaman_interest', '4', '2024-11-15 03:33:17', '2024-11-15 03:48:53'),
(14, '_halaman_award', '3', '2024-11-15 03:33:17', '2024-11-15 03:43:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_14_160332_table_users_add_column_google_id', 1),
(6, '2022_10_14_164700_users_set_default_password', 1),
(7, '2022_10_16_210516_user_add_column_avatar', 1),
(8, '2022_10_17_213510_create_halamen_table', 1),
(9, '2022_10_19_150743_create_riwayats_table', 1),
(10, '2022_10_19_234154_riwayat_set_default_isi', 1),
(11, '2022_10_23_223150_create_metadata_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat`
--

CREATE TABLE `riwayat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tipe` enum('experience','education') NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `riwayat`
--

INSERT INTO `riwayat` (`id`, `judul`, `tipe`, `tgl_mulai`, `tgl_akhir`, `info1`, `info2`, `info3`, `isi`, `created_at`, `updated_at`) VALUES
(1, 'DESIGNER', 'experience', '2024-10-10', '2030-10-10', 'PT.INTI NUSANTARA ABADI', NULL, NULL, '<p>PT Inti Nusantara Abadi adalah perusahaan yang menyediakan layanan teknologi informasi (IT) dan pengembangan perangkat lunak. Mereka melayani berbagai sektor industri di Indonesia, termasuk perusahaan lokal di Kalimantan<span style=\"font-family: var(--bs-font-sans-serif); font-size: 0.875rem; text-align: var(--bs-body-text-align);\">&nbsp;PT Inti Nusantara Abadi menyediakan berbagai solusi IT, seperti pengembangan aplikasi bisnis, pengelolaan sistem informasi, dan layanan konsultasi. Mereka bekerja untuk membantu bisnis beroperasi lebih efisien dengan teknologi yang tepat guna.</span><span style=\"font-family: var(--bs-font-sans-serif); font-size: 0.875rem; text-align: var(--bs-body-text-align);\">&nbsp;Perusahaan ini menawarkan layanan pembuatan perangkat lunak yang disesuaikan dengan kebutuhan bisnis, dari aplikasi desktop, mobile, hingga berbasis web.</span></p>', '2024-11-14 14:24:04', '2024-11-14 14:24:04'),
(2, 'POLITEKNIK NEGERI SAMBAS', 'education', '2023-09-04', '2026-08-26', 'MANAJEMEN INFORMATIKA', 'MANAJEMEN INFORMATIKA', '3,60', NULL, '2024-11-14 14:25:15', '2024-11-14 14:25:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_id` text NOT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `google_id`, `avatar`) VALUES
(1, 'Artikaa 2507', 'artikaa356@gmail.com', NULL, NULL, NULL, '2024-11-06 05:51:00', '2024-11-15 03:32:31', '118216972086220460108', '118216972086220460108.jpg'),
(2, 'salsabila 5577', 's6561173@gmail.com', NULL, NULL, NULL, '2024-11-14 07:21:00', '2024-11-14 14:07:09', '110842128315037660728', '110842128315037660728.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `metadata`
--
ALTER TABLE `metadata`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `metadata`
--
ALTER TABLE `metadata`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
