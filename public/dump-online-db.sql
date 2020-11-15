-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 30 oct. 2020 à 22:22
-- Version du serveur :  5.6.41-84.1
-- Version de PHP : 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `unibeta_3bii`
--
CREATE DATABASE IF NOT EXISTS `unibeta_3bii` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `unibeta_3bii`;

-- --------------------------------------------------------

--
-- Structure de la table `buildings`
--

CREATE TABLE `buildings` (
  `building_id` varchar(50) NOT NULL,
  `building_name` varchar(50) DEFAULT NULL,
  `is_checked` tinyint(4) DEFAULT '1',
  `school_id` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `buildings`
--

INSERT INTO `buildings` (`building_id`, `building_name`, `is_checked`, `school_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
('bui89spxvpvna1rwrefrezeuadk2uvu5rttnf40hyfebrms8h3', 'building #5', 0, 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-07-18 05:10:14', '2020-07-18 12:12:44', NULL),
('bui9myvpwq6mcwfp5lyrcn7aofy9xsdpfvwy7hwllvwb55yutt', 'building #5', 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:48', '2020-10-12 18:05:48', NULL),
('buifpt3ps2rt1zlqcao1chqx2kk2qkyfv6ku5vgzsh7rev9aux', 'building #1', 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:48', '2020-10-12 18:05:48', NULL),
('buiixvt229i8egog3wksbjmq7pqslv67wsbkfhwdms13wez8mn', 'building #4', 1, 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-07-18 05:10:14', '2020-07-18 05:10:14', NULL),
('buij5xzjf4apiino5j3dzyubfuoge0pgfwn6oo5xmg4ylkvyrn', 'building #4', 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:48', '2020-10-12 18:05:48', NULL),
('buijdomhcldbil8qi1dqbkctpbqhd4ppkhlnejae4izikqjnw2', 'Saint John Building', 1, 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-07-18 12:14:46', '2020-07-18 12:14:46', NULL),
('buineioqb40v6io4v5wvgfg2wgaqh2fmcnrmskkvzpxcaanero', 'building #1', 1, 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-07-18 05:10:14', '2020-07-18 05:10:14', NULL),
('buipeddscwrwqqcxt1powityeqk9mnhd2tdiyzjhnngar9ag2m', 'building #2', 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:48', '2020-10-12 18:05:48', NULL),
('buir1myydb8smpq3c5jt8z9ogf4prxn8pbvdhbjimbhklc4rqq', 'building #2', 1, 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-07-18 05:10:14', '2020-07-18 05:10:14', NULL),
('buittt3jovwkxqhk7grrv4wupk2dipu9xaf4np1pmk3oscjpvu', 'building #3', 1, 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-07-18 05:10:14', '2020-07-18 05:10:14', NULL),
('buiugplnvmigii6vowzkncekr0sxnw3y1jhxr1waiatp8jmc9d', 'building #3', 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:48', '2020-10-12 18:05:48', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `channels`
--

CREATE TABLE `channels` (
  `channel_id` varchar(50) NOT NULL,
  `reflect_key` varchar(50) DEFAULT NULL COMMENT 'same like channel_id, we use it to be able to set registration channel_id to null',
  `channel_content` varchar(50) DEFAULT NULL COMMENT 'SWELv1 | SWELv2 |Software engineer ',
  `admission_amount` float DEFAULT '0' COMMENT 'amount that must be paid for application',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `channels`
--

INSERT INTO `channels` (`channel_id`, `reflect_key`, `channel_content`, `admission_amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
('chn6dwccmyi2fnlkquqkomethwijv1qddwk0d2prhyd5ludwpp', NULL, 'Software Engineering', 150500, '2020-08-25 17:54:19', '2020-08-25 17:54:19', NULL),
('chnoudlal98fw7sltruzauoq9lsyud4totist7j7o8y9pivogc', NULL, 'Data Science #1', 1544.25, '2020-08-25 17:54:47', '2020-08-25 17:55:33', '2020-08-25 17:55:33'),
('chnwxbmuz50vnbsmqfrp96papqnzuxdejoamoleqf7zqhwdq9y', NULL, 'Electronic', 150500, '2020-08-25 17:54:32', '2020-08-25 17:54:32', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

CREATE TABLE `classes` (
  `class_id` varchar(50) NOT NULL,
  `reflect_key` varchar(50) DEFAULT NULL COMMENT 'Ce champ aura toujours la même valeur que class_id, ce champ est utilisé afin de definir le champ registrations.class_id a null',
  `class_name` varchar(100) DEFAULT NULL,
  `class_size` int(11) DEFAULT NULL,
  `admission_amount` float DEFAULT NULL,
  `is_checked` tinyint(1) DEFAULT '1',
  `school_id` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `classes`
--

INSERT INTO `classes` (`class_id`, `reflect_key`, `class_name`, `class_size`, `admission_amount`, `is_checked`, `school_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
('cls1k3xtxsibbz9kjyqe1bx0dftsqmvbeexnrd1ulnspg3n7z6', NULL, 'Civil Engineering', 60, 400000, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-27 22:05:51', '2020-10-27 22:05:51', NULL),
('cls3qp0jkoe4jymw1jfdfgxgknbtavvsjwnts6ofhkls2tnmih', NULL, 'Petroleum Engineering', 60, 400000, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-27 22:04:57', '2020-10-27 22:04:57', NULL),
('cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', NULL, 'Agriculture', 60, 400000, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-27 22:04:21', '2020-10-27 22:04:21', NULL),
('clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', NULL, 'Accountancy', 60, 400000, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:48', '2020-10-28 15:05:23', NULL),
('clsfvof1pllvpms4ywkyl2i1vfzju79zbzsjirmevyyd91rygs', NULL, 'Software Engineering', 60, 400000, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-27 22:05:09', '2020-10-27 22:05:09', NULL),
('clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', NULL, 'Midwifery', 60, 400000, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-27 22:06:20', '2020-10-27 22:06:20', NULL),
('clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', NULL, 'Pharmacy Technology', 60, 400000, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-27 21:58:44', '2020-10-27 21:58:44', NULL),
('clsh4yhnfrosrbsnmxl9enmxfty04emhvpzlvdajzs4uyct2bj', NULL, '6ieme', 50, 95000, 0, 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-07-18 05:10:15', '2020-10-14 22:11:09', NULL),
('clshh5jnrpmsxcl2pdzjkncqdxocsobqaiw18wruhmeovjjtgo', NULL, '3ième', 50, 100000, 0, 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-07-18 05:10:15', '2020-10-14 22:12:15', NULL),
('clshrnqxtbsjedxek1ei0srlg0b6vfoy3diwxfvd36aoenx9ir', NULL, 'Health Science', 60, 100000, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:48', '2020-10-28 15:12:59', NULL),
('clsiixhlcubo8iyqy8mnsaybpnnny61m46sxtxfc8fpc0bygys', NULL, 'Bakery And Food Processing', 60, 400000, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-27 21:57:48', '2020-10-27 21:57:48', NULL),
('clsixzypmetdxynwwq9uqpczo3cmhqwjdaxqjh4kovnpcel0cn', NULL, 'Hotel management and Catering', 60, 400000, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:48', '2020-10-28 15:13:09', NULL),
('clsmzqqoyrldt0bjinaomlzpavll8bsj2wtwsnpkeq8othtuvm', NULL, '5ieme', 50, 120000, 0, 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-07-18 05:10:15', '2020-10-14 22:10:27', NULL),
('clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', NULL, 'Medical Lab Sciences', 60, 400000, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-27 22:06:32', '2020-10-27 22:06:32', NULL),
('clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', NULL, 'Science Biomédical Et Infirmier', 60, 400000, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-28 11:12:49', '2020-10-28 11:12:49', NULL),
('clsqvqjkf3dko4pdqx1f65oa502i0tcnit9msh90ytc4y8xqew', NULL, 'Nursing', 60, 400000, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-27 22:06:04', '2020-10-27 22:06:04', NULL),
('clsrnruxxxjsb78o5jkphskxthaltu1z3evnz6zb1u3rslkpl5', NULL, '2nde', 50, 90000, 1, 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-07-18 05:10:15', '2020-10-14 22:17:46', NULL),
('clssoteljqt80jjpav5qmta8c2tinebildyl4qhhosabp7jaea', NULL, '4ieme', 50, 80000, 0, 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-07-18 05:10:15', '2020-10-14 22:11:42', NULL),
('clssraxfubaskg0su2ehoaikbmdpskerrnspz4uirusoxxxkzr', NULL, 'Network And Security', 60, 400000, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-27 22:05:30', '2020-10-27 22:05:30', NULL),
('clsstwk81eoanw1lgaul7eiqoqq4rdqvgw4jremrmarjyztlxf', NULL, 'Marketing Trade And Sales', 60, 400000, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:48', '2020-10-27 21:23:30', NULL),
('clsupb2kwfjpxdam5d49p8m8zxm15diztcojletkk76z7kv7ue', NULL, 'Banking And Finance', 60, 400000, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-27 22:03:40', '2020-10-27 22:03:40', NULL),
('clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', NULL, 'Law', 60, 400000, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-27 22:04:30', '2020-10-28 15:13:03', NULL),
('clsyvtfgyytbwjmbtqjlkktpvevda9m65xzwtjivl2djzt2g38', NULL, 'Transport And Logistic', 60, 400000, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:48', '2020-10-27 21:21:23', NULL),
('clszo67slnbz6lvb8x1ke4152pn7k5wdajkgm9xwq4i5si1r80', NULL, 'Cooperate Communication', 60, 400000, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-27 22:04:42', '2020-10-27 22:04:42', NULL),
('clsztzi3v6ee1fdkmrqh5bvuahrscps6u5aijb2crctvqkwvoq', NULL, 'Mechanical Engineering', 60, 400000, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-27 22:05:44', '2020-10-27 22:05:44', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `classrooms`
--

CREATE TABLE `classrooms` (
  `classroom_id` varchar(50) NOT NULL,
  `building_id` varchar(50) DEFAULT NULL,
  `classroom_name` varchar(50) DEFAULT NULL,
  `seat` int(11) DEFAULT NULL,
  `is_checked` tinyint(4) DEFAULT '1',
  `school_id` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `classrooms`
--

INSERT INTO `classrooms` (`classroom_id`, `building_id`, `classroom_name`, `seat`, `is_checked`, `school_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
('clr31ohnv0mp5yztwj386gs5ewnyqmezxrcx4sf7cregqgjcj6', 'buij5xzjf4apiino5j3dzyubfuoge0pgfwn6oo5xmg4ylkvyrn', 'Terminus ', 15, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-28 21:17:45', '2020-10-28 21:17:45', NULL),
('clr3etm52johwxxuxbsdgvmsatsqne9eepon9ucfnt96tb2tcm', 'buifpt3ps2rt1zlqcao1chqx2kk2qkyfv6ku5vgzsh7rev9aux', 'Deido', 30, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:48', '2020-10-28 21:08:25', NULL),
('clr4mmxdqeyzvcbzkqgdoj61vhj7jlzzspynpowowksazsuuhy', 'buiugplnvmigii6vowzkncekr0sxnw3y1jhxr1waiatp8jmc9d', 'Makepe ', 20, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-28 21:10:34', '2020-10-28 21:10:34', NULL),
('clr5mc4ft6zzh4ixd6wzdz3dxvzrbatbnnip9bzt9qhb268khp', 'buineioqb40v6io4v5wvgfg2wgaqh2fmcnrmskkvzpxcaanero', 'Classroom #5', 25, 1, 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-07-18 05:10:14', '2020-07-18 05:10:14', NULL),
('clraa1bo1v0jiygqi5dkmrkwaryebjismm0tved6tmutgazfsj', 'bui89spxvpvna1rwrefrezeuadk2uvu5rttnf40hyfebrms8h3', 'Bonaberi', 25, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:48', '2020-10-27 10:30:26', NULL),
('clrb168ykapamnwmqs5ictpkguxaed52nbifiun30xvq7bfimr', 'bui89spxvpvna1rwrefrezeuadk2uvu5rttnf40hyfebrms8h3', 'Classroom #3', 25, 1, 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-07-18 05:10:14', '2020-07-18 05:10:14', NULL),
('clrb6etjrmq7lgpttvgial8doovpiqleocjrhkgbmnpbkldmqk', 'buiugplnvmigii6vowzkncekr0sxnw3y1jhxr1waiatp8jmc9d', 'Koululu', 20, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-28 21:17:18', '2020-10-28 21:17:18', NULL),
('clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', 'bui9myvpwq6mcwfp5lyrcn7aofy9xsdpfvwy7hwllvwb55yutt', 'Mbangue ', 20, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-28 21:11:24', '2020-10-28 21:11:24', NULL),
('clrcodowplhv42tk6zbbwvulf6ninkhxatrsuo7gi05enmqzmw', 'buipeddscwrwqqcxt1powityeqk9mnhd2tdiyzjhnngar9ag2m', 'Bonapriso', 25, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:48', '2020-10-27 10:30:26', NULL),
('clrf9nworkqbvxeba54ykyqc5srvavxfyhmgtezh2yzq5kqbty', 'buiugplnvmigii6vowzkncekr0sxnw3y1jhxr1waiatp8jmc9d', 'PK8', 10, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-28 21:19:03', '2020-10-28 21:19:03', NULL),
('clrfuc1nxkgezroooo4rjahlvymwa1ylt5cmun3gxgubzb7c2k', 'buiixvt229i8egog3wksbjmq7pqslv67wsbkfhwdms13wez8mn', 'Classroom #1', 25, 1, 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-07-18 05:10:14', '2020-07-18 05:10:14', NULL),
('clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', 'buineioqb40v6io4v5wvgfg2wgaqh2fmcnrmskkvzpxcaanero', 'Ndobo', 25, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:48', '2020-10-27 10:30:26', NULL),
('clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', 'buifpt3ps2rt1zlqcao1chqx2kk2qkyfv6ku5vgzsh7rev9aux', 'PK14', 20, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-28 21:20:22', '2020-10-28 21:20:22', NULL),
('clri0idqg8komivx2vrm7jq8jvoifmhwx5jobnwsyxx7pyscs4', 'buiugplnvmigii6vowzkncekr0sxnw3y1jhxr1waiatp8jmc9d', 'Grand Hangar', 25, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-28 21:10:05', '2020-10-28 21:10:05', NULL),
('clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', 'bui9myvpwq6mcwfp5lyrcn7aofy9xsdpfvwy7hwllvwb55yutt', 'Ndogbong', 25, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-28 21:12:23', '2020-10-28 21:12:23', NULL),
('clrksfb2yagtpgc5tjvt5rt1mmrawxgixajkzhlci991inzzui', 'buipeddscwrwqqcxt1powityeqk9mnhd2tdiyzjhnngar9ag2m', 'Ndokotti', 20, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-28 21:16:02', '2020-10-28 21:16:02', NULL),
('clro7xusj5x26rusl4grht99cbemnm2tlit168wfc8vnrp9nzi', 'buineioqb40v6io4v5wvgfg2wgaqh2fmcnrmskkvzpxcaanero', 'Classroom #4', 25, 1, 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-07-18 05:10:14', '2020-07-18 05:10:14', NULL),
('clrq8zcyhsp3jz9fanxwtwyypcqvkygfus8xdn3iulzged9lbi', 'buiugplnvmigii6vowzkncekr0sxnw3y1jhxr1waiatp8jmc9d', 'ANGE Rapheal', 15, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-28 21:18:22', '2020-10-28 21:18:22', NULL),
('clrrcmrziachv6fumdbjnzghg9ywecqe3vzagvjbiwigi7e14j', 'buifpt3ps2rt1zlqcao1chqx2kk2qkyfv6ku5vgzsh7rev9aux', 'Bilote', 20, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-28 21:16:34', '2020-10-28 21:16:34', NULL),
('clrruxrfwvxfjiwifobvokyotsvrzpergrcla5wzynp1xdujww', 'buij5xzjf4apiino5j3dzyubfuoge0pgfwn6oo5xmg4ylkvyrn', 'kotto ', 25, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-28 21:10:57', '2020-10-28 21:10:57', NULL),
('clrs1pijigk036l6vrctt9qnh7fcj8vu4muo8jzdapgiovq4vl', 'buifpt3ps2rt1zlqcao1chqx2kk2qkyfv6ku5vgzsh7rev9aux', 'Bonadale ', 20, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-28 21:14:34', '2020-10-28 21:14:34', NULL),
('clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', 'buipeddscwrwqqcxt1powityeqk9mnhd2tdiyzjhnngar9ag2m', 'Other Classroom', 25, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:48', '2020-10-28 21:09:27', NULL),
('clrv4pyijtbzn6uywv5is30f8ohp6zezqftp0rcfy1mvrwahq0', 'buifpt3ps2rt1zlqcao1chqx2kk2qkyfv6ku5vgzsh7rev9aux', 'pk12', 20, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-28 21:20:00', '2020-10-28 21:20:00', NULL),
('clrvbl81kh4ypj1dtzsinp7hje00qzw3pzrlwcivijtbah6bly', 'buifpt3ps2rt1zlqcao1chqx2kk2qkyfv6ku5vgzsh7rev9aux', 'PK10', 28, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-28 21:19:23', '2020-10-28 21:19:23', NULL),
('clrwejqhgmsv7i9tsbto9q6qjcune1r3uaag4hi5wkk35xlqfc', 'buipeddscwrwqqcxt1powityeqk9mnhd2tdiyzjhnngar9ag2m', 'Bonadibong', 20, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-28 21:12:55', '2020-10-28 21:12:55', NULL),
('clry4pj98d493hd9cqmoxatts6tepmel0ialzilydiylcplohg', 'buineioqb40v6io4v5wvgfg2wgaqh2fmcnrmskkvzpxcaanero', 'Classroom #2', 25, 1, 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-07-18 05:10:14', '2020-07-18 05:10:14', NULL),
('clrynyd9axx0hrmvhssegmr2e99cg2s1xm8xg7z6xof6cmeuro', 'buipeddscwrwqqcxt1powityeqk9mnhd2tdiyzjhnngar9ag2m', 'Carrefour mutzig', 20, 1, 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-28 21:09:18', '2020-10-28 21:09:18', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `courses`
--

CREATE TABLE `courses` (
  `course_id` varchar(50) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course_code` varchar(50) NOT NULL,
  `school_id` varchar(50) DEFAULT NULL,
  `is_checked` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `course_code`, `school_id`, `is_checked`, `created_at`, `updated_at`, `deleted_at`) VALUES
('crs054x1dpa0jhihd8aeydfe9pfd5fzh1mtdihqqmb9adswb2d', 'Food Study', 'UpRbmp', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:25:30', '2020-10-28 14:25:30', NULL),
('crs05bulq4jvut1h52c4zgebxmdzcxfuchfigssiv0dzeikkpb', 'Public Finance', '2hS9EV', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:09:38', '2020-10-28 13:09:38', NULL),
('crs08nEafFQkbwodExT7SVzF1CaDN0KKZkLBPOyMBUgdGzqwwu', 'Computer Sciences', '251', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 1, '2020-07-25 04:52:02', '2020-08-05 13:14:00', NULL),
('crs08zcrxs35sw2ibf1ps1hvpozlaf3ulnjz1mc95pq8ev1rne', 'Obstrical Pathologies Gynecological ', 'bWhPsl', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:13:09', '2020-10-28 14:13:09', NULL),
('crs0ajdemljhkfizasd9b2qlrjntgri77sf2umbwccqrfr3h3d', 'Constitutional Law ', '43jhWK', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:57:22', '2020-10-28 12:57:22', NULL),
('crs0bxmsmx26qaho9yy1b1cj45oxbjbmrreyum5jxr1rjzlpna', 'Fucntional english/Functional French ', 'lq7QSt', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:33:42', '2020-10-28 14:33:42', NULL),
('crs0cmiui0csml5doaxyhm6yqeu9trtkjjixu0allrqgmudf7h', 'Clinical internship 1', 'xeSuua', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:14:52', '2020-10-28 14:14:52', NULL),
('crs0cvt8swenw00gsisfwlfpy2c5sxuajzfgdun5em0y6pp2pe', 'Corporate Criminal Law ', 'Du0UDO', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:08:25', '2020-10-28 13:08:25', NULL),
('crs0i8xjonzxqsafbgcssem8xeqjdzb49cqw2oxzpji8vrxs9x', 'Jigs Fixtures and Automation', 'vc8D6Z', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:31:21', '2020-10-28 13:31:21', NULL),
('crs18dk5wba8cqxkdzb7kjklabjqsxkbdlrfbwpieiovgzlgvw', 'Technique in the laboratory ', '5WR0CD', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:36:01', '2020-10-28 14:36:01', NULL),
('crs1dr4y7lldjgihuiwotdgfugubonmxn404fvvrak9k0jmp3e', 'Communication for develpment education for family life-basic care at birth/neonatology', 'VBQpYt', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:12:52', '2020-10-28 14:12:52', NULL),
('crs20thucf5itlnwle5juyfrygozmnphqyodgnjsobe8od8gbz', 'Sociology and anthropology, medical psychology- Ethics and medical ', '3DG0zK', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:30:52', '2020-10-28 14:30:52', NULL),
('crs2hjztfi5othrg9fzdp50sbcmhlyjloxlmfmrzlbqhqj4dt9', 'Company Accounting 1 & 2', 'bmG566', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:10:31', '2020-10-27 23:10:31', NULL),
('crs2JlgMQHCqj1u0VyRSyQiUxDDhmjHHV2Bt1hIconCNXSV5yM', 'Mathematics', '73', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 1, '2020-07-25 04:50:40', '2020-08-05 13:14:08', NULL),
('crs2kyxyead6yiloysfyitftgtpagftuzugjhw4ju4fxnxjrm8', 'Mental Health ', 'C5hSLg', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:38:18', '2020-10-28 13:38:18', NULL),
('crs2mlqziqdaanuy7khimp63rrkk9tzohuucdeogjnhvppyt5m', 'Procurement And Inventory Mgt', 'Cod#37', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:55:03', '2020-10-27 22:55:03', NULL),
('crs2r1kdpdh3gvxxnm3f0agq74e7ayvdynn4jgqi2vgqm78a6w', 'Remote Sensing & GIS', 'Hd6pRO', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:49:56', '2020-10-28 12:49:56', NULL),
('crs2uyz9RWbddk2N5Qp5C7QoFp8M4x6OxgL45bJ69Wte95RhDM', 'Chemistry', '283', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 1, '2020-07-25 04:52:02', '2020-08-05 13:14:23', NULL),
('crs2z1xerpdf74t8crcxrhu8yb9pagd1arv2pkb0xltdgopugp', 'Bankruptcy Proceedings', 'n3qy2Z', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:04:56', '2020-10-28 13:04:56', NULL),
('crs398zawuuahwkfvlkg82njzrgq4oitnavgsh9ivx3komshyo', 'Epidemiology, Prophylaxis & Vaccination', 'iZ7kCv', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:10:34', '2020-10-28 14:10:34', NULL),
('crs3if8sn46zz7o5wptvflg0xor9xpa02uqderf4izov9yn97q', 'Implementation of Professional Situation 3', 'vfbrUy', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:44:20', '2020-10-28 13:44:20', NULL),
('crs3ljd3u4zdgqbtskugjspglyzhqu636evhn9pf7p6l3vgdig', 'Principles of Management', 'Cod#9', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:12:41', '2020-10-27 22:12:41', NULL),
('crs3lqrbl9rqjgfjh464givmyd80eummswxkx4wkaq34mpxno3', 'Law of Sucession ', 'FYxiP6', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:51:57', '2020-10-28 12:51:57', NULL),
('crs3nzmgaye6ndsejb3vbefvb6apdrj35hqozbmvyekgpcyapx', 'System & Network', '7PgiFF', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:02:28', '2020-10-28 13:02:28', NULL),
('crs3t1jqsyggthxusyb8t0ogwjovmu8rsanitrpzr39rkelhki', 'Engineering in the Society', 'xIokUn', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:19:08', '2020-10-28 13:19:08', NULL),
('crs3wrpcwl31szavsj69umdxe0jdqmhhvulyidy4s8e9mgvkdh', 'Anatomy physiology 1 - embryology - biology of reproduction', 'M6AUHC', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:57:23', '2020-10-28 13:57:23', NULL),
('crs4jtwsxr2oh3a4lv0jefcypdowxtd26d7k0lxve7kinoovk9', 'Introduction Bloc posting in a hospital', 'KI8oRK', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:47:58', '2020-10-28 13:47:58', NULL),
('crs4juqr88z72vyz52jcagdiaxwxiuh0re5ve65aug8ix0v1hn', 'Pharmaceutical Chemistry 4', 'GOmkcl', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:07:46', '2020-10-28 14:07:46', NULL),
('crs4pd1itczhbrcsqyszoyiuphohirwe9mnj7mybfwzz15qy5n', 'Database & MERISE', 'vpHPnQ', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:04:42', '2020-10-28 13:04:42', NULL),
('crs4yi3wcyiovck7qg7ygis1fane8pj5ivcywty0nyrz5gec82', 'Commercial Law 2', 'c3vjvi', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:54:06', '2020-10-28 12:54:06', NULL),
('crs5h2nf52r2skuzbk2ndcyy6ghidrj3mo9yonvaveiyrv12cu', 'Sociology', 'CDQpln', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:59:53', '2020-10-28 13:59:53', NULL),
('crs5hnpqo34mypjgn886ssrfazqeb1r4zck1jq3z9rnnfhrxcd', 'Discrete Maths  2', 'ObSujz', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:00:08', '2020-10-28 13:00:08', NULL),
('crs5odhteq3noxkrczgw3wscmzmgwspehwsf6gxnfs24zscsjq', 'Discrete Maths  ', 'ShU6IL', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:59:43', '2020-10-28 12:59:43', NULL),
('crs60z4k7piupjyh6f5imeobrnqpwom8qiixbsdxxxbye51op5', 'Introduction to Law And fundamental Rights', 'Cod#10', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:13:07', '2020-10-27 22:13:07', NULL),
('crs6hh3cdmlycmwgsz6jb13zjpc61m8w9bwlnlirlacoj6golw', 'General Geology, Basic Data & Morphogenesis', 'eJJbw2', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:44:24', '2020-10-28 12:44:24', NULL),
('crs6jxijnwi9nys0oy6agl0qw4urrtjq2dfg3u1shnvnzntnvd', 'Emergencies ', 'QaUZ2z', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:35:19', '2020-10-28 13:35:19', NULL),
('crs6kl8lokwegafsel0leihks5v0c0emiilgtfrflt5ohh7hmi', 'Taxation Accounting 2', 'Cod#41', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:57:03', '2020-10-27 22:57:03', NULL),
('crs6w1kqqyvfjznx2cgxvwcki5jxgdkdfxifximyt73bx0ozha', 'Introduction to Project Mgt', 'tNycMz', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:23:01', '2020-10-27 23:23:01', NULL),
('crs6zs2nypex6tmoef3r8ulugs0rwlgf7iydfof9sv9v8zp0h9', 'Environmental Engineering', 'lVvPkN', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:43:02', '2020-10-28 13:43:02', NULL),
('crs7bb1mpttkdeewevoxfznq1tq2nkjrg0qvi1oyi4molt6te6', 'Irrigation & Drainage', 'y9gKIV', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:59:12', '2020-10-28 13:59:12', NULL),
('crs7dyymuktqjuxdztdrlqeensmsna7kklrjojxnal1xqxcy82', 'HR Planning And Development', 'QwmA5o', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:19:13', '2020-10-27 23:19:13', NULL),
('crs7gm1vkyvqlh2ufqlvrglysgd5yzxfyvbpupj3qspxnnidno', 'Child care - Nutrition - Dietetics', 'oFCeXO', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:58:27', '2020-10-28 13:58:27', NULL),
('crs7pogvkqugbno9jvb5vw1ohwtlr92fcfuzlqj5ekx9qqbcxa', 'Enterprise Creation', 'Cod#7', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:11:24', '2020-10-27 22:11:24', NULL),
('crs7qozz3o3gn1kh6xzqvb5etchtf7tvuxnk5hd33caomom6oj', 'Education for Health', '3P85ki', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:01:10', '2020-10-28 14:01:10', NULL),
('crs7yyujni7blwyhy8gqgvxmrlvfb8evbctcampnmvjbn5igad', 'History of Nursing', 'Z5AeCy', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:01:40', '2020-10-28 14:01:40', NULL),
('crs7z6wlgvhlmuirjcefpxloiyx3x9crwfhgquvvwjrpexfnme', 'Engineering Maths 3', 'YCDNUH', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:21:32', '2020-10-28 13:21:32', NULL),
('crs8agedln3q8qceisx68mckfw5qqebsyoa93smzberfbrfynm', 'Taxation Law', 'j5TNF3', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:09:17', '2020-10-28 13:09:17', NULL),
('crs8ezv33vlby2zbfxbuj7xos1gozz0h7judm4qf4ngjd8bazd', 'Non-Conventional Manufacturing Processes', 't3MfhY', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:29:44', '2020-10-28 13:29:44', NULL),
('crs8npfanle1vsxq7cr1cuwrw6digmnhdsyrtzc8t0fmm6utd8', 'Maintenance & Legal Regulation', 'Wn65Hn', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:05:19', '2020-10-28 13:05:19', NULL),
('crs8omeo90rexapoifw4xbfl9pmeuiusr1wpmdmrsy8eo3ren9', 'Pregnancy/Prenatal monitoring childbirth in summit presentation- follow up post natal', 'jE4FOe', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:11:38', '2020-10-28 14:11:38', NULL),
('crs9e0igy3s9lthd2czcs37uxqtrycuacr6l5hlxxb3rjx5fot', 'Research Methodology', 'JUYErv', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:24:34', '2020-10-27 23:24:34', NULL),
('crs9mwtk5qxliv7p8ajdkalvb0qhxxvgolmzwuwmlc0frj4ezg', 'Community/ Hospital Pharmacy practice', 'hLoNyl', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:11:32', '2020-10-28 14:11:32', NULL),
('crs9qv8v0y3c4qgylyijdivds0rsvcaycjarlte5rm5uuaucc2', 'Accounting,Ethics & Regulation 4', 'Oayocw', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:42:28', '2020-10-28 12:42:28', NULL),
('crs9uw0oljsl3sirzldqcr3e3b2mzmd0a4xjabp7pyluwv09d1', 'Data Structure & HCI', 'EjUQJh', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:17:18', '2020-10-28 13:17:18', NULL),
('crs9xzf98npvqqlpzu82a2b2qaw7dxrycikxod7fqtotu3hdza', 'Topography & Rural Contruction ', 'inBKzG', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:32:39', '2020-10-28 13:32:39', NULL),
('crsa8xy6ukey5qoaljkyqgolbtkylha3iorlibfrnq606kuqum', 'Monetary Economics 2', 'W0NFIf', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:38:13', '2020-10-28 12:38:13', NULL),
('crsae8xwj4erpfn6sm0zwwszplo1w4dv7dsol3p6jllucdr5he', 'French', 'Cod#5', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:10:49', '2020-10-27 22:10:49', NULL),
('crsaGyhLYJnxgENCMMOnIPqB0cbwNB5fHH7UE2vM4W1rcCSyHu', 'History', '17', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 1, '2020-07-25 04:52:02', '2020-08-05 13:14:30', NULL),
('crsagzawt83ox5xhgupe1c4v2fup6xrdlcbjoh64kij9qfoqii', 'Computer Programming 2', 'VHhrOB', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:06:40', '2020-10-28 13:06:40', NULL),
('crsajs9wjxtupyk0h7ztog31ajhjsfqz9xsxv6mzrkwjsyaumd', 'Pharmaceutical Biotechnology, Pharceutical Legislation', 'iWKJSQ', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:14:54', '2020-10-28 14:14:54', NULL),
('crsakv8ygwcsfrhzfs1hf3eqeig5hhdcbv6vivi7rtqbzt5vhe', 'Medical law -Health at Work-School Medicine', 'ZTs2DJ', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:41:23', '2020-10-28 13:41:23', NULL),
('crsaocslevq0areftggytwsmrqhve807xjxbxmhy3onkpw6fi4', 'Intellectual Property Law', 'lhptRW', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:08:56', '2020-10-28 13:08:56', NULL),
('crsaojlkeldyiwbuht2c3yp0wycvfgnlhd4osfmkd7rzkd5vmo', 'language and communication', 'moH4O6', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:22:12', '2020-10-28 12:22:12', NULL),
('crsawtrqr48bna9pinnfppzkean40izdmqchsc3q5syxqedhq4', 'Sales Force 1', 'P9efjZ', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:22:56', '2020-10-28 12:22:56', NULL),
('crsaxpavgp7cacfhfjjoxc3cb6v6q5ztblissu7std5jtwx5ts', 'Applied Nutrition', 'ODtBuD', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:28:06', '2020-10-28 13:28:06', NULL),
('crsaynappq3dbqch4xmijw4jk8k6i1v9j3qkzmgrftsbueyihg', 'Culinary Technology And Food Production', 'hrW65Y', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:16:43', '2020-10-27 23:16:43', NULL),
('crsazknd8ixbvdjuxg7957ccezmbhdvmoeulsar04w5dupf8yn', 'research methodology', 'Cod#15', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:14:21', '2020-10-27 22:14:21', NULL),
('crsbcpyev7oavcy50tw2eg2aoruafadebzhxn5hek5qmuax5wk', 'Accounting & Information system 1', 'HXV1Tf', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:34:33', '2020-10-28 12:34:33', NULL),
('crsbd733yfsu9qw48gygqucufa3za4gfjxgqatcywkspxet0qm', 'Introduction to Operational Research', 'H4PatT', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:08:21', '2020-10-28 14:08:21', NULL),
('crsbhgr6jumfitwqiicujfo4y6ul919ksqhl2lwi6dpst2s9jd', 'Hotel Accountancy 1 _ Hotel Marketing', 'Hy4kyS', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:17:33', '2020-10-27 23:17:33', NULL),
('crsbja79fwqfukwdfvtsnhrf3kif2c1ol3ncsonoxn1iyntayj', 'Methods of work- official language- Technique of information and communication1', '8m3lTQ', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:06:26', '2020-10-28 14:06:26', NULL),
('crsbk2aajkaoqhd0766oftcvibx6r5lv86xdpmftlpz0993rjc', 'Medical Psychology', '0NztPf', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:03:07', '2020-10-28 14:03:07', NULL),
('crsbp9u7hwzonlan9rllovrs4ylozudey6n0hveauosjbeu4o9', 'Basic Environment 1', 'CqZmL7', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:04:19', '2020-10-28 13:04:19', NULL),
('crsc0owfn24rt4ve5jxfihsy50qofhgep2joaqxqluucpryixy', 'Typography & Technology of Survey', 'Lvw9Tl', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:46:39', '2020-10-28 12:46:39', NULL),
('crsc5qmg5rgcambmf3ncnx9vbdjqir1fsfwnun42fdwjuezqgz', 'General Mathematics', 'Cod#3', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:10:22', '2020-10-27 22:10:22', NULL),
('crscbcvu9ejn9rvzrbwa346okgbiyd3drvg9nlpx6xq2tyel4n', 'Field Camp 1 & Drawing of construction', 'dIhLZQ', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:50:55', '2020-10-28 12:50:55', NULL),
('crscbtifz5te0hkzwccligztldehd2ahax9zmekmiv7ucpds5y', 'General microbiology1 General Biochemistry', 'Ne6IgP', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:27:53', '2020-10-28 14:27:53', NULL),
('crscmy5ejxkvk7nfykkdxw1a4m9qeksacfqcebc6acudhyygai', 'Communication Laws & Ethics', 'KOWETw', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:25:20', '2020-10-28 12:25:20', NULL),
('crscnhnnhqms57gxxtjne1b7anjh70xjnzlarv51j9japjztqg', 'Clinical Pharmacology', 'uXdMfs', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:36:56', '2020-10-28 13:36:56', NULL),
('crscrwzkttsaiupwywkf6grkoltrplcf5eqqqhnmvcm6xm7bh8', 'Agriculture Economics', 'H30D44', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:23:42', '2020-10-28 13:23:42', NULL),
('crscvlw3qx1nfqykb0o5phhg24x6om8ttjspg5phyvzhsmegbi', 'CSR', 'QdTLtv', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:36:29', '2020-10-28 12:36:29', NULL),
('crscwheckcsx1ncwgbl3lwyudkyqyzrn0cv62s9vu083t5vf1p', 'Knowledge of Cheese and Oenology', 'pwAWcg', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:18:55', '2020-10-27 23:18:55', NULL),
('crscynwlguxfc52l5twbptlomagxbbiwudrg714ojamrjp54vw', 'Mechanical Analysis 1', 'Vnak30', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:23:08', '2020-10-28 13:23:08', NULL),
('crsd5adj3flmmofudkngwgmgnvtlc9z4zolz1sht28g4kip2wm', 'Communication Strategy', 'g5aPVx', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:34:01', '2020-10-28 12:34:01', NULL),
('crsdb0qu6bfcsvrd8rc3mkmrapu9z32rkwtjmwccsirlfzcxzg', 'Basic Of Foreigh Law', 'bLgxcp', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:23:54', '2020-10-27 23:23:54', NULL),
('crsde5522tg8f68zzaxv05wnbsrrdgudoyl5du2wn2osvkx9me', 'Pharmaceutical Chemistry 2', '6ytQBj', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:00:21', '2020-10-28 14:00:21', NULL),
('crsdlk5ye1cgepbcska99ep8ey7rjwxjiubzpdr4p5gv23ez6o', 'Food Processing 1', 'Zd8G42', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:20:04', '2020-10-28 14:20:04', NULL),
('crsdn6p6eycnowejbg6pcu2pf0umxuyjecpdijuhwrsfettlov', 'Civil Engineering Quantities & Specifications', '82MbA2', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:52:49', '2020-10-28 13:52:49', NULL),
('crsdraryttwxrez6edg3bnw52npezd599wdyskerdwoisnkx0i', 'Human Biochemistry for Nutritionists', 'cT0Y2P', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:27:01', '2020-10-28 14:27:01', NULL),
('crsdslvixu4mbksf3vkizgnuuapd3tkolgvh9vs8r8qg1lcemg', 'Health information system and health economics ', '503Qoa', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:13:52', '2020-10-28 14:13:52', NULL),
('crsdu0rpmc3kxirykd5mtjghi7nun1r3htxwzfevsmhu04p9op', 'Physic2', '8e7aUF', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:33:27', '2020-10-28 13:33:27', NULL),
('crsduj3vr9ixqqrmqhnmbdymr8kg4wdglx0ifgkawo9dnxgkf3', 'Organization Psychology', 'JoPT6e', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:33:26', '2020-10-28 12:33:26', NULL),
('crsdwdhslavkm9qsxopjkqi0dmiuumayzp3czuswkpdwbbklja', 'Maritime Law', '8vadWv', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:26:48', '2020-10-27 23:26:48', NULL),
('crse26rlz76lgxvzajkyk8tkw62p7cpdjltby6gcmqkgwxkafb', 'Clinical Pharmacology 3', 'yT92kk', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:58:32', '2020-10-28 13:58:32', NULL),
('crse32uq5qymvcsauj0bsiux22pxwcncfe0njcqtardg30mobr', 'Multimodal Transport', '0xoHJV', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-29 17:26:21', '2020-10-29 17:26:21', NULL),
('crsebvs1fbksd9nrnvciwp20d0hxryn3iyk3iajmzuflx3aogd', 'Industrial Maintenance ', 'DsbGYs', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:18:20', '2020-10-28 13:18:20', NULL),
('crsedkcarmjlw0rqevxczfqzybwim6e53llqfcqrbyw4otdsaw', 'Computer Programming 1', '30goAU', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:47:43', '2020-10-28 12:58:11', NULL),
('crsefimxwopzbakhfocja94kevgrbj7qpjrpyvckhybvywrnv9', 'Media Management', 'Bx0kIO', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:36:08', '2020-10-28 12:36:08', NULL),
('crsehfkjkucn5wr39uh4zl7sgwxcwegmwlnmn6ehtmimv4ovkm', 'Life cycle -nursing- first aid', 'jKRoMU', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:32:18', '2020-10-28 14:32:18', NULL),
('crsemn1dytagxknipex7fqydscwajjy6ai0cirj0nsgpd0jisl', 'Culinary Arts 1', '4hfP6j', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:20:35', '2020-10-28 14:20:35', NULL),
('crsemogjvveqtuw81fxaavdtjrxnkixbofuwkyze93axoeg1as', 'Principles of  Environmental Science', 'kiGFoH', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:27:37', '2020-10-28 13:27:37', NULL),
('crsemrp31l2kra9iniggajc4ccccpscascbmrgmxosgtndmxzb', 'language and communication 3', '0knpw1', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:40:07', '2020-10-28 12:40:07', NULL),
('crseqtilfijlb9e02kgjbxnzac9safrcv4zcnsj16zvgdz8wfv', 'Industrial Safety and Safety Culture', '0d0XKt', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:53:40', '2020-10-28 12:53:40', NULL),
('crset1p4ibwjl43uwvu60jmbhauqyld698pd5x9s9pwmd2i16d', 'language and communication 4', '2G1cHb', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:40:31', '2020-10-28 12:40:31', NULL),
('crsev0uqd8gswwgmlenguln5klpawve5lm5i2nw8wdyb6uoqpy', 'Marketig Tools 3', 'DxnPAi', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:30:27', '2020-10-28 12:30:27', NULL),
('crsexvm0ambj8ncammzkioxvns9dqzswzwsury5wzbvddfa3jv', 'Settlement of Dispute ', 'tk1IXQ', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:58:24', '2020-10-28 12:58:24', NULL),
('crsexzeaaxs3ntruq8qpedyddw9mg7ffqwbhi3arp5tqrlssbi', 'Operation & Banking Techniques 1', 'RRiHv3', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:46:33', '2020-10-28 12:46:33', NULL),
('crseyg8liuxi4r3xtsm6gbunum9amqopudwd4ekon8l8q3svxd', 'Psychology- sociology - Education for Health-Prevention of infections', '5LcWeq', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:05:18', '2020-10-28 14:05:18', NULL),
('crsF4odDWWwuM3HqSYRutDIaB9ENSUWWpThOYQxMV24fqHpsTk', 'Geography', '23', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 1, '2020-07-25 04:50:40', '2020-08-05 13:14:37', NULL),
('crsf8vopqraka6wanl0rygqmzj6ld8zcvwyzezugkof4nnatu1', 'Warehousing Mgt', 'Cod#36', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:54:26', '2020-10-27 22:54:26', NULL),
('crsf9fl4kgl1ghnwhxmxbpjfntcdxqtedffux4hxthrj4tffoh', 'Computer Aided manufacturing - Drawing 1', '5PrS3m', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:28:02', '2020-10-28 13:28:02', NULL),
('crsf9utpx9zxryxm01cawe2dxzvhhxpmmsyutnrhudhsvkvv7t', 'Accounting & Information system 2', 'HdskMn', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:35:00', '2020-10-28 12:35:00', NULL),
('crsfdk6u1jmmhhd7glfu05lulclinlxh23f1n9l16m5a6nqmge', 'Media Studies', 'gO4V9G', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:36:45', '2020-10-28 12:36:45', NULL),
('crsfju6so4gmd8x8lrnqieogsvzz0relwuupsciebnwyopyvga', 'Quantitative Technique', 'Cod#1', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:09:27', '2020-10-27 22:09:27', NULL),
('crsfo0tzihsgovtovrgaw0nhqkrwbwbfgnzfrkiaiemqeocjsj', 'Human Anatomy', 'bs68p0', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:22:00', '2020-10-28 14:22:00', NULL),
('crsfpmoexqptg8teqrqpyxe9jggfgf3izcnfdjc2poevppz6wp', 'Physic1 ', 'E0q8YI', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:32:41', '2020-10-28 13:32:41', NULL),
('crsfra5svgylcaliezqdnbk9ahsr2pym8og7xqadh5wjkyqajp', 'Culinary techniques 2', 'z0FnPK', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:24:38', '2020-10-28 14:24:38', NULL),
('crsfrlypjcmgj0xhzvda5prkigsvxuljjjuolfi7odutzysylx', 'Technical Care of Specific 2', '6SmcQ8', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:42:53', '2020-10-28 13:42:53', NULL),
('crsfurlnabguk0j1ifqppxdj5rmbljbp7e5nsh4m0glnpgqubf', 'language and communication 2', 'a1JDml', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:23:59', '2020-10-28 12:23:59', NULL),
('crsfvotpsk2bh0fhsl2vwouci0phcpzwleacvtitmvyxqyvphk', 'Marketing Mix 1', 'SSOtV3', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:27:15', '2020-10-28 12:27:15', NULL),
('crsfxoybakh0qucuzwnssewlkek6s3zyvljwmnfpssw4s2wwui', 'Pharmaceutical 1& pharmacognosy 3', 'h7rYgn', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:56:42', '2020-10-28 13:56:42', NULL),
('crsfxx8a0op1xbt5tbdp4x6naeyafkjuoo3biypnd2gf0rgccz', 'Editorial Writing', 'fUSSWK', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:38:45', '2020-10-28 12:38:45', NULL),
('crsfz1kwdd8r6gcyky9mujde1xbqar5rolhvqwawqooiqi9jrq', 'Anatomy & Physiology', '8NweXW', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:17:05', '2020-10-28 13:17:05', NULL),
('crsg0p0z0voochf0w8ldmezwqpzbldg8cd8gnft4fhgb8zbbbx', 'language and communication 1', 'Pgrn0H', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:22:35', '2020-10-28 12:23:26', NULL),
('crsg0shlj7o74slwpn5cbjyjpnozyez7gxtfoegdw2v2qfh3zp', 'Cell Biology & History', 'derT5D', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:02:37', '2020-10-28 14:02:37', NULL),
('crsga1pwuyunzinrcamuxqldlvaufwzzwtndkucfuqvjju6xmk', 'Mechanicals & Materials', 'GhMEmn', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:44:06', '2020-10-28 13:44:06', NULL),
('crsgbgz0ioa4mkmlcp2iqt88jepcxcaces1hzb7zmrh7czq4qi', 'Technology & Practical of Mechanical Manufacturing', 'XARCOD', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:30:41', '2020-10-28 13:30:41', NULL),
('crsgc04bljhkdlcxd3awvr81pgw1qq8m9pelhupofakaxybuok', 'Design of Structure Elements', 'RRvuAj', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:53:28', '2020-10-28 13:53:28', NULL),
('crsgddb9vpnpeayvickspgqde5kmgfukg8iynxcsjyrbhjxsb5', 'Monetary Economics 1', 'XmCGDL', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:37:41', '2020-10-28 12:37:41', NULL),
('crsge3mqepjjwtak6exvyyns1irqzsfu09qxjr0wduys9mmwyv', 'Operation & Banking Techniques 4', '3jH11q', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:47:42', '2020-10-28 12:47:42', NULL),
('crsgnjsunoyvuqb9ksx4iqmgipgp9awwkfpkwmx2livqjtkhad', 'Computer Aided manufacturing', 'SiHteM', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:27:17', '2020-10-28 13:27:17', NULL),
('crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', 'Chemistry And Physics', 'Cod#16', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:14:51', '2020-10-27 22:14:51', NULL),
('crsgpm3og4ybx010gwer8zjliarmhfc4p9gpljgdmke7bmfuex', 'Economics of Banking', 'ZP84bu', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:40:21', '2020-10-28 12:40:21', NULL),
('crsgvia0lfjt5amug9wqsfzyvqsv5vxhqpov0ug3t7np5f7tp0', 'The Foundation of Science Nurse', '7BUr16', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:05:17', '2020-10-28 14:05:17', NULL),
('crsgxr0wg6gzsjst51lfa563j18ckpvkympi4f1ovxbq7kwqb9', 'Computer Aided Design 2(CAD 2)', 'lGv9Ij', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:28:52', '2020-10-28 13:28:52', NULL),
('crsgz3ox5bmbkyfm85xqcuwubidpfhet2rnxocgthwjvtsmb9z', 'Financial Analysis 1 & 2', 'Cod#39', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:56:21', '2020-10-27 22:56:21', NULL),
('crsgzw5i5rrap40fnb6rz86lwv5zilz4gpakltijn0fxvfogzx', 'Anatomy and physiology 2- organic chemistry ', 'ZKt5no', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:34:43', '2020-10-28 14:34:43', NULL),
('crsh9hpt4jmnfzyt0uv8gossdxputjdzoawnx6nzmjfr9jjggx', 'History of Nursing', 'DUfVmr', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:01:31', '2020-10-28 14:01:31', NULL),
('crsh9qbwf4nw9ppfbrlq1sgdsxmsirb0unisnfki52r6uawlmp', 'Marine Insurance', 'Ykv7aE', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:25:42', '2020-10-27 23:25:42', NULL),
('crshaym99ctu3zuqm0bp0ipvps5h9iqkx2coivmgipcq41rjyi', 'Operation & Banking Techniques 2', 'BwIACV', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:46:50', '2020-10-28 12:46:50', NULL),
('crshbhlyhfulywodkejjqnnyfmni1rn8ywmebxedf430hlunam', 'Clinical internship 2', 'vJ9jRR', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:38:36', '2020-10-28 14:38:36', NULL),
('crshbnny2rgfcgxmzpzutduaquosrhbtxntbhcmtmxym4jerf8', 'Statistics', 'PI11SV', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:57:37', '2020-10-28 13:57:37', NULL),
('crshcmp3oju1t9sm2aqwemdgcotxuijwtxbyrjlh0lssevhyru', 'CBC', 'q5wheA', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:11:34', '2020-10-28 14:11:34', NULL),
('crshdatktwkn7s5jzjb8hv2hqvgo4l5f7hsc7o1gmcgqib38mu', 'Carriage Of Goods By Sea Shipping', 'IhT6MP', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:26:18', '2020-10-27 23:26:18', NULL),
('crshdcm90vosnxgf2xot66jwb1dffckeqy1rp38q7wanm1jaoz', 'Conflict Management ', 'yRGp98', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:31:24', '2020-10-28 12:31:24', NULL),
('crshdnvwikpwpdu22d097mgkaoecunsutv1b9juoyp2ie3d5td', 'Laboratory technique- Biochemistry - parasitology/Mycology', 'XYlGUS', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:10:18', '2020-10-28 14:10:18', NULL),
('crshim1dj8wgkdq1alcpe6m2dmpzuiv5fypnefa7rcd0elpqwr', 'Quantitative Technique 3', 'Cod#43', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:05:48', '2020-10-27 23:05:48', NULL),
('crshlsgiacgvrgirdyz2fhfd3ct0krtkcomiwcsgds81haroeg', 'Study of Rocks and Minerals', 'lgltfQ', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:49:28', '2020-10-28 12:49:28', NULL),
('crshmsbpgzeg90pvkqdpem9rkwxdpryzoucb8kfn52kpnaommr', 'Animal Diseases and Hygiene', '8Cy3eb', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:28:57', '2020-10-28 13:28:57', NULL),
('crshoe2nf8gypu3rwjnh4dg8zei7zhgnaldy28zekqrdt4ttdt', 'Introduction to Mass Communication', 'i8SC48', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:32:36', '2020-10-28 12:32:36', NULL),
('crshovf23bh0imwmxwt9prpwqpalvrieu8gdgjgbtmvq5jq3jf', 'General Biochemistry 1', 'yLwz9u', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:48:34', '2020-10-28 13:48:34', NULL),
('crshskze0rfdtfnkjtktlbgy9rs3rggchmjd9gdazjhszgrkze', 'Distribution Policy', 'tPs1r2', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:24:25', '2020-10-28 12:24:25', NULL),
('crshtfov82vuonqdk3mfw9gugezfcaamyf3btm2g0lqo2lask2', 'Marketing Environment 2', '6iWpuS', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:25:37', '2020-10-28 12:25:37', NULL),
('crshw07rlf5ooyrjiwpskw6bp53eaahaigoobrb80qmy2dhnjn', 'Introduction to Soil Science', 'thWcMs', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:25:50', '2020-10-28 13:25:50', NULL),
('crshy8z5anwwnats7a7ci72sptqcvadrvgdn9dahpsysretcis', 'Forecasting Accounting 1 & 2', 'zZo8S4', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:11:07', '2020-10-27 23:11:07', NULL),
('crsi0m4dxuvagc9wyxnmowsv32nhedvdr8b6lwvsgxfkwa3jqc', 'Marketing Strategy & approaches 2', 'q0lEhs', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:33:33', '2020-10-28 12:33:33', NULL),
('crsi7l89dz7t371tbumnhgogqoda7r6mvthronaflzxv7kjn6y', 'Network & System Administration', 'hwMndP', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:02:53', '2020-10-28 13:02:53', NULL),
('crsibvw1upmqru3f9a0uxrlr239yp1jtpvzplenmwrmkt58oxi', 'Pharmaceutical Chemistry 3', 'JFD0Gw', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:06:43', '2020-10-28 14:06:43', NULL),
('crsiixphxpecmwwmkmueuzjrzvx8rzl33xng7karp0utmvmoj3', 'Sociology', 'cK4x6E', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:46:25', '2020-10-28 13:46:25', NULL),
('crsiltpbmzt9givhg8v1iicao0hvuyhag4ecf9b0frqh8j5k0x', 'Accounting,Ethics & Regulation 2', 'XwAkJW', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:41:47', '2020-10-28 12:41:47', NULL),
('crsims70ifhqq5itqjgtqo14sxnj95655hzqlqynuatvua0xpp', 'Thermodynamics & Phase Behavior', 'FbOcoS', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:41:46', '2020-10-28 12:41:46', NULL),
('crsiwuzjzqdsmg5ttljc9rdfuqtwoq1a5pejwdm2zyvkxiaxs4', 'SysMobile Terminals & App Security', '5uP86l', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:16:11', '2020-10-28 13:16:11', NULL),
('crsiyo8edgru1y2oimsp2056shyafr5ujnwfaa4ugbta5hmqgx', 'Introduction to Algorithm', 'h58ANj', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:01:23', '2020-10-28 13:01:23', NULL),
('crsizrtxil1cbjvad5a0smpx0lb111nlyr3wkdmy7zonfcqbjf', 'Theory of Structures', '9oRHQv', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:33:47', '2020-10-28 13:33:47', NULL),
('crsj1drc1vto5j2xwkl94q8jebjx6vcnxgljq01g1kjjunxlhw', 'Technical Care of Specific 1', 'mhtTXU', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:42:15', '2020-10-28 13:42:15', NULL),
('crsjfla7iosqcixnpqaxshrtc7ausjmxadwx0blyypjlilwabk', 'Basics of Media Writing', 'by0aUQ', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:35:35', '2020-10-28 12:35:35', NULL),
('crsjfr374hgwqgyth6takxfzzzcrnopxjwejoqz52oct9iycwx', 'Process Techniques of Realisation', '50j7lo', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:47:18', '2020-10-28 13:47:18', NULL),
('crsjgosxtevf7bpykkce1vqvgatfo4gbio6kohy89ymuywobaz', 'Pharmaceutical Chemistry 3', '6T9kK8', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:06:21', '2020-10-28 14:06:21', NULL),
('crsjhfti0cryxh2cnt3x2veufqvniimo0u6daxmyxccqureqnm', 'Finance 2', '3krm5H', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:48:24', '2020-10-28 12:48:24', NULL),
('crsjqolym3qrdifeeulscxr2k4d5vrofce98kd1d7wpx8ehguh', 'Hydrology & Hydrogeology', 'qeQRyu', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:45:51', '2020-10-28 13:45:51', NULL),
('crsjw0kspjkth70mxcvv2jvzmkyduintw7gxpykf0wjqk55iym', 'Clinical Pharmacology 4', 'qzQq9y', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:59:00', '2020-10-28 13:59:00', NULL),
('crsk3jQBe8nd8rXrh1w0sZI14blwhcjmbp8WCx8mF24qmsdz7q', 'Physics', '320', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 1, '2020-07-25 04:52:03', '2020-08-05 13:23:43', NULL),
('crskehmrsymmpltp2hyiby5tbn6qbfyawjvo7zbgjikjc0md2p', 'Learning Laravel', 'Subject 6', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-12 18:05:48', '2020-10-12 18:05:48', NULL),
('crskfafkrvfuismnsyu3ukekpwr6cj7rrjxiihywfqt2vyyndd', 'Introduction To tourism', 'yDrXbM', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:13:31', '2020-10-27 23:13:31', NULL),
('crskgucmchiddebriqeuamp0ug84uvxinhc1nmyf8vctetmhxa', 'Discrete Maths  3', 'YKRjyr', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:00:29', '2020-10-28 13:00:29', NULL),
('crskhfl2mm0dd6z0rnxtbr7qvvbfprivuvwcirsqkd3uvjcnya', 'Vegetable & Fruit Production Techniques', '40ulN8', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:33:34', '2020-10-28 13:33:34', NULL),
('crskjmdp0abmmrzrxwtrk1w0ri0adep8li563do00w1tu7a4s2', 'Infrastructure Planning & Management ', 'DThw12', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:58:40', '2020-10-28 13:58:40', NULL),
('crskk2kv6ik9pr9ekbwzi6cub5ncm9jkbl3eb2j9tkwert9b32', 'Administrative Law', 'pBrQ9v', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-29 22:28:49', '2020-10-29 22:28:49', NULL),
('crskkgl2t7qaaesefczg57vitfjdql4l6eezmb5m3wihveqi8d', 'Medical Pathologies 1', '4ZZFWH', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:10:26', '2020-10-28 14:10:26', NULL),
('crskljhh7nml48qlxlu89dmlvsyuqeozpiqmx1ggeetwpwbbeu', 'Freight Forwarding', 'Cod#32', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:51:58', '2020-10-27 22:51:58', NULL),
('crskltngohpyyvd2a7dtggus9x7p8tts6elkbyzwlv0bmywi2e', 'Primary health care- Nursing/Midwifery neonatal/base -hygiene and sanitation', 'TKJJrX', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:14:08', '2020-10-28 14:14:08', NULL),
('crsknd7dqnsmztbpqjscdwp0y6bjj1i9h3zmsqdyfrx6mwacaq', 'General Economics', 'Cod#11', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:13:22', '2020-10-27 22:13:22', NULL),
('crskoasedwndl8exnunckn6fteqdwrtk8bbg9cw5ut8hrxkexr', 'Material of the Earth Crust', 'Sh4eLT', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:44:57', '2020-10-28 12:44:57', NULL),
('crsksctznp6prmqxadgvpmatxu8bi2o9ghckkiwlonhst0kxq1', 'Industrial Management & Engineering Materials', 'UXbN5H', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:54:57', '2020-10-28 13:54:57', NULL),
('crskvudqxb6ai2syvmthdxqf8isafm6glnnshm23ebnysfdlgf', 'Clinical Pharmacology 2', '4cqVbS', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:58:09', '2020-10-28 13:58:09', NULL),
('crskzfjdqsfpjerbgvkbm6p9qxwkm2fohulommifufzuwcp8ja', 'Strategic Management', 'oR1NqK', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:26:35', '2020-10-27 23:26:35', NULL),
('crskznbtkwrwkbsb5vhdkbkoxv1cavxvfp6piwkq10ur4tyjek', 'Taxation And the Work of Synthesis 1 & 2', 'VHeHxL', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:11:52', '2020-10-27 23:11:52', NULL),
('crskzthdlxvizcqchynq4wf38d3io1ykdrwkhx2so9vocx7dhu', 'Marketing / Advertising', 'Xe8K4R', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:28:40', '2020-10-28 12:28:40', NULL),
('crsL9FAi7IUgKbuJN4qFkQUHQreAjHMQSOifahIUiHGDYGxSD8', 'French Language', '263', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 1, '2020-07-25 04:52:03', '2020-08-05 13:23:43', NULL),
('crsladzilseobmwaifnvswc3jqcmbn8n2aiirz9fo0lvumv9cz', 'Medical Pathologies 2', 'OZ4E4Y', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:10:51', '2020-10-28 14:10:51', NULL),
('crslagxalyjgann9v0bxhxjkdtd2rvujwmjypijj0d0b22mrxf', 'Dietetics 1', 'T1sGJF', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:21:13', '2020-10-28 14:21:13', NULL),
('crslhboec6zuhiuqejl8qbi1gjx0ks7sfmzrqe6s7lsmzsgfbs', 'Discrete Maths  4', 'FBjSuE', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:00:48', '2020-10-28 13:00:48', NULL),
('crsllprqx9kt7c1ejk524hq8udlvomtuu1y5dmbssi7jdg7pz3', 'Biomedical statistics & information ', 'fwtCLB', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:12:32', '2020-10-28 14:12:32', NULL),
('crslmgvlxgzycusfz2er5muoxyszuhnhwyllqvqmcquknecpll', 'Geotechnics', 'w7bgxx', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:47:51', '2020-10-28 13:47:51', NULL),
('crslrmg1canstxx8kexzznuto7cwzhek1beigqwzgvajhpuftm', 'OOP & Advance DataBase', 'QhWeND', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:16:48', '2020-10-28 13:16:48', NULL),
('crslwea5higc4whbisvops6jmhxc43i2t8sftpbplxfxfjmfvy', 'Basic Environment 2', '0wZ9IN', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:04:01', '2020-10-28 13:04:01', NULL),
('crslxrgmdvnsw1r3oyr82lbpuga7kx8xciqztatvemocgpejxt', 'Intro to Petroleum Geology', 'tuFESi', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:43:11', '2020-10-28 12:43:11', NULL),
('crslztrhisdlngyuz303pphe6clpiftfzwsswp7jt9q4zf86ae', 'Engineering Maths 2', 'gvvBI0', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:21:14', '2020-10-28 13:21:14', NULL),
('crsm0mpxzacjluwerla2tigsqv6igafgzqi6azue7xxdt3bcdu', 'English Language', 'Cod#6', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:11:04', '2020-10-27 22:11:04', NULL),
('crsm3uruvq9bgqfkvdt4nt88bwv5cuurv2czv52hkxl5ufitrm', 'Multimedia Transport', 'xRYXEM', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:27:00', '2020-10-27 23:27:00', NULL),
('crsm6lebfszqbvvcx4ky0xmblneril4fwudtcerw8ip5eyx6vq', 'General Accounting 1', 'Cod#26', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:49:02', '2020-10-27 22:49:02', NULL),
('crsm7thuwyrld7srfam8j3jol7xlst6yhw7fttjh50yfpdkagc', 'Multi Media', 'mNefHF', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:39:38', '2020-10-28 12:39:38', NULL),
('crsmatwhwkpiarcawozkgj7vytuhh8obrjos7m4ck9jxz2lj1v', 'Introduction to Agriculture', 'x8DNMe', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:25:04', '2020-10-28 13:25:04', NULL),
('crsmbq2zfyylbaontmzit8ddnqatjwopffin7uykfw1nmv8tx2', 'Total Quality Mgt Maritime Administration 1 & 2', '9nE6kk', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:25:05', '2020-10-27 23:25:05', NULL),
('crsmdfdjrty1sv6pphiac4oi6svsnezpmh60vm0dksk2if28ml', 'Business Law', 'Cod#13', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:13:47', '2020-10-27 22:13:47', NULL),
('crsmih6zevapmro5hy6hlpwq3q8lkclmoqbozxy5nuacx5eokx', 'Marketing Tools 1', '8G1S0W', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:29:14', '2020-10-28 12:29:14', NULL),
('crsmio3ood0atea7gqbadcf8afwfoydof37zzqvwe6g3e5taoy', 'Pharmaceutical Microbiology & Practical', 'aYKbnc', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:49:39', '2020-10-28 13:49:39', NULL),
('crsmkjiz9abpd8d6prsduhmiep2orvy7czh7vry5kz9t4arybw', 'Pasture Management', 'YoUGYj', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:26:21', '2020-10-28 13:26:21', NULL),
('crsmxexmbqycf0csajj8eodqzrssmapjyfx0er5i73t7jtgdee', 'Computer For Business', 'Cod#14', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:14:02', '2020-10-27 22:14:02', NULL),
('crsn8i98sjmprkfeh2xkzpjvs4lygyufavyengdrtbmncalwo0', 'Taxation Accounting', 'Cod#27', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:49:21', '2020-10-27 22:49:21', NULL),
('crsn8sqnkctpi0uitfkwetxjpm0lpxlcqknywyuem5wxt86db3', 'Construction Technology', 'GgTk4m', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:53:59', '2020-10-28 13:53:59', NULL),
('crsnbcgl2bzfmgtgsby82o0flars9r9skrknym9k5d4wpmntli', 'Bilingual training', 'Cod#4', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:10:36', '2020-10-27 22:10:36', NULL),
('crsnBxNjQH6rVnu3q8gL2RKObnQigeHULlRfa1E4JeJT1Ut6lN', 'English Language', '3', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 1, '2020-07-25 04:51:32', '2020-08-05 13:23:43', NULL),
('crsnesrzpkg01nwqko2d39zijmj7kzimezojlcdlxqp77fnjvm', 'Material Science', 'tEXttU', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:19:38', '2020-10-28 13:19:38', NULL),
('crsnfdoyxklhyotfgjrjselk02hojjvrxciqhznzmcslaagx3a', 'Nursing Care in Medicine 1', 'XnsqxQ', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:05:49', '2020-10-28 14:05:49', NULL),
('crsnfgmrzlkdbc5vnlfffdpe0v7tfeusuwr6hmfnwtholey4qm', 'Clinical Pharmacology 1', 'RG4DFH', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:57:44', '2020-10-28 13:57:44', NULL),
('crsnGlJrNyaar7CTfNadRmyPrQTS6VEhUDGExNC62RQBjF212b', 'Web Programming I', '789', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 1, '2020-07-25 04:52:02', '2020-08-05 13:23:43', NULL),
('crsnhtsmvjsbvh5blrwwzsj0rjfqu6bhzqdh80ton5wimecea5', 'Marketing Management 2', 'I0YwFO', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:37:04', '2020-10-28 12:37:04', NULL),
('crsnjwtpez20ckbisihujkmx84crubrijq3du1littms2euby2', 'General Economy- Demography', '8MxbHc', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:39:13', '2020-10-28 14:39:13', NULL),
('crsnkr1g2t6r6vopml15yikjxublkfsmrcrsjck3xgyrcnwgrc', 'Automation', '4cOBQB', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:18:37', '2020-10-28 13:18:37', NULL),
('crsnl62kbig6mrpcwy77osjqoloptwizbtndfnypz00qysux3i', 'Engineering Survey / Soil Mechanics', '6vEYwp', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:49:58', '2020-10-28 13:49:58', NULL),
('crsnmhxyk5bfs0t2vvzfznzliwmm0iwctbnfghcfc5zpeqs9lr', 'Finanace & Work Summary 1', 'wBXpaD', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:49:45', '2020-10-28 12:49:45', NULL),
('crso3ronsqz1onrmzcjchkdgcevvpy672cruh1izu69dcnvawp', 'Practical Cookery', 'MstLBK', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:22:32', '2020-10-28 14:22:32', NULL),
('crso7tpog2tgsuwqkigdjfkrnln77udnqf6i369uufku99finz', 'Pharmaceutical Analysis ', 'K482YG', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:09:34', '2020-10-28 14:09:34', NULL),
('crsobdf6hpfkyvglnz5g0zrfpzjyjdu47hg1bwvcb3oqf8ftxv', 'Analytical Chemistry & Clinical Hematology', 'cOzumg', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:13:12', '2020-10-28 14:13:12', NULL),
('crsobvyqd85d5rhlysoo8jndopff2r9ak5hg5cwzvhhmqn5lot', 'Pharmaceutical 1& pharmacognosy 2', 'MwLdkg', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:56:21', '2020-10-28 13:56:21', NULL),
('crsojs77vwr4y6hlzaacd23ymrvtpwua8t5bb4mzu4ovrxpu7p', 'Industrial Safety Engineering', 'af2NWo', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:32:01', '2020-10-28 13:32:01', NULL),
('crsokb3burxppz0wvtwlwibtqxnsfc0e6nngfzqzhvf3xg1rex', 'Traffic (Highway Engineering)', 'wjo4IO', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:35:20', '2020-10-28 13:35:20', NULL),
('crsokxqtstlqbkssffzl9dslpwmsj3umeyqfkd9hu09zmhdobz', 'Cartering Mgt', 'JCYMlh', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:22:11', '2020-10-27 23:22:11', NULL),
('crsomggsrmxcdy7ufzgifnef7y0211dfvqlegnkmf5ex1zbwnk', 'Marketing Mix 2', '51sWjo', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:28:06', '2020-10-28 12:28:06', NULL),
('crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', 'Human Nutrition 1', 'EHf9ny', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:19:38', '2020-10-28 14:19:38', NULL),
('crsotr9l7vzhe4jopb2q5kczgdidtb2mbzvgxj6m6iyle0vsji', 'Mechanical Analysis 2', 'asvuH7', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:23:27', '2020-10-28 13:23:27', NULL),
('crsp07yqeg0o4zoeqgwth01bjrktqjejagsasbbowbpqcjzlvu', 'Physical Chemistry 1', 'yHTPqP', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:50:15', '2020-10-28 13:50:15', NULL),
('crsp0w3qrdcpr7i7y9sdgcdkaiqnxtltvrokvvb018fqiirlgn', 'Computer Sciences', 'Subject 2', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-12 18:05:48', '2020-10-12 18:05:48', NULL),
('crsp1fu4sfuviqippepz2ozgarcrxtbqlmcyfyv7sezu5urnra', 'Accounting,Ethics & Regulation 1', '98L2PC', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:41:26', '2020-10-28 12:41:26', NULL),
('crsp2i8zsuzjzdaww9uoqg7c36f1kh0kpi3wkglk5x7d6qvka2', 'Professional legislation - national health system/Health policy-Microbiology', '4cBDwM', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:03:11', '2020-10-28 14:03:11', NULL),
('crsp78ebypy2yxhmmnu6c6fnfrek4joahakqh3llfb4o1v9v5u', 'Marketing Strategy & approaches 1', 'LijLBb', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:32:54', '2020-10-28 12:32:54', NULL),
('crspb281u5r9r3yw2pwvdmrqbpcsvse8zoogqrn1fuxhgoibsx', 'Pharmaceutical 1& pharmacognosy 4', 'jy3XeT', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:57:02', '2020-10-28 13:57:02', NULL),
('crsphkwcmxvgyziyca7h3bmvv8gqynbzlq8rabuer6sz3hthm6', 'Computarise Accounting', '96kINf', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 21:54:30', '2020-10-28 21:54:30', NULL),
('crspjimdu6obebaz7ssdjn1tqxjzhztblcgwc3uxhplzubkqmh', 'Hydraulics', 'evflCb', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:42:09', '2020-10-28 12:42:09', NULL),
('crspnk46n6gfcq0jwwdkqg6vxs5atfsa9f749zbo6kmnkbpr4c', 'Personality And Communication devt', 'KiXU3P', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:21:47', '2020-10-27 23:21:47', NULL),
('crspw9xv6z1zzpjhmwvkegxio8m1fbtakxddw4nlbqhcdxwnm1', 'Public Law ', '3wMRtZ', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:56:30', '2020-10-28 12:56:30', NULL),
('crspwvpbesv4kau98etdfbtfen607m8cfpkf2v5bradcvubzat', 'Statistics & Probability', 'EmEJyd', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:20:18', '2020-10-28 13:20:18', NULL),
('crspyxghimnds3ngn9pvnsailtaastisrxv4pfewduqnmtwpqu', 'Business Communication', 'Cod#12', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:13:36', '2020-10-27 22:13:36', NULL),
('crsq1mbvlpymnvmxwwiffb2a3hprqxt1k9nwiikrlkymuk0sb6', 'Web Development', 'Subject 4', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-12 18:05:48', '2020-10-12 18:05:48', NULL),
('crsq3zxu8nogy2eqp03ssegtfrpkj22wyk99rwiknded4mlg6l', 'Financial Analysis 1', 'Cod#25', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:48:45', '2020-10-27 22:48:45', NULL);
INSERT INTO `courses` (`course_id`, `course_name`, `course_code`, `school_id`, `is_checked`, `created_at`, `updated_at`, `deleted_at`) VALUES
('crsq6o8bhsixibnqxztoskhrxeunvhnwmjuwdlpwhnyimvuv8k', 'Banking Law 1', 'xoifxk', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:55:33', '2020-10-28 12:55:33', NULL),
('crsqcnbg7xhkeeo6ntryvmzxvbfoc37kgo7lpwnbjjgqcebgws', 'Mgt of Accomodation Institution 1', '0Ptxd7', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:16:00', '2020-10-27 23:16:00', NULL),
('crsqdi22cfojef5qwhbjxzi3ie2rrnqikxwyvipoltmw5xxpe8', 'Learning JS', 'Subject 5', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-12 18:05:48', '2020-10-12 18:05:48', NULL),
('crsqesahztqwkpzzqahlp3lwlinoftwx4vzhhq46ghnn2otpon', 'Data Structure & SQL Language', 'W13s3H', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:06:10', '2020-10-28 13:06:10', NULL),
('crsqevtrm9indkbam6tj3eslagrpdolnub082ju5ylktdtvygp', 'Monetary Economics 3', 'YeHgNM', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:38:36', '2020-10-28 12:38:36', NULL),
('crsqfnj3dlcrs0b2dnwtxxrwfeggrd0erkegyh4xh7yz9nfted', 'Intro to Petroleum Engineering', 'nhK1HY', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:42:42', '2020-10-28 12:42:42', NULL),
('crsql9mheabsd8skf4ec7471s5pnzzitpqjey3cgqgwld2ywbb', 'Multi Media Data Processing', 'Wrb4wr', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:03:21', '2020-10-28 13:03:21', NULL),
('crsqqjgg6pyjz6xxtqyfwgrjedz4dbxyd7l4szyjmynz25pxmh', 'Culinary Arts And Pastry principles', 'Cod#30', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:51:00', '2020-10-27 22:51:00', NULL),
('crsqrbwp13vbwqtcjrweob9e1fjf39tvv5dmf1m8rrk33gwuwf', 'Taxation Accounting 1', 'Cod#28', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:49:55', '2020-10-27 22:49:55', NULL),
('crsqu1m0h5lbjjncwueid8yhveybopfelewjokl1yhimro3xpc', 'Economy and Issues of Tourism', 'kvODlT', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:21:07', '2020-10-27 23:21:07', NULL),
('crsqxodrqgq6xemh6hpdkrfdntf0pqdh8ljcuqhl0mdwjb72cv', 'Environmental Engineering & Pollution Control', 'uOhPzv', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:56:53', '2020-10-28 13:56:53', NULL),
('crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', 'Biochemistry & Microbiology', 'yPbckz', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:21:09', '2020-10-28 13:21:09', NULL),
('crsqzqy60pyios1wrfno78qvlqkezydkxmztdgbetrdbqvr906', 'General Biophysical & Technology', '7tCPTg', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:07:15', '2020-10-28 14:07:15', NULL),
('crsQzuuzBIKUE0DQZ6eZIqN1i8XBRo4rZv4QBl71fvJz0Go2iZ', 'Web Programming II', '98', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 1, '2020-07-25 04:50:40', '2020-08-05 13:23:43', NULL),
('crsr0pmipphot2wdqqgpzibwr2noadeadj7vy7iaha9vjhg2qc', 'Structure of the Sub-soil, Tectonics', '8Tn6Am', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:46:01', '2020-10-28 12:46:01', NULL),
('crsr9ml63utpffpx8cvtc3ueodhsplsqk2dnmaqhrwyvdfn6ep', 'Accident, Prevention & action for emergencies', 'y96APs', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:23:57', '2020-10-28 14:23:57', NULL),
('crsrccxynyaybxgnom4ogxvbnu9rbk6mhxvrhxbqumig5td85z', 'Commercial Law 1', 'dZ0nKz', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:52:28', '2020-10-28 12:52:28', NULL),
('crsrd4xjgfjongsporhg1is8vqvowubgn4ne5noyooyrczpvnt', 'Finance 1', 'Kf4dQ1', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:48:09', '2020-10-28 12:48:09', NULL),
('crsrguul3ndh1n64afbrfg0qhvkq04uof1qrsv4r4d454kfo8q', 'Hotel Cartering Law', 'ElCTji', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:23:35', '2020-10-27 23:23:35', NULL),
('crsrioeh6wly6c8rl9nfciku7ev2ja1gyyif6jdn5kapfc72bh', 'Shipping And International Trade', 'QsZYm7', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:24:19', '2020-10-27 23:24:19', NULL),
('crsroderluioa0j2a6mk9w71enncatifzlnjym1pouerti5yhq', 'Sedimentology & Geology of the Basins', '9Xhtwv', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:51:54', '2020-10-28 12:51:54', NULL),
('crsrpfftn3fdudbupv3veusoctxj8oqkpzzwoqnhkqeurs0a3t', 'Microbiology 2', 'Q3cAEc', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:04:52', '2020-10-28 14:04:52', NULL),
('crsrrvs7xhgmh03p4poen7p6xxrqgiwolalkk08jhsn6u9mbny', 'Mechanical Manufacturing ', 'GnaQoS', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:20:34', '2020-10-28 13:20:34', NULL),
('crsrsjs1qpdmchljegxadonwf4sbb6uorxbqzj4z0uzwz328vg', 'Design of Structural & Steel Timber', 'CD17nl', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:55:51', '2020-10-28 13:55:51', NULL),
('crsrtxqpcionqqafncf7xnyzphnam2ik6zx0cex8j6b7ihmhtv', 'Algorithm & Data structure', 'i1l2bb', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-29 20:44:29', '2020-10-29 20:44:29', NULL),
('crsrvhdrlcgoafappvxyxsf5fstgyvbfet7bk9mtmiwlcsqjid', 'Reproductive Health', 'Q1x6KV', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:09:38', '2020-10-28 14:09:38', NULL),
('crsry8zobovf0y22bbiygvoskna29bhjjxn0c603kzoadgij6v', 'General Pharmacology', 'io3AG6', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:07:42', '2020-10-28 14:07:42', NULL),
('crss1knae98ljjvomi0h9g4ygv2ccgwsivfzzs6du1ebufzyfq', 'New Media', 'aS1d2n', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:37:10', '2020-10-28 12:37:10', NULL),
('crss3kmpyehxwcgruhlxx181z5klxhq7sexcxf2qlobgu1jq22', 'Nursing Care in Surgery & Blood Transfusion', 'H2rGQD', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:08:31', '2020-10-28 14:08:31', NULL),
('crssazbtqmh8rtocgeckztnvtksvop7keb7y3jfq76c9n2dhme', 'General pharmacology- Nutrition -Epidemiology', 'bFw9UL', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:38:03', '2020-10-28 14:38:03', NULL),
('crssbxbyveq2o9ghlrbfsfemenomcpbnhwv96dijiobng3koxk', 'Cost And Management Accounting 1', '60', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:48:11', '2020-10-27 22:48:11', NULL),
('crssh6cageuhhvhaqqdy0upbhqpqimiaqvvx7xcafdz3bbzech', 'History of Midwifery', 'SvzUmb', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:02:07', '2020-10-28 14:02:07', NULL),
('crssh9ogenzcqnuiexydysk8ajeoq0cqy05seon5viaql6eqze', 'Hydrology', 'oBsq9R', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:34:40', '2020-10-28 13:34:40', NULL),
('crsshkgpdxgsbxfhsaiiayti5ueb0l8nmlvqgwkdcpk5vozohc', 'Cell biology and Histology- Anatomy Physiology1 General chemistry', 'CdNpxd', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:27:04', '2020-10-28 14:27:04', NULL),
('crsSJD05MJt85yo8SezHDnCUEbzDu2Hdi5G7rW6Hdzg7nbGlN6', 'Learning UML', '449', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 1, '2020-07-25 04:52:03', '2020-08-05 13:23:43', NULL),
('crssky6cvoudkjzsgf4mewnu08qahlf4lov5pwbtaaibpab4ah', 'Metallogeny/Mineral Deposit Economics', 'BD7LzY', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:56:38', '2020-10-28 12:56:38', NULL),
('crssnugwhngmrjsgsymtjzkzbnkxhao1aoxlvx33daohivkeii', 'Intro Software Engineering', '24LphV', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:57:22', '2020-10-28 12:57:22', NULL),
('crssog9txirb27lckh5lyiyzbockoicovlmo642aeepduwqsrc', 'Techniques of Medical Analysis Laboratory', 'Ed2ws7', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:12:16', '2020-10-28 14:12:16', NULL),
('crssqc1euwysna8dgw6yazuxp3e0aiucvjp1couz9bhymo5gfw', 'General hygiene and hospitable- infectious and parasitic disease', 'eXikMG', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:37:03', '2020-10-28 14:37:03', NULL),
('crssqjwaxr9c16qjssgnbzgmp4caxiov3y6ifkvrtwl4mfg5sw', 'Hospital Management', 'vLL033', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:37:38', '2020-10-28 13:37:38', NULL),
('crssydmkddishqfr9aau4dyoknhljjsgos9ebxdjbzetcqrlga', 'Finanace & Work Summary 2', '436B9A', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:50:04', '2020-10-28 12:50:04', NULL),
('crssyjjt9avrphfanme18qnf2skwbuv0rpnj4d4klmqp87y0ux', 'Human Resource Management', '3Uubw9', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:35:04', '2020-10-28 12:35:04', NULL),
('crst1nfAMH29OWyqoHJAbxUHrsXuqrIkKQnr7lcAl1099lMflZ', 'Javascript For Dummies', '824', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 1, '2020-07-25 04:52:03', '2020-08-05 13:23:43', NULL),
('crst3nicUAavuLOVPL3VrtB35MEm5bbDAHZrjpXyGtmLQzZPej', 'PHP For Dummies', '57', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 1, '2020-07-25 04:51:32', '2020-08-05 13:23:43', NULL),
('crst4ab7pd4ag1bm5kvmguui9aahxoifud4fvxyvtm1ogymffo', 'Banking Law 2', 'INyWeI', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:57:52', '2020-10-28 12:57:52', NULL),
('crst4pjt1jmuudgvp6hhqv6rw1hkcqmesf4yjlgh21fjpcvoqz', 'Food Technology & Quality Control', 'DKhmnw', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:27:46', '2020-10-28 14:27:46', NULL),
('crst7wt1mq0rcucduhuaeafcepmlkrlyg75vs7obylcej3elv9', 'Introduction To Cameroon Government And politics', 'Cod#8', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:12:16', '2020-10-27 22:12:16', NULL),
('crst81yf2lp76howqmejx0hj5xwmhsdut7tbvq7tt7qcqd7ja0', 'Labour Law 2', '5eTbQs', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:03:43', '2020-10-28 13:03:43', NULL),
('crstamyexlqadhthgpmxqvdnxgom1bpbsjothbwwzhfhskqrpp', 'Manufacturing Analysis', 'IxXsJD', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:17:49', '2020-10-28 13:17:49', NULL),
('crstatgk9hqtl2fqqnwswffahwmtwmmi2nqjnncorp3epdkdx1', 'WorkShop Supervisor Management', 'ut9oX4', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:22:37', '2020-10-28 13:22:37', NULL),
('crstf3tjoinegq2sz0df0sp9hk9jupn1fcbuuu0a3pkbml9ksj', 'Hotel Marketing Mgt', 'MsWcDV', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:23:18', '2020-10-27 23:23:18', NULL),
('crstggy34g2z4mfoqygqdfpkwf4g4mc1khaybimeh2goqp5klk', 'Consumer Education', 'kukwg5', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:28:58', '2020-10-28 14:28:58', NULL),
('crstkjhqocuynhgncxukpuxkhxkhryuee4dj1cqdgghqvcbzxl', 'Catering', 'oAzuKv', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:28:30', '2020-10-28 14:28:30', NULL),
('crstm86letkyjx7mycctffuhaskcl04vzn2jprrpihghl2x5dk', 'Family Law 1', 'krUa9O', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:54:45', '2020-10-28 12:54:45', NULL),
('crstn997RNtzieZTYtGFEiEZLj5O1ejPAkASzbrcP4JHUaoEAL', 'MVC Pattern Design', '41', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 1, '2020-07-25 04:50:40', '2020-08-05 13:23:43', NULL),
('crstoxmqwnfe8uoufo5kvu8zwucruhdxehqpytrfezqzbfuy3d', 'Anthropology', 'vad9oS', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:00:19', '2020-10-28 14:00:19', NULL),
('crstqyqrshuhzcdtpxvihwg9hggwm2ecq0jzek1tddqzpqour9', 'Public Health: Epidemiology Demography', 'zsYqYb', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:06:39', '2020-10-28 14:06:39', NULL),
('crstxndfi7uo17emcfjnp05pby3ulcypdplrvzdypxisammfq9', 'The Art of Cooking', 'fDWkRO', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:28:10', '2020-10-28 14:28:10', NULL),
('crstychaex4l726574amhkpz8k1evigzxam4bfmbojyafugubx', 'Operation & Banking Techniques 3', '8Lznri', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:47:17', '2020-10-28 12:47:17', NULL),
('crstzicgwaezmitxhai4nwswicbvecffpojhitly9gsv6p9yox', 'Engineering Maths 4', '4DqZpN', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:21:56', '2020-10-28 13:21:56', NULL),
('crsu2jjclr7xn8asu9oqzq2kuo2jylhpscn9kcikchgrcvgih9', 'Intro To Financial Analysis & Computarise accounting 1 & 2', 'Cod#42', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:05:06', '2020-10-27 23:05:06', NULL),
('crsu4eukcni8sdxsldzitdje37ar2of5ctbsuemarnzcesvq9x', 'History of the profession of midwifery- Ethics and professional conduct Health Basic nursing', 'W7K2yD', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:01:10', '2020-10-28 14:01:10', NULL),
('crsua8zjemmtrpbshjhgys2eebby8jjtwcbrtmqxiei5ewk3qj', 'Implementation of Professional Situation 1', 'WRDGOa', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:43:35', '2020-10-28 13:43:35', NULL),
('crsubkivbijsvsscobfuw5y0v3kb13pj5khd35qwd2pg1zlijr', 'Anatomy and physiology 2-semiology- special pharmacology ', 'KQM0a7', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:09:08', '2020-10-28 14:09:08', NULL),
('crsug63n7uvzingoki4dngvsys21r906n69rcw1ynfycwki1ub', 'Typography 1', '4jhLf3', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:35:47', '2020-10-28 13:35:47', NULL),
('crsugxdfoq192wqrifodmwmyk7eguuwpbcieaoxoehxxfolmqd', 'Marketing Tools 2', 'YmLDQD', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:29:52', '2020-10-28 12:29:52', NULL),
('crsUjZoodeG7McfF62ym4DklG0ikdKq4L4aSVXwO6YAa2E4ggC', 'MVVM Pattern Design', '930', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 1, '2020-07-25 04:52:03', '2020-08-05 13:23:43', NULL),
('crsulro7ot9anie7s3rlrdnfqoncl7yblyfb2tfv1v1n7zqljk', 'Accounting,Ethics & Regulation 3', 'LVsYqz', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:42:09', '2020-10-28 12:42:09', NULL),
('crsummhub6scwbktedsaww33oitckmojv7gff4gjhfuoyktsk6', 'Labour Law 1', 'ueITSZ', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:02:52', '2020-10-28 13:02:52', NULL),
('crsus1srfb7snhvzg1rx3dlobgvwupdlxvu6iy9y1e4mliuykv', 'Anthropology', 'krX7rc', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:46:55', '2020-10-28 13:46:55', NULL),
('crsusmxjntzqtorulf72jgeqidqkoct4cpmketyu3obptl2un4', 'Land Inland Water Ways Or Air Transport', 'Cod#33', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:52:41', '2020-10-27 22:52:41', NULL),
('crsustkiojy3eymjvnn1kn28zgwfp0p4ake2jmo1sngjcybrdr', 'Organic  Chemistry', '5RN3ti', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:52:12', '2020-10-28 13:52:12', NULL),
('crsuup4kvrmacsb5hhaf96gkxujxqhfm9dlc1t1grzopoimxgf', 'Investigative Method Geological Geophysical', 'uYEtAp', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:52:42', '2020-10-28 12:52:42', NULL),
('crsuuxgo4pvznyxn7thjg0mjz2jmpamxugg3sanndu8bsus7yf', 'Marketing Environment 3', 'BTXeyt', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:26:13', '2020-10-28 12:26:13', NULL),
('crsuwoztly96wn6e7b0jfidslde93gjnk8obomje9boteqmeeo', 'Dangerous Goods', 'Cod#34', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:53:29', '2020-10-27 22:53:29', NULL),
('crsuwrsuc0ebx5vgbtngiuru9dsnzqhsh3mdgwtnogvxywnkc0', 'Food Processing 2', '19Hq2r', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:25:00', '2020-10-28 14:25:00', NULL),
('crsvaujh39in97ruvnjdzklpdxpfl3s0nmmcszb2zainzgvudj', 'Housekeeping And Accomodation Technique 1 & 2', 'cK3xdv', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:18:12', '2020-10-27 23:18:12', NULL),
('crsvdsdpzoji2pduw3yxxojj8o1dtctyld6gp9jdsetdmmb1jv', 'Anatomy & Physiology 2', 'npCoyg', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:04:11', '2020-10-28 14:04:11', NULL),
('crsvgbz1ve4vu31mqeonfc2vrew4mv8hr9lc7njat0atwobmmt', 'Geotechnical engineering - sail ', 'csMVfc', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:54:57', '2020-10-28 12:54:57', NULL),
('crsvmhrrr6aipbkyogo412xijpdpdvkat8yrhr5hocjyt5ea6k', 'Bar Restaurant Mgt tech 1 & 2', 'HPI1U0', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:14:59', '2020-10-27 23:14:59', NULL),
('crsVpnOG9CYFQGPI6LL0nFc788kCcf8R8jPv09OXtqMSghMJMe', 'PHP Framework Laravel', '7', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 1, '2020-07-25 04:50:40', '2020-08-05 13:23:43', NULL),
('crsvsxwcmxuws5gmpxtj4pjjujcq3emizvoj5lfq8nhgmcupfb', 'Media Relationship', 'ISmq9q', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:37:30', '2020-10-28 12:37:30', NULL),
('crsw5q0wtmwce6ahxtmitxpficjunsys5q6nqzgw8i4zif1tu5', 'Marketing Environment 4', '0Um2J6', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:26:36', '2020-10-28 12:26:36', NULL),
('crsw7adkkc11cqorz48dcadqev5xitbs5v6qfehdxgkp9qmewp', 'Principles of  Animal Production', 'clPzII', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:12:19', '2020-10-28 13:12:19', NULL),
('crswawnaqmqeynhjuxueq3ugtl5zuc9pwvpzdifpwio5aorplh', 'DIETETICS', 'jf4dJI', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:26:09', '2020-10-28 14:26:09', NULL),
('crswdv20wuuelzoh9fobzqux61aza3h8s51rrzxomvmxlmcjw3', 'Embryology', '548qew', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:03:33', '2020-10-28 14:03:33', NULL),
('crswgdc9lulw4cg6pmcxpcywvgyvpiauk6ug7fho6khiuwsl3l', 'Building Equipment ', 'cxb4a6', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:46:43', '2020-10-28 13:46:43', NULL),
('crswgwg3qrrbbev29k1eobo8yc9vtl6xnstiwsxhds3kqomsvo', 'Applied Mechanics', 'aMOozP', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:20:08', '2020-10-28 13:20:08', NULL),
('crswh1l46m05ioqyfqe8toiwg5ohzioshrqeu3nynddwickpv7', 'Crop pest, diseases & protection', 'u4I0qF', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:30:33', '2020-10-28 13:30:33', NULL),
('crswhgyibkfim9a72py0izbpw7ml00x4opmvgrgjnveirti1b3', 'History of Nursing', '8dOMqw', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:02:07', '2020-10-28 14:02:07', NULL),
('crswhrnxen1bq9lievov0wii6am4zzwecz8wu0snaj5fytmhfr', 'Pharmaceutical Chemistry 1', 'W4eq6u', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:59:49', '2020-10-28 13:59:49', NULL),
('crswhtyh0hcpqfeaamgapha5fmusdylnj5pxxioqjwhj3momxv', 'Mathematics', 'Subject 1', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-12 18:05:48', '2020-10-12 18:05:48', NULL),
('crswhxeamorbm4h3pkknbqbohvclhgm68lids4k0xl1dwabqw6', 'Historical Geology 2 - Paleontology - Microfacies', 'NlPqTB', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:48:55', '2020-10-28 12:48:55', NULL),
('crswjfysenkdorngijwudblvtceff9i33z53lg0d8fbavuygsw', 'OOM UML', 'g5TwnQ', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:05:42', '2020-10-28 13:05:42', NULL),
('crswkgd8jlbl4qpdonkf8gp7f6c56i25eeqaoalhzhibe9kvtj', 'Transport Law Or Carriage Law', 'Cod#35', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:54:01', '2020-10-27 22:54:01', NULL),
('crswkuaki5t2ogtm4vvfhzzhmrpxexivdjeuglmxf2r5kxvskt', 'Architecture & Resistance of Materials', 'MsOxrJ', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:38:45', '2020-10-28 13:38:45', NULL),
('crswlpo2w29e2bhk2jacwg5pvdscbenve0uycjdhpzsrwquvnd', 'Company Law 2', 'ao38YH', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:02:25', '2020-10-28 13:02:25', NULL),
('crswmzdqhwmt670dubitrgwifkqysegseyvl6xf64tqoprwo2c', 'Marketing Tools 4', 'jFWVi6', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:31:02', '2020-10-28 12:31:02', NULL),
('crswpuu0h0oqohwd3iaboskwgdgtnx8eivu825hdhm4v6gcz9m', 'News paper & Magazine production', 'avtiWi', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:34:35', '2020-10-28 12:34:35', NULL),
('crswqnxtbkkx8qnqvbb5hn1fzfv4u3jihiucuwq8edwzeliumf', 'Hotel Engineering', 'R9xuIG', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:19:29', '2020-10-27 23:19:29', NULL),
('crswt7iugyilxilux6l99pxbphmyrsczkd5avfqzndiikesum8', 'General microbiology and general Parasitology', 'ak2jQb', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:35:19', '2020-10-28 14:35:19', NULL),
('crswtitzeiuegqmvocr0nyfudvpnigl4qrtvchkj8pbtih3mrd', 'Cost And Management Accounting 2', 'Cod#38', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:55:59', '2020-10-27 22:55:59', NULL),
('crswy2cbvrswg2codwpzeousw0kxyaymp9ufviwktucpswdtwu', 'Business Management', 'Zu9Czg', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:39:12', '2020-10-28 12:39:12', NULL),
('crsx3syabwlpkrfq5ckq5ejykhh38a1tynhjvekz5fqyfcxpyg', 'General pharmacology- Hematology- General pathology', 'qzEGiA', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:04:04', '2020-10-28 14:04:04', NULL),
('crsx5hnfmshrpq8zcpku5sb2bjguudtfzfrawqrm3p9hfgg67l', 'General Accounting 2', 'Cod#40', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:56:47', '2020-10-27 22:56:47', NULL),
('crsx6z8yl0d0g3x2vymwqasfudlo08chscw3ongmcqktyfkrv1', 'Company Law 1', '15ssJu', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:58:51', '2020-10-28 12:58:51', NULL),
('crsx7fgwxvwghpoanqcackmy8q1vrx8swfwgbq1gzphca94lwz', 'Computer Architecture ', 'OR6ThX', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:02:07', '2020-10-28 13:02:07', NULL),
('crsxamzpxjhtswnjhk938jxwir55uv7rnzu99us0x3ejxt7lru', 'Biostatistics', 'Wle5pi', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:00:47', '2020-10-28 14:00:47', NULL),
('crsxaqtqnxl8fiwwhxaiiiavhnfxwjocb6szce5e1usqbpuzdi', 'Computer for Mass Media', 'ZXTED4', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:38:23', '2020-10-28 12:38:23', NULL),
('crsxcgivr6oheogald5qqdc2r1xdln2xt0vkmpz32z7yoy9zpk', 'Hydrology', 'GXmEb5', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:55:19', '2020-10-28 12:55:19', NULL),
('crsxe4Pw3kYjxwvZgqlj47Sg4HF4pG5NK34sQDeWNZBXeWOe5N', 'PHP Framework Symfony', '606', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 1, '2020-07-25 04:52:03', '2020-08-05 13:23:43', NULL),
('crsxgdi6xsohkx1y0ooboxafdp2c9gqvgrgjmxjhj9rh3vmc3y', 'Monetary Economics 4', 'uiKwMa', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:39:00', '2020-10-28 12:39:00', NULL),
('crsxs5svxzuotvqwxff1ob8iv29pqrsaqrukoq14f6chbtd0ha', 'Physics', 'Subject 3', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-12 18:05:48', '2020-10-12 18:05:48', NULL),
('crsxsiltxjj9wa2wz3zikma3sedekeabi2ncqnfschbpvkln5c', 'Basic Environment 1', 'f7qhos', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:58:40', '2020-10-28 12:58:40', NULL),
('crsxtk2vigvch3ddq4pxe7adfxzybqp2bclciy5wc1ssklrp3o', 'Medical French & English', 'OEImFg', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:11:18', '2020-10-28 14:11:18', NULL),
('crsxviem8c1cmsfiunmpljvsx6pqh7mysa3wli6g9vtwhieegd', 'Insurance Law', 'd3d8IL', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:51:19', '2020-10-28 12:51:19', NULL),
('crsxvinqpcs2mu2iyreb5d15k8wvvprlxkxu3wksxvsvs2mhaa', 'Promotion Policy', 'DwOgBn', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:23:40', '2020-10-28 12:23:40', NULL),
('crsy7ogpq4ekyp3ui6h5xy1ayaqsinsa8elkmfoumgq0sbmyiz', 'Pastry And Bakery techniques', 'bT3E2o', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:20:04', '2020-10-27 23:20:04', NULL),
('crsycn9zp1t0ie2rmm1jyrcx83t3lczsaslnz6tjzes1ljv3wp', 'Marketing Environment 1', 'csLcP0', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:25:04', '2020-10-28 12:25:04', NULL),
('crsye0ffh1ypvdwfqavutse2y2fs5euhuzumh82uauadpzkqra', 'Approach to care-kind-human right', 'NXAyCz', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:15:38', '2020-10-28 14:15:38', NULL),
('crsyelpchwnltkpfsn6rjmhmat4nuwdngwpjveiry5fymofm2v', 'Family Law 2', 'S5kM1V', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:55:11', '2020-10-28 12:55:11', NULL),
('crsyjae4qvihlnjxozxih9mcodiqwo92hrrrusc2pncycyakj6', 'Field Trip', 'qPo2dE', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:53:07', '2020-10-28 12:53:07', NULL),
('crsykddesrg7qmhmqy0njpdj7srmmcfjgcrw92yyo6xzzvsqxz', 'Genetics & Plant Physiology', 'Eoqf0h', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:31:32', '2020-10-28 13:31:32', NULL),
('crsyozu7apf5pfbqpge0n2g632gkdufpcuajqdyz9vi1r38tnx', 'Project Management', 'Bj90Cp', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:25:55', '2020-10-27 23:25:55', NULL),
('crsyqkocgwxeacixsqp7g7mddcq9mzmcnscetmpgn7djzxu4qp', 'Management And Organization', 'Cod#2', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:10:00', '2020-10-27 22:10:00', NULL),
('crsytrste2zrg5murvlfnhuwkdo7zroeotbpe5ixwvsztqikrg', 'Introduction To Oil And Gas Safety & Security in Shipping', '8bxU8e', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 23:27:36', '2020-10-27 23:27:36', NULL),
('crsyxyygofe7lp6tbjbx0wvalgzdaapo1hfmigm7slbckshkto', 'Pharmaceutical 1& pharmacognosy 1', 'ESWBdd', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:53:29', '2020-10-28 13:53:29', NULL),
('crsyyt9bwv1rm7nb0nkapdbh2pbgjeugkyna29dziv365qbhvq', 'Implementation of Professional Situation 2', 'FbDImt', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:43:57', '2020-10-28 13:43:57', NULL),
('crsz2vmmbnatqbdiyow4vgjcmyo7r242s8pru8lhb9kecixs6g', 'Marketing Management 1', 'F4rJ7h', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:36:40', '2020-10-28 12:36:40', NULL),
('crszaepaffyug2lejuohtyaqjc6lwdxahh8yna507iohysnoim', 'Food Science Or Food Microbiology', 'Cod#29', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-27 22:50:27', '2020-10-27 22:50:27', NULL),
('crszEc2Q0tfnmhW0qdYCbLfEyruVHdG1jEKa5MU0AGM4hDYSDO', 'Javascripit Framework Angular', '8', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 1, '2020-07-25 04:50:40', '2020-08-05 13:23:43', NULL),
('crszlnnsoq5z3tmjealllnbuiqaf6qfemuvjqt8kxd9ol29bwl', 'Bakery & Pastry Principles ', 'ogWIsa', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:23:10', '2020-10-28 14:23:10', NULL),
('crszm46oxlyokhwyvj5poxwy6jlgx2ow9th0gyxtlbg8b0rpub', 'Food Science', 'oaENCd', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:24:13', '2020-10-28 13:24:13', NULL),
('crszmkfhk1rm7q9igmokq7njycndil0eqcosgydoxk6phdp5c3', 'Nursing Care in Resuscitation', 'eCNo0w', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:39:19', '2020-10-28 13:39:19', NULL),
('crszn2pta705af4i8dvjdtc612webq9lltq7wau9uofbq1thw3', 'Digital Electronics', 'ErWNDJ', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:56:59', '2020-10-28 12:56:59', NULL),
('crszrufpgwt3drvsmr47sy6rmgr5s7f8etqawcya5mvf4u8x5u', 'Special Contract ', 'X3Y4uj', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:07:19', '2020-10-28 13:07:19', NULL),
('crszrypc9pnlpdehy1uqlodzpqys9xc7q7mgzf7ajdanf39gcx', 'Chemistry 2', 'NjY3gj', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 12:54:05', '2020-10-28 12:54:05', NULL),
('crszvd2xtysz1zzqvnztui9otusah0qoufovjzqx5vdgkzokje', 'Food Knowledge', 'WLIg1U', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 14:19:10', '2020-10-28 14:19:10', NULL),
('crszvyfxud3seczab9xaidnpemfzs6vrduhce3jalnneidvwzg', 'Hydraulic / concrete Technology', 'sdfTvv', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 1, '2020-10-28 13:48:42', '2020-10-28 13:48:42', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `days`
--

CREATE TABLE `days` (
  `day_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `days`
--

INSERT INTO `days` (`day_id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'LUNDI', NULL, NULL, NULL),
(2, 'MARDI', NULL, NULL, NULL),
(3, 'MERCREDI', NULL, NULL, NULL),
(4, 'JEUDI', NULL, NULL, NULL),
(5, 'VENDREDI', NULL, NULL, NULL),
(6, 'SAMEDI', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `departments`
--

CREATE TABLE `departments` (
  `department_id` varchar(255) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `school_id` varchar(50) NOT NULL,
  `faculty_id` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `departments`
--

INSERT INTO `departments` (`department_id`, `department_name`, `school_id`, `faculty_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
('dpmdlzdiecm9rjixj5k4zlwbbqnzqryuqazo4y2uhrihjjpbud', 'Software Engineering Department 2 ', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 'fachlw3joy3zebmvskqxvbotw721zlz2thwown0iody3opkjm9', '2020-08-25 16:58:37', '2020-08-25 17:02:40', NULL),
('dpmxgw8kp4hsblsfqvi10ymla5cxus9zl5l89t9nopkyjut1u8', 'Electonic Department  ', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 'fachlw3joy3zebmvskqxvbotw721zlz2thwown0iody3opkjm9', '2020-08-25 17:04:33', '2020-08-25 17:04:33', NULL),
('dpmxjdt2fltk1vt8egnae84cdydkflakisirdxsrsuh3ajilmx', 'Mathematic Department', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 'fachlw3joy3zebmvskqxvbotw721zlz2thwown0iody3opkjm9', '2020-08-25 18:10:58', '2020-08-25 18:10:58', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `department_channels`
--

CREATE TABLE `department_channels` (
  `id` int(11) NOT NULL,
  `department_id` varchar(50) DEFAULT NULL,
  `channel_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `department_channels`
--

INSERT INTO `department_channels` (`id`, `department_id`, `channel_id`) VALUES
(1, 'dpmxjdt2fltk1vt8egnae84cdydkflakisirdxsrsuh3ajilmx', 'chn6dwccmyi2fnlkquqkomethwijv1qddwk0d2prhyd5ludwpp'),
(2, 'dpmxjdt2fltk1vt8egnae84cdydkflakisirdxsrsuh3ajilmx', 'chnwxbmuz50vnbsmqfrp96papqnzuxdejoamoleqf7zqhwdq9y');

-- --------------------------------------------------------

--
-- Structure de la table `events`
--

CREATE TABLE `events` (
  `event_id` varchar(50) NOT NULL,
  `event_content` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `school_id` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `events`
--

INSERT INTO `events` (`event_id`, `event_content`, `start_date`, `end_date`, `school_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
('evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'Rentrée scolaire 2019-2020', '2019-09-09 00:00:00', '2020-06-01 00:00:00', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-19 13:43:11', '2020-08-19 13:43:11', NULL),
('evnhpg7v5axspalqss11sknunjx96rq17fioktkewyieaowwte', 'test event', '2020-09-18 12:11:00', '2020-09-19 12:11:00', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-09-17 15:11:36', '2020-09-17 17:39:02', '2020-09-17 17:39:02'),
('evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'Academic Entrance 2020-2021', '2020-10-05 16:56:00', '2021-08-15 16:56:00', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-15 20:04:52', '2020-10-15 20:04:52', NULL),
('evntt5klw4ncsjgp7m1bychjsszaic2tzdgrri2bv6udhau8wz', 'Concours d\'entrée en 6ième', '2020-09-17 11:48:00', '2020-09-18 11:48:00', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-09-17 14:48:27', '2020-09-17 14:48:27', NULL),
('evnzg9scpmwa7edfnmigx7kyznp7oswfaivpqa1neusxffyvf9', 'Concours d\'entrée en 1ère Année', '2020-09-17 11:48:00', '2020-09-18 11:48:00', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-09-17 15:06:02', '2020-09-17 15:06:02', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `event_sub_events`
--

CREATE TABLE `event_sub_events` (
  `id` int(11) NOT NULL,
  `event_id` varchar(50) NOT NULL,
  `sub_event_id` int(11) NOT NULL,
  `is_checked` tinyint(4) DEFAULT '1',
  `registration_fee` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `event_sub_events`
--

INSERT INTO `event_sub_events` (`id`, `event_id`, `sub_event_id`, `is_checked`, `registration_fee`) VALUES
(55, 'evnhpg7v5axspalqss11sknunjx96rq17fioktkewyieaowwte', 1, 1, 0),
(56, 'evnhpg7v5axspalqss11sknunjx96rq17fioktkewyieaowwte', 2, 1, 0),
(57, 'evnhpg7v5axspalqss11sknunjx96rq17fioktkewyieaowwte', 3, 1, 0),
(58, 'evnhpg7v5axspalqss11sknunjx96rq17fioktkewyieaowwte', 4, 1, 0),
(59, 'evnhpg7v5axspalqss11sknunjx96rq17fioktkewyieaowwte', 5, 1, 0),
(60, 'evnhpg7v5axspalqss11sknunjx96rq17fioktkewyieaowwte', 6, 1, 0),
(61, 'evnhpg7v5axspalqss11sknunjx96rq17fioktkewyieaowwte', 7, 1, 0),
(62, 'evnhpg7v5axspalqss11sknunjx96rq17fioktkewyieaowwte', 8, 1, 0),
(63, 'evnhpg7v5axspalqss11sknunjx96rq17fioktkewyieaowwte', 9, 1, 0),
(64, 'evnhpg7v5axspalqss11sknunjx96rq17fioktkewyieaowwte', 10, 1, 0),
(65, 'evnhpg7v5axspalqss11sknunjx96rq17fioktkewyieaowwte', 11, 1, 0),
(66, 'evnhpg7v5axspalqss11sknunjx96rq17fioktkewyieaowwte', 12, 1, 0),
(67, 'evnhpg7v5axspalqss11sknunjx96rq17fioktkewyieaowwte', 13, 1, 0),
(106, 'evntt5klw4ncsjgp7m1bychjsszaic2tzdgrri2bv6udhau8wz', 3, 1, 0),
(107, 'evntt5klw4ncsjgp7m1bychjsszaic2tzdgrri2bv6udhau8wz', 5, 1, 0),
(108, 'evntt5klw4ncsjgp7m1bychjsszaic2tzdgrri2bv6udhau8wz', 6, 1, 0),
(109, 'evnzg9scpmwa7edfnmigx7kyznp7oswfaivpqa1neusxffyvf9', 1, 1, 0),
(110, 'evnzg9scpmwa7edfnmigx7kyznp7oswfaivpqa1neusxffyvf9', 4, 1, 0),
(111, 'evnzg9scpmwa7edfnmigx7kyznp7oswfaivpqa1neusxffyvf9', 10, 1, 0),
(112, 'evnzg9scpmwa7edfnmigx7kyznp7oswfaivpqa1neusxffyvf9', 11, 1, 0),
(113, 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 1, 1, 0),
(114, 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 2, 1, 0),
(115, 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 3, 1, 0),
(116, 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 4, 1, 0),
(117, 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 5, 1, 0),
(118, 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 6, 1, 0),
(119, 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 7, 1, 0),
(120, 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 14, 1, 0),
(135, 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 14, 1, 0),
(136, 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 4, 1, 0),
(137, 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 5, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `examinations`
--

CREATE TABLE `examinations` (
  `examination_id` int(11) NOT NULL,
  `lecturer_id` varchar(50) NOT NULL,
  `course_id` varchar(50) NOT NULL,
  `sub_event_id` int(11) NOT NULL,
  `registration_id` int(11) NOT NULL,
  `grade` decimal(10,0) DEFAULT '0' COMMENT 'mark related with exam',
  `examination_date` date DEFAULT NULL COMMENT 'date of exam',
  `was_he_present` tinyint(4) DEFAULT '1',
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `faculties`
--

CREATE TABLE `faculties` (
  `faculty_id` varchar(50) NOT NULL,
  `faculty_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `faculties`
--

INSERT INTO `faculties` (`faculty_id`, `faculty_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
('fachlw3joy3zebmvskqxvbotw721zlz2thwown0iody3opkjm9', 'faculte Saint Georges', '2020-08-25 15:04:15', '2020-08-25 18:55:34', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `grades`
--

CREATE TABLE `grades` (
  `grade_id` int(11) NOT NULL,
  `grade_content` varchar(50) DEFAULT NULL COMMENT 'A, B, C | very good | tres bien | assez bien | ECA | Acquis',
  `min_value` int(11) DEFAULT NULL,
  `max_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2014_10_12_200000_create_foreign_keys', 1),
(10, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(11, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(12, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(13, '2016_06_01_000004_create_oauth_clients_table', 2),
(14, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payment_orders`
--

CREATE TABLE `payment_orders` (
  `payment_orders_id` int(11) NOT NULL,
  `deposit_amount` float DEFAULT '0',
  `deposit_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `remitter_name` varchar(200) NOT NULL DEFAULT '0' COMMENT 'remitter''s name',
  `payment_type` enum('cash','transfer') NOT NULL DEFAULT 'cash',
  `registration_type` enum('class','channel') NOT NULL DEFAULT 'class',
  `registration_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `payment_orders`
--

INSERT INTO `payment_orders` (`payment_orders_id`, `deposit_amount`, `deposit_datetime`, `remitter_name`, `payment_type`, `registration_type`, `registration_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 250001, '2020-10-04 13:18:00', 'Martha Kent', 'cash', 'class', 27, '2020-10-04 16:18:23', '2020-10-04 16:18:23', NULL),
(3, 250000, '2020-10-04 15:01:00', 'Martha Kent', 'cash', 'class', 15, '2020-10-04 18:01:23', '2020-10-04 18:01:23', NULL),
(4, 150000, '2020-10-06 23:48:00', 'john fru ndi', 'cash', 'class', 28, '2020-10-07 02:48:31', '2020-10-07 02:48:31', NULL),
(5, 150000, '2020-10-19 00:00:00', 'john adasm', 'cash', 'class', 30, '2020-10-19 13:48:12', '2020-10-19 13:48:12', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `periods`
--

CREATE TABLE `periods` (
  `period_id` varchar(50) NOT NULL,
  `day` int(10) UNSIGNED NOT NULL COMMENT 'number of day 1 - 6 monday to saturday',
  `start_time` time NOT NULL COMMENT 'on which hour the course should take place',
  `end_time` time NOT NULL COMMENT 'on which hour the course should end',
  `period_type` enum('class','break') NOT NULL DEFAULT 'class' COMMENT 'refers to column name in school on which type it is belong to',
  `event_id` varchar(50) DEFAULT NULL,
  `school_id` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `periods`
--

INSERT INTO `periods` (`period_id`, `day`, `start_time`, `end_time`, `period_type`, `event_id`, `school_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
('per04dnyqr37duvhmayahknvzktefvtozvmgr7wynw9qbjc8of', 6, '08:15:00', '09:00:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('per0d5hwspzkovc2xfdj7hhorzobfgei7xdezclf3mje94kgid', 5, '10:45:00', '11:30:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('per14pcdvr93vcyr7xiog4evtbu6frccltagywem3ka6wdki8s', 5, '13:00:00', '13:30:00', 'break', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('per2emcth5yfd3cmrujdkvdgdvjrooez8b1xftxzs09tqkiwyk', 6, '14:00:00', '15:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 2, '09:00:00', '10:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('per2rbyonwg9hkv42ksgwkmi5tpuhypc3izfasb9j07cdpnnlq', 6, '22:00:00', '23:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('per2tkcpkgk09szpqvffm0i6makkhoxryawtt6zhreqgxwgdsf', 6, '10:00:00', '10:45:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 1, '11:00:00', '12:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('per3es0iasnltdel9wd78u42qypvjs2q2hjywb1f1fewfq1yq1', 3, '11:30:00', '12:15:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('per3pvmnvqtbww96mm0it4poorc6k3phlahl1mgrxrgllvyxkn', 4, '20:00:00', '21:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('per3rbrjt4iygvsxev6jx1peuuogkucu0bnttlonuj4gc5nhpu', 6, '20:00:00', '21:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('per4iumevk9tdnve2royyrogyzyrmzzsxhkylupl48dsireoir', 6, '07:30:00', '08:15:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('per4ul4ot18wvbpzfibkqoqtdvthlngyztuom3k0i0npzmgrya', 2, '10:45:00', '11:30:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('per5gkvtt1yysgwpijvvtad2zazd7xazw3esdane7y3u3vxr5m', 3, '10:00:00', '10:45:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('per5lwazcsaa4ii8pt4smoeklawxpn0e1w5ailaa6rczkv0dz7', 4, '08:15:00', '09:00:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('per5m1vstjsljz7xdqiwmqvqzqubn8wnkhdnxnwlgl4wqqyflj', 1, '11:30:00', '12:15:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('per61maf64ecfynw1me0ega54kvemete8nfgqxj2aqq1bxmnr0', 2, '14:15:00', '15:00:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 3, '13:00:00', '14:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('per7dyihyqteoy2tu0dgfzukwavcmzyz9hlyfl3awuik2cary2', 4, '09:00:00', '09:45:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('per7zir8kucv31jbznjm0uvcseitalbcbntaw3a0ty8bnbz0li', 3, '15:00:00', '15:45:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('per8dkqrtlzwnwpc0oopzw7t8icljbmxaaxtwtr84hntle7rzj', 1, '15:00:00', '15:45:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('per9oxhw1rueutuyn30pagzip3onz8oi9dko0tgzazv0c6x5ml', 3, '18:00:00', '19:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 5, '13:00:00', '14:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perad4toxiyt1uue7ocbwetnnxohxc0cecbzoeirgrlfumdxor', 6, '10:45:00', '11:30:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perae0gasuwbyxpc9fhag2xg1wi1whmq3cd7jlvc378oyehb9o', 6, '11:30:00', '12:15:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('peraieoiywxwnzpgo5muwfvspy6kgeprinkdpyk13rovvilhxa', 1, '14:00:00', '15:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perakgsr8n2ruspuhqkxqcr7ialvkmcwbqo5agna6jh214hkou', 6, '13:00:00', '13:30:00', 'break', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perarcdedqt8qvbnm17mnr0glfdb6fhsewnas4k83aw4tzu7zw', 2, '17:00:00', '18:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perarjwqmlv9ugbiuz7rmk7eogog16ulk50d21vosghxdz6wd7', 3, '19:00:00', '20:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', 2, '15:00:00', '16:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perb3s07xkyxj30ivxtqmazrovthu9omqtc4opadr1s8418xgd', 1, '18:00:00', '19:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perbbft3r476nuhg9zgkywv16h73m4h5p9g8zg2ogq5xxj7vyo', 1, '14:15:00', '15:00:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perbrvmepzasvvlg0od14gid7lkmonvznxbfhp9woqphizl5dv', 5, '17:00:00', '18:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 4, '08:00:00', '09:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perbxjpmbc8ggmjjreihsb4ykvm32eemg44vmpayyjzj1nfxeg', 2, '07:00:00', '08:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perc1kftnzwtwlnwmvkwi67isgurlbaabcnrf79j7cyokqagwp', 4, '10:45:00', '11:30:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('percqvce9vcsoeujmew1c2wrl55uqr3gn847tn6r48g5ettygi', 5, '10:00:00', '10:45:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 2, '08:00:00', '09:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perd6uaz0ujh5jezvjxpzs8yaid81lc7tpmp8rmk6pdvsbvgjz', 1, '10:45:00', '11:30:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perdgcr7euwoimepsn2wd2nlbfheobzzhdg3pyyaifceopw7am', 1, '07:00:00', '08:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perdjlwfohdfspyvkf2ik76mryn2bqoavu6lvtbhtjgqmxjs8j', 2, '15:00:00', '15:45:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perdravbmufqnvlmrtog3ubpkk7o6ccqnbqup1dt5qw8ezsggx', 4, '13:30:00', '14:15:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perdshrsn5ewd8hlqtu0lldpin2gotfbxrmixlfjjv3ndlzyir', 6, '12:15:00', '13:00:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perduksoh6a9nwoyhwlrucuuyi5i41z2j92qjppwfmcqyi45pn', 1, '10:00:00', '10:45:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perduu2tiak1hfwh2e0ljsv2epic08objztb2hbi6pqnvcmu4r', 6, '15:00:00', '16:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('pere4l1vhjv49waedf2fkirrczfwi1k2y5ec42j6dpia6vvj6d', 4, '14:15:00', '15:00:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 4, '09:00:00', '10:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perefyhpaxaxkckkloas1o81fpxz0aypeyazbvfpeuxdumhkcx', 4, '12:15:00', '13:00:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('peregumhwjmol28ot1tcukoiyapck0lqfthreg16uw3fx1acnv', 6, '11:00:00', '12:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('peregygv1tbw5g7xpvodkgobwopzwwdlbbxpharnvvwenxv0fp', 2, '20:00:00', '21:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 4, '11:00:00', '12:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perejpaf27rjzkrfwyasoe078srg77ajclp9dgebgf0rrcnktt', 6, '12:00:00', '13:00:00', 'break', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perelhrhmt4oxkoyhjnh41nhvobli4bsbmbyhey4jzg2wiqt5d', 5, '07:30:00', '08:15:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perfjaklekzhtmik4gul0yrysx95fzjyr4zczzf1h4iv9i33be', 1, '21:00:00', '22:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perfnwe5ckg6csrqcxjspvqi69uzzlyrzr8yvuhjmys2dkq9yn', 5, '12:15:00', '13:00:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perfpkhzwpotaieatexobm9aqm0k0dnrbjpou5jk9tnf02n3sm', 6, '13:00:00', '14:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', 3, '16:00:00', '17:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 1, '08:00:00', '09:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perg2bsomi53z7qyrdzyfympu7y56hmpfnx7oirtxctbhqerig', 2, '21:00:00', '22:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perg2wtop7d8co9ddwywwv1fuuoduzoexil6g1kp6hiiyj54oe', 6, '18:00:00', '19:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perg9rp46juqgkdpgshpujx5das61d74mm6yrya6jrwxh5tpqy', 3, '08:00:00', '09:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('pergmemhcfyr5jpcxqvyxa9qijdtyoer1putlafa8pnj1c4bm4', 2, '09:45:00', '10:00:00', 'break', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('pergmgu1jdpjqnpqiaximtjrszpnuxncig40xtfjhtclodcq0r', 3, '13:00:00', '13:30:00', 'break', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('pergmt6ew6ktwh9ryzyk4ejjxdexvnj0hxzd6tmhcfynwncrqx', 1, '07:30:00', '08:15:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', 5, '16:00:00', '17:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('pergqyed91lh5bqyli0qjoguzc4ftnnbk2u25rcclkihl4m6gz', 2, '09:00:00', '09:45:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('pergrbey5eqwllvyaslnesrwle69k1fqenofn22ka9fznysdm1', 3, '07:30:00', '08:15:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perguln9rfwptrihli5ykomxfgfvlwszsmhbmzxntgke9sxbwv', 1, '13:00:00', '14:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perh4sek1dssicv9mkopwsi9ba6rlexed6yi8rjpgrdq0o1rqn', 4, '15:00:00', '15:45:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perhcjruqyk0inteicuqx3nnw6hef2j7yiehkiy7wtj7iyhoyn', 2, '13:30:00', '14:15:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perhjwhnrdlwug8p1dhab4ejmopehh6odhoucuibndodbkpjp8', 3, '09:45:00', '10:00:00', 'break', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perhvwaez9uumecelwtox4jzaumakwfre6sc2fbvbfx5vhjhyn', 6, '16:00:00', '17:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perhwnicup4bx99ofngn2hxcgs4ned5jmbjhex2cpsokegatb3', 2, '18:00:00', '19:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 2, '13:00:00', '14:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', 2, '16:00:00', '17:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perigwclnfcxhafbdwul9rvqvbrnc4gvxyntgrddqfeoymvemf', 6, '09:00:00', '10:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perixojr684g0eshkntxe7rqwmnyuw8q3omcdiifkcaaorpuph', 6, '08:00:00', '09:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perjehbp9llqxqwx2w6iqnt53qh6mrebeabyswk85hudhrvt6g', 4, '09:45:00', '10:00:00', 'break', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perjriv6y5pbyga8s4o5a4vvnyfu7eqrwpuczgespdh8lmaah5', 3, '09:00:00', '09:45:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perjtunljsvxrjbksyu2aywv1nlapdfvwyv84nbhlobkv9wobx', 2, '11:30:00', '12:15:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 1, '10:00:00', '11:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perkbpyc56nzx1efivewfamw44awbxz8ftcg8yj0wral5eblka', 4, '10:00:00', '10:45:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perkdw0wu6esto7xjawy4dqszdbkkydwgusnymnatjmuvjfqi3', 5, '09:45:00', '10:00:00', 'break', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 3, '14:00:00', '15:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perkq26wprvifwdszbfuozakqizoglg76bte9l9eazrwguf4ak', 5, '19:00:00', '20:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perkt3q4cts49bcef7vfwfcpvhzb5aehp8iehchcblhuetcihs', 1, '08:15:00', '09:00:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perkvhkmokj5dz2uytybcsqgkiroalqnzxawrfxyaaafxhqcjk', 4, '17:00:00', '18:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 5, '10:00:00', '11:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 5, '14:00:00', '15:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perl3ms7agoj6drdz6mroqtsjzhli7q9n9prxrf1ujlhkudtvb', 6, '21:00:00', '22:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perl6xazach6rnlg5gxlzwkhrovoejfn7iartkbrmgmzhelj3x', 3, '21:00:00', '22:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perlcsk6pdltdqdptrweq4rbpezzy4jkgevhddu9dtvvf4zlsl', 2, '19:00:00', '20:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perldgxzgzpewkvf6acmffuxvy4akzff9f8mr2ollyw8ncwecm', 2, '12:15:00', '13:00:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perlm2kwsqqk9esptvpjfog0xkl1ezwcaz2rr1lmoox8zfzenj', 3, '22:00:00', '23:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perlnjkxnyjljjpllv7vo8f1pgfq5tbm3xhczvkpdwlezy8qmg', 1, '13:00:00', '13:30:00', 'break', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perlqzxarnruem8ntcxsgmvupa4ejzjnbz1fdtjmqb8uubz7se', 6, '07:00:00', '08:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perlspwy7olzitfmdu0fqghxyy5xsjgzficewwae3lkauu1gjx', 3, '12:00:00', '13:00:00', 'break', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 5, '11:00:00', '12:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 4, '16:00:00', '17:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('permsts7xfaihofvlrq9iedorzhwncv5r4crhdwp4lg2f9r3nf', 5, '12:00:00', '13:00:00', 'break', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('permxuwbaysnrkdpfqtequ03sosoh372lboswcltcehivij1at', 2, '08:15:00', '09:00:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('permzjeutozuxvrgvigj4bfhtn1zi7om2fgt0qsprnxjpuubcn', 1, '13:30:00', '14:15:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('pern5yehlrra5fihhsoi1hawdc1cfx7taghwzx4nsnkde1znuy', 6, '19:00:00', '20:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('pernbqzntuz9qwru1kkuaftqlj1xpyh8kpzqs3cuh4bf6dz7zh', 1, '09:45:00', '10:00:00', 'break', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('pernxfrtyslhusn4gku5lelh0ur28qecxkoq9pn8ugynj4iqzm', 4, '21:00:00', '22:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('peroaq0ukjtvznmgcboptwzseyvh9dc6jd6hk1kxlvnlvvajdp', 4, '07:00:00', '08:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 1, '16:00:00', '17:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('peromzm9l4xoyh7yy0yq9i2484j46foifqca9ocimj4ysnmo44', 1, '12:00:00', '13:00:00', 'break', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('peroplxy6fowiypge9jhs8lo85cixcpxkcnzzomqgjqcvhbifm', 4, '12:00:00', '13:00:00', 'break', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('peroqamuanpulmnsymhy2z4pxnqlbifu9pkifum8gqutmimu5t', 3, '13:30:00', '14:15:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perouwlywc2g1wt0sckgha1g15yt0coohkfpq6whbzhv2umgtt', 5, '13:30:00', '14:15:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perp2c4phmuu1mk5wx7tgz517phsyd0idesh7qxz3cqgraozxo', 4, '18:00:00', '19:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perpnkoep499eqisrqwnvo4wtckvfwicmgadtogikweikxcpvj', 6, '17:00:00', '18:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perpuxripmhyhotndrsksizlokdkaih0ba3iqf8usfz0dy2ocx', 6, '15:00:00', '15:45:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perpwey9w0mtb6kqoxfsw3k2i9ie6xeeeowe3tae3sil9uuzlh', 5, '15:00:00', '15:45:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perq8lktuxlrthi3qjcofwzzrny0y4johh4lp1splfcupzviwb', 6, '09:45:00', '10:00:00', 'break', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perqcqokspvajcr9dnmccghctqjhjflatj1p9dcpqwkeajz3md', 4, '19:00:00', '20:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perqlsvygqidrypw3ytcreetnqkkqukzjxql0agvzfls1tl48m', 3, '20:00:00', '21:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perqnjbyf1zpaf4iizwwrq0rfzoawdcobckhx3m2o6cfofadru', 4, '13:00:00', '13:30:00', 'break', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 2, '10:00:00', '11:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perrgtptpddylpgyodethbqmq0ufxjsrdjvrmbowufljzidzpm', 4, '11:30:00', '12:15:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perrjlgen8ljlsb1hlokcr6xyueuk2pu6hrmvogzb6thjjwr6d', 3, '10:45:00', '11:30:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perrjn9lqs4wesb6vdzx2tv5jcfcumzkzqcvfltqnjxnlhr3xy', 5, '07:00:00', '08:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 4, '13:00:00', '14:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perrztidsfedzyavzys46kgk4qclxlvwsf4sen9mwn9dun9ega', 3, '11:00:00', '12:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('pers7tqfqxrh0ynujo8xzi4s9woqqmy1czrt3wzs870qzdhf9n', 2, '13:00:00', '13:30:00', 'break', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 4, '14:00:00', '15:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('persqlke1coahwzk84f64feuiacj3qh6zau8vk3lsbuklmdwrn', 2, '10:00:00', '10:45:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perstoeoi3adllmiityvawggk6dvuzrizsv8jh9i2zmkewezev', 3, '08:15:00', '09:00:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('persu0zpmgrwc3qojertzh0pkfqfgd7mgbkcpexenhoqpqptuv', 6, '09:00:00', '09:45:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('persuo4a6l2f6ngsh4rf4o3bhe7xs1lojbuepcsucnlnpxktde', 1, '22:00:00', '23:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perszeqqlxotzkdol19fzi6myhphahopgyjly1joyuwui8pp5w', 2, '07:30:00', '08:15:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('pert2vargaem605lkfhjszdnpr1qkb1pttpybxzwyyhnwfuadi', 4, '22:00:00', '23:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perte3qtlbagds6vfwggvvyxjc98v6rlsnnchfl9rbzit3zfnk', 6, '13:30:00', '14:15:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', 2, '11:00:00', '12:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('pertohzyl5chsyngidkp36bwrdw3dykh2h6r2qcadtxet90uyy', 3, '17:00:00', '18:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('pertrnjzlqwgecip50ahntykae7tikbgzibldlndqfqenozwey', 2, '22:00:00', '23:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('pertuqvad5gp4ve5qriygxdnzdklwjdyseu27rncbstl8cpeaw', 5, '20:00:00', '21:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('peru0iwj1wbmnqxuhz6ndc7asragtkkrenppz7wsdo0wz8webe', 1, '09:00:00', '09:45:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('peruaey98olxuu7sko4a0xzozgumsnt0eq3vt5bpwk89xwwh8x', 6, '10:00:00', '11:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perue8b9y3zc5brxbeb2jt5snr0ikplhrkavhtok6i91w0v4fm', 5, '14:15:00', '15:00:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perukxgvs8bt8uxp3nww4xhzxpucjoefdgny6a4jkfpn7chgch', 6, '14:15:00', '15:00:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perumewwbfhbbma1v8yrjargw3colnzqjnaahi4tkh5dtyefwr', 4, '07:30:00', '08:15:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('peruvekxnleloen39vaflrfbv0upkwtgtcjlrazv1ctzoxgm6z', 5, '11:30:00', '12:15:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perv3pighxwhi0qwyqr5tx30hgdavd1cwliepxdixezwg3fky7', 3, '14:15:00', '15:00:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('pervhrkztpkabirme5kjypzlralbn2cstmyoi4sg0lns2dsach', 3, '12:15:00', '13:00:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('pervkkyisiqp2ecm5dr8vc4vugzlbzqhurljtbfxp6nqowuj2a', 1, '20:00:00', '21:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 4, '10:00:00', '11:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('pervnfw589l6ecl44paqpjno6ixb7k81ifxprdfugvn4likzuk', 2, '12:00:00', '13:00:00', 'break', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 1, '15:00:00', '16:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('pervviwcmj4zossjjtvumeh6nvaoaitkswzfrsq5qdrwuphbig', 5, '21:00:00', '22:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 1, '09:00:00', '10:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perwchiict54ijcu9ukrg7rhsgop2p34umjt2edz5agjuyqdq2', 5, '18:00:00', '19:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', 5, '15:00:00', '16:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', 3, '15:00:00', '16:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perwru0avsqkhwsjdekhptqtybblzyryglawm46bg8vyiosdcr', 3, '10:00:00', '11:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perxeowntkhcmgii0i6scy9harttmbts6owyzphjkjzikgfrvn', 1, '19:00:00', '20:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perxft9lice16ed18mec2hxsxyzowy80bnvdal9u5jdkzgknnk', 5, '08:15:00', '09:00:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 5, '08:00:00', '09:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perxmu1lji6h2kzmcpqdiq9swpoihhpy6p9fbsu2ceveejhcee', 1, '17:00:00', '18:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 5, '09:00:00', '10:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 4, '15:00:00', '16:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perymq7kpd8jvoqtv6sevysv5cjferskob4gw4affbc5rwcq4j', 3, '07:00:00', '08:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perywxzwecqeft6rx2k95ziqqq6e8guusf5ovn3zk8iowgonrv', 5, '22:00:00', '23:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 2, '14:00:00', '15:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perz9kaxhbhvtpzq26s2dr80ozne4oivjyntfmqx6uhddma2nk', 1, '12:15:00', '13:00:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL),
('perzd47x9sdine3wuuuez92ki1lbh8z9sej7nkxl9iy9yb42ry', 3, '09:00:00', '10:00:00', 'class', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2020-10-12 18:05:47', '2020-10-28 14:32:17', NULL),
('perzte0nthz9cfqqhriwmhgsf3qwwk4ndkoxskqlx7gl8vbofj', 5, '09:00:00', '09:45:00', 'class', 'evn3ltqnmufqaie369y74rfbgafrim7qxemhqt0p57gava5sww', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '2020-08-03 21:57:09', '2020-10-28 14:34:58', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `period_class`
--

CREATE TABLE `period_class` (
  `id` int(11) NOT NULL,
  `period_id` varchar(50) NOT NULL,
  `class_id` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `period_class`
--

INSERT INTO `period_class` (`id`, `period_id`, `class_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'per5lwazcsaa4ii8pt4smoeklawxpn0e1w5ailaa6rczkv0dz7', 'clsh4yhnfrosrbsnmxl9enmxfty04emhvpzlvdajzs4uyct2bj', '2020-08-15 22:58:46', '2020-08-15 22:58:46', NULL),
(6, 'per04dnyqr37duvhmayahknvzktefvtozvmgr7wynw9qbjc8of', 'clsh4yhnfrosrbsnmxl9enmxfty04emhvpzlvdajzs4uyct2bj', '2020-08-15 22:58:48', '2020-08-15 22:58:48', NULL),
(8, 'perkt3q4cts49bcef7vfwfcpvhzb5aehp8iehchcblhuetcihs', 'clsh4yhnfrosrbsnmxl9enmxfty04emhvpzlvdajzs4uyct2bj', '2020-08-15 22:58:49', '2020-08-15 22:58:49', NULL),
(9, 'peru0iwj1wbmnqxuhz6ndc7asragtkkrenppz7wsdo0wz8webe', 'clsh4yhnfrosrbsnmxl9enmxfty04emhvpzlvdajzs4uyct2bj', '2020-08-15 22:58:49', '2020-08-15 22:58:49', NULL),
(10, 'percqvce9vcsoeujmew1c2wrl55uqr3gn847tn6r48g5ettygi', 'clsh4yhnfrosrbsnmxl9enmxfty04emhvpzlvdajzs4uyct2bj', '2020-08-15 22:58:49', '2020-08-15 22:58:49', NULL),
(11, 'perkbpyc56nzx1efivewfamw44awbxz8ftcg8yj0wral5eblka', 'clsh4yhnfrosrbsnmxl9enmxfty04emhvpzlvdajzs4uyct2bj', '2020-08-15 22:58:50', '2020-08-15 22:58:50', NULL),
(12, 'per5gkvtt1yysgwpijvvtad2zazd7xazw3esdane7y3u3vxr5m', 'clsh4yhnfrosrbsnmxl9enmxfty04emhvpzlvdajzs4uyct2bj', '2020-08-15 22:58:50', '2020-08-15 22:58:50', NULL),
(17, 'perelhrhmt4oxkoyhjnh41nhvobli4bsbmbyhey4jzg2wiqt5d', 'clsh4yhnfrosrbsnmxl9enmxfty04emhvpzlvdajzs4uyct2bj', '2020-08-15 23:11:17', '2020-08-15 23:11:17', NULL),
(18, 'permxuwbaysnrkdpfqtequ03sosoh372lboswcltcehivij1at', 'clshh5jnrpmsxcl2pdzjkncqdxocsobqaiw18wruhmeovjjtgo', '2020-08-15 23:45:44', '2020-08-15 23:45:44', NULL),
(19, 'pergqyed91lh5bqyli0qjoguzc4ftnnbk2u25rcclkihl4m6gz', 'clsrnruxxxjsb78o5jkphskxthaltu1z3evnz6zb1u3rslkpl5', '2020-08-16 04:55:27', '2020-08-16 04:55:27', NULL),
(20, 'persqlke1coahwzk84f64feuiacj3qh6zau8vk3lsbuklmdwrn', 'clsrnruxxxjsb78o5jkphskxthaltu1z3evnz6zb1u3rslkpl5', '2020-08-16 04:55:28', '2020-08-16 04:55:28', NULL),
(21, 'per4ul4ot18wvbpzfibkqoqtdvthlngyztuom3k0i0npzmgrya', 'clsrnruxxxjsb78o5jkphskxthaltu1z3evnz6zb1u3rslkpl5', '2020-08-16 04:55:28', '2020-08-16 04:55:28', NULL),
(22, 'perrjlgen8ljlsb1hlokcr6xyueuk2pu6hrmvogzb6thjjwr6d', 'clsrnruxxxjsb78o5jkphskxthaltu1z3evnz6zb1u3rslkpl5', '2020-08-16 04:55:29', '2020-08-16 04:55:29', NULL),
(23, 'perszeqqlxotzkdol19fzi6myhphahopgyjly1joyuwui8pp5w', 'clsrnruxxxjsb78o5jkphskxthaltu1z3evnz6zb1u3rslkpl5', '2020-08-16 13:37:40', '2020-08-16 13:37:40', NULL),
(24, 'perstoeoi3adllmiityvawggk6dvuzrizsv8jh9i2zmkewezev', 'clsrnruxxxjsb78o5jkphskxthaltu1z3evnz6zb1u3rslkpl5', '2020-08-16 13:37:41', '2020-08-16 13:37:41', NULL),
(25, 'perjriv6y5pbyga8s4o5a4vvnyfu7eqrwpuczgespdh8lmaah5', 'clsrnruxxxjsb78o5jkphskxthaltu1z3evnz6zb1u3rslkpl5', '2020-08-16 13:37:41', '2020-08-16 13:37:41', NULL),
(26, 'per5gkvtt1yysgwpijvvtad2zazd7xazw3esdane7y3u3vxr5m', 'clsrnruxxxjsb78o5jkphskxthaltu1z3evnz6zb1u3rslkpl5', '2020-08-16 13:37:42', '2020-08-16 13:37:42', NULL),
(27, 'perc1kftnzwtwlnwmvkwi67isgurlbaabcnrf79j7cyokqagwp', 'clsrnruxxxjsb78o5jkphskxthaltu1z3evnz6zb1u3rslkpl5', '2020-08-16 13:37:43', '2020-08-16 13:37:43', NULL),
(28, 'perkbpyc56nzx1efivewfamw44awbxz8ftcg8yj0wral5eblka', 'clsrnruxxxjsb78o5jkphskxthaltu1z3evnz6zb1u3rslkpl5', '2020-08-16 13:37:44', '2020-08-16 13:37:44', NULL),
(29, 'perzte0nthz9cfqqhriwmhgsf3qwwk4ndkoxskqlx7gl8vbofj', 'clsmzqqoyrldt0bjinaomlzpavll8bsj2wtwsnpkeq8othtuvm', '2020-08-16 13:44:06', '2020-08-16 13:44:06', NULL),
(30, 'persu0zpmgrwc3qojertzh0pkfqfgd7mgbkcpexenhoqpqptuv', 'clsmzqqoyrldt0bjinaomlzpavll8bsj2wtwsnpkeq8othtuvm', '2020-08-16 13:44:06', '2020-08-16 13:44:06', NULL),
(31, 'perxft9lice16ed18mec2hxsxyzowy80bnvdal9u5jdkzgknnk', 'clsmzqqoyrldt0bjinaomlzpavll8bsj2wtwsnpkeq8othtuvm', '2020-08-16 13:44:07', '2020-08-16 13:44:07', NULL),
(32, 'per04dnyqr37duvhmayahknvzktefvtozvmgr7wynw9qbjc8of', 'clsmzqqoyrldt0bjinaomlzpavll8bsj2wtwsnpkeq8othtuvm', '2020-08-16 13:44:07', '2020-08-16 13:44:07', NULL),
(33, 'pergmt6ew6ktwh9ryzyk4ejjxdexvnj0hxzd6tmhcfynwncrqx', 'clsmzqqoyrldt0bjinaomlzpavll8bsj2wtwsnpkeq8othtuvm', '2020-08-17 19:26:17', '2020-08-17 19:26:17', NULL),
(34, 'perkt3q4cts49bcef7vfwfcpvhzb5aehp8iehchcblhuetcihs', 'clsmzqqoyrldt0bjinaomlzpavll8bsj2wtwsnpkeq8othtuvm', '2020-08-17 19:26:17', '2020-08-17 19:26:17', NULL),
(35, 'permxuwbaysnrkdpfqtequ03sosoh372lboswcltcehivij1at', 'clsmzqqoyrldt0bjinaomlzpavll8bsj2wtwsnpkeq8othtuvm', '2020-08-17 19:26:18', '2020-08-17 19:26:18', NULL),
(36, 'per5m1vstjsljz7xdqiwmqvqzqubn8wnkhdnxnwlgl4wqqyflj', 'clsmzqqoyrldt0bjinaomlzpavll8bsj2wtwsnpkeq8othtuvm', '2020-08-17 19:27:49', '2020-08-17 19:27:49', NULL),
(37, 'perz9kaxhbhvtpzq26s2dr80ozne4oivjyntfmqx6uhddma2nk', 'clsmzqqoyrldt0bjinaomlzpavll8bsj2wtwsnpkeq8othtuvm', '2020-08-17 19:27:50', '2020-08-17 19:27:50', NULL),
(38, 'perae0gasuwbyxpc9fhag2xg1wi1whmq3cd7jlvc378oyehb9o', 'clsmzqqoyrldt0bjinaomlzpavll8bsj2wtwsnpkeq8othtuvm', '2020-08-17 19:29:39', '2020-08-17 19:29:39', NULL),
(39, 'perdshrsn5ewd8hlqtu0lldpin2gotfbxrmixlfjjv3ndlzyir', 'clsmzqqoyrldt0bjinaomlzpavll8bsj2wtwsnpkeq8othtuvm', '2020-08-17 19:29:39', '2020-08-17 19:29:39', NULL),
(40, 'perad4toxiyt1uue7ocbwetnnxohxc0cecbzoeirgrlfumdxor', 'clsmzqqoyrldt0bjinaomlzpavll8bsj2wtwsnpkeq8othtuvm', '2020-08-17 19:44:59', '2020-08-17 19:44:59', NULL),
(41, 'per4iumevk9tdnve2royyrogyzyrmzzsxhkylupl48dsireoir', 'clsh4yhnfrosrbsnmxl9enmxfty04emhvpzlvdajzs4uyct2bj', '2020-08-29 16:49:22', '2020-08-29 16:49:22', NULL),
(42, 'pergmt6ew6ktwh9ryzyk4ejjxdexvnj0hxzd6tmhcfynwncrqx', 'clsh4yhnfrosrbsnmxl9enmxfty04emhvpzlvdajzs4uyct2bj', '2020-09-03 14:21:58', '2020-09-03 14:21:58', NULL),
(43, 'perszeqqlxotzkdol19fzi6myhphahopgyjly1joyuwui8pp5w', 'clsh4yhnfrosrbsnmxl9enmxfty04emhvpzlvdajzs4uyct2bj', '2020-09-03 14:21:58', '2020-09-03 14:21:58', NULL),
(44, 'permxuwbaysnrkdpfqtequ03sosoh372lboswcltcehivij1at', 'clsh4yhnfrosrbsnmxl9enmxfty04emhvpzlvdajzs4uyct2bj', '2020-09-03 14:21:58', '2020-09-03 14:21:58', NULL),
(56, 'pergrbey5eqwllvyaslnesrwle69k1fqenofn22ka9fznysdm1', 'clsmzqqoyrldt0bjinaomlzpavll8bsj2wtwsnpkeq8othtuvm', '2020-09-18 12:46:26', '2020-09-18 12:46:26', NULL),
(57, 'perumewwbfhbbma1v8yrjargw3colnzqjnaahi4tkh5dtyefwr', 'clsmzqqoyrldt0bjinaomlzpavll8bsj2wtwsnpkeq8othtuvm', '2020-09-18 12:46:27', '2020-09-18 12:46:27', NULL),
(58, 'perstoeoi3adllmiityvawggk6dvuzrizsv8jh9i2zmkewezev', 'clsmzqqoyrldt0bjinaomlzpavll8bsj2wtwsnpkeq8othtuvm', '2020-09-18 12:46:27', '2020-09-18 12:46:27', NULL),
(62, 'pergmt6ew6ktwh9ryzyk4ejjxdexvnj0hxzd6tmhcfynwncrqx', 'clshh5jnrpmsxcl2pdzjkncqdxocsobqaiw18wruhmeovjjtgo', '2020-10-16 20:27:33', '2020-10-16 20:27:33', NULL),
(63, 'perszeqqlxotzkdol19fzi6myhphahopgyjly1joyuwui8pp5w', 'clshh5jnrpmsxcl2pdzjkncqdxocsobqaiw18wruhmeovjjtgo', '2020-10-16 20:27:33', '2020-10-16 20:27:33', NULL),
(64, 'pergrbey5eqwllvyaslnesrwle69k1fqenofn22ka9fznysdm1', 'clshh5jnrpmsxcl2pdzjkncqdxocsobqaiw18wruhmeovjjtgo', '2020-10-16 20:27:34', '2020-10-16 20:27:34', NULL),
(65, 'perkt3q4cts49bcef7vfwfcpvhzb5aehp8iehchcblhuetcihs', 'clshh5jnrpmsxcl2pdzjkncqdxocsobqaiw18wruhmeovjjtgo', '2020-10-16 20:27:34', '2020-10-16 20:27:34', NULL),
(66, 'perstoeoi3adllmiityvawggk6dvuzrizsv8jh9i2zmkewezev', 'clshh5jnrpmsxcl2pdzjkncqdxocsobqaiw18wruhmeovjjtgo', '2020-10-16 20:27:34', '2020-10-16 20:27:34', NULL),
(67, 'perbxjpmbc8ggmjjreihsb4ykvm32eemg44vmpayyjzj1nfxeg', 'clsixzypmetdxynwwq9uqpczo3cmhqwjdaxqjh4kovnpcel0cn', '2020-10-19 18:37:14', '2020-10-19 18:37:14', NULL),
(68, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'clsixzypmetdxynwwq9uqpczo3cmhqwjdaxqjh4kovnpcel0cn', '2020-10-19 18:37:14', '2020-10-19 18:37:14', NULL),
(69, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'clsixzypmetdxynwwq9uqpczo3cmhqwjdaxqjh4kovnpcel0cn', '2020-10-19 18:37:14', '2020-10-19 18:37:14', NULL),
(70, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'clsixzypmetdxynwwq9uqpczo3cmhqwjdaxqjh4kovnpcel0cn', '2020-10-19 18:37:14', '2020-10-19 18:37:14', NULL),
(71, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'clsixzypmetdxynwwq9uqpczo3cmhqwjdaxqjh4kovnpcel0cn', '2020-10-19 18:37:15', '2020-10-19 18:37:15', NULL),
(72, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'clsixzypmetdxynwwq9uqpczo3cmhqwjdaxqjh4kovnpcel0cn', '2020-10-19 18:37:15', '2020-10-19 18:37:15', NULL),
(73, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'clsixzypmetdxynwwq9uqpczo3cmhqwjdaxqjh4kovnpcel0cn', '2020-10-19 18:37:16', '2020-10-19 18:37:16', NULL),
(74, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'clsixzypmetdxynwwq9uqpczo3cmhqwjdaxqjh4kovnpcel0cn', '2020-10-19 18:37:16', '2020-10-19 18:37:16', NULL),
(75, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'clsixzypmetdxynwwq9uqpczo3cmhqwjdaxqjh4kovnpcel0cn', '2020-10-19 18:37:16', '2020-10-19 18:37:16', NULL),
(76, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', 'clsixzypmetdxynwwq9uqpczo3cmhqwjdaxqjh4kovnpcel0cn', '2020-10-19 18:37:16', '2020-10-19 18:37:16', NULL),
(77, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', 'clsixzypmetdxynwwq9uqpczo3cmhqwjdaxqjh4kovnpcel0cn', '2020-10-19 18:37:16', '2020-10-19 18:37:16', NULL),
(78, 'perg9rp46juqgkdpgshpujx5das61d74mm6yrya6jrwxh5tpqy', 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', '2020-10-27 20:12:31', '2020-10-27 20:12:31', NULL),
(79, 'perzd47x9sdine3wuuuez92ki1lbh8z9sej7nkxl9iy9yb42ry', 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', '2020-10-27 20:12:31', '2020-10-27 20:12:31', NULL),
(80, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'clsyvtfgyytbwjmbtqjlkktpvevda9m65xzwtjivl2djzt2g38', '2020-10-28 00:28:00', '2020-10-28 00:28:00', NULL),
(81, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'clsyvtfgyytbwjmbtqjlkktpvevda9m65xzwtjivl2djzt2g38', '2020-10-28 00:28:00', '2020-10-28 00:28:00', NULL),
(82, 'perwru0avsqkhwsjdekhptqtybblzyryglawm46bg8vyiosdcr', 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', '2020-10-28 14:54:13', '2020-10-28 14:54:13', NULL),
(83, 'perrztidsfedzyavzys46kgk4qclxlvwsf4sen9mwn9dun9ega', 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', '2020-10-28 14:54:13', '2020-10-28 14:54:13', NULL),
(84, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', '2020-10-28 14:56:39', '2020-10-28 14:56:39', NULL),
(85, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', '2020-10-28 14:56:39', '2020-10-28 14:56:39', NULL),
(88, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', '2020-10-28 15:16:47', '2020-10-28 15:16:47', NULL),
(89, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', '2020-10-28 15:16:47', '2020-10-28 15:16:47', NULL),
(90, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', '2020-10-28 15:20:39', '2020-10-28 15:20:39', NULL),
(91, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', '2020-10-28 15:20:39', '2020-10-28 15:20:39', NULL),
(92, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', '2020-10-28 15:27:09', '2020-10-28 15:27:09', NULL),
(93, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', '2020-10-28 15:27:09', '2020-10-28 15:27:09', NULL),
(94, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 15:27:38', '2020-10-28 15:27:38', NULL),
(95, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 15:27:38', '2020-10-28 15:27:38', NULL),
(96, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 15:27:38', '2020-10-28 15:27:38', NULL),
(97, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 15:27:38', '2020-10-28 15:27:38', NULL),
(98, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 15:27:38', '2020-10-28 15:27:38', NULL),
(99, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 15:27:38', '2020-10-28 15:27:38', NULL),
(102, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', '2020-10-28 15:32:51', '2020-10-28 15:32:51', NULL),
(103, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', '2020-10-28 15:32:51', '2020-10-28 15:32:51', NULL),
(104, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', '2020-10-28 15:37:35', '2020-10-28 15:37:35', NULL),
(105, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', '2020-10-28 15:37:35', '2020-10-28 15:37:35', NULL),
(106, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', '2020-10-28 15:39:43', '2020-10-28 15:39:43', NULL),
(107, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', '2020-10-28 15:39:43', '2020-10-28 15:39:43', NULL),
(108, 'perguln9rfwptrihli5ykomxfgfvlwszsmhbmzxntgke9sxbwv', 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', '2020-10-28 15:39:43', '2020-10-28 15:39:43', NULL),
(109, 'peraieoiywxwnzpgo5muwfvspy6kgeprinkdpyk13rovvilhxa', 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', '2020-10-28 15:39:43', '2020-10-28 15:39:43', NULL),
(110, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 15:57:15', '2020-10-28 15:57:15', NULL),
(111, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 15:57:15', '2020-10-28 15:57:15', NULL),
(112, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 15:57:15', '2020-10-28 15:57:15', NULL),
(113, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 15:57:15', '2020-10-28 15:57:15', NULL),
(114, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 16:01:22', '2020-10-28 16:01:22', NULL),
(115, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 16:01:22', '2020-10-28 16:01:22', NULL),
(116, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 16:01:22', '2020-10-28 16:01:22', NULL),
(117, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 16:01:22', '2020-10-28 16:01:22', NULL),
(118, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 16:01:22', '2020-10-28 16:01:22', NULL),
(119, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 16:01:22', '2020-10-28 16:01:22', NULL),
(120, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 16:14:52', '2020-10-28 16:14:52', NULL),
(121, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 16:14:52', '2020-10-28 16:14:52', NULL),
(122, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 16:14:52', '2020-10-28 16:14:52', NULL),
(123, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 16:14:52', '2020-10-28 16:14:52', NULL),
(124, 'perwru0avsqkhwsjdekhptqtybblzyryglawm46bg8vyiosdcr', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 16:20:29', '2020-10-28 16:20:29', NULL),
(125, 'perrztidsfedzyavzys46kgk4qclxlvwsf4sen9mwn9dun9ega', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 16:20:29', '2020-10-28 16:20:29', NULL),
(126, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 16:20:29', '2020-10-28 16:20:29', NULL),
(127, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 16:20:30', '2020-10-28 16:20:30', NULL),
(128, 'perg9rp46juqgkdpgshpujx5das61d74mm6yrya6jrwxh5tpqy', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 16:35:03', '2020-10-28 16:35:03', NULL),
(129, 'perzd47x9sdine3wuuuez92ki1lbh8z9sej7nkxl9iy9yb42ry', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 16:35:03', '2020-10-28 16:35:03', NULL),
(130, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', '2020-10-28 19:22:29', '2020-10-28 19:22:29', NULL),
(131, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', '2020-10-28 19:22:29', '2020-10-28 19:22:29', NULL),
(132, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', '2020-10-28 19:28:55', '2020-10-28 19:28:55', NULL),
(133, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', '2020-10-28 19:28:55', '2020-10-28 19:28:55', NULL),
(134, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-28 19:48:09', '2020-10-28 19:48:09', NULL),
(135, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-28 19:48:09', '2020-10-28 19:48:09', NULL),
(136, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-28 21:38:07', '2020-10-28 21:38:07', NULL),
(137, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-28 21:38:07', '2020-10-28 21:38:07', NULL),
(138, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-28 21:38:07', '2020-10-28 21:38:07', NULL),
(139, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-28 21:38:07', '2020-10-28 21:38:07', NULL),
(140, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-28 21:38:07', '2020-10-28 21:38:07', NULL),
(141, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-28 21:38:07', '2020-10-28 21:38:07', NULL),
(142, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-28 21:39:37', '2020-10-28 21:39:37', NULL),
(143, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-28 21:39:38', '2020-10-28 21:39:38', NULL),
(144, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-28 21:39:38', '2020-10-28 21:39:38', NULL),
(145, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-28 21:39:38', '2020-10-28 21:39:38', NULL),
(146, 'perguln9rfwptrihli5ykomxfgfvlwszsmhbmzxntgke9sxbwv', 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', '2020-10-28 21:51:07', '2020-10-28 21:51:07', NULL),
(147, 'peraieoiywxwnzpgo5muwfvspy6kgeprinkdpyk13rovvilhxa', 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', '2020-10-28 21:51:07', '2020-10-28 21:51:07', NULL),
(148, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-28 21:52:12', '2020-10-28 21:52:12', NULL),
(149, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-28 21:52:12', '2020-10-28 21:52:12', NULL),
(150, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', '2020-10-28 21:53:40', '2020-10-28 21:53:40', NULL),
(151, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', '2020-10-28 21:53:40', '2020-10-28 21:53:40', NULL),
(152, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-28 21:57:13', '2020-10-28 21:57:13', NULL),
(153, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-28 21:57:13', '2020-10-28 21:57:13', NULL),
(154, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', '2020-10-28 21:58:32', '2020-10-28 21:58:32', NULL),
(155, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', '2020-10-28 21:58:32', '2020-10-28 21:58:32', NULL),
(156, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-28 22:02:05', '2020-10-28 22:02:05', NULL),
(157, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-28 22:02:05', '2020-10-28 22:02:05', NULL),
(158, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-28 22:02:05', '2020-10-28 22:02:05', NULL),
(159, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-28 22:02:05', '2020-10-28 22:02:05', NULL),
(160, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-28 22:03:33', '2020-10-28 22:03:33', NULL),
(161, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-28 22:03:33', '2020-10-28 22:03:33', NULL),
(162, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-28 22:03:33', '2020-10-28 22:03:33', NULL),
(163, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-28 22:03:33', '2020-10-28 22:03:33', NULL),
(164, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-28 22:03:33', '2020-10-28 22:03:33', NULL),
(165, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-28 22:03:33', '2020-10-28 22:03:33', NULL),
(166, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', '2020-10-28 22:08:14', '2020-10-28 22:08:14', NULL),
(167, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', '2020-10-28 22:08:14', '2020-10-28 22:08:14', NULL),
(168, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', '2020-10-28 22:08:23', '2020-10-28 22:08:23', NULL),
(169, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', '2020-10-28 22:09:32', '2020-10-28 22:09:32', NULL),
(170, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', '2020-10-28 22:09:32', '2020-10-28 22:09:32', NULL),
(172, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', '2020-10-28 22:13:33', '2020-10-28 22:13:33', NULL),
(173, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', '2020-10-28 22:13:34', '2020-10-28 22:13:34', NULL),
(174, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', '2020-10-28 22:13:34', '2020-10-28 22:13:34', NULL),
(175, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', '2020-10-28 22:13:34', '2020-10-28 22:13:34', NULL),
(176, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-28 22:14:39', '2020-10-28 22:14:39', NULL),
(177, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-28 22:14:39', '2020-10-28 22:14:39', NULL),
(178, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-28 22:14:39', '2020-10-28 22:14:39', NULL),
(179, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-28 22:14:39', '2020-10-28 22:14:39', NULL),
(180, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-28 22:16:17', '2020-10-28 22:16:17', NULL),
(181, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-28 22:16:17', '2020-10-28 22:16:17', NULL),
(182, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-28 22:16:17', '2020-10-28 22:16:17', NULL),
(183, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-28 22:16:17', '2020-10-28 22:16:17', NULL),
(184, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-28 22:16:17', '2020-10-28 22:16:17', NULL),
(185, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-28 22:16:17', '2020-10-28 22:16:17', NULL),
(186, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', '2020-10-28 22:23:47', '2020-10-28 22:23:47', NULL),
(187, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-28 22:24:40', '2020-10-28 22:24:40', NULL),
(188, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-28 22:24:40', '2020-10-28 22:24:40', NULL),
(189, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-28 22:24:40', '2020-10-28 22:24:40', NULL),
(190, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-28 22:24:40', '2020-10-28 22:24:40', NULL),
(191, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', '2020-10-28 22:25:43', '2020-10-28 22:25:43', NULL),
(192, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', '2020-10-28 22:25:43', '2020-10-28 22:25:43', NULL),
(193, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', '2020-10-28 22:26:33', '2020-10-28 22:26:33', NULL),
(194, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', '2020-10-28 22:26:33', '2020-10-28 22:26:33', NULL),
(195, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', '2020-10-28 22:26:33', '2020-10-28 22:26:33', NULL),
(196, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', '2020-10-28 22:26:33', '2020-10-28 22:26:33', NULL),
(197, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-28 22:27:44', '2020-10-28 22:27:44', NULL),
(198, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-28 22:27:44', '2020-10-28 22:27:44', NULL),
(199, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', '2020-10-28 22:29:32', '2020-10-28 22:29:32', NULL),
(200, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', '2020-10-28 22:29:32', '2020-10-28 22:29:32', NULL),
(201, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'clsztzi3v6ee1fdkmrqh5bvuahrscps6u5aijb2crctvqkwvoq', '2020-10-28 22:31:12', '2020-10-28 22:31:12', NULL),
(202, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'clsztzi3v6ee1fdkmrqh5bvuahrscps6u5aijb2crctvqkwvoq', '2020-10-28 22:31:12', '2020-10-28 22:31:12', NULL),
(203, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-28 22:31:47', '2020-10-28 22:31:47', NULL),
(204, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-28 22:31:47', '2020-10-28 22:31:47', NULL),
(205, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-28 22:31:47', '2020-10-28 22:31:47', NULL),
(206, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-28 22:31:47', '2020-10-28 22:31:47', NULL),
(207, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'clsztzi3v6ee1fdkmrqh5bvuahrscps6u5aijb2crctvqkwvoq', '2020-10-28 22:32:43', '2020-10-28 22:32:43', NULL),
(208, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'clsztzi3v6ee1fdkmrqh5bvuahrscps6u5aijb2crctvqkwvoq', '2020-10-28 22:32:43', '2020-10-28 22:32:43', NULL),
(209, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', '2020-10-28 22:33:21', '2020-10-28 22:33:21', NULL),
(210, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', '2020-10-28 22:33:21', '2020-10-28 22:33:21', NULL),
(211, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'clsstwk81eoanw1lgaul7eiqoqq4rdqvgw4jremrmarjyztlxf', '2020-10-28 22:36:45', '2020-10-28 22:36:45', NULL),
(212, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'clsstwk81eoanw1lgaul7eiqoqq4rdqvgw4jremrmarjyztlxf', '2020-10-28 22:36:45', '2020-10-28 22:36:45', NULL),
(213, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'clsstwk81eoanw1lgaul7eiqoqq4rdqvgw4jremrmarjyztlxf', '2020-10-28 22:37:46', '2020-10-28 22:37:46', NULL),
(214, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'clsstwk81eoanw1lgaul7eiqoqq4rdqvgw4jremrmarjyztlxf', '2020-10-28 22:37:46', '2020-10-28 22:37:46', NULL),
(215, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', '2020-10-28 22:37:56', '2020-10-28 22:37:56', NULL),
(216, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', '2020-10-28 22:37:57', '2020-10-28 22:37:57', NULL),
(217, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', '2020-10-28 22:37:57', '2020-10-28 22:37:57', NULL),
(218, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', '2020-10-28 22:37:57', '2020-10-28 22:37:57', NULL),
(219, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', '2020-10-28 22:37:57', '2020-10-28 22:37:57', NULL),
(220, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', '2020-10-28 22:37:57', '2020-10-28 22:37:57', NULL),
(221, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'clsztzi3v6ee1fdkmrqh5bvuahrscps6u5aijb2crctvqkwvoq', '2020-10-28 22:40:10', '2020-10-28 22:40:10', NULL),
(222, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'clsztzi3v6ee1fdkmrqh5bvuahrscps6u5aijb2crctvqkwvoq', '2020-10-28 22:40:10', '2020-10-28 22:40:10', NULL),
(223, 'perguln9rfwptrihli5ykomxfgfvlwszsmhbmzxntgke9sxbwv', 'clsstwk81eoanw1lgaul7eiqoqq4rdqvgw4jremrmarjyztlxf', '2020-10-28 22:41:18', '2020-10-28 22:41:18', NULL),
(224, 'peraieoiywxwnzpgo5muwfvspy6kgeprinkdpyk13rovvilhxa', 'clsstwk81eoanw1lgaul7eiqoqq4rdqvgw4jremrmarjyztlxf', '2020-10-28 22:41:18', '2020-10-28 22:41:18', NULL),
(225, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'clsstwk81eoanw1lgaul7eiqoqq4rdqvgw4jremrmarjyztlxf', '2020-10-28 22:42:01', '2020-10-28 22:42:01', NULL),
(226, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'clsstwk81eoanw1lgaul7eiqoqq4rdqvgw4jremrmarjyztlxf', '2020-10-28 22:42:01', '2020-10-28 22:42:01', NULL),
(227, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'clsztzi3v6ee1fdkmrqh5bvuahrscps6u5aijb2crctvqkwvoq', '2020-10-28 22:43:00', '2020-10-28 22:43:00', NULL),
(228, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'clsztzi3v6ee1fdkmrqh5bvuahrscps6u5aijb2crctvqkwvoq', '2020-10-28 22:43:00', '2020-10-28 22:43:00', NULL),
(229, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-28 22:49:25', '2020-10-28 22:49:25', NULL),
(230, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-28 22:49:25', '2020-10-28 22:49:25', NULL),
(231, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-28 22:49:25', '2020-10-28 22:49:25', NULL),
(232, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-28 22:49:25', '2020-10-28 22:49:25', NULL),
(233, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-28 22:53:54', '2020-10-28 22:53:54', NULL),
(234, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-28 22:53:54', '2020-10-28 22:53:54', NULL),
(235, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-28 22:53:55', '2020-10-28 22:53:55', NULL),
(236, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-28 22:53:55', '2020-10-28 22:53:55', NULL),
(237, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-28 22:55:17', '2020-10-28 22:55:17', NULL),
(238, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-28 22:55:17', '2020-10-28 22:55:17', NULL),
(239, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-28 22:55:17', '2020-10-28 22:55:17', NULL),
(240, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-28 22:55:17', '2020-10-28 22:55:17', NULL),
(241, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', '2020-10-28 22:56:14', '2020-10-28 22:56:14', NULL),
(242, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', '2020-10-28 22:56:14', '2020-10-28 22:56:14', NULL),
(243, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', '2020-10-28 22:56:14', '2020-10-28 22:56:14', NULL),
(244, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', '2020-10-28 22:56:14', '2020-10-28 22:56:14', NULL),
(245, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'clsupb2kwfjpxdam5d49p8m8zxm15diztcojletkk76z7kv7ue', '2020-10-28 22:59:45', '2020-10-28 22:59:45', NULL),
(246, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'clsupb2kwfjpxdam5d49p8m8zxm15diztcojletkk76z7kv7ue', '2020-10-28 22:59:45', '2020-10-28 22:59:45', NULL),
(247, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'clsupb2kwfjpxdam5d49p8m8zxm15diztcojletkk76z7kv7ue', '2020-10-28 23:01:35', '2020-10-28 23:01:35', NULL),
(248, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'clsupb2kwfjpxdam5d49p8m8zxm15diztcojletkk76z7kv7ue', '2020-10-28 23:01:36', '2020-10-28 23:01:36', NULL),
(249, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'clsupb2kwfjpxdam5d49p8m8zxm15diztcojletkk76z7kv7ue', '2020-10-28 23:03:28', '2020-10-28 23:03:28', NULL),
(250, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', 'clsupb2kwfjpxdam5d49p8m8zxm15diztcojletkk76z7kv7ue', '2020-10-28 23:03:28', '2020-10-28 23:03:28', NULL),
(251, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'clsupb2kwfjpxdam5d49p8m8zxm15diztcojletkk76z7kv7ue', '2020-10-28 23:04:53', '2020-10-28 23:04:53', NULL),
(252, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'clsupb2kwfjpxdam5d49p8m8zxm15diztcojletkk76z7kv7ue', '2020-10-28 23:04:53', '2020-10-28 23:04:53', NULL),
(253, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'clsupb2kwfjpxdam5d49p8m8zxm15diztcojletkk76z7kv7ue', '2020-10-28 23:06:08', '2020-10-28 23:06:08', NULL),
(254, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'clsupb2kwfjpxdam5d49p8m8zxm15diztcojletkk76z7kv7ue', '2020-10-28 23:06:08', '2020-10-28 23:06:08', NULL),
(255, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'clsupb2kwfjpxdam5d49p8m8zxm15diztcojletkk76z7kv7ue', '2020-10-28 23:11:16', '2020-10-28 23:11:16', NULL),
(256, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'clsupb2kwfjpxdam5d49p8m8zxm15diztcojletkk76z7kv7ue', '2020-10-28 23:11:16', '2020-10-28 23:11:16', NULL),
(257, 'perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-28 23:13:57', '2020-10-28 23:13:57', NULL),
(258, 'perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-28 23:13:57', '2020-10-28 23:13:57', NULL),
(259, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-28 23:13:58', '2020-10-28 23:13:58', NULL),
(260, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-28 23:13:58', '2020-10-28 23:13:58', NULL),
(261, 'perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-28 23:18:23', '2020-10-28 23:18:23', NULL),
(262, 'perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-28 23:18:23', '2020-10-28 23:18:23', NULL),
(263, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-28 23:18:23', '2020-10-28 23:18:23', NULL),
(264, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-28 23:18:23', '2020-10-28 23:18:23', NULL),
(265, 'perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', '2020-10-28 23:19:24', '2020-10-28 23:19:24', NULL),
(266, 'perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', '2020-10-28 23:19:25', '2020-10-28 23:19:25', NULL),
(267, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', '2020-10-28 23:19:25', '2020-10-28 23:19:25', NULL),
(268, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', '2020-10-28 23:19:25', '2020-10-28 23:19:25', NULL),
(269, 'perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-28 23:28:29', '2020-10-28 23:28:29', NULL),
(270, 'perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-28 23:28:29', '2020-10-28 23:28:29', NULL),
(271, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-28 23:28:30', '2020-10-28 23:28:30', NULL),
(272, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-28 23:28:30', '2020-10-28 23:28:30', NULL),
(273, 'perwru0avsqkhwsjdekhptqtybblzyryglawm46bg8vyiosdcr', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-28 23:34:50', '2020-10-28 23:34:50', NULL),
(274, 'perrztidsfedzyavzys46kgk4qclxlvwsf4sen9mwn9dun9ega', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-28 23:34:50', '2020-10-28 23:34:50', NULL),
(275, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 23:37:35', '2020-10-28 23:37:35', NULL),
(276, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 23:37:35', '2020-10-28 23:37:35', NULL),
(277, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 23:39:57', '2020-10-28 23:39:57', NULL),
(278, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', '2020-10-28 23:39:57', '2020-10-28 23:39:57', NULL),
(279, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'clsiixhlcubo8iyqy8mnsaybpnnny61m46sxtxfc8fpc0bygys', '2020-10-29 13:25:21', '2020-10-29 13:25:21', NULL),
(280, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'clsiixhlcubo8iyqy8mnsaybpnnny61m46sxtxfc8fpc0bygys', '2020-10-29 13:25:21', '2020-10-29 13:25:21', NULL),
(281, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'clsiixhlcubo8iyqy8mnsaybpnnny61m46sxtxfc8fpc0bygys', '2020-10-29 13:25:22', '2020-10-29 13:25:22', NULL),
(282, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'clsiixhlcubo8iyqy8mnsaybpnnny61m46sxtxfc8fpc0bygys', '2020-10-29 13:25:22', '2020-10-29 13:25:22', NULL),
(283, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'clsiixhlcubo8iyqy8mnsaybpnnny61m46sxtxfc8fpc0bygys', '2020-10-29 13:26:11', '2020-10-29 13:26:11', NULL),
(284, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'clsiixhlcubo8iyqy8mnsaybpnnny61m46sxtxfc8fpc0bygys', '2020-10-29 13:26:11', '2020-10-29 13:26:11', NULL),
(285, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'clsiixhlcubo8iyqy8mnsaybpnnny61m46sxtxfc8fpc0bygys', '2020-10-29 13:26:11', '2020-10-29 13:26:11', NULL),
(286, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'clsiixhlcubo8iyqy8mnsaybpnnny61m46sxtxfc8fpc0bygys', '2020-10-29 13:26:11', '2020-10-29 13:26:11', NULL),
(287, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 'clsiixhlcubo8iyqy8mnsaybpnnny61m46sxtxfc8fpc0bygys', '2020-10-29 13:26:11', '2020-10-29 13:26:11', NULL),
(288, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'clsiixhlcubo8iyqy8mnsaybpnnny61m46sxtxfc8fpc0bygys', '2020-10-29 13:26:11', '2020-10-29 13:26:11', NULL),
(289, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'clsiixhlcubo8iyqy8mnsaybpnnny61m46sxtxfc8fpc0bygys', '2020-10-29 13:30:17', '2020-10-29 13:30:17', NULL),
(290, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'clsiixhlcubo8iyqy8mnsaybpnnny61m46sxtxfc8fpc0bygys', '2020-10-29 13:30:17', '2020-10-29 13:30:17', NULL),
(291, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'clsiixhlcubo8iyqy8mnsaybpnnny61m46sxtxfc8fpc0bygys', '2020-10-29 13:30:17', '2020-10-29 13:30:17', NULL),
(292, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'clsiixhlcubo8iyqy8mnsaybpnnny61m46sxtxfc8fpc0bygys', '2020-10-29 13:30:17', '2020-10-29 13:30:17', NULL),
(293, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-29 13:34:38', '2020-10-29 13:34:38', NULL),
(294, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-29 13:34:38', '2020-10-29 13:34:38', NULL),
(295, 'perg9rp46juqgkdpgshpujx5das61d74mm6yrya6jrwxh5tpqy', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-29 13:35:59', '2020-10-29 13:35:59', NULL),
(296, 'perzd47x9sdine3wuuuez92ki1lbh8z9sej7nkxl9iy9yb42ry', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-29 13:35:59', '2020-10-29 13:35:59', NULL),
(297, 'perwru0avsqkhwsjdekhptqtybblzyryglawm46bg8vyiosdcr', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-29 13:45:30', '2020-10-29 13:45:30', NULL),
(298, 'perrztidsfedzyavzys46kgk4qclxlvwsf4sen9mwn9dun9ega', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-29 13:45:30', '2020-10-29 13:45:30', NULL),
(299, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-29 13:52:15', '2020-10-29 13:52:15', NULL),
(300, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-29 13:52:15', '2020-10-29 13:52:15', NULL),
(301, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-29 13:52:16', '2020-10-29 13:52:16', NULL),
(302, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-29 13:52:16', '2020-10-29 13:52:16', NULL),
(303, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-29 14:03:11', '2020-10-29 14:03:11', NULL),
(304, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', '2020-10-29 14:03:11', '2020-10-29 14:03:11', NULL),
(305, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-29 14:47:09', '2020-10-29 14:47:09', NULL),
(306, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-29 14:47:09', '2020-10-29 14:47:09', NULL),
(307, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-29 14:50:48', '2020-10-29 14:50:48', NULL),
(308, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-29 14:50:48', '2020-10-29 14:50:48', NULL),
(309, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-29 14:54:51', '2020-10-29 14:54:51', NULL),
(310, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', '2020-10-29 14:54:51', '2020-10-29 14:54:51', NULL),
(311, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-29 15:08:40', '2020-10-29 15:08:40', NULL),
(312, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-29 15:08:40', '2020-10-29 15:08:40', NULL),
(313, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-29 15:08:40', '2020-10-29 15:08:40', NULL),
(314, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-29 15:08:40', '2020-10-29 15:08:40', NULL),
(315, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-29 15:10:38', '2020-10-29 15:10:38', NULL),
(316, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', '2020-10-29 15:10:38', '2020-10-29 15:10:38', NULL),
(317, 'peraieoiywxwnzpgo5muwfvspy6kgeprinkdpyk13rovvilhxa', 'clsfvof1pllvpms4ywkyl2i1vfzju79zbzsjirmevyyd91rygs', '2020-10-29 16:49:35', '2020-10-29 16:49:35', NULL),
(318, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'clsfvof1pllvpms4ywkyl2i1vfzju79zbzsjirmevyyd91rygs', '2020-10-29 16:49:35', '2020-10-29 16:49:35', NULL),
(319, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'clsfvof1pllvpms4ywkyl2i1vfzju79zbzsjirmevyyd91rygs', '2020-10-29 16:49:35', '2020-10-29 16:49:35', NULL),
(320, 'perxmu1lji6h2kzmcpqdiq9swpoihhpy6p9fbsu2ceveejhcee', 'clsfvof1pllvpms4ywkyl2i1vfzju79zbzsjirmevyyd91rygs', '2020-10-29 16:49:35', '2020-10-29 16:49:35', NULL),
(321, 'perb3s07xkyxj30ivxtqmazrovthu9omqtc4opadr1s8418xgd', 'clsfvof1pllvpms4ywkyl2i1vfzju79zbzsjirmevyyd91rygs', '2020-10-29 16:49:35', '2020-10-29 16:49:35', NULL),
(322, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'clsfvof1pllvpms4ywkyl2i1vfzju79zbzsjirmevyyd91rygs', '2020-10-29 16:59:21', '2020-10-29 16:59:21', NULL),
(323, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', 'clsfvof1pllvpms4ywkyl2i1vfzju79zbzsjirmevyyd91rygs', '2020-10-29 16:59:21', '2020-10-29 16:59:21', NULL),
(324, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', 'clsfvof1pllvpms4ywkyl2i1vfzju79zbzsjirmevyyd91rygs', '2020-10-29 16:59:21', '2020-10-29 16:59:21', NULL),
(325, 'pertohzyl5chsyngidkp36bwrdw3dykh2h6r2qcadtxet90uyy', 'clsfvof1pllvpms4ywkyl2i1vfzju79zbzsjirmevyyd91rygs', '2020-10-29 16:59:21', '2020-10-29 16:59:21', NULL),
(326, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'clsyvtfgyytbwjmbtqjlkktpvevda9m65xzwtjivl2djzt2g38', '2020-10-29 17:22:01', '2020-10-29 17:22:01', NULL),
(327, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'clsyvtfgyytbwjmbtqjlkktpvevda9m65xzwtjivl2djzt2g38', '2020-10-29 17:22:01', '2020-10-29 17:22:01', NULL),
(328, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'clsyvtfgyytbwjmbtqjlkktpvevda9m65xzwtjivl2djzt2g38', '2020-10-29 17:27:40', '2020-10-29 17:27:40', NULL),
(329, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'clsyvtfgyytbwjmbtqjlkktpvevda9m65xzwtjivl2djzt2g38', '2020-10-29 17:27:40', '2020-10-29 17:27:40', NULL),
(330, 'perymq7kpd8jvoqtv6sevysv5cjferskob4gw4affbc5rwcq4j', 'clsfvof1pllvpms4ywkyl2i1vfzju79zbzsjirmevyyd91rygs', '2020-10-29 20:58:09', '2020-10-29 20:58:09', NULL);
INSERT INTO `period_class` (`id`, `period_id`, `class_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(331, 'peroaq0ukjtvznmgcboptwzseyvh9dc6jd6hk1kxlvnlvvajdp', 'clsfvof1pllvpms4ywkyl2i1vfzju79zbzsjirmevyyd91rygs', '2020-10-29 21:06:49', '2020-10-29 21:06:49', NULL),
(332, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'clsyvtfgyytbwjmbtqjlkktpvevda9m65xzwtjivl2djzt2g38', '2020-10-29 22:26:28', '2020-10-29 22:26:28', NULL),
(333, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'clsyvtfgyytbwjmbtqjlkktpvevda9m65xzwtjivl2djzt2g38', '2020-10-29 22:26:28', '2020-10-29 22:26:28', NULL),
(334, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', '2020-10-29 22:29:41', '2020-10-29 22:29:41', NULL),
(335, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', '2020-10-29 22:29:41', '2020-10-29 22:29:41', NULL),
(336, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'clsiixhlcubo8iyqy8mnsaybpnnny61m46sxtxfc8fpc0bygys', '2020-10-29 22:35:23', '2020-10-29 22:35:23', NULL),
(337, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'clsiixhlcubo8iyqy8mnsaybpnnny61m46sxtxfc8fpc0bygys', '2020-10-29 22:35:24', '2020-10-29 22:35:24', NULL),
(338, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'cls3qp0jkoe4jymw1jfdfgxgknbtavvsjwnts6ofhkls2tnmih', '2020-10-29 22:53:57', '2020-10-29 22:53:57', NULL),
(339, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'cls3qp0jkoe4jymw1jfdfgxgknbtavvsjwnts6ofhkls2tnmih', '2020-10-29 22:53:57', '2020-10-29 22:53:57', NULL),
(340, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'cls3qp0jkoe4jymw1jfdfgxgknbtavvsjwnts6ofhkls2tnmih', '2020-10-29 22:55:47', '2020-10-29 22:55:47', NULL),
(341, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'cls3qp0jkoe4jymw1jfdfgxgknbtavvsjwnts6ofhkls2tnmih', '2020-10-29 22:55:47', '2020-10-29 22:55:47', NULL),
(342, 'perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', 'clsyvtfgyytbwjmbtqjlkktpvevda9m65xzwtjivl2djzt2g38', '2020-10-29 22:59:46', '2020-10-29 22:59:46', NULL),
(343, 'perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', 'clsyvtfgyytbwjmbtqjlkktpvevda9m65xzwtjivl2djzt2g38', '2020-10-29 22:59:46', '2020-10-29 22:59:46', NULL),
(344, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'clsyvtfgyytbwjmbtqjlkktpvevda9m65xzwtjivl2djzt2g38', '2020-10-29 23:01:59', '2020-10-29 23:01:59', NULL),
(345, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'clsyvtfgyytbwjmbtqjlkktpvevda9m65xzwtjivl2djzt2g38', '2020-10-29 23:01:59', '2020-10-29 23:01:59', NULL),
(346, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'clsyvtfgyytbwjmbtqjlkktpvevda9m65xzwtjivl2djzt2g38', '2020-10-29 23:01:59', '2020-10-29 23:01:59', NULL),
(347, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'clsyvtfgyytbwjmbtqjlkktpvevda9m65xzwtjivl2djzt2g38', '2020-10-29 23:01:59', '2020-10-29 23:01:59', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `period_classrooms`
--

CREATE TABLE `period_classrooms` (
  `id` int(11) NOT NULL,
  `period_id` varchar(50) NOT NULL,
  `classroom_id` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `period_classrooms`
--

INSERT INTO `period_classrooms` (`id`, `period_id`, `classroom_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'per5lwazcsaa4ii8pt4smoeklawxpn0e1w5ailaa6rczkv0dz7', 'clr5mc4ft6zzh4ixd6wzdz3dxvzrbatbnnip9bzt9qhb268khp', '2020-08-15 22:58:46', '2020-08-15 22:58:46', NULL),
(6, 'per04dnyqr37duvhmayahknvzktefvtozvmgr7wynw9qbjc8of', 'clr5mc4ft6zzh4ixd6wzdz3dxvzrbatbnnip9bzt9qhb268khp', '2020-08-15 22:58:48', '2020-08-15 22:58:48', NULL),
(8, 'perkt3q4cts49bcef7vfwfcpvhzb5aehp8iehchcblhuetcihs', 'clr5mc4ft6zzh4ixd6wzdz3dxvzrbatbnnip9bzt9qhb268khp', '2020-08-15 22:58:49', '2020-08-15 22:58:49', NULL),
(9, 'peru0iwj1wbmnqxuhz6ndc7asragtkkrenppz7wsdo0wz8webe', 'clr5mc4ft6zzh4ixd6wzdz3dxvzrbatbnnip9bzt9qhb268khp', '2020-08-15 22:58:49', '2020-08-15 22:58:49', NULL),
(10, 'percqvce9vcsoeujmew1c2wrl55uqr3gn847tn6r48g5ettygi', 'clr5mc4ft6zzh4ixd6wzdz3dxvzrbatbnnip9bzt9qhb268khp', '2020-08-15 22:58:49', '2020-08-15 22:58:49', NULL),
(11, 'perkbpyc56nzx1efivewfamw44awbxz8ftcg8yj0wral5eblka', 'clr5mc4ft6zzh4ixd6wzdz3dxvzrbatbnnip9bzt9qhb268khp', '2020-08-15 22:58:50', '2020-08-15 22:58:50', NULL),
(12, 'per5gkvtt1yysgwpijvvtad2zazd7xazw3esdane7y3u3vxr5m', 'clr5mc4ft6zzh4ixd6wzdz3dxvzrbatbnnip9bzt9qhb268khp', '2020-08-15 22:58:50', '2020-08-15 22:58:50', NULL),
(17, 'perelhrhmt4oxkoyhjnh41nhvobli4bsbmbyhey4jzg2wiqt5d', 'clr5mc4ft6zzh4ixd6wzdz3dxvzrbatbnnip9bzt9qhb268khp', '2020-08-15 23:11:17', '2020-08-15 23:11:17', NULL),
(18, 'permxuwbaysnrkdpfqtequ03sosoh372lboswcltcehivij1at', 'clr5mc4ft6zzh4ixd6wzdz3dxvzrbatbnnip9bzt9qhb268khp', '2020-08-15 23:45:44', '2020-08-15 23:45:44', NULL),
(19, 'pergqyed91lh5bqyli0qjoguzc4ftnnbk2u25rcclkihl4m6gz', 'clr5mc4ft6zzh4ixd6wzdz3dxvzrbatbnnip9bzt9qhb268khp', '2020-08-16 04:55:27', '2020-08-16 04:55:27', NULL),
(20, 'persqlke1coahwzk84f64feuiacj3qh6zau8vk3lsbuklmdwrn', 'clr5mc4ft6zzh4ixd6wzdz3dxvzrbatbnnip9bzt9qhb268khp', '2020-08-16 04:55:28', '2020-08-16 04:55:28', NULL),
(21, 'per4ul4ot18wvbpzfibkqoqtdvthlngyztuom3k0i0npzmgrya', 'clr5mc4ft6zzh4ixd6wzdz3dxvzrbatbnnip9bzt9qhb268khp', '2020-08-16 04:55:28', '2020-08-16 04:55:28', NULL),
(22, 'perrjlgen8ljlsb1hlokcr6xyueuk2pu6hrmvogzb6thjjwr6d', 'clr5mc4ft6zzh4ixd6wzdz3dxvzrbatbnnip9bzt9qhb268khp', '2020-08-16 04:55:29', '2020-08-16 04:55:29', NULL),
(23, 'perszeqqlxotzkdol19fzi6myhphahopgyjly1joyuwui8pp5w', 'clro7xusj5x26rusl4grht99cbemnm2tlit168wfc8vnrp9nzi', '2020-08-16 13:37:40', '2020-08-16 13:37:40', NULL),
(24, 'perstoeoi3adllmiityvawggk6dvuzrizsv8jh9i2zmkewezev', 'clro7xusj5x26rusl4grht99cbemnm2tlit168wfc8vnrp9nzi', '2020-08-16 13:37:41', '2020-08-16 13:37:41', NULL),
(25, 'perjriv6y5pbyga8s4o5a4vvnyfu7eqrwpuczgespdh8lmaah5', 'clro7xusj5x26rusl4grht99cbemnm2tlit168wfc8vnrp9nzi', '2020-08-16 13:37:41', '2020-08-16 13:37:41', NULL),
(26, 'per5gkvtt1yysgwpijvvtad2zazd7xazw3esdane7y3u3vxr5m', 'clro7xusj5x26rusl4grht99cbemnm2tlit168wfc8vnrp9nzi', '2020-08-16 13:37:42', '2020-08-16 13:37:42', NULL),
(27, 'perc1kftnzwtwlnwmvkwi67isgurlbaabcnrf79j7cyokqagwp', 'clro7xusj5x26rusl4grht99cbemnm2tlit168wfc8vnrp9nzi', '2020-08-16 13:37:43', '2020-08-16 13:37:43', NULL),
(28, 'perkbpyc56nzx1efivewfamw44awbxz8ftcg8yj0wral5eblka', 'clro7xusj5x26rusl4grht99cbemnm2tlit168wfc8vnrp9nzi', '2020-08-16 13:37:44', '2020-08-16 13:37:44', NULL),
(29, 'perzte0nthz9cfqqhriwmhgsf3qwwk4ndkoxskqlx7gl8vbofj', 'clrfuc1nxkgezroooo4rjahlvymwa1ylt5cmun3gxgubzb7c2k', '2020-08-16 13:44:06', '2020-08-16 13:44:06', NULL),
(30, 'persu0zpmgrwc3qojertzh0pkfqfgd7mgbkcpexenhoqpqptuv', 'clrfuc1nxkgezroooo4rjahlvymwa1ylt5cmun3gxgubzb7c2k', '2020-08-16 13:44:07', '2020-08-16 13:44:07', NULL),
(31, 'perxft9lice16ed18mec2hxsxyzowy80bnvdal9u5jdkzgknnk', 'clrfuc1nxkgezroooo4rjahlvymwa1ylt5cmun3gxgubzb7c2k', '2020-08-16 13:44:07', '2020-08-16 13:44:07', NULL),
(32, 'per04dnyqr37duvhmayahknvzktefvtozvmgr7wynw9qbjc8of', 'clrfuc1nxkgezroooo4rjahlvymwa1ylt5cmun3gxgubzb7c2k', '2020-08-16 13:44:07', '2020-08-16 13:44:07', NULL),
(33, 'pergmt6ew6ktwh9ryzyk4ejjxdexvnj0hxzd6tmhcfynwncrqx', 'clro7xusj5x26rusl4grht99cbemnm2tlit168wfc8vnrp9nzi', '2020-08-17 19:26:17', '2020-08-17 19:26:17', NULL),
(34, 'perkt3q4cts49bcef7vfwfcpvhzb5aehp8iehchcblhuetcihs', 'clro7xusj5x26rusl4grht99cbemnm2tlit168wfc8vnrp9nzi', '2020-08-17 19:26:17', '2020-08-17 19:26:17', NULL),
(35, 'permxuwbaysnrkdpfqtequ03sosoh372lboswcltcehivij1at', 'clro7xusj5x26rusl4grht99cbemnm2tlit168wfc8vnrp9nzi', '2020-08-17 19:26:18', '2020-08-17 19:26:18', NULL),
(36, 'per5m1vstjsljz7xdqiwmqvqzqubn8wnkhdnxnwlgl4wqqyflj', 'clro7xusj5x26rusl4grht99cbemnm2tlit168wfc8vnrp9nzi', '2020-08-17 19:27:49', '2020-08-17 19:27:49', NULL),
(37, 'perz9kaxhbhvtpzq26s2dr80ozne4oivjyntfmqx6uhddma2nk', 'clro7xusj5x26rusl4grht99cbemnm2tlit168wfc8vnrp9nzi', '2020-08-17 19:27:50', '2020-08-17 19:27:50', NULL),
(38, 'perae0gasuwbyxpc9fhag2xg1wi1whmq3cd7jlvc378oyehb9o', 'clro7xusj5x26rusl4grht99cbemnm2tlit168wfc8vnrp9nzi', '2020-08-17 19:29:39', '2020-08-17 19:29:39', NULL),
(39, 'perdshrsn5ewd8hlqtu0lldpin2gotfbxrmixlfjjv3ndlzyir', 'clro7xusj5x26rusl4grht99cbemnm2tlit168wfc8vnrp9nzi', '2020-08-17 19:29:39', '2020-08-17 19:29:39', NULL),
(40, 'perad4toxiyt1uue7ocbwetnnxohxc0cecbzoeirgrlfumdxor', 'clro7xusj5x26rusl4grht99cbemnm2tlit168wfc8vnrp9nzi', '2020-08-17 19:44:59', '2020-08-17 19:44:59', NULL),
(41, 'per4iumevk9tdnve2royyrogyzyrmzzsxhkylupl48dsireoir', 'clr5mc4ft6zzh4ixd6wzdz3dxvzrbatbnnip9bzt9qhb268khp', '2020-08-29 16:49:22', '2020-08-29 16:49:22', NULL),
(42, 'pergmt6ew6ktwh9ryzyk4ejjxdexvnj0hxzd6tmhcfynwncrqx', 'clrfuc1nxkgezroooo4rjahlvymwa1ylt5cmun3gxgubzb7c2k', '2020-09-03 14:21:58', '2020-09-03 14:21:58', NULL),
(43, 'perszeqqlxotzkdol19fzi6myhphahopgyjly1joyuwui8pp5w', 'clrfuc1nxkgezroooo4rjahlvymwa1ylt5cmun3gxgubzb7c2k', '2020-09-03 14:21:58', '2020-09-03 14:21:58', NULL),
(44, 'permxuwbaysnrkdpfqtequ03sosoh372lboswcltcehivij1at', 'clrfuc1nxkgezroooo4rjahlvymwa1ylt5cmun3gxgubzb7c2k', '2020-09-03 14:21:58', '2020-09-03 14:21:58', NULL),
(56, 'pergrbey5eqwllvyaslnesrwle69k1fqenofn22ka9fznysdm1', 'clr5mc4ft6zzh4ixd6wzdz3dxvzrbatbnnip9bzt9qhb268khp', '2020-09-18 12:46:27', '2020-09-18 12:46:27', NULL),
(57, 'perumewwbfhbbma1v8yrjargw3colnzqjnaahi4tkh5dtyefwr', 'clr5mc4ft6zzh4ixd6wzdz3dxvzrbatbnnip9bzt9qhb268khp', '2020-09-18 12:46:27', '2020-09-18 12:46:27', NULL),
(58, 'perstoeoi3adllmiityvawggk6dvuzrizsv8jh9i2zmkewezev', 'clr5mc4ft6zzh4ixd6wzdz3dxvzrbatbnnip9bzt9qhb268khp', '2020-09-18 12:46:28', '2020-09-18 12:46:28', NULL),
(62, 'pergmt6ew6ktwh9ryzyk4ejjxdexvnj0hxzd6tmhcfynwncrqx', 'clry4pj98d493hd9cqmoxatts6tepmel0ialzilydiylcplohg', '2020-10-16 20:27:33', '2020-10-16 20:27:33', NULL),
(63, 'perszeqqlxotzkdol19fzi6myhphahopgyjly1joyuwui8pp5w', 'clry4pj98d493hd9cqmoxatts6tepmel0ialzilydiylcplohg', '2020-10-16 20:27:33', '2020-10-16 20:27:33', NULL),
(64, 'pergrbey5eqwllvyaslnesrwle69k1fqenofn22ka9fznysdm1', 'clry4pj98d493hd9cqmoxatts6tepmel0ialzilydiylcplohg', '2020-10-16 20:27:34', '2020-10-16 20:27:34', NULL),
(65, 'perkt3q4cts49bcef7vfwfcpvhzb5aehp8iehchcblhuetcihs', 'clry4pj98d493hd9cqmoxatts6tepmel0ialzilydiylcplohg', '2020-10-16 20:27:34', '2020-10-16 20:27:34', NULL),
(66, 'perstoeoi3adllmiityvawggk6dvuzrizsv8jh9i2zmkewezev', 'clry4pj98d493hd9cqmoxatts6tepmel0ialzilydiylcplohg', '2020-10-16 20:27:34', '2020-10-16 20:27:34', NULL),
(67, 'perbxjpmbc8ggmjjreihsb4ykvm32eemg44vmpayyjzj1nfxeg', 'clr3etm52johwxxuxbsdgvmsatsqne9eepon9ucfnt96tb2tcm', '2020-10-19 18:37:14', '2020-10-19 18:37:14', NULL),
(68, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'clr3etm52johwxxuxbsdgvmsatsqne9eepon9ucfnt96tb2tcm', '2020-10-19 18:37:14', '2020-10-19 18:37:14', NULL),
(69, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'clr3etm52johwxxuxbsdgvmsatsqne9eepon9ucfnt96tb2tcm', '2020-10-19 18:37:14', '2020-10-19 18:37:14', NULL),
(70, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'clr3etm52johwxxuxbsdgvmsatsqne9eepon9ucfnt96tb2tcm', '2020-10-19 18:37:15', '2020-10-19 18:37:15', NULL),
(71, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'clr3etm52johwxxuxbsdgvmsatsqne9eepon9ucfnt96tb2tcm', '2020-10-19 18:37:15', '2020-10-19 18:37:15', NULL),
(72, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'clr3etm52johwxxuxbsdgvmsatsqne9eepon9ucfnt96tb2tcm', '2020-10-19 18:37:15', '2020-10-19 18:37:15', NULL),
(73, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'clr3etm52johwxxuxbsdgvmsatsqne9eepon9ucfnt96tb2tcm', '2020-10-19 18:37:16', '2020-10-19 18:37:16', NULL),
(74, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'clr3etm52johwxxuxbsdgvmsatsqne9eepon9ucfnt96tb2tcm', '2020-10-19 18:37:16', '2020-10-19 18:37:16', NULL),
(75, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'clr3etm52johwxxuxbsdgvmsatsqne9eepon9ucfnt96tb2tcm', '2020-10-19 18:37:16', '2020-10-19 18:37:16', NULL),
(76, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', 'clr3etm52johwxxuxbsdgvmsatsqne9eepon9ucfnt96tb2tcm', '2020-10-19 18:37:16', '2020-10-19 18:37:16', NULL),
(77, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', 'clr3etm52johwxxuxbsdgvmsatsqne9eepon9ucfnt96tb2tcm', '2020-10-19 18:37:16', '2020-10-19 18:37:16', NULL),
(78, 'perg9rp46juqgkdpgshpujx5das61d74mm6yrya6jrwxh5tpqy', 'clraa1bo1v0jiygqi5dkmrkwaryebjismm0tved6tmutgazfsj', '2020-10-27 20:12:31', '2020-10-27 20:12:31', NULL),
(79, 'perzd47x9sdine3wuuuez92ki1lbh8z9sej7nkxl9iy9yb42ry', 'clraa1bo1v0jiygqi5dkmrkwaryebjismm0tved6tmutgazfsj', '2020-10-27 20:12:31', '2020-10-27 20:12:31', NULL),
(80, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'clraa1bo1v0jiygqi5dkmrkwaryebjismm0tved6tmutgazfsj', '2020-10-28 00:28:00', '2020-10-28 00:28:00', NULL),
(81, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'clraa1bo1v0jiygqi5dkmrkwaryebjismm0tved6tmutgazfsj', '2020-10-28 00:28:00', '2020-10-28 00:28:00', NULL),
(82, 'perwru0avsqkhwsjdekhptqtybblzyryglawm46bg8vyiosdcr', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-28 14:54:13', '2020-10-28 14:54:13', NULL),
(83, 'perrztidsfedzyavzys46kgk4qclxlvwsf4sen9mwn9dun9ega', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-28 14:54:13', '2020-10-28 14:54:13', NULL),
(84, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-28 14:56:39', '2020-10-28 14:56:39', NULL),
(85, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-28 14:56:39', '2020-10-28 14:56:39', NULL),
(88, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-28 15:16:47', '2020-10-28 15:16:47', NULL),
(89, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-28 15:16:47', '2020-10-28 15:16:47', NULL),
(90, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-28 15:20:39', '2020-10-28 15:20:39', NULL),
(91, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-28 15:20:39', '2020-10-28 15:20:39', NULL),
(92, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-28 15:27:09', '2020-10-28 15:27:09', NULL),
(93, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-28 15:27:09', '2020-10-28 15:27:09', NULL),
(94, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', '2020-10-28 15:27:38', '2020-10-28 15:27:38', NULL),
(95, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', '2020-10-28 15:27:38', '2020-10-28 15:27:38', NULL),
(96, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', '2020-10-28 15:27:38', '2020-10-28 15:27:38', NULL),
(97, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', '2020-10-28 15:27:38', '2020-10-28 15:27:38', NULL),
(98, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', '2020-10-28 15:27:38', '2020-10-28 15:27:38', NULL),
(99, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', '2020-10-28 15:27:38', '2020-10-28 15:27:38', NULL),
(102, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-28 15:32:51', '2020-10-28 15:32:51', NULL),
(103, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-28 15:32:51', '2020-10-28 15:32:51', NULL),
(104, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-28 15:37:35', '2020-10-28 15:37:35', NULL),
(105, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-28 15:37:35', '2020-10-28 15:37:35', NULL),
(106, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-28 15:39:43', '2020-10-28 15:39:43', NULL),
(107, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-28 15:39:43', '2020-10-28 15:39:43', NULL),
(108, 'perguln9rfwptrihli5ykomxfgfvlwszsmhbmzxntgke9sxbwv', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-28 15:39:43', '2020-10-28 15:39:43', NULL),
(109, 'peraieoiywxwnzpgo5muwfvspy6kgeprinkdpyk13rovvilhxa', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-28 15:39:43', '2020-10-28 15:39:43', NULL),
(110, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', '2020-10-28 15:57:15', '2020-10-28 15:57:15', NULL),
(111, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', '2020-10-28 15:57:15', '2020-10-28 15:57:15', NULL),
(112, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', '2020-10-28 15:57:15', '2020-10-28 15:57:15', NULL),
(113, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', '2020-10-28 15:57:15', '2020-10-28 15:57:15', NULL),
(114, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', '2020-10-28 16:01:22', '2020-10-28 16:01:22', NULL),
(115, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', '2020-10-28 16:01:22', '2020-10-28 16:01:22', NULL),
(116, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', '2020-10-28 16:01:22', '2020-10-28 16:01:22', NULL),
(117, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', '2020-10-28 16:01:22', '2020-10-28 16:01:22', NULL),
(118, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', '2020-10-28 16:01:22', '2020-10-28 16:01:22', NULL),
(119, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', '2020-10-28 16:01:22', '2020-10-28 16:01:22', NULL),
(120, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', '2020-10-28 16:14:52', '2020-10-28 16:14:52', NULL),
(121, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', '2020-10-28 16:14:52', '2020-10-28 16:14:52', NULL),
(122, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', '2020-10-28 16:14:52', '2020-10-28 16:14:52', NULL),
(123, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', '2020-10-28 16:14:52', '2020-10-28 16:14:52', NULL),
(124, 'perwru0avsqkhwsjdekhptqtybblzyryglawm46bg8vyiosdcr', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', '2020-10-28 16:20:29', '2020-10-28 16:20:29', NULL),
(125, 'perrztidsfedzyavzys46kgk4qclxlvwsf4sen9mwn9dun9ega', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', '2020-10-28 16:20:29', '2020-10-28 16:20:29', NULL),
(126, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', '2020-10-28 16:20:29', '2020-10-28 16:20:29', NULL),
(127, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', '2020-10-28 16:20:30', '2020-10-28 16:20:30', NULL),
(128, 'perg9rp46juqgkdpgshpujx5das61d74mm6yrya6jrwxh5tpqy', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', '2020-10-28 16:35:03', '2020-10-28 16:35:03', NULL),
(129, 'perzd47x9sdine3wuuuez92ki1lbh8z9sej7nkxl9iy9yb42ry', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', '2020-10-28 16:35:04', '2020-10-28 16:35:04', NULL),
(130, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-28 19:22:29', '2020-10-28 19:22:29', NULL),
(131, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-28 19:22:29', '2020-10-28 19:22:29', NULL),
(132, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-28 19:28:55', '2020-10-28 19:28:55', NULL),
(133, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-28 19:28:55', '2020-10-28 19:28:55', NULL),
(134, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'clrcodowplhv42tk6zbbwvulf6ninkhxatrsuo7gi05enmqzmw', '2020-10-28 19:48:09', '2020-10-28 19:48:09', NULL),
(135, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'clrcodowplhv42tk6zbbwvulf6ninkhxatrsuo7gi05enmqzmw', '2020-10-28 19:48:09', '2020-10-28 19:48:09', NULL),
(136, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', '2020-10-28 21:38:07', '2020-10-28 21:38:07', NULL),
(137, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', '2020-10-28 21:38:07', '2020-10-28 21:38:07', NULL),
(138, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', '2020-10-28 21:38:07', '2020-10-28 21:38:07', NULL),
(139, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', '2020-10-28 21:38:07', '2020-10-28 21:38:07', NULL),
(140, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', '2020-10-28 21:38:07', '2020-10-28 21:38:07', NULL),
(141, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', '2020-10-28 21:38:07', '2020-10-28 21:38:07', NULL),
(142, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', '2020-10-28 21:39:37', '2020-10-28 21:39:37', NULL),
(143, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', '2020-10-28 21:39:38', '2020-10-28 21:39:38', NULL),
(144, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', '2020-10-28 21:39:38', '2020-10-28 21:39:38', NULL),
(145, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', '2020-10-28 21:39:38', '2020-10-28 21:39:38', NULL),
(146, 'perguln9rfwptrihli5ykomxfgfvlwszsmhbmzxntgke9sxbwv', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', '2020-10-28 21:51:07', '2020-10-28 21:51:07', NULL),
(147, 'peraieoiywxwnzpgo5muwfvspy6kgeprinkdpyk13rovvilhxa', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', '2020-10-28 21:51:07', '2020-10-28 21:51:07', NULL),
(148, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'clrvbl81kh4ypj1dtzsinp7hje00qzw3pzrlwcivijtbah6bly', '2020-10-28 21:52:12', '2020-10-28 21:52:12', NULL),
(149, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'clrvbl81kh4ypj1dtzsinp7hje00qzw3pzrlwcivijtbah6bly', '2020-10-28 21:52:12', '2020-10-28 21:52:12', NULL),
(150, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'clrv4pyijtbzn6uywv5is30f8ohp6zezqftp0rcfy1mvrwahq0', '2020-10-28 21:53:40', '2020-10-28 21:53:40', NULL),
(151, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'clrv4pyijtbzn6uywv5is30f8ohp6zezqftp0rcfy1mvrwahq0', '2020-10-28 21:53:40', '2020-10-28 21:53:40', NULL),
(152, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'clrksfb2yagtpgc5tjvt5rt1mmrawxgixajkzhlci991inzzui', '2020-10-28 21:57:13', '2020-10-28 21:57:13', NULL),
(153, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'clrksfb2yagtpgc5tjvt5rt1mmrawxgixajkzhlci991inzzui', '2020-10-28 21:57:13', '2020-10-28 21:57:13', NULL),
(154, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', '2020-10-28 21:58:32', '2020-10-28 21:58:32', NULL),
(155, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', '2020-10-28 21:58:32', '2020-10-28 21:58:32', NULL),
(156, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'clrf9nworkqbvxeba54ykyqc5srvavxfyhmgtezh2yzq5kqbty', '2020-10-28 22:02:05', '2020-10-28 22:02:05', NULL),
(157, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'clrf9nworkqbvxeba54ykyqc5srvavxfyhmgtezh2yzq5kqbty', '2020-10-28 22:02:05', '2020-10-28 22:02:05', NULL),
(158, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'clrf9nworkqbvxeba54ykyqc5srvavxfyhmgtezh2yzq5kqbty', '2020-10-28 22:02:05', '2020-10-28 22:02:05', NULL),
(159, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'clrf9nworkqbvxeba54ykyqc5srvavxfyhmgtezh2yzq5kqbty', '2020-10-28 22:02:05', '2020-10-28 22:02:05', NULL),
(160, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'clrf9nworkqbvxeba54ykyqc5srvavxfyhmgtezh2yzq5kqbty', '2020-10-28 22:03:33', '2020-10-28 22:03:33', NULL),
(161, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'clrf9nworkqbvxeba54ykyqc5srvavxfyhmgtezh2yzq5kqbty', '2020-10-28 22:03:33', '2020-10-28 22:03:33', NULL),
(162, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'clrf9nworkqbvxeba54ykyqc5srvavxfyhmgtezh2yzq5kqbty', '2020-10-28 22:03:33', '2020-10-28 22:03:33', NULL),
(163, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'clrf9nworkqbvxeba54ykyqc5srvavxfyhmgtezh2yzq5kqbty', '2020-10-28 22:03:33', '2020-10-28 22:03:33', NULL),
(164, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 'clrf9nworkqbvxeba54ykyqc5srvavxfyhmgtezh2yzq5kqbty', '2020-10-28 22:03:33', '2020-10-28 22:03:33', NULL),
(165, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'clrf9nworkqbvxeba54ykyqc5srvavxfyhmgtezh2yzq5kqbty', '2020-10-28 22:03:33', '2020-10-28 22:03:33', NULL),
(166, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', '2020-10-28 22:08:14', '2020-10-28 22:08:14', NULL),
(167, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', '2020-10-28 22:08:14', '2020-10-28 22:08:14', NULL),
(168, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'clrksfb2yagtpgc5tjvt5rt1mmrawxgixajkzhlci991inzzui', '2020-10-28 22:08:23', '2020-10-28 22:08:23', NULL),
(169, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', '2020-10-28 22:09:32', '2020-10-28 22:09:32', NULL),
(170, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', '2020-10-28 22:09:32', '2020-10-28 22:09:32', NULL),
(172, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'clr31ohnv0mp5yztwj386gs5ewnyqmezxrcx4sf7cregqgjcj6', '2020-10-28 22:13:33', '2020-10-28 22:13:33', NULL),
(173, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'clr31ohnv0mp5yztwj386gs5ewnyqmezxrcx4sf7cregqgjcj6', '2020-10-28 22:13:34', '2020-10-28 22:13:34', NULL),
(174, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'clr31ohnv0mp5yztwj386gs5ewnyqmezxrcx4sf7cregqgjcj6', '2020-10-28 22:13:34', '2020-10-28 22:13:34', NULL),
(175, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'clr31ohnv0mp5yztwj386gs5ewnyqmezxrcx4sf7cregqgjcj6', '2020-10-28 22:13:34', '2020-10-28 22:13:34', NULL),
(176, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'clrb6etjrmq7lgpttvgial8doovpiqleocjrhkgbmnpbkldmqk', '2020-10-28 22:14:39', '2020-10-28 22:14:39', NULL),
(177, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'clrb6etjrmq7lgpttvgial8doovpiqleocjrhkgbmnpbkldmqk', '2020-10-28 22:14:39', '2020-10-28 22:14:39', NULL),
(178, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'clrb6etjrmq7lgpttvgial8doovpiqleocjrhkgbmnpbkldmqk', '2020-10-28 22:14:39', '2020-10-28 22:14:39', NULL),
(179, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'clrb6etjrmq7lgpttvgial8doovpiqleocjrhkgbmnpbkldmqk', '2020-10-28 22:14:39', '2020-10-28 22:14:39', NULL),
(180, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'clrb6etjrmq7lgpttvgial8doovpiqleocjrhkgbmnpbkldmqk', '2020-10-28 22:16:17', '2020-10-28 22:16:17', NULL),
(181, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'clrb6etjrmq7lgpttvgial8doovpiqleocjrhkgbmnpbkldmqk', '2020-10-28 22:16:17', '2020-10-28 22:16:17', NULL),
(182, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'clrb6etjrmq7lgpttvgial8doovpiqleocjrhkgbmnpbkldmqk', '2020-10-28 22:16:17', '2020-10-28 22:16:17', NULL),
(183, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'clrb6etjrmq7lgpttvgial8doovpiqleocjrhkgbmnpbkldmqk', '2020-10-28 22:16:17', '2020-10-28 22:16:17', NULL),
(184, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 'clrb6etjrmq7lgpttvgial8doovpiqleocjrhkgbmnpbkldmqk', '2020-10-28 22:16:17', '2020-10-28 22:16:17', NULL),
(185, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'clrb6etjrmq7lgpttvgial8doovpiqleocjrhkgbmnpbkldmqk', '2020-10-28 22:16:17', '2020-10-28 22:16:17', NULL),
(186, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'clrksfb2yagtpgc5tjvt5rt1mmrawxgixajkzhlci991inzzui', '2020-10-28 22:23:47', '2020-10-28 22:23:47', NULL),
(187, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'clr4mmxdqeyzvcbzkqgdoj61vhj7jlzzspynpowowksazsuuhy', '2020-10-28 22:24:40', '2020-10-28 22:24:40', NULL),
(188, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'clr4mmxdqeyzvcbzkqgdoj61vhj7jlzzspynpowowksazsuuhy', '2020-10-28 22:24:40', '2020-10-28 22:24:40', NULL),
(189, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'clr4mmxdqeyzvcbzkqgdoj61vhj7jlzzspynpowowksazsuuhy', '2020-10-28 22:24:40', '2020-10-28 22:24:40', NULL),
(190, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'clr4mmxdqeyzvcbzkqgdoj61vhj7jlzzspynpowowksazsuuhy', '2020-10-28 22:24:40', '2020-10-28 22:24:40', NULL),
(191, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'clri0idqg8komivx2vrm7jq8jvoifmhwx5jobnwsyxx7pyscs4', '2020-10-28 22:25:43', '2020-10-28 22:25:43', NULL),
(192, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'clri0idqg8komivx2vrm7jq8jvoifmhwx5jobnwsyxx7pyscs4', '2020-10-28 22:25:43', '2020-10-28 22:25:43', NULL),
(193, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', '2020-10-28 22:26:33', '2020-10-28 22:26:33', NULL),
(194, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', '2020-10-28 22:26:33', '2020-10-28 22:26:33', NULL),
(195, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', '2020-10-28 22:26:33', '2020-10-28 22:26:33', NULL),
(196, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', '2020-10-28 22:26:33', '2020-10-28 22:26:33', NULL),
(197, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-28 22:27:44', '2020-10-28 22:27:44', NULL),
(198, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-28 22:27:44', '2020-10-28 22:27:44', NULL),
(199, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'clrvbl81kh4ypj1dtzsinp7hje00qzw3pzrlwcivijtbah6bly', '2020-10-28 22:29:32', '2020-10-28 22:29:32', NULL),
(200, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'clrvbl81kh4ypj1dtzsinp7hje00qzw3pzrlwcivijtbah6bly', '2020-10-28 22:29:32', '2020-10-28 22:29:32', NULL),
(201, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'clrcodowplhv42tk6zbbwvulf6ninkhxatrsuo7gi05enmqzmw', '2020-10-28 22:31:12', '2020-10-28 22:31:12', NULL),
(202, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'clrcodowplhv42tk6zbbwvulf6ninkhxatrsuo7gi05enmqzmw', '2020-10-28 22:31:12', '2020-10-28 22:31:12', NULL),
(203, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', '2020-10-28 22:31:47', '2020-10-28 22:31:47', NULL),
(204, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', '2020-10-28 22:31:47', '2020-10-28 22:31:47', NULL),
(205, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', '2020-10-28 22:31:47', '2020-10-28 22:31:47', NULL),
(206, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', '2020-10-28 22:31:47', '2020-10-28 22:31:47', NULL),
(207, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'clrb6etjrmq7lgpttvgial8doovpiqleocjrhkgbmnpbkldmqk', '2020-10-28 22:32:43', '2020-10-28 22:32:43', NULL),
(208, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'clrb6etjrmq7lgpttvgial8doovpiqleocjrhkgbmnpbkldmqk', '2020-10-28 22:32:43', '2020-10-28 22:32:43', NULL),
(209, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'clrvbl81kh4ypj1dtzsinp7hje00qzw3pzrlwcivijtbah6bly', '2020-10-28 22:33:21', '2020-10-28 22:33:21', NULL),
(210, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', 'clrvbl81kh4ypj1dtzsinp7hje00qzw3pzrlwcivijtbah6bly', '2020-10-28 22:33:21', '2020-10-28 22:33:21', NULL),
(211, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'clr31ohnv0mp5yztwj386gs5ewnyqmezxrcx4sf7cregqgjcj6', '2020-10-28 22:36:45', '2020-10-28 22:36:45', NULL),
(212, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'clr31ohnv0mp5yztwj386gs5ewnyqmezxrcx4sf7cregqgjcj6', '2020-10-28 22:36:45', '2020-10-28 22:36:45', NULL),
(213, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'clr31ohnv0mp5yztwj386gs5ewnyqmezxrcx4sf7cregqgjcj6', '2020-10-28 22:37:46', '2020-10-28 22:37:46', NULL),
(214, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'clr31ohnv0mp5yztwj386gs5ewnyqmezxrcx4sf7cregqgjcj6', '2020-10-28 22:37:46', '2020-10-28 22:37:46', NULL),
(215, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', '2020-10-28 22:37:57', '2020-10-28 22:37:57', NULL),
(216, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', '2020-10-28 22:37:57', '2020-10-28 22:37:57', NULL),
(217, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', '2020-10-28 22:37:57', '2020-10-28 22:37:57', NULL),
(218, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', '2020-10-28 22:37:57', '2020-10-28 22:37:57', NULL),
(219, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 'clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', '2020-10-28 22:37:57', '2020-10-28 22:37:57', NULL),
(220, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', '2020-10-28 22:37:57', '2020-10-28 22:37:57', NULL),
(221, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'clr4mmxdqeyzvcbzkqgdoj61vhj7jlzzspynpowowksazsuuhy', '2020-10-28 22:40:10', '2020-10-28 22:40:10', NULL),
(222, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'clr4mmxdqeyzvcbzkqgdoj61vhj7jlzzspynpowowksazsuuhy', '2020-10-28 22:40:10', '2020-10-28 22:40:10', NULL),
(223, 'perguln9rfwptrihli5ykomxfgfvlwszsmhbmzxntgke9sxbwv', 'clr31ohnv0mp5yztwj386gs5ewnyqmezxrcx4sf7cregqgjcj6', '2020-10-28 22:41:18', '2020-10-28 22:41:18', NULL),
(224, 'peraieoiywxwnzpgo5muwfvspy6kgeprinkdpyk13rovvilhxa', 'clr31ohnv0mp5yztwj386gs5ewnyqmezxrcx4sf7cregqgjcj6', '2020-10-28 22:41:18', '2020-10-28 22:41:18', NULL),
(225, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'clr31ohnv0mp5yztwj386gs5ewnyqmezxrcx4sf7cregqgjcj6', '2020-10-28 22:42:01', '2020-10-28 22:42:01', NULL),
(226, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'clr31ohnv0mp5yztwj386gs5ewnyqmezxrcx4sf7cregqgjcj6', '2020-10-28 22:42:01', '2020-10-28 22:42:01', NULL),
(227, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', '2020-10-28 22:43:00', '2020-10-28 22:43:00', NULL),
(228, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', '2020-10-28 22:43:00', '2020-10-28 22:43:00', NULL),
(229, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', 'clrksfb2yagtpgc5tjvt5rt1mmrawxgixajkzhlci991inzzui', '2020-10-28 22:49:25', '2020-10-28 22:49:25', NULL),
(230, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', 'clrksfb2yagtpgc5tjvt5rt1mmrawxgixajkzhlci991inzzui', '2020-10-28 22:49:25', '2020-10-28 22:49:25', NULL),
(231, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 'clrksfb2yagtpgc5tjvt5rt1mmrawxgixajkzhlci991inzzui', '2020-10-28 22:49:25', '2020-10-28 22:49:25', NULL),
(232, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 'clrksfb2yagtpgc5tjvt5rt1mmrawxgixajkzhlci991inzzui', '2020-10-28 22:49:25', '2020-10-28 22:49:25', NULL),
(233, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', 'clri0idqg8komivx2vrm7jq8jvoifmhwx5jobnwsyxx7pyscs4', '2020-10-28 22:53:54', '2020-10-28 22:53:54', NULL),
(234, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', 'clri0idqg8komivx2vrm7jq8jvoifmhwx5jobnwsyxx7pyscs4', '2020-10-28 22:53:54', '2020-10-28 22:53:54', NULL),
(235, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 'clri0idqg8komivx2vrm7jq8jvoifmhwx5jobnwsyxx7pyscs4', '2020-10-28 22:53:55', '2020-10-28 22:53:55', NULL),
(236, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 'clri0idqg8komivx2vrm7jq8jvoifmhwx5jobnwsyxx7pyscs4', '2020-10-28 22:53:55', '2020-10-28 22:53:55', NULL),
(237, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', 'clrvbl81kh4ypj1dtzsinp7hje00qzw3pzrlwcivijtbah6bly', '2020-10-28 22:55:17', '2020-10-28 22:55:17', NULL),
(238, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', 'clrvbl81kh4ypj1dtzsinp7hje00qzw3pzrlwcivijtbah6bly', '2020-10-28 22:55:17', '2020-10-28 22:55:17', NULL),
(239, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 'clrvbl81kh4ypj1dtzsinp7hje00qzw3pzrlwcivijtbah6bly', '2020-10-28 22:55:17', '2020-10-28 22:55:17', NULL),
(240, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 'clrvbl81kh4ypj1dtzsinp7hje00qzw3pzrlwcivijtbah6bly', '2020-10-28 22:55:17', '2020-10-28 22:55:17', NULL),
(241, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', 'clrv4pyijtbzn6uywv5is30f8ohp6zezqftp0rcfy1mvrwahq0', '2020-10-28 22:56:14', '2020-10-28 22:56:14', NULL),
(242, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', 'clrv4pyijtbzn6uywv5is30f8ohp6zezqftp0rcfy1mvrwahq0', '2020-10-28 22:56:14', '2020-10-28 22:56:14', NULL),
(243, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 'clrv4pyijtbzn6uywv5is30f8ohp6zezqftp0rcfy1mvrwahq0', '2020-10-28 22:56:14', '2020-10-28 22:56:14', NULL),
(244, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 'clrv4pyijtbzn6uywv5is30f8ohp6zezqftp0rcfy1mvrwahq0', '2020-10-28 22:56:14', '2020-10-28 22:56:14', NULL),
(245, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'clr3etm52johwxxuxbsdgvmsatsqne9eepon9ucfnt96tb2tcm', '2020-10-28 22:59:45', '2020-10-28 22:59:45', NULL),
(246, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'clr3etm52johwxxuxbsdgvmsatsqne9eepon9ucfnt96tb2tcm', '2020-10-28 22:59:45', '2020-10-28 22:59:45', NULL),
(247, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', '2020-10-28 23:01:35', '2020-10-28 23:01:35', NULL),
(248, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', '2020-10-28 23:01:36', '2020-10-28 23:01:36', NULL),
(249, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', '2020-10-28 23:03:28', '2020-10-28 23:03:28', NULL),
(250, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', 'clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', '2020-10-28 23:03:28', '2020-10-28 23:03:28', NULL),
(251, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', '2020-10-28 23:04:53', '2020-10-28 23:04:53', NULL),
(252, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', '2020-10-28 23:04:53', '2020-10-28 23:04:53', NULL),
(253, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', '2020-10-28 23:06:08', '2020-10-28 23:06:08', NULL),
(254, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', '2020-10-28 23:06:08', '2020-10-28 23:06:08', NULL),
(255, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'clrwejqhgmsv7i9tsbto9q6qjcune1r3uaag4hi5wkk35xlqfc', '2020-10-28 23:11:16', '2020-10-28 23:11:16', NULL),
(256, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'clrwejqhgmsv7i9tsbto9q6qjcune1r3uaag4hi5wkk35xlqfc', '2020-10-28 23:11:16', '2020-10-28 23:11:16', NULL),
(257, 'perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', 'clrvbl81kh4ypj1dtzsinp7hje00qzw3pzrlwcivijtbah6bly', '2020-10-28 23:13:57', '2020-10-28 23:13:57', NULL),
(258, 'perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', 'clrvbl81kh4ypj1dtzsinp7hje00qzw3pzrlwcivijtbah6bly', '2020-10-28 23:13:58', '2020-10-28 23:13:58', NULL),
(259, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', 'clrvbl81kh4ypj1dtzsinp7hje00qzw3pzrlwcivijtbah6bly', '2020-10-28 23:13:58', '2020-10-28 23:13:58', NULL),
(260, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', 'clrvbl81kh4ypj1dtzsinp7hje00qzw3pzrlwcivijtbah6bly', '2020-10-28 23:13:58', '2020-10-28 23:13:58', NULL),
(261, 'perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', 'clrksfb2yagtpgc5tjvt5rt1mmrawxgixajkzhlci991inzzui', '2020-10-28 23:18:23', '2020-10-28 23:18:23', NULL),
(262, 'perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', 'clrksfb2yagtpgc5tjvt5rt1mmrawxgixajkzhlci991inzzui', '2020-10-28 23:18:23', '2020-10-28 23:18:23', NULL),
(263, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', 'clrksfb2yagtpgc5tjvt5rt1mmrawxgixajkzhlci991inzzui', '2020-10-28 23:18:23', '2020-10-28 23:18:23', NULL),
(264, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', 'clrksfb2yagtpgc5tjvt5rt1mmrawxgixajkzhlci991inzzui', '2020-10-28 23:18:23', '2020-10-28 23:18:23', NULL),
(265, 'perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', '2020-10-28 23:19:25', '2020-10-28 23:19:25', NULL),
(266, 'perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', '2020-10-28 23:19:25', '2020-10-28 23:19:25', NULL),
(267, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', '2020-10-28 23:19:25', '2020-10-28 23:19:25', NULL),
(268, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', '2020-10-28 23:19:25', '2020-10-28 23:19:25', NULL),
(269, 'perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', '2020-10-28 23:28:29', '2020-10-28 23:28:29', NULL),
(270, 'perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', '2020-10-28 23:28:29', '2020-10-28 23:28:29', NULL),
(271, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', '2020-10-28 23:28:30', '2020-10-28 23:28:30', NULL),
(272, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', '2020-10-28 23:28:30', '2020-10-28 23:28:30', NULL),
(273, 'perwru0avsqkhwsjdekhptqtybblzyryglawm46bg8vyiosdcr', 'clri0idqg8komivx2vrm7jq8jvoifmhwx5jobnwsyxx7pyscs4', '2020-10-28 23:34:50', '2020-10-28 23:34:50', NULL),
(274, 'perrztidsfedzyavzys46kgk4qclxlvwsf4sen9mwn9dun9ega', 'clri0idqg8komivx2vrm7jq8jvoifmhwx5jobnwsyxx7pyscs4', '2020-10-28 23:34:50', '2020-10-28 23:34:50', NULL),
(275, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-28 23:37:35', '2020-10-28 23:37:35', NULL),
(276, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-28 23:37:35', '2020-10-28 23:37:35', NULL),
(277, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 'clrynyd9axx0hrmvhssegmr2e99cg2s1xm8xg7z6xof6cmeuro', '2020-10-28 23:39:57', '2020-10-28 23:39:57', NULL),
(278, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 'clrynyd9axx0hrmvhssegmr2e99cg2s1xm8xg7z6xof6cmeuro', '2020-10-28 23:39:57', '2020-10-28 23:39:57', NULL),
(279, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'clri0idqg8komivx2vrm7jq8jvoifmhwx5jobnwsyxx7pyscs4', '2020-10-29 13:25:21', '2020-10-29 13:25:21', NULL),
(280, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'clri0idqg8komivx2vrm7jq8jvoifmhwx5jobnwsyxx7pyscs4', '2020-10-29 13:25:21', '2020-10-29 13:25:21', NULL),
(281, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'clri0idqg8komivx2vrm7jq8jvoifmhwx5jobnwsyxx7pyscs4', '2020-10-29 13:25:22', '2020-10-29 13:25:22', NULL),
(282, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'clri0idqg8komivx2vrm7jq8jvoifmhwx5jobnwsyxx7pyscs4', '2020-10-29 13:25:22', '2020-10-29 13:25:22', NULL),
(283, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'clrynyd9axx0hrmvhssegmr2e99cg2s1xm8xg7z6xof6cmeuro', '2020-10-29 13:26:11', '2020-10-29 13:26:11', NULL),
(284, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'clrynyd9axx0hrmvhssegmr2e99cg2s1xm8xg7z6xof6cmeuro', '2020-10-29 13:26:11', '2020-10-29 13:26:11', NULL),
(285, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'clrynyd9axx0hrmvhssegmr2e99cg2s1xm8xg7z6xof6cmeuro', '2020-10-29 13:26:11', '2020-10-29 13:26:11', NULL),
(286, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'clrynyd9axx0hrmvhssegmr2e99cg2s1xm8xg7z6xof6cmeuro', '2020-10-29 13:26:11', '2020-10-29 13:26:11', NULL),
(287, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 'clrynyd9axx0hrmvhssegmr2e99cg2s1xm8xg7z6xof6cmeuro', '2020-10-29 13:26:11', '2020-10-29 13:26:11', NULL),
(288, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'clrynyd9axx0hrmvhssegmr2e99cg2s1xm8xg7z6xof6cmeuro', '2020-10-29 13:26:11', '2020-10-29 13:26:11', NULL),
(289, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', '2020-10-29 13:30:17', '2020-10-29 13:30:17', NULL),
(290, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', '2020-10-29 13:30:17', '2020-10-29 13:30:17', NULL),
(291, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', '2020-10-29 13:30:17', '2020-10-29 13:30:17', NULL),
(292, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', '2020-10-29 13:30:17', '2020-10-29 13:30:17', NULL),
(293, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'clri0idqg8komivx2vrm7jq8jvoifmhwx5jobnwsyxx7pyscs4', '2020-10-29 13:34:38', '2020-10-29 13:34:38', NULL),
(294, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', 'clri0idqg8komivx2vrm7jq8jvoifmhwx5jobnwsyxx7pyscs4', '2020-10-29 13:34:38', '2020-10-29 13:34:38', NULL),
(295, 'perg9rp46juqgkdpgshpujx5das61d74mm6yrya6jrwxh5tpqy', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', '2020-10-29 13:35:59', '2020-10-29 13:35:59', NULL),
(296, 'perzd47x9sdine3wuuuez92ki1lbh8z9sej7nkxl9iy9yb42ry', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', '2020-10-29 13:35:59', '2020-10-29 13:35:59', NULL),
(297, 'perwru0avsqkhwsjdekhptqtybblzyryglawm46bg8vyiosdcr', 'clrynyd9axx0hrmvhssegmr2e99cg2s1xm8xg7z6xof6cmeuro', '2020-10-29 13:45:30', '2020-10-29 13:45:30', NULL),
(298, 'perrztidsfedzyavzys46kgk4qclxlvwsf4sen9mwn9dun9ega', 'clrynyd9axx0hrmvhssegmr2e99cg2s1xm8xg7z6xof6cmeuro', '2020-10-29 13:45:30', '2020-10-29 13:45:30', NULL),
(299, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'clri0idqg8komivx2vrm7jq8jvoifmhwx5jobnwsyxx7pyscs4', '2020-10-29 13:52:15', '2020-10-29 13:52:15', NULL),
(300, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'clri0idqg8komivx2vrm7jq8jvoifmhwx5jobnwsyxx7pyscs4', '2020-10-29 13:52:15', '2020-10-29 13:52:15', NULL),
(301, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'clri0idqg8komivx2vrm7jq8jvoifmhwx5jobnwsyxx7pyscs4', '2020-10-29 13:52:16', '2020-10-29 13:52:16', NULL),
(302, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'clri0idqg8komivx2vrm7jq8jvoifmhwx5jobnwsyxx7pyscs4', '2020-10-29 13:52:16', '2020-10-29 13:52:16', NULL),
(303, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'clrksfb2yagtpgc5tjvt5rt1mmrawxgixajkzhlci991inzzui', '2020-10-29 14:03:11', '2020-10-29 14:03:11', NULL),
(304, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'clrksfb2yagtpgc5tjvt5rt1mmrawxgixajkzhlci991inzzui', '2020-10-29 14:03:11', '2020-10-29 14:03:11', NULL),
(305, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'clr4mmxdqeyzvcbzkqgdoj61vhj7jlzzspynpowowksazsuuhy', '2020-10-29 14:47:09', '2020-10-29 14:47:09', NULL),
(306, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'clr4mmxdqeyzvcbzkqgdoj61vhj7jlzzspynpowowksazsuuhy', '2020-10-29 14:47:09', '2020-10-29 14:47:09', NULL),
(307, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-29 14:50:48', '2020-10-29 14:50:48', NULL),
(308, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', '2020-10-29 14:50:48', '2020-10-29 14:50:48', NULL),
(309, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'clrv4pyijtbzn6uywv5is30f8ohp6zezqftp0rcfy1mvrwahq0', '2020-10-29 14:54:51', '2020-10-29 14:54:51', NULL),
(310, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'clrv4pyijtbzn6uywv5is30f8ohp6zezqftp0rcfy1mvrwahq0', '2020-10-29 14:54:51', '2020-10-29 14:54:51', NULL),
(311, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'clrruxrfwvxfjiwifobvokyotsvrzpergrcla5wzynp1xdujww', '2020-10-29 15:08:40', '2020-10-29 15:08:40', NULL),
(312, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'clrruxrfwvxfjiwifobvokyotsvrzpergrcla5wzynp1xdujww', '2020-10-29 15:08:40', '2020-10-29 15:08:40', NULL),
(313, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'clrruxrfwvxfjiwifobvokyotsvrzpergrcla5wzynp1xdujww', '2020-10-29 15:08:40', '2020-10-29 15:08:40', NULL),
(314, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'clrruxrfwvxfjiwifobvokyotsvrzpergrcla5wzynp1xdujww', '2020-10-29 15:08:40', '2020-10-29 15:08:40', NULL),
(315, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'clrvbl81kh4ypj1dtzsinp7hje00qzw3pzrlwcivijtbah6bly', '2020-10-29 15:10:38', '2020-10-29 15:10:38', NULL),
(316, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'clrvbl81kh4ypj1dtzsinp7hje00qzw3pzrlwcivijtbah6bly', '2020-10-29 15:10:38', '2020-10-29 15:10:38', NULL),
(317, 'peraieoiywxwnzpgo5muwfvspy6kgeprinkdpyk13rovvilhxa', 'clrcodowplhv42tk6zbbwvulf6ninkhxatrsuo7gi05enmqzmw', '2020-10-29 16:49:35', '2020-10-29 16:49:35', NULL),
(318, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'clrcodowplhv42tk6zbbwvulf6ninkhxatrsuo7gi05enmqzmw', '2020-10-29 16:49:35', '2020-10-29 16:49:35', NULL),
(319, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'clrcodowplhv42tk6zbbwvulf6ninkhxatrsuo7gi05enmqzmw', '2020-10-29 16:49:35', '2020-10-29 16:49:35', NULL),
(320, 'perxmu1lji6h2kzmcpqdiq9swpoihhpy6p9fbsu2ceveejhcee', 'clrcodowplhv42tk6zbbwvulf6ninkhxatrsuo7gi05enmqzmw', '2020-10-29 16:49:35', '2020-10-29 16:49:35', NULL),
(321, 'perb3s07xkyxj30ivxtqmazrovthu9omqtc4opadr1s8418xgd', 'clrcodowplhv42tk6zbbwvulf6ninkhxatrsuo7gi05enmqzmw', '2020-10-29 16:49:35', '2020-10-29 16:49:35', NULL),
(322, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'clr3etm52johwxxuxbsdgvmsatsqne9eepon9ucfnt96tb2tcm', '2020-10-29 16:59:21', '2020-10-29 16:59:21', NULL),
(323, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', 'clr3etm52johwxxuxbsdgvmsatsqne9eepon9ucfnt96tb2tcm', '2020-10-29 16:59:21', '2020-10-29 16:59:21', NULL),
(324, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', 'clr3etm52johwxxuxbsdgvmsatsqne9eepon9ucfnt96tb2tcm', '2020-10-29 16:59:21', '2020-10-29 16:59:21', NULL),
(325, 'pertohzyl5chsyngidkp36bwrdw3dykh2h6r2qcadtxet90uyy', 'clr3etm52johwxxuxbsdgvmsatsqne9eepon9ucfnt96tb2tcm', '2020-10-29 16:59:21', '2020-10-29 16:59:21', NULL),
(326, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'clrruxrfwvxfjiwifobvokyotsvrzpergrcla5wzynp1xdujww', '2020-10-29 17:22:01', '2020-10-29 17:22:01', NULL),
(327, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'clrruxrfwvxfjiwifobvokyotsvrzpergrcla5wzynp1xdujww', '2020-10-29 17:22:01', '2020-10-29 17:22:01', NULL),
(328, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'clr4mmxdqeyzvcbzkqgdoj61vhj7jlzzspynpowowksazsuuhy', '2020-10-29 17:27:40', '2020-10-29 17:27:40', NULL),
(329, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'clr4mmxdqeyzvcbzkqgdoj61vhj7jlzzspynpowowksazsuuhy', '2020-10-29 17:27:40', '2020-10-29 17:27:40', NULL),
(330, 'perymq7kpd8jvoqtv6sevysv5cjferskob4gw4affbc5rwcq4j', 'clrq8zcyhsp3jz9fanxwtwyypcqvkygfus8xdn3iulzged9lbi', '2020-10-29 20:58:09', '2020-10-29 20:58:09', NULL);
INSERT INTO `period_classrooms` (`id`, `period_id`, `classroom_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(331, 'peroaq0ukjtvznmgcboptwzseyvh9dc6jd6hk1kxlvnlvvajdp', 'clrq8zcyhsp3jz9fanxwtwyypcqvkygfus8xdn3iulzged9lbi', '2020-10-29 21:06:49', '2020-10-29 21:06:49', NULL),
(332, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'clrq8zcyhsp3jz9fanxwtwyypcqvkygfus8xdn3iulzged9lbi', '2020-10-29 22:26:28', '2020-10-29 22:26:28', NULL),
(333, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'clrq8zcyhsp3jz9fanxwtwyypcqvkygfus8xdn3iulzged9lbi', '2020-10-29 22:26:28', '2020-10-29 22:26:28', NULL),
(334, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'clrynyd9axx0hrmvhssegmr2e99cg2s1xm8xg7z6xof6cmeuro', '2020-10-29 22:29:41', '2020-10-29 22:29:41', NULL),
(335, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'clrynyd9axx0hrmvhssegmr2e99cg2s1xm8xg7z6xof6cmeuro', '2020-10-29 22:29:41', '2020-10-29 22:29:41', NULL),
(336, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'clrq8zcyhsp3jz9fanxwtwyypcqvkygfus8xdn3iulzged9lbi', '2020-10-29 22:35:23', '2020-10-29 22:35:23', NULL),
(337, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'clrq8zcyhsp3jz9fanxwtwyypcqvkygfus8xdn3iulzged9lbi', '2020-10-29 22:35:24', '2020-10-29 22:35:24', NULL),
(338, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', '2020-10-29 22:53:57', '2020-10-29 22:53:57', NULL),
(339, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', '2020-10-29 22:53:57', '2020-10-29 22:53:57', NULL),
(340, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'clrrcmrziachv6fumdbjnzghg9ywecqe3vzagvjbiwigi7e14j', '2020-10-29 22:55:47', '2020-10-29 22:55:47', NULL),
(341, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'clrrcmrziachv6fumdbjnzghg9ywecqe3vzagvjbiwigi7e14j', '2020-10-29 22:55:47', '2020-10-29 22:55:47', NULL),
(342, 'perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', 'clrynyd9axx0hrmvhssegmr2e99cg2s1xm8xg7z6xof6cmeuro', '2020-10-29 22:59:46', '2020-10-29 22:59:46', NULL),
(343, 'perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', 'clrynyd9axx0hrmvhssegmr2e99cg2s1xm8xg7z6xof6cmeuro', '2020-10-29 22:59:46', '2020-10-29 22:59:46', NULL),
(344, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', '2020-10-29 23:01:59', '2020-10-29 23:01:59', NULL),
(345, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', '2020-10-29 23:01:59', '2020-10-29 23:01:59', NULL),
(346, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', '2020-10-29 23:01:59', '2020-10-29 23:01:59', NULL),
(347, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', '2020-10-29 23:01:59', '2020-10-29 23:01:59', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `period_courses`
--

CREATE TABLE `period_courses` (
  `id` int(11) NOT NULL,
  `scheduled_class_period` int(11) DEFAULT NULL,
  `period_id` varchar(50) NOT NULL,
  `course_id` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `period_courses`
--

INSERT INTO `period_courses` (`id`, `scheduled_class_period`, `period_id`, `course_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(256, 32, 'per04dnyqr37duvhmayahknvzktefvtozvmgr7wynw9qbjc8of', 'crs08nEafFQkbwodExT7SVzF1CaDN0KKZkLBPOyMBUgdGzqwwu', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(257, 38, 'per5gkvtt1yysgwpijvvtad2zazd7xazw3esdane7y3u3vxr5m', 'crs08nEafFQkbwodExT7SVzF1CaDN0KKZkLBPOyMBUgdGzqwwu', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(258, 28, 'per5lwazcsaa4ii8pt4smoeklawxpn0e1w5ailaa6rczkv0dz7', 'crs08nEafFQkbwodExT7SVzF1CaDN0KKZkLBPOyMBUgdGzqwwu', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(259, 36, 'percqvce9vcsoeujmew1c2wrl55uqr3gn847tn6r48g5ettygi', 'crs08nEafFQkbwodExT7SVzF1CaDN0KKZkLBPOyMBUgdGzqwwu', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(260, 37, 'perkbpyc56nzx1efivewfamw44awbxz8ftcg8yj0wral5eblka', 'crs08nEafFQkbwodExT7SVzF1CaDN0KKZkLBPOyMBUgdGzqwwu', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(261, 34, 'perkt3q4cts49bcef7vfwfcpvhzb5aehp8iehchcblhuetcihs', 'crs08nEafFQkbwodExT7SVzF1CaDN0KKZkLBPOyMBUgdGzqwwu', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(262, 35, 'peru0iwj1wbmnqxuhz6ndc7asragtkkrenppz7wsdo0wz8webe', 'crs08nEafFQkbwodExT7SVzF1CaDN0KKZkLBPOyMBUgdGzqwwu', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(263, 43, 'perelhrhmt4oxkoyhjnh41nhvobli4bsbmbyhey4jzg2wiqt5d', 'crsnBxNjQH6rVnu3q8gL2RKObnQigeHULlRfa1E4JeJT1Ut6lN', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(264, 44, 'permxuwbaysnrkdpfqtequ03sosoh372lboswcltcehivij1at', 'crs08nEafFQkbwodExT7SVzF1CaDN0KKZkLBPOyMBUgdGzqwwu', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(265, 47, 'per4ul4ot18wvbpzfibkqoqtdvthlngyztuom3k0i0npzmgrya', 'crsQzuuzBIKUE0DQZ6eZIqN1i8XBRo4rZv4QBl71fvJz0Go2iZ', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(266, 45, 'pergqyed91lh5bqyli0qjoguzc4ftnnbk2u25rcclkihl4m6gz', 'crsQzuuzBIKUE0DQZ6eZIqN1i8XBRo4rZv4QBl71fvJz0Go2iZ', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(267, 48, 'perrjlgen8ljlsb1hlokcr6xyueuk2pu6hrmvogzb6thjjwr6d', 'crsQzuuzBIKUE0DQZ6eZIqN1i8XBRo4rZv4QBl71fvJz0Go2iZ', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(268, 46, 'persqlke1coahwzk84f64feuiacj3qh6zau8vk3lsbuklmdwrn', 'crsQzuuzBIKUE0DQZ6eZIqN1i8XBRo4rZv4QBl71fvJz0Go2iZ', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(269, 52, 'per5gkvtt1yysgwpijvvtad2zazd7xazw3esdane7y3u3vxr5m', 'crsSJD05MJt85yo8SezHDnCUEbzDu2Hdi5G7rW6Hdzg7nbGlN6', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(270, 53, 'perc1kftnzwtwlnwmvkwi67isgurlbaabcnrf79j7cyokqagwp', 'crsSJD05MJt85yo8SezHDnCUEbzDu2Hdi5G7rW6Hdzg7nbGlN6', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(271, 51, 'perjriv6y5pbyga8s4o5a4vvnyfu7eqrwpuczgespdh8lmaah5', 'crsSJD05MJt85yo8SezHDnCUEbzDu2Hdi5G7rW6Hdzg7nbGlN6', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(272, 54, 'perkbpyc56nzx1efivewfamw44awbxz8ftcg8yj0wral5eblka', 'crsSJD05MJt85yo8SezHDnCUEbzDu2Hdi5G7rW6Hdzg7nbGlN6', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(273, 50, 'perstoeoi3adllmiityvawggk6dvuzrizsv8jh9i2zmkewezev', 'crsSJD05MJt85yo8SezHDnCUEbzDu2Hdi5G7rW6Hdzg7nbGlN6', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(274, 49, 'perszeqqlxotzkdol19fzi6myhphahopgyjly1joyuwui8pp5w', 'crsSJD05MJt85yo8SezHDnCUEbzDu2Hdi5G7rW6Hdzg7nbGlN6', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(275, 57, 'perxft9lice16ed18mec2hxsxyzowy80bnvdal9u5jdkzgknnk', 'crs2uyz9RWbddk2N5Qp5C7QoFp8M4x6OxgL45bJ69Wte95RhDM', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(276, 55, 'perzte0nthz9cfqqhriwmhgsf3qwwk4ndkoxskqlx7gl8vbofj', 'crs2uyz9RWbddk2N5Qp5C7QoFp8M4x6OxgL45bJ69Wte95RhDM', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(277, 58, 'per04dnyqr37duvhmayahknvzktefvtozvmgr7wynw9qbjc8of', 'crs2uyz9RWbddk2N5Qp5C7QoFp8M4x6OxgL45bJ69Wte95RhDM', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(278, 56, 'persu0zpmgrwc3qojertzh0pkfqfgd7mgbkcpexenhoqpqptuv', 'crs2uyz9RWbddk2N5Qp5C7QoFp8M4x6OxgL45bJ69Wte95RhDM', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(279, 59, 'pergmt6ew6ktwh9ryzyk4ejjxdexvnj0hxzd6tmhcfynwncrqx', 'crst3nicUAavuLOVPL3VrtB35MEm5bbDAHZrjpXyGtmLQzZPej', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(280, 60, 'perkt3q4cts49bcef7vfwfcpvhzb5aehp8iehchcblhuetcihs', 'crst3nicUAavuLOVPL3VrtB35MEm5bbDAHZrjpXyGtmLQzZPej', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(281, 61, 'permxuwbaysnrkdpfqtequ03sosoh372lboswcltcehivij1at', 'crst3nicUAavuLOVPL3VrtB35MEm5bbDAHZrjpXyGtmLQzZPej', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(282, 62, 'per5m1vstjsljz7xdqiwmqvqzqubn8wnkhdnxnwlgl4wqqyflj', 'crsUjZoodeG7McfF62ym4DklG0ikdKq4L4aSVXwO6YAa2E4ggC', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(283, 63, 'perz9kaxhbhvtpzq26s2dr80ozne4oivjyntfmqx6uhddma2nk', 'crsUjZoodeG7McfF62ym4DklG0ikdKq4L4aSVXwO6YAa2E4ggC', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(284, 64, 'perae0gasuwbyxpc9fhag2xg1wi1whmq3cd7jlvc378oyehb9o', 'crsQzuuzBIKUE0DQZ6eZIqN1i8XBRo4rZv4QBl71fvJz0Go2iZ', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(285, 65, 'perdshrsn5ewd8hlqtu0lldpin2gotfbxrmixlfjjv3ndlzyir', 'crsQzuuzBIKUE0DQZ6eZIqN1i8XBRo4rZv4QBl71fvJz0Go2iZ', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(286, 66, 'perad4toxiyt1uue7ocbwetnnxohxc0cecbzoeirgrlfumdxor', 'crsnGlJrNyaar7CTfNadRmyPrQTS6VEhUDGExNC62RQBjF212b', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(287, 67, 'per4iumevk9tdnve2royyrogyzyrmzzsxhkylupl48dsireoir', 'crsk3jQBe8nd8rXrh1w0sZI14blwhcjmbp8WCx8mF24qmsdz7q', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(288, 68, 'pergmt6ew6ktwh9ryzyk4ejjxdexvnj0hxzd6tmhcfynwncrqx', 'crst3nicUAavuLOVPL3VrtB35MEm5bbDAHZrjpXyGtmLQzZPej', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(289, 70, 'permxuwbaysnrkdpfqtequ03sosoh372lboswcltcehivij1at', 'crst3nicUAavuLOVPL3VrtB35MEm5bbDAHZrjpXyGtmLQzZPej', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(290, 69, 'perszeqqlxotzkdol19fzi6myhphahopgyjly1joyuwui8pp5w', 'crst3nicUAavuLOVPL3VrtB35MEm5bbDAHZrjpXyGtmLQzZPej', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(291, 82, 'pergrbey5eqwllvyaslnesrwle69k1fqenofn22ka9fznysdm1', 'crs08nEafFQkbwodExT7SVzF1CaDN0KKZkLBPOyMBUgdGzqwwu', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(292, 84, 'perstoeoi3adllmiityvawggk6dvuzrizsv8jh9i2zmkewezev', 'crs08nEafFQkbwodExT7SVzF1CaDN0KKZkLBPOyMBUgdGzqwwu', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(293, 83, 'perumewwbfhbbma1v8yrjargw3colnzqjnaahi4tkh5dtyefwr', 'crs08nEafFQkbwodExT7SVzF1CaDN0KKZkLBPOyMBUgdGzqwwu', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(294, 92, 'perstoeoi3adllmiityvawggk6dvuzrizsv8jh9i2zmkewezev', 'crs2uyz9RWbddk2N5Qp5C7QoFp8M4x6OxgL45bJ69Wte95RhDM', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(295, 89, 'perszeqqlxotzkdol19fzi6myhphahopgyjly1joyuwui8pp5w', 'crs2uyz9RWbddk2N5Qp5C7QoFp8M4x6OxgL45bJ69Wte95RhDM', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(296, 88, 'pergmt6ew6ktwh9ryzyk4ejjxdexvnj0hxzd6tmhcfynwncrqx', 'crs2uyz9RWbddk2N5Qp5C7QoFp8M4x6OxgL45bJ69Wte95RhDM', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(297, 90, 'pergrbey5eqwllvyaslnesrwle69k1fqenofn22ka9fznysdm1', 'crs2uyz9RWbddk2N5Qp5C7QoFp8M4x6OxgL45bJ69Wte95RhDM', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(298, 91, 'perkt3q4cts49bcef7vfwfcpvhzb5aehp8iehchcblhuetcihs', 'crs2uyz9RWbddk2N5Qp5C7QoFp8M4x6OxgL45bJ69Wte95RhDM', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(299, 94, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'crsxs5svxzuotvqwxff1ob8iv29pqrsaqrukoq14f6chbtd0ha', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(300, 100, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'crsxs5svxzuotvqwxff1ob8iv29pqrsaqrukoq14f6chbtd0ha', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(301, 96, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'crsxs5svxzuotvqwxff1ob8iv29pqrsaqrukoq14f6chbtd0ha', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(302, 93, 'perbxjpmbc8ggmjjreihsb4ykvm32eemg44vmpayyjzj1nfxeg', 'crsxs5svxzuotvqwxff1ob8iv29pqrsaqrukoq14f6chbtd0ha', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(303, 97, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'crsxs5svxzuotvqwxff1ob8iv29pqrsaqrukoq14f6chbtd0ha', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(304, 99, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'crsxs5svxzuotvqwxff1ob8iv29pqrsaqrukoq14f6chbtd0ha', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(305, 103, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', 'crsxs5svxzuotvqwxff1ob8iv29pqrsaqrukoq14f6chbtd0ha', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(306, 101, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'crsxs5svxzuotvqwxff1ob8iv29pqrsaqrukoq14f6chbtd0ha', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(307, 95, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'crsxs5svxzuotvqwxff1ob8iv29pqrsaqrukoq14f6chbtd0ha', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(308, 98, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'crsxs5svxzuotvqwxff1ob8iv29pqrsaqrukoq14f6chbtd0ha', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(309, 102, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', 'crsxs5svxzuotvqwxff1ob8iv29pqrsaqrukoq14f6chbtd0ha', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(310, 104, 'perg9rp46juqgkdpgshpujx5das61d74mm6yrya6jrwxh5tpqy', 'crsqdi22cfojef5qwhbjxzi3ie2rrnqikxwyvipoltmw5xxpe8', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(311, 105, 'perzd47x9sdine3wuuuez92ki1lbh8z9sej7nkxl9iy9yb42ry', 'crsqdi22cfojef5qwhbjxzi3ie2rrnqikxwyvipoltmw5xxpe8', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(312, 106, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'crsdwdhslavkm9qsxopjkqi0dmiuumayzp3czuswkpdwbbklja', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(313, 107, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'crsdwdhslavkm9qsxopjkqi0dmiuumayzp3czuswkpdwbbklja', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(314, 109, 'perrztidsfedzyavzys46kgk4qclxlvwsf4sen9mwn9dun9ega', 'crs60z4k7piupjyh6f5imeobrnqpwom8qiixbsdxxxbye51op5', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(315, 108, 'perwru0avsqkhwsjdekhptqtybblzyryglawm46bg8vyiosdcr', 'crs60z4k7piupjyh6f5imeobrnqpwom8qiixbsdxxxbye51op5', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(316, 111, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'crsummhub6scwbktedsaww33oitckmojv7gff4gjhfuoyktsk6', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(317, 110, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'crsummhub6scwbktedsaww33oitckmojv7gff4gjhfuoyktsk6', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(318, 114, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'crszrufpgwt3drvsmr47sy6rmgr5s7f8etqawcya5mvf4u8x5u', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(319, 115, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', 'crszrufpgwt3drvsmr47sy6rmgr5s7f8etqawcya5mvf4u8x5u', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(320, 116, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'crs2z1xerpdf74t8crcxrhu8yb9pagd1arv2pkb0xltdgopugp', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(321, 117, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'crs2z1xerpdf74t8crcxrhu8yb9pagd1arv2pkb0xltdgopugp', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(322, 119, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'crsx6z8yl0d0g3x2vymwqasfudlo08chscw3ongmcqktyfkrv1', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(323, 118, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'crsx6z8yl0d0g3x2vymwqasfudlo08chscw3ongmcqktyfkrv1', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(324, 123, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(325, 124, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(326, 122, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(327, 120, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(328, 125, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(329, 121, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(330, 128, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'crs0cvt8swenw00gsisfwlfpy2c5sxuajzfgdun5em0y6pp2pe', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(331, 129, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'crs0cvt8swenw00gsisfwlfpy2c5sxuajzfgdun5em0y6pp2pe', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(332, 130, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'crsexvm0ambj8ncammzkioxvns9dqzswzwsury5wzbvddfa3jv', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(333, 131, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'crsexvm0ambj8ncammzkioxvns9dqzswzwsury5wzbvddfa3jv', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(334, 133, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'crs8agedln3q8qceisx68mckfw5qqebsyoa93smzberfbrfynm', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(335, 135, 'peraieoiywxwnzpgo5muwfvspy6kgeprinkdpyk13rovvilhxa', 'crs8agedln3q8qceisx68mckfw5qqebsyoa93smzberfbrfynm', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(336, 134, 'perguln9rfwptrihli5ykomxfgfvlwszsmhbmzxntgke9sxbwv', 'crs8agedln3q8qceisx68mckfw5qqebsyoa93smzberfbrfynm', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(337, 132, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'crs8agedln3q8qceisx68mckfw5qqebsyoa93smzberfbrfynm', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(338, 136, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(339, 138, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(340, 139, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(341, 137, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(342, 140, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'crsmatwhwkpiarcawozkgj7vytuhh8obrjos7m4ck9jxz2lj1v', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(343, 141, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'crsmatwhwkpiarcawozkgj7vytuhh8obrjos7m4ck9jxz2lj1v', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(344, 144, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'crsmatwhwkpiarcawozkgj7vytuhh8obrjos7m4ck9jxz2lj1v', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(345, 145, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'crsmatwhwkpiarcawozkgj7vytuhh8obrjos7m4ck9jxz2lj1v', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(346, 142, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'crsmatwhwkpiarcawozkgj7vytuhh8obrjos7m4ck9jxz2lj1v', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(347, 143, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'crsmatwhwkpiarcawozkgj7vytuhh8obrjos7m4ck9jxz2lj1v', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(348, 147, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'crspwvpbesv4kau98etdfbtfen607m8cfpkf2v5bradcvubzat', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(349, 146, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'crspwvpbesv4kau98etdfbtfen607m8cfpkf2v5bradcvubzat', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(350, 148, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'crspwvpbesv4kau98etdfbtfen607m8cfpkf2v5bradcvubzat', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(351, 149, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', 'crspwvpbesv4kau98etdfbtfen607m8cfpkf2v5bradcvubzat', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(352, 153, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'crsmkjiz9abpd8d6prsduhmiep2orvy7czh7vry5kz9t4arybw', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(353, 151, 'perrztidsfedzyavzys46kgk4qclxlvwsf4sen9mwn9dun9ega', 'crsmkjiz9abpd8d6prsduhmiep2orvy7czh7vry5kz9t4arybw', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(354, 152, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'crsmkjiz9abpd8d6prsduhmiep2orvy7czh7vry5kz9t4arybw', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(355, 150, 'perwru0avsqkhwsjdekhptqtybblzyryglawm46bg8vyiosdcr', 'crsmkjiz9abpd8d6prsduhmiep2orvy7czh7vry5kz9t4arybw', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(356, 154, 'perg9rp46juqgkdpgshpujx5das61d74mm6yrya6jrwxh5tpqy', 'crsc5qmg5rgcambmf3ncnx9vbdjqir1fsfwnun42fdwjuezqgz', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(357, 155, 'perzd47x9sdine3wuuuez92ki1lbh8z9sej7nkxl9iy9yb42ry', 'crsc5qmg5rgcambmf3ncnx9vbdjqir1fsfwnun42fdwjuezqgz', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(358, 159, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 'crs0ajdemljhkfizasd9b2qlrjntgri77sf2umbwccqrfr3h3d', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(359, 158, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 'crs0ajdemljhkfizasd9b2qlrjntgri77sf2umbwccqrfr3h3d', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(360, 161, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'crsus1srfb7snhvzg1rx3dlobgvwupdlxvu6iy9y1e4mliuykv', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(361, 160, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'crsus1srfb7snhvzg1rx3dlobgvwupdlxvu6iy9y1e4mliuykv', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(362, 167, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(363, 163, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(364, 165, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(365, 166, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(366, 164, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(367, 162, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(368, 170, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(369, 168, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(370, 169, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(371, 171, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(372, 173, 'peraieoiywxwnzpgo5muwfvspy6kgeprinkdpyk13rovvilhxa', 'crsq3zxu8nogy2eqp03ssegtfrpkj22wyk99rwiknded4mlg6l', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(373, 172, 'perguln9rfwptrihli5ykomxfgfvlwszsmhbmzxntgke9sxbwv', 'crsq3zxu8nogy2eqp03ssegtfrpkj22wyk99rwiknded4mlg6l', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(374, 175, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'crsus1srfb7snhvzg1rx3dlobgvwupdlxvu6iy9y1e4mliuykv', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(375, 174, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'crsus1srfb7snhvzg1rx3dlobgvwupdlxvu6iy9y1e4mliuykv', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(376, 177, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'crsus1srfb7snhvzg1rx3dlobgvwupdlxvu6iy9y1e4mliuykv', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(377, 176, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'crsus1srfb7snhvzg1rx3dlobgvwupdlxvu6iy9y1e4mliuykv', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(378, 179, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'crstoxmqwnfe8uoufo5kvu8zwucruhdxehqpytrfezqzbfuy3d', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(379, 178, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'crstoxmqwnfe8uoufo5kvu8zwucruhdxehqpytrfezqzbfuy3d', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(380, 181, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'crsphkwcmxvgyziyca7h3bmvv8gqynbzlq8rabuer6sz3hthm6', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(381, 180, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'crsphkwcmxvgyziyca7h3bmvv8gqynbzlq8rabuer6sz3hthm6', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(382, 184, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(383, 183, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(384, 182, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(385, 185, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(386, 189, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(387, 190, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(388, 188, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(389, 186, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(390, 191, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(391, 187, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(392, 192, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'crsn8i98sjmprkfeh2xkzpjvs4lygyufavyengdrtbmncalwo0', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(393, 193, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'crsn8i98sjmprkfeh2xkzpjvs4lygyufavyengdrtbmncalwo0', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(394, 212, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'crs2hjztfi5othrg9fzdp50sbcmhlyjloxlmfmrzlbqhqj4dt9', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(395, 194, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'crs2hjztfi5othrg9fzdp50sbcmhlyjloxlmfmrzlbqhqj4dt9', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(396, 195, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'crskznbtkwrwkbsb5vhdkbkoxv1cavxvfp6piwkq10ur4tyjek', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(397, 196, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'crskznbtkwrwkbsb5vhdkbkoxv1cavxvfp6piwkq10ur4tyjek', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(398, 198, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(399, 200, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(400, 201, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(401, 199, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(402, 205, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(403, 203, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(404, 202, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(405, 204, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(406, 209, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(407, 210, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(408, 208, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(409, 206, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(410, 211, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(411, 207, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(412, 216, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'crs7yyujni7blwyhy8gqgvxmrlvfb8evbctcampnmvjbn5igad', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(413, 214, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'crs7yyujni7blwyhy8gqgvxmrlvfb8evbctcampnmvjbn5igad', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(414, 215, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'crs7yyujni7blwyhy8gqgvxmrlvfb8evbctcampnmvjbn5igad', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(415, 213, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'crs7yyujni7blwyhy8gqgvxmrlvfb8evbctcampnmvjbn5igad', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(416, 218, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'crsm6lebfszqbvvcx4ky0xmblneril4fwudtcerw8ip5eyx6vq', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(417, 217, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'crsm6lebfszqbvvcx4ky0xmblneril4fwudtcerw8ip5eyx6vq', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(418, 222, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'crs7yyujni7blwyhy8gqgvxmrlvfb8evbctcampnmvjbn5igad', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(419, 220, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'crs7yyujni7blwyhy8gqgvxmrlvfb8evbctcampnmvjbn5igad', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(420, 221, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'crs7yyujni7blwyhy8gqgvxmrlvfb8evbctcampnmvjbn5igad', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(421, 219, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'crs7yyujni7blwyhy8gqgvxmrlvfb8evbctcampnmvjbn5igad', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(422, 224, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'crs7yyujni7blwyhy8gqgvxmrlvfb8evbctcampnmvjbn5igad', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(423, 223, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'crs7yyujni7blwyhy8gqgvxmrlvfb8evbctcampnmvjbn5igad', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(424, 226, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'crshy8z5anwwnats7a7ci72sptqcvadrvgdn9dahpsysretcis', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(425, 225, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'crshy8z5anwwnats7a7ci72sptqcvadrvgdn9dahpsysretcis', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(426, 227, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'crsga1pwuyunzinrcamuxqldlvaufwzzwtndkucfuqvjju6xmk', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(427, 228, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'crsga1pwuyunzinrcamuxqldlvaufwzzwtndkucfuqvjju6xmk', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(428, 232, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'crsh9hpt4jmnfzyt0uv8gossdxputjdzoawnx6nzmjfr9jjggx', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(429, 230, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'crsh9hpt4jmnfzyt0uv8gossdxputjdzoawnx6nzmjfr9jjggx', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(430, 231, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'crsh9hpt4jmnfzyt0uv8gossdxputjdzoawnx6nzmjfr9jjggx', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(431, 229, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'crsh9hpt4jmnfzyt0uv8gossdxputjdzoawnx6nzmjfr9jjggx', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(432, 234, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'crs0i8xjonzxqsafbgcssem8xeqjdzb49cqw2oxzpji8vrxs9x', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(433, 233, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'crs0i8xjonzxqsafbgcssem8xeqjdzb49cqw2oxzpji8vrxs9x', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(434, 235, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'crssbxbyveq2o9ghlrbfsfemenomcpbnhwv96dijiobng3koxk', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(435, 236, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', 'crssbxbyveq2o9ghlrbfsfemenomcpbnhwv96dijiobng3koxk', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(436, 237, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'crsycn9zp1t0ie2rmm1jyrcx83t3lczsaslnz6tjzes1ljv3wp', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(437, 238, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'crsycn9zp1t0ie2rmm1jyrcx83t3lczsaslnz6tjzes1ljv3wp', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(438, 239, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'crshtfov82vuonqdk3mfw9gugezfcaamyf3btm2g0lqo2lask2', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(439, 240, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'crshtfov82vuonqdk3mfw9gugezfcaamyf3btm2g0lqo2lask2', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(440, 246, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(441, 242, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(442, 244, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(443, 245, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(444, 243, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(445, 241, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(446, 247, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'crscynwlguxfc52l5twbptlomagxbbiwudrg714ojamrjp54vw', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(447, 248, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'crscynwlguxfc52l5twbptlomagxbbiwudrg714ojamrjp54vw', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(448, 250, 'peraieoiywxwnzpgo5muwfvspy6kgeprinkdpyk13rovvilhxa', 'crsfvotpsk2bh0fhsl2vwouci0phcpzwleacvtitmvyxqyvphk', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(449, 249, 'perguln9rfwptrihli5ykomxfgfvlwszsmhbmzxntgke9sxbwv', 'crsfvotpsk2bh0fhsl2vwouci0phcpzwleacvtitmvyxqyvphk', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(450, 252, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'crsomggsrmxcdy7ufzgifnef7y0211dfvqlegnkmf5ex1zbwnk', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(451, 251, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'crsomggsrmxcdy7ufzgifnef7y0211dfvqlegnkmf5ex1zbwnk', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(452, 254, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'crsf9fl4kgl1ghnwhxmxbpjfntcdxqtedffux4hxthrj4tffoh', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(453, 253, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'crsf9fl4kgl1ghnwhxmxbpjfntcdxqtedffux4hxthrj4tffoh', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(454, 256, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(455, 258, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(456, 255, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(457, 257, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(458, 260, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(459, 262, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(460, 259, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(461, 261, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(462, 263, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(463, 265, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(464, 264, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(465, 266, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(466, 268, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(467, 270, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(468, 267, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(469, 269, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(470, 271, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'crsexzeaaxs3ntruq8qpedyddw9mg7ffqwbhi3arp5tqrlssbi', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(471, 272, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'crsexzeaaxs3ntruq8qpedyddw9mg7ffqwbhi3arp5tqrlssbi', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(472, 274, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'crshaym99ctu3zuqm0bp0ipvps5h9iqkx2coivmgipcq41rjyi', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(473, 273, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'crshaym99ctu3zuqm0bp0ipvps5h9iqkx2coivmgipcq41rjyi', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(474, 275, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'crsgpm3og4ybx010gwer8zjliarmhfc4p9gpljgdmke7bmfuex', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(475, 276, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', 'crsgpm3og4ybx010gwer8zjliarmhfc4p9gpljgdmke7bmfuex', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(476, 278, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'crsgpm3og4ybx010gwer8zjliarmhfc4p9gpljgdmke7bmfuex', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(477, 277, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'crsgpm3og4ybx010gwer8zjliarmhfc4p9gpljgdmke7bmfuex', '2020-10-29 14:00:37', '2020-10-29 14:00:37', NULL),
(478, 279, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'crsrd4xjgfjongsporhg1is8vqvowubgn4ne5noyooyrczpvnt', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(479, 280, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'crsrd4xjgfjongsporhg1is8vqvowubgn4ne5noyooyrczpvnt', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(480, 282, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'crsjhfti0cryxh2cnt3x2veufqvniimo0u6daxmyxccqureqnm', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(481, 281, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'crsjhfti0cryxh2cnt3x2veufqvniimo0u6daxmyxccqureqnm', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(482, 283, 'perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', 'crsx3syabwlpkrfq5ckq5ejykhh38a1tynhjvekz5fqyfcxpyg', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(483, 286, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', 'crsx3syabwlpkrfq5ckq5ejykhh38a1tynhjvekz5fqyfcxpyg', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(484, 284, 'perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', 'crsx3syabwlpkrfq5ckq5ejykhh38a1tynhjvekz5fqyfcxpyg', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(485, 285, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', 'crsx3syabwlpkrfq5ckq5ejykhh38a1tynhjvekz5fqyfcxpyg', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(486, 287, 'perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', 'crsx3syabwlpkrfq5ckq5ejykhh38a1tynhjvekz5fqyfcxpyg', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(487, 290, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', 'crsx3syabwlpkrfq5ckq5ejykhh38a1tynhjvekz5fqyfcxpyg', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(488, 288, 'perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', 'crsx3syabwlpkrfq5ckq5ejykhh38a1tynhjvekz5fqyfcxpyg', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(489, 289, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', 'crsx3syabwlpkrfq5ckq5ejykhh38a1tynhjvekz5fqyfcxpyg', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(490, 291, 'perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', 'crsx3syabwlpkrfq5ckq5ejykhh38a1tynhjvekz5fqyfcxpyg', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(491, 294, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', 'crsx3syabwlpkrfq5ckq5ejykhh38a1tynhjvekz5fqyfcxpyg', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(492, 292, 'perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', 'crsx3syabwlpkrfq5ckq5ejykhh38a1tynhjvekz5fqyfcxpyg', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(493, 293, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', 'crsx3syabwlpkrfq5ckq5ejykhh38a1tynhjvekz5fqyfcxpyg', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(494, 295, 'perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', 'crsx3syabwlpkrfq5ckq5ejykhh38a1tynhjvekz5fqyfcxpyg', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(495, 298, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', 'crsx3syabwlpkrfq5ckq5ejykhh38a1tynhjvekz5fqyfcxpyg', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(496, 296, 'perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', 'crsx3syabwlpkrfq5ckq5ejykhh38a1tynhjvekz5fqyfcxpyg', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(497, 297, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', 'crsx3syabwlpkrfq5ckq5ejykhh38a1tynhjvekz5fqyfcxpyg', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(498, 300, 'perrztidsfedzyavzys46kgk4qclxlvwsf4sen9mwn9dun9ega', 'crsh9hpt4jmnfzyt0uv8gossdxputjdzoawnx6nzmjfr9jjggx', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(499, 299, 'perwru0avsqkhwsjdekhptqtybblzyryglawm46bg8vyiosdcr', 'crsh9hpt4jmnfzyt0uv8gossdxputjdzoawnx6nzmjfr9jjggx', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(500, 302, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(501, 301, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(502, 304, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(503, 303, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(504, 305, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(505, 307, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(506, 308, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(507, 306, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(508, 312, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(509, 313, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(510, 311, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(511, 309, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(512, 314, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(513, 310, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(514, 318, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'crsdlk5ye1cgepbcska99ep8ey7rjwxjiubzpdr4p5gv23ez6o', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(515, 316, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'crsdlk5ye1cgepbcska99ep8ey7rjwxjiubzpdr4p5gv23ez6o', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(516, 315, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'crsdlk5ye1cgepbcska99ep8ey7rjwxjiubzpdr4p5gv23ez6o', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(517, 317, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'crsdlk5ye1cgepbcska99ep8ey7rjwxjiubzpdr4p5gv23ez6o', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(518, 319, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'crstoxmqwnfe8uoufo5kvu8zwucruhdxehqpytrfezqzbfuy3d', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(519, 320, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', 'crstoxmqwnfe8uoufo5kvu8zwucruhdxehqpytrfezqzbfuy3d', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(520, 321, 'perg9rp46juqgkdpgshpujx5das61d74mm6yrya6jrwxh5tpqy', 'crstoxmqwnfe8uoufo5kvu8zwucruhdxehqpytrfezqzbfuy3d', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(521, 322, 'perzd47x9sdine3wuuuez92ki1lbh8z9sej7nkxl9iy9yb42ry', 'crstoxmqwnfe8uoufo5kvu8zwucruhdxehqpytrfezqzbfuy3d', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(522, 324, 'perrztidsfedzyavzys46kgk4qclxlvwsf4sen9mwn9dun9ega', 'crs3wrpcwl31szavsj69umdxe0jdqmhhvulyidy4s8e9mgvkdh', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(523, 323, 'perwru0avsqkhwsjdekhptqtybblzyryglawm46bg8vyiosdcr', 'crs3wrpcwl31szavsj69umdxe0jdqmhhvulyidy4s8e9mgvkdh', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(524, 327, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'crs3wrpcwl31szavsj69umdxe0jdqmhhvulyidy4s8e9mgvkdh', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(525, 328, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'crs3wrpcwl31szavsj69umdxe0jdqmhhvulyidy4s8e9mgvkdh', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(526, 325, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'crs3wrpcwl31szavsj69umdxe0jdqmhhvulyidy4s8e9mgvkdh', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(527, 326, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'crs3wrpcwl31szavsj69umdxe0jdqmhhvulyidy4s8e9mgvkdh', '2020-10-29 14:00:38', '2020-10-29 14:00:38', NULL),
(528, 329, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'crswt7iugyilxilux6l99pxbphmyrsczkd5avfqzndiikesum8', '2020-10-29 14:03:11', '2020-10-29 14:03:11', NULL),
(529, 330, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'crswt7iugyilxilux6l99pxbphmyrsczkd5avfqzndiikesum8', '2020-10-29 14:03:11', '2020-10-29 14:03:11', NULL),
(530, 331, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'crswt7iugyilxilux6l99pxbphmyrsczkd5avfqzndiikesum8', '2020-10-29 14:47:09', '2020-10-29 14:47:09', NULL),
(531, 332, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'crswt7iugyilxilux6l99pxbphmyrsczkd5avfqzndiikesum8', '2020-10-29 14:47:09', '2020-10-29 14:47:09', NULL),
(532, 333, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'crsubkivbijsvsscobfuw5y0v3kb13pj5khd35qwd2pg1zlijr', '2020-10-29 14:50:48', '2020-10-29 14:50:48', NULL),
(533, 334, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'crsubkivbijsvsscobfuw5y0v3kb13pj5khd35qwd2pg1zlijr', '2020-10-29 14:50:48', '2020-10-29 14:50:48', NULL),
(534, 335, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'crs3wrpcwl31szavsj69umdxe0jdqmhhvulyidy4s8e9mgvkdh', '2020-10-29 14:54:51', '2020-10-29 14:54:51', NULL),
(535, 336, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'crs3wrpcwl31szavsj69umdxe0jdqmhhvulyidy4s8e9mgvkdh', '2020-10-29 14:54:51', '2020-10-29 14:54:51', NULL),
(536, 337, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'crs3wrpcwl31szavsj69umdxe0jdqmhhvulyidy4s8e9mgvkdh', '2020-10-29 15:08:40', '2020-10-29 15:08:40', NULL),
(537, 338, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'crs3wrpcwl31szavsj69umdxe0jdqmhhvulyidy4s8e9mgvkdh', '2020-10-29 15:08:40', '2020-10-29 15:08:40', NULL),
(538, 339, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'crs3wrpcwl31szavsj69umdxe0jdqmhhvulyidy4s8e9mgvkdh', '2020-10-29 15:08:40', '2020-10-29 15:08:40', NULL),
(539, 340, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'crs3wrpcwl31szavsj69umdxe0jdqmhhvulyidy4s8e9mgvkdh', '2020-10-29 15:08:40', '2020-10-29 15:08:40', NULL),
(540, 341, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'crswt7iugyilxilux6l99pxbphmyrsczkd5avfqzndiikesum8', '2020-10-29 15:10:38', '2020-10-29 15:10:38', NULL),
(541, 342, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'crswt7iugyilxilux6l99pxbphmyrsczkd5avfqzndiikesum8', '2020-10-29 15:10:38', '2020-10-29 15:10:38', NULL),
(542, 343, 'peraieoiywxwnzpgo5muwfvspy6kgeprinkdpyk13rovvilhxa', 'crsbp9u7hwzonlan9rllovrs4ylozudey6n0hveauosjbeu4o9', '2020-10-29 16:49:35', '2020-10-29 16:49:35', NULL),
(543, 344, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'crsbp9u7hwzonlan9rllovrs4ylozudey6n0hveauosjbeu4o9', '2020-10-29 16:49:35', '2020-10-29 16:49:35', NULL),
(544, 345, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'crsbp9u7hwzonlan9rllovrs4ylozudey6n0hveauosjbeu4o9', '2020-10-29 16:49:35', '2020-10-29 16:49:35', NULL),
(545, 346, 'perxmu1lji6h2kzmcpqdiq9swpoihhpy6p9fbsu2ceveejhcee', 'crsbp9u7hwzonlan9rllovrs4ylozudey6n0hveauosjbeu4o9', '2020-10-29 16:49:35', '2020-10-29 16:49:35', NULL),
(546, 347, 'perb3s07xkyxj30ivxtqmazrovthu9omqtc4opadr1s8418xgd', 'crsbp9u7hwzonlan9rllovrs4ylozudey6n0hveauosjbeu4o9', '2020-10-29 16:49:35', '2020-10-29 16:49:35', NULL),
(547, 348, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'crsedkcarmjlw0rqevxczfqzybwim6e53llqfcqrbyw4otdsaw', '2020-10-29 16:59:21', '2020-10-29 16:59:21', NULL),
(548, 349, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', 'crsedkcarmjlw0rqevxczfqzybwim6e53llqfcqrbyw4otdsaw', '2020-10-29 16:59:21', '2020-10-29 16:59:21', NULL);
INSERT INTO `period_courses` (`id`, `scheduled_class_period`, `period_id`, `course_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(549, 350, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', 'crsedkcarmjlw0rqevxczfqzybwim6e53llqfcqrbyw4otdsaw', '2020-10-29 16:59:21', '2020-10-29 16:59:21', NULL),
(550, 351, 'pertohzyl5chsyngidkp36bwrdw3dykh2h6r2qcadtxet90uyy', 'crsedkcarmjlw0rqevxczfqzybwim6e53llqfcqrbyw4otdsaw', '2020-10-29 16:59:21', '2020-10-29 16:59:21', NULL),
(551, 352, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'crshdatktwkn7s5jzjb8hv2hqvgo4l5f7hsc7o1gmcgqib38mu', '2020-10-29 17:22:01', '2020-10-29 17:22:01', NULL),
(552, 353, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'crshdatktwkn7s5jzjb8hv2hqvgo4l5f7hsc7o1gmcgqib38mu', '2020-10-29 17:22:01', '2020-10-29 17:22:01', NULL),
(553, 354, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'crse32uq5qymvcsauj0bsiux22pxwcncfe0njcqtardg30mobr', '2020-10-29 17:27:40', '2020-10-29 17:27:40', NULL),
(554, 355, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'crse32uq5qymvcsauj0bsiux22pxwcncfe0njcqtardg30mobr', '2020-10-29 17:27:40', '2020-10-29 17:27:40', NULL),
(555, 356, 'perymq7kpd8jvoqtv6sevysv5cjferskob4gw4affbc5rwcq4j', 'crs9uw0oljsl3sirzldqcr3e3b2mzmd0a4xjabp7pyluwv09d1', '2020-10-29 20:58:09', '2020-10-29 20:58:09', NULL),
(556, 357, 'peroaq0ukjtvznmgcboptwzseyvh9dc6jd6hk1kxlvnlvvajdp', 'crszn2pta705af4i8dvjdtc612webq9lltq7wau9uofbq1thw3', '2020-10-29 21:06:49', '2020-10-29 21:06:49', NULL),
(557, 358, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'crsh9qbwf4nw9ppfbrlq1sgdsxmsirb0unisnfki52r6uawlmp', '2020-10-29 22:26:28', '2020-10-29 22:26:28', NULL),
(558, 359, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'crsh9qbwf4nw9ppfbrlq1sgdsxmsirb0unisnfki52r6uawlmp', '2020-10-29 22:26:28', '2020-10-29 22:26:28', NULL),
(559, 360, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'crskk2kv6ik9pr9ekbwzi6cub5ncm9jkbl3eb2j9tkwert9b32', '2020-10-29 22:29:41', '2020-10-29 22:29:41', NULL),
(560, 361, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'crskk2kv6ik9pr9ekbwzi6cub5ncm9jkbl3eb2j9tkwert9b32', '2020-10-29 22:29:41', '2020-10-29 22:29:41', NULL),
(561, 362, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'crsemn1dytagxknipex7fqydscwajjy6ai0cirj0nsgpd0jisl', '2020-10-29 22:35:23', '2020-10-29 22:35:23', NULL),
(562, 363, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'crsemn1dytagxknipex7fqydscwajjy6ai0cirj0nsgpd0jisl', '2020-10-29 22:35:24', '2020-10-29 22:35:24', NULL),
(563, 364, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'crswhxeamorbm4h3pkknbqbohvclhgm68lids4k0xl1dwabqw6', '2020-10-29 22:53:57', '2020-10-29 22:53:57', NULL),
(564, 365, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'crswhxeamorbm4h3pkknbqbohvclhgm68lids4k0xl1dwabqw6', '2020-10-29 22:53:57', '2020-10-29 22:53:57', NULL),
(565, 366, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'crsroderluioa0j2a6mk9w71enncatifzlnjym1pouerti5yhq', '2020-10-29 22:55:47', '2020-10-29 22:55:47', NULL),
(566, 367, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'crsroderluioa0j2a6mk9w71enncatifzlnjym1pouerti5yhq', '2020-10-29 22:55:47', '2020-10-29 22:55:47', NULL),
(567, 368, 'perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', 'crskzfjdqsfpjerbgvkbm6p9qxwkm2fohulommifufzuwcp8ja', '2020-10-29 22:59:46', '2020-10-29 22:59:46', NULL),
(568, 369, 'perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', 'crskzfjdqsfpjerbgvkbm6p9qxwkm2fohulommifufzuwcp8ja', '2020-10-29 22:59:46', '2020-10-29 22:59:46', NULL),
(569, 370, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'crsyozu7apf5pfbqpge0n2g632gkdufpcuajqdyz9vi1r38tnx', '2020-10-29 23:01:59', '2020-10-29 23:01:59', NULL),
(570, 371, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'crsyozu7apf5pfbqpge0n2g632gkdufpcuajqdyz9vi1r38tnx', '2020-10-29 23:01:59', '2020-10-29 23:01:59', NULL),
(571, 372, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'crsyozu7apf5pfbqpge0n2g632gkdufpcuajqdyz9vi1r38tnx', '2020-10-29 23:01:59', '2020-10-29 23:01:59', NULL),
(572, 373, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'crsyozu7apf5pfbqpge0n2g632gkdufpcuajqdyz9vi1r38tnx', '2020-10-29 23:01:59', '2020-10-29 23:01:59', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `period_courses_up`
--

CREATE TABLE `period_courses_up` (
  `id` int(11) NOT NULL,
  `scheduled_class_period` int(11) DEFAULT NULL,
  `period_id` varchar(50) NOT NULL,
  `course_id` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `period_courses_up`
--

INSERT INTO `period_courses_up` (`id`, `scheduled_class_period`, `period_id`, `course_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, NULL, 'per5lwazcsaa4ii8pt4smoeklawxpn0e1w5ailaa6rczkv0dz7', 'crs08nEafFQkbwodExT7SVzF1CaDN0KKZkLBPOyMBUgdGzqwwu', '2020-08-16 00:58:46', '2020-08-16 00:58:46', NULL),
(6, NULL, 'per04dnyqr37duvhmayahknvzktefvtozvmgr7wynw9qbjc8of', 'crs08nEafFQkbwodExT7SVzF1CaDN0KKZkLBPOyMBUgdGzqwwu', '2020-08-16 00:58:48', '2020-08-16 00:58:48', NULL),
(8, NULL, 'perkt3q4cts49bcef7vfwfcpvhzb5aehp8iehchcblhuetcihs', 'crs08nEafFQkbwodExT7SVzF1CaDN0KKZkLBPOyMBUgdGzqwwu', '2020-08-16 00:58:49', '2020-08-16 00:58:49', NULL),
(9, NULL, 'peru0iwj1wbmnqxuhz6ndc7asragtkkrenppz7wsdo0wz8webe', 'crs08nEafFQkbwodExT7SVzF1CaDN0KKZkLBPOyMBUgdGzqwwu', '2020-08-16 00:58:49', '2020-08-16 00:58:49', NULL),
(10, NULL, 'percqvce9vcsoeujmew1c2wrl55uqr3gn847tn6r48g5ettygi', 'crs08nEafFQkbwodExT7SVzF1CaDN0KKZkLBPOyMBUgdGzqwwu', '2020-08-16 00:58:49', '2020-08-16 00:58:49', NULL),
(11, NULL, 'perkbpyc56nzx1efivewfamw44awbxz8ftcg8yj0wral5eblka', 'crs08nEafFQkbwodExT7SVzF1CaDN0KKZkLBPOyMBUgdGzqwwu', '2020-08-16 00:58:50', '2020-08-16 00:58:50', NULL),
(12, NULL, 'per5gkvtt1yysgwpijvvtad2zazd7xazw3esdane7y3u3vxr5m', 'crs08nEafFQkbwodExT7SVzF1CaDN0KKZkLBPOyMBUgdGzqwwu', '2020-08-16 00:58:50', '2020-08-16 00:58:50', NULL),
(17, NULL, 'perelhrhmt4oxkoyhjnh41nhvobli4bsbmbyhey4jzg2wiqt5d', 'crsnBxNjQH6rVnu3q8gL2RKObnQigeHULlRfa1E4JeJT1Ut6lN', '2020-08-16 01:11:17', '2020-08-16 01:11:17', NULL),
(18, NULL, 'permxuwbaysnrkdpfqtequ03sosoh372lboswcltcehivij1at', 'crs08nEafFQkbwodExT7SVzF1CaDN0KKZkLBPOyMBUgdGzqwwu', '2020-08-16 01:45:44', '2020-08-16 01:45:44', NULL),
(19, NULL, 'pergqyed91lh5bqyli0qjoguzc4ftnnbk2u25rcclkihl4m6gz', 'crsQzuuzBIKUE0DQZ6eZIqN1i8XBRo4rZv4QBl71fvJz0Go2iZ', '2020-08-16 06:55:28', '2020-08-16 06:55:28', NULL),
(20, NULL, 'persqlke1coahwzk84f64feuiacj3qh6zau8vk3lsbuklmdwrn', 'crsQzuuzBIKUE0DQZ6eZIqN1i8XBRo4rZv4QBl71fvJz0Go2iZ', '2020-08-16 06:55:28', '2020-08-16 06:55:28', NULL),
(21, NULL, 'per4ul4ot18wvbpzfibkqoqtdvthlngyztuom3k0i0npzmgrya', 'crsQzuuzBIKUE0DQZ6eZIqN1i8XBRo4rZv4QBl71fvJz0Go2iZ', '2020-08-16 06:55:28', '2020-08-16 06:55:28', NULL),
(22, NULL, 'perrjlgen8ljlsb1hlokcr6xyueuk2pu6hrmvogzb6thjjwr6d', 'crsQzuuzBIKUE0DQZ6eZIqN1i8XBRo4rZv4QBl71fvJz0Go2iZ', '2020-08-16 06:55:29', '2020-08-16 06:55:29', NULL),
(23, NULL, 'perszeqqlxotzkdol19fzi6myhphahopgyjly1joyuwui8pp5w', 'crsSJD05MJt85yo8SezHDnCUEbzDu2Hdi5G7rW6Hdzg7nbGlN6', '2020-08-16 15:37:40', '2020-08-16 15:37:40', NULL),
(24, NULL, 'perstoeoi3adllmiityvawggk6dvuzrizsv8jh9i2zmkewezev', 'crsSJD05MJt85yo8SezHDnCUEbzDu2Hdi5G7rW6Hdzg7nbGlN6', '2020-08-16 15:37:41', '2020-08-16 15:37:41', NULL),
(25, NULL, 'perjriv6y5pbyga8s4o5a4vvnyfu7eqrwpuczgespdh8lmaah5', 'crsSJD05MJt85yo8SezHDnCUEbzDu2Hdi5G7rW6Hdzg7nbGlN6', '2020-08-16 15:37:42', '2020-08-16 15:37:42', NULL),
(26, NULL, 'per5gkvtt1yysgwpijvvtad2zazd7xazw3esdane7y3u3vxr5m', 'crsSJD05MJt85yo8SezHDnCUEbzDu2Hdi5G7rW6Hdzg7nbGlN6', '2020-08-16 15:37:43', '2020-08-16 15:37:43', NULL),
(27, NULL, 'perc1kftnzwtwlnwmvkwi67isgurlbaabcnrf79j7cyokqagwp', 'crsSJD05MJt85yo8SezHDnCUEbzDu2Hdi5G7rW6Hdzg7nbGlN6', '2020-08-16 15:37:43', '2020-08-16 15:37:43', NULL),
(28, NULL, 'perkbpyc56nzx1efivewfamw44awbxz8ftcg8yj0wral5eblka', 'crsSJD05MJt85yo8SezHDnCUEbzDu2Hdi5G7rW6Hdzg7nbGlN6', '2020-08-16 15:37:44', '2020-08-16 15:37:44', NULL),
(29, NULL, 'perzte0nthz9cfqqhriwmhgsf3qwwk4ndkoxskqlx7gl8vbofj', 'crs2uyz9RWbddk2N5Qp5C7QoFp8M4x6OxgL45bJ69Wte95RhDM', '2020-08-16 15:44:06', '2020-08-16 15:44:06', NULL),
(30, NULL, 'persu0zpmgrwc3qojertzh0pkfqfgd7mgbkcpexenhoqpqptuv', 'crs2uyz9RWbddk2N5Qp5C7QoFp8M4x6OxgL45bJ69Wte95RhDM', '2020-08-16 15:44:07', '2020-08-16 15:44:07', NULL),
(31, NULL, 'perxft9lice16ed18mec2hxsxyzowy80bnvdal9u5jdkzgknnk', 'crs2uyz9RWbddk2N5Qp5C7QoFp8M4x6OxgL45bJ69Wte95RhDM', '2020-08-16 15:44:07', '2020-08-16 15:44:07', NULL),
(32, NULL, 'per04dnyqr37duvhmayahknvzktefvtozvmgr7wynw9qbjc8of', 'crs2uyz9RWbddk2N5Qp5C7QoFp8M4x6OxgL45bJ69Wte95RhDM', '2020-08-16 15:44:08', '2020-08-16 15:44:08', NULL),
(33, NULL, 'pergmt6ew6ktwh9ryzyk4ejjxdexvnj0hxzd6tmhcfynwncrqx', 'crst3nicUAavuLOVPL3VrtB35MEm5bbDAHZrjpXyGtmLQzZPej', '2020-08-17 21:26:17', '2020-08-17 21:26:17', NULL),
(34, NULL, 'perkt3q4cts49bcef7vfwfcpvhzb5aehp8iehchcblhuetcihs', 'crst3nicUAavuLOVPL3VrtB35MEm5bbDAHZrjpXyGtmLQzZPej', '2020-08-17 21:26:17', '2020-08-17 21:26:17', NULL),
(35, NULL, 'permxuwbaysnrkdpfqtequ03sosoh372lboswcltcehivij1at', 'crst3nicUAavuLOVPL3VrtB35MEm5bbDAHZrjpXyGtmLQzZPej', '2020-08-17 21:26:18', '2020-08-17 21:26:18', NULL),
(36, NULL, 'per5m1vstjsljz7xdqiwmqvqzqubn8wnkhdnxnwlgl4wqqyflj', 'crsUjZoodeG7McfF62ym4DklG0ikdKq4L4aSVXwO6YAa2E4ggC', '2020-08-17 21:27:50', '2020-08-17 21:27:50', NULL),
(37, NULL, 'perz9kaxhbhvtpzq26s2dr80ozne4oivjyntfmqx6uhddma2nk', 'crsUjZoodeG7McfF62ym4DklG0ikdKq4L4aSVXwO6YAa2E4ggC', '2020-08-17 21:27:50', '2020-08-17 21:27:50', NULL),
(38, NULL, 'perae0gasuwbyxpc9fhag2xg1wi1whmq3cd7jlvc378oyehb9o', 'crsQzuuzBIKUE0DQZ6eZIqN1i8XBRo4rZv4QBl71fvJz0Go2iZ', '2020-08-17 21:29:39', '2020-08-17 21:29:39', NULL),
(39, NULL, 'perdshrsn5ewd8hlqtu0lldpin2gotfbxrmixlfjjv3ndlzyir', 'crsQzuuzBIKUE0DQZ6eZIqN1i8XBRo4rZv4QBl71fvJz0Go2iZ', '2020-08-17 21:29:39', '2020-08-17 21:29:39', NULL),
(40, NULL, 'perad4toxiyt1uue7ocbwetnnxohxc0cecbzoeirgrlfumdxor', 'crsnGlJrNyaar7CTfNadRmyPrQTS6VEhUDGExNC62RQBjF212b', '2020-08-17 21:44:59', '2020-08-17 21:44:59', NULL),
(41, NULL, 'per4iumevk9tdnve2royyrogyzyrmzzsxhkylupl48dsireoir', 'crsk3jQBe8nd8rXrh1w0sZI14blwhcjmbp8WCx8mF24qmsdz7q', '2020-08-29 18:49:23', '2020-08-29 18:49:23', NULL),
(42, NULL, 'perszeqqlxotzkdol19fzi6myhphahopgyjly1joyuwui8pp5w', 'crst3nicUAavuLOVPL3VrtB35MEm5bbDAHZrjpXyGtmLQzZPej', '2020-09-03 16:21:58', '2020-09-03 16:21:58', NULL),
(54, NULL, 'pergrbey5eqwllvyaslnesrwle69k1fqenofn22ka9fznysdm1', 'crs08nEafFQkbwodExT7SVzF1CaDN0KKZkLBPOyMBUgdGzqwwu', '2020-09-18 14:46:27', '2020-09-18 14:46:27', NULL),
(55, NULL, 'perumewwbfhbbma1v8yrjargw3colnzqjnaahi4tkh5dtyefwr', 'crs08nEafFQkbwodExT7SVzF1CaDN0KKZkLBPOyMBUgdGzqwwu', '2020-09-18 14:46:27', '2020-09-18 14:46:27', NULL),
(56, NULL, 'perstoeoi3adllmiityvawggk6dvuzrizsv8jh9i2zmkewezev', 'crs08nEafFQkbwodExT7SVzF1CaDN0KKZkLBPOyMBUgdGzqwwu', '2020-09-18 14:46:28', '2020-09-18 14:46:28', NULL),
(60, NULL, 'pergmt6ew6ktwh9ryzyk4ejjxdexvnj0hxzd6tmhcfynwncrqx', 'crs2uyz9RWbddk2N5Qp5C7QoFp8M4x6OxgL45bJ69Wte95RhDM', '2020-10-16 15:27:33', '2020-10-16 15:27:33', NULL),
(61, NULL, 'perszeqqlxotzkdol19fzi6myhphahopgyjly1joyuwui8pp5w', 'crs2uyz9RWbddk2N5Qp5C7QoFp8M4x6OxgL45bJ69Wte95RhDM', '2020-10-16 15:27:33', '2020-10-16 15:27:33', NULL),
(62, NULL, 'pergrbey5eqwllvyaslnesrwle69k1fqenofn22ka9fznysdm1', 'crs2uyz9RWbddk2N5Qp5C7QoFp8M4x6OxgL45bJ69Wte95RhDM', '2020-10-16 15:27:34', '2020-10-16 15:27:34', NULL),
(63, NULL, 'perkt3q4cts49bcef7vfwfcpvhzb5aehp8iehchcblhuetcihs', 'crs2uyz9RWbddk2N5Qp5C7QoFp8M4x6OxgL45bJ69Wte95RhDM', '2020-10-16 15:27:34', '2020-10-16 15:27:34', NULL),
(64, NULL, 'perstoeoi3adllmiityvawggk6dvuzrizsv8jh9i2zmkewezev', 'crs2uyz9RWbddk2N5Qp5C7QoFp8M4x6OxgL45bJ69Wte95RhDM', '2020-10-16 15:27:34', '2020-10-16 15:27:34', NULL),
(65, NULL, 'perbxjpmbc8ggmjjreihsb4ykvm32eemg44vmpayyjzj1nfxeg', 'crsxs5svxzuotvqwxff1ob8iv29pqrsaqrukoq14f6chbtd0ha', '2020-10-19 13:37:14', '2020-10-19 13:37:14', NULL),
(66, NULL, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'crsxs5svxzuotvqwxff1ob8iv29pqrsaqrukoq14f6chbtd0ha', '2020-10-19 13:37:14', '2020-10-19 13:37:14', NULL),
(67, NULL, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'crsxs5svxzuotvqwxff1ob8iv29pqrsaqrukoq14f6chbtd0ha', '2020-10-19 13:37:14', '2020-10-19 13:37:14', NULL),
(68, NULL, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'crsxs5svxzuotvqwxff1ob8iv29pqrsaqrukoq14f6chbtd0ha', '2020-10-19 13:37:15', '2020-10-19 13:37:15', NULL),
(69, NULL, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'crsxs5svxzuotvqwxff1ob8iv29pqrsaqrukoq14f6chbtd0ha', '2020-10-19 13:37:15', '2020-10-19 13:37:15', NULL),
(70, NULL, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'crsxs5svxzuotvqwxff1ob8iv29pqrsaqrukoq14f6chbtd0ha', '2020-10-19 13:37:15', '2020-10-19 13:37:15', NULL),
(71, NULL, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'crsxs5svxzuotvqwxff1ob8iv29pqrsaqrukoq14f6chbtd0ha', '2020-10-19 13:37:16', '2020-10-19 13:37:16', NULL),
(72, NULL, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'crsxs5svxzuotvqwxff1ob8iv29pqrsaqrukoq14f6chbtd0ha', '2020-10-19 13:37:16', '2020-10-19 13:37:16', NULL),
(73, NULL, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'crsxs5svxzuotvqwxff1ob8iv29pqrsaqrukoq14f6chbtd0ha', '2020-10-19 13:37:16', '2020-10-19 13:37:16', NULL),
(74, NULL, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', 'crsxs5svxzuotvqwxff1ob8iv29pqrsaqrukoq14f6chbtd0ha', '2020-10-19 13:37:16', '2020-10-19 13:37:16', NULL),
(75, NULL, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', 'crsxs5svxzuotvqwxff1ob8iv29pqrsaqrukoq14f6chbtd0ha', '2020-10-19 13:37:16', '2020-10-19 13:37:16', NULL),
(76, NULL, 'perg9rp46juqgkdpgshpujx5das61d74mm6yrya6jrwxh5tpqy', 'crsqdi22cfojef5qwhbjxzi3ie2rrnqikxwyvipoltmw5xxpe8', '2020-10-27 15:12:31', '2020-10-27 15:12:31', NULL),
(77, NULL, 'perzd47x9sdine3wuuuez92ki1lbh8z9sej7nkxl9iy9yb42ry', 'crsqdi22cfojef5qwhbjxzi3ie2rrnqikxwyvipoltmw5xxpe8', '2020-10-27 15:12:31', '2020-10-27 15:12:31', NULL),
(78, NULL, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'crsdwdhslavkm9qsxopjkqi0dmiuumayzp3czuswkpdwbbklja', '2020-10-27 19:28:00', '2020-10-27 19:28:00', NULL),
(79, NULL, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'crsdwdhslavkm9qsxopjkqi0dmiuumayzp3czuswkpdwbbklja', '2020-10-27 19:28:00', '2020-10-27 19:28:00', NULL),
(80, NULL, 'perwru0avsqkhwsjdekhptqtybblzyryglawm46bg8vyiosdcr', 'crs60z4k7piupjyh6f5imeobrnqpwom8qiixbsdxxxbye51op5', '2020-10-28 09:54:13', '2020-10-28 09:54:13', NULL),
(81, NULL, 'perrztidsfedzyavzys46kgk4qclxlvwsf4sen9mwn9dun9ega', 'crs60z4k7piupjyh6f5imeobrnqpwom8qiixbsdxxxbye51op5', '2020-10-28 09:54:13', '2020-10-28 09:54:13', NULL),
(82, NULL, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'crsummhub6scwbktedsaww33oitckmojv7gff4gjhfuoyktsk6', '2020-10-28 09:56:39', '2020-10-28 09:56:39', NULL),
(83, NULL, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'crsummhub6scwbktedsaww33oitckmojv7gff4gjhfuoyktsk6', '2020-10-28 09:56:39', '2020-10-28 09:56:39', NULL),
(86, NULL, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'crszrufpgwt3drvsmr47sy6rmgr5s7f8etqawcya5mvf4u8x5u', '2020-10-28 10:16:47', '2020-10-28 10:16:47', NULL),
(87, NULL, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', 'crszrufpgwt3drvsmr47sy6rmgr5s7f8etqawcya5mvf4u8x5u', '2020-10-28 10:16:47', '2020-10-28 10:16:47', NULL),
(88, NULL, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'crs2z1xerpdf74t8crcxrhu8yb9pagd1arv2pkb0xltdgopugp', '2020-10-28 10:20:39', '2020-10-28 10:20:39', NULL),
(89, NULL, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'crs2z1xerpdf74t8crcxrhu8yb9pagd1arv2pkb0xltdgopugp', '2020-10-28 10:20:39', '2020-10-28 10:20:39', NULL),
(90, NULL, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'crsx6z8yl0d0g3x2vymwqasfudlo08chscw3ongmcqktyfkrv1', '2020-10-28 10:27:09', '2020-10-28 10:27:09', NULL),
(91, NULL, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'crsx6z8yl0d0g3x2vymwqasfudlo08chscw3ongmcqktyfkrv1', '2020-10-28 10:27:09', '2020-10-28 10:27:09', NULL),
(92, NULL, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-28 10:27:38', '2020-10-28 10:27:38', NULL),
(93, NULL, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-28 10:27:38', '2020-10-28 10:27:38', NULL),
(94, NULL, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-28 10:27:38', '2020-10-28 10:27:38', NULL),
(95, NULL, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-28 10:27:38', '2020-10-28 10:27:38', NULL),
(96, NULL, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-28 10:27:38', '2020-10-28 10:27:38', NULL),
(97, NULL, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-28 10:27:38', '2020-10-28 10:27:38', NULL),
(100, NULL, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'crs0cvt8swenw00gsisfwlfpy2c5sxuajzfgdun5em0y6pp2pe', '2020-10-28 10:32:51', '2020-10-28 10:32:51', NULL),
(101, NULL, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'crs0cvt8swenw00gsisfwlfpy2c5sxuajzfgdun5em0y6pp2pe', '2020-10-28 10:32:51', '2020-10-28 10:32:51', NULL),
(102, NULL, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'crsexvm0ambj8ncammzkioxvns9dqzswzwsury5wzbvddfa3jv', '2020-10-28 10:37:35', '2020-10-28 10:37:35', NULL),
(103, NULL, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'crsexvm0ambj8ncammzkioxvns9dqzswzwsury5wzbvddfa3jv', '2020-10-28 10:37:35', '2020-10-28 10:37:35', NULL),
(104, NULL, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'crs8agedln3q8qceisx68mckfw5qqebsyoa93smzberfbrfynm', '2020-10-28 10:39:43', '2020-10-28 10:39:43', NULL),
(105, NULL, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'crs8agedln3q8qceisx68mckfw5qqebsyoa93smzberfbrfynm', '2020-10-28 10:39:43', '2020-10-28 10:39:43', NULL),
(106, NULL, 'perguln9rfwptrihli5ykomxfgfvlwszsmhbmzxntgke9sxbwv', 'crs8agedln3q8qceisx68mckfw5qqebsyoa93smzberfbrfynm', '2020-10-28 10:39:43', '2020-10-28 10:39:43', NULL),
(107, NULL, 'peraieoiywxwnzpgo5muwfvspy6kgeprinkdpyk13rovvilhxa', 'crs8agedln3q8qceisx68mckfw5qqebsyoa93smzberfbrfynm', '2020-10-28 10:39:43', '2020-10-28 10:39:43', NULL),
(108, NULL, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-28 10:57:15', '2020-10-28 10:57:15', NULL),
(109, NULL, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-28 10:57:15', '2020-10-28 10:57:15', NULL),
(110, NULL, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-28 10:57:15', '2020-10-28 10:57:15', NULL),
(111, NULL, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-28 10:57:15', '2020-10-28 10:57:15', NULL),
(112, NULL, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'crsmatwhwkpiarcawozkgj7vytuhh8obrjos7m4ck9jxz2lj1v', '2020-10-28 11:01:22', '2020-10-28 11:01:22', NULL),
(113, NULL, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'crsmatwhwkpiarcawozkgj7vytuhh8obrjos7m4ck9jxz2lj1v', '2020-10-28 11:01:22', '2020-10-28 11:01:22', NULL),
(114, NULL, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'crsmatwhwkpiarcawozkgj7vytuhh8obrjos7m4ck9jxz2lj1v', '2020-10-28 11:01:22', '2020-10-28 11:01:22', NULL),
(115, NULL, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'crsmatwhwkpiarcawozkgj7vytuhh8obrjos7m4ck9jxz2lj1v', '2020-10-28 11:01:22', '2020-10-28 11:01:22', NULL),
(116, NULL, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'crsmatwhwkpiarcawozkgj7vytuhh8obrjos7m4ck9jxz2lj1v', '2020-10-28 11:01:22', '2020-10-28 11:01:22', NULL),
(117, NULL, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'crsmatwhwkpiarcawozkgj7vytuhh8obrjos7m4ck9jxz2lj1v', '2020-10-28 11:01:22', '2020-10-28 11:01:22', NULL),
(118, NULL, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'crspwvpbesv4kau98etdfbtfen607m8cfpkf2v5bradcvubzat', '2020-10-28 11:14:52', '2020-10-28 11:14:52', NULL),
(119, NULL, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'crspwvpbesv4kau98etdfbtfen607m8cfpkf2v5bradcvubzat', '2020-10-28 11:14:52', '2020-10-28 11:14:52', NULL),
(120, NULL, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'crspwvpbesv4kau98etdfbtfen607m8cfpkf2v5bradcvubzat', '2020-10-28 11:14:52', '2020-10-28 11:14:52', NULL),
(121, NULL, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', 'crspwvpbesv4kau98etdfbtfen607m8cfpkf2v5bradcvubzat', '2020-10-28 11:14:53', '2020-10-28 11:14:53', NULL),
(122, NULL, 'perwru0avsqkhwsjdekhptqtybblzyryglawm46bg8vyiosdcr', 'crsmkjiz9abpd8d6prsduhmiep2orvy7czh7vry5kz9t4arybw', '2020-10-28 11:20:29', '2020-10-28 11:20:29', NULL),
(123, NULL, 'perrztidsfedzyavzys46kgk4qclxlvwsf4sen9mwn9dun9ega', 'crsmkjiz9abpd8d6prsduhmiep2orvy7czh7vry5kz9t4arybw', '2020-10-28 11:20:29', '2020-10-28 11:20:29', NULL),
(124, NULL, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'crsmkjiz9abpd8d6prsduhmiep2orvy7czh7vry5kz9t4arybw', '2020-10-28 11:20:30', '2020-10-28 11:20:30', NULL),
(125, NULL, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'crsmkjiz9abpd8d6prsduhmiep2orvy7czh7vry5kz9t4arybw', '2020-10-28 11:20:30', '2020-10-28 11:20:30', NULL),
(126, NULL, 'perg9rp46juqgkdpgshpujx5das61d74mm6yrya6jrwxh5tpqy', 'crsc5qmg5rgcambmf3ncnx9vbdjqir1fsfwnun42fdwjuezqgz', '2020-10-28 11:35:03', '2020-10-28 11:35:03', NULL),
(127, NULL, 'perzd47x9sdine3wuuuez92ki1lbh8z9sej7nkxl9iy9yb42ry', 'crsc5qmg5rgcambmf3ncnx9vbdjqir1fsfwnun42fdwjuezqgz', '2020-10-28 11:35:04', '2020-10-28 11:35:04', NULL),
(128, NULL, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'crsaocslevq0areftggytwsmrqhve807xjxbxmhy3onkpw6fi4', '2020-10-28 14:22:29', '2020-10-28 14:22:29', NULL),
(129, NULL, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'crsaocslevq0areftggytwsmrqhve807xjxbxmhy3onkpw6fi4', '2020-10-28 14:22:29', '2020-10-28 14:22:29', NULL),
(130, NULL, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 'crs0ajdemljhkfizasd9b2qlrjntgri77sf2umbwccqrfr3h3d', '2020-10-28 14:28:55', '2020-10-28 14:28:55', NULL),
(131, NULL, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 'crs0ajdemljhkfizasd9b2qlrjntgri77sf2umbwccqrfr3h3d', '2020-10-28 14:28:55', '2020-10-28 14:28:55', NULL),
(132, NULL, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'crsus1srfb7snhvzg1rx3dlobgvwupdlxvu6iy9y1e4mliuykv', '2020-10-28 14:48:09', '2020-10-28 14:48:09', NULL),
(133, NULL, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'crsus1srfb7snhvzg1rx3dlobgvwupdlxvu6iy9y1e4mliuykv', '2020-10-28 14:48:09', '2020-10-28 14:48:09', NULL),
(134, NULL, 'perguln9rfwptrihli5ykomxfgfvlwszsmhbmzxntgke9sxbwv', 'crsq3zxu8nogy2eqp03ssegtfrpkj22wyk99rwiknded4mlg6l', '2020-10-28 16:51:07', '2020-10-28 16:51:07', NULL),
(135, NULL, 'peraieoiywxwnzpgo5muwfvspy6kgeprinkdpyk13rovvilhxa', 'crsq3zxu8nogy2eqp03ssegtfrpkj22wyk99rwiknded4mlg6l', '2020-10-28 16:51:07', '2020-10-28 16:51:07', NULL),
(136, NULL, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'crstoxmqwnfe8uoufo5kvu8zwucruhdxehqpytrfezqzbfuy3d', '2020-10-28 16:57:13', '2020-10-28 16:57:13', NULL),
(137, NULL, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'crstoxmqwnfe8uoufo5kvu8zwucruhdxehqpytrfezqzbfuy3d', '2020-10-28 16:57:13', '2020-10-28 16:57:13', NULL),
(138, NULL, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'crsphkwcmxvgyziyca7h3bmvv8gqynbzlq8rabuer6sz3hthm6', '2020-10-28 16:58:32', '2020-10-28 16:58:32', NULL),
(139, NULL, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'crsphkwcmxvgyziyca7h3bmvv8gqynbzlq8rabuer6sz3hthm6', '2020-10-28 16:58:32', '2020-10-28 16:58:32', NULL),
(140, NULL, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'crsn8i98sjmprkfeh2xkzpjvs4lygyufavyengdrtbmncalwo0', '2020-10-28 17:08:14', '2020-10-28 17:08:14', NULL),
(141, NULL, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'crsn8i98sjmprkfeh2xkzpjvs4lygyufavyengdrtbmncalwo0', '2020-10-28 17:08:14', '2020-10-28 17:08:14', NULL),
(142, NULL, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'crs2hjztfi5othrg9fzdp50sbcmhlyjloxlmfmrzlbqhqj4dt9', '2020-10-28 17:08:23', '2020-10-28 17:08:23', NULL),
(143, NULL, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'crskznbtkwrwkbsb5vhdkbkoxv1cavxvfp6piwkq10ur4tyjek', '2020-10-28 17:09:32', '2020-10-28 17:09:32', NULL),
(144, NULL, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'crskznbtkwrwkbsb5vhdkbkoxv1cavxvfp6piwkq10ur4tyjek', '2020-10-28 17:09:32', '2020-10-28 17:09:32', NULL),
(146, NULL, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-28 17:13:33', '2020-10-28 17:13:33', NULL),
(147, NULL, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-28 17:13:34', '2020-10-28 17:13:34', NULL),
(148, NULL, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-28 17:13:34', '2020-10-28 17:13:34', NULL),
(149, NULL, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-28 17:13:34', '2020-10-28 17:13:34', NULL),
(150, NULL, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'crs2hjztfi5othrg9fzdp50sbcmhlyjloxlmfmrzlbqhqj4dt9', '2020-10-28 17:23:47', '2020-10-28 17:23:47', NULL),
(151, NULL, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'crs7yyujni7blwyhy8gqgvxmrlvfb8evbctcampnmvjbn5igad', '2020-10-28 17:24:40', '2020-10-28 17:24:40', NULL),
(152, NULL, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'crs7yyujni7blwyhy8gqgvxmrlvfb8evbctcampnmvjbn5igad', '2020-10-28 17:24:40', '2020-10-28 17:24:40', NULL),
(153, NULL, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'crs7yyujni7blwyhy8gqgvxmrlvfb8evbctcampnmvjbn5igad', '2020-10-28 17:24:40', '2020-10-28 17:24:40', NULL),
(154, NULL, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'crs7yyujni7blwyhy8gqgvxmrlvfb8evbctcampnmvjbn5igad', '2020-10-28 17:24:40', '2020-10-28 17:24:40', NULL),
(155, NULL, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'crsm6lebfszqbvvcx4ky0xmblneril4fwudtcerw8ip5eyx6vq', '2020-10-28 17:25:43', '2020-10-28 17:25:43', NULL),
(156, NULL, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'crsm6lebfszqbvvcx4ky0xmblneril4fwudtcerw8ip5eyx6vq', '2020-10-28 17:25:43', '2020-10-28 17:25:43', NULL),
(157, NULL, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'crshy8z5anwwnats7a7ci72sptqcvadrvgdn9dahpsysretcis', '2020-10-28 17:29:32', '2020-10-28 17:29:32', NULL),
(158, NULL, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'crshy8z5anwwnats7a7ci72sptqcvadrvgdn9dahpsysretcis', '2020-10-28 17:29:32', '2020-10-28 17:29:32', NULL),
(159, NULL, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'crsga1pwuyunzinrcamuxqldlvaufwzzwtndkucfuqvjju6xmk', '2020-10-28 17:31:12', '2020-10-28 17:31:12', NULL),
(160, NULL, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'crsga1pwuyunzinrcamuxqldlvaufwzzwtndkucfuqvjju6xmk', '2020-10-28 17:31:12', '2020-10-28 17:31:12', NULL),
(161, NULL, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'crsh9hpt4jmnfzyt0uv8gossdxputjdzoawnx6nzmjfr9jjggx', '2020-10-28 17:31:47', '2020-10-28 17:31:47', NULL),
(162, NULL, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'crsh9hpt4jmnfzyt0uv8gossdxputjdzoawnx6nzmjfr9jjggx', '2020-10-28 17:31:47', '2020-10-28 17:31:47', NULL),
(163, NULL, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'crsh9hpt4jmnfzyt0uv8gossdxputjdzoawnx6nzmjfr9jjggx', '2020-10-28 17:31:47', '2020-10-28 17:31:47', NULL),
(164, NULL, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'crsh9hpt4jmnfzyt0uv8gossdxputjdzoawnx6nzmjfr9jjggx', '2020-10-28 17:31:47', '2020-10-28 17:31:47', NULL),
(165, NULL, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'crs0i8xjonzxqsafbgcssem8xeqjdzb49cqw2oxzpji8vrxs9x', '2020-10-28 17:32:43', '2020-10-28 17:32:43', NULL),
(166, NULL, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'crs0i8xjonzxqsafbgcssem8xeqjdzb49cqw2oxzpji8vrxs9x', '2020-10-28 17:32:43', '2020-10-28 17:32:43', NULL),
(167, NULL, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'crssbxbyveq2o9ghlrbfsfemenomcpbnhwv96dijiobng3koxk', '2020-10-28 17:33:21', '2020-10-28 17:33:21', NULL),
(168, NULL, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', 'crssbxbyveq2o9ghlrbfsfemenomcpbnhwv96dijiobng3koxk', '2020-10-28 17:33:21', '2020-10-28 17:33:21', NULL),
(169, NULL, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'crsycn9zp1t0ie2rmm1jyrcx83t3lczsaslnz6tjzes1ljv3wp', '2020-10-28 17:36:45', '2020-10-28 17:36:45', NULL),
(170, NULL, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'crsycn9zp1t0ie2rmm1jyrcx83t3lczsaslnz6tjzes1ljv3wp', '2020-10-28 17:36:45', '2020-10-28 17:36:45', NULL),
(171, NULL, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'crshtfov82vuonqdk3mfw9gugezfcaamyf3btm2g0lqo2lask2', '2020-10-28 17:37:46', '2020-10-28 17:37:46', NULL),
(172, NULL, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'crshtfov82vuonqdk3mfw9gugezfcaamyf3btm2g0lqo2lask2', '2020-10-28 17:37:46', '2020-10-28 17:37:46', NULL),
(173, NULL, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-28 17:37:57', '2020-10-28 17:37:57', NULL),
(174, NULL, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-28 17:37:57', '2020-10-28 17:37:57', NULL),
(175, NULL, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-28 17:37:57', '2020-10-28 17:37:57', NULL),
(176, NULL, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-28 17:37:57', '2020-10-28 17:37:57', NULL),
(177, NULL, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-28 17:37:57', '2020-10-28 17:37:57', NULL),
(178, NULL, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-28 17:37:57', '2020-10-28 17:37:57', NULL),
(179, NULL, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'crscynwlguxfc52l5twbptlomagxbbiwudrg714ojamrjp54vw', '2020-10-28 17:40:10', '2020-10-28 17:40:10', NULL),
(180, NULL, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'crscynwlguxfc52l5twbptlomagxbbiwudrg714ojamrjp54vw', '2020-10-28 17:40:10', '2020-10-28 17:40:10', NULL),
(181, NULL, 'perguln9rfwptrihli5ykomxfgfvlwszsmhbmzxntgke9sxbwv', 'crsfvotpsk2bh0fhsl2vwouci0phcpzwleacvtitmvyxqyvphk', '2020-10-28 17:41:18', '2020-10-28 17:41:18', NULL),
(182, NULL, 'peraieoiywxwnzpgo5muwfvspy6kgeprinkdpyk13rovvilhxa', 'crsfvotpsk2bh0fhsl2vwouci0phcpzwleacvtitmvyxqyvphk', '2020-10-28 17:41:18', '2020-10-28 17:41:18', NULL),
(183, NULL, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'crsomggsrmxcdy7ufzgifnef7y0211dfvqlegnkmf5ex1zbwnk', '2020-10-28 17:42:01', '2020-10-28 17:42:01', NULL),
(184, NULL, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'crsomggsrmxcdy7ufzgifnef7y0211dfvqlegnkmf5ex1zbwnk', '2020-10-28 17:42:01', '2020-10-28 17:42:01', NULL),
(185, NULL, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'crsf9fl4kgl1ghnwhxmxbpjfntcdxqtedffux4hxthrj4tffoh', '2020-10-28 17:43:00', '2020-10-28 17:43:00', NULL),
(186, NULL, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'crsf9fl4kgl1ghnwhxmxbpjfntcdxqtedffux4hxthrj4tffoh', '2020-10-28 17:43:00', '2020-10-28 17:43:00', NULL),
(187, NULL, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-28 17:49:25', '2020-10-28 17:49:25', NULL),
(188, NULL, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-28 17:49:25', '2020-10-28 17:49:25', NULL),
(189, NULL, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-28 17:49:25', '2020-10-28 17:49:25', NULL),
(190, NULL, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-28 17:49:25', '2020-10-28 17:49:25', NULL),
(191, NULL, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'crsexzeaaxs3ntruq8qpedyddw9mg7ffqwbhi3arp5tqrlssbi', '2020-10-28 17:59:45', '2020-10-28 17:59:45', NULL),
(192, NULL, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'crsexzeaaxs3ntruq8qpedyddw9mg7ffqwbhi3arp5tqrlssbi', '2020-10-28 17:59:45', '2020-10-28 17:59:45', NULL),
(193, NULL, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'crshaym99ctu3zuqm0bp0ipvps5h9iqkx2coivmgipcq41rjyi', '2020-10-28 18:01:36', '2020-10-28 18:01:36', NULL),
(194, NULL, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'crshaym99ctu3zuqm0bp0ipvps5h9iqkx2coivmgipcq41rjyi', '2020-10-28 18:01:36', '2020-10-28 18:01:36', NULL),
(195, NULL, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'crsgpm3og4ybx010gwer8zjliarmhfc4p9gpljgdmke7bmfuex', '2020-10-28 18:03:28', '2020-10-28 18:03:28', NULL),
(196, NULL, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', 'crsgpm3og4ybx010gwer8zjliarmhfc4p9gpljgdmke7bmfuex', '2020-10-28 18:03:28', '2020-10-28 18:03:28', NULL),
(197, NULL, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'crsgpm3og4ybx010gwer8zjliarmhfc4p9gpljgdmke7bmfuex', '2020-10-28 18:04:53', '2020-10-28 18:04:53', NULL),
(198, NULL, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'crsgpm3og4ybx010gwer8zjliarmhfc4p9gpljgdmke7bmfuex', '2020-10-28 18:04:53', '2020-10-28 18:04:53', NULL),
(199, NULL, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'crsrd4xjgfjongsporhg1is8vqvowubgn4ne5noyooyrczpvnt', '2020-10-28 18:06:08', '2020-10-28 18:06:08', NULL),
(200, NULL, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'crsrd4xjgfjongsporhg1is8vqvowubgn4ne5noyooyrczpvnt', '2020-10-28 18:06:08', '2020-10-28 18:06:08', NULL),
(201, NULL, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'crsjhfti0cryxh2cnt3x2veufqvniimo0u6daxmyxccqureqnm', '2020-10-28 18:11:16', '2020-10-28 18:11:16', NULL),
(202, NULL, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'crsjhfti0cryxh2cnt3x2veufqvniimo0u6daxmyxccqureqnm', '2020-10-28 18:11:16', '2020-10-28 18:11:16', NULL),
(203, NULL, 'perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', 'crsx3syabwlpkrfq5ckq5ejykhh38a1tynhjvekz5fqyfcxpyg', '2020-10-28 18:13:57', '2020-10-28 18:13:57', NULL),
(204, NULL, 'perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', 'crsx3syabwlpkrfq5ckq5ejykhh38a1tynhjvekz5fqyfcxpyg', '2020-10-28 18:13:58', '2020-10-28 18:13:58', NULL),
(205, NULL, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', 'crsx3syabwlpkrfq5ckq5ejykhh38a1tynhjvekz5fqyfcxpyg', '2020-10-28 18:13:58', '2020-10-28 18:13:58', NULL),
(206, NULL, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', 'crsx3syabwlpkrfq5ckq5ejykhh38a1tynhjvekz5fqyfcxpyg', '2020-10-28 18:13:58', '2020-10-28 18:13:58', NULL),
(207, NULL, 'perwru0avsqkhwsjdekhptqtybblzyryglawm46bg8vyiosdcr', 'crsh9hpt4jmnfzyt0uv8gossdxputjdzoawnx6nzmjfr9jjggx', '2020-10-28 18:34:50', '2020-10-28 18:34:50', NULL),
(208, NULL, 'perrztidsfedzyavzys46kgk4qclxlvwsf4sen9mwn9dun9ega', 'crsh9hpt4jmnfzyt0uv8gossdxputjdzoawnx6nzmjfr9jjggx', '2020-10-28 18:34:50', '2020-10-28 18:34:50', NULL),
(209, NULL, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'crsdlk5ye1cgepbcska99ep8ey7rjwxjiubzpdr4p5gv23ez6o', '2020-10-29 08:30:17', '2020-10-29 08:30:17', NULL),
(210, NULL, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'crsdlk5ye1cgepbcska99ep8ey7rjwxjiubzpdr4p5gv23ez6o', '2020-10-29 08:30:17', '2020-10-29 08:30:17', NULL),
(211, NULL, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'crsdlk5ye1cgepbcska99ep8ey7rjwxjiubzpdr4p5gv23ez6o', '2020-10-29 08:30:17', '2020-10-29 08:30:17', NULL),
(212, NULL, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'crsdlk5ye1cgepbcska99ep8ey7rjwxjiubzpdr4p5gv23ez6o', '2020-10-29 08:30:17', '2020-10-29 08:30:17', NULL),
(213, NULL, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'crstoxmqwnfe8uoufo5kvu8zwucruhdxehqpytrfezqzbfuy3d', '2020-10-29 08:34:38', '2020-10-29 08:34:38', NULL),
(214, NULL, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', 'crstoxmqwnfe8uoufo5kvu8zwucruhdxehqpytrfezqzbfuy3d', '2020-10-29 08:34:38', '2020-10-29 08:34:38', NULL),
(215, NULL, 'perg9rp46juqgkdpgshpujx5das61d74mm6yrya6jrwxh5tpqy', 'crstoxmqwnfe8uoufo5kvu8zwucruhdxehqpytrfezqzbfuy3d', '2020-10-29 08:35:59', '2020-10-29 08:35:59', NULL),
(216, NULL, 'perzd47x9sdine3wuuuez92ki1lbh8z9sej7nkxl9iy9yb42ry', 'crstoxmqwnfe8uoufo5kvu8zwucruhdxehqpytrfezqzbfuy3d', '2020-10-29 08:35:59', '2020-10-29 08:35:59', NULL),
(217, 323, 'perwru0avsqkhwsjdekhptqtybblzyryglawm46bg8vyiosdcr', 'crs3wrpcwl31szavsj69umdxe0jdqmhhvulyidy4s8e9mgvkdh', '2020-10-29 13:45:30', '2020-10-29 13:45:30', NULL),
(218, 324, 'perrztidsfedzyavzys46kgk4qclxlvwsf4sen9mwn9dun9ega', 'crs3wrpcwl31szavsj69umdxe0jdqmhhvulyidy4s8e9mgvkdh', '2020-10-29 13:45:30', '2020-10-29 13:45:30', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `period_lecturers`
--

CREATE TABLE `period_lecturers` (
  `id` int(11) NOT NULL,
  `period_id` varchar(50) NOT NULL,
  `lecturer_id` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `period_lecturers`
--

INSERT INTO `period_lecturers` (`id`, `period_id`, `lecturer_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'per5lwazcsaa4ii8pt4smoeklawxpn0e1w5ailaa6rczkv0dz7', 'pfl3rgkfdublqoywmuccusycmfwn3zan25kymfwsukpv4swzo1', '2020-08-15 22:58:46', '2020-08-15 22:58:46', NULL),
(6, 'per04dnyqr37duvhmayahknvzktefvtozvmgr7wynw9qbjc8of', 'pfl3rgkfdublqoywmuccusycmfwn3zan25kymfwsukpv4swzo1', '2020-08-15 22:58:48', '2020-08-15 22:58:48', NULL),
(8, 'perkt3q4cts49bcef7vfwfcpvhzb5aehp8iehchcblhuetcihs', 'pfl3rgkfdublqoywmuccusycmfwn3zan25kymfwsukpv4swzo1', '2020-08-15 22:58:48', '2020-08-15 22:58:48', NULL),
(9, 'peru0iwj1wbmnqxuhz6ndc7asragtkkrenppz7wsdo0wz8webe', 'pfl3rgkfdublqoywmuccusycmfwn3zan25kymfwsukpv4swzo1', '2020-08-15 22:58:49', '2020-08-15 22:58:49', NULL),
(10, 'percqvce9vcsoeujmew1c2wrl55uqr3gn847tn6r48g5ettygi', 'pfl3rgkfdublqoywmuccusycmfwn3zan25kymfwsukpv4swzo1', '2020-08-15 22:58:49', '2020-08-15 22:58:49', NULL),
(11, 'perkbpyc56nzx1efivewfamw44awbxz8ftcg8yj0wral5eblka', 'pfl3rgkfdublqoywmuccusycmfwn3zan25kymfwsukpv4swzo1', '2020-08-15 22:58:50', '2020-08-15 22:58:50', NULL),
(12, 'per5gkvtt1yysgwpijvvtad2zazd7xazw3esdane7y3u3vxr5m', 'pfl3rgkfdublqoywmuccusycmfwn3zan25kymfwsukpv4swzo1', '2020-08-15 22:58:50', '2020-08-15 22:58:50', NULL),
(17, 'perelhrhmt4oxkoyhjnh41nhvobli4bsbmbyhey4jzg2wiqt5d', 'pfl3rgkfdublqoywmuccusycmfwn3zan25kymfwsukpv4swzo1', '2020-08-15 23:11:17', '2020-08-15 23:11:17', NULL),
(18, 'permxuwbaysnrkdpfqtequ03sosoh372lboswcltcehivij1at', 'pflbicrnbju2wgtmk1ipo213eul5tlap0qfacywoquodpbhf2b', '2020-08-15 23:45:44', '2020-08-15 23:45:44', NULL),
(19, 'pergqyed91lh5bqyli0qjoguzc4ftnnbk2u25rcclkihl4m6gz', 'pfl3rgkfdublqoywmuccusycmfwn3zan25kymfwsukpv4swzo1', '2020-08-16 04:55:27', '2020-08-16 04:55:27', NULL),
(20, 'persqlke1coahwzk84f64feuiacj3qh6zau8vk3lsbuklmdwrn', 'pfl3rgkfdublqoywmuccusycmfwn3zan25kymfwsukpv4swzo1', '2020-08-16 04:55:28', '2020-08-16 04:55:28', NULL),
(21, 'per4ul4ot18wvbpzfibkqoqtdvthlngyztuom3k0i0npzmgrya', 'pfl3rgkfdublqoywmuccusycmfwn3zan25kymfwsukpv4swzo1', '2020-08-16 04:55:28', '2020-08-16 04:55:28', NULL),
(22, 'perrjlgen8ljlsb1hlokcr6xyueuk2pu6hrmvogzb6thjjwr6d', 'pfl3rgkfdublqoywmuccusycmfwn3zan25kymfwsukpv4swzo1', '2020-08-16 04:55:29', '2020-08-16 04:55:29', NULL),
(23, 'perszeqqlxotzkdol19fzi6myhphahopgyjly1joyuwui8pp5w', 'pflhi9dqjhdmilueholfxmv4ik7uouwfqcriru1xhic9jsrekd', '2020-08-16 13:37:40', '2020-08-16 13:37:40', NULL),
(24, 'perstoeoi3adllmiityvawggk6dvuzrizsv8jh9i2zmkewezev', 'pflhi9dqjhdmilueholfxmv4ik7uouwfqcriru1xhic9jsrekd', '2020-08-16 13:37:41', '2020-08-16 13:37:41', NULL),
(25, 'perjriv6y5pbyga8s4o5a4vvnyfu7eqrwpuczgespdh8lmaah5', 'pflhi9dqjhdmilueholfxmv4ik7uouwfqcriru1xhic9jsrekd', '2020-08-16 13:37:41', '2020-08-16 13:37:41', NULL),
(26, 'per5gkvtt1yysgwpijvvtad2zazd7xazw3esdane7y3u3vxr5m', 'pflhi9dqjhdmilueholfxmv4ik7uouwfqcriru1xhic9jsrekd', '2020-08-16 13:37:42', '2020-08-16 13:37:42', NULL),
(27, 'perc1kftnzwtwlnwmvkwi67isgurlbaabcnrf79j7cyokqagwp', 'pflhi9dqjhdmilueholfxmv4ik7uouwfqcriru1xhic9jsrekd', '2020-08-16 13:37:43', '2020-08-16 13:37:43', NULL),
(28, 'perkbpyc56nzx1efivewfamw44awbxz8ftcg8yj0wral5eblka', 'pflhi9dqjhdmilueholfxmv4ik7uouwfqcriru1xhic9jsrekd', '2020-08-16 13:37:44', '2020-08-16 13:37:44', NULL),
(29, 'perzte0nthz9cfqqhriwmhgsf3qwwk4ndkoxskqlx7gl8vbofj', 'pflhi9dqjhdmilueholfxmv4ik7uouwfqcriru1xhic9jsrekd', '2020-08-16 13:44:06', '2020-08-16 13:44:06', NULL),
(30, 'persu0zpmgrwc3qojertzh0pkfqfgd7mgbkcpexenhoqpqptuv', 'pflhi9dqjhdmilueholfxmv4ik7uouwfqcriru1xhic9jsrekd', '2020-08-16 13:44:06', '2020-08-16 13:44:06', NULL),
(31, 'perxft9lice16ed18mec2hxsxyzowy80bnvdal9u5jdkzgknnk', 'pflhi9dqjhdmilueholfxmv4ik7uouwfqcriru1xhic9jsrekd', '2020-08-16 13:44:07', '2020-08-16 13:44:07', NULL),
(32, 'per04dnyqr37duvhmayahknvzktefvtozvmgr7wynw9qbjc8of', 'pflhi9dqjhdmilueholfxmv4ik7uouwfqcriru1xhic9jsrekd', '2020-08-16 13:44:07', '2020-08-16 13:44:07', NULL),
(33, 'pergmt6ew6ktwh9ryzyk4ejjxdexvnj0hxzd6tmhcfynwncrqx', 'pflhi9dqjhdmilueholfxmv4ik7uouwfqcriru1xhic9jsrekd', '2020-08-17 19:26:17', '2020-08-17 19:26:17', NULL),
(34, 'perkt3q4cts49bcef7vfwfcpvhzb5aehp8iehchcblhuetcihs', 'pflhi9dqjhdmilueholfxmv4ik7uouwfqcriru1xhic9jsrekd', '2020-08-17 19:26:17', '2020-08-17 19:26:17', NULL),
(35, 'permxuwbaysnrkdpfqtequ03sosoh372lboswcltcehivij1at', 'pflhi9dqjhdmilueholfxmv4ik7uouwfqcriru1xhic9jsrekd', '2020-08-17 19:26:17', '2020-08-17 19:26:17', NULL),
(36, 'per5m1vstjsljz7xdqiwmqvqzqubn8wnkhdnxnwlgl4wqqyflj', 'pflhi9dqjhdmilueholfxmv4ik7uouwfqcriru1xhic9jsrekd', '2020-08-17 19:27:49', '2020-08-17 19:27:49', NULL),
(37, 'perz9kaxhbhvtpzq26s2dr80ozne4oivjyntfmqx6uhddma2nk', 'pflhi9dqjhdmilueholfxmv4ik7uouwfqcriru1xhic9jsrekd', '2020-08-17 19:27:50', '2020-08-17 19:27:50', NULL),
(38, 'perae0gasuwbyxpc9fhag2xg1wi1whmq3cd7jlvc378oyehb9o', 'pflhi9dqjhdmilueholfxmv4ik7uouwfqcriru1xhic9jsrekd', '2020-08-17 19:29:39', '2020-08-17 19:29:39', NULL),
(39, 'perdshrsn5ewd8hlqtu0lldpin2gotfbxrmixlfjjv3ndlzyir', 'pflhi9dqjhdmilueholfxmv4ik7uouwfqcriru1xhic9jsrekd', '2020-08-17 19:29:39', '2020-08-17 19:29:39', NULL),
(40, 'perad4toxiyt1uue7ocbwetnnxohxc0cecbzoeirgrlfumdxor', 'pfl3rgkfdublqoywmuccusycmfwn3zan25kymfwsukpv4swzo1', '2020-08-17 19:44:59', '2020-08-17 19:44:59', NULL),
(41, 'per4iumevk9tdnve2royyrogyzyrmzzsxhkylupl48dsireoir', 'pflatezuusxwulhfnob6zqyw1owgyqt2aqqrqggvfnu0ulwvkj', '2020-08-29 16:49:22', '2020-08-29 16:49:22', NULL),
(42, 'pergmt6ew6ktwh9ryzyk4ejjxdexvnj0hxzd6tmhcfynwncrqx', 'pflezr8ubvhpkhgnlrmbq6tudgxaikfdwao5mufiriibwcqdzw', '2020-09-03 14:21:57', '2020-09-03 14:21:57', NULL),
(43, 'perszeqqlxotzkdol19fzi6myhphahopgyjly1joyuwui8pp5w', 'pflezr8ubvhpkhgnlrmbq6tudgxaikfdwao5mufiriibwcqdzw', '2020-09-03 14:21:58', '2020-09-03 14:21:58', NULL),
(44, 'permxuwbaysnrkdpfqtequ03sosoh372lboswcltcehivij1at', 'pflezr8ubvhpkhgnlrmbq6tudgxaikfdwao5mufiriibwcqdzw', '2020-09-03 14:21:58', '2020-09-03 14:21:58', NULL),
(56, 'pergrbey5eqwllvyaslnesrwle69k1fqenofn22ka9fznysdm1', 'pflezr8ubvhpkhgnlrmbq6tudgxaikfdwao5mufiriibwcqdzw', '2020-09-18 12:46:26', '2020-09-18 12:46:26', NULL),
(57, 'perumewwbfhbbma1v8yrjargw3colnzqjnaahi4tkh5dtyefwr', 'pflezr8ubvhpkhgnlrmbq6tudgxaikfdwao5mufiriibwcqdzw', '2020-09-18 12:46:27', '2020-09-18 12:46:27', NULL),
(58, 'perstoeoi3adllmiityvawggk6dvuzrizsv8jh9i2zmkewezev', 'pflezr8ubvhpkhgnlrmbq6tudgxaikfdwao5mufiriibwcqdzw', '2020-09-18 12:46:27', '2020-09-18 12:46:27', NULL),
(62, 'pergmt6ew6ktwh9ryzyk4ejjxdexvnj0hxzd6tmhcfynwncrqx', 'pflwsjegydtydkbkpc75gglmxjcz6l2usfn5cvxmxmxkrl8mpa', '2020-10-16 20:27:33', '2020-10-16 20:27:33', NULL),
(63, 'perszeqqlxotzkdol19fzi6myhphahopgyjly1joyuwui8pp5w', 'pflwsjegydtydkbkpc75gglmxjcz6l2usfn5cvxmxmxkrl8mpa', '2020-10-16 20:27:33', '2020-10-16 20:27:33', NULL),
(64, 'pergrbey5eqwllvyaslnesrwle69k1fqenofn22ka9fznysdm1', 'pflwsjegydtydkbkpc75gglmxjcz6l2usfn5cvxmxmxkrl8mpa', '2020-10-16 20:27:34', '2020-10-16 20:27:34', NULL),
(65, 'perkt3q4cts49bcef7vfwfcpvhzb5aehp8iehchcblhuetcihs', 'pflwsjegydtydkbkpc75gglmxjcz6l2usfn5cvxmxmxkrl8mpa', '2020-10-16 20:27:34', '2020-10-16 20:27:34', NULL),
(66, 'perstoeoi3adllmiityvawggk6dvuzrizsv8jh9i2zmkewezev', 'pflwsjegydtydkbkpc75gglmxjcz6l2usfn5cvxmxmxkrl8mpa', '2020-10-16 20:27:34', '2020-10-16 20:27:34', NULL),
(67, 'perbxjpmbc8ggmjjreihsb4ykvm32eemg44vmpayyjzj1nfxeg', 'pflcbztqsyjkkfnw2x0ob8vehp3nz7oezjdxjkwmdg0pixkqkp', '2020-10-19 18:37:14', '2020-10-19 18:37:14', NULL),
(68, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'pflcbztqsyjkkfnw2x0ob8vehp3nz7oezjdxjkwmdg0pixkqkp', '2020-10-19 18:37:14', '2020-10-19 18:37:14', NULL),
(69, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'pflcbztqsyjkkfnw2x0ob8vehp3nz7oezjdxjkwmdg0pixkqkp', '2020-10-19 18:37:14', '2020-10-19 18:37:14', NULL),
(70, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'pflcbztqsyjkkfnw2x0ob8vehp3nz7oezjdxjkwmdg0pixkqkp', '2020-10-19 18:37:14', '2020-10-19 18:37:14', NULL),
(71, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'pflcbztqsyjkkfnw2x0ob8vehp3nz7oezjdxjkwmdg0pixkqkp', '2020-10-19 18:37:15', '2020-10-19 18:37:15', NULL),
(72, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'pflcbztqsyjkkfnw2x0ob8vehp3nz7oezjdxjkwmdg0pixkqkp', '2020-10-19 18:37:15', '2020-10-19 18:37:15', NULL),
(73, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'pflcbztqsyjkkfnw2x0ob8vehp3nz7oezjdxjkwmdg0pixkqkp', '2020-10-19 18:37:15', '2020-10-19 18:37:15', NULL),
(74, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'pflcbztqsyjkkfnw2x0ob8vehp3nz7oezjdxjkwmdg0pixkqkp', '2020-10-19 18:37:16', '2020-10-19 18:37:16', NULL),
(75, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'pflcbztqsyjkkfnw2x0ob8vehp3nz7oezjdxjkwmdg0pixkqkp', '2020-10-19 18:37:16', '2020-10-19 18:37:16', NULL),
(76, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', 'pflcbztqsyjkkfnw2x0ob8vehp3nz7oezjdxjkwmdg0pixkqkp', '2020-10-19 18:37:16', '2020-10-19 18:37:16', NULL),
(77, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', 'pflcbztqsyjkkfnw2x0ob8vehp3nz7oezjdxjkwmdg0pixkqkp', '2020-10-19 18:37:16', '2020-10-19 18:37:16', NULL),
(78, 'perg9rp46juqgkdpgshpujx5das61d74mm6yrya6jrwxh5tpqy', 'pfldjamattmuexeb2jbhhd5epmlbayhvtjud7lf0speqlis8rd', '2020-10-27 20:12:31', '2020-10-27 20:12:31', NULL),
(79, 'perzd47x9sdine3wuuuez92ki1lbh8z9sej7nkxl9iy9yb42ry', 'pfldjamattmuexeb2jbhhd5epmlbayhvtjud7lf0speqlis8rd', '2020-10-27 20:12:31', '2020-10-27 20:12:31', NULL),
(80, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'pfloojrzep4bq1qn2bi5zzdt6k0mgiheu4l6faqyxgqhzt5mc3', '2020-10-28 00:28:00', '2020-10-28 00:28:00', NULL),
(81, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'pfloojrzep4bq1qn2bi5zzdt6k0mgiheu4l6faqyxgqhzt5mc3', '2020-10-28 00:28:00', '2020-10-28 00:28:00', NULL),
(82, 'perwru0avsqkhwsjdekhptqtybblzyryglawm46bg8vyiosdcr', 'pfl3r9k15uqbpfjbmyawxxpdxnfwudtpvwnn4goqynqwocgwua', '2020-10-28 14:54:13', '2020-10-28 14:54:13', NULL),
(83, 'perrztidsfedzyavzys46kgk4qclxlvwsf4sen9mwn9dun9ega', 'pfl3r9k15uqbpfjbmyawxxpdxnfwudtpvwnn4goqynqwocgwua', '2020-10-28 14:54:13', '2020-10-28 14:54:13', NULL),
(84, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'pfl3ayd9mkqqhtpzxju9mdbo0ssfzmuivknpfthir1hkkd0w3n', '2020-10-28 14:56:39', '2020-10-28 14:56:39', NULL),
(85, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'pfl3ayd9mkqqhtpzxju9mdbo0ssfzmuivknpfthir1hkkd0w3n', '2020-10-28 14:56:39', '2020-10-28 14:56:39', NULL),
(88, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'pfl3r9k15uqbpfjbmyawxxpdxnfwudtpvwnn4goqynqwocgwua', '2020-10-28 15:16:47', '2020-10-28 15:16:47', NULL),
(89, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', 'pfl3r9k15uqbpfjbmyawxxpdxnfwudtpvwnn4goqynqwocgwua', '2020-10-28 15:16:47', '2020-10-28 15:16:47', NULL),
(90, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'pfl3r9k15uqbpfjbmyawxxpdxnfwudtpvwnn4goqynqwocgwua', '2020-10-28 15:20:39', '2020-10-28 15:20:39', NULL),
(91, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'pfl3r9k15uqbpfjbmyawxxpdxnfwudtpvwnn4goqynqwocgwua', '2020-10-28 15:20:39', '2020-10-28 15:20:39', NULL),
(92, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'pfl3r9k15uqbpfjbmyawxxpdxnfwudtpvwnn4goqynqwocgwua', '2020-10-28 15:27:09', '2020-10-28 15:27:09', NULL),
(93, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'pfl3r9k15uqbpfjbmyawxxpdxnfwudtpvwnn4goqynqwocgwua', '2020-10-28 15:27:09', '2020-10-28 15:27:09', NULL),
(94, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'pfl3yjjtrjkbgkklqnubakxr3mti0pddbd5pkdhwsbobgbdrtu', '2020-10-28 15:27:38', '2020-10-28 15:27:38', NULL),
(95, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'pfl3yjjtrjkbgkklqnubakxr3mti0pddbd5pkdhwsbobgbdrtu', '2020-10-28 15:27:38', '2020-10-28 15:27:38', NULL),
(96, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'pfl3yjjtrjkbgkklqnubakxr3mti0pddbd5pkdhwsbobgbdrtu', '2020-10-28 15:27:38', '2020-10-28 15:27:38', NULL),
(97, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'pfl3yjjtrjkbgkklqnubakxr3mti0pddbd5pkdhwsbobgbdrtu', '2020-10-28 15:27:38', '2020-10-28 15:27:38', NULL),
(98, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 'pfl3yjjtrjkbgkklqnubakxr3mti0pddbd5pkdhwsbobgbdrtu', '2020-10-28 15:27:38', '2020-10-28 15:27:38', NULL),
(99, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'pfl3yjjtrjkbgkklqnubakxr3mti0pddbd5pkdhwsbobgbdrtu', '2020-10-28 15:27:38', '2020-10-28 15:27:38', NULL),
(102, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'pfl3r9k15uqbpfjbmyawxxpdxnfwudtpvwnn4goqynqwocgwua', '2020-10-28 15:32:51', '2020-10-28 15:32:51', NULL),
(103, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'pfl3r9k15uqbpfjbmyawxxpdxnfwudtpvwnn4goqynqwocgwua', '2020-10-28 15:32:51', '2020-10-28 15:32:51', NULL),
(104, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'pfl3ayd9mkqqhtpzxju9mdbo0ssfzmuivknpfthir1hkkd0w3n', '2020-10-28 15:37:35', '2020-10-28 15:37:35', NULL),
(105, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'pfl3ayd9mkqqhtpzxju9mdbo0ssfzmuivknpfthir1hkkd0w3n', '2020-10-28 15:37:35', '2020-10-28 15:37:35', NULL),
(106, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'pflqeslkhdzkzevdr8wasvakb9pvly79pyueo7lzmyaocvyfoe', '2020-10-28 15:39:43', '2020-10-28 15:39:43', NULL),
(107, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'pflqeslkhdzkzevdr8wasvakb9pvly79pyueo7lzmyaocvyfoe', '2020-10-28 15:39:43', '2020-10-28 15:39:43', NULL),
(108, 'perguln9rfwptrihli5ykomxfgfvlwszsmhbmzxntgke9sxbwv', 'pflqeslkhdzkzevdr8wasvakb9pvly79pyueo7lzmyaocvyfoe', '2020-10-28 15:39:43', '2020-10-28 15:39:43', NULL),
(109, 'peraieoiywxwnzpgo5muwfvspy6kgeprinkdpyk13rovvilhxa', 'pflqeslkhdzkzevdr8wasvakb9pvly79pyueo7lzmyaocvyfoe', '2020-10-28 15:39:43', '2020-10-28 15:39:43', NULL),
(110, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'pfl3yjjtrjkbgkklqnubakxr3mti0pddbd5pkdhwsbobgbdrtu', '2020-10-28 15:57:15', '2020-10-28 15:57:15', NULL),
(111, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'pfl3yjjtrjkbgkklqnubakxr3mti0pddbd5pkdhwsbobgbdrtu', '2020-10-28 15:57:15', '2020-10-28 15:57:15', NULL),
(112, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'pfl3yjjtrjkbgkklqnubakxr3mti0pddbd5pkdhwsbobgbdrtu', '2020-10-28 15:57:15', '2020-10-28 15:57:15', NULL),
(113, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'pfl3yjjtrjkbgkklqnubakxr3mti0pddbd5pkdhwsbobgbdrtu', '2020-10-28 15:57:15', '2020-10-28 15:57:15', NULL),
(114, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'pfllkyanw8le3mz6cviczqimnu7sqz7hd69ovqvhpmvrpmqlal', '2020-10-28 16:01:22', '2020-10-28 16:01:22', NULL),
(115, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'pfllkyanw8le3mz6cviczqimnu7sqz7hd69ovqvhpmvrpmqlal', '2020-10-28 16:01:22', '2020-10-28 16:01:22', NULL),
(116, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'pfllkyanw8le3mz6cviczqimnu7sqz7hd69ovqvhpmvrpmqlal', '2020-10-28 16:01:22', '2020-10-28 16:01:22', NULL),
(117, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'pfllkyanw8le3mz6cviczqimnu7sqz7hd69ovqvhpmvrpmqlal', '2020-10-28 16:01:22', '2020-10-28 16:01:22', NULL),
(118, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'pfllkyanw8le3mz6cviczqimnu7sqz7hd69ovqvhpmvrpmqlal', '2020-10-28 16:01:22', '2020-10-28 16:01:22', NULL),
(119, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'pfllkyanw8le3mz6cviczqimnu7sqz7hd69ovqvhpmvrpmqlal', '2020-10-28 16:01:22', '2020-10-28 16:01:22', NULL),
(120, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'pflf9ryohc9cuxajku3jegl8aikzzs8dxuvwz1nofmjqzqzmek', '2020-10-28 16:14:52', '2020-10-28 16:14:52', NULL),
(121, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'pflf9ryohc9cuxajku3jegl8aikzzs8dxuvwz1nofmjqzqzmek', '2020-10-28 16:14:52', '2020-10-28 16:14:52', NULL),
(122, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'pflf9ryohc9cuxajku3jegl8aikzzs8dxuvwz1nofmjqzqzmek', '2020-10-28 16:14:52', '2020-10-28 16:14:52', NULL),
(123, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', 'pflf9ryohc9cuxajku3jegl8aikzzs8dxuvwz1nofmjqzqzmek', '2020-10-28 16:14:52', '2020-10-28 16:14:52', NULL),
(124, 'perwru0avsqkhwsjdekhptqtybblzyryglawm46bg8vyiosdcr', 'pflytnfqun7toghn4eyloralfuajcvukedaiwl4gwpnbbkv4wq', '2020-10-28 16:20:29', '2020-10-28 16:20:29', NULL),
(125, 'perrztidsfedzyavzys46kgk4qclxlvwsf4sen9mwn9dun9ega', 'pflytnfqun7toghn4eyloralfuajcvukedaiwl4gwpnbbkv4wq', '2020-10-28 16:20:29', '2020-10-28 16:20:29', NULL),
(126, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'pflytnfqun7toghn4eyloralfuajcvukedaiwl4gwpnbbkv4wq', '2020-10-28 16:20:29', '2020-10-28 16:20:29', NULL),
(127, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'pflytnfqun7toghn4eyloralfuajcvukedaiwl4gwpnbbkv4wq', '2020-10-28 16:20:30', '2020-10-28 16:20:30', NULL),
(128, 'perg9rp46juqgkdpgshpujx5das61d74mm6yrya6jrwxh5tpqy', 'pflv5px4rjogb1tx66ddrbka21jxvavxhqminvb0v3ckfh2aew', '2020-10-28 16:35:03', '2020-10-28 16:35:03', NULL),
(129, 'perzd47x9sdine3wuuuez92ki1lbh8z9sej7nkxl9iy9yb42ry', 'pflv5px4rjogb1tx66ddrbka21jxvavxhqminvb0v3ckfh2aew', '2020-10-28 16:35:03', '2020-10-28 16:35:03', NULL),
(130, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'pfl3r9k15uqbpfjbmyawxxpdxnfwudtpvwnn4goqynqwocgwua', '2020-10-28 19:22:29', '2020-10-28 19:22:29', NULL),
(131, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'pfl3r9k15uqbpfjbmyawxxpdxnfwudtpvwnn4goqynqwocgwua', '2020-10-28 19:22:29', '2020-10-28 19:22:29', NULL),
(132, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 'pflbg0euw2hvv2mo9om6cliiqovtnghycgkei0mrbbypn0nmv0', '2020-10-28 19:28:55', '2020-10-28 19:28:55', NULL),
(133, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 'pflbg0euw2hvv2mo9om6cliiqovtnghycgkei0mrbbypn0nmv0', '2020-10-28 19:28:55', '2020-10-28 19:28:55', NULL),
(134, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'pflvvzfpqqjyt0kt4jplekmpb54lsrvzkc4e8kikrw6yaqv2zr', '2020-10-28 19:48:09', '2020-10-28 19:48:09', NULL),
(135, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'pflvvzfpqqjyt0kt4jplekmpb54lsrvzkc4e8kikrw6yaqv2zr', '2020-10-28 19:48:09', '2020-10-28 19:48:09', NULL),
(136, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'pfllrwv3lcltnt44hctszweuhdiknam3l5fevnoxrj83karlp2', '2020-10-28 21:38:07', '2020-10-28 21:38:07', NULL),
(137, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'pfllrwv3lcltnt44hctszweuhdiknam3l5fevnoxrj83karlp2', '2020-10-28 21:38:07', '2020-10-28 21:38:07', NULL),
(138, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'pfllrwv3lcltnt44hctszweuhdiknam3l5fevnoxrj83karlp2', '2020-10-28 21:38:07', '2020-10-28 21:38:07', NULL),
(139, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'pfllrwv3lcltnt44hctszweuhdiknam3l5fevnoxrj83karlp2', '2020-10-28 21:38:07', '2020-10-28 21:38:07', NULL),
(140, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 'pfllrwv3lcltnt44hctszweuhdiknam3l5fevnoxrj83karlp2', '2020-10-28 21:38:07', '2020-10-28 21:38:07', NULL),
(141, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'pfllrwv3lcltnt44hctszweuhdiknam3l5fevnoxrj83karlp2', '2020-10-28 21:38:07', '2020-10-28 21:38:07', NULL),
(142, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'pfllrwv3lcltnt44hctszweuhdiknam3l5fevnoxrj83karlp2', '2020-10-28 21:39:37', '2020-10-28 21:39:37', NULL),
(143, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'pfllrwv3lcltnt44hctszweuhdiknam3l5fevnoxrj83karlp2', '2020-10-28 21:39:38', '2020-10-28 21:39:38', NULL),
(144, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'pfllrwv3lcltnt44hctszweuhdiknam3l5fevnoxrj83karlp2', '2020-10-28 21:39:38', '2020-10-28 21:39:38', NULL),
(145, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'pfllrwv3lcltnt44hctszweuhdiknam3l5fevnoxrj83karlp2', '2020-10-28 21:39:38', '2020-10-28 21:39:38', NULL),
(146, 'perguln9rfwptrihli5ykomxfgfvlwszsmhbmzxntgke9sxbwv', 'pflp8vjmfgancixs5rbsfhgwxcuw4ox3kedef7dscemmssqyhs', '2020-10-28 21:51:07', '2020-10-28 21:51:07', NULL),
(147, 'peraieoiywxwnzpgo5muwfvspy6kgeprinkdpyk13rovvilhxa', 'pflp8vjmfgancixs5rbsfhgwxcuw4ox3kedef7dscemmssqyhs', '2020-10-28 21:51:07', '2020-10-28 21:51:07', NULL),
(148, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'pflrtopdosehuruvfis7mnqpc7v244x0e93d6z0eznfnuunijf', '2020-10-28 21:52:12', '2020-10-28 21:52:12', NULL),
(149, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'pflrtopdosehuruvfis7mnqpc7v244x0e93d6z0eznfnuunijf', '2020-10-28 21:52:12', '2020-10-28 21:52:12', NULL),
(150, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'pflocxtovsqu1crjqdg2c8qrnrabmbltbo3gilp0w4kmuelhgy', '2020-10-28 21:53:40', '2020-10-28 21:53:40', NULL),
(151, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'pflocxtovsqu1crjqdg2c8qrnrabmbltbo3gilp0w4kmuelhgy', '2020-10-28 21:53:40', '2020-10-28 21:53:40', NULL),
(152, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'pflaxsqa9oigavfliales8rpsq05wjcyudip4mxpe5s4mnqrjj', '2020-10-28 21:57:13', '2020-10-28 21:57:13', NULL),
(153, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'pflaxsqa9oigavfliales8rpsq05wjcyudip4mxpe5s4mnqrjj', '2020-10-28 21:57:13', '2020-10-28 21:57:13', NULL),
(154, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'pflp8vjmfgancixs5rbsfhgwxcuw4ox3kedef7dscemmssqyhs', '2020-10-28 21:58:32', '2020-10-28 21:58:32', NULL),
(155, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'pflp8vjmfgancixs5rbsfhgwxcuw4ox3kedef7dscemmssqyhs', '2020-10-28 21:58:32', '2020-10-28 21:58:32', NULL),
(156, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'pflzoa9bqnf8p3sa3hvzohczyezd9uhyibe4tsk1wuygcfiwap', '2020-10-28 22:02:05', '2020-10-28 22:02:05', NULL),
(157, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'pflzoa9bqnf8p3sa3hvzohczyezd9uhyibe4tsk1wuygcfiwap', '2020-10-28 22:02:05', '2020-10-28 22:02:05', NULL),
(158, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'pflzoa9bqnf8p3sa3hvzohczyezd9uhyibe4tsk1wuygcfiwap', '2020-10-28 22:02:05', '2020-10-28 22:02:05', NULL),
(159, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'pflzoa9bqnf8p3sa3hvzohczyezd9uhyibe4tsk1wuygcfiwap', '2020-10-28 22:02:05', '2020-10-28 22:02:05', NULL),
(160, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'pflru97evf0txvtjrfmnfflkcd4y4acfl4rjawy8efq3aus1ud', '2020-10-28 22:03:33', '2020-10-28 22:03:33', NULL),
(161, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'pflru97evf0txvtjrfmnfflkcd4y4acfl4rjawy8efq3aus1ud', '2020-10-28 22:03:33', '2020-10-28 22:03:33', NULL),
(162, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'pflru97evf0txvtjrfmnfflkcd4y4acfl4rjawy8efq3aus1ud', '2020-10-28 22:03:33', '2020-10-28 22:03:33', NULL),
(163, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'pflru97evf0txvtjrfmnfflkcd4y4acfl4rjawy8efq3aus1ud', '2020-10-28 22:03:33', '2020-10-28 22:03:33', NULL),
(164, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 'pflru97evf0txvtjrfmnfflkcd4y4acfl4rjawy8efq3aus1ud', '2020-10-28 22:03:33', '2020-10-28 22:03:33', NULL),
(165, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'pflru97evf0txvtjrfmnfflkcd4y4acfl4rjawy8efq3aus1ud', '2020-10-28 22:03:33', '2020-10-28 22:03:33', NULL),
(166, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'pflffm7wblhjvc95iauzmk7m71ji1g5guoiydmtlw04u3h1dnq', '2020-10-28 22:08:14', '2020-10-28 22:08:14', NULL),
(167, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'pflffm7wblhjvc95iauzmk7m71ji1g5guoiydmtlw04u3h1dnq', '2020-10-28 22:08:14', '2020-10-28 22:08:14', NULL),
(168, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'pfl4oaovtueipkqcaiukazbtjwoxbuwvze0aqet58u4ksghqrw', '2020-10-28 22:08:23', '2020-10-28 22:08:23', NULL),
(169, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'pflffm7wblhjvc95iauzmk7m71ji1g5guoiydmtlw04u3h1dnq', '2020-10-28 22:09:32', '2020-10-28 22:09:32', NULL),
(170, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'pflffm7wblhjvc95iauzmk7m71ji1g5guoiydmtlw04u3h1dnq', '2020-10-28 22:09:32', '2020-10-28 22:09:32', NULL),
(172, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'pflstahyrpyojgssb5s5pzhogjduawi0imxjaq48yg54afqnyq', '2020-10-28 22:13:33', '2020-10-28 22:13:33', NULL),
(173, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'pflstahyrpyojgssb5s5pzhogjduawi0imxjaq48yg54afqnyq', '2020-10-28 22:13:34', '2020-10-28 22:13:34', NULL),
(174, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'pflstahyrpyojgssb5s5pzhogjduawi0imxjaq48yg54afqnyq', '2020-10-28 22:13:34', '2020-10-28 22:13:34', NULL),
(175, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'pflstahyrpyojgssb5s5pzhogjduawi0imxjaq48yg54afqnyq', '2020-10-28 22:13:34', '2020-10-28 22:13:34', NULL),
(176, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'pflerxer1q5nqhfqeaji5vvubwafaq88hlmbah84qnz0ho4feu', '2020-10-28 22:14:39', '2020-10-28 22:14:39', NULL),
(177, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'pflerxer1q5nqhfqeaji5vvubwafaq88hlmbah84qnz0ho4feu', '2020-10-28 22:14:39', '2020-10-28 22:14:39', NULL),
(178, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'pflerxer1q5nqhfqeaji5vvubwafaq88hlmbah84qnz0ho4feu', '2020-10-28 22:14:39', '2020-10-28 22:14:39', NULL),
(179, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'pflerxer1q5nqhfqeaji5vvubwafaq88hlmbah84qnz0ho4feu', '2020-10-28 22:14:39', '2020-10-28 22:14:39', NULL),
(180, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'pflerxer1q5nqhfqeaji5vvubwafaq88hlmbah84qnz0ho4feu', '2020-10-28 22:16:17', '2020-10-28 22:16:17', NULL),
(181, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'pflerxer1q5nqhfqeaji5vvubwafaq88hlmbah84qnz0ho4feu', '2020-10-28 22:16:17', '2020-10-28 22:16:17', NULL),
(182, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'pflerxer1q5nqhfqeaji5vvubwafaq88hlmbah84qnz0ho4feu', '2020-10-28 22:16:17', '2020-10-28 22:16:17', NULL),
(183, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'pflerxer1q5nqhfqeaji5vvubwafaq88hlmbah84qnz0ho4feu', '2020-10-28 22:16:17', '2020-10-28 22:16:17', NULL),
(184, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 'pflerxer1q5nqhfqeaji5vvubwafaq88hlmbah84qnz0ho4feu', '2020-10-28 22:16:17', '2020-10-28 22:16:17', NULL),
(185, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'pflerxer1q5nqhfqeaji5vvubwafaq88hlmbah84qnz0ho4feu', '2020-10-28 22:16:17', '2020-10-28 22:16:17', NULL),
(186, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'pfl4oaovtueipkqcaiukazbtjwoxbuwvze0aqet58u4ksghqrw', '2020-10-28 22:23:47', '2020-10-28 22:23:47', NULL),
(187, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'pflpmacega8ejnilb1wcamrwzcych3ueybqstjik9kyukkzu2v', '2020-10-28 22:24:40', '2020-10-28 22:24:40', NULL),
(188, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'pflpmacega8ejnilb1wcamrwzcych3ueybqstjik9kyukkzu2v', '2020-10-28 22:24:40', '2020-10-28 22:24:40', NULL),
(189, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'pflpmacega8ejnilb1wcamrwzcych3ueybqstjik9kyukkzu2v', '2020-10-28 22:24:40', '2020-10-28 22:24:40', NULL),
(190, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'pflpmacega8ejnilb1wcamrwzcych3ueybqstjik9kyukkzu2v', '2020-10-28 22:24:40', '2020-10-28 22:24:40', NULL),
(191, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'pfl4oaovtueipkqcaiukazbtjwoxbuwvze0aqet58u4ksghqrw', '2020-10-28 22:25:43', '2020-10-28 22:25:43', NULL),
(192, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'pfl4oaovtueipkqcaiukazbtjwoxbuwvze0aqet58u4ksghqrw', '2020-10-28 22:25:43', '2020-10-28 22:25:43', NULL),
(193, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'pfl8elhxnlbekunxjd6ho8sqwqdmebicyhzrcj4udc7om4cehv', '2020-10-28 22:26:33', '2020-10-28 22:26:33', NULL),
(194, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'pfl8elhxnlbekunxjd6ho8sqwqdmebicyhzrcj4udc7om4cehv', '2020-10-28 22:26:33', '2020-10-28 22:26:33', NULL),
(195, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'pfl8elhxnlbekunxjd6ho8sqwqdmebicyhzrcj4udc7om4cehv', '2020-10-28 22:26:33', '2020-10-28 22:26:33', NULL),
(196, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'pfl8elhxnlbekunxjd6ho8sqwqdmebicyhzrcj4udc7om4cehv', '2020-10-28 22:26:33', '2020-10-28 22:26:33', NULL),
(197, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'pfllmhgawirkzhxbaepzgzzsnynb2ar452o7drn80umfpsnqj4', '2020-10-28 22:27:44', '2020-10-28 22:27:44', NULL),
(198, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'pfllmhgawirkzhxbaepzgzzsnynb2ar452o7drn80umfpsnqj4', '2020-10-28 22:27:44', '2020-10-28 22:27:44', NULL),
(199, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'pfl8vwlvewtdgfbjsmjmvnc4pqb0vokhphzcop6j4wlxhn9tze', '2020-10-28 22:29:32', '2020-10-28 22:29:32', NULL),
(200, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'pfl8vwlvewtdgfbjsmjmvnc4pqb0vokhphzcop6j4wlxhn9tze', '2020-10-28 22:29:32', '2020-10-28 22:29:32', NULL),
(201, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'pflvhaaemdkkwn35dth9si3daqpd4buy0jly2stx1juaxoyrrm', '2020-10-28 22:31:12', '2020-10-28 22:31:12', NULL),
(202, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'pflvhaaemdkkwn35dth9si3daqpd4buy0jly2stx1juaxoyrrm', '2020-10-28 22:31:12', '2020-10-28 22:31:12', NULL),
(203, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'pflle02ua69xpmsszxk1mq8ckhp9cdcfkvhunabmey5fpwestx', '2020-10-28 22:31:47', '2020-10-28 22:31:47', NULL),
(204, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'pflle02ua69xpmsszxk1mq8ckhp9cdcfkvhunabmey5fpwestx', '2020-10-28 22:31:47', '2020-10-28 22:31:47', NULL),
(205, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'pflle02ua69xpmsszxk1mq8ckhp9cdcfkvhunabmey5fpwestx', '2020-10-28 22:31:47', '2020-10-28 22:31:47', NULL),
(206, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'pflle02ua69xpmsszxk1mq8ckhp9cdcfkvhunabmey5fpwestx', '2020-10-28 22:31:47', '2020-10-28 22:31:47', NULL),
(207, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'pflvhaaemdkkwn35dth9si3daqpd4buy0jly2stx1juaxoyrrm', '2020-10-28 22:32:43', '2020-10-28 22:32:43', NULL),
(208, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'pflvhaaemdkkwn35dth9si3daqpd4buy0jly2stx1juaxoyrrm', '2020-10-28 22:32:43', '2020-10-28 22:32:43', NULL),
(209, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'pfl8vwlvewtdgfbjsmjmvnc4pqb0vokhphzcop6j4wlxhn9tze', '2020-10-28 22:33:21', '2020-10-28 22:33:21', NULL),
(210, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', 'pfl8vwlvewtdgfbjsmjmvnc4pqb0vokhphzcop6j4wlxhn9tze', '2020-10-28 22:33:21', '2020-10-28 22:33:21', NULL),
(211, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'pflp6ey967dryciidxryrpo8l9e3dnigqb62t0cfegnl27mf0w', '2020-10-28 22:36:45', '2020-10-28 22:36:45', NULL),
(212, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'pflp6ey967dryciidxryrpo8l9e3dnigqb62t0cfegnl27mf0w', '2020-10-28 22:36:45', '2020-10-28 22:36:45', NULL),
(213, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'pflp6ey967dryciidxryrpo8l9e3dnigqb62t0cfegnl27mf0w', '2020-10-28 22:37:46', '2020-10-28 22:37:46', NULL),
(214, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'pflp6ey967dryciidxryrpo8l9e3dnigqb62t0cfegnl27mf0w', '2020-10-28 22:37:46', '2020-10-28 22:37:46', NULL),
(215, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'pflgkc7zgfzpfh8ohdybvt8obulfsj44kh5h5dezmrkpt50hsn', '2020-10-28 22:37:56', '2020-10-28 22:37:56', NULL),
(216, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'pflgkc7zgfzpfh8ohdybvt8obulfsj44kh5h5dezmrkpt50hsn', '2020-10-28 22:37:57', '2020-10-28 22:37:57', NULL),
(217, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'pflgkc7zgfzpfh8ohdybvt8obulfsj44kh5h5dezmrkpt50hsn', '2020-10-28 22:37:57', '2020-10-28 22:37:57', NULL),
(218, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'pflgkc7zgfzpfh8ohdybvt8obulfsj44kh5h5dezmrkpt50hsn', '2020-10-28 22:37:57', '2020-10-28 22:37:57', NULL),
(219, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 'pflgkc7zgfzpfh8ohdybvt8obulfsj44kh5h5dezmrkpt50hsn', '2020-10-28 22:37:57', '2020-10-28 22:37:57', NULL),
(220, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'pflgkc7zgfzpfh8ohdybvt8obulfsj44kh5h5dezmrkpt50hsn', '2020-10-28 22:37:57', '2020-10-28 22:37:57', NULL),
(221, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'pflvqpbewnwca0irwyzekykevf4dsoghgc4xfe0mfywzeaxumf', '2020-10-28 22:40:10', '2020-10-28 22:40:10', NULL),
(222, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'pflvqpbewnwca0irwyzekykevf4dsoghgc4xfe0mfywzeaxumf', '2020-10-28 22:40:10', '2020-10-28 22:40:10', NULL),
(223, 'perguln9rfwptrihli5ykomxfgfvlwszsmhbmzxntgke9sxbwv', 'pflziy7g3oa7ohjxb11b3rtvu0adgzi9cmsrcnornywtdwllza', '2020-10-28 22:41:18', '2020-10-28 22:41:18', NULL),
(224, 'peraieoiywxwnzpgo5muwfvspy6kgeprinkdpyk13rovvilhxa', 'pflziy7g3oa7ohjxb11b3rtvu0adgzi9cmsrcnornywtdwllza', '2020-10-28 22:41:18', '2020-10-28 22:41:18', NULL),
(225, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'pflziy7g3oa7ohjxb11b3rtvu0adgzi9cmsrcnornywtdwllza', '2020-10-28 22:42:01', '2020-10-28 22:42:01', NULL),
(226, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'pflziy7g3oa7ohjxb11b3rtvu0adgzi9cmsrcnornywtdwllza', '2020-10-28 22:42:01', '2020-10-28 22:42:01', NULL),
(227, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'pflvqpbewnwca0irwyzekykevf4dsoghgc4xfe0mfywzeaxumf', '2020-10-28 22:43:00', '2020-10-28 22:43:00', NULL),
(228, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'pflvqpbewnwca0irwyzekykevf4dsoghgc4xfe0mfywzeaxumf', '2020-10-28 22:43:00', '2020-10-28 22:43:00', NULL),
(229, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', 'pflohqsjxgwztt7sezijcshbv63s0c7vsaro66rvmyokl9plwc', '2020-10-28 22:49:25', '2020-10-28 22:49:25', NULL),
(230, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', 'pflohqsjxgwztt7sezijcshbv63s0c7vsaro66rvmyokl9plwc', '2020-10-28 22:49:25', '2020-10-28 22:49:25', NULL),
(231, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 'pflohqsjxgwztt7sezijcshbv63s0c7vsaro66rvmyokl9plwc', '2020-10-28 22:49:25', '2020-10-28 22:49:25', NULL),
(232, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 'pflohqsjxgwztt7sezijcshbv63s0c7vsaro66rvmyokl9plwc', '2020-10-28 22:49:25', '2020-10-28 22:49:25', NULL),
(233, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', 'pfljtrmixi9pmjsi7xoqliqy4haongxcyaybjt2ywtmg0ngmjy', '2020-10-28 22:53:54', '2020-10-28 22:53:54', NULL),
(234, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', 'pfljtrmixi9pmjsi7xoqliqy4haongxcyaybjt2ywtmg0ngmjy', '2020-10-28 22:53:54', '2020-10-28 22:53:54', NULL),
(235, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 'pfljtrmixi9pmjsi7xoqliqy4haongxcyaybjt2ywtmg0ngmjy', '2020-10-28 22:53:55', '2020-10-28 22:53:55', NULL),
(236, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 'pfljtrmixi9pmjsi7xoqliqy4haongxcyaybjt2ywtmg0ngmjy', '2020-10-28 22:53:55', '2020-10-28 22:53:55', NULL),
(237, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', 'pflcn5zkkpurlxznrrxwe5wxi2ktmdpdqa4w5dt0lrvvhkma67', '2020-10-28 22:55:17', '2020-10-28 22:55:17', NULL),
(238, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', 'pflcn5zkkpurlxznrrxwe5wxi2ktmdpdqa4w5dt0lrvvhkma67', '2020-10-28 22:55:17', '2020-10-28 22:55:17', NULL),
(239, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 'pflcn5zkkpurlxznrrxwe5wxi2ktmdpdqa4w5dt0lrvvhkma67', '2020-10-28 22:55:17', '2020-10-28 22:55:17', NULL),
(240, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 'pflcn5zkkpurlxznrrxwe5wxi2ktmdpdqa4w5dt0lrvvhkma67', '2020-10-28 22:55:17', '2020-10-28 22:55:17', NULL),
(241, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', 'pfl9hybryxln1uyb9ulqkhpfllixgth3ew1w2a1muyqnku56ie', '2020-10-28 22:56:14', '2020-10-28 22:56:14', NULL),
(242, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', 'pfl9hybryxln1uyb9ulqkhpfllixgth3ew1w2a1muyqnku56ie', '2020-10-28 22:56:14', '2020-10-28 22:56:14', NULL),
(243, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 'pfl9hybryxln1uyb9ulqkhpfllixgth3ew1w2a1muyqnku56ie', '2020-10-28 22:56:14', '2020-10-28 22:56:14', NULL),
(244, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 'pfl9hybryxln1uyb9ulqkhpfllixgth3ew1w2a1muyqnku56ie', '2020-10-28 22:56:14', '2020-10-28 22:56:14', NULL),
(245, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'pflyzsz5alasikjea7tmoda20dsyzpuivjs6olhojdb3paoyxn', '2020-10-28 22:59:45', '2020-10-28 22:59:45', NULL),
(246, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'pflyzsz5alasikjea7tmoda20dsyzpuivjs6olhojdb3paoyxn', '2020-10-28 22:59:45', '2020-10-28 22:59:45', NULL),
(247, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'pflyzsz5alasikjea7tmoda20dsyzpuivjs6olhojdb3paoyxn', '2020-10-28 23:01:35', '2020-10-28 23:01:35', NULL),
(248, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'pflyzsz5alasikjea7tmoda20dsyzpuivjs6olhojdb3paoyxn', '2020-10-28 23:01:36', '2020-10-28 23:01:36', NULL),
(249, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'pflyzsz5alasikjea7tmoda20dsyzpuivjs6olhojdb3paoyxn', '2020-10-28 23:03:27', '2020-10-28 23:03:27', NULL),
(250, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', 'pflyzsz5alasikjea7tmoda20dsyzpuivjs6olhojdb3paoyxn', '2020-10-28 23:03:28', '2020-10-28 23:03:28', NULL),
(251, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'pflyzsz5alasikjea7tmoda20dsyzpuivjs6olhojdb3paoyxn', '2020-10-28 23:04:53', '2020-10-28 23:04:53', NULL),
(252, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'pflyzsz5alasikjea7tmoda20dsyzpuivjs6olhojdb3paoyxn', '2020-10-28 23:04:53', '2020-10-28 23:04:53', NULL),
(253, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'pflyzsz5alasikjea7tmoda20dsyzpuivjs6olhojdb3paoyxn', '2020-10-28 23:06:08', '2020-10-28 23:06:08', NULL),
(254, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'pflyzsz5alasikjea7tmoda20dsyzpuivjs6olhojdb3paoyxn', '2020-10-28 23:06:08', '2020-10-28 23:06:08', NULL),
(255, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'pflyzsz5alasikjea7tmoda20dsyzpuivjs6olhojdb3paoyxn', '2020-10-28 23:11:16', '2020-10-28 23:11:16', NULL),
(256, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'pflyzsz5alasikjea7tmoda20dsyzpuivjs6olhojdb3paoyxn', '2020-10-28 23:11:16', '2020-10-28 23:11:16', NULL),
(257, 'perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', 'pfldlatfxgrfnijkladjg1yqtxfn8ncclbtqt12fxjce2ivequ', '2020-10-28 23:13:57', '2020-10-28 23:13:57', NULL),
(258, 'perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', 'pfldlatfxgrfnijkladjg1yqtxfn8ncclbtqt12fxjce2ivequ', '2020-10-28 23:13:57', '2020-10-28 23:13:57', NULL),
(259, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', 'pfldlatfxgrfnijkladjg1yqtxfn8ncclbtqt12fxjce2ivequ', '2020-10-28 23:13:58', '2020-10-28 23:13:58', NULL),
(260, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', 'pfldlatfxgrfnijkladjg1yqtxfn8ncclbtqt12fxjce2ivequ', '2020-10-28 23:13:58', '2020-10-28 23:13:58', NULL),
(261, 'perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', 'pflouyiqjngpoxuor16txghwmucynu7hhzxbqfy375n19s96tq', '2020-10-28 23:18:23', '2020-10-28 23:18:23', NULL),
(262, 'perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', 'pflouyiqjngpoxuor16txghwmucynu7hhzxbqfy375n19s96tq', '2020-10-28 23:18:23', '2020-10-28 23:18:23', NULL),
(263, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', 'pflouyiqjngpoxuor16txghwmucynu7hhzxbqfy375n19s96tq', '2020-10-28 23:18:23', '2020-10-28 23:18:23', NULL),
(264, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', 'pflouyiqjngpoxuor16txghwmucynu7hhzxbqfy375n19s96tq', '2020-10-28 23:18:23', '2020-10-28 23:18:23', NULL),
(265, 'perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', 'pflvgr1el3bju1z8hmb3w1blicy8ltorevun1ntzo2io7swir8', '2020-10-28 23:19:24', '2020-10-28 23:19:24', NULL),
(266, 'perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', 'pflvgr1el3bju1z8hmb3w1blicy8ltorevun1ntzo2io7swir8', '2020-10-28 23:19:25', '2020-10-28 23:19:25', NULL),
(267, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', 'pflvgr1el3bju1z8hmb3w1blicy8ltorevun1ntzo2io7swir8', '2020-10-28 23:19:25', '2020-10-28 23:19:25', NULL),
(268, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', 'pflvgr1el3bju1z8hmb3w1blicy8ltorevun1ntzo2io7swir8', '2020-10-28 23:19:25', '2020-10-28 23:19:25', NULL),
(269, 'perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', 'pflcsemobri04t38ehunf1trveltxumhv58tsjc8uxxfwgutx0', '2020-10-28 23:28:29', '2020-10-28 23:28:29', NULL),
(270, 'perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', 'pflcsemobri04t38ehunf1trveltxumhv58tsjc8uxxfwgutx0', '2020-10-28 23:28:29', '2020-10-28 23:28:29', NULL),
(271, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', 'pflcsemobri04t38ehunf1trveltxumhv58tsjc8uxxfwgutx0', '2020-10-28 23:28:30', '2020-10-28 23:28:30', NULL),
(272, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', 'pflcsemobri04t38ehunf1trveltxumhv58tsjc8uxxfwgutx0', '2020-10-28 23:28:30', '2020-10-28 23:28:30', NULL),
(273, 'perwru0avsqkhwsjdekhptqtybblzyryglawm46bg8vyiosdcr', 'pflnxtnjvdvd2thsuutkcnhzjpd67lhurrg6rwtouuyuqda63z', '2020-10-28 23:34:50', '2020-10-28 23:34:50', NULL),
(274, 'perrztidsfedzyavzys46kgk4qclxlvwsf4sen9mwn9dun9ega', 'pflnxtnjvdvd2thsuutkcnhzjpd67lhurrg6rwtouuyuqda63z', '2020-10-28 23:34:50', '2020-10-28 23:34:50', NULL),
(275, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', 'pfly3bgj7yz75ogoty8ym8owbnfnrqmisb8rpscpc4yxw4b7pq', '2020-10-28 23:37:35', '2020-10-28 23:37:35', NULL),
(276, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', 'pfly3bgj7yz75ogoty8ym8owbnfnrqmisb8rpscpc4yxw4b7pq', '2020-10-28 23:37:35', '2020-10-28 23:37:35', NULL),
(277, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', 'pflo9vl1nutlnebljkojkove0pzjdinylpdytjx06swzzssefg', '2020-10-28 23:39:57', '2020-10-28 23:39:57', NULL),
(278, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', 'pflo9vl1nutlnebljkojkove0pzjdinylpdytjx06swzzssefg', '2020-10-28 23:39:57', '2020-10-28 23:39:57', NULL),
(279, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', 'pfl0anunxvocnrxfg9amjdnadwr7iuw7v2jtil83zy6bzcbd3n', '2020-10-29 13:25:21', '2020-10-29 13:25:21', NULL),
(280, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', 'pfl0anunxvocnrxfg9amjdnadwr7iuw7v2jtil83zy6bzcbd3n', '2020-10-29 13:25:21', '2020-10-29 13:25:21', NULL),
(281, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'pfl0anunxvocnrxfg9amjdnadwr7iuw7v2jtil83zy6bzcbd3n', '2020-10-29 13:25:21', '2020-10-29 13:25:21', NULL),
(282, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'pfl0anunxvocnrxfg9amjdnadwr7iuw7v2jtil83zy6bzcbd3n', '2020-10-29 13:25:22', '2020-10-29 13:25:22', NULL),
(283, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'pfl0anunxvocnrxfg9amjdnadwr7iuw7v2jtil83zy6bzcbd3n', '2020-10-29 13:26:11', '2020-10-29 13:26:11', NULL),
(284, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'pfl0anunxvocnrxfg9amjdnadwr7iuw7v2jtil83zy6bzcbd3n', '2020-10-29 13:26:11', '2020-10-29 13:26:11', NULL),
(285, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'pfl0anunxvocnrxfg9amjdnadwr7iuw7v2jtil83zy6bzcbd3n', '2020-10-29 13:26:11', '2020-10-29 13:26:11', NULL),
(286, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'pfl0anunxvocnrxfg9amjdnadwr7iuw7v2jtil83zy6bzcbd3n', '2020-10-29 13:26:11', '2020-10-29 13:26:11', NULL),
(287, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', 'pfl0anunxvocnrxfg9amjdnadwr7iuw7v2jtil83zy6bzcbd3n', '2020-10-29 13:26:11', '2020-10-29 13:26:11', NULL),
(288, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'pfl0anunxvocnrxfg9amjdnadwr7iuw7v2jtil83zy6bzcbd3n', '2020-10-29 13:26:11', '2020-10-29 13:26:11', NULL),
(289, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'pflyoqhtyfqnavhd7hvcaw2cebazeckmfm8goyui9zo2gy2qxb', '2020-10-29 13:30:17', '2020-10-29 13:30:17', NULL),
(290, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'pflyoqhtyfqnavhd7hvcaw2cebazeckmfm8goyui9zo2gy2qxb', '2020-10-29 13:30:17', '2020-10-29 13:30:17', NULL),
(291, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'pflyoqhtyfqnavhd7hvcaw2cebazeckmfm8goyui9zo2gy2qxb', '2020-10-29 13:30:17', '2020-10-29 13:30:17', NULL),
(292, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'pflyoqhtyfqnavhd7hvcaw2cebazeckmfm8goyui9zo2gy2qxb', '2020-10-29 13:30:17', '2020-10-29 13:30:17', NULL),
(293, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', 'pflrtopdosehuruvfis7mnqpc7v244x0e93d6z0eznfnuunijf', '2020-10-29 13:34:38', '2020-10-29 13:34:38', NULL),
(294, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', 'pflrtopdosehuruvfis7mnqpc7v244x0e93d6z0eznfnuunijf', '2020-10-29 13:34:38', '2020-10-29 13:34:38', NULL),
(295, 'perg9rp46juqgkdpgshpujx5das61d74mm6yrya6jrwxh5tpqy', 'pflrtopdosehuruvfis7mnqpc7v244x0e93d6z0eznfnuunijf', '2020-10-29 13:35:59', '2020-10-29 13:35:59', NULL),
(296, 'perzd47x9sdine3wuuuez92ki1lbh8z9sej7nkxl9iy9yb42ry', 'pflrtopdosehuruvfis7mnqpc7v244x0e93d6z0eznfnuunijf', '2020-10-29 13:35:59', '2020-10-29 13:35:59', NULL),
(297, 'perwru0avsqkhwsjdekhptqtybblzyryglawm46bg8vyiosdcr', 'pfl70ghhbna6dcb0ah99p088kshox50apjadbjub5fk43jywn7', '2020-10-29 13:45:30', '2020-10-29 13:45:30', NULL),
(298, 'perrztidsfedzyavzys46kgk4qclxlvwsf4sen9mwn9dun9ega', 'pfl70ghhbna6dcb0ah99p088kshox50apjadbjub5fk43jywn7', '2020-10-29 13:45:30', '2020-10-29 13:45:30', NULL),
(299, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'pfl70ghhbna6dcb0ah99p088kshox50apjadbjub5fk43jywn7', '2020-10-29 13:52:15', '2020-10-29 13:52:15', NULL),
(300, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'pfl70ghhbna6dcb0ah99p088kshox50apjadbjub5fk43jywn7', '2020-10-29 13:52:15', '2020-10-29 13:52:15', NULL),
(301, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'pfl70ghhbna6dcb0ah99p088kshox50apjadbjub5fk43jywn7', '2020-10-29 13:52:16', '2020-10-29 13:52:16', NULL),
(302, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'pfl70ghhbna6dcb0ah99p088kshox50apjadbjub5fk43jywn7', '2020-10-29 13:52:16', '2020-10-29 13:52:16', NULL),
(303, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'pflasmi02vdq5g0y7govz1njncerbkot3kgbbdggfxau41gcvm', '2020-10-29 14:03:11', '2020-10-29 14:03:11', NULL),
(304, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'pflasmi02vdq5g0y7govz1njncerbkot3kgbbdggfxau41gcvm', '2020-10-29 14:03:11', '2020-10-29 14:03:11', NULL),
(305, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'pflqa41q2vwpxufsihw4inpzojmpeebe3j6alryylazpnhvrtm', '2020-10-29 14:47:09', '2020-10-29 14:47:09', NULL),
(306, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'pflqa41q2vwpxufsihw4inpzojmpeebe3j6alryylazpnhvrtm', '2020-10-29 14:47:09', '2020-10-29 14:47:09', NULL),
(307, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'pflvpg1pvxd5ewennnepak9yi3ergutsuszqtjxetdxpjrfrpz', '2020-10-29 14:50:48', '2020-10-29 14:50:48', NULL),
(308, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'pflvpg1pvxd5ewennnepak9yi3ergutsuszqtjxetdxpjrfrpz', '2020-10-29 14:50:48', '2020-10-29 14:50:48', NULL),
(309, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'pflvpg1pvxd5ewennnepak9yi3ergutsuszqtjxetdxpjrfrpz', '2020-10-29 14:54:51', '2020-10-29 14:54:51', NULL),
(310, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'pflvpg1pvxd5ewennnepak9yi3ergutsuszqtjxetdxpjrfrpz', '2020-10-29 14:54:51', '2020-10-29 14:54:51', NULL),
(311, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'pflimza4vtqght0ajfpkhxy0bpgth0ftuexa5wbnzfrrvuazy0', '2020-10-29 15:08:40', '2020-10-29 15:08:40', NULL),
(312, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'pflimza4vtqght0ajfpkhxy0bpgth0ftuexa5wbnzfrrvuazy0', '2020-10-29 15:08:40', '2020-10-29 15:08:40', NULL),
(313, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'pflimza4vtqght0ajfpkhxy0bpgth0ftuexa5wbnzfrrvuazy0', '2020-10-29 15:08:40', '2020-10-29 15:08:40', NULL),
(314, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'pflimza4vtqght0ajfpkhxy0bpgth0ftuexa5wbnzfrrvuazy0', '2020-10-29 15:08:40', '2020-10-29 15:08:40', NULL),
(315, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', 'pfllaykjgsr2exc6p1izkx8tqiaacbuzessajpauoy66ojdcpk', '2020-10-29 15:10:38', '2020-10-29 15:10:38', NULL),
(316, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', 'pfllaykjgsr2exc6p1izkx8tqiaacbuzessajpauoy66ojdcpk', '2020-10-29 15:10:38', '2020-10-29 15:10:38', NULL),
(317, 'peraieoiywxwnzpgo5muwfvspy6kgeprinkdpyk13rovvilhxa', 'pfldjamattmuexeb2jbhhd5epmlbayhvtjud7lf0speqlis8rd', '2020-10-29 16:49:35', '2020-10-29 16:49:35', NULL),
(318, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', 'pfldjamattmuexeb2jbhhd5epmlbayhvtjud7lf0speqlis8rd', '2020-10-29 16:49:35', '2020-10-29 16:49:35', NULL),
(319, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', 'pfldjamattmuexeb2jbhhd5epmlbayhvtjud7lf0speqlis8rd', '2020-10-29 16:49:35', '2020-10-29 16:49:35', NULL),
(320, 'perxmu1lji6h2kzmcpqdiq9swpoihhpy6p9fbsu2ceveejhcee', 'pfldjamattmuexeb2jbhhd5epmlbayhvtjud7lf0speqlis8rd', '2020-10-29 16:49:35', '2020-10-29 16:49:35', NULL),
(321, 'perb3s07xkyxj30ivxtqmazrovthu9omqtc4opadr1s8418xgd', 'pfldjamattmuexeb2jbhhd5epmlbayhvtjud7lf0speqlis8rd', '2020-10-29 16:49:35', '2020-10-29 16:49:35', NULL),
(322, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', 'pfldjamattmuexeb2jbhhd5epmlbayhvtjud7lf0speqlis8rd', '2020-10-29 16:59:21', '2020-10-29 16:59:21', NULL),
(323, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', 'pfldjamattmuexeb2jbhhd5epmlbayhvtjud7lf0speqlis8rd', '2020-10-29 16:59:21', '2020-10-29 16:59:21', NULL),
(324, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', 'pfldjamattmuexeb2jbhhd5epmlbayhvtjud7lf0speqlis8rd', '2020-10-29 16:59:21', '2020-10-29 16:59:21', NULL),
(325, 'pertohzyl5chsyngidkp36bwrdw3dykh2h6r2qcadtxet90uyy', 'pfldjamattmuexeb2jbhhd5epmlbayhvtjud7lf0speqlis8rd', '2020-10-29 16:59:21', '2020-10-29 16:59:21', NULL),
(326, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', 'pflqtrdaxpybkpxjcsrldubamgulb0zvlk1dj815l5vyhsmnoi', '2020-10-29 17:22:01', '2020-10-29 17:22:01', NULL),
(327, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', 'pflqtrdaxpybkpxjcsrldubamgulb0zvlk1dj815l5vyhsmnoi', '2020-10-29 17:22:01', '2020-10-29 17:22:01', NULL),
(328, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', 'pflqtrdaxpybkpxjcsrldubamgulb0zvlk1dj815l5vyhsmnoi', '2020-10-29 17:27:40', '2020-10-29 17:27:40', NULL),
(329, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', 'pflqtrdaxpybkpxjcsrldubamgulb0zvlk1dj815l5vyhsmnoi', '2020-10-29 17:27:40', '2020-10-29 17:27:40', NULL),
(330, 'perymq7kpd8jvoqtv6sevysv5cjferskob4gw4affbc5rwcq4j', 'pfl1yubmtiax1uhopmqalewbzibhjyautum9uieumaff6vehyd', '2020-10-29 20:58:09', '2020-10-29 20:58:09', NULL);
INSERT INTO `period_lecturers` (`id`, `period_id`, `lecturer_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(331, 'peroaq0ukjtvznmgcboptwzseyvh9dc6jd6hk1kxlvnlvvajdp', 'pfl1yubmtiax1uhopmqalewbzibhjyautum9uieumaff6vehyd', '2020-10-29 21:06:49', '2020-10-29 21:06:49', NULL),
(332, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'pfl1xp30lrm56yj6eurbvvycadxq19vi77owysskk6u4ruykjs', '2020-10-29 22:26:28', '2020-10-29 22:26:28', NULL),
(333, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'pfl1xp30lrm56yj6eurbvvycadxq19vi77owysskk6u4ruykjs', '2020-10-29 22:26:28', '2020-10-29 22:26:28', NULL),
(334, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', 'pflbg0euw2hvv2mo9om6cliiqovtnghycgkei0mrbbypn0nmv0', '2020-10-29 22:29:41', '2020-10-29 22:29:41', NULL),
(335, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', 'pflbg0euw2hvv2mo9om6cliiqovtnghycgkei0mrbbypn0nmv0', '2020-10-29 22:29:41', '2020-10-29 22:29:41', NULL),
(336, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', 'pflfjd3fdcdmuxakazx8s7chjxdnmscdzcw3nmvlqwiucqgtf3', '2020-10-29 22:35:23', '2020-10-29 22:35:23', NULL),
(337, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', 'pflfjd3fdcdmuxakazx8s7chjxdnmscdzcw3nmvlqwiucqgtf3', '2020-10-29 22:35:24', '2020-10-29 22:35:24', NULL),
(338, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', 'pflggb6kr4em8jpmjq5oizodsfdtwspfch1xu1wlcbgzgguwec', '2020-10-29 22:53:57', '2020-10-29 22:53:57', NULL),
(339, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', 'pflggb6kr4em8jpmjq5oizodsfdtwspfch1xu1wlcbgzgguwec', '2020-10-29 22:53:57', '2020-10-29 22:53:57', NULL),
(340, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', 'pflggb6kr4em8jpmjq5oizodsfdtwspfch1xu1wlcbgzgguwec', '2020-10-29 22:55:47', '2020-10-29 22:55:47', NULL),
(341, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', 'pflggb6kr4em8jpmjq5oizodsfdtwspfch1xu1wlcbgzgguwec', '2020-10-29 22:55:47', '2020-10-29 22:55:47', NULL),
(342, 'perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', 'pflyestjdeji1o48vshtytdldfgku8p8ac5oxmmdfzfg6qxwsf', '2020-10-29 22:59:46', '2020-10-29 22:59:46', NULL),
(343, 'perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', 'pflyestjdeji1o48vshtytdldfgku8p8ac5oxmmdfzfg6qxwsf', '2020-10-29 22:59:46', '2020-10-29 22:59:46', NULL),
(344, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', 'pflvympb8vzfkangpqtptwvhkxtayfb1u11ex12qbhoeu1llsg', '2020-10-29 23:01:59', '2020-10-29 23:01:59', NULL),
(345, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', 'pflvympb8vzfkangpqtptwvhkxtayfb1u11ex12qbhoeu1llsg', '2020-10-29 23:01:59', '2020-10-29 23:01:59', NULL),
(346, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', 'pflvympb8vzfkangpqtptwvhkxtayfb1u11ex12qbhoeu1llsg', '2020-10-29 23:01:59', '2020-10-29 23:01:59', NULL),
(347, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', 'pflvympb8vzfkangpqtptwvhkxtayfb1u11ex12qbhoeu1llsg', '2020-10-29 23:01:59', '2020-10-29 23:01:59', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `profiles`
--

CREATE TABLE `profiles` (
  `profile_id` varchar(50) NOT NULL,
  `profile_name` varchar(100) NOT NULL DEFAULT 'Lecturer Name',
  `profile_dateofbirth` datetime DEFAULT NULL,
  `profile_placeofbirth` varchar(100) DEFAULT NULL,
  `profile_sexe` varchar(10) NOT NULL DEFAULT 'M',
  `profile_phone` varchar(50) NOT NULL,
  `school_id` varchar(50) DEFAULT NULL,
  `profile_phone_2` varchar(50) DEFAULT NULL,
  `role` int(11) NOT NULL COMMENT 'role related to that profile, student, lecturer, administrator and else',
  `is_checked` tinyint(1) NOT NULL DEFAULT '1',
  `file` varchar(255) DEFAULT '/storage/images/students/default.png',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `profiles`
--

INSERT INTO `profiles` (`profile_id`, `profile_name`, `profile_dateofbirth`, `profile_placeofbirth`, `profile_sexe`, `profile_phone`, `school_id`, `profile_phone_2`, `role`, `is_checked`, `file`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
('pfl0anunxvocnrxfg9amjdnadwr7iuw7v2jtil83zy6bzcbd3n', 'GAWOU FP', '1990-09-09 00:00:00', 'GGTGT', 'Male', '678989876', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-29 13:23:55', '2020-10-29 13:23:55', NULL),
('pfl1xp30lrm56yj6eurbvvycadxq19vi77owysskk6u4ruykjs', 'EBONGUE MBOUNDJA', '2020-10-13 00:00:00', 'BONABERI', 'Male', '676798171', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:29:50', '2020-10-27 23:29:50', NULL),
('pfl1yubmtiax1uhopmqalewbzibhjyautum9uieumaff6vehyd', 'Mr NDFBA Elvis', '2020-10-27 00:00:00', 'dla', 'Male', '237', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:00:58', '2020-10-27 23:00:58', NULL),
('pfl2xhbfl9ncnd1ifscpn4ecr5fvyohypiktxdu4eqbskximfd', 'M.RIVANO', '2020-09-29 00:00:00', 'DOUALA', 'Male', '696784', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:09:49', '2020-10-27 23:09:49', NULL),
('pfl3ayd9mkqqhtpzxju9mdbo0ssfzmuivknpfthir1hkkd0w3n', 'Mme MBOLLE  Immaculate', '2020-10-27 00:00:00', 'dla', 'Female', '237', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 22:54:04', '2020-10-27 22:54:04', NULL),
('pfl3r9k15uqbpfjbmyawxxpdxnfwudtpvwnn4goqynqwocgwua', 'Mr NGWA Princewill', '2020-10-27 00:00:00', 'dla', 'Male', '237', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 22:51:05', '2020-10-27 22:51:05', NULL),
('pfl3rgkfdublqoywmuccusycmfwn3zan25kymfwsukpv4swzo1', 'Nkodo Mbe', '2020-07-18 00:00:00', 'Bali', 'Male', '+237 694-451-000', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '+237 675 881 377', 1, 0, NULL, NULL, '2020-07-18 14:01:21', '2020-10-23 01:16:19', NULL),
('pfl3yjjtrjkbgkklqnubakxr3mti0pddbd5pkdhwsbobgbdrtu', 'Ngawou Luther', '2020-09-29 00:00:00', 'Londo', 'Male', '+237 658425685', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 21:09:44', '2020-10-27 21:09:44', NULL),
('pfl4oaovtueipkqcaiukazbtjwoxbuwvze0aqet58u4ksghqrw', 'Mr NDZOKOU', '2020-10-27 00:00:00', 'dla', 'Male', '237', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:11:35', '2020-10-27 23:11:35', NULL),
('pfl54gtud2ridpdd18wyyabwutjtvidzxwo4ttc50yblshfymj', 'MBOYE MIDFIVE', '1990-07-06 00:00:00', 'UUU', 'Male', '699089786', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 22:59:36', '2020-10-28 22:59:36', NULL),
('pfl6cngkxzjf5ora9ccwp3opxpmztvws41sjztod4wzpuq4dv5', 'John Doe', '2020-10-08 00:00:00', 'Nowhere', 'Male', '+237675881555', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 2, NULL, NULL, '2020-10-16 17:12:39', '2020-10-23 01:16:19', NULL),
('pfl6h72cs6tuzwqmjjr8lysvsxbd4s0s8ghezht59kqu0efyf8', 'Mboye Abubakar', '2020-09-29 00:00:00', 'Buea', 'Male', '+237 225685256', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 21:08:06', '2020-10-27 21:08:06', NULL),
('pfl70ghhbna6dcb0ah99p088kshox50apjadbjub5fk43jywn7', 'Mr REVANUS ', '1990-08-08 00:00:00', 'IIIII', 'Male', '678889990', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-29 13:38:38', '2020-10-29 13:38:38', NULL),
('pfl7wicnhrj9n55xqzgsdutjsha055cbbhur1xyq483wrfccwh', 'MOYE PARMACOLOGIE GE', '1990-08-06 00:00:00', 'BBGG', 'Male', '678909090', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 23:23:28', '2020-10-28 23:23:28', NULL),
('pfl8elhxnlbekunxjd6ho8sqwqdmebicyhzrcj4udc7om4cehv', 'BABOU MARIAM MIDWIFE', '1990-06-04 00:00:00', 'TYTYY', 'Male', '656567890', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 22:19:43', '2020-10-28 22:19:43', NULL),
('pfl8ezzzgmnkai2kb8ykzwago3f3yoblwzcjhcynzoijtjgfgq', 'DR KUNGEH LAB TECH', '1990-07-06 00:00:00', 'KIKO', 'Male', '678989088', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-29 15:16:34', '2020-10-29 15:16:34', NULL),
('pfl8vwlvewtdgfbjsmjmvnc4pqb0vokhphzcop6j4wlxhn9tze', 'Mr NGONG killian', '2020-10-27 00:00:00', 'dla', 'Male', '237', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:04:35', '2020-10-27 23:04:35', NULL),
('pfl8xwfp7wj2yo4rlikd9uztvnqldmh3stfruqo0xwd5tsijqs', 'Mr AYUK Newton', '2020-10-27 00:00:00', 'dla', 'Male', '237', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:00:03', '2020-10-27 23:00:03', NULL),
('pfl8zjvl0yj3ctsf43gj9nyagqp4pp4gctcynlbw32xli2jj8e', 'AKABETH', '2020-10-15 00:00:00', 'BONABERI', 'Male', '98876665', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:14:09', '2020-10-27 23:14:09', NULL),
('pfl9hybryxln1uyb9ulqkhpfllixgth3ew1w2a1muyqnku56ie', 'KUNDE MIDWIFE', '1990-06-04 00:00:00', 'UUII', 'Male', '676779000', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 22:51:10', '2020-10-28 22:51:10', NULL),
('pflasmi02vdq5g0y7govz1njncerbkot3kgbbdggfxau41gcvm', 'DR LEMOUPA FOKOU ', '1999-09-08 00:00:00', 'OPO', 'Male', '678990989', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-29 13:54:51', '2020-10-29 13:54:51', NULL),
('pflatezuusxwulhfnob6zqyw1owgyqt2aqqrqggvfnu0ulwvkj', 'tom sawyer', '2020-07-09 00:00:00', 'ethiopia', 'Male', '5698', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '1528', 1, 1, NULL, NULL, '2020-07-23 15:25:13', '2020-10-23 01:16:19', NULL),
('pflaxsqa9oigavfliales8rpsq05wjcyudip4mxpe5s4mnqrjj', 'DR KUNGEH PHARMACY', '1967-10-07 00:00:00', 'OO', 'Male', '679005676', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 21:56:16', '2020-10-28 21:56:16', NULL),
('pflbeyaud1lvukzpdgl04yqaktmkgv12tmhkjf60tmogr7bimb', 'Dr KUNGEH ORIGINAL', '1987-10-08 00:00:00', 'hb', 'Male', '673056296', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '676088975', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 21:42:55', '2020-10-28 21:42:55', NULL),
('pflbg0euw2hvv2mo9om6cliiqovtnghycgkei0mrbbypn0nmv0', 'Mr NVESSI Eric', '2020-10-27 00:00:00', 'dla', 'Male', '237', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 22:57:25', '2020-10-27 22:57:25', NULL),
('pflbicrnbju2wgtmk1ipo213eul5tlap0qfacywoquodpbhf2b', 'jean yves', '2020-07-16 00:00:00', 'Bali', 'Male', '123', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '12356', 3, 3, NULL, NULL, '2020-07-23 02:26:02', '2020-10-23 01:16:19', NULL),
('pflbr4tb6kygggrgcdm9uqx4okaph9dgi2q6alraqxikx7ervu', 'Mme EBAI Ernestine', '2020-10-27 00:00:00', 'dla', 'Female', '237', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:25:07', '2020-10-27 23:25:07', NULL),
('pflcbztqsyjkkfnw2x0ob8vehp3nz7oezjdxjkwmdg0pixkqkp', 'Patrick siani', '2000-10-05 00:00:00', 'douala', 'Male', '+237677147199', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, NULL, NULL, '2020-10-19 13:58:17', '2020-10-23 01:16:19', NULL),
('pflcn5zkkpurlxznrrxwe5wxi2ktmdpdqa4w5dt0lrvvhkma67', 'KUNDE LAB', '1990-09-07 00:00:00', 'OOOOO', 'Male', '677889990', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 22:51:47', '2020-10-28 22:51:47', NULL),
('pflcsemobri04t38ehunf1trveltxumhv58tsjc8uxxfwgutx0', 'MBOYE PARMACO1', '1900-08-06 00:00:00', 'YYUUU', 'Male', '678899009', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 23:26:17', '2020-10-28 23:26:17', NULL),
('pflcsxsffj422utxawdaugmxwritmc43mm7xnbkk1nperommtr', 'Nkodo Mbe Jean Yves', '1983-02-14 00:00:00', 'Douala', 'Male', '+237 694815447', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '+237 675881377', 2, 1, '/storage/images/profiles/default.png', NULL, '2020-10-29 20:38:39', '2020-10-29 15:42:45', NULL),
('pfldjamattmuexeb2jbhhd5epmlbayhvtjud7lf0speqlis8rd', 'Sama Carlrich Sama', '1994-02-28 00:00:00', 'Bamenda', 'Male', '670526834', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '668546654', 1, 1, '/storage/images/students/default.png', NULL, '2020-10-27 14:41:53', '2020-10-27 14:41:53', NULL),
('pfldlatfxgrfnijkladjg1yqtxfn8ncclbtqt12fxjce2ivequ', 'MBOYE BIOMED', '1990-02-02 00:00:00', 'TTTT', 'Male', '677789000', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 22:58:58', '2020-10-28 22:58:58', NULL),
('pfldybuspey3kwayctoi76yc3wkpjylbure7qxen6anbuk2kym', 'MUMA MARTIN ', '2020-10-07 00:00:00', 'banka', 'Male', '675427611', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:28:12', '2020-10-27 23:28:12', NULL),
('pflerxer1q5nqhfqeaji5vvubwafaq88hlmbah84qnz0ho4feu', 'GAWOU PHARMACY', '1979-06-03 00:00:00', 'TT', 'Male', '699090998', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 22:10:07', '2020-10-28 22:10:07', NULL),
('pflev1qylqt4aafdycsekjt0tultp1u3pmfhdxz5radqun82yv', 'ATEMKENG Franklin', '1988-06-30 00:00:00', 'DOUALA', 'Male', '676 12 49 39', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:04:25', '2020-10-27 23:04:25', NULL),
('pflezr8ubvhpkhgnlrmbq6tudgxaikfdwao5mufiriibwcqdzw', 'sama ', '2020-09-01 00:00:00', 'bamenda', 'Male', '45628562', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '85625469', 1, 1, NULL, NULL, '2020-09-03 14:20:09', '2020-10-23 01:16:19', NULL),
('pflf9ryohc9cuxajku3jegl8aikzzs8dxuvwz1nofmjqzqzmek', 'janvier TCHAMGOUAPI', '1981-02-08 00:00:00', 'banka', 'Male', '+237677123568', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 1, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:01:33', '2020-10-27 23:41:41', NULL),
('pflffm7wblhjvc95iauzmk7m71ji1g5guoiydmtlw04u3h1dnq', 'TANGOH Blaise', '2020-10-28 00:00:00', 'gf', 'Male', '237', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 22:02:56', '2020-10-28 22:02:56', NULL),
('pflfjd3fdcdmuxakazx8s7chjxdnmscdzcw3nmvlqwiucqgtf3', 'Mme SOBO Marcelline', '2020-10-27 00:00:00', 'dla', 'Female', '237', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:29:36', '2020-10-27 23:29:36', NULL),
('pflfyeenrimnmwrikgw9rkp2blb0tza3sc4npd0yqthyqta5my', 'toto', '2020-07-09 00:00:00', '256 bonanjo', 'Male', '+237694815447', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '+237694815447', 1, 1, NULL, NULL, '2020-07-23 12:48:32', '2020-10-23 01:16:19', NULL),
('pflggb6kr4em8jpmjq5oizodsfdtwspfch1xu1wlcbgzgguwec', 'NDZI ELAD', '1988-10-23 00:00:00', 'BONABERI', 'Male', '87632233', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:17:39', '2020-10-27 23:17:39', NULL),
('pflgkc7zgfzpfh8ohdybvt8obulfsj44kh5h5dezmrkpt50hsn', 'GAWOU MIDVIFERY2', '1988-07-05 00:00:00', 'NY', 'Male', '67890908', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 22:35:23', '2020-10-28 22:35:23', NULL),
('pflhezxmzfyrrvqh3o4pr0dg5yx9wy6raiy3pgvswwjffevi5q', 'TSOU MARTIAL', '1981-10-06 00:00:00', 'BONABERI', 'Male', '677 61 56 16', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 3, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:36:18', '2020-10-27 23:36:18', NULL),
('pflhfrmc7j74rr2zzfx4fkjjccvgqqxksubiumbqwobboiurfk', 'TUBUA JULUIS', '2020-09-29 00:00:00', 'DOUALA', 'Male', '675370741', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 3, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:39:02', '2020-10-27 23:39:02', NULL),
('pflhi9dqjhdmilueholfxmv4ik7uouwfqcriru1xhic9jsrekd', 'forzy', '2020-05-05 00:00:00', 'sainte cecile', 'Female', '000222', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', NULL, 2, 2, NULL, NULL, '2020-07-23 21:35:04', '2020-10-23 01:16:19', NULL),
('pflimza4vtqght0ajfpkhxy0bpgth0ftuexa5wbnzfrrvuazy0', 'Mr REVANUS PHARM', '1990-07-05 00:00:00', 'TTTT', 'Male', '675643458', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-29 13:41:06', '2020-10-29 13:41:06', NULL),
('pflj5fgbahct13ss4k2siivtuhgvb4f2ulibnqdubcjutnvgof', 'BABOU KAMTO', '2020-09-29 00:00:00', 'DOUALA', 'Female', '766632', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:07:14', '2020-10-27 23:22:20', NULL),
('pfljtrmixi9pmjsi7xoqliqy4haongxcyaybjt2ywtmg0ngmjy', 'KUNDE PHARM', '1990-09-08 00:00:00', 'RRR', 'Male', '656787867', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 22:52:24', '2020-10-28 22:52:24', NULL),
('pflk5bnefesww49dnirkzejcomduaoyuzkjuaqswwiwyxcfgy8', 'Mr REVANUS MIDF', '1990-07-05 00:00:00', 'DDD', 'Male', '689898754', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-29 13:42:07', '2020-10-29 13:42:07', NULL),
('pflkunwhkt6drdxhijbbeik2ejnbfqxq3r2zgxpinmtgczveqq', 'Mr MBAKOP', '2020-10-27 00:00:00', 'dla', 'Male', '237', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:16:58', '2020-10-27 23:16:58', NULL),
('pfll11vejrp0qqewmhgqlm3iq20eya47tk7tiiwoxol1968yow', 'KOGGERSON BERTHA', '0021-10-22 00:00:00', 'banka', 'Female', '776543', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:25:18', '2020-10-27 23:25:18', NULL),
('pfllaykjgsr2exc6p1izkx8tqiaacbuzessajpauoy66ojdcpk', 'DR LEMOUPA FOKOU PHAR', '1990-07-05 00:00:00', 'IIOOOO', 'Male', '678889900', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-29 13:56:39', '2020-10-29 13:56:39', NULL),
('pflle02ua69xpmsszxk1mq8ckhp9cdcfkvhunabmey5fpwestx', 'BABOU MARIAM LAB', '1987-07-05 00:00:00', 'HYR', 'Male', '678908976', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 22:28:46', '2020-10-28 22:28:46', NULL),
('pfllkyanw8le3mz6cviczqimnu7sqz7hd69ovqvhpmvrpmqlal', 'Frank Junior', '2020-09-29 00:00:00', 'Bali', 'Male', '+237 526895412', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 21:10:23', '2020-10-27 21:10:23', NULL),
('pfllmhgawirkzhxbaepzgzzsnynb2ar452o7drn80umfpsnqj4', 'BABOU MARIAM PHAR', '1990-06-05 00:00:00', 'TYT', 'Male', '66787890', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 22:18:55', '2020-10-28 22:18:55', NULL),
('pfllrwv3lcltnt44hctszweuhdiknam3l5fevnoxrj83karlp2', 'PROF X', '1990-10-07 00:00:00', 'HB', 'Male', '677239910', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '676373729', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 21:34:29', '2020-10-28 21:34:29', NULL),
('pflnxtnjvdvd2thsuutkcnhzjpd67lhurrg6rwtouuyuqda63z', 'BABOU PHARMACOLOGY', '1990-07-06 00:00:00', 'YYUUUU', 'Male', '677770000', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 23:32:27', '2020-10-28 23:32:27', NULL),
('pflo9vl1nutlnebljkojkove0pzjdinylpdytjx06swzzssefg', 'KUNDE AGR TECHNO', '1990-07-06 00:00:00', 'UIIOOO', 'Male', '678945678', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 23:38:55', '2020-10-28 23:38:55', NULL),
('pflocxtovsqu1crjqdg2c8qrnrabmbltbo3gilp0w4kmuelhgy', 'Dr KUNGEH MIDVIFE', '1987-10-22 00:00:00', 'HHH', 'Male', '677456789', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '678675634', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 21:50:21', '2020-10-28 21:50:21', NULL),
('pflohqsjxgwztt7sezijcshbv63s0c7vsaro66rvmyokl9plwc', 'Mr NKUNDE Felix', '2020-10-27 00:00:00', 'dla', 'Male', '237', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:03:34', '2020-10-27 23:03:34', NULL),
('pfloojrzep4bq1qn2bi5zzdt6k0mgiheu4l6faqyxgqhzt5mc3', 'Ebongue Soelle', '2020-09-29 00:00:00', 'Bali', 'Male', '+237 555555555', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 22:26:05', '2020-10-27 22:26:05', NULL),
('pfloqgzp1ooggyx3wffylyklwtfwzfrro0xrj8iuqqt1p6aj0h', 'KING', '1990-07-05 00:00:00', 'YYYYY', 'Male', '675240602', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-29 13:28:20', '2020-10-29 13:28:20', NULL),
('pfloquyyoodwxmims530nmmz6h4qhyodolvt6zemi1rxs13yez', 'KUNDE BIO', '1990-07-06 00:00:00', 'HTE', 'Male', '678789900', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 22:50:28', '2020-10-28 22:50:28', NULL),
('pflouyiqjngpoxuor16txghwmucynu7hhzxbqfy375n19s96tq', 'MBOYE LAB ', '1990-09-09 00:00:00', 'DD', 'Male', '698786756', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 23:00:52', '2020-10-28 23:00:52', NULL),
('pflp6ey967dryciidxryrpo8l9e3dnigqb62t0cfegnl27mf0w', 'Mr NONG CONRAD', '2020-10-27 00:00:00', 'dla', 'Male', '237', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:33:33', '2020-10-27 23:33:33', NULL),
('pflp8vjmfgancixs5rbsfhgwxcuw4ox3kedef7dscemmssqyhs', 'Mme NGUETSO Chistelle', '2020-10-27 00:00:00', 'dla', 'Female', '237', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:14:05', '2020-10-27 23:27:19', NULL),
('pflpmacega8ejnilb1wcamrwzcych3ueybqstjik9kyukkzu2v', 'BABOU MARIAM BIO', '1990-05-03 00:00:00', 'EE', 'Male', '699786767', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 22:18:03', '2020-10-28 22:18:03', NULL),
('pflpywqsci6aiccmgcojcey6xmyps0kbwxa04xkalakxjulxke', 'Mr CHEBISU EMMANUEL', '2020-10-27 00:00:00', 'dla', 'Male', '237', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:18:53', '2020-10-27 23:18:53', NULL),
('pflqa41q2vwpxufsihw4inpzojmpeebe3j6alryylazpnhvrtm', 'DR LEMOUPA FOKOU LAB', '1990-08-06 00:00:00', 'OOOI', 'Male', '670099765', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-29 13:55:37', '2020-10-29 13:55:37', NULL),
('pflqeslkhdzkzevdr8wasvakb9pvly79pyueo7lzmyaocvyfoe', 'Dr MANGELE ', '2020-10-27 00:00:00', 'dla', 'Male', '237', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 22:56:03', '2020-10-27 22:56:03', NULL),
('pflqtrdaxpybkpxjcsrldubamgulb0zvlk1dj815l5vyhsmnoi', 'Mr ATUNGSIRI BORIS', '2020-10-27 00:00:00', 'dla', 'Male', '237', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:28:21', '2020-10-27 23:28:21', NULL),
('pflrijhkyx4g2zzefoh0cmzf0xttcbq97njilsssyb7qrlusss', 'saint jean bosco', '2020-07-18 00:00:00', 'Bali', 'Male', '+237 694-451-526', NULL, '', 1, 1, NULL, NULL, '2020-07-18 14:12:26', '2020-10-23 01:16:19', '2020-07-18 14:39:00'),
('pflrtopdosehuruvfis7mnqpc7v244x0e93d6z0eznfnuunijf', 'Dr KUNGEH BIOMEDica', '1980-10-28 00:00:00', 'BB', 'Male', '699979522', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '677109378', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 21:48:40', '2020-10-28 21:48:40', NULL),
('pflru97evf0txvtjrfmnfflkcd4y4acfl4rjawy8efq3aus1ud', 'GAWOU', '1950-10-02 00:00:00', 'UU', 'Male', '677888009', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 21:59:07', '2020-10-28 21:59:07', NULL),
('pflskroyqdmwcrpomnp3ap3srgow2evji7fxvc6crlr5anbxhi', 'Mr NKOULOU Emmanuel', '2020-10-27 00:00:00', 'dla', 'Male', '237', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:15:51', '2020-10-27 23:15:51', NULL),
('pflstahyrpyojgssb5s5pzhogjduawi0imxjaq48yg54afqnyq', 'GAWOU MIDVIFE', '1976-07-21 00:00:00', 'HHH', 'Male', '677789099', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 22:09:18', '2020-10-28 22:09:18', NULL),
('pfltym4zttdrcohrb5o8yxlwtusnsyysma1p3kjnmi0fdgpkrc', 'Mr CHIA NGWAH ', '2020-10-20 00:00:00', 'dla', 'Male', '237', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:41:52', '2020-10-27 23:41:52', NULL),
('pflucot9xyyxp5socgrcrt9okyzpx6a5aqwnhpvl1pti9ppdek', 'Dr LEUMOPA FOKOU', '2020-10-08 00:00:00', 'DOUALA', 'Male', '2222222', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:12:07', '2020-10-27 23:24:12', NULL),
('pflv49wbcyjquqqbdfpk5raz6nldhiiyiuxtxx1pwuvvmqpxk8', 'Mr EPANDA CYRIL', '2020-10-27 00:00:00', 'dla', 'Male', '237', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:02:14', '2020-10-27 23:02:14', NULL),
('pflv5px4rjogb1tx66ddrbka21jxvavxhqminvb0v3ckfh2aew', 'Fusans Celestin Vuzuzi', '1974-09-21 00:00:00', 'Buea Fako', 'Male', '+237 674159639', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 14:49:29', '2020-10-27 14:49:29', NULL),
('pflvgr1el3bju1z8hmb3w1blicy8ltorevun1ntzo2io7swir8', 'MBOYE PHA', '1990-08-07 00:00:00', 'OOOOP', 'Male', '678945378', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 22:58:19', '2020-10-28 22:58:19', NULL),
('pflvhaaemdkkwn35dth9si3daqpd4buy0jly2stx1juaxoyrrm', 'Mr DALITY ', '2020-10-27 00:00:00', 'dla', 'Male', '237', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:18:04', '2020-10-27 23:18:04', NULL),
('pflvpg1pvxd5ewennnepak9yi3ergutsuszqtjxetdxpjrfrpz', 'Mr REVANUS LAB ', '1990-09-05 00:00:00', 'IIO', 'Male', '678990006', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-29 13:40:00', '2020-10-29 13:40:00', NULL),
('pflvqpbewnwca0irwyzekykevf4dsoghgc4xfe0mfywzeaxumf', 'SOUNOU NGALEU', '0111-10-05 00:00:00', 'banka', 'Male', '564338', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:18:46', '2020-10-27 23:18:46', NULL),
('pflvuibei6adpwqb5ispipqkf1o9nlxosozbh7k7ajnieyhcno', 'Mme ATANGA VIvian', '2020-10-27 00:00:00', 'dla', 'Female', '237', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:35:58', '2020-10-27 23:35:58', NULL),
('pflvvzfpqqjyt0kt4jplekmpb54lsrvzkc4e8kikrw6yaqv2zr', 'Dr Kungeh Clement Gwe', '2020-10-06 00:00:00', 'buea', 'Male', '+237 22222252', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/profiles/default.png', NULL, '2020-10-27 21:06:26', '2020-10-28 09:21:07', NULL),
('pflvympb8vzfkangpqtptwvhkxtayfb1u11ex12qbhoeu1llsg', 'Mr NTUME AMOS', '2020-10-27 00:00:00', 'dla', 'Male', '237', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:31:07', '2020-10-27 23:31:07', NULL),
('pflwsjegydtydkbkpc75gglmxjcz6l2usfn5cvxmxmxkrl8mpa', 'Diba Etouke Christelle', '2020-10-02 00:00:00', 'dubai', 'Female', '987654337', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', NULL, 2, 2, NULL, NULL, '2020-10-16 20:23:53', '2020-10-23 01:16:19', NULL),
('pfly3bgj7yz75ogoty8ym8owbnfnrqmisb8rpscpc4yxw4b7pq', 'KUNDE AGR', '1989-08-07 00:00:00', 'OOPP', 'Male', '676756433', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 22:57:33', '2020-10-28 22:57:33', NULL),
('pflyestjdeji1o48vshtytdldfgku8p8ac5oxmmdfzfg6qxwsf', 'Nde Simo', '2020-09-29 00:00:00', 'Main', 'Male', '+237 699140286', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 22:16:34', '2020-10-27 22:16:34', NULL),
('pflyoqhtyfqnavhd7hvcaw2cebazeckmfm8goyui9zo2gy2qxb', 'KING GILBERT', '2020-10-28 00:00:00', 'DLA', 'Male', '237', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 23:23:04', '2020-10-28 23:23:04', NULL),
('pflytnfqun7toghn4eyloralfuajcvukedaiwl4gwpnbbkv4wq', 'Dr tiecheu', '2020-10-07 00:00:00', 'bali', 'Male', '+237 256485954', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 21:08:55', '2020-10-27 21:08:55', NULL),
('pflyzsz5alasikjea7tmoda20dsyzpuivjs6olhojdb3paoyxn', 'Mr ASOBO NKENG', '2020-10-27 00:00:00', 'dla', 'Male', '237', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2', 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:20:02', '2020-10-27 23:20:02', NULL),
('pflziy7g3oa7ohjxb11b3rtvu0adgzi9cmsrcnornywtdwllza', 'NDIFOR CARINE', '2020-10-29 00:00:00', 'BEE', 'Female', '83564', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-27 23:19:53', '2020-10-27 23:19:53', NULL),
('pflzoa9bqnf8p3sa3hvzohczyezd9uhyibe4tsk1wuygcfiwap', 'LUTTA', '1998-08-04 00:00:00', 'YY', 'Male', '678890098', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', NULL, 2, 1, '/storage/images/students/default.png', NULL, '2020-10-28 22:00:16', '2020-10-28 22:00:16', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `profiles_roles`
--

CREATE TABLE `profiles_roles` (
  `id` int(11) NOT NULL,
  `profile_id` varchar(50) NOT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `registrations_channel`
--

CREATE TABLE `registrations_channel` (
  `registration_id` int(11) NOT NULL,
  `channel_id` varchar(50) NOT NULL,
  `event_id` varchar(50) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `status` enum('ongoing','closed') DEFAULT 'ongoing' COMMENT 'status will change in accord with invoices payment',
  `dateline` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `registrations_class`
--

CREATE TABLE `registrations_class` (
  `registration_id` int(11) NOT NULL,
  `class_id` varchar(50) NOT NULL,
  `event_id` varchar(50) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `status` enum('ongoing','closed') DEFAULT 'ongoing' COMMENT 'status will change in accord with invoices payment',
  `dateline` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `registrations_class`
--

INSERT INTO `registrations_class` (`registration_id`, `class_id`, `event_id`, `student_id`, `status`, `dateline`, `created_at`, `updated_at`, `deleted_at`) VALUES
(15, 'clsh4yhnfrosrbsnmxl9enmxfty04emhvpzlvdajzs4uyct2bj', 'evnzg9scpmwa7edfnmigx7kyznp7oswfaivpqa1neusxffyvf9', 'stu6jl4sr2ihbk0fcdjkp5wsbuk1eylfrxaztfazxoqsnpvhz6', 'ongoing', '2020-09-16', '2020-09-26 04:22:33', '2020-09-28 18:20:00', NULL),
(27, 'clshh5jnrpmsxcl2pdzjkncqdxocsobqaiw18wruhmeovjjtgo', 'evnzg9scpmwa7edfnmigx7kyznp7oswfaivpqa1neusxffyvf9', 'stu0fmamc1umuxuqrdfcsyegrvjgo2z04khqslzgwn63krehpr', 'ongoing', '2020-09-16', '2020-09-28 17:34:48', '2020-09-28 17:34:48', NULL),
(28, 'clshh5jnrpmsxcl2pdzjkncqdxocsobqaiw18wruhmeovjjtgo', 'evnzg9scpmwa7edfnmigx7kyznp7oswfaivpqa1neusxffyvf9', 'stuybcny7t7uzhek5tqfprwopakn2ten4dqhjyheinlse5cael', 'ongoing', '2020-09-16', '2020-09-28 17:38:12', '2020-10-04 18:15:15', NULL),
(29, 'clsh4yhnfrosrbsnmxl9enmxfty04emhvpzlvdajzs4uyct2bj', 'evnzg9scpmwa7edfnmigx7kyznp7oswfaivpqa1neusxffyvf9', 'stuuoqrh9ncddr8an5c82ayoykx7k2kzq2cloi6xufm5ashiur', 'ongoing', '2020-10-13', '2020-10-14 08:00:33', '2020-10-14 08:00:33', NULL),
(30, 'clsixzypmetdxynwwq9uqpczo3cmhqwjdaxqjh4kovnpcel0cn', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'stuejyz3yqshl746eo2w3juhdauh2ngxbljsap07vsnzqnrrgr', 'ongoing', '2020-04-19', '2020-10-19 13:42:41', '2020-10-19 13:42:41', NULL),
(31, 'clsixzypmetdxynwwq9uqpczo3cmhqwjdaxqjh4kovnpcel0cn', 'evnobiwissyx6sgwy1lix7b8cg8hovosm0kqhxqvvd0kulac5s', 'sturmoryb7wsi4k1vhtclv5sodcvdzclepktb573jmbseeqcyq', 'ongoing', '2020-10-15', '2020-10-21 21:41:39', '2020-10-21 21:41:39', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `content` varchar(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `content`) VALUES
(1, 'ADMINISTRATOR'),
(2, 'LECTURER'),
(3, 'DIRECTOR'),
(4, 'ACCOUNTANT'),
(5, 'STUDENT');

-- --------------------------------------------------------

--
-- Structure de la table `scheduled_class`
--

CREATE TABLE `scheduled_class` (
  `scheduled_class_id` int(11) NOT NULL,
  `class_id` varchar(50) NOT NULL,
  `classroom_id` varchar(50) NOT NULL,
  `profile_id` varchar(50) NOT NULL,
  `course_id` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `scheduled_class`
--

INSERT INTO `scheduled_class` (`scheduled_class_id`, `class_id`, `classroom_id`, `profile_id`, `course_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(84, 'clsh4yhnfrosrbsnmxl9enmxfty04emhvpzlvdajzs4uyct2bj', 'clr5mc4ft6zzh4ixd6wzdz3dxvzrbatbnnip9bzt9qhb268khp', 'pfl3rgkfdublqoywmuccusycmfwn3zan25kymfwsukpv4swzo1', 'crs08nEafFQkbwodExT7SVzF1CaDN0KKZkLBPOyMBUgdGzqwwu', '2020-08-15 22:58:45', '2020-08-15 22:58:45', NULL),
(85, 'clshh5jnrpmsxcl2pdzjkncqdxocsobqaiw18wruhmeovjjtgo', 'clrb168ykapamnwmqs5ictpkguxaed52nbifiun30xvq7bfimr', 'pfl3rgkfdublqoywmuccusycmfwn3zan25kymfwsukpv4swzo1', 'crs2JlgMQHCqj1u0VyRSyQiUxDDhmjHHV2Bt1hIconCNXSV5yM', '2020-08-15 23:00:55', '2020-08-15 23:00:55', NULL),
(86, 'clsh4yhnfrosrbsnmxl9enmxfty04emhvpzlvdajzs4uyct2bj', 'clr5mc4ft6zzh4ixd6wzdz3dxvzrbatbnnip9bzt9qhb268khp', 'pfl3rgkfdublqoywmuccusycmfwn3zan25kymfwsukpv4swzo1', 'crsnBxNjQH6rVnu3q8gL2RKObnQigeHULlRfa1E4JeJT1Ut6lN', '2020-08-15 23:11:17', '2020-08-15 23:11:17', NULL),
(87, 'clshh5jnrpmsxcl2pdzjkncqdxocsobqaiw18wruhmeovjjtgo', 'clr5mc4ft6zzh4ixd6wzdz3dxvzrbatbnnip9bzt9qhb268khp', 'pflbicrnbju2wgtmk1ipo213eul5tlap0qfacywoquodpbhf2b', 'crs08nEafFQkbwodExT7SVzF1CaDN0KKZkLBPOyMBUgdGzqwwu', '2020-08-15 23:45:43', '2020-08-15 23:45:43', NULL),
(88, 'clsrnruxxxjsb78o5jkphskxthaltu1z3evnz6zb1u3rslkpl5', 'clr5mc4ft6zzh4ixd6wzdz3dxvzrbatbnnip9bzt9qhb268khp', 'pfl3rgkfdublqoywmuccusycmfwn3zan25kymfwsukpv4swzo1', 'crsQzuuzBIKUE0DQZ6eZIqN1i8XBRo4rZv4QBl71fvJz0Go2iZ', '2020-08-16 04:55:27', '2020-08-16 04:55:27', NULL),
(89, 'clsrnruxxxjsb78o5jkphskxthaltu1z3evnz6zb1u3rslkpl5', 'clro7xusj5x26rusl4grht99cbemnm2tlit168wfc8vnrp9nzi', 'pflhi9dqjhdmilueholfxmv4ik7uouwfqcriru1xhic9jsrekd', 'crsSJD05MJt85yo8SezHDnCUEbzDu2Hdi5G7rW6Hdzg7nbGlN6', '2020-08-16 13:37:39', '2020-08-16 13:37:39', NULL),
(90, 'clsmzqqoyrldt0bjinaomlzpavll8bsj2wtwsnpkeq8othtuvm', 'clrfuc1nxkgezroooo4rjahlvymwa1ylt5cmun3gxgubzb7c2k', 'pflhi9dqjhdmilueholfxmv4ik7uouwfqcriru1xhic9jsrekd', 'crs2uyz9RWbddk2N5Qp5C7QoFp8M4x6OxgL45bJ69Wte95RhDM', '2020-08-16 13:44:06', '2020-08-16 13:44:06', NULL),
(91, 'clsmzqqoyrldt0bjinaomlzpavll8bsj2wtwsnpkeq8othtuvm', 'clro7xusj5x26rusl4grht99cbemnm2tlit168wfc8vnrp9nzi', 'pflhi9dqjhdmilueholfxmv4ik7uouwfqcriru1xhic9jsrekd', 'crst3nicUAavuLOVPL3VrtB35MEm5bbDAHZrjpXyGtmLQzZPej', '2020-08-17 19:26:15', '2020-08-17 19:26:15', NULL),
(92, 'clsmzqqoyrldt0bjinaomlzpavll8bsj2wtwsnpkeq8othtuvm', 'clro7xusj5x26rusl4grht99cbemnm2tlit168wfc8vnrp9nzi', 'pflhi9dqjhdmilueholfxmv4ik7uouwfqcriru1xhic9jsrekd', 'crsUjZoodeG7McfF62ym4DklG0ikdKq4L4aSVXwO6YAa2E4ggC', '2020-08-17 19:27:49', '2020-08-17 19:27:49', NULL),
(93, 'clsmzqqoyrldt0bjinaomlzpavll8bsj2wtwsnpkeq8othtuvm', 'clro7xusj5x26rusl4grht99cbemnm2tlit168wfc8vnrp9nzi', 'pflhi9dqjhdmilueholfxmv4ik7uouwfqcriru1xhic9jsrekd', 'crsQzuuzBIKUE0DQZ6eZIqN1i8XBRo4rZv4QBl71fvJz0Go2iZ', '2020-08-17 19:29:39', '2020-08-17 19:29:39', NULL),
(94, 'clsmzqqoyrldt0bjinaomlzpavll8bsj2wtwsnpkeq8othtuvm', 'clro7xusj5x26rusl4grht99cbemnm2tlit168wfc8vnrp9nzi', 'pfl3rgkfdublqoywmuccusycmfwn3zan25kymfwsukpv4swzo1', 'crsnGlJrNyaar7CTfNadRmyPrQTS6VEhUDGExNC62RQBjF212b', '2020-08-17 19:44:58', '2020-08-17 19:44:58', NULL),
(95, 'clsh4yhnfrosrbsnmxl9enmxfty04emhvpzlvdajzs4uyct2bj', 'clr5mc4ft6zzh4ixd6wzdz3dxvzrbatbnnip9bzt9qhb268khp', 'pflatezuusxwulhfnob6zqyw1owgyqt2aqqrqggvfnu0ulwvkj', 'crsk3jQBe8nd8rXrh1w0sZI14blwhcjmbp8WCx8mF24qmsdz7q', '2020-08-29 16:49:22', '2020-08-29 16:49:22', NULL),
(96, 'clsh4yhnfrosrbsnmxl9enmxfty04emhvpzlvdajzs4uyct2bj', 'clrfuc1nxkgezroooo4rjahlvymwa1ylt5cmun3gxgubzb7c2k', 'pflezr8ubvhpkhgnlrmbq6tudgxaikfdwao5mufiriibwcqdzw', 'crst3nicUAavuLOVPL3VrtB35MEm5bbDAHZrjpXyGtmLQzZPej', '2020-09-03 14:21:57', '2020-09-03 14:21:57', NULL),
(99, 'clsmzqqoyrldt0bjinaomlzpavll8bsj2wtwsnpkeq8othtuvm', 'clr5mc4ft6zzh4ixd6wzdz3dxvzrbatbnnip9bzt9qhb268khp', 'pflezr8ubvhpkhgnlrmbq6tudgxaikfdwao5mufiriibwcqdzw', 'crs08nEafFQkbwodExT7SVzF1CaDN0KKZkLBPOyMBUgdGzqwwu', '2020-09-18 12:46:26', '2020-09-18 12:46:26', NULL),
(101, 'clshh5jnrpmsxcl2pdzjkncqdxocsobqaiw18wruhmeovjjtgo', 'clry4pj98d493hd9cqmoxatts6tepmel0ialzilydiylcplohg', 'pflwsjegydtydkbkpc75gglmxjcz6l2usfn5cvxmxmxkrl8mpa', 'crs2uyz9RWbddk2N5Qp5C7QoFp8M4x6OxgL45bJ69Wte95RhDM', '2020-10-16 20:27:33', '2020-10-16 20:27:33', NULL),
(102, 'clsixzypmetdxynwwq9uqpczo3cmhqwjdaxqjh4kovnpcel0cn', 'clr3etm52johwxxuxbsdgvmsatsqne9eepon9ucfnt96tb2tcm', 'pflcbztqsyjkkfnw2x0ob8vehp3nz7oezjdxjkwmdg0pixkqkp', 'crsxs5svxzuotvqwxff1ob8iv29pqrsaqrukoq14f6chbtd0ha', '2020-10-19 18:37:14', '2020-10-19 18:37:14', NULL),
(103, 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', 'clraa1bo1v0jiygqi5dkmrkwaryebjismm0tved6tmutgazfsj', 'pfldjamattmuexeb2jbhhd5epmlbayhvtjud7lf0speqlis8rd', 'crsqdi22cfojef5qwhbjxzi3ie2rrnqikxwyvipoltmw5xxpe8', '2020-10-27 20:12:31', '2020-10-27 20:12:31', NULL),
(104, 'clsyvtfgyytbwjmbtqjlkktpvevda9m65xzwtjivl2djzt2g38', 'clraa1bo1v0jiygqi5dkmrkwaryebjismm0tved6tmutgazfsj', 'pfloojrzep4bq1qn2bi5zzdt6k0mgiheu4l6faqyxgqhzt5mc3', 'crsdwdhslavkm9qsxopjkqi0dmiuumayzp3czuswkpdwbbklja', '2020-10-28 00:28:00', '2020-10-28 00:28:00', NULL),
(105, 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', 'pfl3r9k15uqbpfjbmyawxxpdxnfwudtpvwnn4goqynqwocgwua', 'crs60z4k7piupjyh6f5imeobrnqpwom8qiixbsdxxxbye51op5', '2020-10-28 14:54:13', '2020-10-28 14:54:13', NULL),
(106, 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', 'pfl3ayd9mkqqhtpzxju9mdbo0ssfzmuivknpfthir1hkkd0w3n', 'crsummhub6scwbktedsaww33oitckmojv7gff4gjhfuoyktsk6', '2020-10-28 14:56:39', '2020-10-28 14:56:39', NULL),
(108, 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', 'pfl3r9k15uqbpfjbmyawxxpdxnfwudtpvwnn4goqynqwocgwua', 'crszrufpgwt3drvsmr47sy6rmgr5s7f8etqawcya5mvf4u8x5u', '2020-10-28 15:16:47', '2020-10-28 15:16:47', NULL),
(109, 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', 'pfl3r9k15uqbpfjbmyawxxpdxnfwudtpvwnn4goqynqwocgwua', 'crs2z1xerpdf74t8crcxrhu8yb9pagd1arv2pkb0xltdgopugp', '2020-10-28 15:20:39', '2020-10-28 15:20:39', NULL),
(110, 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', 'pfl3r9k15uqbpfjbmyawxxpdxnfwudtpvwnn4goqynqwocgwua', 'crsx6z8yl0d0g3x2vymwqasfudlo08chscw3ongmcqktyfkrv1', '2020-10-28 15:27:09', '2020-10-28 15:27:09', NULL),
(111, 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', 'pfl3yjjtrjkbgkklqnubakxr3mti0pddbd5pkdhwsbobgbdrtu', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-28 15:27:38', '2020-10-28 15:27:38', NULL),
(113, 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', 'pfl3r9k15uqbpfjbmyawxxpdxnfwudtpvwnn4goqynqwocgwua', 'crs0cvt8swenw00gsisfwlfpy2c5sxuajzfgdun5em0y6pp2pe', '2020-10-28 15:32:51', '2020-10-28 15:32:51', NULL),
(114, 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', 'pfl3ayd9mkqqhtpzxju9mdbo0ssfzmuivknpfthir1hkkd0w3n', 'crsexvm0ambj8ncammzkioxvns9dqzswzwsury5wzbvddfa3jv', '2020-10-28 15:37:35', '2020-10-28 15:37:35', NULL),
(115, 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', 'pflqeslkhdzkzevdr8wasvakb9pvly79pyueo7lzmyaocvyfoe', 'crs8agedln3q8qceisx68mckfw5qqebsyoa93smzberfbrfynm', '2020-10-28 15:39:43', '2020-10-28 15:39:43', NULL),
(116, 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', 'pfl3yjjtrjkbgkklqnubakxr3mti0pddbd5pkdhwsbobgbdrtu', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-28 15:57:15', '2020-10-28 15:57:15', NULL),
(117, 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', 'pfllkyanw8le3mz6cviczqimnu7sqz7hd69ovqvhpmvrpmqlal', 'crsmatwhwkpiarcawozkgj7vytuhh8obrjos7m4ck9jxz2lj1v', '2020-10-28 16:01:22', '2020-10-28 16:01:22', NULL),
(118, 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', 'pflf9ryohc9cuxajku3jegl8aikzzs8dxuvwz1nofmjqzqzmek', 'crspwvpbesv4kau98etdfbtfen607m8cfpkf2v5bradcvubzat', '2020-10-28 16:14:52', '2020-10-28 16:14:52', NULL),
(119, 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', 'pflytnfqun7toghn4eyloralfuajcvukedaiwl4gwpnbbkv4wq', 'crsmkjiz9abpd8d6prsduhmiep2orvy7czh7vry5kz9t4arybw', '2020-10-28 16:20:29', '2020-10-28 16:20:29', NULL),
(120, 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', 'clrsi3j4qal81vffbyff9gjkl3fv63outdseyqsypdvrrqs57r', 'pflv5px4rjogb1tx66ddrbka21jxvavxhqminvb0v3ckfh2aew', 'crsc5qmg5rgcambmf3ncnx9vbdjqir1fsfwnun42fdwjuezqgz', '2020-10-28 16:35:03', '2020-10-28 16:35:03', NULL),
(121, 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', 'pflbg0euw2hvv2mo9om6cliiqovtnghycgkei0mrbbypn0nmv0', 'crs0ajdemljhkfizasd9b2qlrjntgri77sf2umbwccqrfr3h3d', '2020-10-28 19:28:55', '2020-10-28 19:28:55', NULL),
(122, 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', 'clrcodowplhv42tk6zbbwvulf6ninkhxatrsuo7gi05enmqzmw', 'pflvvzfpqqjyt0kt4jplekmpb54lsrvzkc4e8kikrw6yaqv2zr', 'crsus1srfb7snhvzg1rx3dlobgvwupdlxvu6iy9y1e4mliuykv', '2020-10-28 19:48:09', '2020-10-28 19:48:09', NULL),
(123, 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', 'pfllrwv3lcltnt44hctszweuhdiknam3l5fevnoxrj83karlp2', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-28 21:38:07', '2020-10-28 21:38:07', NULL),
(124, 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', 'pfllrwv3lcltnt44hctszweuhdiknam3l5fevnoxrj83karlp2', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-28 21:39:37', '2020-10-28 21:39:37', NULL),
(125, 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', 'pflp8vjmfgancixs5rbsfhgwxcuw4ox3kedef7dscemmssqyhs', 'crsq3zxu8nogy2eqp03ssegtfrpkj22wyk99rwiknded4mlg6l', '2020-10-28 21:51:07', '2020-10-28 21:51:07', NULL),
(126, 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', 'clrvbl81kh4ypj1dtzsinp7hje00qzw3pzrlwcivijtbah6bly', 'pflrtopdosehuruvfis7mnqpc7v244x0e93d6z0eznfnuunijf', 'crsus1srfb7snhvzg1rx3dlobgvwupdlxvu6iy9y1e4mliuykv', '2020-10-28 21:52:12', '2020-10-28 21:52:12', NULL),
(127, 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', 'clrv4pyijtbzn6uywv5is30f8ohp6zezqftp0rcfy1mvrwahq0', 'pflocxtovsqu1crjqdg2c8qrnrabmbltbo3gilp0w4kmuelhgy', 'crsus1srfb7snhvzg1rx3dlobgvwupdlxvu6iy9y1e4mliuykv', '2020-10-28 21:53:40', '2020-10-28 21:53:40', NULL),
(128, 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', 'clrksfb2yagtpgc5tjvt5rt1mmrawxgixajkzhlci991inzzui', 'pflaxsqa9oigavfliales8rpsq05wjcyudip4mxpe5s4mnqrjj', 'crstoxmqwnfe8uoufo5kvu8zwucruhdxehqpytrfezqzbfuy3d', '2020-10-28 21:57:13', '2020-10-28 21:57:13', NULL),
(129, 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', 'pflp8vjmfgancixs5rbsfhgwxcuw4ox3kedef7dscemmssqyhs', 'crsphkwcmxvgyziyca7h3bmvv8gqynbzlq8rabuer6sz3hthm6', '2020-10-28 21:58:32', '2020-10-28 21:58:32', NULL),
(130, 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', 'clrf9nworkqbvxeba54ykyqc5srvavxfyhmgtezh2yzq5kqbty', 'pflzoa9bqnf8p3sa3hvzohczyezd9uhyibe4tsk1wuygcfiwap', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-28 22:02:05', '2020-10-28 22:02:05', NULL),
(131, 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', 'clrf9nworkqbvxeba54ykyqc5srvavxfyhmgtezh2yzq5kqbty', 'pflru97evf0txvtjrfmnfflkcd4y4acfl4rjawy8efq3aus1ud', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-28 22:03:33', '2020-10-28 22:03:33', NULL),
(132, 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', 'pflffm7wblhjvc95iauzmk7m71ji1g5guoiydmtlw04u3h1dnq', 'crsn8i98sjmprkfeh2xkzpjvs4lygyufavyengdrtbmncalwo0', '2020-10-28 22:08:14', '2020-10-28 22:08:14', NULL),
(133, 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', 'clrksfb2yagtpgc5tjvt5rt1mmrawxgixajkzhlci991inzzui', 'pfl4oaovtueipkqcaiukazbtjwoxbuwvze0aqet58u4ksghqrw', 'crs2hjztfi5othrg9fzdp50sbcmhlyjloxlmfmrzlbqhqj4dt9', '2020-10-28 22:08:23', '2020-10-28 22:08:23', NULL),
(134, 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', 'pflffm7wblhjvc95iauzmk7m71ji1g5guoiydmtlw04u3h1dnq', 'crskznbtkwrwkbsb5vhdkbkoxv1cavxvfp6piwkq10ur4tyjek', '2020-10-28 22:09:32', '2020-10-28 22:09:32', NULL),
(136, 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', 'clr31ohnv0mp5yztwj386gs5ewnyqmezxrcx4sf7cregqgjcj6', 'pflstahyrpyojgssb5s5pzhogjduawi0imxjaq48yg54afqnyq', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-28 22:13:33', '2020-10-28 22:13:33', NULL),
(137, 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', 'clrb6etjrmq7lgpttvgial8doovpiqleocjrhkgbmnpbkldmqk', 'pflerxer1q5nqhfqeaji5vvubwafaq88hlmbah84qnz0ho4feu', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-28 22:14:39', '2020-10-28 22:14:39', NULL),
(138, 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', 'clrb6etjrmq7lgpttvgial8doovpiqleocjrhkgbmnpbkldmqk', 'pflerxer1q5nqhfqeaji5vvubwafaq88hlmbah84qnz0ho4feu', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-28 22:16:17', '2020-10-28 22:16:17', NULL),
(139, 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', 'clr4mmxdqeyzvcbzkqgdoj61vhj7jlzzspynpowowksazsuuhy', 'pflpmacega8ejnilb1wcamrwzcych3ueybqstjik9kyukkzu2v', 'crs7yyujni7blwyhy8gqgvxmrlvfb8evbctcampnmvjbn5igad', '2020-10-28 22:24:40', '2020-10-28 22:24:40', NULL),
(140, 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', 'clri0idqg8komivx2vrm7jq8jvoifmhwx5jobnwsyxx7pyscs4', 'pfl4oaovtueipkqcaiukazbtjwoxbuwvze0aqet58u4ksghqrw', 'crsm6lebfszqbvvcx4ky0xmblneril4fwudtcerw8ip5eyx6vq', '2020-10-28 22:25:43', '2020-10-28 22:25:43', NULL),
(141, 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', 'pfl8elhxnlbekunxjd6ho8sqwqdmebicyhzrcj4udc7om4cehv', 'crs7yyujni7blwyhy8gqgvxmrlvfb8evbctcampnmvjbn5igad', '2020-10-28 22:26:33', '2020-10-28 22:26:33', NULL),
(142, 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', 'pfllmhgawirkzhxbaepzgzzsnynb2ar452o7drn80umfpsnqj4', 'crs7yyujni7blwyhy8gqgvxmrlvfb8evbctcampnmvjbn5igad', '2020-10-28 22:27:44', '2020-10-28 22:27:44', NULL),
(143, 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', 'clrvbl81kh4ypj1dtzsinp7hje00qzw3pzrlwcivijtbah6bly', 'pfl8vwlvewtdgfbjsmjmvnc4pqb0vokhphzcop6j4wlxhn9tze', 'crshy8z5anwwnats7a7ci72sptqcvadrvgdn9dahpsysretcis', '2020-10-28 22:29:32', '2020-10-28 22:29:32', NULL),
(144, 'clsztzi3v6ee1fdkmrqh5bvuahrscps6u5aijb2crctvqkwvoq', 'clrcodowplhv42tk6zbbwvulf6ninkhxatrsuo7gi05enmqzmw', 'pflvhaaemdkkwn35dth9si3daqpd4buy0jly2stx1juaxoyrrm', 'crsga1pwuyunzinrcamuxqldlvaufwzzwtndkucfuqvjju6xmk', '2020-10-28 22:31:12', '2020-10-28 22:31:12', NULL),
(145, 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', 'clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', 'pflle02ua69xpmsszxk1mq8ckhp9cdcfkvhunabmey5fpwestx', 'crsh9hpt4jmnfzyt0uv8gossdxputjdzoawnx6nzmjfr9jjggx', '2020-10-28 22:31:47', '2020-10-28 22:31:47', NULL),
(146, 'clsztzi3v6ee1fdkmrqh5bvuahrscps6u5aijb2crctvqkwvoq', 'clrb6etjrmq7lgpttvgial8doovpiqleocjrhkgbmnpbkldmqk', 'pflvhaaemdkkwn35dth9si3daqpd4buy0jly2stx1juaxoyrrm', 'crs0i8xjonzxqsafbgcssem8xeqjdzb49cqw2oxzpji8vrxs9x', '2020-10-28 22:32:43', '2020-10-28 22:32:43', NULL),
(147, 'clsc2yhzfhpfmmy1hiiwffsscxv87srqv1ukbmaoliay1a08fh', 'clrvbl81kh4ypj1dtzsinp7hje00qzw3pzrlwcivijtbah6bly', 'pfl8vwlvewtdgfbjsmjmvnc4pqb0vokhphzcop6j4wlxhn9tze', 'crssbxbyveq2o9ghlrbfsfemenomcpbnhwv96dijiobng3koxk', '2020-10-28 22:33:21', '2020-10-28 22:33:21', NULL),
(148, 'clsstwk81eoanw1lgaul7eiqoqq4rdqvgw4jremrmarjyztlxf', 'clr31ohnv0mp5yztwj386gs5ewnyqmezxrcx4sf7cregqgjcj6', 'pflp6ey967dryciidxryrpo8l9e3dnigqb62t0cfegnl27mf0w', 'crsycn9zp1t0ie2rmm1jyrcx83t3lczsaslnz6tjzes1ljv3wp', '2020-10-28 22:36:45', '2020-10-28 22:36:45', NULL),
(149, 'clsstwk81eoanw1lgaul7eiqoqq4rdqvgw4jremrmarjyztlxf', 'clr31ohnv0mp5yztwj386gs5ewnyqmezxrcx4sf7cregqgjcj6', 'pflp6ey967dryciidxryrpo8l9e3dnigqb62t0cfegnl27mf0w', 'crshtfov82vuonqdk3mfw9gugezfcaamyf3btm2g0lqo2lask2', '2020-10-28 22:37:46', '2020-10-28 22:37:46', NULL),
(150, 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', 'clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', 'pflgkc7zgfzpfh8ohdybvt8obulfsj44kh5h5dezmrkpt50hsn', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-28 22:37:56', '2020-10-28 22:37:56', NULL),
(151, 'clsztzi3v6ee1fdkmrqh5bvuahrscps6u5aijb2crctvqkwvoq', 'clr4mmxdqeyzvcbzkqgdoj61vhj7jlzzspynpowowksazsuuhy', 'pflvqpbewnwca0irwyzekykevf4dsoghgc4xfe0mfywzeaxumf', 'crscynwlguxfc52l5twbptlomagxbbiwudrg714ojamrjp54vw', '2020-10-28 22:40:10', '2020-10-28 22:40:10', NULL),
(152, 'clsstwk81eoanw1lgaul7eiqoqq4rdqvgw4jremrmarjyztlxf', 'clr31ohnv0mp5yztwj386gs5ewnyqmezxrcx4sf7cregqgjcj6', 'pflziy7g3oa7ohjxb11b3rtvu0adgzi9cmsrcnornywtdwllza', 'crsfvotpsk2bh0fhsl2vwouci0phcpzwleacvtitmvyxqyvphk', '2020-10-28 22:41:18', '2020-10-28 22:41:18', NULL),
(153, 'clsstwk81eoanw1lgaul7eiqoqq4rdqvgw4jremrmarjyztlxf', 'clr31ohnv0mp5yztwj386gs5ewnyqmezxrcx4sf7cregqgjcj6', 'pflziy7g3oa7ohjxb11b3rtvu0adgzi9cmsrcnornywtdwllza', 'crsomggsrmxcdy7ufzgifnef7y0211dfvqlegnkmf5ex1zbwnk', '2020-10-28 22:42:01', '2020-10-28 22:42:01', NULL),
(154, 'clsztzi3v6ee1fdkmrqh5bvuahrscps6u5aijb2crctvqkwvoq', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', 'pflvqpbewnwca0irwyzekykevf4dsoghgc4xfe0mfywzeaxumf', 'crsf9fl4kgl1ghnwhxmxbpjfntcdxqtedffux4hxthrj4tffoh', '2020-10-28 22:43:00', '2020-10-28 22:43:00', NULL),
(155, 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', 'clrksfb2yagtpgc5tjvt5rt1mmrawxgixajkzhlci991inzzui', 'pflohqsjxgwztt7sezijcshbv63s0c7vsaro66rvmyokl9plwc', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-28 22:49:25', '2020-10-28 22:49:25', NULL),
(156, 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', 'clri0idqg8komivx2vrm7jq8jvoifmhwx5jobnwsyxx7pyscs4', 'pfljtrmixi9pmjsi7xoqliqy4haongxcyaybjt2ywtmg0ngmjy', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-28 22:53:54', '2020-10-28 22:53:54', NULL),
(157, 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', 'clrvbl81kh4ypj1dtzsinp7hje00qzw3pzrlwcivijtbah6bly', 'pflcn5zkkpurlxznrrxwe5wxi2ktmdpdqa4w5dt0lrvvhkma67', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-28 22:55:17', '2020-10-28 22:55:17', NULL),
(158, 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', 'clrv4pyijtbzn6uywv5is30f8ohp6zezqftp0rcfy1mvrwahq0', 'pfl9hybryxln1uyb9ulqkhpfllixgth3ew1w2a1muyqnku56ie', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-28 22:56:13', '2020-10-28 22:56:13', NULL),
(159, 'clsupb2kwfjpxdam5d49p8m8zxm15diztcojletkk76z7kv7ue', 'clr3etm52johwxxuxbsdgvmsatsqne9eepon9ucfnt96tb2tcm', 'pflyzsz5alasikjea7tmoda20dsyzpuivjs6olhojdb3paoyxn', 'crsexzeaaxs3ntruq8qpedyddw9mg7ffqwbhi3arp5tqrlssbi', '2020-10-28 22:59:45', '2020-10-28 22:59:45', NULL),
(160, 'clsupb2kwfjpxdam5d49p8m8zxm15diztcojletkk76z7kv7ue', 'clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', 'pflyzsz5alasikjea7tmoda20dsyzpuivjs6olhojdb3paoyxn', 'crshaym99ctu3zuqm0bp0ipvps5h9iqkx2coivmgipcq41rjyi', '2020-10-28 23:01:35', '2020-10-28 23:01:35', NULL),
(161, 'clsupb2kwfjpxdam5d49p8m8zxm15diztcojletkk76z7kv7ue', 'clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', 'pflyzsz5alasikjea7tmoda20dsyzpuivjs6olhojdb3paoyxn', 'crsgpm3og4ybx010gwer8zjliarmhfc4p9gpljgdmke7bmfuex', '2020-10-28 23:03:27', '2020-10-28 23:03:27', NULL),
(162, 'clsupb2kwfjpxdam5d49p8m8zxm15diztcojletkk76z7kv7ue', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', 'pflyzsz5alasikjea7tmoda20dsyzpuivjs6olhojdb3paoyxn', 'crsgpm3og4ybx010gwer8zjliarmhfc4p9gpljgdmke7bmfuex', '2020-10-28 23:04:53', '2020-10-28 23:04:53', NULL),
(163, 'clsupb2kwfjpxdam5d49p8m8zxm15diztcojletkk76z7kv7ue', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', 'pflyzsz5alasikjea7tmoda20dsyzpuivjs6olhojdb3paoyxn', 'crsrd4xjgfjongsporhg1is8vqvowubgn4ne5noyooyrczpvnt', '2020-10-28 23:06:08', '2020-10-28 23:06:08', NULL),
(164, 'clsupb2kwfjpxdam5d49p8m8zxm15diztcojletkk76z7kv7ue', 'clrwejqhgmsv7i9tsbto9q6qjcune1r3uaag4hi5wkk35xlqfc', 'pflyzsz5alasikjea7tmoda20dsyzpuivjs6olhojdb3paoyxn', 'crsjhfti0cryxh2cnt3x2veufqvniimo0u6daxmyxccqureqnm', '2020-10-28 23:11:16', '2020-10-28 23:11:16', NULL),
(165, 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', 'clrvbl81kh4ypj1dtzsinp7hje00qzw3pzrlwcivijtbah6bly', 'pfldlatfxgrfnijkladjg1yqtxfn8ncclbtqt12fxjce2ivequ', 'crsx3syabwlpkrfq5ckq5ejykhh38a1tynhjvekz5fqyfcxpyg', '2020-10-28 23:13:57', '2020-10-28 23:13:57', NULL),
(166, 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', 'clrksfb2yagtpgc5tjvt5rt1mmrawxgixajkzhlci991inzzui', 'pflouyiqjngpoxuor16txghwmucynu7hhzxbqfy375n19s96tq', 'crsx3syabwlpkrfq5ckq5ejykhh38a1tynhjvekz5fqyfcxpyg', '2020-10-28 23:18:23', '2020-10-28 23:18:23', NULL),
(167, 'clsgnncdnmrkqkevaupdsk03gdcqqfgqjp62qeiqipayqctyo0', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', 'pflvgr1el3bju1z8hmb3w1blicy8ltorevun1ntzo2io7swir8', 'crsx3syabwlpkrfq5ckq5ejykhh38a1tynhjvekz5fqyfcxpyg', '2020-10-28 23:19:24', '2020-10-28 23:19:24', NULL),
(168, 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', 'clrguo7oo3ijzr6n6xfvnr4u4xhkriwnimq1p6eboiwsodwtpz', 'pflcsemobri04t38ehunf1trveltxumhv58tsjc8uxxfwgutx0', 'crsx3syabwlpkrfq5ckq5ejykhh38a1tynhjvekz5fqyfcxpyg', '2020-10-28 23:28:29', '2020-10-28 23:28:29', NULL),
(169, 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', 'clri0idqg8komivx2vrm7jq8jvoifmhwx5jobnwsyxx7pyscs4', 'pflnxtnjvdvd2thsuutkcnhzjpd67lhurrg6rwtouuyuqda63z', 'crsh9hpt4jmnfzyt0uv8gossdxputjdzoawnx6nzmjfr9jjggx', '2020-10-28 23:34:50', '2020-10-28 23:34:50', NULL),
(170, 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', 'pfly3bgj7yz75ogoty8ym8owbnfnrqmisb8rpscpc4yxw4b7pq', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-28 23:37:34', '2020-10-28 23:37:34', NULL),
(171, 'cls4v3cvwha3hebd01gvgxjpfhlqrwyr27pr25cgnpicg4husq', 'clrynyd9axx0hrmvhssegmr2e99cg2s1xm8xg7z6xof6cmeuro', 'pflo9vl1nutlnebljkojkove0pzjdinylpdytjx06swzzssefg', 'crsgoegqwaspziuzjzoi5l32ubyhsszl1nrah14wvno2pdi0gf', '2020-10-28 23:39:57', '2020-10-28 23:39:57', NULL),
(172, 'clsiixhlcubo8iyqy8mnsaybpnnny61m46sxtxfc8fpc0bygys', 'clri0idqg8komivx2vrm7jq8jvoifmhwx5jobnwsyxx7pyscs4', 'pfl0anunxvocnrxfg9amjdnadwr7iuw7v2jtil83zy6bzcbd3n', 'crsqyeei1vqflafo7xmqwfvo0cnahyis4vwhledkbrlr7tj9gn', '2020-10-29 13:25:21', '2020-10-29 13:25:21', NULL),
(173, 'clsiixhlcubo8iyqy8mnsaybpnnny61m46sxtxfc8fpc0bygys', 'clrynyd9axx0hrmvhssegmr2e99cg2s1xm8xg7z6xof6cmeuro', 'pfl0anunxvocnrxfg9amjdnadwr7iuw7v2jtil83zy6bzcbd3n', 'crsoncu3duwngwekksvcevi4ybivhtkszopvnv3sfiymcogrep', '2020-10-29 13:26:11', '2020-10-29 13:26:11', NULL),
(174, 'clsiixhlcubo8iyqy8mnsaybpnnny61m46sxtxfc8fpc0bygys', 'clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', 'pflyoqhtyfqnavhd7hvcaw2cebazeckmfm8goyui9zo2gy2qxb', 'crsdlk5ye1cgepbcska99ep8ey7rjwxjiubzpdr4p5gv23ez6o', '2020-10-29 13:30:17', '2020-10-29 13:30:17', NULL),
(175, 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', 'clri0idqg8komivx2vrm7jq8jvoifmhwx5jobnwsyxx7pyscs4', 'pflrtopdosehuruvfis7mnqpc7v244x0e93d6z0eznfnuunijf', 'crstoxmqwnfe8uoufo5kvu8zwucruhdxehqpytrfezqzbfuy3d', '2020-10-29 13:34:38', '2020-10-29 13:34:38', NULL),
(176, 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', 'pflrtopdosehuruvfis7mnqpc7v244x0e93d6z0eznfnuunijf', 'crstoxmqwnfe8uoufo5kvu8zwucruhdxehqpytrfezqzbfuy3d', '2020-10-29 13:35:59', '2020-10-29 13:35:59', NULL),
(177, 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', 'clrynyd9axx0hrmvhssegmr2e99cg2s1xm8xg7z6xof6cmeuro', 'pfl70ghhbna6dcb0ah99p088kshox50apjadbjub5fk43jywn7', 'crs3wrpcwl31szavsj69umdxe0jdqmhhvulyidy4s8e9mgvkdh', '2020-10-29 13:45:30', '2020-10-29 13:45:30', NULL),
(178, 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', 'clri0idqg8komivx2vrm7jq8jvoifmhwx5jobnwsyxx7pyscs4', 'pfl70ghhbna6dcb0ah99p088kshox50apjadbjub5fk43jywn7', 'crs3wrpcwl31szavsj69umdxe0jdqmhhvulyidy4s8e9mgvkdh', '2020-10-29 13:52:15', '2020-10-29 13:52:15', NULL),
(179, 'clsphcu7doav4cydzfev8l5l2hv4v7goyp48zomorjhceorhxs', 'clrksfb2yagtpgc5tjvt5rt1mmrawxgixajkzhlci991inzzui', 'pflasmi02vdq5g0y7govz1njncerbkot3kgbbdggfxau41gcvm', 'crswt7iugyilxilux6l99pxbphmyrsczkd5avfqzndiikesum8', '2020-10-29 14:03:11', '2020-10-29 14:03:11', NULL),
(180, 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', 'clr4mmxdqeyzvcbzkqgdoj61vhj7jlzzspynpowowksazsuuhy', 'pflqa41q2vwpxufsihw4inpzojmpeebe3j6alryylazpnhvrtm', 'crswt7iugyilxilux6l99pxbphmyrsczkd5avfqzndiikesum8', '2020-10-29 14:47:09', '2020-10-29 14:47:09', NULL),
(181, 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', 'clrgeepc9c6opxupej6ifzycoj1fuicoompfmkf3rlx8qqtclq', 'pflvpg1pvxd5ewennnepak9yi3ergutsuszqtjxetdxpjrfrpz', 'crsubkivbijsvsscobfuw5y0v3kb13pj5khd35qwd2pg1zlijr', '2020-10-29 14:50:48', '2020-10-29 14:50:48', NULL),
(182, 'clsnyipwkt7hrungp4li6rpgoeaa8chbhnm18mgob7dxbma3dq', 'clrv4pyijtbzn6uywv5is30f8ohp6zezqftp0rcfy1mvrwahq0', 'pflvpg1pvxd5ewennnepak9yi3ergutsuszqtjxetdxpjrfrpz', 'crs3wrpcwl31szavsj69umdxe0jdqmhhvulyidy4s8e9mgvkdh', '2020-10-29 14:54:51', '2020-10-29 14:54:51', NULL),
(183, 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', 'clrruxrfwvxfjiwifobvokyotsvrzpergrcla5wzynp1xdujww', 'pflimza4vtqght0ajfpkhxy0bpgth0ftuexa5wbnzfrrvuazy0', 'crs3wrpcwl31szavsj69umdxe0jdqmhhvulyidy4s8e9mgvkdh', '2020-10-29 15:08:40', '2020-10-29 15:08:40', NULL),
(184, 'clsgwccmc6iukfn2gpv3rnn5ha7gtvvouwweonsdzcfg8if2c1', 'clrvbl81kh4ypj1dtzsinp7hje00qzw3pzrlwcivijtbah6bly', 'pfllaykjgsr2exc6p1izkx8tqiaacbuzessajpauoy66ojdcpk', 'crswt7iugyilxilux6l99pxbphmyrsczkd5avfqzndiikesum8', '2020-10-29 15:10:38', '2020-10-29 15:10:38', NULL),
(185, 'clsfvof1pllvpms4ywkyl2i1vfzju79zbzsjirmevyyd91rygs', 'clrcodowplhv42tk6zbbwvulf6ninkhxatrsuo7gi05enmqzmw', 'pfldjamattmuexeb2jbhhd5epmlbayhvtjud7lf0speqlis8rd', 'crsbp9u7hwzonlan9rllovrs4ylozudey6n0hveauosjbeu4o9', '2020-10-29 16:49:35', '2020-10-29 16:49:35', NULL),
(186, 'clsfvof1pllvpms4ywkyl2i1vfzju79zbzsjirmevyyd91rygs', 'clr3etm52johwxxuxbsdgvmsatsqne9eepon9ucfnt96tb2tcm', 'pfldjamattmuexeb2jbhhd5epmlbayhvtjud7lf0speqlis8rd', 'crsedkcarmjlw0rqevxczfqzybwim6e53llqfcqrbyw4otdsaw', '2020-10-29 16:59:21', '2020-10-29 16:59:21', NULL),
(187, 'clsyvtfgyytbwjmbtqjlkktpvevda9m65xzwtjivl2djzt2g38', 'clrruxrfwvxfjiwifobvokyotsvrzpergrcla5wzynp1xdujww', 'pflqtrdaxpybkpxjcsrldubamgulb0zvlk1dj815l5vyhsmnoi', 'crshdatktwkn7s5jzjb8hv2hqvgo4l5f7hsc7o1gmcgqib38mu', '2020-10-29 17:22:01', '2020-10-29 17:22:01', NULL),
(188, 'clsyvtfgyytbwjmbtqjlkktpvevda9m65xzwtjivl2djzt2g38', 'clr4mmxdqeyzvcbzkqgdoj61vhj7jlzzspynpowowksazsuuhy', 'pflqtrdaxpybkpxjcsrldubamgulb0zvlk1dj815l5vyhsmnoi', 'crse32uq5qymvcsauj0bsiux22pxwcncfe0njcqtardg30mobr', '2020-10-29 17:27:40', '2020-10-29 17:27:40', NULL),
(189, 'clsfvof1pllvpms4ywkyl2i1vfzju79zbzsjirmevyyd91rygs', 'clrq8zcyhsp3jz9fanxwtwyypcqvkygfus8xdn3iulzged9lbi', 'pfl1yubmtiax1uhopmqalewbzibhjyautum9uieumaff6vehyd', 'crs9uw0oljsl3sirzldqcr3e3b2mzmd0a4xjabp7pyluwv09d1', '2020-10-29 20:58:09', '2020-10-29 20:58:09', NULL),
(190, 'clsfvof1pllvpms4ywkyl2i1vfzju79zbzsjirmevyyd91rygs', 'clrq8zcyhsp3jz9fanxwtwyypcqvkygfus8xdn3iulzged9lbi', 'pfl1yubmtiax1uhopmqalewbzibhjyautum9uieumaff6vehyd', 'crszn2pta705af4i8dvjdtc612webq9lltq7wau9uofbq1thw3', '2020-10-29 21:06:49', '2020-10-29 21:06:49', NULL),
(191, 'clsyvtfgyytbwjmbtqjlkktpvevda9m65xzwtjivl2djzt2g38', 'clrq8zcyhsp3jz9fanxwtwyypcqvkygfus8xdn3iulzged9lbi', 'pfl1xp30lrm56yj6eurbvvycadxq19vi77owysskk6u4ruykjs', 'crsh9qbwf4nw9ppfbrlq1sgdsxmsirb0unisnfki52r6uawlmp', '2020-10-29 22:26:28', '2020-10-29 22:26:28', NULL),
(192, 'clsxb6rrbw8tavbwy0awfnu8kyrxzlbym16pndg7uq9tpsdem1', 'clrynyd9axx0hrmvhssegmr2e99cg2s1xm8xg7z6xof6cmeuro', 'pflbg0euw2hvv2mo9om6cliiqovtnghycgkei0mrbbypn0nmv0', 'crskk2kv6ik9pr9ekbwzi6cub5ncm9jkbl3eb2j9tkwert9b32', '2020-10-29 22:29:41', '2020-10-29 22:29:41', NULL),
(193, 'clsiixhlcubo8iyqy8mnsaybpnnny61m46sxtxfc8fpc0bygys', 'clrq8zcyhsp3jz9fanxwtwyypcqvkygfus8xdn3iulzged9lbi', 'pflfjd3fdcdmuxakazx8s7chjxdnmscdzcw3nmvlqwiucqgtf3', 'crsemn1dytagxknipex7fqydscwajjy6ai0cirj0nsgpd0jisl', '2020-10-29 22:35:23', '2020-10-29 22:35:23', NULL),
(194, 'cls3qp0jkoe4jymw1jfdfgxgknbtavvsjwnts6ofhkls2tnmih', 'clrki90ejyvlcr9tm2jlzh8brbo6ujjecwmv1dgvyuegfl19pt', 'pflggb6kr4em8jpmjq5oizodsfdtwspfch1xu1wlcbgzgguwec', 'crswhxeamorbm4h3pkknbqbohvclhgm68lids4k0xl1dwabqw6', '2020-10-29 22:53:57', '2020-10-29 22:53:57', NULL),
(195, 'cls3qp0jkoe4jymw1jfdfgxgknbtavvsjwnts6ofhkls2tnmih', 'clrrcmrziachv6fumdbjnzghg9ywecqe3vzagvjbiwigi7e14j', 'pflggb6kr4em8jpmjq5oizodsfdtwspfch1xu1wlcbgzgguwec', 'crsroderluioa0j2a6mk9w71enncatifzlnjym1pouerti5yhq', '2020-10-29 22:55:47', '2020-10-29 22:55:47', NULL),
(196, 'clsyvtfgyytbwjmbtqjlkktpvevda9m65xzwtjivl2djzt2g38', 'clrynyd9axx0hrmvhssegmr2e99cg2s1xm8xg7z6xof6cmeuro', 'pflyestjdeji1o48vshtytdldfgku8p8ac5oxmmdfzfg6qxwsf', 'crskzfjdqsfpjerbgvkbm6p9qxwkm2fohulommifufzuwcp8ja', '2020-10-29 22:59:46', '2020-10-29 22:59:46', NULL),
(197, 'clsyvtfgyytbwjmbtqjlkktpvevda9m65xzwtjivl2djzt2g38', 'clrbdfa2engjwuyqwj57u9fp2ceir9jaegjcozwswguxqbs9wg', 'pflvympb8vzfkangpqtptwvhkxtayfb1u11ex12qbhoeu1llsg', 'crsyozu7apf5pfbqpge0n2g632gkdufpcuajqdyz9vi1r38tnx', '2020-10-29 23:01:59', '2020-10-29 23:01:59', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `scheduled_class_periods`
--

CREATE TABLE `scheduled_class_periods` (
  `scheduled_class_period_id` int(11) NOT NULL,
  `scheduled_class_id` int(11) DEFAULT NULL,
  `period_id` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `scheduled_class_periods`
--

INSERT INTO `scheduled_class_periods` (`scheduled_class_period_id`, `scheduled_class_id`, `period_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(28, 84, 'per5lwazcsaa4ii8pt4smoeklawxpn0e1w5ailaa6rczkv0dz7', '2020-08-15 22:58:46', '2020-08-15 22:58:46', NULL),
(32, 84, 'per04dnyqr37duvhmayahknvzktefvtozvmgr7wynw9qbjc8of', '2020-08-15 22:58:48', '2020-08-15 22:58:48', NULL),
(34, 84, 'perkt3q4cts49bcef7vfwfcpvhzb5aehp8iehchcblhuetcihs', '2020-08-15 22:58:48', '2020-08-15 22:58:48', NULL),
(35, 84, 'peru0iwj1wbmnqxuhz6ndc7asragtkkrenppz7wsdo0wz8webe', '2020-08-15 22:58:49', '2020-08-15 22:58:49', NULL),
(36, 84, 'percqvce9vcsoeujmew1c2wrl55uqr3gn847tn6r48g5ettygi', '2020-08-15 22:58:49', '2020-08-15 22:58:49', NULL),
(37, 84, 'perkbpyc56nzx1efivewfamw44awbxz8ftcg8yj0wral5eblka', '2020-08-15 22:58:49', '2020-08-15 22:58:49', NULL),
(38, 84, 'per5gkvtt1yysgwpijvvtad2zazd7xazw3esdane7y3u3vxr5m', '2020-08-15 22:58:50', '2020-08-15 22:58:50', NULL),
(43, 86, 'perelhrhmt4oxkoyhjnh41nhvobli4bsbmbyhey4jzg2wiqt5d', '2020-08-15 23:11:17', '2020-08-15 23:11:17', NULL),
(44, 87, 'permxuwbaysnrkdpfqtequ03sosoh372lboswcltcehivij1at', '2020-08-15 23:45:44', '2020-08-15 23:45:44', NULL),
(45, 88, 'pergqyed91lh5bqyli0qjoguzc4ftnnbk2u25rcclkihl4m6gz', '2020-08-16 04:55:27', '2020-08-16 04:55:27', NULL),
(46, 88, 'persqlke1coahwzk84f64feuiacj3qh6zau8vk3lsbuklmdwrn', '2020-08-16 04:55:28', '2020-08-16 04:55:28', NULL),
(47, 88, 'per4ul4ot18wvbpzfibkqoqtdvthlngyztuom3k0i0npzmgrya', '2020-08-16 04:55:28', '2020-08-16 04:55:28', NULL),
(48, 88, 'perrjlgen8ljlsb1hlokcr6xyueuk2pu6hrmvogzb6thjjwr6d', '2020-08-16 04:55:29', '2020-08-16 04:55:29', NULL),
(49, 89, 'perszeqqlxotzkdol19fzi6myhphahopgyjly1joyuwui8pp5w', '2020-08-16 13:37:39', '2020-08-16 13:37:39', NULL),
(50, 89, 'perstoeoi3adllmiityvawggk6dvuzrizsv8jh9i2zmkewezev', '2020-08-16 13:37:40', '2020-08-16 13:37:40', NULL),
(51, 89, 'perjriv6y5pbyga8s4o5a4vvnyfu7eqrwpuczgespdh8lmaah5', '2020-08-16 13:37:41', '2020-08-16 13:37:41', NULL),
(52, 89, 'per5gkvtt1yysgwpijvvtad2zazd7xazw3esdane7y3u3vxr5m', '2020-08-16 13:37:42', '2020-08-16 13:37:42', NULL),
(53, 89, 'perc1kftnzwtwlnwmvkwi67isgurlbaabcnrf79j7cyokqagwp', '2020-08-16 13:37:43', '2020-08-16 13:37:43', NULL),
(54, 89, 'perkbpyc56nzx1efivewfamw44awbxz8ftcg8yj0wral5eblka', '2020-08-16 13:37:43', '2020-08-16 13:37:43', NULL),
(55, 90, 'perzte0nthz9cfqqhriwmhgsf3qwwk4ndkoxskqlx7gl8vbofj', '2020-08-16 13:44:06', '2020-08-16 13:44:06', NULL),
(56, 90, 'persu0zpmgrwc3qojertzh0pkfqfgd7mgbkcpexenhoqpqptuv', '2020-08-16 13:44:06', '2020-08-16 13:44:06', NULL),
(57, 90, 'perxft9lice16ed18mec2hxsxyzowy80bnvdal9u5jdkzgknnk', '2020-08-16 13:44:07', '2020-08-16 13:44:07', NULL),
(58, 90, 'per04dnyqr37duvhmayahknvzktefvtozvmgr7wynw9qbjc8of', '2020-08-16 13:44:07', '2020-08-16 13:44:07', NULL),
(59, 91, 'pergmt6ew6ktwh9ryzyk4ejjxdexvnj0hxzd6tmhcfynwncrqx', '2020-08-17 19:26:16', '2020-08-17 19:26:16', NULL),
(60, 91, 'perkt3q4cts49bcef7vfwfcpvhzb5aehp8iehchcblhuetcihs', '2020-08-17 19:26:17', '2020-08-17 19:26:17', NULL),
(61, 91, 'permxuwbaysnrkdpfqtequ03sosoh372lboswcltcehivij1at', '2020-08-17 19:26:17', '2020-08-17 19:26:17', NULL),
(62, 92, 'per5m1vstjsljz7xdqiwmqvqzqubn8wnkhdnxnwlgl4wqqyflj', '2020-08-17 19:27:49', '2020-08-17 19:27:49', NULL),
(63, 92, 'perz9kaxhbhvtpzq26s2dr80ozne4oivjyntfmqx6uhddma2nk', '2020-08-17 19:27:50', '2020-08-17 19:27:50', NULL),
(64, 93, 'perae0gasuwbyxpc9fhag2xg1wi1whmq3cd7jlvc378oyehb9o', '2020-08-17 19:29:39', '2020-08-17 19:29:39', NULL),
(65, 93, 'perdshrsn5ewd8hlqtu0lldpin2gotfbxrmixlfjjv3ndlzyir', '2020-08-17 19:29:39', '2020-08-17 19:29:39', NULL),
(66, 94, 'perad4toxiyt1uue7ocbwetnnxohxc0cecbzoeirgrlfumdxor', '2020-08-17 19:44:58', '2020-08-17 19:44:58', NULL),
(67, 95, 'per4iumevk9tdnve2royyrogyzyrmzzsxhkylupl48dsireoir', '2020-08-29 16:49:22', '2020-08-29 16:49:22', NULL),
(68, 96, 'pergmt6ew6ktwh9ryzyk4ejjxdexvnj0hxzd6tmhcfynwncrqx', '2020-09-03 14:21:57', '2020-09-03 14:21:57', NULL),
(69, 96, 'perszeqqlxotzkdol19fzi6myhphahopgyjly1joyuwui8pp5w', '2020-09-03 14:21:58', '2020-09-03 14:21:58', NULL),
(70, 96, 'permxuwbaysnrkdpfqtequ03sosoh372lboswcltcehivij1at', '2020-09-03 14:21:58', '2020-09-03 14:21:58', NULL),
(82, 99, 'pergrbey5eqwllvyaslnesrwle69k1fqenofn22ka9fznysdm1', '2020-09-18 12:46:26', '2020-09-18 12:46:26', NULL),
(83, 99, 'perumewwbfhbbma1v8yrjargw3colnzqjnaahi4tkh5dtyefwr', '2020-09-18 12:46:27', '2020-09-18 12:46:27', NULL),
(84, 99, 'perstoeoi3adllmiityvawggk6dvuzrizsv8jh9i2zmkewezev', '2020-09-18 12:46:27', '2020-09-18 12:46:27', NULL),
(88, 101, 'pergmt6ew6ktwh9ryzyk4ejjxdexvnj0hxzd6tmhcfynwncrqx', '2020-10-16 20:27:33', '2020-10-16 20:27:33', NULL),
(89, 101, 'perszeqqlxotzkdol19fzi6myhphahopgyjly1joyuwui8pp5w', '2020-10-16 20:27:33', '2020-10-16 20:27:33', NULL),
(90, 101, 'pergrbey5eqwllvyaslnesrwle69k1fqenofn22ka9fznysdm1', '2020-10-16 20:27:34', '2020-10-16 20:27:34', NULL),
(91, 101, 'perkt3q4cts49bcef7vfwfcpvhzb5aehp8iehchcblhuetcihs', '2020-10-16 20:27:34', '2020-10-16 20:27:34', NULL),
(92, 101, 'perstoeoi3adllmiityvawggk6dvuzrizsv8jh9i2zmkewezev', '2020-10-16 20:27:34', '2020-10-16 20:27:34', NULL),
(93, 102, 'perbxjpmbc8ggmjjreihsb4ykvm32eemg44vmpayyjzj1nfxeg', '2020-10-19 18:37:14', '2020-10-19 18:37:14', NULL),
(94, 102, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', '2020-10-19 18:37:14', '2020-10-19 18:37:14', NULL),
(95, 102, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', '2020-10-19 18:37:14', '2020-10-19 18:37:14', NULL),
(96, 102, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', '2020-10-19 18:37:14', '2020-10-19 18:37:14', NULL),
(97, 102, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', '2020-10-19 18:37:15', '2020-10-19 18:37:15', NULL),
(98, 102, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', '2020-10-19 18:37:15', '2020-10-19 18:37:15', NULL),
(99, 102, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', '2020-10-19 18:37:15', '2020-10-19 18:37:15', NULL),
(100, 102, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', '2020-10-19 18:37:16', '2020-10-19 18:37:16', NULL),
(101, 102, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', '2020-10-19 18:37:16', '2020-10-19 18:37:16', NULL),
(102, 102, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', '2020-10-19 18:37:16', '2020-10-19 18:37:16', NULL),
(103, 102, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', '2020-10-19 18:37:16', '2020-10-19 18:37:16', NULL),
(104, 103, 'perg9rp46juqgkdpgshpujx5das61d74mm6yrya6jrwxh5tpqy', '2020-10-27 20:12:31', '2020-10-27 20:12:31', NULL),
(105, 103, 'perzd47x9sdine3wuuuez92ki1lbh8z9sej7nkxl9iy9yb42ry', '2020-10-27 20:12:31', '2020-10-27 20:12:31', NULL),
(106, 104, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', '2020-10-28 00:28:00', '2020-10-28 00:28:00', NULL),
(107, 104, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', '2020-10-28 00:28:00', '2020-10-28 00:28:00', NULL),
(108, 105, 'perwru0avsqkhwsjdekhptqtybblzyryglawm46bg8vyiosdcr', '2020-10-28 14:54:13', '2020-10-28 14:54:13', NULL),
(109, 105, 'perrztidsfedzyavzys46kgk4qclxlvwsf4sen9mwn9dun9ega', '2020-10-28 14:54:13', '2020-10-28 14:54:13', NULL),
(110, 106, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', '2020-10-28 14:56:39', '2020-10-28 14:56:39', NULL),
(111, 106, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', '2020-10-28 14:56:39', '2020-10-28 14:56:39', NULL),
(114, 108, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', '2020-10-28 15:16:47', '2020-10-28 15:16:47', NULL),
(115, 108, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', '2020-10-28 15:16:47', '2020-10-28 15:16:47', NULL),
(116, 109, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', '2020-10-28 15:20:39', '2020-10-28 15:20:39', NULL),
(117, 109, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', '2020-10-28 15:20:39', '2020-10-28 15:20:39', NULL),
(118, 110, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', '2020-10-28 15:27:09', '2020-10-28 15:27:09', NULL),
(119, 110, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', '2020-10-28 15:27:09', '2020-10-28 15:27:09', NULL),
(120, 111, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', '2020-10-28 15:27:38', '2020-10-28 15:27:38', NULL),
(121, 111, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', '2020-10-28 15:27:38', '2020-10-28 15:27:38', NULL),
(122, 111, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', '2020-10-28 15:27:38', '2020-10-28 15:27:38', NULL),
(123, 111, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', '2020-10-28 15:27:38', '2020-10-28 15:27:38', NULL),
(124, 111, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', '2020-10-28 15:27:38', '2020-10-28 15:27:38', NULL),
(125, 111, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', '2020-10-28 15:27:38', '2020-10-28 15:27:38', NULL),
(128, 113, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', '2020-10-28 15:32:51', '2020-10-28 15:32:51', NULL),
(129, 113, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', '2020-10-28 15:32:51', '2020-10-28 15:32:51', NULL),
(130, 114, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', '2020-10-28 15:37:35', '2020-10-28 15:37:35', NULL),
(131, 114, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', '2020-10-28 15:37:35', '2020-10-28 15:37:35', NULL),
(132, 115, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', '2020-10-28 15:39:43', '2020-10-28 15:39:43', NULL),
(133, 115, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', '2020-10-28 15:39:43', '2020-10-28 15:39:43', NULL),
(134, 115, 'perguln9rfwptrihli5ykomxfgfvlwszsmhbmzxntgke9sxbwv', '2020-10-28 15:39:43', '2020-10-28 15:39:43', NULL),
(135, 115, 'peraieoiywxwnzpgo5muwfvspy6kgeprinkdpyk13rovvilhxa', '2020-10-28 15:39:43', '2020-10-28 15:39:43', NULL),
(136, 116, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', '2020-10-28 15:57:15', '2020-10-28 15:57:15', NULL),
(137, 116, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', '2020-10-28 15:57:15', '2020-10-28 15:57:15', NULL),
(138, 116, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', '2020-10-28 15:57:15', '2020-10-28 15:57:15', NULL),
(139, 116, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', '2020-10-28 15:57:15', '2020-10-28 15:57:15', NULL),
(140, 117, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', '2020-10-28 16:01:22', '2020-10-28 16:01:22', NULL),
(141, 117, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', '2020-10-28 16:01:22', '2020-10-28 16:01:22', NULL),
(142, 117, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', '2020-10-28 16:01:22', '2020-10-28 16:01:22', NULL),
(143, 117, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', '2020-10-28 16:01:22', '2020-10-28 16:01:22', NULL),
(144, 117, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', '2020-10-28 16:01:22', '2020-10-28 16:01:22', NULL),
(145, 117, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', '2020-10-28 16:01:22', '2020-10-28 16:01:22', NULL),
(146, 118, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', '2020-10-28 16:14:52', '2020-10-28 16:14:52', NULL),
(147, 118, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', '2020-10-28 16:14:52', '2020-10-28 16:14:52', NULL),
(148, 118, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', '2020-10-28 16:14:52', '2020-10-28 16:14:52', NULL),
(149, 118, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', '2020-10-28 16:14:52', '2020-10-28 16:14:52', NULL),
(150, 119, 'perwru0avsqkhwsjdekhptqtybblzyryglawm46bg8vyiosdcr', '2020-10-28 16:20:29', '2020-10-28 16:20:29', NULL),
(151, 119, 'perrztidsfedzyavzys46kgk4qclxlvwsf4sen9mwn9dun9ega', '2020-10-28 16:20:29', '2020-10-28 16:20:29', NULL),
(152, 119, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', '2020-10-28 16:20:29', '2020-10-28 16:20:29', NULL),
(153, 119, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', '2020-10-28 16:20:30', '2020-10-28 16:20:30', NULL),
(154, 120, 'perg9rp46juqgkdpgshpujx5das61d74mm6yrya6jrwxh5tpqy', '2020-10-28 16:35:03', '2020-10-28 16:35:03', NULL),
(155, 120, 'perzd47x9sdine3wuuuez92ki1lbh8z9sej7nkxl9iy9yb42ry', '2020-10-28 16:35:03', '2020-10-28 16:35:03', NULL),
(158, 121, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', '2020-10-28 19:28:55', '2020-10-28 19:28:55', NULL),
(159, 121, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', '2020-10-28 19:28:55', '2020-10-28 19:28:55', NULL),
(160, 122, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', '2020-10-28 19:48:09', '2020-10-28 19:48:09', NULL),
(161, 122, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', '2020-10-28 19:48:09', '2020-10-28 19:48:09', NULL),
(162, 123, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', '2020-10-28 21:38:07', '2020-10-28 21:38:07', NULL),
(163, 123, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', '2020-10-28 21:38:07', '2020-10-28 21:38:07', NULL),
(164, 123, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', '2020-10-28 21:38:07', '2020-10-28 21:38:07', NULL),
(165, 123, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', '2020-10-28 21:38:07', '2020-10-28 21:38:07', NULL),
(166, 123, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', '2020-10-28 21:38:07', '2020-10-28 21:38:07', NULL),
(167, 123, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', '2020-10-28 21:38:07', '2020-10-28 21:38:07', NULL),
(168, 124, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', '2020-10-28 21:39:37', '2020-10-28 21:39:37', NULL),
(169, 124, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', '2020-10-28 21:39:38', '2020-10-28 21:39:38', NULL),
(170, 124, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', '2020-10-28 21:39:38', '2020-10-28 21:39:38', NULL),
(171, 124, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', '2020-10-28 21:39:38', '2020-10-28 21:39:38', NULL),
(172, 125, 'perguln9rfwptrihli5ykomxfgfvlwszsmhbmzxntgke9sxbwv', '2020-10-28 21:51:07', '2020-10-28 21:51:07', NULL),
(173, 125, 'peraieoiywxwnzpgo5muwfvspy6kgeprinkdpyk13rovvilhxa', '2020-10-28 21:51:07', '2020-10-28 21:51:07', NULL),
(174, 126, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', '2020-10-28 21:52:12', '2020-10-28 21:52:12', NULL),
(175, 126, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', '2020-10-28 21:52:12', '2020-10-28 21:52:12', NULL),
(176, 127, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', '2020-10-28 21:53:40', '2020-10-28 21:53:40', NULL),
(177, 127, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', '2020-10-28 21:53:40', '2020-10-28 21:53:40', NULL),
(178, 128, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', '2020-10-28 21:57:13', '2020-10-28 21:57:13', NULL),
(179, 128, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', '2020-10-28 21:57:13', '2020-10-28 21:57:13', NULL),
(180, 129, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', '2020-10-28 21:58:32', '2020-10-28 21:58:32', NULL),
(181, 129, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', '2020-10-28 21:58:32', '2020-10-28 21:58:32', NULL),
(182, 130, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', '2020-10-28 22:02:05', '2020-10-28 22:02:05', NULL),
(183, 130, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', '2020-10-28 22:02:05', '2020-10-28 22:02:05', NULL),
(184, 130, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', '2020-10-28 22:02:05', '2020-10-28 22:02:05', NULL),
(185, 130, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', '2020-10-28 22:02:05', '2020-10-28 22:02:05', NULL),
(186, 131, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', '2020-10-28 22:03:33', '2020-10-28 22:03:33', NULL),
(187, 131, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', '2020-10-28 22:03:33', '2020-10-28 22:03:33', NULL),
(188, 131, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', '2020-10-28 22:03:33', '2020-10-28 22:03:33', NULL),
(189, 131, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', '2020-10-28 22:03:33', '2020-10-28 22:03:33', NULL),
(190, 131, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', '2020-10-28 22:03:33', '2020-10-28 22:03:33', NULL),
(191, 131, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', '2020-10-28 22:03:33', '2020-10-28 22:03:33', NULL),
(192, 132, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', '2020-10-28 22:08:14', '2020-10-28 22:08:14', NULL),
(193, 132, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', '2020-10-28 22:08:14', '2020-10-28 22:08:14', NULL),
(194, 133, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', '2020-10-28 22:08:23', '2020-10-28 22:08:23', NULL),
(195, 134, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', '2020-10-28 22:09:32', '2020-10-28 22:09:32', NULL),
(196, 134, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', '2020-10-28 22:09:32', '2020-10-28 22:09:32', NULL),
(198, 136, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', '2020-10-28 22:13:33', '2020-10-28 22:13:33', NULL),
(199, 136, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', '2020-10-28 22:13:34', '2020-10-28 22:13:34', NULL),
(200, 136, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', '2020-10-28 22:13:34', '2020-10-28 22:13:34', NULL),
(201, 136, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', '2020-10-28 22:13:34', '2020-10-28 22:13:34', NULL),
(202, 137, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', '2020-10-28 22:14:39', '2020-10-28 22:14:39', NULL),
(203, 137, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', '2020-10-28 22:14:39', '2020-10-28 22:14:39', NULL),
(204, 137, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', '2020-10-28 22:14:39', '2020-10-28 22:14:39', NULL),
(205, 137, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', '2020-10-28 22:14:39', '2020-10-28 22:14:39', NULL),
(206, 138, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', '2020-10-28 22:16:17', '2020-10-28 22:16:17', NULL),
(207, 138, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', '2020-10-28 22:16:17', '2020-10-28 22:16:17', NULL),
(208, 138, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', '2020-10-28 22:16:17', '2020-10-28 22:16:17', NULL),
(209, 138, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', '2020-10-28 22:16:17', '2020-10-28 22:16:17', NULL),
(210, 138, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', '2020-10-28 22:16:17', '2020-10-28 22:16:17', NULL),
(211, 138, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', '2020-10-28 22:16:17', '2020-10-28 22:16:17', NULL),
(212, 133, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', '2020-10-28 22:23:47', '2020-10-28 22:23:47', NULL),
(213, 139, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', '2020-10-28 22:24:40', '2020-10-28 22:24:40', NULL),
(214, 139, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', '2020-10-28 22:24:40', '2020-10-28 22:24:40', NULL),
(215, 139, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', '2020-10-28 22:24:40', '2020-10-28 22:24:40', NULL),
(216, 139, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', '2020-10-28 22:24:40', '2020-10-28 22:24:40', NULL),
(217, 140, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', '2020-10-28 22:25:43', '2020-10-28 22:25:43', NULL),
(218, 140, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', '2020-10-28 22:25:43', '2020-10-28 22:25:43', NULL),
(219, 141, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', '2020-10-28 22:26:33', '2020-10-28 22:26:33', NULL),
(220, 141, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', '2020-10-28 22:26:33', '2020-10-28 22:26:33', NULL),
(221, 141, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', '2020-10-28 22:26:33', '2020-10-28 22:26:33', NULL),
(222, 141, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', '2020-10-28 22:26:33', '2020-10-28 22:26:33', NULL),
(223, 142, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', '2020-10-28 22:27:44', '2020-10-28 22:27:44', NULL),
(224, 142, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', '2020-10-28 22:27:44', '2020-10-28 22:27:44', NULL),
(225, 143, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', '2020-10-28 22:29:32', '2020-10-28 22:29:32', NULL),
(226, 143, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', '2020-10-28 22:29:32', '2020-10-28 22:29:32', NULL),
(227, 144, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', '2020-10-28 22:31:12', '2020-10-28 22:31:12', NULL),
(228, 144, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', '2020-10-28 22:31:12', '2020-10-28 22:31:12', NULL),
(229, 145, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', '2020-10-28 22:31:47', '2020-10-28 22:31:47', NULL),
(230, 145, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', '2020-10-28 22:31:47', '2020-10-28 22:31:47', NULL),
(231, 145, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', '2020-10-28 22:31:47', '2020-10-28 22:31:47', NULL),
(232, 145, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', '2020-10-28 22:31:47', '2020-10-28 22:31:47', NULL),
(233, 146, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', '2020-10-28 22:32:43', '2020-10-28 22:32:43', NULL),
(234, 146, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', '2020-10-28 22:32:43', '2020-10-28 22:32:43', NULL),
(235, 147, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', '2020-10-28 22:33:21', '2020-10-28 22:33:21', NULL),
(236, 147, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', '2020-10-28 22:33:21', '2020-10-28 22:33:21', NULL),
(237, 148, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', '2020-10-28 22:36:45', '2020-10-28 22:36:45', NULL),
(238, 148, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', '2020-10-28 22:36:45', '2020-10-28 22:36:45', NULL),
(239, 149, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', '2020-10-28 22:37:46', '2020-10-28 22:37:46', NULL),
(240, 149, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', '2020-10-28 22:37:46', '2020-10-28 22:37:46', NULL),
(241, 150, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', '2020-10-28 22:37:56', '2020-10-28 22:37:56', NULL),
(242, 150, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', '2020-10-28 22:37:57', '2020-10-28 22:37:57', NULL),
(243, 150, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', '2020-10-28 22:37:57', '2020-10-28 22:37:57', NULL),
(244, 150, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', '2020-10-28 22:37:57', '2020-10-28 22:37:57', NULL),
(245, 150, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', '2020-10-28 22:37:57', '2020-10-28 22:37:57', NULL),
(246, 150, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', '2020-10-28 22:37:57', '2020-10-28 22:37:57', NULL),
(247, 151, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', '2020-10-28 22:40:10', '2020-10-28 22:40:10', NULL),
(248, 151, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', '2020-10-28 22:40:10', '2020-10-28 22:40:10', NULL),
(249, 152, 'perguln9rfwptrihli5ykomxfgfvlwszsmhbmzxntgke9sxbwv', '2020-10-28 22:41:18', '2020-10-28 22:41:18', NULL),
(250, 152, 'peraieoiywxwnzpgo5muwfvspy6kgeprinkdpyk13rovvilhxa', '2020-10-28 22:41:18', '2020-10-28 22:41:18', NULL),
(251, 153, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', '2020-10-28 22:42:01', '2020-10-28 22:42:01', NULL),
(252, 153, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', '2020-10-28 22:42:01', '2020-10-28 22:42:01', NULL),
(253, 154, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', '2020-10-28 22:43:00', '2020-10-28 22:43:00', NULL),
(254, 154, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', '2020-10-28 22:43:00', '2020-10-28 22:43:00', NULL),
(255, 155, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', '2020-10-28 22:49:25', '2020-10-28 22:49:25', NULL),
(256, 155, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', '2020-10-28 22:49:25', '2020-10-28 22:49:25', NULL),
(257, 155, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', '2020-10-28 22:49:25', '2020-10-28 22:49:25', NULL),
(258, 155, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', '2020-10-28 22:49:25', '2020-10-28 22:49:25', NULL),
(259, 156, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', '2020-10-28 22:53:54', '2020-10-28 22:53:54', NULL),
(260, 156, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', '2020-10-28 22:53:54', '2020-10-28 22:53:54', NULL),
(261, 156, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', '2020-10-28 22:53:54', '2020-10-28 22:53:54', NULL),
(262, 156, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', '2020-10-28 22:53:55', '2020-10-28 22:53:55', NULL),
(263, 157, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', '2020-10-28 22:55:17', '2020-10-28 22:55:17', NULL),
(264, 157, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', '2020-10-28 22:55:17', '2020-10-28 22:55:17', NULL),
(265, 157, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', '2020-10-28 22:55:17', '2020-10-28 22:55:17', NULL),
(266, 157, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', '2020-10-28 22:55:17', '2020-10-28 22:55:17', NULL),
(267, 158, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', '2020-10-28 22:56:14', '2020-10-28 22:56:14', NULL),
(268, 158, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', '2020-10-28 22:56:14', '2020-10-28 22:56:14', NULL),
(269, 158, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', '2020-10-28 22:56:14', '2020-10-28 22:56:14', NULL),
(270, 158, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', '2020-10-28 22:56:14', '2020-10-28 22:56:14', NULL),
(271, 159, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', '2020-10-28 22:59:45', '2020-10-28 22:59:45', NULL),
(272, 159, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', '2020-10-28 22:59:45', '2020-10-28 22:59:45', NULL),
(273, 160, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', '2020-10-28 23:01:35', '2020-10-28 23:01:35', NULL),
(274, 160, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', '2020-10-28 23:01:36', '2020-10-28 23:01:36', NULL),
(275, 161, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', '2020-10-28 23:03:27', '2020-10-28 23:03:27', NULL),
(276, 161, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', '2020-10-28 23:03:28', '2020-10-28 23:03:28', NULL),
(277, 162, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', '2020-10-28 23:04:53', '2020-10-28 23:04:53', NULL),
(278, 162, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', '2020-10-28 23:04:53', '2020-10-28 23:04:53', NULL),
(279, 163, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', '2020-10-28 23:06:08', '2020-10-28 23:06:08', NULL),
(280, 163, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', '2020-10-28 23:06:08', '2020-10-28 23:06:08', NULL),
(281, 164, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', '2020-10-28 23:11:16', '2020-10-28 23:11:16', NULL),
(282, 164, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', '2020-10-28 23:11:16', '2020-10-28 23:11:16', NULL),
(283, 165, 'perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', '2020-10-28 23:13:57', '2020-10-28 23:13:57', NULL),
(284, 165, 'perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', '2020-10-28 23:13:57', '2020-10-28 23:13:57', NULL),
(285, 165, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', '2020-10-28 23:13:58', '2020-10-28 23:13:58', NULL),
(286, 165, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', '2020-10-28 23:13:58', '2020-10-28 23:13:58', NULL),
(287, 166, 'perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', '2020-10-28 23:18:23', '2020-10-28 23:18:23', NULL),
(288, 166, 'perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', '2020-10-28 23:18:23', '2020-10-28 23:18:23', NULL),
(289, 166, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', '2020-10-28 23:18:23', '2020-10-28 23:18:23', NULL),
(290, 166, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', '2020-10-28 23:18:23', '2020-10-28 23:18:23', NULL),
(291, 167, 'perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', '2020-10-28 23:19:24', '2020-10-28 23:19:24', NULL),
(292, 167, 'perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', '2020-10-28 23:19:25', '2020-10-28 23:19:25', NULL),
(293, 167, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', '2020-10-28 23:19:25', '2020-10-28 23:19:25', NULL),
(294, 167, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', '2020-10-28 23:19:25', '2020-10-28 23:19:25', NULL),
(295, 168, 'perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', '2020-10-28 23:28:29', '2020-10-28 23:28:29', NULL),
(296, 168, 'perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', '2020-10-28 23:28:29', '2020-10-28 23:28:29', NULL),
(297, 168, 'perwdb6dbgtzzdlkrxtodtbkh7sma8zsqqriz0e4mosltk4yah', '2020-10-28 23:28:30', '2020-10-28 23:28:30', NULL),
(298, 168, 'pergo4bxowkxg3jarq5uesaszaxocqa4dq9abhjlwb6aqhf5bj', '2020-10-28 23:28:30', '2020-10-28 23:28:30', NULL),
(299, 169, 'perwru0avsqkhwsjdekhptqtybblzyryglawm46bg8vyiosdcr', '2020-10-28 23:34:50', '2020-10-28 23:34:50', NULL),
(300, 169, 'perrztidsfedzyavzys46kgk4qclxlvwsf4sen9mwn9dun9ega', '2020-10-28 23:34:50', '2020-10-28 23:34:50', NULL),
(301, 170, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', '2020-10-28 23:37:34', '2020-10-28 23:37:34', NULL),
(302, 170, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', '2020-10-28 23:37:35', '2020-10-28 23:37:35', NULL),
(303, 171, 'peryiwupw8b6dz60yx4t2r3m9j51cnjjzfdlovji3lmulbcsdn', '2020-10-28 23:39:57', '2020-10-28 23:39:57', NULL),
(304, 171, 'permktdusufrpzwkuzionb7w5zimw1rgdio2zugqd1j4scfcbf', '2020-10-28 23:39:57', '2020-10-28 23:39:57', NULL),
(305, 172, 'periapqjap3enpimewtoo5bf55rseppt2zcnmrzxq415v3xv0t', '2020-10-29 13:25:21', '2020-10-29 13:25:21', NULL),
(306, 172, 'peryxczxeltu6ez5qpgiqrxux0shc4fsx2srh9ybvhoytlglqg', '2020-10-29 13:25:21', '2020-10-29 13:25:21', NULL),
(307, 172, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', '2020-10-29 13:25:21', '2020-10-29 13:25:21', NULL),
(308, 172, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', '2020-10-29 13:25:22', '2020-10-29 13:25:22', NULL),
(309, 173, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', '2020-10-29 13:26:11', '2020-10-29 13:26:11', NULL),
(310, 173, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', '2020-10-29 13:26:11', '2020-10-29 13:26:11', NULL),
(311, 173, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', '2020-10-29 13:26:11', '2020-10-29 13:26:11', NULL),
(312, 173, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', '2020-10-29 13:26:11', '2020-10-29 13:26:11', NULL),
(313, 173, 'per6gfbcklm7ukaocptsz5pfc2mah96ujz03kflrjdvftyxzic', '2020-10-29 13:26:11', '2020-10-29 13:26:11', NULL),
(314, 173, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', '2020-10-29 13:26:11', '2020-10-29 13:26:11', NULL),
(315, 174, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', '2020-10-29 13:30:17', '2020-10-29 13:30:17', NULL),
(316, 174, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', '2020-10-29 13:30:17', '2020-10-29 13:30:17', NULL),
(317, 174, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', '2020-10-29 13:30:17', '2020-10-29 13:30:17', NULL),
(318, 174, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', '2020-10-29 13:30:17', '2020-10-29 13:30:17', NULL),
(319, 175, 'perqusjkdubtbz88xdrgcj9vtj7ql3bpe8sq1vewqjowrctuue', '2020-10-29 13:34:38', '2020-10-29 13:34:38', NULL),
(320, 175, 'pertmwmutwcthjv6be4dhup7iiyqx8yoaqqt6d2sazwmm8bebd', '2020-10-29 13:34:38', '2020-10-29 13:34:38', NULL),
(321, 176, 'perg9rp46juqgkdpgshpujx5das61d74mm6yrya6jrwxh5tpqy', '2020-10-29 13:35:59', '2020-10-29 13:35:59', NULL),
(322, 176, 'perzd47x9sdine3wuuuez92ki1lbh8z9sej7nkxl9iy9yb42ry', '2020-10-29 13:35:59', '2020-10-29 13:35:59', NULL),
(323, 177, 'perwru0avsqkhwsjdekhptqtybblzyryglawm46bg8vyiosdcr', '2020-10-29 13:45:30', '2020-10-29 13:45:30', NULL),
(324, 177, 'perrztidsfedzyavzys46kgk4qclxlvwsf4sen9mwn9dun9ega', '2020-10-29 13:45:30', '2020-10-29 13:45:30', NULL),
(325, 178, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', '2020-10-29 13:52:15', '2020-10-29 13:52:15', NULL),
(326, 178, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', '2020-10-29 13:52:15', '2020-10-29 13:52:15', NULL),
(327, 178, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', '2020-10-29 13:52:16', '2020-10-29 13:52:16', NULL),
(328, 178, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', '2020-10-29 13:52:16', '2020-10-29 13:52:16', NULL),
(329, 179, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', '2020-10-29 14:03:11', '2020-10-29 14:03:11', NULL),
(330, 179, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', '2020-10-29 14:03:11', '2020-10-29 14:03:11', NULL),
(331, 180, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', '2020-10-29 14:47:09', '2020-10-29 14:47:09', NULL),
(332, 180, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', '2020-10-29 14:47:09', '2020-10-29 14:47:09', NULL),
(333, 181, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', '2020-10-29 14:50:48', '2020-10-29 14:50:48', NULL),
(334, 181, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', '2020-10-29 14:50:48', '2020-10-29 14:50:48', NULL),
(335, 182, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', '2020-10-29 14:54:51', '2020-10-29 14:54:51', NULL),
(336, 182, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', '2020-10-29 14:54:51', '2020-10-29 14:54:51', NULL),
(337, 183, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', '2020-10-29 15:08:40', '2020-10-29 15:08:40', NULL),
(338, 183, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', '2020-10-29 15:08:40', '2020-10-29 15:08:40', NULL),
(339, 183, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', '2020-10-29 15:08:40', '2020-10-29 15:08:40', NULL),
(340, 183, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', '2020-10-29 15:08:40', '2020-10-29 15:08:40', NULL),
(341, 184, 'per9spmpxdhietmxau6veyqfy7bpqkshhvfcwshmnz6jemwh2l', '2020-10-29 15:10:38', '2020-10-29 15:10:38', NULL),
(342, 184, 'perl2plctp9wxyibpz7w9msgwpnkk5uzvylwwehnbrjovudgk2', '2020-10-29 15:10:38', '2020-10-29 15:10:38', NULL),
(343, 185, 'peraieoiywxwnzpgo5muwfvspy6kgeprinkdpyk13rovvilhxa', '2020-10-29 16:49:35', '2020-10-29 16:49:35', NULL),
(344, 185, 'pervvgumeeplwzxo1tm7g1zac33xm42mkx4ri1o6rwzkmaks61', '2020-10-29 16:49:35', '2020-10-29 16:49:35', NULL),
(345, 185, 'perodgrl5znvozdyay02uldqaywcfsduqq1lql5vhbrupj9ndu', '2020-10-29 16:49:35', '2020-10-29 16:49:35', NULL),
(346, 185, 'perxmu1lji6h2kzmcpqdiq9swpoihhpy6p9fbsu2ceveejhcee', '2020-10-29 16:49:35', '2020-10-29 16:49:35', NULL),
(347, 185, 'perb3s07xkyxj30ivxtqmazrovthu9omqtc4opadr1s8418xgd', '2020-10-29 16:49:35', '2020-10-29 16:49:35', NULL),
(348, 186, 'perklfny4uqzqeegybfbfrbc5vyqswnz5azd1pd9eg1rcjparo', '2020-10-29 16:59:21', '2020-10-29 16:59:21', NULL),
(349, 186, 'perwl3ds7klmwfx0fyid69vjwbtmhgyelx0y4vox3wpkamccti', '2020-10-29 16:59:21', '2020-10-29 16:59:21', NULL),
(350, 186, 'perfrmwaawpkarvd42zu13zv776yv6ik2p0ddrqnawhbqew6rg', '2020-10-29 16:59:21', '2020-10-29 16:59:21', NULL),
(351, 186, 'pertohzyl5chsyngidkp36bwrdw3dykh2h6r2qcadtxet90uyy', '2020-10-29 16:59:21', '2020-10-29 16:59:21', NULL),
(352, 187, 'perfungp26tzekxafd83gbhozqj5knhxv6pqedhzejlielk4bs', '2020-10-29 17:22:01', '2020-10-29 17:22:01', NULL),
(353, 187, 'perwamvqd1nhyppvrowhcr2yoh2ijd30mcakllo495gjuq9jhs', '2020-10-29 17:22:01', '2020-10-29 17:22:01', NULL),
(354, 188, 'perd5hvkkkl2zgmsoefbpnepbs7xwrromwlszsdifheesdgcxu', '2020-10-29 17:27:40', '2020-10-29 17:27:40', NULL),
(355, 188, 'per2khptvv9pdpae7dj02jqcwqyul3njgqxdhojdj2wlrs3k80', '2020-10-29 17:27:40', '2020-10-29 17:27:40', NULL),
(356, 189, 'perymq7kpd8jvoqtv6sevysv5cjferskob4gw4affbc5rwcq4j', '2020-10-29 20:58:09', '2020-10-29 20:58:09', NULL),
(357, 190, 'peroaq0ukjtvznmgcboptwzseyvh9dc6jd6hk1kxlvnlvvajdp', '2020-10-29 21:06:49', '2020-10-29 21:06:49', NULL),
(358, 191, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', '2020-10-29 22:26:28', '2020-10-29 22:26:28', NULL),
(359, 191, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', '2020-10-29 22:26:28', '2020-10-29 22:26:28', NULL),
(360, 192, 'perrrtmvplygmortlxbqqwrjd1inp6ehoac6xcxp41wqgbwfmm', '2020-10-29 22:29:41', '2020-10-29 22:29:41', NULL),
(361, 192, 'persod9ib3ray4ccprkuqlao1tzczjphzbha7wvukdfqhn5w2t', '2020-10-29 22:29:41', '2020-10-29 22:29:41', NULL),
(362, 193, 'perjxb4vhr6lftbzi5njwftqakrmvslbmwmx3wd7sgorgl76fm', '2020-10-29 22:35:23', '2020-10-29 22:35:23', NULL),
(363, 193, 'per2wuhiwglniv3gsuy5mmmqfdtr5m21pciomiet59ub8wmuvn', '2020-10-29 22:35:24', '2020-10-29 22:35:24', NULL),
(364, 194, 'perbsdwmnngxmhq7osgyvz6vq65enjxpuyv9wvsko9z56nkr2y', '2020-10-29 22:53:57', '2020-10-29 22:53:57', NULL),
(365, 194, 'perebeonyhwkvpznlbo351lgdou2ihqhkkbwgvhwyrlbynfzfa', '2020-10-29 22:53:57', '2020-10-29 22:53:57', NULL),
(366, 195, 'pervkkzxsf3svkrzkqyv1q9oavcoldjsqzfxnqi81khwe8gkmc', '2020-10-29 22:55:47', '2020-10-29 22:55:47', NULL),
(367, 195, 'pereilqrku67yscd359b3zt9rvu7xqof5vmrcc5c5i7whn9tur', '2020-10-29 22:55:47', '2020-10-29 22:55:47', NULL),
(368, 196, 'perax1xcp2f15we1s1p9vxoniapbxuehsosxas4rcezrjsqnyq', '2020-10-29 22:59:46', '2020-10-29 22:59:46', NULL),
(369, 196, 'perigqkt5bto9t6ybyvrskhmqcyqbfyr21v5zzqtb815tgw6nq', '2020-10-29 22:59:46', '2020-10-29 22:59:46', NULL),
(370, 197, 'perxgm07fp8w79pzbd27dypf2opuq8n7hwxapmrw0pkhjiyylo', '2020-10-29 23:01:59', '2020-10-29 23:01:59', NULL),
(371, 197, 'perxzid6ugomj5achoopfjiy55l3m53sha8kejj5ekrv6ogtjd', '2020-10-29 23:01:59', '2020-10-29 23:01:59', NULL),
(372, 197, 'perkz90gdu8rzbeaoevrfpqiobc1bzn9z7zgtl5usekeilsruh', '2020-10-29 23:01:59', '2020-10-29 23:01:59', NULL),
(373, 197, 'perm7ycr7wamhumjcdtoyhfnjmem0ga98f4tvsb7lm8mn47w5g', '2020-10-29 23:01:59', '2020-10-29 23:01:59', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `schools`
--

CREATE TABLE `schools` (
  `school_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `school_type` enum('COLLEGE','HIGH SCHOOL','UNIVERSITY') DEFAULT 'HIGH SCHOOL',
  `description` text,
  `class_start_time` time NOT NULL,
  `class_end_time` time NOT NULL,
  `class_duration` int(11) NOT NULL,
  `first_break_duration` int(11) NOT NULL,
  `first_break_start_time` time DEFAULT NULL,
  `second_break_duration` int(11) NOT NULL DEFAULT '0',
  `second_break_start_time` time DEFAULT NULL,
  `third_break_duration` int(11) NOT NULL DEFAULT '0',
  `third_break_start_time` time DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `schools`
--

INSERT INTO `schools` (`school_id`, `name`, `file`, `school_type`, `description`, `class_start_time`, `class_end_time`, `class_duration`, `first_break_duration`, `first_break_start_time`, `second_break_duration`, `second_break_start_time`, `third_break_duration`, `third_break_start_time`, `created_at`, `updated_at`, `deleted_at`) VALUES
('schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 'Atlantic Bilingual University', '/storage/images/schools/1602501045.jpg', 'UNIVERSITY', 'The very first bilingual professional university institution in Cameroon', '07:00:00', '22:00:00', 60, 60, '12:00:00', 0, NULL, 0, NULL, '2020-10-12 16:05:47', '2020-10-28 06:08:29', NULL),
('schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 'sainte cecile', '/storage/images/schools/1601357194.jpg', 'HIGH SCHOOL', 'college catholique polyvalent', '07:30:00', '15:50:00', 50, 15, NULL, 0, NULL, 0, NULL, '2020-07-18 03:10:14', '2020-09-29 12:26:34', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `students`
--

CREATE TABLE `students` (
  `student_id` varchar(50) NOT NULL,
  `serial` varchar(50) NOT NULL COMMENT 'student unique identifier number',
  `fullname` varchar(250) NOT NULL,
  `dateofbirth` date NOT NULL,
  `placeofbirth` varchar(250) NOT NULL,
  `sex` enum('Male','Female') NOT NULL DEFAULT 'Male',
  `email` varchar(100) DEFAULT NULL COMMENT 'student''s mail address ',
  `file` varchar(255) DEFAULT '/storage/images/students/default.png' COMMENT 'path on which file will be stored',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `telephone` varchar(50) NOT NULL,
  `first_registered_school_id` varchar(50) NOT NULL COMMENT 'school in which student would registered, note that each student register only one time time',
  `current_school_id` varchar(50) DEFAULT NULL,
  `mobilephone` varchar(50) DEFAULT NULL,
  `tutormobilephone_1` varchar(50) DEFAULT NULL,
  `tutormobilephone_2` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `students`
--

INSERT INTO `students` (`student_id`, `serial`, `fullname`, `dateofbirth`, `placeofbirth`, `sex`, `email`, `file`, `user_id`, `telephone`, `first_registered_school_id`, `current_school_id`, `mobilephone`, `tutormobilephone_1`, `tutormobilephone_2`, `created_at`, `updated_at`, `deleted_at`) VALUES
('stu0fmamc1umuxuqrdfcsyegrvjgo2z04khqslzgwn63krehpr', '20ADNNOC1R', 'JONATHAN KENT', '2020-09-10', 'SmallVille', 'Male', 'totem@toto.com', NULL, 30, '555', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '555', NULL, NULL, '2020-09-28 17:34:48', '2020-10-23 01:16:19', NULL),
('stu6jl4sr2ihbk0fcdjkp5wsbuk1eylfrxaztfazxoqsnpvhz6', '20ATP_H2KF', 'NKODO MBE JEAN YVES', '2020-09-10', 'bonaberi', 'Male', 'nkodomjy@gmail.com', '/storage/images/students/1603429714.jpg', 4, '+237 694 815 447', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '+237694815447', '+237 675 881 377', '', '2020-09-26 04:22:33', '2020-10-23 05:08:34', NULL),
('stu6tgmqmvnr6kgxku8o1pljrmn0p5nnacid0qtjls7fyqyfeg', '20ALKAJV@Y', 'JONATHAN KENT', '2020-09-10', 'SmallVille', 'Male', 'toti@toto.com', NULL, 23, '555', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '555', NULL, NULL, '2020-09-28 16:55:59', '2020-10-23 01:16:19', NULL),
('stuboshim4heeyrdzis4zygujofqiwo6xlpwltlxp5jypg2zhy', '20AGGLFCJJ', 'DIKA ROMEO', '2020-09-09', 'london', 'Male', 'gdgd@hdhdh.com', NULL, 33, '222', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '555', NULL, NULL, '2020-09-28 18:22:21', '2020-10-23 01:16:19', NULL),
('stuejyz3yqshl746eo2w3juhdauh2ngxbljsap07vsnzqnrrgr', '19AHY0@YN@', 'SMITH JOHN', '1996-03-30', 'douala', 'Male', 'sianipatrick@yahoo.fr', NULL, 5, '+237677147199', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '+237677147199', NULL, NULL, '2020-10-19 13:42:41', '2020-10-23 01:16:19', NULL),
('sturmoryb7wsi4k1vhtclv5sodcvdzclepktb573jmbseeqcyq', '20BPE@WYHI', 'LANA LANG', '2020-10-14', 'SmallVille', 'Male', 'lana@lang.sma', '/storage/images/students/1603416284.jpg', 8, '0000225', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '2222255', NULL, NULL, '2020-10-21 21:41:39', '2020-10-23 01:24:44', NULL),
('stuuoqrh9ncddr8an5c82ayoykx7k2kzq2cloi6xufm5ashiur', '20A@S3HBZ8', 'JEAN YVES TEST', '2020-10-06', 'kumba', 'Male', 'nkodomjy@cbwonder.com', NULL, 3, '55555556', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '+23769481544', NULL, NULL, '2020-10-14 08:00:33', '2020-10-23 01:16:19', NULL),
('stuybcny7t7uzhek5tqfprwopakn2ten4dqhjyheinlse5cael', '20A997680E', 'JONATHAN KENT', '2020-09-10', 'SmallVille', 'Male', 'totem1@toto.com', NULL, 32, '555', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '555', NULL, NULL, '2020-09-28 17:38:12', '2020-10-23 01:16:19', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sub_events`
--

CREATE TABLE `sub_events` (
  `sub_event_id` int(11) NOT NULL,
  `sub_event_content` varchar(255) DEFAULT NULL,
  `admission_fees` float DEFAULT NULL COMMENT 'we dont care of it',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sub_events`
--

INSERT INTO `sub_events` (`sub_event_id`, `sub_event_content`, `admission_fees`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'First Term', 0, '2020-08-19 12:50:19', '2020-09-19 16:09:18', NULL),
(2, 'Second Term', 0, '2020-08-19 12:50:36', '2020-09-19 16:09:26', NULL),
(3, 'Third Term', 0, '2020-08-19 12:50:49', '2020-09-19 16:10:22', NULL),
(4, 'First Semester', 0, '2020-08-19 12:51:01', '2020-08-19 12:51:01', NULL),
(5, 'Seconde Semester', 0, '2020-08-19 12:51:15', '2020-08-19 12:51:15', NULL),
(6, 'Third Semester', 0, '2020-08-19 12:51:31', '2020-08-19 12:51:31', NULL),
(7, 'Fourth Semester', 0, '2020-08-19 12:51:45', '2020-08-19 12:51:45', NULL),
(8, 'First Sequence', 0, '2020-08-19 19:01:03', '2020-09-19 16:10:30', NULL),
(9, 'Second Sequence', 0, '2020-08-19 19:01:14', '2020-09-19 16:10:33', NULL),
(10, 'Third Sequence', 0, '2020-08-19 19:01:29', '2020-09-19 16:10:37', NULL),
(11, 'Fourth Sequence', 0, '2020-08-19 19:01:42', '2020-09-19 16:10:40', NULL),
(12, 'Fifth Sequence', 0, '2020-08-19 19:01:57', '2020-09-19 16:10:46', NULL),
(13, 'Sixth Sequence', 0, '2020-08-19 19:02:19', '2020-09-19 16:10:49', NULL),
(14, 'Registration', 0, '2020-09-19 21:59:11', '2020-09-19 21:59:11', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `teachered_channel`
--

CREATE TABLE `teachered_channel` (
  `teachered_id` int(11) NOT NULL,
  `teaching_id` int(11) NOT NULL DEFAULT '0',
  `student_id` varchar(50) NOT NULL,
  `was_he_present` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `teachered_class`
--

CREATE TABLE `teachered_class` (
  `teachered_id` int(11) NOT NULL,
  `teaching_id` int(11) NOT NULL DEFAULT '0',
  `student_id` varchar(50) NOT NULL DEFAULT '1',
  `was_he_present` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `teachings`
--

CREATE TABLE `teachings` (
  `teaching_id` int(11) NOT NULL,
  `lecturer_id` varchar(50) NOT NULL,
  `subject_id` varchar(50) NOT NULL,
  `field_id` varchar(50) NOT NULL COMMENT 'class or channel id related to school',
  `school_id` varchar(50) NOT NULL COMMENT 'school  identifier',
  `class_date` datetime DEFAULT NULL COMMENT 'class_date in case extratime',
  `extratime_started_at` time DEFAULT NULL COMMENT 'begin of extratime, when lecturer schedules a class extraordinary',
  `extratime_ended_at` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `teaching_periods`
--

CREATE TABLE `teaching_periods` (
  `teaches_period_id` int(11) NOT NULL,
  `teaching_id` int(11) NOT NULL DEFAULT '0',
  `period_id` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_admin` enum('0','1') COLLATE utf8_unicode_ci DEFAULT '0',
  `school_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_token` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `role_id`, `is_admin`, `school_id`, `password`, `remember_token`, `api_token`, `created_at`, `updated_at`) VALUES
(1, 'John Papa', 'name@name.com', NULL, '1', '0', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '$2y$10$Zcgh0zaq7GWm4oK7zyjUDelupqDdCRtqzlrYtZ0h8VaOuiLWt5DIy', NULL, NULL, '2020-10-13 10:03:35', '2020-10-13 10:03:35'),
(2, 'Charles Atangana', 'kopo@kopo.com', NULL, '1', '0', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '$2y$10$7UxIZx0jChGSk3./jvvKAu83yCkl8X2jiNqXjATy8u32.c2RNIFYu', NULL, NULL, '2020-10-13 10:25:38', '2020-10-13 10:25:38'),
(3, 'jean yves test', '20A@S3HBZ8@3bii.com', NULL, '5', '0', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '$2y$10$Tn2BQQEgpMPKsNpGVRssV.7bbXfrPZEiWly3qz9bNAFunEBKpKkky', NULL, NULL, '2020-10-14 08:00:33', '2020-10-14 08:00:33'),
(5, 'smith john', '19AHY0@YN@@3bii.com', NULL, '5', '0', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '$2y$10$Dn7bqvTQ7.rdUYoUmhUBfevztJfmO9ZNsPXdup.03DW42w20xH7PG', NULL, NULL, '2020-10-19 13:42:41', '2020-10-19 13:42:41'),
(6, 'Arno Dongmo', 'arnodongmo@gmail.com', NULL, '1', '0', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '$2y$10$CkcX2ZwJDldIuxxkHyMrn.pkIrcU5NVQyhpQzXRKfMwb/J4g/2S12', NULL, NULL, '2020-10-20 12:24:47', '2020-10-20 12:24:47'),
(7, 'Arno Dongmo', 'dongmo-epfa@gmail.com', NULL, '1', '0', 'schzkp4khxbsrlyap8eud06xg6ippznou3m4tghseif8yn0yvh', '$2y$10$Smu0s0WH/6EmzXjLhPatC.tgkMq8K2ZHhxfkl.4PkQh1DS4GHZime', NULL, NULL, '2020-10-20 12:29:56', '2020-10-20 12:29:56'),
(8, 'Lana Lang', '20BPE@WYHI@3bii.com', NULL, '5', '0', 'schak7x5wtrk9xrttbhklhnn0zlmou3ecrpr16t8jbcol6o5sh', '$2y$10$eYlvqIu5tBaWO7EnnYI6QeYsLjN9LzvOhaBEoOv5WKimuR3YK9tQa', NULL, NULL, '2020-10-21 21:41:39', '2020-10-21 21:41:39');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`building_id`),
  ADD UNIQUE KEY `building_name_school_id` (`building_name`,`school_id`),
  ADD KEY `FK__schools` (`school_id`);

--
-- Index pour la table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`channel_id`);

--
-- Index pour la table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`),
  ADD UNIQUE KEY `class_name_school_id` (`class_name`,`school_id`),
  ADD KEY `FK_classes_schools` (`school_id`);

--
-- Index pour la table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`classroom_id`),
  ADD UNIQUE KEY `classroom_name_school_id` (`classroom_name`,`school_id`),
  ADD KEY `FK_classrooms_buildings` (`building_id`),
  ADD KEY `FK_classrooms_schools` (`school_id`);

--
-- Index pour la table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD UNIQUE KEY `course_code_school_id` (`course_code`,`school_id`),
  ADD KEY `FK_courses_schools` (`school_id`);

--
-- Index pour la table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`day_id`);

--
-- Index pour la table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`),
  ADD UNIQUE KEY `department_name_school_id` (`department_name`,`school_id`),
  ADD KEY `FK_departments_schools` (`school_id`),
  ADD KEY `FK_departments_faculties` (`faculty_id`);

--
-- Index pour la table `department_channels`
--
ALTER TABLE `department_channels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `department_id_channel_id` (`department_id`,`channel_id`),
  ADD KEY `FK__channels` (`channel_id`);

--
-- Index pour la table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `FK_events_schools` (`school_id`);

--
-- Index pour la table `event_sub_events`
--
ALTER TABLE `event_sub_events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `event_id_sub_event_id` (`event_id`,`sub_event_id`),
  ADD KEY `FK__sub_events` (`sub_event_id`);

--
-- Index pour la table `examinations`
--
ALTER TABLE `examinations`
  ADD PRIMARY KEY (`examination_id`),
  ADD KEY `FK_examinations_profiles` (`lecturer_id`),
  ADD KEY `FK_examinations_courses` (`course_id`),
  ADD KEY `FK_examinations_sub_events` (`sub_event_id`),
  ADD KEY `FK_examinations_registrations` (`registration_id`);

--
-- Index pour la table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Index pour la table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`grade_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Index pour la table `payment_orders`
--
ALTER TABLE `payment_orders`
  ADD PRIMARY KEY (`payment_orders_id`),
  ADD KEY `FK_payment_orders_registrations` (`registration_id`);

--
-- Index pour la table `periods`
--
ALTER TABLE `periods`
  ADD PRIMARY KEY (`period_id`),
  ADD KEY `FK_periods_schools` (`school_id`),
  ADD KEY `FK_periods_days` (`day`);

--
-- Index pour la table `period_class`
--
ALTER TABLE `period_class`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `period_id_classroom_id` (`period_id`,`class_id`),
  ADD KEY `FK_period_class_classes` (`class_id`);

--
-- Index pour la table `period_classrooms`
--
ALTER TABLE `period_classrooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `period_id_classroom_id` (`period_id`,`classroom_id`),
  ADD KEY `FK_period_classrooms_classrooms` (`classroom_id`);

--
-- Index pour la table `period_courses`
--
ALTER TABLE `period_courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `scheduled_class_period` (`scheduled_class_period`,`period_id`,`course_id`);

--
-- Index pour la table `period_courses_up`
--
ALTER TABLE `period_courses_up`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `period_id_classroom_id` (`period_id`,`course_id`),
  ADD KEY `FK_period_courses_courses` (`course_id`);

--
-- Index pour la table `period_lecturers`
--
ALTER TABLE `period_lecturers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `period_id_classroom_id` (`period_id`,`lecturer_id`),
  ADD KEY `FK_period_lecturer_lecturers` (`lecturer_id`);

--
-- Index pour la table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`profile_id`),
  ADD KEY `FK_lecturers_users` (`user_id`),
  ADD KEY `FK_profiles_roles` (`role`),
  ADD KEY `FK_profiles_schools` (`school_id`);

--
-- Index pour la table `profiles_roles`
--
ALTER TABLE `profiles_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_users_roles_roles` (`role_id`),
  ADD KEY `FK_users_roles_users` (`profile_id`);

--
-- Index pour la table `registrations_channel`
--
ALTER TABLE `registrations_channel`
  ADD PRIMARY KEY (`registration_id`),
  ADD UNIQUE KEY `class_id_channel_id_event_id_student_id` (`channel_id`,`event_id`,`student_id`),
  ADD KEY `FK_registrations_channels` (`channel_id`),
  ADD KEY `FK_registrations_events` (`event_id`),
  ADD KEY `FK_registrations_students` (`student_id`);

--
-- Index pour la table `registrations_class`
--
ALTER TABLE `registrations_class`
  ADD PRIMARY KEY (`registration_id`),
  ADD UNIQUE KEY `class_id_channel_id_event_id_student_id` (`class_id`,`event_id`,`student_id`),
  ADD KEY `FK_registrations_events` (`event_id`),
  ADD KEY `FK_registrations_students` (`student_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `scheduled_class`
--
ALTER TABLE `scheduled_class`
  ADD PRIMARY KEY (`scheduled_class_id`),
  ADD UNIQUE KEY `class_id_classroom_id_profile_id_course_id` (`class_id`,`classroom_id`,`profile_id`,`course_id`),
  ADD KEY `FK_scheduled_class_classrooms` (`classroom_id`),
  ADD KEY `FK_scheduled_class_profiles` (`profile_id`),
  ADD KEY `FK_scheduled_class_courses` (`course_id`);

--
-- Index pour la table `scheduled_class_periods`
--
ALTER TABLE `scheduled_class_periods`
  ADD PRIMARY KEY (`scheduled_class_period_id`),
  ADD UNIQUE KEY `scheduled_class_id_period_id` (`scheduled_class_id`,`period_id`),
  ADD KEY `FK_scheduled_class_by_period_periods` (`period_id`);

--
-- Index pour la table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`school_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `serial` (`serial`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `FK_students_users` (`user_id`),
  ADD KEY `FK_students_schools` (`current_school_id`);

--
-- Index pour la table `sub_events`
--
ALTER TABLE `sub_events`
  ADD PRIMARY KEY (`sub_event_id`);

--
-- Index pour la table `teachered_channel`
--
ALTER TABLE `teachered_channel`
  ADD PRIMARY KEY (`teachered_id`),
  ADD KEY `FK__teaching` (`teaching_id`),
  ADD KEY `FK_teachered_channel_students` (`student_id`);

--
-- Index pour la table `teachered_class`
--
ALTER TABLE `teachered_class`
  ADD PRIMARY KEY (`teachered_id`),
  ADD KEY `FK__teaching` (`teaching_id`),
  ADD KEY `FK_teachered_class_students` (`student_id`);

--
-- Index pour la table `teachings`
--
ALTER TABLE `teachings`
  ADD PRIMARY KEY (`teaching_id`),
  ADD KEY `FK_teaches_profiles` (`lecturer_id`),
  ADD KEY `FK_teachings_courses` (`subject_id`),
  ADD KEY `FK_teachings_schools` (`school_id`);

--
-- Index pour la table `teaching_periods`
--
ALTER TABLE `teaching_periods`
  ADD PRIMARY KEY (`teaches_period_id`),
  ADD UNIQUE KEY `teach_id_period_id` (`teaching_id`,`period_id`),
  ADD KEY `FK__periods` (`period_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `days`
--
ALTER TABLE `days`
  MODIFY `day_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `department_channels`
--
ALTER TABLE `department_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `event_sub_events`
--
ALTER TABLE `event_sub_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT pour la table `examinations`
--
ALTER TABLE `examinations`
  MODIFY `examination_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `grades`
--
ALTER TABLE `grades`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `payment_orders`
--
ALTER TABLE `payment_orders`
  MODIFY `payment_orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `period_class`
--
ALTER TABLE `period_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;

--
-- AUTO_INCREMENT pour la table `period_classrooms`
--
ALTER TABLE `period_classrooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;

--
-- AUTO_INCREMENT pour la table `period_courses`
--
ALTER TABLE `period_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=573;

--
-- AUTO_INCREMENT pour la table `period_courses_up`
--
ALTER TABLE `period_courses_up`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT pour la table `period_lecturers`
--
ALTER TABLE `period_lecturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;

--
-- AUTO_INCREMENT pour la table `profiles_roles`
--
ALTER TABLE `profiles_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `registrations_channel`
--
ALTER TABLE `registrations_channel`
  MODIFY `registration_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `registrations_class`
--
ALTER TABLE `registrations_class`
  MODIFY `registration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `scheduled_class`
--
ALTER TABLE `scheduled_class`
  MODIFY `scheduled_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT pour la table `scheduled_class_periods`
--
ALTER TABLE `scheduled_class_periods`
  MODIFY `scheduled_class_period_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=374;

--
-- AUTO_INCREMENT pour la table `sub_events`
--
ALTER TABLE `sub_events`
  MODIFY `sub_event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `teachered_channel`
--
ALTER TABLE `teachered_channel`
  MODIFY `teachered_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `teachered_class`
--
ALTER TABLE `teachered_class`
  MODIFY `teachered_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `teachings`
--
ALTER TABLE `teachings`
  MODIFY `teaching_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `teaching_periods`
--
ALTER TABLE `teaching_periods`
  MODIFY `teaches_period_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `buildings`
--
ALTER TABLE `buildings`
  ADD CONSTRAINT `FK__schools` FOREIGN KEY (`school_id`) REFERENCES `schools` (`school_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `FK_classes_schools` FOREIGN KEY (`school_id`) REFERENCES `schools` (`school_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `classrooms`
--
ALTER TABLE `classrooms`
  ADD CONSTRAINT `FK_classrooms_buildings` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`building_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_classrooms_schools` FOREIGN KEY (`school_id`) REFERENCES `schools` (`school_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `FK_courses_schools` FOREIGN KEY (`school_id`) REFERENCES `schools` (`school_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `FK_departments_faculties` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`faculty_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_departments_schools` FOREIGN KEY (`school_id`) REFERENCES `schools` (`school_id`);

--
-- Contraintes pour la table `department_channels`
--
ALTER TABLE `department_channels`
  ADD CONSTRAINT `FK__channels` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`channel_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK__departments` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `FK_events_schools` FOREIGN KEY (`school_id`) REFERENCES `schools` (`school_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `event_sub_events`
--
ALTER TABLE `event_sub_events`
  ADD CONSTRAINT `FK__events` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK__sub_events` FOREIGN KEY (`sub_event_id`) REFERENCES `sub_events` (`sub_event_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `examinations`
--
ALTER TABLE `examinations`
  ADD CONSTRAINT `FK_examinations_courses` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  ADD CONSTRAINT `FK_examinations_profiles` FOREIGN KEY (`lecturer_id`) REFERENCES `profiles` (`profile_id`),
  ADD CONSTRAINT `FK_examinations_registrations` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`registration_id`),
  ADD CONSTRAINT `FK_examinations_sub_events` FOREIGN KEY (`sub_event_id`) REFERENCES `sub_events` (`sub_event_id`);

--
-- Contraintes pour la table `periods`
--
ALTER TABLE `periods`
  ADD CONSTRAINT `FK_periods_days` FOREIGN KEY (`day`) REFERENCES `days` (`day_id`),
  ADD CONSTRAINT `FK_periods_schools` FOREIGN KEY (`school_id`) REFERENCES `schools` (`school_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `period_class`
--
ALTER TABLE `period_class`
  ADD CONSTRAINT `FK_period_class_classes` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_period_class_periods` FOREIGN KEY (`period_id`) REFERENCES `periods` (`period_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `period_classrooms`
--
ALTER TABLE `period_classrooms`
  ADD CONSTRAINT `FK_period_classrooms_classrooms` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`classroom_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_period_classrooms_periods` FOREIGN KEY (`period_id`) REFERENCES `periods` (`period_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `period_courses`
--
ALTER TABLE `period_courses`
  ADD CONSTRAINT `FK_period_courses_courses` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_period_courses_periods` FOREIGN KEY (`period_id`) REFERENCES `periods` (`period_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `period_lecturers`
--
ALTER TABLE `period_lecturers`
  ADD CONSTRAINT `FK_period_lecturer_lecturers` FOREIGN KEY (`lecturer_id`) REFERENCES `profiles` (`profile_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_period_lecturer_periods` FOREIGN KEY (`period_id`) REFERENCES `periods` (`period_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `FK_lecturers_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_profiles_roles` FOREIGN KEY (`role`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `FK_profiles_schools` FOREIGN KEY (`school_id`) REFERENCES `schools` (`school_id`);

--
-- Contraintes pour la table `profiles_roles`
--
ALTER TABLE `profiles_roles`
  ADD CONSTRAINT `FK_users_roles_roles` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `FK_users_roles_users` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`profile_id`);

--
-- Contraintes pour la table `registrations_channel`
--
ALTER TABLE `registrations_channel`
  ADD CONSTRAINT `FK_registrations_channel_channels` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`channel_id`),
  ADD CONSTRAINT `registrations_channel_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`),
  ADD CONSTRAINT `registrations_channel_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `registrations_class`
--
ALTER TABLE `registrations_class`
  ADD CONSTRAINT `FK_registrations_class_classes` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`),
  ADD CONSTRAINT `registrations_class_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`),
  ADD CONSTRAINT `registrations_class_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `scheduled_class`
--
ALTER TABLE `scheduled_class`
  ADD CONSTRAINT `FK_scheduled_class_classes` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_scheduled_class_classrooms` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`classroom_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_scheduled_class_courses` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_scheduled_class_profiles` FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`profile_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `scheduled_class_periods`
--
ALTER TABLE `scheduled_class_periods`
  ADD CONSTRAINT `FK_scheduled_class_by_period_periods` FOREIGN KEY (`period_id`) REFERENCES `periods` (`period_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_scheduled_class_by_period_scheduled_class` FOREIGN KEY (`scheduled_class_id`) REFERENCES `scheduled_class` (`scheduled_class_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `FK_students_schools` FOREIGN KEY (`current_school_id`) REFERENCES `schools` (`school_id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FK_students_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `teachered_channel`
--
ALTER TABLE `teachered_channel`
  ADD CONSTRAINT `FK_teachered_channel_students` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teachered_channel_ibfk_1` FOREIGN KEY (`teaching_id`) REFERENCES `teachings` (`teaching_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `teachered_class`
--
ALTER TABLE `teachered_class`
  ADD CONSTRAINT `FK__teaching` FOREIGN KEY (`teaching_id`) REFERENCES `teachings` (`teaching_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_teachered_class_students` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `teachings`
--
ALTER TABLE `teachings`
  ADD CONSTRAINT `FK_teaches_profiles` FOREIGN KEY (`lecturer_id`) REFERENCES `profiles` (`profile_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_teachings_courses` FOREIGN KEY (`subject_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_teachings_schools` FOREIGN KEY (`school_id`) REFERENCES `schools` (`school_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `teaching_periods`
--
ALTER TABLE `teaching_periods`
  ADD CONSTRAINT `FK__periods` FOREIGN KEY (`period_id`) REFERENCES `periods` (`period_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK__teaches` FOREIGN KEY (`teaching_id`) REFERENCES `teachings` (`teaching_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
