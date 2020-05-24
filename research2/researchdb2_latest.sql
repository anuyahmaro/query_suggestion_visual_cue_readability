-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3307
-- Generation Time: Dec 05, 2017 at 02:39 PM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `researchdb2`
--

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE IF NOT EXISTS `grade` (
  `id` int(11) NOT NULL,
  `grade` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`id`, `grade`) VALUES
(-1, 'Pre-K'),
(0, 'Kindergarten'),
(1, '1st Grade'),
(2, '2nd Grade'),
(3, '3rd Grade'),
(4, '4th Grade'),
(5, '5th Grade'),
(6, '6th Grade'),
(7, '7th Grade'),
(8, '8th Grade'),
(9, '9th Grade'),
(10, '10th Grade'),
(11, '11th Grade'),
(12, '12th Grade'),
(13, 'Adult / Testing');

-- --------------------------------------------------------

--
-- Table structure for table `searchlinks`
--

CREATE TABLE IF NOT EXISTS `searchlinks` (
  `id` int(11) NOT NULL,
  `sessionid` int(11) DEFAULT NULL,
  `searchid` int(11) DEFAULT NULL,
  `linkclicked` text,
  `timeclicked` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `id` int(11) NOT NULL,
  `guid` varchar(40) DEFAULT NULL,
  `datevisited` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `gradeid` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `guid`, `datevisited`, `gradeid`) VALUES
(157, '{AA2C2B95-8410-4268-8DCC-D4A2691DDA67}', '2017-11-30 10:38:10', 13),
(158, '{765F3692-11AB-4C0B-BD78-AD70D2D0A16C}', '2017-11-30 10:58:47', 10),
(159, '{9E395161-F58A-446B-954F-C67C144962E9}', '2017-11-30 11:07:00', 10),
(160, '{8722D9B9-6172-43C3-8B7D-E36B47342CC6}', '2017-11-30 20:01:21', 4),
(161, '{CB662B58-B6E0-4DBA-9901-A004E424EA01}', '2017-11-30 20:02:37', 8),
(162, '{CA18AE9A-A071-4FE4-BA16-E8D0DBBDF697}', '2017-11-30 20:47:45', -1),
(163, '{07167291-02AE-4E77-AD96-236541123CEC}', '2017-11-30 20:57:08', 8),
(164, '{05F69BB9-572D-4041-AC2C-74538F69C5E1}', '2017-11-30 21:00:55', 13),
(165, '{790BCF5E-5F5B-4BB2-9D6E-67B6CE9239FE}', '2017-11-30 21:03:52', 10),
(166, '{35651C81-2C68-4388-B81B-3C0EB3B3E550}', '2017-11-30 21:26:37', 10),
(167, '{4F88BE61-3FF5-407F-8FA1-987CEBF27735}', '2017-11-30 21:26:50', 9),
(168, '{CB0A191B-81E3-463E-868F-8EBB99A6C491}', '2017-12-01 03:27:10', 10),
(169, '{DF6CF41F-1BE0-4AA9-AD51-CEEDBB04535A}', '2017-12-01 03:38:14', 11),
(170, '{27EB46D3-0F7F-4F2C-8236-BE8D3D5B7984}', '2017-12-04 15:13:48', 13),
(171, '{8432A4A3-9297-437D-B122-5965B3BB4295}', '2017-12-04 22:49:00', 13),
(172, '{1C17FB4A-C39D-49FD-A7C0-5B9CDCA55069}', '2017-12-04 23:29:49', 13),
(173, '{C54E4243-E339-4A73-9831-8C30DD359E11}', '2017-12-04 23:56:17', 13),
(174, '{C0B509B3-8367-4D12-B758-0AB096479A25}', '2017-12-05 04:04:38', 13),
(175, '{85857EB8-C8AF-4CE0-BFD3-D6B919D407F3}', '2017-12-05 04:25:03', 1),
(176, '{0072B4D3-6A66-235B-7282-E63AC4C72AC5}', '2017-12-05 10:10:38', 1),
(177, '{41BF5BD0-F6DD-362C-9C94-3D6A1892F33F}', '2017-12-05 10:11:55', 1),
(178, '{6FE3C932-C035-9663-9EED-50D240FF9625}', '2017-12-05 10:13:47', 1),
(179, '{07454EF2-BDA4-768C-7F5B-927E991D61BB}', '2017-12-05 10:17:44', 1),
(180, '{F6541083-BEAE-3515-2314-5E8138BB048D}', '2017-12-05 10:36:20', 1),
(181, '{BCA89801-8CAE-E604-BBE1-598C9E576A21}', '2017-12-05 10:37:53', 1),
(182, '{4ECDA336-8BBB-D959-6782-87513E2748FC}', '2017-12-05 11:13:53', 1),
(183, '{F7AD720A-04E1-C656-3F99-334C442D86F3}', '2017-12-05 11:15:55', 1),
(184, '{1FA3A87B-8287-4FFD-3D55-E388F6C33AEF}', '2017-12-05 11:21:21', 1),
(185, '{C18153F0-3603-1C7A-5029-EB08C85842B8}', '2017-12-05 11:22:50', 1),
(186, '{DD11C28E-3E4A-DD65-D26A-135669506639}', '2017-12-05 11:24:55', 1),
(187, '{03CC1FCC-15B1-DAA0-766F-EB92DDDADF9D}', '2017-12-05 11:47:04', 1),
(188, '{BA0C8232-5807-BB80-3B47-96E52FFDD70C}', '2017-12-05 11:48:28', 1),
(189, '{01E2F9C0-2CF0-5206-9235-8D1CC6A2C5D2}', '2017-12-05 11:51:06', 1),
(190, '{302B94D4-9077-C522-54ED-9DD8C9D76429}', '2017-12-05 12:06:11', 1),
(191, '{C54899DC-8956-E512-8780-736642B93BE4}', '2017-12-05 12:16:37', 1),
(192, '{071E3283-10A5-E544-26DF-505F608519A1}', '2017-12-05 12:20:38', 1),
(193, '{1F781F54-1F0E-48F3-03FC-63F3B9ABB2CB}', '2017-12-05 13:07:38', 1),
(194, '{E52E3CC4-4694-5126-36D9-779B7C90FD80}', '2017-12-05 13:07:51', 1),
(195, '{660D8A4E-129C-EFAB-0CD6-74363D02E5B2}', '2017-12-05 13:10:02', 1),
(196, '{C340DB41-B5E9-37A0-2D04-AE059240AEE2}', '2017-12-05 13:10:55', 1),
(197, '{E2626A74-BADA-BC66-E11C-60F49A0A0998}', '2017-12-05 13:11:37', 1),
(198, '{2AF491F2-F2DC-9F4C-9844-D160D133EFAB}', '2017-12-05 13:16:16', 1),
(199, '{C4D0B5DA-2F4F-B902-C9F7-2EE40414A49A}', '2017-12-05 13:16:53', 1),
(200, '{A24EAE9D-212E-7AFB-A41A-10AF1AF7517D}', '2017-12-05 13:21:43', 1),
(201, '{1A44D57D-B85F-4BFA-123B-36BF937D756E}', '2017-12-05 13:23:18', 1),
(202, '{A70047F4-DD44-9F0E-6C25-91B195FDF2CB}', '2017-12-05 13:24:57', 1),
(203, '{33FCBD10-62C3-F1B4-5FD1-BBE7AF94AD2B}', '2017-12-05 13:25:44', 1),
(204, '{A4773360-5FCD-09A3-121C-927270E44D14}', '2017-12-05 13:27:19', 1),
(205, '{281F9644-DC8B-1526-041B-2E653AE8A62F}', '2017-12-05 13:28:17', 1),
(206, '{1557CA4C-B99A-10D8-C4F1-9229C9F63E7A}', '2017-12-05 13:29:04', 1),
(207, '{D1FA1039-9DE7-60BB-6E34-4AC9F562DF4A}', '2017-12-05 13:33:51', 1),
(208, '{B7B3F8AF-C57B-8FAB-205E-67BE8C2879ED}', '2017-12-05 13:34:27', 1),
(209, '{CE9D28EB-9DA9-02B9-7641-836764B99A4C}', '2017-12-05 13:35:23', 1),
(210, '{9B386E52-3C3D-B4A3-D17B-D32269840E0B}', '2017-12-05 13:36:23', 1),
(211, '{93D4DD84-094B-EF88-68E4-1CD47FF85A3A}', '2017-12-05 13:37:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessionsearch`
--

CREATE TABLE IF NOT EXISTS `sessionsearch` (
  `id` int(11) NOT NULL,
  `userquery` text,
  `searchuid` varchar(50) DEFAULT NULL,
  `sessionid` int(11) DEFAULT NULL,
  `issuggestion` varchar(50) NOT NULL DEFAULT 'false',
  `timesearched` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `trigger` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=549 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessionsearch`
--

INSERT INTO `sessionsearch` (`id`, `userquery`, `searchuid`, `sessionid`, `issuggestion`, `timesearched`, `trigger`) VALUES
(531, 'you are the prize quotes', '{06432112-E057-03F8-6CF8-8297868E0BFB}', 200, 'false', '2017-12-05 13:22:26', NULL),
(532, 'you are the prize quotes', '{481A8261-AAE6-CC93-8329-BF07284C69AC}', 200, 'false', '2017-12-05 13:22:31', NULL),
(533, 'bible stands for what', '{011910FD-7E3D-6FA4-BCC3-2F1F34231B7A}', 201, 'false', '2017-12-05 13:24:01', NULL),
(534, 'bible stands for sale', '{839EC607-9016-8C4D-E549-C7F063733906}', 202, 'false', '2017-12-05 13:25:43', NULL),
(535, 'bandit ', '{91F83F99-A942-DF99-3A4C-60AEA4E582CF}', 205, 'false', '2017-12-05 13:29:04', NULL),
(536, 'bandit ', '{6F480EBE-561E-F959-6276-51684459C2C3}', 205, 'false', '2017-12-05 13:29:04', NULL),
(537, 'bandit ', '{9ADCCE46-DCA1-00C7-A34A-9BA5CA76C2B2}', 205, 'false', '2017-12-05 13:29:04', NULL),
(538, 'bandit ', '{79FD03FA-0340-7571-C8F7-019FF162C36C}', 205, 'false', '2017-12-05 13:29:04', NULL),
(539, 'bandit ', '{454EB98E-21AB-B3F3-D2CE-DFC3CB2B205F}', 205, 'false', '2017-12-05 13:29:04', NULL),
(540, 'bandit ', '{5EDFA0CF-B7C5-B01A-BB3A-BE4B5EE7095F}', 205, 'false', '2017-12-05 13:29:04', NULL),
(541, 'bandit ', '{D1948A5B-9D2D-C2A3-B0BE-7CB72E37DBBA}', 205, 'false', '2017-12-05 13:29:04', NULL),
(542, 'bandit ', '{3C1D6239-D9F4-B2AA-F4DD-F18B7D80191F}', 205, 'false', '2017-12-05 13:29:04', NULL),
(543, 'bandit ', '{6BE94F0D-6736-4000-F954-21F61A3B99BA}', 205, 'false', '2017-12-05 13:29:04', NULL),
(544, 'bandit ', '{A5831C24-C39E-C901-A3E4-22AEDC45D16D}', 205, 'false', '2017-12-05 13:29:04', NULL),
(545, 'we are the best meme', '{3027BD15-25A9-4673-C7C0-CAEC977BD046}', 207, 'false', '2017-12-05 13:34:27', NULL),
(546, 'i am new york', '{EF94B25A-968B-53A5-30FB-C93585FEE54A}', 209, 'false', '2017-12-05 13:36:22', NULL),
(547, 'forex trade shows', '{8DECEAA5-1B0B-ADCD-CE6D-E5F24C3E3167}', 210, 'false', '2017-12-05 13:37:47', NULL),
(548, 'forex trade shows', '{65283AE1-92A6-5017-E4E6-F89D1F1EBB6B}', 210, 'false', '2017-12-05 13:37:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE IF NOT EXISTS `suggestions` (
  `id` int(11) NOT NULL,
  `sessionid` int(11) DEFAULT NULL,
  `queryid` int(11) DEFAULT NULL,
  `suggestion` varchar(750) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `dateadded` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `islike` smallint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=590 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suggestions`
--

INSERT INTO `suggestions` (`id`, `sessionid`, `queryid`, `suggestion`, `source`, `dateadded`, `islike`) VALUES
(1, 161, 747, 'lagos', 'bing', '2017-11-30 20:11:59', 1),
(2, 161, 747, 'lagos', 'bing', '2017-11-30 20:11:59', 1),
(3, 161, 747, 'lagos', 'bing', '2017-11-30 20:11:59', 1),
(4, 161, 748, 'goodr', 'bing', '2017-11-30 20:12:38', 1),
(5, 161, 748, 'goodg', 'bing', '2017-11-30 20:12:38', 1),
(6, 161, 748, 'goodr', 'bing', '2017-11-30 20:12:38', 1),
(7, 161, 749, 'sliced', 'bing', '2017-11-30 20:16:54', 0),
(8, 161, 749, 'slice', 'bing', '2017-11-30 20:16:54', 0),
(9, 161, 749, 'slicethepie', 'bing', '2017-11-30 20:16:54', 0),
(10, 161, 751, 'url shortener', 'bing', '2017-11-30 20:26:03', 1),
(11, 161, 751, 'url', 'bing', '2017-11-30 20:26:03', 0),
(12, 161, 751, 'url decode', 'bing', '2017-11-30 20:26:03', 0),
(13, 161, 752, 'great clips', 'bing', '2017-11-30 20:31:39', 0),
(14, 161, 752, 'greatpeople me', 'bing', '2017-11-30 20:31:39', 1),
(15, 161, 752, 'great clips check-in online', 'bing', '2017-11-30 20:31:39', 0),
(16, 161, 753, 'cool math games', 'bing', '2017-11-30 20:34:02', 1),
(17, 161, 753, 'coolmath-games', 'bing', '2017-11-30 20:34:02', 0),
(18, 161, 753, 'cool tv online', 'bing', '2017-11-30 20:34:02', 1),
(19, 161, 754, 'healthequity login', 'bing', '2017-11-30 20:45:29', 1),
(20, 161, 754, 'healthequity', 'bing', '2017-11-30 20:45:29', 0),
(21, 161, 754, 'health and welfare idaho', 'bing', '2017-11-30 20:45:29', 1),
(22, 162, 755, 'mummy 2017', 'bing', '2017-11-30 20:47:56', 0),
(23, 162, 755, 'mummy', 'bing', '2017-11-30 20:47:56', 0),
(24, 162, 755, 'mummy movie', 'bing', '2017-11-30 20:47:56', 1),
(25, 162, 756, 'bread pudding', 'bing', '2017-11-30 20:49:44', 1),
(26, 162, 756, 'bread machine', 'bing', '2017-11-30 20:49:44', 0),
(27, 162, 756, 'bread recipes', 'bing', '2017-11-30 20:49:44', 1),
(28, 162, 757, 'cashnetusa.com', 'bing', '2017-11-30 20:49:56', 0),
(29, 162, 757, 'cash and carry', 'bing', '2017-11-30 20:49:56', 0),
(30, 162, 757, 'cash & carry', 'bing', '2017-11-30 20:49:56', 1),
(31, 163, 758, 'presidents', 'bing', '2017-11-30 20:57:58', 0),
(32, 163, 758, 'presidents of the united states', 'bing', '2017-11-30 20:57:58', 1),
(33, 163, 758, 'presidential race', 'bing', '2017-11-30 20:57:58', 0),
(34, 163, 759, 'presidents', 'bing', '2017-11-30 20:59:20', 1),
(35, 163, 759, 'presidents of the united states', 'bing', '2017-11-30 20:59:20', 0),
(36, 163, 759, 'presidential race', 'bing', '2017-11-30 20:59:20', 0),
(37, 163, 760, 'dwarfs', 'bing', '2017-11-30 21:00:17', 0),
(38, 163, 760, 'dwarfstar', 'bing', '2017-11-30 21:00:17', 1),
(39, 163, 760, 'dwarfs names', 'bing', '2017-11-30 21:00:17', 0),
(40, 164, 761, 'resident apps', 'bing', '2017-11-30 21:01:12', 1),
(41, 164, 761, 'residence inn', 'bing', '2017-11-30 21:01:12', 0),
(42, 164, 761, 'residence inn boise', 'bing', '2017-11-30 21:01:12', 1),
(43, 164, 762, 'resident apps', 'bing', '2017-11-30 21:01:40', 0),
(44, 164, 762, 'residence inn', 'bing', '2017-11-30 21:01:40', 1),
(45, 164, 762, 'residence inn boise', 'bing', '2017-11-30 21:01:40', 0),
(46, 165, 763, 'nicee', 'bing', '2017-11-30 21:04:00', 0),
(47, 165, 763, 'niceeshop', 'bing', '2017-11-30 21:04:00', 1),
(48, 165, 763, 'niceebag', 'bing', '2017-11-30 21:04:00', 0),
(49, 169, 764, 'last year', 'bing', '2017-12-01 03:43:15', 0),
(50, 169, 764, 'last year game', 'bing', '2017-12-01 03:43:15', 0),
(51, 169, 764, 'last years w2', 'bing', '2017-12-01 03:43:15', 0),
(52, 169, 765, 'fresh produce', 'bing', '2017-12-01 03:49:01', 0),
(53, 169, 765, 'fresh produce clothing', 'bing', '2017-12-01 03:49:01', 0),
(54, 169, 765, 'fresh prince of bel-air', 'bing', '2017-12-01 03:49:01', 0),
(55, 169, 767, 'search for gold', 'bing', '2017-12-01 03:51:06', 1),
(56, 169, 767, 'search for god', 'bing', '2017-12-01 03:51:06', 0),
(57, 169, 767, 'search for google', 'bing', '2017-12-01 03:51:06', 1),
(58, 169, 768, 'good churches', 'bing', '2017-12-01 03:51:24', 1),
(59, 169, 768, 'good churches near me', 'bing', '2017-12-01 03:51:24', 1),
(60, 169, 768, 'good churches for young people', 'bing', '2017-12-01 03:51:24', 1),
(61, 169, 769, 'fresh prince theme song', 'bing', '2017-12-01 04:08:48', 1),
(62, 169, 769, 'fresh prince of bel-air', 'bing', '2017-12-01 04:08:48', 1),
(63, 169, 769, 'fresh prince', 'bing', '2017-12-01 04:08:48', 0),
(64, 169, 770, 'awesome things to buy', 'bing', '2017-12-01 04:08:58', 0),
(65, 169, 770, 'awesome things', 'bing', '2017-12-01 04:08:58', 0),
(66, 169, 770, 'awesome things to do', 'bing', '2017-12-01 04:08:58', 0),
(67, 169, 771, 'buy thanksgiving dinner', 'bing', '2017-12-01 04:09:17', 0),
(68, 169, 771, 'buy thanksgiving turkey', 'bing', '2017-12-01 04:09:17', 0),
(69, 169, 771, 'buy thanksgiving cornucopia', 'bing', '2017-12-01 04:09:17', 0),
(70, 171, 778, 'ed sheeran perfect', 'requik', '2017-12-04 22:49:22', 0),
(71, 171, 778, 'ed sheeran perfect video', 'requik', '2017-12-04 22:49:22', 0),
(72, 171, 778, 'ed sheeran perfect chords', 'requik', '2017-12-04 22:49:22', 0),
(73, 171, 779, 'ed sheeran perfect', 'requik', '2017-12-04 22:49:22', 0),
(74, 171, 778, 'ed sheeran perfect', 'requik', '2017-12-04 22:49:22', 0),
(75, 171, 779, 'ed sheeran perfect video', 'requik', '2017-12-04 22:49:22', 0),
(76, 171, 778, 'ed sheeran perfect video', 'requik', '2017-12-04 22:49:22', 0),
(77, 171, 779, 'ed sheeran perfect chords', 'requik', '2017-12-04 22:49:22', 0),
(78, 171, 778, 'ed sheeran perfect chords', 'requik', '2017-12-04 22:49:22', 0),
(79, 171, 779, 'ed sheeran perfect', 'requik', '2017-12-04 22:49:22', 0),
(80, 171, 778, 'ed sheeran perfect', 'bing', '2017-12-04 22:49:22', 0),
(81, 171, 779, 'ed sheeran perfect video', 'requik', '2017-12-04 22:49:22', 0),
(82, 171, 778, 'ed sheeran perfect video', 'bing', '2017-12-04 22:49:22', 0),
(83, 171, 779, 'ed sheeran perfect chords', 'requik', '2017-12-04 22:49:22', 0),
(84, 171, 778, 'ed sheeran perfect chords', 'bing', '2017-12-04 22:49:22', 0),
(85, 171, 779, 'ed sheeran perfect', 'bing', '2017-12-04 22:49:22', 0),
(86, 171, 778, 'ed sheeran perfect', 'bing', '2017-12-04 22:49:22', 0),
(87, 171, 779, 'ed sheeran perfect video', 'bing', '2017-12-04 22:49:22', 0),
(88, 171, 778, 'ed sheeran perfect video', 'bing', '2017-12-04 22:49:22', 0),
(89, 171, 779, 'ed sheeran perfect chords', 'bing', '2017-12-04 22:49:22', 0),
(90, 171, 778, 'ed sheeran perfect chords', 'bing', '2017-12-04 22:49:22', 0),
(91, 171, 779, 'ed sheeran perfect', 'bing', '2017-12-04 22:49:22', 0),
(92, 171, 779, 'ed sheeran perfect video', 'bing', '2017-12-04 22:49:22', 0),
(93, 171, 779, 'ed sheeran perfect chords', 'bing', '2017-12-04 22:49:22', 0),
(94, 171, 780, 'beyonce drunk in love', 'requik', '2017-12-04 23:10:43', 0),
(95, 171, 780, 'beyonce drunk in love lyrics', 'requik', '2017-12-04 23:10:43', 0),
(96, 171, 780, 'beyonce drunk in love mp3', 'requik', '2017-12-04 23:10:43', 0),
(97, 171, 780, 'beyonce drunk in love', 'bing', '2017-12-04 23:10:43', 0),
(98, 171, 780, 'beyonce drunk in love lyrics', 'bing', '2017-12-04 23:10:43', 0),
(99, 171, 780, 'beyonce drunk in love mp3', 'bing', '2017-12-04 23:10:43', 0),
(100, 171, 781, 'beyonce drunk in love', 'requik', '2017-12-04 23:10:43', 0),
(101, 171, 781, 'beyonce drunk in love lyrics', 'requik', '2017-12-04 23:10:43', 0),
(102, 171, 781, 'beyonce drunk in love mp3', 'requik', '2017-12-04 23:10:43', 0),
(103, 171, 781, 'beyonce drunk in love', 'bing', '2017-12-04 23:10:43', 0),
(104, 171, 781, 'beyonce drunk in love lyrics', 'bing', '2017-12-04 23:10:43', 0),
(105, 171, 781, 'beyonce drunk in love mp3', 'bing', '2017-12-04 23:10:43', 0),
(106, 171, 782, 'boise craigslist', 'requik', '2017-12-04 23:15:41', 0),
(107, 171, 782, 'boise state university', 'requik', '2017-12-04 23:15:41', 0),
(108, 171, 782, 'boise state football', 'requik', '2017-12-04 23:15:41', 0),
(109, 171, 782, 'boise craigslist', 'requik', '2017-12-04 23:15:41', 0),
(110, 171, 782, 'boise state university', 'requik', '2017-12-04 23:15:41', 0),
(111, 171, 782, 'boise state football', 'requik', '2017-12-04 23:15:41', 0),
(112, 171, 782, 'boise craigslist', 'bing', '2017-12-04 23:15:41', 0),
(113, 171, 782, 'boise state university', 'bing', '2017-12-04 23:15:41', 0),
(114, 171, 782, 'boise state football', 'bing', '2017-12-04 23:15:41', 0),
(115, 171, 782, 'boise craigslist', 'bing', '2017-12-04 23:15:41', 0),
(116, 171, 782, 'boise state university', 'bing', '2017-12-04 23:15:41', 0),
(117, 171, 782, 'boise state football', 'bing', '2017-12-04 23:15:41', 0),
(118, 171, 783, 'boise craigslist', 'requik', '2017-12-04 23:15:41', 0),
(119, 171, 783, 'boise state university', 'requik', '2017-12-04 23:15:41', 0),
(120, 171, 783, 'boise state football', 'requik', '2017-12-04 23:15:41', 0),
(121, 171, 783, 'boise craigslist', 'requik', '2017-12-04 23:15:41', 0),
(122, 171, 783, 'boise state university', 'requik', '2017-12-04 23:15:41', 0),
(123, 171, 783, 'boise state football', 'requik', '2017-12-04 23:15:41', 0),
(124, 171, 783, 'boise craigslist', 'bing', '2017-12-04 23:15:41', 0),
(125, 171, 783, 'boise state university', 'bing', '2017-12-04 23:15:41', 0),
(126, 171, 783, 'boise state football', 'bing', '2017-12-04 23:15:41', 0),
(127, 171, 783, 'boise craigslist', 'bing', '2017-12-04 23:15:41', 0),
(128, 171, 783, 'boise state university', 'bing', '2017-12-04 23:15:41', 0),
(129, 171, 783, 'boise state football', 'bing', '2017-12-04 23:15:41', 0),
(130, 171, 784, 'boise state university', 'requik', '2017-12-04 23:27:13', 0),
(131, 171, 784, 'boise state university jobs', 'requik', '2017-12-04 23:27:13', 0),
(132, 171, 784, 'boise state university football schedule', 'requik', '2017-12-04 23:27:13', 0),
(133, 171, 784, 'boise state university', 'bing', '2017-12-04 23:27:13', 0),
(134, 171, 784, 'boise state university jobs', 'bing', '2017-12-04 23:27:13', 0),
(135, 171, 784, 'boise state university football schedule', 'bing', '2017-12-04 23:27:13', 0),
(136, 171, 785, 'boise state university', 'requik', '2017-12-04 23:27:13', 0),
(137, 171, 785, 'boise state university jobs', 'requik', '2017-12-04 23:27:13', 0),
(138, 171, 785, 'boise state university football schedule', 'requik', '2017-12-04 23:27:13', 0),
(139, 171, 785, 'boise state university', 'bing', '2017-12-04 23:27:13', 0),
(140, 171, 785, 'boise state university jobs', 'bing', '2017-12-04 23:27:13', 0),
(141, 171, 785, 'boise state university football schedule', 'bing', '2017-12-04 23:27:13', 0),
(142, 172, 787, 'boise burger restaurants', 'requik', '2017-12-04 23:30:14', 0),
(143, 172, 787, 'boise burger restaurants', 'bing', '2017-12-04 23:30:14', 0),
(144, 172, 786, 'boise burger restaurants', 'requik', '2017-12-04 23:30:14', 0),
(145, 172, 786, 'boise burger restaurants', 'bing', '2017-12-04 23:30:14', 0),
(146, 172, 788, 'burger king boise idaho', 'requik', '2017-12-04 23:33:39', 0),
(147, 172, 788, 'burger king boise locations', 'requik', '2017-12-04 23:33:39', 0),
(148, 172, 788, 'burger king boise overland', 'requik', '2017-12-04 23:33:39', 0),
(149, 172, 788, 'burger king boise idaho', 'bing', '2017-12-04 23:33:39', 0),
(150, 172, 788, 'burger king boise locations', 'bing', '2017-12-04 23:33:39', 0),
(151, 172, 788, 'burger king boise overland', 'bing', '2017-12-04 23:33:39', 0),
(152, 172, 789, 'burger king boise idaho', 'requik', '2017-12-04 23:33:39', 0),
(153, 172, 789, 'burger king boise locations', 'requik', '2017-12-04 23:33:39', 0),
(154, 172, 789, 'burger king boise overland', 'requik', '2017-12-04 23:33:39', 0),
(155, 172, 789, 'burger king boise idaho', 'bing', '2017-12-04 23:33:39', 0),
(156, 172, 789, 'burger king boise locations', 'bing', '2017-12-04 23:33:39', 0),
(157, 172, 789, 'burger king boise overland', 'bing', '2017-12-04 23:33:39', 0),
(158, 172, 790, 'queen elizabeth of england', 'requik', '2017-12-04 23:47:30', 0),
(159, 172, 790, 'queen elizabeth of york', 'requik', '2017-12-04 23:47:30', 0),
(160, 172, 790, 'queen elizabeth of portugal', 'requik', '2017-12-04 23:47:30', 0),
(161, 172, 790, 'queen elizabeth of england', 'bing', '2017-12-04 23:47:30', 0),
(162, 172, 790, 'queen elizabeth of york', 'bing', '2017-12-04 23:47:30', 0),
(163, 172, 790, 'queen elizabeth of portugal', 'bing', '2017-12-04 23:47:30', 0),
(164, 173, 791, 'recommender systems', 'requik', '2017-12-04 23:57:05', 0),
(165, 173, 791, 'recommender systems quiz', 'requik', '2017-12-04 23:57:05', 0),
(166, 173, 791, 'recommender systems book', 'requik', '2017-12-04 23:57:05', 0),
(167, 173, 791, 'recommender systems', 'bing', '2017-12-04 23:57:05', 0),
(168, 173, 791, 'recommender systems quiz', 'bing', '2017-12-04 23:57:05', 0),
(169, 173, 791, 'recommender systems book', 'bing', '2017-12-04 23:57:05', 0),
(170, 173, 793, 'recommender systems', 'requik', '2017-12-04 23:57:05', 0),
(171, 173, 793, 'recommender systems quiz', 'requik', '2017-12-04 23:57:05', 0),
(172, 173, 793, 'recommender systems book', 'requik', '2017-12-04 23:57:05', 0),
(173, 173, 793, 'recommender systems', 'bing', '2017-12-04 23:57:05', 0),
(174, 173, 793, 'recommender systems quiz', 'bing', '2017-12-04 23:57:05', 0),
(175, 173, 793, 'recommender systems book', 'bing', '2017-12-04 23:57:05', 0),
(176, 173, 792, 'recommender systems', 'requik', '2017-12-04 23:57:05', 0),
(177, 173, 792, 'recommender systems quiz', 'requik', '2017-12-04 23:57:05', 0),
(178, 173, 792, 'recommender systems book', 'requik', '2017-12-04 23:57:05', 0),
(179, 173, 792, 'recommender systems', 'bing', '2017-12-04 23:57:05', 0),
(180, 173, 792, 'recommender systems quiz', 'bing', '2017-12-04 23:57:05', 0),
(181, 173, 792, 'recommender systems book', 'bing', '2017-12-04 23:57:05', 0),
(182, 174, 795, 'boise state university jobs', 'bing', '2017-12-05 04:08:45', 0),
(183, 174, 795, 'boise state university football', 'bing', '2017-12-05 04:08:45', 0),
(184, 174, 795, 'boise state university library', 'bing', '2017-12-05 04:08:45', 0),
(185, 174, 795, 'boise state university jobs', 'requik', '2017-12-05 04:08:45', 0),
(186, 174, 795, 'boise state university football', 'requik', '2017-12-05 04:08:45', 0),
(187, 174, 795, 'boise state university library', 'requik', '2017-12-05 04:08:45', 0),
(188, 174, 795, 'boise state university jobs', 'bing', '2017-12-05 04:08:45', 0),
(189, 174, 795, 'boise state university football', 'bing', '2017-12-05 04:08:45', 0),
(190, 174, 795, 'boise state university library', 'bing', '2017-12-05 04:08:45', 0),
(191, 174, 794, 'boise state university jobs', 'bing', '2017-12-05 04:08:45', 0),
(192, 174, 794, 'boise state university football', 'bing', '2017-12-05 04:08:45', 0),
(193, 174, 794, 'boise state university library', 'bing', '2017-12-05 04:08:45', 0),
(194, 174, 794, 'boise state university jobs', 'requik', '2017-12-05 04:08:45', 0),
(195, 174, 794, 'boise state university football', 'requik', '2017-12-05 04:08:45', 0),
(196, 174, 794, 'boise state university library', 'requik', '2017-12-05 04:08:45', 0),
(197, 174, 794, 'boise state university jobs', 'bing', '2017-12-05 04:08:45', 0),
(198, 174, 794, 'boise state university football', 'bing', '2017-12-05 04:08:45', 0),
(199, 174, 794, 'boise state university library', 'bing', '2017-12-05 04:08:45', 0),
(200, 174, 796, 'beauty and the beast', 'requik', '2017-12-05 04:13:36', 0),
(201, 174, 796, 'beauty and the beast 2017', 'requik', '2017-12-05 04:13:36', 0),
(202, 174, 796, 'beauty and the beast cast', 'requik', '2017-12-05 04:13:36', 0),
(203, 174, 796, 'beauty and the beast', 'bing', '2017-12-05 04:13:36', 0),
(204, 174, 796, 'beauty and the beast 2017', 'bing', '2017-12-05 04:13:36', 0),
(205, 174, 796, 'beauty and the beast cast', 'bing', '2017-12-05 04:13:36', 0),
(206, 175, 797, 'hosanna in the highest', 'requik', '2017-12-05 04:25:35', 0),
(207, 175, 797, 'hosanna in the highest lyrics', 'requik', '2017-12-05 04:25:35', 0),
(208, 175, 797, 'hosanna in the bible', 'requik', '2017-12-05 04:25:35', 0),
(209, 175, 797, 'hosanna in the highest', 'bing', '2017-12-05 04:25:35', 0),
(210, 175, 797, 'hosanna in the highest lyrics', 'bing', '2017-12-05 04:25:35', 0),
(211, 175, 797, 'hosanna in the bible', 'bing', '2017-12-05 04:25:35', 0),
(212, 175, 798, 'hosanna in the highest', 'requik', '2017-12-05 04:25:35', 0),
(213, 175, 798, 'hosanna in the highest lyrics', 'requik', '2017-12-05 04:25:35', 0),
(214, 175, 798, 'hosanna in the bible', 'requik', '2017-12-05 04:25:35', 0),
(215, 175, 798, 'hosanna in the highest', 'bing', '2017-12-05 04:25:35', 0),
(216, 175, 798, 'hosanna in the highest lyrics', 'bing', '2017-12-05 04:25:35', 0),
(217, 175, 798, 'hosanna in the bible', 'bing', '2017-12-05 04:25:35', 0),
(218, 176, 799, 'typical school day', 'requik', '2017-12-05 10:11:55', 0),
(219, 176, 799, 'typical school bus', 'requik', '2017-12-05 10:11:55', 0),
(220, 176, 799, 'typical school hours', 'requik', '2017-12-05 10:11:55', 0),
(221, 176, 799, 'typical school day', 'requik', '2017-12-05 10:11:55', 0),
(222, 176, 799, 'typical school bus', 'requik', '2017-12-05 10:11:55', 0),
(223, 176, 799, 'typical school hours', 'requik', '2017-12-05 10:11:55', 0),
(224, 176, 799, 'typical school day', 'bing', '2017-12-05 10:11:55', 0),
(225, 176, 799, 'typical school bus', 'bing', '2017-12-05 10:11:55', 0),
(226, 176, 799, 'typical school hours', 'bing', '2017-12-05 10:11:55', 0),
(227, 176, 799, 'typical school day', 'bing', '2017-12-05 10:11:55', 0),
(228, 176, 799, 'typical school bus', 'bing', '2017-12-05 10:11:55', 0),
(229, 176, 799, 'typical school hours', 'bing', '2017-12-05 10:11:55', 0),
(230, 176, 800, 'typical school day', 'requik', '2017-12-05 10:11:55', 0),
(231, 176, 800, 'typical school bus', 'requik', '2017-12-05 10:11:55', 0),
(232, 176, 800, 'typical school hours', 'requik', '2017-12-05 10:11:55', 0),
(233, 176, 800, 'typical school day', 'requik', '2017-12-05 10:11:55', 0),
(234, 176, 800, 'typical school bus', 'requik', '2017-12-05 10:11:55', 0),
(235, 176, 800, 'typical school hours', 'requik', '2017-12-05 10:11:55', 0),
(236, 176, 800, 'typical school day', 'bing', '2017-12-05 10:11:55', 0),
(237, 176, 800, 'typical school bus', 'bing', '2017-12-05 10:11:55', 0),
(238, 176, 800, 'typical school hours', 'bing', '2017-12-05 10:11:55', 0),
(239, 176, 800, 'typical school day', 'bing', '2017-12-05 10:11:55', 0),
(240, 176, 800, 'typical school bus', 'bing', '2017-12-05 10:11:55', 0),
(241, 176, 800, 'typical school hours', 'bing', '2017-12-05 10:11:55', 0),
(242, 178, 801, 'tests school', 'bing', '2017-12-05 10:14:31', 0),
(243, 178, 801, 'tests school psychologist use', 'bing', '2017-12-05 10:14:31', 0),
(244, 178, 801, 'test school', 'bing', '2017-12-05 10:14:31', 0),
(245, 178, 801, 'tests school', 'bing', '2017-12-05 10:14:31', 0),
(246, 178, 801, 'tests school psychologist use', 'bing', '2017-12-05 10:14:31', 0),
(247, 178, 801, 'test school', 'bing', '2017-12-05 10:14:31', 0),
(248, 178, 801, 'tests school', 'requik', '2017-12-05 10:14:31', 0),
(249, 178, 801, 'tests school psychologist use', 'requik', '2017-12-05 10:14:31', 0),
(250, 178, 801, 'test school', 'requik', '2017-12-05 10:14:31', 0),
(251, 178, 801, 'tests school', 'requik', '2017-12-05 10:14:31', 0),
(252, 178, 801, 'tests school psychologist use', 'requik', '2017-12-05 10:14:31', 0),
(253, 178, 801, 'test school', 'requik', '2017-12-05 10:14:31', 0),
(254, 178, 801, 'tests school', 'bing', '2017-12-05 10:14:31', 0),
(255, 178, 801, 'tests school psychologist use', 'bing', '2017-12-05 10:14:31', 0),
(256, 178, 801, 'test school', 'bing', '2017-12-05 10:14:31', 0),
(257, 178, 801, 'tests school', 'bing', '2017-12-05 10:14:31', 0),
(258, 178, 801, 'tests school psychologist use', 'bing', '2017-12-05 10:14:31', 0),
(259, 178, 801, 'test school', 'bing', '2017-12-05 10:14:31', 0),
(260, 178, 802, 'tests school', 'bing', '2017-12-05 10:14:31', 0),
(261, 178, 802, 'tests school psychologist use', 'bing', '2017-12-05 10:14:31', 0),
(262, 178, 802, 'test school', 'bing', '2017-12-05 10:14:31', 0),
(263, 178, 802, 'tests school', 'bing', '2017-12-05 10:14:31', 0),
(264, 178, 802, 'tests school psychologist use', 'bing', '2017-12-05 10:14:31', 0),
(265, 178, 802, 'test school', 'bing', '2017-12-05 10:14:31', 0),
(266, 178, 803, 'tests school', 'bing', '2017-12-05 10:14:31', 0),
(267, 178, 802, 'tests school', 'requik', '2017-12-05 10:14:31', 0),
(268, 178, 803, 'tests school psychologist use', 'bing', '2017-12-05 10:14:31', 0),
(269, 178, 802, 'tests school psychologist use', 'requik', '2017-12-05 10:14:31', 0),
(270, 178, 803, 'test school', 'bing', '2017-12-05 10:14:31', 0),
(271, 178, 802, 'test school', 'requik', '2017-12-05 10:14:31', 0),
(272, 178, 803, 'tests school', 'bing', '2017-12-05 10:14:31', 0),
(273, 178, 802, 'tests school', 'requik', '2017-12-05 10:14:31', 0),
(274, 178, 803, 'tests school psychologist use', 'bing', '2017-12-05 10:14:31', 0),
(275, 178, 802, 'tests school psychologist use', 'requik', '2017-12-05 10:14:31', 0),
(276, 178, 803, 'test school', 'bing', '2017-12-05 10:14:31', 0),
(277, 178, 802, 'test school', 'requik', '2017-12-05 10:14:31', 0),
(278, 178, 803, 'tests school', 'requik', '2017-12-05 10:14:31', 0),
(279, 178, 802, 'tests school', 'bing', '2017-12-05 10:14:31', 0),
(280, 178, 803, 'tests school psychologist use', 'requik', '2017-12-05 10:14:31', 0),
(281, 178, 802, 'tests school psychologist use', 'bing', '2017-12-05 10:14:31', 0),
(282, 178, 803, 'test school', 'requik', '2017-12-05 10:14:31', 0),
(283, 178, 802, 'test school', 'bing', '2017-12-05 10:14:31', 0),
(284, 178, 803, 'tests school', 'requik', '2017-12-05 10:14:31', 0),
(285, 178, 802, 'tests school', 'bing', '2017-12-05 10:14:31', 0),
(286, 178, 803, 'tests school psychologist use', 'requik', '2017-12-05 10:14:31', 0),
(287, 178, 802, 'tests school psychologist use', 'bing', '2017-12-05 10:14:31', 0),
(288, 178, 803, 'test school', 'requik', '2017-12-05 10:14:31', 0),
(289, 178, 802, 'test school', 'bing', '2017-12-05 10:14:31', 0),
(290, 178, 803, 'tests school', 'bing', '2017-12-05 10:14:31', 0),
(291, 178, 803, 'tests school psychologist use', 'bing', '2017-12-05 10:14:31', 0),
(292, 178, 803, 'test school', 'bing', '2017-12-05 10:14:31', 0),
(293, 178, 803, 'tests school', 'bing', '2017-12-05 10:14:31', 0),
(294, 178, 803, 'tests school psychologist use', 'bing', '2017-12-05 10:14:31', 0),
(295, 178, 803, 'test school', 'bing', '2017-12-05 10:14:31', 0),
(296, 178, 807, 'tests school', 'bing', '2017-12-05 10:14:32', 0),
(297, 178, 807, 'tests school psychologist use', 'bing', '2017-12-05 10:14:32', 0),
(298, 178, 807, 'test school', 'bing', '2017-12-05 10:14:32', 0),
(299, 178, 807, 'tests school', 'bing', '2017-12-05 10:14:32', 0),
(300, 178, 807, 'tests school psychologist use', 'bing', '2017-12-05 10:14:32', 0),
(301, 178, 807, 'test school', 'bing', '2017-12-05 10:14:32', 0),
(302, 178, 807, 'tests school', 'requik', '2017-12-05 10:14:32', 0),
(303, 178, 807, 'tests school psychologist use', 'requik', '2017-12-05 10:14:32', 0),
(304, 178, 807, 'test school', 'requik', '2017-12-05 10:14:32', 0),
(305, 178, 807, 'tests school', 'requik', '2017-12-05 10:14:32', 0),
(306, 178, 807, 'tests school psychologist use', 'requik', '2017-12-05 10:14:32', 0),
(307, 178, 807, 'test school', 'requik', '2017-12-05 10:14:32', 0),
(308, 178, 807, 'tests school', 'bing', '2017-12-05 10:14:32', 0),
(309, 178, 807, 'tests school psychologist use', 'bing', '2017-12-05 10:14:32', 0),
(310, 178, 807, 'test school', 'bing', '2017-12-05 10:14:32', 0),
(311, 178, 807, 'tests school', 'bing', '2017-12-05 10:14:32', 0),
(312, 178, 807, 'tests school psychologist use', 'bing', '2017-12-05 10:14:32', 0),
(313, 178, 807, 'test school', 'bing', '2017-12-05 10:14:32', 0),
(314, 178, 805, 'tests school', 'bing', '2017-12-05 10:14:32', 0),
(315, 178, 804, 'tests school', 'bing', '2017-12-05 10:14:32', 0),
(316, 178, 805, 'tests school psychologist use', 'bing', '2017-12-05 10:14:32', 0),
(317, 178, 804, 'tests school psychologist use', 'bing', '2017-12-05 10:14:32', 0),
(318, 178, 805, 'test school', 'bing', '2017-12-05 10:14:32', 0),
(319, 178, 804, 'test school', 'bing', '2017-12-05 10:14:32', 0),
(320, 178, 805, 'tests school', 'bing', '2017-12-05 10:14:32', 0),
(321, 178, 804, 'tests school', 'bing', '2017-12-05 10:14:32', 0),
(322, 178, 805, 'tests school psychologist use', 'bing', '2017-12-05 10:14:32', 0),
(323, 178, 804, 'tests school psychologist use', 'bing', '2017-12-05 10:14:32', 0),
(324, 178, 805, 'test school', 'bing', '2017-12-05 10:14:32', 0),
(325, 178, 804, 'test school', 'bing', '2017-12-05 10:14:32', 0),
(326, 178, 805, 'tests school', 'requik', '2017-12-05 10:14:32', 0),
(327, 178, 804, 'tests school', 'requik', '2017-12-05 10:14:32', 0),
(328, 178, 805, 'tests school psychologist use', 'requik', '2017-12-05 10:14:32', 0),
(329, 178, 804, 'tests school psychologist use', 'requik', '2017-12-05 10:14:32', 0),
(330, 178, 805, 'test school', 'requik', '2017-12-05 10:14:32', 0),
(331, 178, 804, 'test school', 'requik', '2017-12-05 10:14:32', 0),
(332, 178, 805, 'tests school', 'requik', '2017-12-05 10:14:32', 0),
(333, 178, 804, 'tests school', 'requik', '2017-12-05 10:14:32', 0),
(334, 178, 805, 'tests school psychologist use', 'requik', '2017-12-05 10:14:32', 0),
(335, 178, 804, 'tests school psychologist use', 'requik', '2017-12-05 10:14:32', 0),
(336, 178, 805, 'test school', 'requik', '2017-12-05 10:14:32', 0),
(337, 178, 804, 'test school', 'requik', '2017-12-05 10:14:32', 0),
(338, 178, 805, 'tests school', 'bing', '2017-12-05 10:14:32', 0),
(339, 178, 804, 'tests school', 'bing', '2017-12-05 10:14:32', 0),
(340, 178, 805, 'tests school psychologist use', 'bing', '2017-12-05 10:14:32', 0),
(341, 178, 804, 'tests school psychologist use', 'bing', '2017-12-05 10:14:32', 0),
(342, 178, 805, 'test school', 'bing', '2017-12-05 10:14:32', 0),
(343, 178, 804, 'test school', 'bing', '2017-12-05 10:14:32', 0),
(344, 178, 805, 'tests school', 'bing', '2017-12-05 10:14:32', 0),
(345, 178, 804, 'tests school', 'bing', '2017-12-05 10:14:32', 0),
(346, 178, 805, 'tests school psychologist use', 'bing', '2017-12-05 10:14:32', 0),
(347, 178, 804, 'tests school psychologist use', 'bing', '2017-12-05 10:14:32', 0),
(348, 178, 805, 'test school', 'bing', '2017-12-05 10:14:32', 0),
(349, 178, 804, 'test school', 'bing', '2017-12-05 10:14:32', 0),
(350, 178, 806, 'tests school', 'bing', '2017-12-05 10:14:32', 0),
(351, 178, 806, 'tests school psychologist use', 'bing', '2017-12-05 10:14:32', 0),
(352, 178, 806, 'test school', 'bing', '2017-12-05 10:14:32', 0),
(353, 178, 806, 'tests school', 'bing', '2017-12-05 10:14:32', 0),
(354, 178, 806, 'tests school psychologist use', 'bing', '2017-12-05 10:14:32', 0),
(355, 178, 806, 'test school', 'bing', '2017-12-05 10:14:32', 0),
(356, 178, 806, 'tests school', 'requik', '2017-12-05 10:14:32', 0),
(357, 178, 806, 'tests school psychologist use', 'requik', '2017-12-05 10:14:32', 0),
(358, 178, 806, 'test school', 'requik', '2017-12-05 10:14:32', 0),
(359, 178, 806, 'tests school', 'requik', '2017-12-05 10:14:32', 0),
(360, 178, 806, 'tests school psychologist use', 'requik', '2017-12-05 10:14:32', 0),
(361, 178, 806, 'test school', 'requik', '2017-12-05 10:14:32', 0),
(362, 178, 806, 'tests school', 'bing', '2017-12-05 10:14:32', 0),
(363, 178, 806, 'tests school psychologist use', 'bing', '2017-12-05 10:14:32', 0),
(364, 178, 806, 'test school', 'bing', '2017-12-05 10:14:32', 0),
(365, 178, 806, 'tests school', 'bing', '2017-12-05 10:14:32', 0),
(366, 178, 806, 'tests school psychologist use', 'bing', '2017-12-05 10:14:32', 0),
(367, 178, 806, 'test school', 'bing', '2017-12-05 10:14:32', 0),
(368, 179, 808, 'unilver el segundo ca', 'requik', '2017-12-05 10:18:33', 0),
(369, 179, 808, 'unilver price strategy', 'requik', '2017-12-05 10:18:33', 0),
(370, 179, 808, 'unilver country crock', 'requik', '2017-12-05 10:18:33', 0),
(371, 179, 808, 'unilver el segundo ca', 'bing', '2017-12-05 10:18:33', 0),
(372, 179, 808, 'unilver price strategy', 'bing', '2017-12-05 10:18:33', 0),
(373, 179, 808, 'unilver country crock', 'bing', '2017-12-05 10:18:33', 0),
(374, 195, 809, 'hello baby miami', 'requik', '2017-12-05 13:10:54', 1),
(375, 195, 809, 'hello baby magazine', 'requik', '2017-12-05 13:10:54', 1),
(376, 195, 809, 'hello baby monitor', 'requik', '2017-12-05 13:10:54', 1),
(377, 195, 809, 'hello baby miami', 'requik', '2017-12-05 13:10:54', 0),
(378, 195, 809, 'hello baby magazine', 'requik', '2017-12-05 13:10:54', 1),
(379, 195, 809, 'hello baby monitor', 'requik', '2017-12-05 13:10:54', 1),
(380, 195, 809, 'hello baby miami', 'bing', '2017-12-05 13:10:54', 0),
(381, 195, 809, 'hello baby magazine', 'bing', '2017-12-05 13:10:54', 1),
(382, 195, 809, 'hello baby monitor', 'bing', '2017-12-05 13:10:54', 1),
(383, 195, 809, 'hello baby miami', 'bing', '2017-12-05 13:10:54', 0),
(384, 195, 809, 'hello baby magazine', 'bing', '2017-12-05 13:10:54', 0),
(385, 195, 809, 'hello baby monitor', 'bing', '2017-12-05 13:10:54', 0),
(386, 195, 810, 'hello baby miami', 'requik', '2017-12-05 13:10:54', 1),
(387, 195, 810, 'hello baby magazine', 'requik', '2017-12-05 13:10:54', 1),
(388, 195, 810, 'hello baby monitor', 'requik', '2017-12-05 13:10:54', 1),
(389, 195, 810, 'hello baby miami', 'requik', '2017-12-05 13:10:54', 0),
(390, 195, 810, 'hello baby magazine', 'requik', '2017-12-05 13:10:54', 1),
(391, 195, 810, 'hello baby monitor', 'requik', '2017-12-05 13:10:54', 1),
(392, 195, 810, 'hello baby miami', 'bing', '2017-12-05 13:10:54', 0),
(393, 195, 810, 'hello baby magazine', 'bing', '2017-12-05 13:10:54', 1),
(394, 195, 810, 'hello baby monitor', 'bing', '2017-12-05 13:10:54', 1),
(395, 195, 810, 'hello baby miami', 'bing', '2017-12-05 13:10:54', 0),
(396, 195, 810, 'hello baby magazine', 'bing', '2017-12-05 13:10:54', 0),
(397, 195, 810, 'hello baby monitor', 'bing', '2017-12-05 13:10:54', 0),
(398, 197, 811, 'bible is good for', 'requik', '2017-12-05 13:12:15', 1),
(399, 197, 811, 'bible is good for teaching', 'requik', '2017-12-05 13:12:15', 1),
(400, 197, 811, 'bible is good for instruction', 'requik', '2017-12-05 13:12:15', 0),
(401, 197, 811, 'bible is good for', 'bing', '2017-12-05 13:12:15', 0),
(402, 197, 811, 'bible is good for teaching', 'bing', '2017-12-05 13:12:15', 0),
(403, 197, 811, 'bible is good for instruction', 'bing', '2017-12-05 13:12:15', 0),
(404, 198, 812, 'bible stands', 'requik', '2017-12-05 13:16:53', 0),
(405, 198, 812, 'bible stands for', 'requik', '2017-12-05 13:16:53', 0),
(406, 198, 812, 'bible stands for what', 'requik', '2017-12-05 13:16:53', 0),
(407, 198, 812, 'bible stands', 'bing', '2017-12-05 13:16:53', 0),
(408, 198, 812, 'bible stands for', 'bing', '2017-12-05 13:16:53', 0),
(409, 198, 812, 'bible stands for what', 'bing', '2017-12-05 13:16:53', 1),
(410, 202, 534, 'bible stands for what', 'requik', '2017-12-05 13:25:43', 0),
(411, 202, 534, 'bible stands for sale', 'requik', '2017-12-05 13:25:43', 1),
(412, 202, 534, 'bible stands for bibles', 'requik', '2017-12-05 13:25:43', 1),
(413, 202, 534, 'bible stands for what', 'bing', '2017-12-05 13:25:43', 1),
(414, 202, 534, 'bible stands for sale', 'bing', '2017-12-05 13:25:43', 0),
(415, 202, 534, 'bible stands for bibles', 'bing', '2017-12-05 13:25:43', 0),
(416, 205, 535, 'bandit review', 'requik', '2017-12-05 13:29:04', 0),
(417, 205, 535, 'bandit signs', 'requik', '2017-12-05 13:29:04', 0),
(418, 205, 535, 'bandit 1250', 'requik', '2017-12-05 13:29:04', 0),
(419, 205, 535, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(420, 205, 535, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(421, 205, 535, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(422, 205, 535, 'bandit review', 'requik', '2017-12-05 13:29:04', 0),
(423, 205, 535, 'bandit signs', 'requik', '2017-12-05 13:29:04', 0),
(424, 205, 535, 'bandit 1250', 'requik', '2017-12-05 13:29:04', 0),
(425, 205, 535, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(426, 205, 535, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(427, 205, 535, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(428, 205, 535, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(429, 205, 535, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(430, 205, 535, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(431, 205, 537, 'bandit review', 'requik', '2017-12-05 13:29:04', 0),
(432, 205, 537, 'bandit signs', 'requik', '2017-12-05 13:29:04', 0),
(433, 205, 537, 'bandit 1250', 'requik', '2017-12-05 13:29:04', 0),
(434, 205, 537, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(435, 205, 537, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(436, 205, 537, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(437, 205, 537, 'bandit review', 'requik', '2017-12-05 13:29:04', 0),
(438, 205, 537, 'bandit signs', 'requik', '2017-12-05 13:29:04', 0),
(439, 205, 537, 'bandit 1250', 'requik', '2017-12-05 13:29:04', 0),
(440, 205, 537, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(441, 205, 537, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(442, 205, 537, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(443, 205, 537, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(444, 205, 537, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(445, 205, 537, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(446, 205, 543, 'bandit review', 'requik', '2017-12-05 13:29:04', 0),
(447, 205, 536, 'bandit review', 'requik', '2017-12-05 13:29:04', 0),
(448, 205, 543, 'bandit signs', 'requik', '2017-12-05 13:29:04', 0),
(449, 205, 543, 'bandit 1250', 'requik', '2017-12-05 13:29:04', 0),
(450, 205, 536, 'bandit signs', 'requik', '2017-12-05 13:29:04', 0),
(451, 205, 543, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(452, 205, 536, 'bandit 1250', 'requik', '2017-12-05 13:29:04', 0),
(453, 205, 536, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(454, 205, 539, 'bandit review', 'requik', '2017-12-05 13:29:04', 0),
(455, 205, 536, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(456, 205, 536, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(457, 205, 539, 'bandit signs', 'requik', '2017-12-05 13:29:04', 0),
(458, 205, 536, 'bandit review', 'requik', '2017-12-05 13:29:04', 0),
(459, 205, 539, 'bandit 1250', 'requik', '2017-12-05 13:29:04', 0),
(460, 205, 536, 'bandit signs', 'requik', '2017-12-05 13:29:04', 0),
(461, 205, 543, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(462, 205, 536, 'bandit 1250', 'requik', '2017-12-05 13:29:04', 0),
(463, 205, 539, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(464, 205, 543, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(465, 205, 536, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(466, 205, 539, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(467, 205, 543, 'bandit review', 'requik', '2017-12-05 13:29:04', 0),
(468, 205, 536, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(469, 205, 543, 'bandit signs', 'requik', '2017-12-05 13:29:04', 0),
(470, 205, 539, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(471, 205, 542, 'bandit review', 'requik', '2017-12-05 13:29:04', 0),
(472, 205, 536, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(473, 205, 543, 'bandit 1250', 'requik', '2017-12-05 13:29:04', 0),
(474, 205, 542, 'bandit signs', 'requik', '2017-12-05 13:29:04', 0),
(475, 205, 536, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(476, 205, 543, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(477, 205, 539, 'bandit review', 'requik', '2017-12-05 13:29:04', 0),
(478, 205, 542, 'bandit 1250', 'requik', '2017-12-05 13:29:04', 0),
(479, 205, 536, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(480, 205, 543, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(481, 205, 542, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(482, 205, 543, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(483, 205, 536, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(484, 205, 539, 'bandit signs', 'requik', '2017-12-05 13:29:04', 0),
(485, 205, 542, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(486, 205, 543, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(487, 205, 542, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(488, 205, 543, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(489, 205, 539, 'bandit 1250', 'requik', '2017-12-05 13:29:04', 0),
(490, 205, 542, 'bandit review', 'requik', '2017-12-05 13:29:04', 0),
(491, 205, 543, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(492, 205, 540, 'bandit review', 'requik', '2017-12-05 13:29:04', 0),
(493, 205, 539, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(494, 205, 542, 'bandit signs', 'requik', '2017-12-05 13:29:04', 0),
(495, 205, 542, 'bandit 1250', 'requik', '2017-12-05 13:29:04', 0),
(496, 205, 539, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(497, 205, 542, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(498, 205, 539, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(499, 205, 540, 'bandit signs', 'requik', '2017-12-05 13:29:04', 0),
(500, 205, 541, 'bandit review', 'requik', '2017-12-05 13:29:04', 0),
(501, 205, 542, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(502, 205, 539, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(503, 205, 540, 'bandit 1250', 'requik', '2017-12-05 13:29:04', 0),
(504, 205, 542, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(505, 205, 539, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(506, 205, 541, 'bandit signs', 'requik', '2017-12-05 13:29:04', 0),
(507, 205, 540, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(508, 205, 542, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(509, 205, 540, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(510, 205, 542, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(511, 205, 541, 'bandit 1250', 'requik', '2017-12-05 13:29:04', 0),
(512, 205, 540, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(513, 205, 542, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(514, 205, 540, 'bandit review', 'requik', '2017-12-05 13:29:04', 0),
(515, 205, 540, 'bandit signs', 'requik', '2017-12-05 13:29:04', 0),
(516, 205, 539, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(517, 205, 538, 'bandit review', 'requik', '2017-12-05 13:29:04', 0),
(518, 205, 540, 'bandit 1250', 'requik', '2017-12-05 13:29:04', 0),
(519, 205, 541, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(520, 205, 538, 'bandit signs', 'requik', '2017-12-05 13:29:04', 0),
(521, 205, 540, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(522, 205, 538, 'bandit 1250', 'requik', '2017-12-05 13:29:04', 0),
(523, 205, 540, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(524, 205, 541, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(525, 205, 538, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(526, 205, 540, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(527, 205, 541, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(528, 205, 538, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(529, 205, 540, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(530, 205, 541, 'bandit review', 'requik', '2017-12-05 13:29:04', 0),
(531, 205, 538, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(532, 205, 540, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(533, 205, 541, 'bandit signs', 'requik', '2017-12-05 13:29:04', 0),
(534, 205, 538, 'bandit review', 'requik', '2017-12-05 13:29:04', 0),
(535, 205, 540, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(536, 205, 541, 'bandit 1250', 'requik', '2017-12-05 13:29:04', 0),
(537, 205, 538, 'bandit signs', 'requik', '2017-12-05 13:29:04', 0),
(538, 205, 541, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(539, 205, 538, 'bandit 1250', 'requik', '2017-12-05 13:29:04', 0),
(540, 205, 541, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(541, 205, 538, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(542, 205, 541, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(543, 205, 538, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(544, 205, 541, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(545, 205, 538, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(546, 205, 541, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(547, 205, 538, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(548, 205, 541, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(549, 205, 538, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(550, 205, 538, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(551, 205, 544, 'bandit review', 'requik', '2017-12-05 13:29:04', 0),
(552, 205, 544, 'bandit signs', 'requik', '2017-12-05 13:29:04', 0),
(553, 205, 544, 'bandit 1250', 'requik', '2017-12-05 13:29:04', 0),
(554, 205, 544, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(555, 205, 544, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(556, 205, 544, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(557, 205, 544, 'bandit review', 'requik', '2017-12-05 13:29:04', 0),
(558, 205, 544, 'bandit signs', 'requik', '2017-12-05 13:29:04', 0),
(559, 205, 544, 'bandit 1250', 'requik', '2017-12-05 13:29:04', 0),
(560, 205, 544, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(561, 205, 544, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(562, 205, 544, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(563, 205, 544, 'bandit review', 'bing', '2017-12-05 13:29:04', 0),
(564, 205, 544, 'bandit signs', 'bing', '2017-12-05 13:29:04', 0),
(565, 205, 544, 'bandit 1250', 'bing', '2017-12-05 13:29:04', 0),
(566, 207, 545, 'we are the best', 'requik', '2017-12-05 13:34:27', 0),
(567, 207, 545, 'we are the best meme', 'requik', '2017-12-05 13:34:27', 0),
(568, 207, 545, 'we are the best team', 'requik', '2017-12-05 13:34:27', 0),
(569, 207, 545, 'we are the best', 'bing', '2017-12-05 13:34:27', 0),
(570, 207, 545, 'we are the best meme', 'bing', '2017-12-05 13:34:27', 1),
(571, 207, 545, 'we are the best team', 'bing', '2017-12-05 13:34:27', 0),
(572, 209, 546, 'i am new mexico', 'requik', '2017-12-05 13:36:22', 0),
(573, 209, 546, 'i am new york', 'requik', '2017-12-05 13:36:22', 1),
(574, 209, 546, 'i am new lyrics', 'requik', '2017-12-05 13:36:22', 0),
(575, 209, 546, 'i am new mexico', 'bing', '2017-12-05 13:36:22', 0),
(576, 209, 546, 'i am new york', 'bing', '2017-12-05 13:36:22', 1),
(577, 209, 546, 'i am new lyrics', 'bing', '2017-12-05 13:36:22', 0),
(578, 210, 547, 'forex trade', 'requik', '2017-12-05 13:37:47', 0),
(579, 210, 547, 'forex trader', 'requik', '2017-12-05 13:37:47', 0),
(580, 210, 547, 'forex trade shows', 'requik', '2017-12-05 13:37:47', 1),
(581, 210, 547, 'forex trade', 'bing', '2017-12-05 13:37:47', 0),
(582, 210, 547, 'forex trader', 'bing', '2017-12-05 13:37:47', 0),
(583, 210, 547, 'forex trade shows', 'bing', '2017-12-05 13:37:47', 0),
(584, 210, 548, 'forex trade', 'requik', '2017-12-05 13:37:48', 0),
(585, 210, 548, 'forex trader', 'requik', '2017-12-05 13:37:48', 0),
(586, 210, 548, 'forex trade shows', 'requik', '2017-12-05 13:37:48', 1),
(587, 210, 548, 'forex trade', 'bing', '2017-12-05 13:37:48', 0),
(588, 210, 548, 'forex trader', 'bing', '2017-12-05 13:37:48', 0),
(589, 210, 548, 'forex trade shows', 'bing', '2017-12-05 13:37:48', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searchlinks`
--
ALTER TABLE `searchlinks`
  ADD PRIMARY KEY (`id`), ADD KEY `visitorid` (`sessionid`), ADD KEY `searchid` (`searchid`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessionsearch`
--
ALTER TABLE `sessionsearch`
  ADD PRIMARY KEY (`id`), ADD KEY `visitorid` (`sessionid`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `searchlinks`
--
ALTER TABLE `searchlinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=212;
--
-- AUTO_INCREMENT for table `sessionsearch`
--
ALTER TABLE `sessionsearch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=549;
--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=590;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `searchlinks`
--
ALTER TABLE `searchlinks`
ADD CONSTRAINT `searchlinks_ibfk_1` FOREIGN KEY (`sessionid`) REFERENCES `session` (`id`),
ADD CONSTRAINT `searchlinks_ibfk_2` FOREIGN KEY (`searchid`) REFERENCES `sessionsearch` (`id`);

--
-- Constraints for table `sessionsearch`
--
ALTER TABLE `sessionsearch`
ADD CONSTRAINT `sessionsearch_ibfk_2` FOREIGN KEY (`sessionid`) REFERENCES `session` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
