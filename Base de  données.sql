-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 08 avr. 2023 à 11:43
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `laravel`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `demandes`
--

CREATE TABLE `demandes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_de_demande` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description_de_demande` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Urgence` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `raison` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `statut` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT 'En attente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `demandes`
--

INSERT INTO `demandes` (`id`, `user_id`, `nom`, `email`, `type_de_demande`, `Description_de_demande`, `Urgence`, `raison`, `created_at`, `updated_at`, `statut`) VALUES
(2, 2, 'Prof. Karli Kerluke\r\n', '[value-4]', '[value-5]', '[value-6]', '[value-7]', '[value-8]', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'En attente'),
(3, 4, 'test', 'test@gmail.com', 'k;lllllllll', 'll;k,jnnnn', 'faible', 'lkkkkkkkkkkkkkk', '2023-04-05 16:43:08', '2023-04-05 16:43:08', 'En attente'),
(4, 4, 'test', 'test@gmail.com', 'lkkkkkkkkkkk', ';;;;;;l', 'moyen', ';,::::::::::::', '2023-04-05 16:49:00', '2023-04-05 16:49:00', 'En attente'),
(5, 7, 'oussama mejjati', 'oussama.mejjati@gmail.com', 'bar', 'qsqss', 'moyen', 'cvxvx', '2023-04-05 17:30:02', '2023-04-05 17:30:02', 'En attente'),
(6, 25, 'issam', 'issam@gmail', 'ghjgcjchjgc', 'rgdfgw<gdw', 'moyen', 'gdfgdwgwdhgfdh', '2023-04-05 21:51:26', '2023-04-05 21:51:26', 'refusé'),
(7, 26, 'kkk', 'kkk@gmail.com', '<dfsdfsf', '<sfdf<sf<sf', 'moyen', 'f<sdfsdfs', '2023-04-05 22:03:39', '2023-04-05 22:03:39', 'refusé'),
(8, 27, 'test', 'test10@gmail.com', 'rg', 'ggrfgrf', 'faible', 'dgrgdg', '2023-04-06 12:22:59', '2023-04-06 12:22:59', 'En attente'),
(9, 27, 'test', 'test10@gmail.com', 'ytjyj', 'ytjtyj', 'moyen', 'yjtyj', '2023-04-06 13:10:15', '2023-04-06 13:10:15', 'refusé'),
(10, 27, 'test', 'test10@gmail.com', 'ghi chof kidir', 'rak tmaa', 'moyen', '\"afak', '2023-04-06 14:28:50', '2023-04-06 14:28:50', 'approuvé');

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE `employe` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `employes`
--

CREATE TABLE `employes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `employes`
--

INSERT INTO `employes` (`id`, `name`, `email`, `created_at`, `updated_at`, `password`) VALUES
(1, 'Eliane Kautzer', 'borer.lavinia@example.org', '2023-03-28 14:23:41', '2023-03-28 14:23:41', NULL),
(2, 'Prof. Karli Kerluke', 'conn.jarvis@example.org', '2023-03-28 14:23:41', '2023-03-28 14:23:41', NULL),
(3, 'tttttt', 'uheathcote@example.org', '2023-03-28 14:23:41', '2023-03-28 23:25:57', 'hshshsh'),
(4, 'Mrs. Theodora Prohaska Sr.', 'rjohnson@example.net', '2023-03-28 14:23:41', '2023-03-28 14:23:41', NULL),
(5, 'Santos Davis', 'kbeer@example.net', '2023-03-28 14:23:41', '2023-03-28 14:23:41', NULL),
(6, 'Mafalda Koepp', 'zkoepp@example.net', '2023-03-28 14:23:41', '2023-03-28 14:23:41', NULL),
(7, 'Mona Walker', 'ystehr@example.com', '2023-03-28 14:23:41', '2023-03-28 14:23:41', NULL),
(8, 'Alford Brakus', 'jasmin.gutmann@example.org', '2023-03-28 14:23:41', '2023-03-28 14:23:41', NULL),
(9, 'Mr. Savion Walker V', 'lankunding@example.com', '2023-03-28 14:23:41', '2023-03-28 14:23:41', NULL),
(10, 'Prof. Alisha Emmerich II', 'randal.roberts@example.com', '2023-03-28 14:23:41', '2023-03-28 14:23:41', NULL),
(11, 'test', 'test@gmail.com', '2023-03-28 22:50:23', '2023-03-28 22:50:23', 'test'),
(12, 'test2', 'test2@gmail.com', '2023-03-28 23:04:14', '2023-03-28 23:04:14', 'test2'),
(14, 'htrrrrr', 'rrtttttttt@gmail.com', '2023-04-05 17:20:19', '2023-04-05 17:20:19', '$2y$10$fR/Xr7UAKIAajvTaIl.RL.8eW./VeEub5TLD3lBlTBt2Rg7OZ4D9m'),
(15, 'oussama mejjati', 'oussama.mejjati@gmail.com', '2023-04-05 17:26:12', '2023-04-05 17:26:12', '$2y$10$7koX5eNS3Auvmtidzo7qSOBQm7cKo.2uFfcNgnfKz3wN3Q5zQTmXq'),
(16, 'ali', 'ali@gmail.com', '2023-04-05 21:21:41', '2023-04-05 21:21:41', '$2y$10$l/Ppgig02AnxOAVcoUoS8.O75L1efmfKOuViES07CDY2RrNy2iu0q'),
(17, 'mmmm', 'mmmm@gmail.mmmm', '2023-04-05 21:26:34', '2023-04-05 21:26:34', '$2y$10$YfHzdCVNYg1BZd.HtuZjqOwKND7caqaF5hIsywz0DMhLQX5p38NAO'),
(18, 'dsd', 'ddddd@ddd', '2023-04-05 21:28:39', '2023-04-05 21:28:39', '$2y$10$9HkiEIgJfY9DLwyuW9vifeZ5CgvVsQYWqAzfIMlM5I8TQQdGoY17.'),
(19, 'rgg', 'ddddd@grgr', '2023-04-05 21:32:07', '2023-04-05 21:32:07', '$2y$10$Olp/QYcsDQ4/aIbNk3WlKu0zexDMJkrGdY5AVtqA6H3Z3Ypj7GwLG'),
(20, 'yasser', 'yasser@gmail.com', '2023-04-05 21:34:57', '2023-04-05 21:34:57', '$2y$10$VqJlaq3W93FKpwby6mbbJeK.CBz/COTXdXxs/bPl4UFNgH9E77332'),
(21, 'yukukyu', 'yukyuk@gmail.com', '2023-04-05 21:37:09', '2023-04-05 21:37:09', '$2y$10$8zlr4BRqfwiPNTiqiAtZSO2BFUmzXU.Rhv8G1DmqBai.NXUwK/2im'),
(22, 'l,jkkgh:j', 'hkjll@tghsh', '2023-04-05 21:38:38', '2023-04-05 21:38:38', '$2y$10$QMC3CJJvP3HjCsj61hHuruBwiLiqNlxKPiXDgPIH9ojIN32uUDIne'),
(23, 'kjgj;j;hj;h', 'llkklklh@gmail.cqdqs', '2023-04-05 21:40:04', '2023-04-05 21:40:04', '$2y$10$P426LJd9CRfuB.pRPGACzOoGE8P4AYVmClXTq0cUsFerCR4IvDPsy'),
(24, ';,;,;,;n', 'fgdgd@gfdfgd', '2023-04-05 21:46:04', '2023-04-05 21:46:04', '$2y$10$EYZRu/vVnKJcUDhfIeqkpu6LWCFoS61zs7seaMb1PPEd5EcL1.VP.'),
(25, 'issam', 'issam@gmail', '2023-04-05 21:47:16', '2023-04-05 21:47:16', '$2y$10$u4Eanxr7FKYgdR.doKTgpudU6UbrG9W23XvxNosue875ot0HrcrVe'),
(26, 'kkk', 'kkk@gmail.com', '2023-04-05 22:03:01', '2023-04-05 22:03:01', '$2y$10$fLqIKtu6dSO1AqXYEBrMqu.2CC//aXJCALaRl0YOsAFOupFp9./bO'),
(27, 'test', 'test10@gmail.com', '2023-04-06 10:22:14', '2023-04-06 10:22:14', '$2y$10$t053UTtQ8ZcmmxjG5kyA.uJu9wrK7fMIdztDlhylJCX.fSt/ueAlm');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_03_16_231654_create_sessions_table', 1),
(7, '2023_03_27_122645_create_servers_table', 2),
(8, '2023_03_27_140807_create_serveurs_table', 3),
(9, '2023_03_28_150221_create_employes_table', 4),
(10, '2023_03_30_173605_create_demandes_table', 5),
(11, '2023_03_30_183326_create_demandes_table', 6),
(12, '2023_03_30_183415_create_demandes_table', 7),
(13, '2023_03_30_220531_create_reports_table', 8),
(14, '2023_03_30_223220_create_reports_table', 9),
(15, '2014_10_12_000000_create_employe_table ', 10),
(16, '2023_04_03_224552_create_admins_table', 10),
(17, '2023_04_04_144141_add_role_as_to_users_table', 11),
(18, '2023_04_06_001153_create_reponse_demande_table', 12),
(19, '2023_04_06_001929_create_reponse_demande_table', 13),
(20, '2023_04_07_011720_create_reponse_rapport_table', 14);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('reyissam0428@gmail.com', '$2y$10$9tTUmXmU/7TB0ECPbS846.sBIiNX1R8Yyuf8.pJuyV.SMobT27C8G', '2023-03-24 21:32:16');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `email`, `phone_number`) VALUES
(1, 'ID', 'Name', 'Email'),
(2, '1', 'User', 'reyissam@gmail.com'),
(3, 'ID', 'Name', 'Email'),
(4, '1', 'User', 'reyissam@gmail.com'),
(5, 'ID', 'Name', 'Email'),
(6, '1', 'User', 'reyissam@gmail.com'),
(7, 'ID', 'Name', 'Email'),
(8, '1', 'User', 'reyissam@gmail.com'),
(9, 'ID', 'Name', 'Email'),
(10, '1', 'User', 'reyissam@gmail.com'),
(11, 'ID', 'Name', 'Email'),
(12, '1', 'User', 'reyissam@gmail.com'),
(13, 'ID', 'Name', 'Email'),
(14, '1', 'User', 'reyissam@gmail.com'),
(15, 'ID', 'Name', 'Email'),
(16, '1', 'User', 'reyissam@gmail.com'),
(17, 'ID', 'Name', 'Email'),
(18, '1', 'User', 'reyissam@gmail.com'),
(19, 'ID', 'Name', 'Email'),
(20, '1', 'User', 'reyissam@gmail.com'),
(21, 'ID', 'Name', 'Email'),
(22, '1', 'User', 'reyissam@gmail.com'),
(552, 'id', 'name', 'email'),
(553, '1', 'ID', 'Name'),
(554, '2', '1', 'User'),
(555, '3', 'ID', 'Name'),
(556, '4', '1', 'User'),
(557, '5', 'ID', 'Name'),
(558, '6', '1', 'User'),
(559, '7', 'ID', 'Name'),
(560, '8', '1', 'User'),
(561, '9', 'ID', 'Name'),
(562, '10', '1', 'User'),
(563, '11', 'ID', 'Name'),
(564, '12', '1', 'User'),
(565, '13', 'ID', 'Name'),
(566, '14', '1', 'User'),
(567, '15', 'ID', 'Name'),
(568, '16', '1', 'User'),
(569, '17', 'ID', 'Name'),
(570, '18', '1', 'User'),
(571, '19', 'ID', 'Name'),
(572, '20', '1', 'User'),
(573, '21', 'ID', 'Name'),
(574, '22', '1', 'User');

-- --------------------------------------------------------

--
-- Structure de la table `reponse_demande`
--

CREATE TABLE `reponse_demande` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `demande_id` bigint(20) UNSIGNED NOT NULL,
  `proposition_de_reponse` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `statut` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en attente',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reponse_demande`
--

INSERT INTO `reponse_demande` (`id`, `demande_id`, `proposition_de_reponse`, `statut`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 2, 'hggggggggggg', 'approuvé', '2023-04-06 00:44:51', '2023-04-06 00:44:51', NULL),
(2, 7, 'llmmmmmmmmmmmmmmm', 'approuvé', '2023-04-06 00:46:24', '2023-04-06 00:46:24', NULL),
(3, 7, 'jkhvkljhyugvigpu', 'approuvé', '2023-04-06 10:32:57', '2023-04-06 10:32:57', NULL),
(4, 7, 'gbg', 'approuvé', '2023-04-06 10:40:10', '2023-04-06 10:40:10', NULL),
(5, 7, 'ùpkoio,omùij,oî', 'approuvé', '2023-04-06 10:51:38', '2023-04-06 10:51:38', NULL),
(6, 7, 'llllllllllll', 'approuvé', '2023-04-06 10:53:42', '2023-04-06 10:53:42', NULL),
(7, 7, 'ikjoiikkiiiii', 'refusé', '2023-04-06 10:54:52', '2023-04-06 10:54:52', NULL),
(8, 7, 'ikjoiikkiiiii', 'refusé', '2023-04-06 10:55:59', '2023-04-06 10:55:59', NULL),
(9, 7, 'la man', 'approuvé', '2023-04-06 10:57:37', '2023-04-06 10:57:37', NULL),
(10, 7, 'lhklhùoyoyooy', 'approuvé', '2023-04-06 10:59:57', '2023-04-06 10:59:57', NULL),
(11, 7, 'la', 'approuvé', '2023-04-06 11:44:15', '2023-04-06 11:44:15', NULL),
(12, 6, 'la', 'refusé', '2023-04-06 11:58:55', '2023-04-06 11:58:55', NULL),
(15, 9, 'edst', 'approuvé', '2023-04-06 13:32:56', '2023-04-06 13:32:56', NULL),
(16, 9, 'gtgfgfggfh', 'approuvé', '2023-04-06 13:41:13', '2023-04-06 13:41:13', NULL),
(17, 9, 'la akhouya makanch !', 'refusé', '2023-04-06 13:43:30', '2023-04-06 13:43:30', 27),
(18, 10, 'la makanch akhuya dzl', 'refusé', '2023-04-06 14:30:11', '2023-04-06 14:30:11', 27),
(19, 7, 'hjlh', 'refusé', '2023-04-06 22:47:07', '2023-04-06 22:47:07', 26),
(20, 10, 'iuliu', 'approuvé', '2023-04-06 22:47:32', '2023-04-06 22:47:32', 27),
(21, 10, 'ùpojpçij', 'approuvé', '2023-04-07 01:29:43', '2023-04-07 01:29:43', 27);

--
-- Déclencheurs `reponse_demande`
--
DELIMITER $$
CREATE TRIGGER `update_demandes` AFTER INSERT ON `reponse_demande` FOR EACH ROW BEGIN
  UPDATE demandes
  SET statut = NEW.statut
  WHERE id = NEW.demande_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `reponse_rapport`
--

CREATE TABLE `reponse_rapport` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rapport_id` bigint(20) UNSIGNED NOT NULL,
  `proposition_de_reponse` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `statut` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en attente',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reponse_rapport`
--

INSERT INTO `reponse_rapport` (`id`, `rapport_id`, `proposition_de_reponse`, `statut`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 20, 'iuiguilu', 'refusé', '2023-04-07 00:27:31', '2023-04-07 00:27:31', 27);

--
-- Déclencheurs `reponse_rapport`
--
DELIMITER $$
CREATE TRIGGER `update_reports` AFTER INSERT ON `reponse_rapport` FOR EACH ROW BEGIN
  UPDATE reports
  SET statut = NEW.statut
  WHERE id = NEW.rapport_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `problem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Urgence` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `statut` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT 'En attente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reports`
--

INSERT INTO `reports` (`id`, `user_id`, `nom`, `email`, `departement`, `problem`, `Urgence`, `notes`, `created_at`, `updated_at`, `statut`) VALUES
(1, 4, 'test', 'test@gmail.com', 'gfnf', 'gfnfgfg', 'faible', 'nfgnfgn', '2023-04-04 23:25:44', '2023-04-04 23:25:44', 'En attente'),
(2, 4, 'test', 'test@gmail.com', 'j;gh;hj;', 'hj;hj;hj', 'moyen', 'jkhj;jh;', '2023-04-04 23:26:35', '2023-04-04 23:26:35', 'En attente'),
(3, 4, 'test', 'test@gmail.com', 'trhtrrth', 'rthrdsthdr', 'faible', 'rthrtht', '2023-04-04 23:29:40', '2023-04-04 23:29:40', 'En attente'),
(4, 4, 'test', 'test@gmail.com', 'liuoli', 'liolu', 'faible', 'omimi', '2023-04-04 23:31:32', '2023-04-04 23:31:32', 'En attente'),
(5, 4, 'test', 'test@gmail.com', 'kj:ljk:', 'kjb:j', 'moyen', 'illlluuuuu,klllllllllllllllllllllllllllllll', '2023-04-05 00:06:24', '2023-04-05 00:06:24', 'En attente'),
(6, 4, 'test', 'test@gmail.com', 'jtyj', 'jdjj', 'moyen', 'dtjtttttttj', '2023-04-05 00:40:39', '2023-04-05 00:40:39', 'En attente'),
(7, 4, 'test', 'test@gmail.com', 'oimhmoighiou', 'muigliufmpiug', 'moyen', 'ikdhsvgfoùîhdsmoivgh<oi', '2023-04-05 00:54:54', '2023-04-05 00:54:54', 'En attente'),
(8, 4, 'test', 'test@gmail.com', 'guhjk,ujck', 'jhcvkhkv', 'faible', 'vhjkhvjk', '2023-04-05 15:05:48', '2023-04-05 15:05:48', 'En attente'),
(9, 4, 'test', 'test@gmail.com', 'ytttttt', 'tjtj', 'faible', 'jdtttttttttttttttj', '2023-04-05 15:24:29', '2023-04-05 15:24:29', 'En attente'),
(10, 4, 'test', 'test@gmail.com', 'mlkkk', 'lpkkkk', 'moyen', 'mùù', '2023-04-05 15:25:03', '2023-04-05 15:25:03', 'En attente'),
(11, 4, 'test', 'test@gmail.com', 'dqsdqsd', 'dqsdsq', 'moyen', 'ouihoiug', '2023-04-05 16:48:51', '2023-04-05 16:48:51', 'En attente'),
(12, 7, 'oussama mejjati', 'oussama.mejjati@gmail.com', 'fbar', 'zaml', 'élevé', 'fise3 azbi !', '2023-04-05 17:29:39', '2023-04-05 17:29:39', 'En attente'),
(13, 22, 'issam', 'issam@gmail', 'duvkbglsdujb', 'lmidusfsliudb', 'moyen', 'dfsfdgdwfhg', '2023-04-05 21:47:38', '2023-04-05 21:47:38', 'En attente'),
(14, 22, 'issam', 'issam@gmail', 'jhkj', 'hjghcjgcj', 'moyen', 'hgjcgjcgj', '2023-04-05 21:51:14', '2023-04-05 21:51:14', 'En attente'),
(15, 25, 'issam', 'issam@gmail', 'cccccccccccccccc', 'cccccccccccccc', 'moyen', 'chhhhhhhhhjg', '2023-04-05 21:52:42', '2023-04-05 21:52:42', 'En attente'),
(16, 26, 'kkk', 'kkk@gmail.com', 'zddfdsf', 'dsfsdfsdf', 'moyen', 'sdf<dfd', '2023-04-05 22:03:31', '2023-04-05 22:03:31', 'En attente'),
(17, 27, 'test', 'test10@gmail.com', 'lopjkpoj', 'iuduiomhfsdmio', 'moyen', 'dsdsc', '2023-04-06 10:23:44', '2023-04-06 10:23:44', 'En attente'),
(18, 27, 'test', 'test10@gmail.com', 'h', 'hxc', 'moyen', 'ghhgh', '2023-04-06 10:38:11', '2023-04-06 10:38:11', 'En attente'),
(19, 27, 'test', 'test10@gmail.com', 'efefz', 'fzefz', 'moyen', 'zefzefzef', '2023-04-06 12:21:04', '2023-04-06 12:21:04', 'En attente'),
(20, 27, 'test', 'test10@gmail.com', 'kl', 'jk;', 'faible', 'jk;j', '2023-04-06 14:31:55', '2023-04-06 14:31:55', 'refusé');

-- --------------------------------------------------------

--
-- Structure de la table `servers`
--

CREATE TABLE `servers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `servers`
--

INSERT INTO `servers` (`id`, `name`, `email`, `username`, `phone`, `dob`, `created_at`, `updated_at`) VALUES
(1, 'Amaya Jones', 'ward.darwin@hotmail.com', 'stehr.roy', '+1-743-915-5295', '2009-03-05', NULL, NULL),
(2, 'Mrs. Madelynn Hyatt III', 'cade.lueilwitz@yahoo.com', 'toy.esteban', '+1-325-976-2723', '1970-02-04', NULL, NULL),
(3, 'Miss Sally Kris', 'ana05@leannon.com', 'tkemmer', '1-424-418-0641', '1994-04-05', NULL, NULL),
(4, 'Lila Reinger DDS', 'susana.leannon@stark.info', 'darryl21', '+1 (878) 414-5626', '2001-02-10', NULL, NULL),
(5, 'Bettye Von', 'rice.annette@hotmail.com', 'jayda.braun', '+1-820-818-6956', '2003-04-19', NULL, NULL),
(6, 'Mona Murray', 'dashawn85@leannon.info', 'june.blick', '+1-616-985-9259', '1992-03-10', NULL, NULL),
(7, 'Camila Herzog', 'allan89@schulist.com', 'catharine.crooks', '+1-603-398-3252', '1986-07-13', NULL, NULL),
(8, 'Kali Nolan', 'lincoln05@gmail.com', 'shakira.mante', '551-561-2848', '1975-07-27', NULL, NULL),
(9, 'Sarah Miller', 'mckayla.towne@green.org', 'ograham', '956-990-7984', '1970-11-21', NULL, NULL),
(10, 'Kacie Larkin MD', 'adelle.tillman@davis.com', 'ymoen', '364-406-5220', '1991-06-30', NULL, NULL),
(11, 'Prof. Jailyn Nitzsche', 'anderson.lewis@hahn.com', 'caesar.blick', '325.280.8982', '1986-11-14', NULL, NULL),
(12, 'Emilie Russel', 'zemlak.dante@gmail.com', 'jabshire', '(346) 940-9994', '1993-11-04', NULL, NULL),
(13, 'Elvera Schaefer II', 'marcos.zboncak@ziemann.com', 'amelie72', '445-635-6959', '1995-12-03', NULL, NULL),
(14, 'Destany Kuhn', 'estevan.stanton@purdy.biz', 'bmcdermott', '+1-818-705-2460', '1976-11-08', NULL, NULL),
(15, 'Lilian Schimmel', 'lorena.brekke@gmail.com', 'htreutel', '(802) 303-0990', '1971-11-27', NULL, NULL),
(16, 'Kristin Ryan', 'tamara08@yahoo.com', 'zbeatty', '+1-224-777-0672', '2018-10-19', NULL, NULL),
(17, 'Dr. Cynthia Ortiz DVM', 'gregory.wolff@hotmail.com', 'holson', '(442) 674-2349', '1993-06-26', NULL, NULL),
(18, 'Ms. Shyann Stehr', 'vmcclure@connelly.com', 'bradford66', '(267) 684-9788', '1990-05-13', NULL, NULL),
(19, 'Magali Senger', 'antwan43@mante.com', 'kolby.runolfsdottir', '+1.938.944.4275', '1974-10-20', NULL, NULL),
(20, 'Dr. Yvonne Bradtke', 'riley07@yahoo.com', 'johnston.tristian', '662.621.5637', '1983-08-14', NULL, NULL),
(21, 'Miss Virgie Gleichner Jr.', 'wnolan@oberbrunner.net', 'zkessler', '478-583-5982', '1974-07-27', NULL, NULL),
(22, 'Hermina Marquardt IV', 'rjenkins@grimes.com', 'mvon', '+1 (307) 675-7059', '1987-08-21', NULL, NULL),
(23, 'Prof. Chelsie Koelpin MD', 'kendrick.grady@gmail.com', 'flatley.joanie', '610.420.5052', '2004-07-11', NULL, NULL),
(24, 'Dr. Lora Harber', 'lakin.adaline@gottlieb.org', 'ferry.irma', '585.440.8926', '2011-01-29', NULL, NULL),
(25, 'Myrtis Kihn', 'madonna06@smitham.com', 'qwest', '1-351-701-7345', '2001-05-08', NULL, NULL),
(26, 'Sarah Morar', 'priscilla.corwin@upton.com', 'jazmyn.champlin', '+1-530-877-6135', '1971-03-04', NULL, NULL),
(27, 'Christina Frami', 'hickle.briana@ferry.net', 'hettinger.jacquelyn', '+1.903.438.0582', '1987-01-10', NULL, NULL),
(28, 'Ramona Kohler', 'carolanne98@hotmail.com', 'ldamore', '1-501-376-0309', '1977-07-30', NULL, NULL),
(29, 'Chloe Corwin III', 'katelin66@kunze.com', 'antonio47', '+1-681-707-1333', '1978-06-28', NULL, NULL),
(30, 'Eudora Christiansen', 'shaylee.hudson@rempel.info', 'gabe81', '+12162631014', '1985-02-14', NULL, NULL),
(31, 'Prof. Sydnie Pacocha', 'jaden.monahan@hotmail.com', 'gerlach.edmund', '740-290-8586', '1970-04-02', NULL, NULL),
(32, 'Kellie Lesch', 'skrajcik@sipes.com', 'kub.hilbert', '626.516.1669', '2021-04-24', NULL, NULL),
(33, 'Abagail Leuschke Sr.', 'kirsten.stracke@runolfsdottir.net', 'elbert74', '501.405.4333', '2009-09-06', NULL, NULL),
(34, 'Paige Farrell', 'cale88@gmail.com', 'madie.olson', '+1-910-361-0846', '2009-02-07', NULL, NULL),
(35, 'Chanelle O\'Hara', 'deshawn.blick@hotmail.com', 'nader.marques', '(915) 946-8095', '1981-11-07', NULL, NULL),
(36, 'Alycia Graham IV', 'zwilderman@hotmail.com', 'stehr.cleveland', '(904) 961-2287', '2003-09-27', NULL, NULL),
(37, 'Ava Crona', 'logan12@gmail.com', 'cromaguera', '+18309681881', '1987-10-04', NULL, NULL),
(38, 'Hattie Ondricka', 'verda.dach@watsica.info', 'holden79', '1-458-874-6448', '1996-04-15', NULL, NULL),
(39, 'Amira Okuneva', 'frederic05@ryan.com', 'kuhic.libbie', '757-881-4345', '2009-06-01', NULL, NULL),
(40, 'Mrs. Alayna Bosco', 'austyn.gottlieb@koch.org', 'dewitt.weimann', '985.708.0355', '1982-10-30', NULL, NULL),
(41, 'Miss Velda Connelly I', 'uabernathy@nicolas.org', 'cveum', '530.349.4106', '2014-03-20', NULL, NULL),
(42, 'Anahi Kreiger', 'imani.bahringer@vonrueden.com', 'streich.lelah', '567-429-8233', '2001-02-28', NULL, NULL),
(43, 'Maida Stehr', 'carey.larkin@gmail.com', 'angelica02', '1-253-726-1353', '2022-06-07', NULL, NULL),
(44, 'Mazie Fisher', 'considine.gavin@prohaska.org', 'predovic.alba', '1-281-469-2818', '1982-11-11', NULL, NULL),
(45, 'Ms. Delia Leannon', 'aliyah77@hotmail.com', 'gerlach.pat', '(770) 825-1477', '1989-02-25', NULL, NULL),
(46, 'Cathryn Hartmann', 'brooklyn.heller@oberbrunner.biz', 'cremin.elliott', '513.397.4248', '1993-10-08', NULL, NULL),
(47, 'Lacey Herman', 'perry64@dubuque.biz', 'araceli06', '+1.425.526.3455', '2003-01-22', NULL, NULL),
(48, 'Felicia Harber', 'vern48@kemmer.info', 'kathlyn63', '1-740-515-5228', '1987-10-02', NULL, NULL),
(49, 'Flo O\'Keefe', 'frederique.harris@yahoo.com', 'ukoch', '+17695923588', '1986-04-28', NULL, NULL),
(50, 'Marjolaine Bogisich', 'rosie79@hirthe.com', 'kamron53', '1-772-857-4241', '1978-03-04', NULL, NULL),
(51, 'Willow Legros', 'wprice@yahoo.com', 'hartmann.virgie', '1-216-798-9839', '1980-09-15', NULL, NULL),
(52, 'Dr. Camilla Dibbert', 'watsica.odell@howe.com', 'greta.koss', '480-300-9074', '2012-07-04', NULL, NULL),
(53, 'Nelda Conroy', 'larue14@gmail.com', 'lwest', '+19895540877', '1979-09-17', NULL, NULL),
(54, 'Hallie Jerde', 'jody.keeling@bode.com', 'jaeden.steuber', '228.676.8119', '2003-02-19', NULL, NULL),
(55, 'Esmeralda Kub', 'henriette01@little.com', 'xritchie', '1-781-755-0140', '1979-10-17', NULL, NULL),
(56, 'Destinee Murray', 'effie97@yahoo.com', 'mitchell.clyde', '(660) 916-8712', '2020-07-08', NULL, NULL),
(57, 'Prof. Olga Miller Sr.', 'cathryn52@abshire.info', 'hansen.felton', '743-814-8162', '1990-05-21', NULL, NULL),
(58, 'Brandyn Schmidt', 'kaia67@balistreri.net', 'stephen32', '+1-320-986-1097', '2021-08-13', NULL, NULL),
(59, 'Camilla Corwin III', 'armstrong.kavon@reilly.net', 'mmckenzie', '+1-859-785-2015', '1992-09-27', NULL, NULL),
(60, 'Miss Anne Larson DDS', 'koch.carolina@hotmail.com', 'dahlia.kreiger', '+1.315.570.5140', '1992-01-11', NULL, NULL),
(61, 'Joy Gaylord', 'hand.mario@yahoo.com', 'funk.adella', '+1-904-601-1975', '1981-08-17', NULL, NULL),
(62, 'Ms. Maxie White', 'wehner.jefferey@gmail.com', 'rgorczany', '+1.978.682.5512', '1985-02-26', NULL, NULL),
(63, 'Elouise Nitzsche', 'goldner.ila@powlowski.com', 'dubuque.ruthe', '904-283-8171', '1986-04-17', NULL, NULL),
(64, 'Norma Olson', 'bennett84@yahoo.com', 'erna17', '+1-980-221-5518', '2013-10-25', NULL, NULL),
(65, 'Ms. Roxane Bruen', 'akuhn@goyette.com', 'streich.grayce', '323.966.2998', '1995-04-29', NULL, NULL),
(66, 'Yoshiko Effertz', 'kanderson@hotmail.com', 'marlee36', '1-531-612-3006', '1987-05-25', NULL, NULL),
(67, 'Lilian Erdman DVM', 'deanna55@conn.com', 'schuyler.fay', '303-901-8483', '1988-07-18', NULL, NULL),
(68, 'Alessandra Lubowitz', 'sebastian87@olson.com', 'antonina97', '+1-937-482-8911', '1988-07-21', NULL, NULL),
(69, 'Brooklyn Schumm', 'mckayla64@hotmail.com', 'eschultz', '+1 (406) 928-1635', '2004-10-07', NULL, NULL),
(70, 'Miss Nova Jenkins', 'jeanette.emard@purdy.info', 'raoul.mann', '(586) 697-0045', '1977-06-14', NULL, NULL),
(71, 'Mrs. Adeline Jacobs', 'randy80@johns.com', 'douglas.dubuque', '775-656-9635', '2019-08-14', NULL, NULL),
(72, 'Prof. Kayli Cummerata DVM', 'caleb35@kassulke.com', 'zula33', '1-678-763-8823', '1993-04-07', NULL, NULL),
(73, 'Amira Parker MD', 'nitzsche.lucy@mcdermott.com', 'elbert84', '+1-925-292-2365', '1990-06-28', NULL, NULL),
(74, 'Mertie Larson', 'lavinia95@koepp.info', 'stacy59', '423.414.7076', '1984-07-19', NULL, NULL),
(75, 'Tressa Donnelly', 'giovanni.bashirian@hotmail.com', 'twill', '1-434-618-1938', '2019-12-03', NULL, NULL),
(76, 'Ms. Georgianna Yundt', 'jdaugherty@hotmail.com', 'ally23', '(947) 512-4198', '1979-10-30', NULL, NULL),
(77, 'Dixie Halvorson', 'bradly.sipes@aufderhar.info', 'andres.krajcik', '(854) 369-8127', '1970-04-09', NULL, NULL),
(78, 'Dr. Maryam Greenfelder', 'ioconner@hotmail.com', 'jessica33', '+1-385-243-8104', '1994-05-12', NULL, NULL),
(79, 'Earlene Sporer', 'albertha.rempel@gmail.com', 'claudine.haley', '458-781-5081', '2022-12-06', NULL, NULL),
(80, 'Miss Estella Greenfelder I', 'hortense.christiansen@ondricka.net', 'zita61', '+1.947.621.2298', '1982-09-08', NULL, NULL),
(81, 'Mrs. Abbey Wisoky', 'catharine.lakin@berge.com', 'meagan.crona', '+1.442.768.9331', '1979-02-27', NULL, NULL),
(82, 'Nova Pollich', 'hickle.demarcus@gmail.com', 'ndeckow', '1-412-839-4382', '2017-02-15', NULL, NULL),
(83, 'Justine Quitzon', 'fernando.bosco@gmail.com', 'deckow.patsy', '+1-678-916-0885', '1984-07-09', NULL, NULL),
(84, 'Miss Evie O\'Keefe III', 'qrau@yahoo.com', 'hayes.maritza', '+14026134930', '1987-06-12', NULL, NULL),
(85, 'Nia Pacocha', 'francisco.johnson@mills.com', 'considine.jordane', '512.774.4418', '2002-03-31', NULL, NULL),
(86, 'Lila Schaden', 'wkuphal@nicolas.com', 'roob.pink', '(678) 320-2617', '1999-06-05', NULL, NULL),
(87, 'Dominique Grant', 'dtillman@goyette.com', 'katelynn09', '+1-616-783-0500', '2013-08-11', NULL, NULL),
(88, 'Mrs. Alfreda Wehner DVM', 'anjali04@moen.com', 'daniella12', '1-216-399-3778', '1976-06-10', NULL, NULL),
(89, 'Daphnee Feest', 'demetris.abbott@harvey.com', 'hills.vaughn', '+1.509.984.5266', '1983-09-08', NULL, NULL),
(90, 'Aditya Boyle', 'dgoyette@jenkins.net', 'xmcdermott', '+13526581486', '2008-11-25', NULL, NULL),
(91, 'Tabitha Feil', 'frogahn@hotmail.com', 'brown.roob', '+1-909-392-9273', '1973-06-18', NULL, NULL),
(92, 'Rebekah Gleason', 'igoldner@yahoo.com', 'casper47', '(507) 743-7141', '1989-05-20', NULL, NULL),
(93, 'Mrs. Alana Howell', 'funk.llewellyn@schmitt.com', 'ziemann.adam', '(239) 879-3986', '1980-01-09', NULL, NULL),
(94, 'Leslie Friesen Jr.', 'cathrine.steuber@senger.com', 'cmuller', '305.923.3081', '2014-11-26', NULL, NULL),
(95, 'Raphaelle Hickle IV', 'dandre44@reilly.com', 'mcglynn.stacey', '1-936-500-5581', '1970-04-17', NULL, NULL),
(96, 'Dr. Muriel Fadel DVM', 'bconsidine@yahoo.com', 'jeffery92', '479-933-2286', '1998-05-02', NULL, NULL),
(97, 'Susan Dicki', 'kohler.fae@marks.biz', 'skye.franecki', '+1 (931) 722-9629', '2015-10-05', NULL, NULL),
(98, 'Ollie Ziemann', 'mnolan@hotmail.com', 'lind.dane', '+1-239-723-7754', '1983-08-25', NULL, NULL),
(99, 'Linnea Robel', 'nelle.quigley@rath.com', 'xpurdy', '386-517-3135', '1976-07-21', NULL, NULL),
(100, 'Mrs. Janae Reinger III', 'jenkins.mekhi@yahoo.com', 'noelia44', '1-484-499-5351', '2001-06-14', NULL, NULL),
(101, 'Miss Audrey Dickens V', 'funk.nyasia@king.org', 'maddison16', '(504) 995-1506', '1987-06-11', NULL, NULL),
(102, 'Leta Swaniawski', 'tsauer@bosco.com', 'athena38', '(678) 838-0779', '1995-06-07', NULL, NULL),
(103, 'Rita Emmerich', 'gcollins@yahoo.com', 'waelchi.adalberto', '724-286-5193', '1988-08-24', NULL, NULL),
(104, 'Meta Prohaska', 'reichert.eliseo@yahoo.com', 'joannie57', '+1-680-941-5155', '2015-04-02', NULL, NULL),
(105, 'Lucy Wunsch', 'zetta10@hotmail.com', 'keara.schultz', '1-850-725-6758', '2020-04-03', NULL, NULL),
(106, 'Emma Murphy', 'sporer.elliott@gmail.com', 'dhayes', '504.395.7374', '1979-08-21', NULL, NULL),
(107, 'Mrs. Autumn Koepp', 'jcronin@kassulke.com', 'farrell.raquel', '+1.952.330.1489', '1988-04-26', NULL, NULL),
(108, 'Antonetta Harvey', 'rickie.halvorson@hayes.biz', 'rolfson.bethany', '+1-262-334-9063', '1975-12-16', NULL, NULL),
(109, 'Lola Reilly Jr.', 'eileen.berge@hotmail.com', 'willy.gerlach', '(267) 409-1073', '1980-07-16', NULL, NULL),
(110, 'Mertie Toy I', 'prowe@gmail.com', 'bella47', '442-771-4423', '2019-06-03', NULL, NULL),
(111, 'Mrs. Nyah O\'Reilly', 'elsa.beer@emard.biz', 'kwalsh', '+1-864-966-8049', '1981-06-22', NULL, NULL),
(112, 'Angie Lockman', 'natalia99@robel.org', 'jerad52', '561-556-1872', '1997-04-22', NULL, NULL),
(113, 'Mrs. Alene Huel DVM', 'domenick.cruickshank@white.com', 'heaney.meta', '+1 (765) 776-9649', '2009-04-21', NULL, NULL),
(114, 'Prof. Araceli Schaden', 'palma.dooley@hotmail.com', 'bailey.unique', '931.910.6891', '2020-04-01', NULL, NULL),
(115, 'Winona Breitenberg', 'heath.wiegand@gibson.com', 'agustina91', '219.228.1798', '1975-06-21', NULL, NULL),
(116, 'Ms. Ramona Reilly PhD', 'linnie.quigley@reichert.com', 'antonietta85', '+1 (850) 282-3098', '1973-04-20', NULL, NULL),
(117, 'Zora Morissette', 'kuhn.sasha@yahoo.com', 'alex.ferry', '(774) 927-5780', '1977-05-21', NULL, NULL),
(118, 'Daphne Ryan', 'darby92@hotmail.com', 'schmidt.samanta', '(929) 310-2747', '2013-01-30', NULL, NULL),
(119, 'Dayana Wehner', 'cullen04@moen.com', 'batz.brian', '(954) 459-9985', '1997-05-19', NULL, NULL),
(120, 'Miss Victoria Kuhn I', 'lind.oran@yahoo.com', 'konopelski.graciela', '586.469.3839', '1976-01-07', NULL, NULL),
(121, 'Birdie VonRueden Jr.', 'kiel47@yahoo.com', 'joey96', '(937) 868-3662', '2002-12-25', NULL, NULL),
(122, 'Elnora Fahey', 'erwin.walsh@konopelski.net', 'aschmidt', '864.498.5522', '1978-06-06', NULL, NULL),
(123, 'Assunta Bins I', 'okeefe.brendan@hotmail.com', 'elza60', '+12243180341', '2014-12-20', NULL, NULL),
(124, 'Karine Walter Jr.', 'kwilderman@gusikowski.org', 'cledner', '+1-540-599-3351', '1983-05-15', NULL, NULL),
(125, 'Princess Hane', 'eunice76@weber.com', 'shakira.carroll', '(973) 535-7908', '2022-01-10', NULL, NULL),
(126, 'Gladys Daugherty', 'kenyon.marvin@gmail.com', 'dashawn75', '1-903-883-3533', '2000-09-22', NULL, NULL),
(127, 'Ms. Samantha Kunde DVM', 'ana.beier@hotmail.com', 'smith.claudia', '251.455.5062', '1996-09-21', NULL, NULL),
(128, 'Marie Bayer', 'gtremblay@konopelski.net', 'rwolff', '(351) 968-7302', '2022-04-17', NULL, NULL),
(129, 'Edna Herzog', 'sprohaska@dooley.info', 'anthony39', '+1.443.598.5529', '2019-10-27', NULL, NULL),
(130, 'Berniece Schultz', 'cgraham@hotmail.com', 'ddonnelly', '(803) 417-9964', '1973-05-22', NULL, NULL),
(131, 'Miss Dawn Mosciski', 'macy.ohara@marquardt.biz', 'darrick28', '940-248-1128', '1987-11-26', NULL, NULL),
(132, 'Elvie Padberg', 'lenna.erdman@steuber.com', 'macejkovic.lucy', '+1.564.321.3821', '2011-12-19', NULL, NULL),
(133, 'Mrs. Amely Kunde PhD', 'larson.lewis@hotmail.com', 'sheridan01', '714.341.0745', '2011-09-09', NULL, NULL),
(134, 'Bonnie Carroll', 'vgerlach@yahoo.com', 'hanna.bradtke', '+1.623.209.6703', '1978-07-08', NULL, NULL),
(135, 'Maryam Hudson', 'lgerlach@yahoo.com', 'jwyman', '+14586781774', '1979-12-18', NULL, NULL),
(136, 'Cynthia Heathcote PhD', 'ritchie.donavon@gerlach.biz', 'brooklyn50', '657-715-7400', '2000-08-07', NULL, NULL),
(137, 'Prof. Michaela Jakubowski Jr.', 'tlind@padberg.com', 'watson.hirthe', '+1-520-568-2607', '1999-10-22', NULL, NULL),
(138, 'Tania Larson DDS', 'viola82@lemke.com', 'cassandra00', '(567) 820-1413', '2010-03-17', NULL, NULL),
(139, 'Annabel Hammes', 'bgleichner@yahoo.com', 'adams.penelope', '1-601-435-2175', '1996-06-16', NULL, NULL),
(140, 'Candace Lockman', 'allene79@yahoo.com', 'rachelle37', '1-937-809-0270', '1999-08-21', NULL, NULL),
(141, 'Ms. Gwen Denesik MD', 'damien50@nolan.info', 'vonrueden.flossie', '323.396.7501', '2017-07-31', NULL, NULL),
(142, 'Frieda Gulgowski', 'vdeckow@oberbrunner.info', 'rhianna02', '217-213-4660', '2008-01-08', NULL, NULL),
(143, 'Oleta Mertz', 'mortimer.balistreri@harvey.com', 'abbigail17', '+15037450193', '1981-12-20', NULL, NULL),
(144, 'Kelsie Sauer II', 'dschaefer@gmail.com', 'peter.ferry', '231.375.4470', '1997-08-10', NULL, NULL),
(145, 'Reva Predovic', 'damon78@gmail.com', 'wisozk.kelly', '283.570.7463', '1975-06-23', NULL, NULL),
(146, 'Alayna Bahringer', 'ischneider@hotmail.com', 'salvador.schmidt', '848.865.4766', '2013-10-24', NULL, NULL),
(147, 'Jacquelyn Tremblay V', 'waters.beryl@blick.com', 'jlangosh', '(320) 507-6975', '2003-07-06', NULL, NULL),
(148, 'Ms. Luella Jacobs', 'daija30@schroeder.info', 'lucy.stoltenberg', '+1 (239) 665-2623', '1981-10-10', NULL, NULL),
(149, 'Heaven Hoppe', 'sanford19@yahoo.com', 'clark44', '1-505-237-3971', '2007-07-17', NULL, NULL),
(150, 'Miss Kaia Waters', 'karley.mante@gusikowski.com', 'labadie.estel', '+1-562-471-4047', '1987-06-13', NULL, NULL),
(151, 'Kattie Ernser', 'ethel.hills@daugherty.biz', 'tito42', '716.861.6021', '1985-11-15', NULL, NULL),
(152, 'Alyson Sporer', 'dakota.rempel@gmail.com', 'halie.walsh', '+17187928797', '2000-08-25', NULL, NULL),
(153, 'Candida Feil Sr.', 'eveline51@fritsch.com', 'annette65', '754.999.0886', '2005-03-28', NULL, NULL),
(154, 'Ms. Phoebe Pollich MD', 'gus83@kovacek.com', 'rosalyn38', '317-487-3183', '2022-05-15', NULL, NULL),
(155, 'Hortense Terry II', 'adriel.schuster@lehner.com', 'salvatore.senger', '781.638.9372', '1974-01-16', NULL, NULL),
(156, 'Zoey Ferry', 'emmanuelle.reichel@hotmail.com', 'schulist.harvey', '347-413-0154', '2013-09-22', NULL, NULL),
(157, 'Stacey Bins', 'cruz.hane@gmail.com', 'kirlin.alexandrea', '214-760-7514', '1996-05-27', NULL, NULL),
(158, 'Clarabelle Mayer', 'pearline31@gmail.com', 'littel.glennie', '+1.828.635.5199', '1974-11-07', NULL, NULL),
(159, 'Mozelle Wehner', 'sister.metz@spinka.com', 'howell.rosina', '+17256566068', '1980-10-15', NULL, NULL),
(160, 'Mina D\'Amore', 'royce59@senger.com', 'ajerde', '+1-808-567-4736', '1994-12-28', NULL, NULL),
(161, 'Yasmeen O\'Conner', 'yturcotte@greenfelder.com', 'darrell12', '+1-430-561-5296', '1981-07-26', NULL, NULL),
(162, 'Lolita Rogahn I', 'blanda.olga@hotmail.com', 'axel.jacobson', '(862) 981-5460', '1997-11-26', NULL, NULL),
(163, 'Barbara Yost', 'fredy24@gmail.com', 'sarina.kiehn', '830.228.1180', '1993-08-19', NULL, NULL),
(164, 'Karen Zemlak', 'ndickens@reynolds.com', 'jewell.nikolaus', '+1-316-654-0724', '2010-06-28', NULL, NULL),
(165, 'Dr. Mayra Hammes', 'parisian.autumn@kuhlman.net', 'estell.abshire', '304.538.8048', '2018-09-05', NULL, NULL),
(166, 'Leda Walter I', 'brandyn75@kunze.com', 'kaci22', '678-942-9931', '1974-03-12', NULL, NULL),
(167, 'Magdalena Botsford', 'bradford91@hotmail.com', 'aylin.keebler', '+1-361-990-4571', '2008-10-16', NULL, NULL),
(168, 'Cassidy Wisoky', 'tremblay.enos@brown.com', 'abigail.buckridge', '+1-754-976-5024', '1985-03-05', NULL, NULL),
(169, 'Monica Block V', 'hudson.ottilie@johnston.com', 'adela37', '769-809-5283', '1986-09-03', NULL, NULL),
(170, 'Leilani Goyette', 'kaden.witting@dare.info', 'haley.sienna', '304.539.9300', '2016-07-18', NULL, NULL),
(171, 'Annamarie Bergstrom', 'manuela.ruecker@gmail.com', 'judd.heller', '689-720-2446', '1993-08-27', NULL, NULL),
(172, 'Haylie Johnson', 'zane82@gmail.com', 'shanna.welch', '+1 (352) 741-4992', '2021-12-10', NULL, NULL),
(173, 'Robyn Smith', 'isidro.robel@yahoo.com', 'misty.tromp', '+1.786.817.5405', '1971-11-05', NULL, NULL),
(174, 'Mrs. Alexane Torp', 'romaguera.joy@gmail.com', 'cristal.kessler', '+1-551-651-1739', '1979-03-31', NULL, NULL),
(175, 'Estel Tillman', 'mcremin@hotmail.com', 'turner.kendall', '(586) 896-8425', '1996-12-31', NULL, NULL),
(176, 'Mrs. Ariane Crooks V', 'stracke.khalil@lakin.com', 'gerlach.lizeth', '1-818-723-5856', '2018-11-24', NULL, NULL),
(177, 'Herminia Pacocha', 'dominique64@schneider.com', 'malachi90', '+1.240.551.6243', '2021-07-23', NULL, NULL),
(178, 'Estefania Effertz IV', 'lacy.moen@nicolas.com', 'dschmitt', '+1.571.275.6129', '1999-07-23', NULL, NULL),
(179, 'Miss Fae Cruickshank Jr.', 'davonte09@oconnell.com', 'torphy.shea', '(432) 427-8033', '1980-05-07', NULL, NULL),
(180, 'Cheyanne Hahn', 'marvin57@anderson.com', 'tabitha95', '+1.283.550.8340', '1976-02-16', NULL, NULL),
(181, 'Tanya Harris', 'aokon@hotmail.com', 'hills.maxine', '+1-863-906-8900', '1972-07-14', NULL, NULL),
(182, 'Kathryn Stehr', 'zack.kautzer@gislason.net', 'elouise85', '360.782.8713', '1986-04-12', NULL, NULL),
(183, 'Mrs. Myrtie Bernier III', 'botsford.lydia@yahoo.com', 'ylind', '1-626-878-1196', '1982-06-27', NULL, NULL),
(184, 'Etha McClure', 'bode.oren@gmail.com', 'cole.mireya', '828-618-9299', '1994-11-20', NULL, NULL),
(185, 'Cara Williamson', 'ekerluke@jacobi.com', 'sophie.stamm', '+1.808.387.8323', '1971-04-19', NULL, NULL),
(186, 'Vernice Lebsack', 'adams.jessica@shanahan.com', 'kevin74', '+1-518-833-0877', '2008-11-30', NULL, NULL),
(187, 'Prof. Daija Hahn DVM', 'vivian.harvey@gmail.com', 'maryse.price', '234-774-6257', '2016-10-13', NULL, NULL),
(188, 'Marianne Carroll Sr.', 'walsh.helga@satterfield.com', 'druecker', '(760) 937-2877', '2000-06-13', NULL, NULL),
(189, 'Delpha Kihn', 'bayer.norberto@gmail.com', 'claire54', '+13093689340', '2007-03-31', NULL, NULL),
(190, 'Leslie Kessler', 'koch.tristin@rice.biz', 'orland11', '623-899-2553', '1981-04-03', NULL, NULL),
(191, 'Ms. Novella Cummerata PhD', 'chance29@hotmail.com', 'kaya33', '(947) 768-2773', '1971-10-13', NULL, NULL),
(192, 'Dr. Lina Blick', 'jodie.hoeger@torp.com', 'marvin.smitham', '+15348463810', '2020-06-29', NULL, NULL),
(193, 'Hope Bode', 'cremin.katheryn@mayer.biz', 'lwisoky', '+1-248-610-4070', '1982-04-09', NULL, NULL),
(194, 'Prof. Gerry Ondricka', 'alemke@ullrich.com', 'rice.nicola', '214.905.3061', '2011-11-05', NULL, NULL),
(195, 'Dawn Schoen', 'zcarroll@gmail.com', 'camden.brekke', '(316) 665-2238', '1995-09-01', NULL, NULL),
(196, 'Shyanne Ondricka', 'ozella50@yahoo.com', 'gusikowski.louvenia', '+1-925-640-8944', '2019-12-03', NULL, NULL),
(197, 'Asha Spencer', 'rolfson.sylvester@heaney.com', 'jeanne39', '+1.252.350.7410', '1999-04-14', NULL, NULL),
(198, 'Angeline Leannon', 'swill@pollich.biz', 'alfonzo.mitchell', '+1-251-219-0927', '1986-04-15', NULL, NULL),
(199, 'Prof. Chelsie Willms', 'elaina58@schimmel.org', 'elenor.emmerich', '769-555-9574', '1988-03-22', NULL, NULL),
(200, 'Isabell Cummings', 'bailey.cleveland@goodwin.org', 'urban74', '323.284.6060', '1973-03-03', NULL, NULL),
(201, 'Mrs. Hassie Lemke', 'luella05@dicki.biz', 'thiel.julianne', '1-760-250-3827', '1972-07-18', NULL, NULL),
(202, 'Cleta Gerlach', 'phoebe.howe@friesen.info', 'geovanni58', '215.345.9260', '1976-07-23', NULL, NULL),
(203, 'Prof. Amara Bergnaum', 'jones.roy@gmail.com', 'nicola58', '+1-276-269-8212', '1986-05-08', NULL, NULL),
(204, 'Corrine Stamm', 'terrell.renner@gmail.com', 'cullen.rath', '(445) 487-4369', '2019-08-12', NULL, NULL),
(205, 'Tamara Roberts DVM', 'nienow.letitia@raynor.com', 'caleigh.kessler', '+19477704561', '1972-09-06', NULL, NULL),
(206, 'Burdette Jacobson', 'krajcik.shanel@wintheiser.com', 'haley72', '(830) 810-2548', '1979-11-09', NULL, NULL),
(207, 'Virgie Corwin PhD', 'german20@yahoo.com', 'victoria.reynolds', '(847) 731-4281', '2013-08-27', NULL, NULL),
(208, 'Cordie Lesch', 'erdman.marco@maggio.net', 'tyrel.mueller', '303.959.9810', '1984-09-11', NULL, NULL),
(209, 'Libbie Reinger', 'leffler.laverne@schmidt.com', 'dawn.jakubowski', '+1-754-306-5699', '1991-01-13', NULL, NULL),
(210, 'Yasmeen Hermiston', 'felicita.morar@gmail.com', 'konopelski.elinore', '605-754-4812', '2007-05-20', NULL, NULL),
(211, 'Dr. Jody Stanton Sr.', 'rziemann@yahoo.com', 'runolfsdottir.lolita', '1-252-948-8051', '1971-06-25', NULL, NULL),
(212, 'Ms. Alverta Johns PhD', 'violet.nitzsche@jacobson.com', 'sheila.beer', '609.669.9712', '1997-11-21', NULL, NULL),
(213, 'Ms. Earline Glover II', 'ubaldo.herman@gmail.com', 'edyth05', '+1-805-584-6027', '2007-11-06', NULL, NULL),
(214, 'Katarina Keeling III', 'enola.kuvalis@hotmail.com', 'denesik.aiden', '+1-352-857-5361', '2013-06-10', NULL, NULL),
(215, 'Miss Vernie Murazik', 'arvilla39@gmail.com', 'emmerich.jules', '(424) 647-6645', '1997-12-22', NULL, NULL),
(216, 'Ms. Maureen Dach', 'alexandre79@fay.org', 'eryn21', '949-707-5782', '1987-06-09', NULL, NULL),
(217, 'Miss Kaya Wolf', 'grant.ellie@hotmail.com', 'lemke.maurine', '(702) 681-4357', '1988-09-28', NULL, NULL),
(218, 'Earlene Runolfsdottir', 'qokon@yahoo.com', 'miller.zack', '351.960.6469', '1973-12-03', NULL, NULL),
(219, 'Daphney Nikolaus', 'fatima39@yahoo.com', 'wilfred88', '857.601.0727', '2008-09-30', NULL, NULL),
(220, 'Miss Chelsie Dooley', 'howe.maggie@lueilwitz.info', 'stokes.jake', '1-580-404-2109', '2006-11-03', NULL, NULL),
(221, 'Mrs. Margarita Marks V', 'edickens@weimann.com', 'alverta97', '458-572-0006', '1999-04-20', NULL, NULL),
(222, 'Candice Gerlach', 'jayme82@gmail.com', 'katlyn76', '+1.386.342.6185', '2017-09-28', NULL, NULL),
(223, 'Mazie Welch', 'probel@yahoo.com', 'jakubowski.gloria', '+1-443-247-4057', '1994-06-20', NULL, NULL),
(224, 'Nettie Boyer', 'ocummerata@gmail.com', 'nchamplin', '(765) 566-1749', '1981-12-17', NULL, NULL),
(225, 'Lou Schinner', 'qdamore@west.com', 'idella02', '314-674-9748', '1986-10-23', NULL, NULL),
(226, 'Ms. Lou Yost', 'ygottlieb@yahoo.com', 'mraz.ashley', '+1-234-643-4673', '2018-02-05', NULL, NULL),
(227, 'Viviane Beatty', 'kunde.carol@huel.org', 'yost.thaddeus', '+1-463-303-7222', '2018-12-04', NULL, NULL),
(228, 'Prof. Alicia Murray', 'stella.gorczany@yahoo.com', 'linnea.tromp', '320.996.6487', '2005-12-21', NULL, NULL),
(229, 'Calista Gerlach', 'russel.kellen@yahoo.com', 'pmuller', '+1 (361) 414-9075', '2021-09-22', NULL, NULL),
(230, 'Esperanza Hessel', 'schiller.hazle@hills.org', 'precious.ryan', '269-980-9941', '1994-06-24', NULL, NULL),
(231, 'Roma Strosin', 'smith.ruby@yahoo.com', 'xblick', '1-571-866-4082', '2010-01-15', NULL, NULL),
(232, 'Janis Schoen', 'lenna.bode@yahoo.com', 'prohaska.dolores', '614-756-0945', '2016-03-15', NULL, NULL),
(233, 'Lorena Purdy', 'joy.orn@bogan.info', 'xwilderman', '+1-224-967-4477', '1992-03-14', NULL, NULL),
(234, 'Dr. Brooklyn Lindgren', 'grover.considine@hartmann.biz', 'zchamplin', '785.205.2949', '1981-06-08', NULL, NULL),
(235, 'Deanna Welch', 'uweissnat@gmail.com', 'daphne94', '225.222.8143', '1981-08-02', NULL, NULL),
(236, 'Ila Gottlieb Sr.', 'vritchie@gmail.com', 'dcartwright', '574-539-4087', '2000-09-11', NULL, NULL),
(237, 'Rosamond Moore Sr.', 'hermiston.jordyn@stiedemann.net', 'destiney34', '+14803519333', '2016-01-09', NULL, NULL),
(238, 'Chelsea Brekke Jr.', 'ritchie.alanis@hotmail.com', 'kaley30', '+1-701-833-2241', '2001-05-18', NULL, NULL),
(239, 'Jazmyn Bergnaum', 'adach@wilderman.com', 'abbie75', '+1-913-253-0269', '2010-08-20', NULL, NULL),
(240, 'Prof. Jessica Senger', 'stanton.hassan@keeling.info', 'ablanda', '+1.407.910.9152', '1982-09-12', NULL, NULL),
(241, 'Rozella Gerlach Jr.', 'jadon90@krajcik.com', 'ohara.nicolette', '1-640-530-8454', '2007-04-07', NULL, NULL),
(242, 'Adella Johnson', 'schuster.gerda@hotmail.com', 'lavon.douglas', '623.898.0561', '1988-10-07', NULL, NULL),
(243, 'Miss Aleen Goyette', 'carmela62@gmail.com', 'lisandro.zulauf', '1-386-365-6318', '1976-04-26', NULL, NULL),
(244, 'Sylvia Koss', 'elsie50@bednar.com', 'neha.frami', '857.491.0613', '2001-05-22', NULL, NULL),
(245, 'Gisselle Fritsch', 'quinn.green@goyette.com', 'lkunze', '1-972-256-9841', '1976-10-17', NULL, NULL),
(246, 'Kaitlyn Bruen Sr.', 'treutel.joesph@miller.info', 'pheaney', '+16464743687', '1995-12-09', NULL, NULL),
(247, 'Abagail Herman', 'tanner97@oconnell.net', 'nkuhn', '+1.680.337.8211', '1976-04-19', NULL, NULL),
(248, 'Ms. Noemie Gibson DVM', 'gmraz@yahoo.com', 'huel.shad', '540.236.4583', '1985-04-29', NULL, NULL),
(249, 'Dr. May Bruen', 'verner.stamm@gmail.com', 'zhand', '+1-770-508-1059', '2012-03-15', NULL, NULL),
(250, 'Bulah Lubowitz', 'hills.wilhelm@muller.biz', 'alison91', '+1 (949) 690-3263', '2006-07-19', NULL, NULL),
(251, 'Natasha Balistreri DVM', 'littel.wilford@wiegand.com', 'jammie07', '1-854-436-8297', '2015-09-12', NULL, NULL),
(252, 'Abbey Rempel', 'rebeca.ernser@leuschke.info', 'hettinger.ahmed', '+1 (951) 738-7801', '1987-08-25', NULL, NULL),
(253, 'Dr. Meda Mann', 'nstreich@king.com', 'bryon.schaefer', '+1 (442) 212-8696', '1993-05-13', NULL, NULL),
(254, 'Leatha Yundt', 'hipolito95@yahoo.com', 'hudson.chance', '+13255737563', '1977-11-08', NULL, NULL),
(255, 'Mrs. Else Altenwerth IV', 'glowe@hotmail.com', 'bennett.kling', '1-575-590-8825', '1996-08-07', NULL, NULL),
(256, 'Kelsi Wintheiser', 'ijohnson@nicolas.com', 'israel22', '+1.360.438.2482', '1999-01-11', NULL, NULL),
(257, 'Adell Bartoletti', 'vabernathy@yahoo.com', 'brody92', '+14638979659', '2019-10-12', NULL, NULL),
(258, 'Retta Ankunding', 'priscilla28@yahoo.com', 'uflatley', '346.730.8570', '2018-01-31', NULL, NULL),
(259, 'Jermaine Jacobson', 'mitchell.spinka@yahoo.com', 'kaitlin.mcclure', '831-323-1037', '1990-07-20', NULL, NULL),
(260, 'Haylee Bins', 'dickens.cathy@yahoo.com', 'emma.powlowski', '352.377.2375', '2014-11-18', NULL, NULL),
(261, 'Jordane Ryan IV', 'larry69@leffler.net', 'kreiger.myrtice', '(954) 422-0454', '1980-08-12', NULL, NULL),
(262, 'Catharine Abbott', 'bobby63@bartell.info', 'virgil.smith', '+1-562-339-0593', '2000-08-20', NULL, NULL),
(263, 'Mrs. Loraine Hirthe', 'crist.vernice@hotmail.com', 'skiles.addie', '680-317-8669', '2001-06-23', NULL, NULL),
(264, 'Emelia Will', 'tgerlach@johnson.biz', 'morissette.kailee', '816.773.0677', '2009-08-26', NULL, NULL),
(265, 'Roxane King IV', 'witting.mellie@wuckert.com', 'eloisa.lowe', '+1-351-742-3918', '2014-07-01', NULL, NULL),
(266, 'Antoinette Davis V', 'dustin77@yahoo.com', 'evelyn51', '541.824.8601', '2018-07-09', NULL, NULL),
(267, 'Vivian Schowalter', 'scottie.marks@ruecker.info', 'pemmerich', '(959) 656-0840', '1973-03-27', NULL, NULL),
(268, 'Leilani Hammes', 'qkonopelski@gmail.com', 'uprice', '828-627-6152', '1999-06-06', NULL, NULL),
(269, 'Marielle Bradtke', 'keira62@hotmail.com', 'emile34', '(262) 418-4061', '2002-09-28', NULL, NULL),
(270, 'Julianne Zboncak', 'duncan.vandervort@gottlieb.info', 'alberta.hill', '+17173295311', '2019-03-31', NULL, NULL),
(271, 'Mrs. Aurore Murazik', 'eldon40@yahoo.com', 'kuhn.lottie', '831-297-6673', '2009-06-20', NULL, NULL),
(272, 'Dakota Bayer DDS', 'eanderson@yahoo.com', 'theodore.bins', '+1 (713) 814-4818', '2002-11-10', NULL, NULL),
(273, 'Gudrun Hettinger', 'cbauch@ratke.com', 'kovacek.jackie', '1-251-783-1782', '2016-03-24', NULL, NULL),
(274, 'Prof. Edna Hermann', 'rohara@wyman.com', 'anahi.nikolaus', '1-802-725-9636', '1974-11-30', NULL, NULL),
(275, 'Miss Kitty Stokes III', 'jast.mariah@yahoo.com', 'justyn43', '+1.317.854.8862', '1986-11-08', NULL, NULL),
(276, 'Addison Medhurst', 'burdette.kuhn@hotmail.com', 'vmurazik', '+1.781.655.9067', '2022-09-24', NULL, NULL),
(277, 'Janiya Veum', 'johns.dave@brakus.net', 'rita94', '857-724-4520', '1970-12-17', NULL, NULL),
(278, 'Maybelle Muller MD', 'chanel33@raynor.com', 'bashirian.alaina', '1-689-395-5477', '1990-05-29', NULL, NULL),
(279, 'Maggie Grady DDS', 'dooley.annie@gmail.com', 'ulangosh', '(332) 427-1291', '1972-08-16', NULL, NULL),
(280, 'Mrs. Mina Casper', 'hmarvin@cummerata.org', 'pwhite', '+1 (680) 937-8998', '2018-03-07', NULL, NULL),
(281, 'Kari Schinner V', 'okeefe.kenny@hettinger.org', 'waelchi.reagan', '(458) 278-8456', '2006-08-23', NULL, NULL),
(282, 'Kiara Hartmann II', 'schaden.wilmer@witting.com', 'soledad48', '1-215-546-5138', '2011-12-05', NULL, NULL),
(283, 'Margie Nitzsche', 'stracke.dolly@johnston.biz', 'merlin59', '(605) 355-3090', '1979-01-03', NULL, NULL),
(284, 'Abigale O\'Keefe', 'plebsack@hotmail.com', 'alanis31', '860.483.0497', '1988-03-24', NULL, NULL),
(285, 'Eldora Hamill V', 'parker.jaylen@miller.org', 'friesen.bernita', '+19387598492', '2017-03-20', NULL, NULL),
(286, 'Lessie Huels', 'karli.kerluke@hotmail.com', 'amparo65', '+1-385-600-9881', '1986-01-04', NULL, NULL),
(287, 'Alexandrine Fisher', 'dullrich@luettgen.info', 'mhowe', '1-832-336-0206', '1988-03-10', NULL, NULL),
(288, 'Lorna Mills', 'ron.schinner@upton.org', 'ddach', '(281) 865-3128', '1975-07-22', NULL, NULL),
(289, 'Vickie Ryan', 'lavinia62@hotmail.com', 'freda05', '+1.520.339.6226', '1977-06-05', NULL, NULL),
(290, 'Heaven McDermott', 'trudie58@hoeger.com', 'gebert', '+1 (984) 809-8908', '1978-10-20', NULL, NULL),
(291, 'Rachel Abernathy DDS', 'petra.grady@yahoo.com', 'jeffery73', '1-734-662-3772', '1991-12-04', NULL, NULL),
(292, 'Irma Goyette', 'wintheiser.kade@hotmail.com', 'phyllis19', '+1-820-961-5351', '1971-08-29', NULL, NULL),
(293, 'Rosie Abernathy', 'rmiller@keeling.net', 'estrella.douglas', '1-941-469-6953', '2010-09-05', NULL, NULL),
(294, 'Lillian Hartmann II', 'grady.winston@mraz.com', 'connelly.hugh', '+1.949.566.6698', '2022-09-29', NULL, NULL),
(295, 'Veronica Bosco I', 'onie.vonrueden@gmail.com', 'kfunk', '737-719-2986', '1992-07-19', NULL, NULL),
(296, 'Miss Chasity Heidenreich Sr.', 'mosciski.rachael@fahey.com', 'collier.tanya', '+1-339-616-4359', '2018-08-13', NULL, NULL),
(297, 'Veronica Halvorson III', 'tyrell.toy@gmail.com', 'sigmund.paucek', '+16788065980', '1987-01-29', NULL, NULL),
(298, 'Nellie DuBuque', 'mitchell55@smitham.info', 'kamryn.fadel', '+1-539-898-6662', '1999-03-04', NULL, NULL),
(299, 'Audie Hoppe', 'adrien.yundt@krajcik.com', 'towne.tristin', '(231) 853-4411', '1975-01-23', NULL, NULL),
(300, 'Prof. Shyann Wiegand PhD', 'bmosciski@hotmail.com', 'cgutmann', '425.686.6670', '1981-04-11', NULL, NULL),
(301, 'Lavonne Mohr', 'rowena25@hotmail.com', 'oliver53', '+1.269.334.4641', '1987-05-19', NULL, NULL),
(302, 'Yasmeen Bins', 'hartmann.isidro@gmail.com', 'uwisoky', '(430) 649-4211', '2006-05-24', NULL, NULL),
(303, 'Annetta Flatley', 'belle89@runolfsson.org', 'bridgette.stokes', '248-773-7517', '1980-03-30', NULL, NULL),
(304, 'Krystel Morar', 'isai.mraz@runte.com', 'tobin32', '+1 (740) 596-8533', '1992-09-17', NULL, NULL),
(305, 'Dr. Izabella Balistreri DDS', 'odessa.will@casper.com', 'nsmitham', '1-406-731-7986', '1997-01-31', NULL, NULL),
(306, 'Violette Koelpin II', 'dereck.wiegand@waelchi.org', 'sigmund.wiegand', '281.897.6383', '2001-10-05', NULL, NULL),
(307, 'Cleta Pfeffer', 'cade91@yahoo.com', 'murray.zemlak', '970-352-6098', '2011-08-04', NULL, NULL),
(308, 'Yolanda Russel', 'koconner@reichel.com', 'sally.rippin', '+1-947-377-7815', '1972-07-13', NULL, NULL),
(309, 'Ms. Liana Steuber', 'hmarks@treutel.org', 'dprice', '+1-475-521-1629', '1994-04-06', NULL, NULL),
(310, 'Onie Will', 'josephine62@gmail.com', 'turcotte.kyleigh', '+16263586216', '1985-11-13', NULL, NULL),
(311, 'Christy Kunze', 'koelpin.carleton@jacobson.org', 'mckenzie.kuhlman', '+1 (567) 582-0575', '2016-10-22', NULL, NULL),
(312, 'Angie Okuneva V', 'wstoltenberg@kuphal.net', 'lehner.issac', '+1 (858) 452-7001', '1986-01-29', NULL, NULL),
(313, 'Lynn Lang IV', 'rruecker@kunde.com', 'slowe', '364.310.2057', '1983-09-22', NULL, NULL),
(314, 'Lavonne Wisozk', 'branson.sauer@yahoo.com', 'friesen.luella', '(540) 374-8324', '1980-07-17', NULL, NULL),
(315, 'Otha Volkman', 'pklocko@yahoo.com', 'stanton.leonie', '+1-334-223-6254', '1998-06-10', NULL, NULL),
(316, 'Dejah Stark', 'vdickinson@hotmail.com', 'brandi25', '929-764-6830', '1973-07-25', NULL, NULL),
(317, 'Earline Walker Jr.', 'faye18@hotmail.com', 'kautzer.jess', '+1-212-720-1913', '1994-12-28', NULL, NULL),
(318, 'Heather Senger', 'eleanora84@yahoo.com', 'mbernhard', '+1.980.668.0219', '2008-08-07', NULL, NULL),
(319, 'Hellen Hilpert', 'myrtice.glover@thompson.biz', 'bartell.garnet', '1-678-926-8681', '1984-12-29', NULL, NULL),
(320, 'Mabel Braun III', 'creola.flatley@gmail.com', 'greenfelder.ashly', '+1 (267) 925-8112', '1981-12-07', NULL, NULL),
(321, 'Margot White', 'anderson.fannie@stroman.com', 'mzboncak', '920.866.8141', '2001-02-10', NULL, NULL),
(322, 'Amara Larkin', 'klocko.fidel@eichmann.com', 'nlehner', '573-871-9864', '1999-01-01', NULL, NULL),
(323, 'Noemi Block', 'pwolf@hotmail.com', 'shanahan.pamela', '1-463-775-4404', '2020-05-03', NULL, NULL),
(324, 'Mrs. Mafalda Schoen V', 'hertha12@berge.com', 'ciara33', '815.424.8328', '1977-02-27', NULL, NULL),
(325, 'Aurelie Rogahn Jr.', 'palma98@jenkins.com', 'fern.feest', '539-208-5042', '2002-11-22', NULL, NULL),
(326, 'Oleta Koss', 'cassandra.roob@gmail.com', 'wkessler', '520.965.5174', '2007-03-08', NULL, NULL),
(327, 'Mrs. Ofelia Schimmel', 'paucek.madaline@bode.info', 'linda.rodriguez', '1-463-690-9152', '1998-05-15', NULL, NULL),
(328, 'Jadyn Sawayn I', 'melany99@gmail.com', 'crooks.letitia', '704.828.0373', '1995-10-04', NULL, NULL),
(329, 'Prof. Hertha Lesch III', 'mosciski.gussie@yahoo.com', 'thomas.watsica', '(737) 246-8834', '1999-02-13', NULL, NULL),
(330, 'Cynthia McCullough', 'qmorissette@yahoo.com', 'muriel.welch', '831.322.7506', '1970-04-02', NULL, NULL),
(331, 'Ms. Vallie Wyman III', 'carole.sporer@grimes.com', 'clay.walker', '+1.931.793.8355', '2004-10-25', NULL, NULL),
(332, 'Dayana Roob', 'brianne01@farrell.com', 'marcellus06', '1-417-847-1170', '2005-08-19', NULL, NULL),
(333, 'Ms. Luz Parker', 'lera.tillman@gmail.com', 'ystreich', '956.258.4837', '2002-05-25', NULL, NULL),
(334, 'Gina Murphy', 'grant.joelle@pagac.biz', 'richmond00', '405-631-1906', '1993-01-30', NULL, NULL),
(335, 'Emelie Lemke', 'ortiz.riley@sauer.com', 'lemke.brown', '+1-931-904-9428', '1996-04-06', NULL, NULL),
(336, 'Evelyn Hermiston', 'darien.sanford@hotmail.com', 'braeden.friesen', '+13609393616', '1973-08-17', NULL, NULL),
(337, 'Winifred Kemmer', 'willms.brittany@crooks.com', 'weimann.helga', '1-272-327-5318', '2010-11-15', NULL, NULL),
(338, 'Camille Schimmel', 'ocie82@reynolds.com', 'feeney.stephania', '706.632.9642', '1990-08-24', NULL, NULL),
(339, 'Isobel Lakin', 'hahn.jody@gaylord.com', 'stark.marcella', '507.553.2290', '2003-11-07', NULL, NULL),
(340, 'Prof. Elizabeth Moore II', 'gilbert97@gmail.com', 'bulah.hackett', '309.748.1470', '1970-10-30', NULL, NULL),
(341, 'Hattie Altenwerth', 'spencer.cole@gmail.com', 'maye.veum', '947.766.7106', '1970-05-16', NULL, NULL),
(342, 'Eda Armstrong DDS', 'lreilly@gmail.com', 'barry.haley', '228-384-2821', '2004-07-18', NULL, NULL),
(343, 'Evelyn Kunde', 'jana06@hotmail.com', 'pagac.raymond', '386.816.4469', '1999-08-11', NULL, NULL),
(344, 'Jessika Swift II', 'ubarrows@koepp.org', 'emard.viola', '+1.618.907.6083', '1977-11-22', NULL, NULL),
(345, 'Ms. Ruth Wehner', 'rosemarie91@gmail.com', 'nlemke', '(907) 856-0144', '2020-05-14', NULL, NULL),
(346, 'Syble Considine', 'jewel.rodriguez@gmail.com', 'vaughn.strosin', '(231) 682-7858', '2016-07-07', NULL, NULL),
(347, 'Prof. Jade Lebsack', 'clifton90@hotmail.com', 'xconsidine', '(503) 313-6388', '1982-06-01', NULL, NULL),
(348, 'Dr. Shyanne Abernathy', 'brock.collins@hotmail.com', 'ray.frami', '+13186391578', '2020-01-04', NULL, NULL),
(349, 'Carrie Watsica', 'mallie.jacobs@shields.com', 'brent59', '+1-669-619-4203', '1991-12-17', NULL, NULL),
(350, 'Mrs. Jacklyn Bechtelar', 'ryder.ferry@gmail.com', 'lroberts', '220-806-6413', '1973-12-14', NULL, NULL),
(351, 'Tessie Wilderman', 'olson.antone@gmail.com', 'dbreitenberg', '364.338.0805', '1975-09-22', NULL, NULL),
(352, 'Miss Reba Corkery', 'phyllis56@gmail.com', 'marina.borer', '+1 (720) 972-5738', '2007-09-23', NULL, NULL),
(353, 'Verna Crona PhD', 'catharine.okeefe@yahoo.com', 'veum.stone', '(406) 805-5491', '2000-11-19', NULL, NULL),
(354, 'Nedra Wolff', 'rice.geovanny@yahoo.com', 'kaitlin66', '920-691-1665', '2016-08-08', NULL, NULL),
(355, 'Eryn Hamill', 'pschulist@hotmail.com', 'gbeier', '(575) 747-9803', '2015-10-26', NULL, NULL),
(356, 'Patsy Jacobson', 'rhowell@hotmail.com', 'elda.damore', '+1-458-288-0596', '2012-07-06', NULL, NULL),
(357, 'Winona Rowe', 'mgislason@yahoo.com', 'antwan.jaskolski', '949.700.1592', '2022-04-11', NULL, NULL),
(358, 'Lysanne Bosco', 'purdy.dax@marvin.net', 'name.nolan', '(651) 966-1553', '1993-09-15', NULL, NULL),
(359, 'Noelia Walter I', 'lucius80@little.com', 'eldon74', '347.430.0869', '1975-12-20', NULL, NULL),
(360, 'Miss Hellen Bartoletti DVM', 'klein.ricky@yahoo.com', 'bryana31', '1-301-869-0329', '1979-03-29', NULL, NULL),
(361, 'Ms. Myrtis Jacobs', 'friedrich34@gislason.com', 'pfannerstill.immanuel', '(310) 790-5587', '2005-02-06', NULL, NULL),
(362, 'Dr. Yolanda Marvin', 'eliezer66@konopelski.com', 'elwin20', '+1-336-950-8322', '1999-05-06', NULL, NULL),
(363, 'Dr. Domenica Abernathy', 'nswift@senger.com', 'boyd43', '878-517-4677', '2003-01-22', NULL, NULL),
(364, 'Billie Becker', 'howell.javonte@fisher.com', 'christine.kuhic', '704-543-4627', '1978-07-16', NULL, NULL),
(365, 'Mrs. Elna Halvorson MD', 'abelardo04@gmail.com', 'carroll.colton', '(929) 968-3413', '2006-01-12', NULL, NULL),
(366, 'Eunice Braun', 'matilda50@gmail.com', 'tkuhic', '+1-629-641-8584', '2013-05-12', NULL, NULL),
(367, 'Candida Upton PhD', 'arch05@lemke.biz', 'drowe', '409-221-5184', '2022-08-16', NULL, NULL),
(368, 'Mrs. Tiffany Ledner Sr.', 'augustine67@russel.info', 'zola05', '+1.445.278.1554', '1988-12-06', NULL, NULL),
(369, 'Ms. Rosetta Luettgen III', 'randal.sipes@yahoo.com', 'kulas.kamren', '458-788-1946', '1984-02-10', NULL, NULL),
(370, 'Dr. Tracy Barrows II', 'zthompson@zemlak.com', 'corrine52', '413-666-5095', '2003-04-08', NULL, NULL),
(371, 'Corene Lindgren', 'ygrimes@gmail.com', 'elvie.ebert', '+1.458.585.0434', '1986-05-29', NULL, NULL),
(372, 'Tiara Ferry DDS', 'reynolds.daron@witting.com', 'omari.osinski', '(262) 948-8130', '2015-01-26', NULL, NULL),
(373, 'Clarissa Gleichner', 'ubernhard@gmail.com', 'bweimann', '228.791.8488', '1999-01-12', NULL, NULL),
(374, 'Glenda Oberbrunner', 'murl.renner@yahoo.com', 'vmann', '1-781-853-5326', '2012-02-18', NULL, NULL),
(375, 'Dariana Zemlak', 'bo.mclaughlin@dickinson.com', 'ortiz.kale', '251-382-2847', '1981-05-15', NULL, NULL),
(376, 'Jazlyn Yundt', 'aniya.yundt@hotmail.com', 'alden.leffler', '832-428-2828', '1977-03-18', NULL, NULL),
(377, 'Miss Kendra Kuvalis PhD', 'elroy.lueilwitz@yahoo.com', 'donnelly.nina', '1-734-631-1682', '1988-11-13', NULL, NULL),
(378, 'Prof. Norma Wehner DVM', 'elroy51@klocko.com', 'macy74', '1-419-387-1844', '2012-09-16', NULL, NULL),
(379, 'Shea Quigley', 'wrempel@hotmail.com', 'friesen.rocio', '+13644939430', '1992-07-09', NULL, NULL),
(380, 'Eloisa Walker', 'cartwright.reece@gmail.com', 'stephan.koss', '(832) 310-8519', '1986-01-23', NULL, NULL),
(381, 'Candice Veum', 'hhamill@gmail.com', 'eprosacco', '+1-424-324-5740', '2012-10-18', NULL, NULL),
(382, 'Polly Ullrich', 'qbecker@kilback.org', 'wilber82', '586.268.6595', '1987-03-21', NULL, NULL),
(383, 'Calista Grant', 'ressie.spencer@ward.com', 'rowe.caleigh', '(470) 233-1577', '1981-05-17', NULL, NULL),
(384, 'Miss Donna McGlynn II', 'aufderhar.baby@hotmail.com', 'lexi60', '864.840.4361', '1993-01-08', NULL, NULL),
(385, 'Dr. Martina Nicolas', 'aileen.gutkowski@hotmail.com', 'ofelia.shields', '+1-228-718-0731', '1985-04-14', NULL, NULL),
(386, 'Marion Blanda', 'pkeeling@hotmail.com', 'hkling', '339-408-2107', '1989-03-17', NULL, NULL),
(387, 'Ms. Marielle Blanda', 'oral.langosh@medhurst.com', 'cmraz', '+17605574585', '2000-07-26', NULL, NULL),
(388, 'Roxanne Bernhard', 'mertz.elaina@yahoo.com', 'block.agustina', '1-269-529-1517', '1980-02-29', NULL, NULL),
(389, 'Dr. Hilma Koss MD', 'heller.myriam@gmail.com', 'makenzie33', '+1 (737) 240-2955', '1995-02-01', NULL, NULL),
(390, 'Ms. Lera Dooley', 'sibyl.kulas@kris.com', 'tpurdy', '1-540-816-1987', '1992-08-20', NULL, NULL),
(391, 'Dr. Arielle Turcotte', 'wiegand.lavern@gmail.com', 'edison.waelchi', '563.431.3746', '1986-06-20', NULL, NULL),
(392, 'Damaris Zieme', 'fatima.mayer@pagac.com', 'teresa.kris', '(810) 685-6496', '2016-01-03', NULL, NULL),
(393, 'Hailee Rempel', 'eleonore96@schultz.com', 'russel.nitzsche', '+1-336-619-6172', '2020-07-11', NULL, NULL),
(394, 'Velva Mosciski', 'esmeralda.jakubowski@graham.net', 'williamson.elody', '+1-814-803-3008', '1998-03-27', NULL, NULL),
(395, 'Kylee McLaughlin', 'karine90@rohan.net', 'zdickens', '1-520-912-1325', '1976-02-21', NULL, NULL),
(396, 'Miss Kathleen Ruecker PhD', 'lindsey.beahan@hotmail.com', 'considine.jennyfer', '(951) 277-7979', '2005-08-03', NULL, NULL),
(397, 'Mrs. Margarette Senger DVM', 'shakira88@hotmail.com', 'frami.aniya', '1-351-830-3495', '1977-06-12', NULL, NULL),
(398, 'Lelia Littel', 'nicola20@bogisich.com', 'astroman', '806.812.8215', '2020-11-08', NULL, NULL),
(399, 'Florida Considine', 'adele.fahey@gmail.com', 'dangelo72', '1-225-693-4103', '2003-08-25', NULL, NULL),
(400, 'Lacey Wyman I', 'jason73@murazik.com', 'geovany.johnson', '(323) 962-4395', '1999-04-04', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `serveurs`
--

CREATE TABLE `serveurs` (
  `id` int(11) NOT NULL,
  `Numero de Serie` varchar(255) DEFAULT NULL,
  `CODE A BARRE` varchar(255) DEFAULT NULL,
  `MONTANT PRIX DACHAT` decimal(10,2) DEFAULT NULL,
  `MODELE du Materiel` varchar(255) DEFAULT NULL,
  `Disponibilite du rack` varchar(255) DEFAULT NULL,
  `DATE DE MISE EN PRODUCTION` varchar(255) DEFAULT NULL,
  `RAM` varchar(255) DEFAULT NULL,
  `OS` varchar(255) DEFAULT NULL,
  `PROCESSEUR` varchar(255) DEFAULT NULL,
  `ADRESSE IP` varchar(255) DEFAULT NULL,
  `ADRESSE MAC` varchar(255) DEFAULT NULL,
  `VERSION ANTIVIRUS` varchar(255) DEFAULT NULL,
  `DATE MAJ ANTIVIRUS` varchar(255) DEFAULT NULL,
  `C` varchar(255) DEFAULT NULL,
  `D` varchar(255) DEFAULT NULL,
  `E` varchar(255) DEFAULT NULL,
  `F` varchar(255) DEFAULT NULL,
  `NOM DU SERVEUR` varchar(255) DEFAULT NULL,
  `AFFECTATION` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('u4kvlN7zXRbvAQ0gV82WnKmj5WupLNRqqWXH43sa', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSUhUUTJ2QVJTV3lQMnhjeHBrRERvd05GUFpjczMyQlpqa3liODltcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1679533496);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `role` int(11) NOT NULL DEFAULT 0,
  `employe_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `role`, `employe_id`) VALUES
(1, 'Issam Harnoufi', 'reyissam0428@gmail.com', '$2y$10$1u3ljCqjjDMf43WkmrL7f.dMOb7gZReu3hNINW0QQEEQJhrvh1JBS', '2023-04-04 14:49:42', '2023-04-04 14:49:42', 1, NULL),
(2, 'test3', 'test3@gmail.com', 'test3', '2023-03-29 00:07:13', '2023-03-29 00:07:13', 0, NULL),
(3, 'Admin', 'Admin@gmail.com', '$2y$10$dnWl3fqL5jT90LgB6n61zulsB5KixMm9T8cel/afV9gC3vpUY44Sm', '2023-04-04 14:29:42', '2023-04-04 14:29:42', 0, NULL),
(4, 'test', 'test@gmail.com', '$2y$10$DUuS54rzcf0f6I9v.V/iMu2dpgWshVidAmq2b8s5DRFEsRnWQykve', '2023-04-04 14:53:34', '2023-04-04 14:53:34', 0, NULL),
(5, 'jkkkkkk', 'jh@gmail', '$2y$10$TeYF3kRNl0i/jv7Fudvo6.bA9H3HMmiyWA8iklCp2dU0JoOXA110e', '2023-04-05 16:57:14', '2023-04-05 16:57:14', 0, NULL),
(6, 'htrrrrr', 'rrtttttttt@gmail.com', '$2y$10$fR/Xr7UAKIAajvTaIl.RL.8eW./VeEub5TLD3lBlTBt2Rg7OZ4D9m', '2023-04-05 18:20:19', '2023-04-05 18:20:19', 0, NULL),
(7, 'oussama mejjati', 'oussama.mejjati@gmail.com', '$2y$10$7koX5eNS3Auvmtidzo7qSOBQm7cKo.2uFfcNgnfKz3wN3Q5zQTmXq', '2023-04-05 18:26:12', '2023-04-05 18:26:12', 0, NULL),
(8, 'ali', 'ali@gmail.com', '$2y$10$l/Ppgig02AnxOAVcoUoS8.O75L1efmfKOuViES07CDY2RrNy2iu0q', '2023-04-05 22:21:41', '2023-04-05 22:21:41', 0, NULL),
(9, 'ali', 'ali@gmail.com', '$2y$10$AyvFQSs7l1brAWtibe9rdeX4wMnzg7MUPlR38jYnJHptqLVp/fVBi', '2023-04-05 21:21:41', '2023-04-05 21:21:41', 0, 16),
(10, 'mmmm', 'mmmm@gmail.mmmm', '$2y$10$YfHzdCVNYg1BZd.HtuZjqOwKND7caqaF5hIsywz0DMhLQX5p38NAO', '2023-04-05 22:26:34', '2023-04-05 22:26:34', 0, NULL),
(11, 'dsd', 'ddddd@ddd', '$2y$10$9HkiEIgJfY9DLwyuW9vifeZ5CgvVsQYWqAzfIMlM5I8TQQdGoY17.', '2023-04-05 22:28:39', '2023-04-05 22:28:39', 0, NULL),
(12, 'rgg', 'ddddd@grgr', '$2y$10$Olp/QYcsDQ4/aIbNk3WlKu0zexDMJkrGdY5AVtqA6H3Z3Ypj7GwLG', '2023-04-05 22:32:07', '2023-04-05 22:32:07', 0, NULL),
(13, 'rgg', 'ddddd@grgr', '$2y$10$T.hIop2nIG/TWK1NdAKE0eDsSht2JCVn10rjZZ1pd0W2RIwVRd.S.', '2023-04-05 21:32:07', '2023-04-05 21:32:07', 0, 19),
(14, 'yasser', 'yasser@gmail.com', '$2y$10$VqJlaq3W93FKpwby6mbbJeK.CBz/COTXdXxs/bPl4UFNgH9E77332', '2023-04-05 22:34:57', '2023-04-05 22:34:57', 0, NULL),
(15, 'yukukyu', 'yukyuk@gmail.com', '$2y$10$8zlr4BRqfwiPNTiqiAtZSO2BFUmzXU.Rhv8G1DmqBai.NXUwK/2im', '2023-04-05 22:37:09', '2023-04-05 22:37:09', 0, NULL),
(16, 'yukukyu', 'yukyuk@gmail.com', '$2y$10$7NMcx.FG/V8bLkeF6PeZ1uBpRquATG89pcuLJB/At8ZWfmVXZ3S8W', '2023-04-05 21:37:09', '2023-04-05 21:37:09', 0, 21),
(17, 'l,jkkgh:j', 'hkjll@tghsh', '$2y$10$QMC3CJJvP3HjCsj61hHuruBwiLiqNlxKPiXDgPIH9ojIN32uUDIne', '2023-04-05 22:38:38', '2023-04-05 22:38:38', 0, NULL),
(18, 'l,jkkgh:j', 'hkjll@tghsh', '$2y$10$q0KZg2iyk0mg9Js2IwFZDuOmjrHR52ZiUplris9nnko/Z3b4XaXV.', '2023-04-05 21:38:38', '2023-04-05 21:38:38', 0, 22),
(19, 'kjgj;j;hj;h', 'llkklklh@gmail.cqdqs', '$2y$10$P426LJd9CRfuB.pRPGACzOoGE8P4AYVmClXTq0cUsFerCR4IvDPsy', '2023-04-05 22:40:04', '2023-04-05 22:40:04', 0, NULL),
(20, 'kjgj;j;hj;h', 'llkklklh@gmail.cqdqs', '$2y$10$8HsaMM6GNZk7N/M1K3JIOOXQTxo9JXhEHCy1OQp64Oe4WAT9m.dIm', '2023-04-05 21:40:04', '2023-04-05 21:40:04', 0, 23),
(21, ';,;,;,;n', 'fgdgd@gfdfgd', '$2y$10$fh6nSxawGB.5mfQ6MntbsukC8ouubYZ7gsbheNiXVNeYqmF9bdxgK', '2023-04-05 21:46:04', '2023-04-05 21:46:04', 0, 24),
(22, 'issam', 'issam@gmail', '$2y$10$SkhEdLlsAy/s/qw9iaUHtOLYSfEA/7mLxIO2nJ3FFrep53crEG6D6', '2023-04-05 21:47:17', '2023-04-05 21:47:17', 0, 25),
(23, 'kkk', 'kkk@gmail.com', '$2y$10$AebEo0Qi79/7P3CklmD3puF7EuIypdTL6EW6GSJRN9luWh0gYi12u', '2023-04-05 22:03:01', '2023-04-05 22:03:01', 0, 26),
(24, 'test', 'test10@gmail.com', '$2y$10$SYa2Xv92i6QfN.8qBAxM1OOn7a4qgUVcCj5pcLyZm2clmulKG9eUe', '2023-04-06 10:22:14', '2023-04-06 10:22:14', 0, 27);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Index pour la table `demandes`
--
ALTER TABLE `demandes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `demandes_user_id_foreign` (`user_id`);

--
-- Index pour la table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employe_email_unique` (`email`);

--
-- Index pour la table `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reponse_demande`
--
ALTER TABLE `reponse_demande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reponse_demande_demande_id_foreign` (`demande_id`);

--
-- Index pour la table `reponse_rapport`
--
ALTER TABLE `reponse_rapport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reponse_rapport_rapport_id_foreign` (`rapport_id`);

--
-- Index pour la table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_user_id_foreign` (`user_id`);

--
-- Index pour la table `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `servers_email_unique` (`email`);

--
-- Index pour la table `serveurs`
--
ALTER TABLE `serveurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `demandes`
--
ALTER TABLE `demandes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `employe`
--
ALTER TABLE `employe`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `employes`
--
ALTER TABLE `employes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=575;

--
-- AUTO_INCREMENT pour la table `reponse_demande`
--
ALTER TABLE `reponse_demande`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `reponse_rapport`
--
ALTER TABLE `reponse_rapport`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `servers`
--
ALTER TABLE `servers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT pour la table `serveurs`
--
ALTER TABLE `serveurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `demandes`
--
ALTER TABLE `demandes`
  ADD CONSTRAINT `demandes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `employes` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reponse_demande`
--
ALTER TABLE `reponse_demande`
  ADD CONSTRAINT `reponse_demande_demande_id_foreign` FOREIGN KEY (`demande_id`) REFERENCES `demandes` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reponse_rapport`
--
ALTER TABLE `reponse_rapport`
  ADD CONSTRAINT `reponse_rapport_rapport_id_foreign` FOREIGN KEY (`rapport_id`) REFERENCES `reports` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `employes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
