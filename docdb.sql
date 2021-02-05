-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2021 at 01:17 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `docdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `docs`
--

CREATE TABLE `docs` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `page` text NOT NULL,
  `link` text NOT NULL,
  `title` text NOT NULL,
  `topic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `docs`
--

INSERT INTO `docs` (`id`, `site_id`, `page`, `link`, `title`, `topic`) VALUES
(140, 2, 'http://www.pellekan.ir/', 'http://pellekan.ir/Uploads/PDF/pellekan-fehreste-kalahaye-danesh-boniyan.pdf', 'موسسه پلکان | کلینیک تخصصی مالکیت فکری(ثبت اختراع وبرند) ', 'موسسه پلکان | کلینیک تخصصی مالکیت فکری(ثبت اختراع وبرند) '),
(141, 1, 'https://khev.um.ac.ir/index.php/component/content/article/112-%D9%85%D9%88%D8%B3%D8%B3%D9%87-%D8%BA%DB%8C%D8%B1%D9%85%D8%AC%D8%A7%D8%B2/476-2018-10-08-07-05-57.html', 'https://khev.um.ac.ir/images/171/akhbar/akademi.pdf', 'هیأت نظارت،ارزیابی و تضمین کیفیت آموزش عالی  خراسان رضوی', ' (هیأت نظارت، ارزیابی و تضمین کیفیت علوم، تحقیقات و فناوری خراسان رضوی)'),
(142, 1, 'https://khev.um.ac.ir/index.php/component/content/article/112-%D9%85%D9%88%D8%B3%D8%B3%D9%87-%D8%BA%DB%8C%D8%B1%D9%85%D8%AC%D8%A7%D8%B2/476-2018-10-08-07-05-57.html', 'https://khev.um.ac.ir/images/171/test/oloom_shomal.pdf', 'هیأت نظارت،ارزیابی و تضمین کیفیت آموزش عالی  خراسان رضوی', ' (هیأت نظارت، ارزیابی و تضمین کیفیت علوم، تحقیقات و فناوری خراسان رضوی)'),
(143, 1, 'https://khev.um.ac.ir/index.php/component/content/article/112-%D9%85%D9%88%D8%B3%D8%B3%D9%87-%D8%BA%DB%8C%D8%B1%D9%85%D8%AC%D8%A7%D8%B2/476-2018-10-08-07-05-57.html', 'https://khev.um.ac.ir/images/171/test/shahbazi.pdf', 'هیأت نظارت،ارزیابی و تضمین کیفیت آموزش عالی  خراسان رضوی', ' (هیأت نظارت، ارزیابی و تضمین کیفیت علوم، تحقیقات و فناوری خراسان رضوی)'),
(144, 1, 'https://khev.um.ac.ir/index.php/component/content/article/112-%D9%85%D9%88%D8%B3%D8%B3%D9%87-%D8%BA%DB%8C%D8%B1%D9%85%D8%AC%D8%A7%D8%B2/476-2018-10-08-07-05-57.html', 'https://khev.um.ac.ir/images/171/akhbar/arvand.pdf', 'هیأت نظارت،ارزیابی و تضمین کیفیت آموزش عالی  خراسان رضوی', ' (هیأت نظارت، ارزیابی و تضمین کیفیت علوم، تحقیقات و فناوری خراسان رضوی)'),
(145, 1, 'https://khev.um.ac.ir/index.php/component/content/article/112-%D9%85%D9%88%D8%B3%D8%B3%D9%87-%D8%BA%DB%8C%D8%B1%D9%85%D8%AC%D8%A7%D8%B2/476-2018-10-08-07-05-57.html', 'https://khev.um.ac.ir/images/171/mahortos.pdf', 'هیأت نظارت،ارزیابی و تضمین کیفیت آموزش عالی  خراسان رضوی', ' (هیأت نظارت، ارزیابی و تضمین کیفیت علوم، تحقیقات و فناوری خراسان رضوی)'),
(146, 1, 'https://khev.um.ac.ir/index.php/component/content/article/112-%D9%85%D9%88%D8%B3%D8%B3%D9%87-%D8%BA%DB%8C%D8%B1%D9%85%D8%AC%D8%A7%D8%B2/476-2018-10-08-07-05-57.html', 'https://khev.um.ac.ir/images/171/shojaei/kian_fmojavez.pdf', 'هیأت نظارت،ارزیابی و تضمین کیفیت آموزش عالی  خراسان رضوی', ' (هیأت نظارت، ارزیابی و تضمین کیفیت علوم، تحقیقات و فناوری خراسان رضوی)'),
(147, 1, 'https://khev.um.ac.ir/index.php/component/content/article/106-%D9%85%D9%86%D8%A7%D8%A8%D8%B9-%D8%B9%D9%84%D9%85%DB%8C/685-%D9%BE%D8%A7%DB%8C%D8%A7%D9%86-%D9%86%D8%A7%D9%85%D9%87.html', 'https://khev.um.ac.ir/images/171/new/aiinnameha/payanname/%D8%AA%D9%87%D8%AF%DB%8C%D8%AF%D8%A7%D8%AA_%D9%88_%D9%81%D8%B1%D8%B5%D8%AA%D9%87%D8%A7%DB%8C_%D9%BE%D8%AF%DB%8C%D8%AF%D9%87_%D8%AC%D9%87%D8%A7%D9%86%DB%8C_%D8%B4%D8%AF%D9%86_%D8%A8%D8%B1_%D8%A2%D9%85%D9%88%D8%B2%D8%B4_%D8%B9%D8%A7%D9%84%DB%8C_%D8%AE%D9%84%D8%A7%D8%B5%D9%87.pdf', 'هیأت نظارت،ارزیابی و تضمین کیفیت آموزش عالی  خراسان رضوی', ' (هیأت نظارت، ارزیابی و تضمین کیفیت علوم، تحقیقات و فناوری خراسان رضوی)'),
(148, 1, 'https://khev.um.ac.ir/index.php/component/content/article/106-%D9%85%D9%86%D8%A7%D8%A8%D8%B9-%D8%B9%D9%84%D9%85%DB%8C/685-%D9%BE%D8%A7%DB%8C%D8%A7%D9%86-%D9%86%D8%A7%D9%85%D9%87.html', 'https://khev.um.ac.ir/images/171/new/aiinnameha/payanname/%20%20%20%20%20%20%20%20.pdf', 'هیأت نظارت،ارزیابی و تضمین کیفیت آموزش عالی  خراسان رضوی', ' (هیأت نظارت، ارزیابی و تضمین کیفیت علوم، تحقیقات و فناوری خراسان رضوی)'),
(149, 1, 'https://khev.um.ac.ir/index.php/component/content/article/106-%D9%85%D9%86%D8%A7%D8%A8%D8%B9-%D8%B9%D9%84%D9%85%DB%8C/685-%D9%BE%D8%A7%DB%8C%D8%A7%D9%86-%D9%86%D8%A7%D9%85%D9%87.html', 'https://khev.um.ac.ir/images/171/new/aiinnameha/payanname/brasii%20avamel%20kholashe.pdf', 'هیأت نظارت،ارزیابی و تضمین کیفیت آموزش عالی  خراسان رضوی', ' (هیأت نظارت، ارزیابی و تضمین کیفیت علوم، تحقیقات و فناوری خراسان رضوی)'),
(150, 1, 'https://khev.um.ac.ir/index.php/component/content/article/106-%D9%85%D9%86%D8%A7%D8%A8%D8%B9-%D8%B9%D9%84%D9%85%DB%8C/685-%D9%BE%D8%A7%DB%8C%D8%A7%D9%86-%D9%86%D8%A7%D9%85%D9%87.html', 'https://khev.um.ac.ir/images/171/new/aiinnameha/payanname/%D8%A8%D8%B1%D8%B1%D8%B3%DB%8C_%D8%AA%D8%B7%D8%A8%DB%8C%D9%82%DB%8C_%D8%A7%D9%84%DA%AF%D9%88%D9%87%D8%A7%DB%8C_%D8%AA%D9%88%D8%B3%D8%B9%D9%87_%DA%A9%D9%85%DB%8C_%D9%88_%DA%A9%DB%8C%D9%81%DB%8C_%D8%A2%D9%85%D9%88%D8%B2%D8%B4_%D8%B9%D8%A7%D9%84%DB%8C_%D8%AF%D8%B1_%DA%A9%D8%B4%D9%88%D8%B1%D9%87%D8%A7%DB%8C_%D8%A7%DB%8C%D8%B1%D8%A7%D9%86_%D8%B3%D9%88%D8%A6%D8%AF_%D9%88_%D9%86%D8%B1%D9%88%DA%98_%D8%AE%D9%84%D8%A7%D8%B5%D9%87.pdf', 'هیأت نظارت،ارزیابی و تضمین کیفیت آموزش عالی  خراسان رضوی', ' (هیأت نظارت، ارزیابی و تضمین کیفیت علوم، تحقیقات و فناوری خراسان رضوی)'),
(151, 1, 'https://khev.um.ac.ir/index.php/component/content/article/106-%D9%85%D9%86%D8%A7%D8%A8%D8%B9-%D8%B9%D9%84%D9%85%DB%8C/685-%D9%BE%D8%A7%DB%8C%D8%A7%D9%86-%D9%86%D8%A7%D9%85%D9%87.html', 'https://khev.um.ac.ir/images/171/new/aiinnameha/payanname/barresi%20tatbighi%20norvezh.pdf', 'هیأت نظارت،ارزیابی و تضمین کیفیت آموزش عالی  خراسان رضوی', ' (هیأت نظارت، ارزیابی و تضمین کیفیت علوم، تحقیقات و فناوری خراسان رضوی)'),
(152, 1, 'https://khev.um.ac.ir/index.php/component/content/article/106-%D9%85%D9%86%D8%A7%D8%A8%D8%B9-%D8%B9%D9%84%D9%85%DB%8C/685-%D9%BE%D8%A7%DB%8C%D8%A7%D9%86-%D9%86%D8%A7%D9%85%D9%87.html', 'https://khev.um.ac.ir/images/171/new/aiinnameha/payanname/arzyabi%20mizan%20barkhordari.pdf', 'هیأت نظارت،ارزیابی و تضمین کیفیت آموزش عالی  خراسان رضوی', ' (هیأت نظارت، ارزیابی و تضمین کیفیت علوم، تحقیقات و فناوری خراسان رضوی)'),
(153, 1, 'https://khev.um.ac.ir/index.php/component/content/article/106-%D9%85%D9%86%D8%A7%D8%A8%D8%B9-%D8%B9%D9%84%D9%85%DB%8C/627-%D8%AE%D8%A8%D8%B1%D9%86%D8%A7%D9%85%D9%87-%D8%A2%D9%85%D9%88%D8%B2%D8%B4-%D8%B9%D8%A7%D9%84%DB%8C.html', 'https://khev.um.ac.ir/images/171/khabarname/khabarname8.pdf', 'هیأت نظارت،ارزیابی و تضمین کیفیت آموزش عالی  خراسان رضوی', ' (هیأت نظارت، ارزیابی و تضمین کیفیت علوم، تحقیقات و فناوری خراسان رضوی)'),
(154, 1, 'https://khev.um.ac.ir/index.php/component/content/article/106-%D9%85%D9%86%D8%A7%D8%A8%D8%B9-%D8%B9%D9%84%D9%85%DB%8C/627-%D8%AE%D8%A8%D8%B1%D9%86%D8%A7%D9%85%D9%87-%D8%A2%D9%85%D9%88%D8%B2%D8%B4-%D8%B9%D8%A7%D9%84%DB%8C.html', 'https://khev.um.ac.ir/images/171/khabarname/KHABARNAME7.pdf', 'هیأت نظارت،ارزیابی و تضمین کیفیت آموزش عالی  خراسان رضوی', ' (هیأت نظارت، ارزیابی و تضمین کیفیت علوم، تحقیقات و فناوری خراسان رضوی)'),
(155, 1, 'https://khev.um.ac.ir/index.php/component/content/article/106-%D9%85%D9%86%D8%A7%D8%A8%D8%B9-%D8%B9%D9%84%D9%85%DB%8C/627-%D8%AE%D8%A8%D8%B1%D9%86%D8%A7%D9%85%D9%87-%D8%A2%D9%85%D9%88%D8%B2%D8%B4-%D8%B9%D8%A7%D9%84%DB%8C.html', 'https://khev.um.ac.ir/images/171/khabarname/khabarname6.pdf', 'هیأت نظارت،ارزیابی و تضمین کیفیت آموزش عالی  خراسان رضوی', ' (هیأت نظارت، ارزیابی و تضمین کیفیت علوم، تحقیقات و فناوری خراسان رضوی)'),
(156, 1, 'https://khev.um.ac.ir/index.php/component/content/article/106-%D9%85%D9%86%D8%A7%D8%A8%D8%B9-%D8%B9%D9%84%D9%85%DB%8C/627-%D8%AE%D8%A8%D8%B1%D9%86%D8%A7%D9%85%D9%87-%D8%A2%D9%85%D9%88%D8%B2%D8%B4-%D8%B9%D8%A7%D9%84%DB%8C.html', 'https://khev.um.ac.ir/images/171/khabarname/khabarname5.pdf', 'هیأت نظارت،ارزیابی و تضمین کیفیت آموزش عالی  خراسان رضوی', ' (هیأت نظارت، ارزیابی و تضمین کیفیت علوم، تحقیقات و فناوری خراسان رضوی)'),
(157, 1, 'https://khev.um.ac.ir/index.php/component/content/article/106-%D9%85%D9%86%D8%A7%D8%A8%D8%B9-%D8%B9%D9%84%D9%85%DB%8C/627-%D8%AE%D8%A8%D8%B1%D9%86%D8%A7%D9%85%D9%87-%D8%A2%D9%85%D9%88%D8%B2%D8%B4-%D8%B9%D8%A7%D9%84%DB%8C.html', 'https://khev.um.ac.ir/images/171/khabarname/khabarname4.pdf', 'هیأت نظارت،ارزیابی و تضمین کیفیت آموزش عالی  خراسان رضوی', ' (هیأت نظارت، ارزیابی و تضمین کیفیت علوم، تحقیقات و فناوری خراسان رضوی)'),
(158, 1, 'https://khev.um.ac.ir/index.php/component/content/article/106-%D9%85%D9%86%D8%A7%D8%A8%D8%B9-%D8%B9%D9%84%D9%85%DB%8C/627-%D8%AE%D8%A8%D8%B1%D9%86%D8%A7%D9%85%D9%87-%D8%A2%D9%85%D9%88%D8%B2%D8%B4-%D8%B9%D8%A7%D9%84%DB%8C.html', 'https://khev.um.ac.ir/images/171/test/khabarname/khabarname3.pdf', 'هیأت نظارت،ارزیابی و تضمین کیفیت آموزش عالی  خراسان رضوی', ' (هیأت نظارت، ارزیابی و تضمین کیفیت علوم، تحقیقات و فناوری خراسان رضوی)'),
(159, 1, 'https://khev.um.ac.ir/index.php/component/content/article/106-%D9%85%D9%86%D8%A7%D8%A8%D8%B9-%D8%B9%D9%84%D9%85%DB%8C/627-%D8%AE%D8%A8%D8%B1%D9%86%D8%A7%D9%85%D9%87-%D8%A2%D9%85%D9%88%D8%B2%D8%B4-%D8%B9%D8%A7%D9%84%DB%8C.html', 'https://khev.um.ac.ir/images/171/test/khabarname/khabarname2.pdf', 'هیأت نظارت،ارزیابی و تضمین کیفیت آموزش عالی  خراسان رضوی', ' (هیأت نظارت، ارزیابی و تضمین کیفیت علوم، تحقیقات و فناوری خراسان رضوی)'),
(160, 1, 'https://khev.um.ac.ir/index.php/component/content/article/106-%D9%85%D9%86%D8%A7%D8%A8%D8%B9-%D8%B9%D9%84%D9%85%DB%8C/627-%D8%AE%D8%A8%D8%B1%D9%86%D8%A7%D9%85%D9%87-%D8%A2%D9%85%D9%88%D8%B2%D8%B4-%D8%B9%D8%A7%D9%84%DB%8C.html', 'https://khev.um.ac.ir/images/171/test/khabarname/khabarname1.pdf', 'هیأت نظارت،ارزیابی و تضمین کیفیت آموزش عالی  خراسان رضوی', ' (هیأت نظارت، ارزیابی و تضمین کیفیت علوم، تحقیقات و فناوری خراسان رضوی)'),
(161, 1, 'https://khev.um.ac.ir/index.php/component/content/article/106-%D9%85%D9%86%D8%A7%D8%A8%D8%B9-%D8%B9%D9%84%D9%85%DB%8C/735-%D9%85%D8%AC%D9%85%D9%88%D8%B9%D9%87-%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%DA%A9%D9%86%D9%81%D8%B1%D8%A7%D9%86%D8%B3%E2%80%8C%D9%87%D8%A7.html', 'https://khev.um.ac.ir/images/171/akhbar/13homin.pdf', 'هیأت نظارت،ارزیابی و تضمین کیفیت آموزش عالی  خراسان رضوی', ' (هیأت نظارت، ارزیابی و تضمین کیفیت علوم، تحقیقات و فناوری خراسان رضوی)'),
(162, 1, 'https://khev.um.ac.ir/index.php/component/content/article/106-%D9%85%D9%86%D8%A7%D8%A8%D8%B9-%D8%B9%D9%84%D9%85%DB%8C/735-%D9%85%D8%AC%D9%85%D9%88%D8%B9%D9%87-%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%DA%A9%D9%86%D9%81%D8%B1%D8%A7%D9%86%D8%B3%E2%80%8C%D9%87%D8%A7.html', 'https://khev.um.ac.ir/images/171/akhbar/12homin.pdf', 'هیأت نظارت،ارزیابی و تضمین کیفیت آموزش عالی  خراسان رضوی', ' (هیأت نظارت، ارزیابی و تضمین کیفیت علوم، تحقیقات و فناوری خراسان رضوی)'),
(163, 1, 'https://khev.um.ac.ir/index.php/component/content/article/106-%D9%85%D9%86%D8%A7%D8%A8%D8%B9-%D8%B9%D9%84%D9%85%DB%8C/735-%D9%85%D8%AC%D9%85%D9%88%D8%B9%D9%87-%D9%85%D9%82%D8%A7%D9%84%D8%A7%D8%AA-%DA%A9%D9%86%D9%81%D8%B1%D8%A7%D9%86%D8%B3%E2%80%8C%D9%87%D8%A7.html', 'https://khev.um.ac.ir/images/171/akhbar/11homin.pdf', 'هیأت نظارت،ارزیابی و تضمین کیفیت آموزش عالی  خراسان رضوی', ' (هیأت نظارت، ارزیابی و تضمین کیفیت علوم، تحقیقات و فناوری خراسان رضوی)'),
(164, 4, 'https://tvu.ac.ir/./fa/content/id/id=463184', 'https://tvu.ac.ir/./fa/content/id/id=463184/./file/2/attach2019091167786100195667.pdf', '           ارتباط با ما |         دانشگاه فنی و حرفه ای  ', 'ارتباط با ما'),
(165, 4, 'https://tvu.ac.ir/./fa/562205/-', 'https://tvu.ac.ir/./fa/562205/-/./file/2/attach2021012665492460341129.pdf', '           . |         دانشگاه فنی و حرفه ای  ', '.'),
(166, 4, 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594', 'https://tvu.ac.ir/file/2/attach2020121311300892329249.pdf', '           خبرنامه دانشگاه فنی و حرفه ای |         دانشگاه فنی و حرفه ای  ', 'خبرنامه دانشگاه فنی و حرفه ای'),
(167, 4, 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594', 'https://tvu.ac.ir/file/2/attach2021012449352542335890.pdf', '           خبرنامه دانشگاه فنی و حرفه ای |         دانشگاه فنی و حرفه ای  ', 'خبرنامه دانشگاه فنی و حرفه ای'),
(168, 4, 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594', 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594/./file/2/attach201710370375933698377.pdf', '           خبرنامه دانشگاه فنی و حرفه ای |         دانشگاه فنی و حرفه ای  ', 'خبرنامه دانشگاه فنی و حرفه ای'),
(169, 4, 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594', 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594/./file/2/attach2018013107045570109044.pdf', '           خبرنامه دانشگاه فنی و حرفه ای |         دانشگاه فنی و حرفه ای  ', 'خبرنامه دانشگاه فنی و حرفه ای'),
(170, 4, 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594', 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594/./file/2/attach2018032285334336114239.pdf', '           خبرنامه دانشگاه فنی و حرفه ای |         دانشگاه فنی و حرفه ای  ', 'خبرنامه دانشگاه فنی و حرفه ای'),
(171, 4, 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594', 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594/./file/2/attach2018043325914778116130.pdf', '           خبرنامه دانشگاه فنی و حرفه ای |         دانشگاه فنی و حرفه ای  ', 'خبرنامه دانشگاه فنی و حرفه ای'),
(172, 4, 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594', 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594/./file/2/attach2018052699555128119474.pdf', '           خبرنامه دانشگاه فنی و حرفه ای |         دانشگاه فنی و حرفه ای  ', 'خبرنامه دانشگاه فنی و حرفه ای'),
(173, 4, 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594', 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594/./file/2/attach2018061397047326123216.pdf', '           خبرنامه دانشگاه فنی و حرفه ای |         دانشگاه فنی و حرفه ای  ', 'خبرنامه دانشگاه فنی و حرفه ای'),
(174, 4, 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594', 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594/./file/2/attach2018073347131300126003.pdf', '           خبرنامه دانشگاه فنی و حرفه ای |         دانشگاه فنی و حرفه ای  ', 'خبرنامه دانشگاه فنی و حرفه ای'),
(175, 4, 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594', 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594/./file/2/attach2018093830644814129311.pdf', '           خبرنامه دانشگاه فنی و حرفه ای |         دانشگاه فنی و حرفه ای  ', 'خبرنامه دانشگاه فنی و حرفه ای'),
(176, 4, 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594', 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594/./file/2/attach2018092919933428133390.pdf', '           خبرنامه دانشگاه فنی و حرفه ای |         دانشگاه فنی و حرفه ای  ', 'خبرنامه دانشگاه فنی و حرفه ای'),
(177, 4, 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594', 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594/./file/2/attach2018112898053240137334.pdf', '           خبرنامه دانشگاه فنی و حرفه ای |         دانشگاه فنی و حرفه ای  ', 'خبرنامه دانشگاه فنی و حرفه ای'),
(178, 4, 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594', 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594/./file/2/attach2018121746460972146107.pdf', '           خبرنامه دانشگاه فنی و حرفه ای |         دانشگاه فنی و حرفه ای  ', 'خبرنامه دانشگاه فنی و حرفه ای'),
(179, 4, 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594', 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594/./file/2/attach2019032132158402157428.pdf', '           خبرنامه دانشگاه فنی و حرفه ای |         دانشگاه فنی و حرفه ای  ', 'خبرنامه دانشگاه فنی و حرفه ای'),
(180, 4, 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594', 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594/./file/2/attach2019062652587584176237.pdf', '           خبرنامه دانشگاه فنی و حرفه ای |         دانشگاه فنی و حرفه ای  ', 'خبرنامه دانشگاه فنی و حرفه ای'),
(181, 4, 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594', 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594/./file/2/attach2019083292753588188333.pdf', '           خبرنامه دانشگاه فنی و حرفه ای |         دانشگاه فنی و حرفه ای  ', 'خبرنامه دانشگاه فنی و حرفه ای'),
(182, 4, 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594', 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594/./file/2/attach2019091625593302197501.pdf', '           خبرنامه دانشگاه فنی و حرفه ای |         دانشگاه فنی و حرفه ای  ', 'خبرنامه دانشگاه فنی و حرفه ای'),
(183, 4, 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594', 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594/./file/2/attach2019111264732722206447.pdf', '           خبرنامه دانشگاه فنی و حرفه ای |         دانشگاه فنی و حرفه ای  ', 'خبرنامه دانشگاه فنی و حرفه ای'),
(184, 4, 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594', 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594/./file/2/attach2021012449352542335890.pdf', '           خبرنامه دانشگاه فنی و حرفه ای |         دانشگاه فنی و حرفه ای  ', 'خبرنامه دانشگاه فنی و حرفه ای'),
(185, 4, 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594', 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594/./file/2/attach2020121311300892329249.pdf', '           خبرنامه دانشگاه فنی و حرفه ای |         دانشگاه فنی و حرفه ای  ', 'خبرنامه دانشگاه فنی و حرفه ای'),
(186, 4, 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594', 'https://tvu.ac.ir/./fa/link/id/id=136496/token=3713913594/./file/2/attach2021012847057450335909.pdf', '           خبرنامه دانشگاه فنی و حرفه ای |         دانشگاه فنی و حرفه ای  ', 'خبرنامه دانشگاه فنی و حرفه ای'),
(187, 4, 'https://tvu.ac.ir/./fa/560361/%D9%88%DB%8C%DA%98%D9%87-%D9%86%D8%A7%D9%85%D9%87-%D9%87%D9%81%D8%AA%D9%87-%D9%85%D9%84%DB%8C-%D9%85%D9%87%D8%A7%D8%B1%D8%AA%D8%8C-%DA%A9%D8%A7%D8%B1%D8%A2%D9%81%D8%B1%DB%8C%D9%86%DB%8C-%D9%88-%D8%A2%D9%85%D9%88%D8%B2%D8%B4-%D9%87%D8%A7%DB%8C-%D9%81%D9%86%DB%8C-%D9%88-%D8%AD%D8%B1%D9%81%D9%87-%D8%A7%DB%8C', 'https://tvu.ac.ir/./fa/560361/%D9%88%DB%8C%DA%98%D9%87-%D9%86%D8%A7%D9%85%D9%87-%D9%87%D9%81%D8%AA%D9%87-%D9%85%D9%84%DB%8C-%D9%85%D9%87%D8%A7%D8%B1%D8%AA%D8%8C-%DA%A9%D8%A7%D8%B1%D8%A2%D9%81%D8%B1%DB%8C%D9%86%DB%8C-%D9%88-%D8%A2%D9%85%D9%88%D8%B2%D8%B4-%D9%87%D8%A7%DB%8C-%D9%81%D9%86%DB%8C-%D9%88-%D8%AD%D8%B1%D9%81%D9%87-%D8%A7%DB%8C/./file/2/attach2021014061466672335901.pdf', '           ویژه نامه هفته ملی مهارت، کارآفرینی و آموزش های فنی و حرفه ای |         دانشگاه فنی و حرفه ای  ', 'ویژه نامه هفته ملی مهارت، کارآفرینی و آموزش های فنی و حرفه ای'),
(188, 4, 'https://tvu.ac.ir/./fa/553761/%D8%AF%D9%88%D8%A7%D8%B2%D8%AF%D9%85%DB%8C%D9%86-%D8%B4%D9%85%D8%A7%D8%B1%D9%87-%D8%AE%D8%A8%D8%B1%D9%86%D8%A7%D9%85%D9%87-%D8%A2%D9%85%D9%88%D8%B2%D8%B4-%D8%B9%D8%A7%D9%84%DB%8C', 'https://tvu.ac.ir/./fa/553761/%D8%AF%D9%88%D8%A7%D8%B2%D8%AF%D9%85%DB%8C%D9%86-%D8%B4%D9%85%D8%A7%D8%B1%D9%87-%D8%AE%D8%A8%D8%B1%D9%86%D8%A7%D9%85%D9%87-%D8%A2%D9%85%D9%88%D8%B2%D8%B4-%D8%B9%D8%A7%D9%84%DB%8C/./file/2/attach2020112341477838320474.pdf', '           دوازدمین شماره خبرنامه آموزش عالی |         دانشگاه فنی و حرفه ای  ', 'دوازدمین شماره خبرنامه آموزش عالی'),
(189, 4, 'https://tvu.ac.ir/./fa/549152/%DB%8C%D8%A7%D8%B2%D8%AF%D9%87%D9%85%DB%8C%D9%86-%D8%B4%D9%85%D8%A7%D8%B1%D9%87-%D8%AE%D8%A8%D8%B1%D9%86%D8%A7%D9%85%D9%87-%D8%A2%D9%85%D9%88%D8%B2%D8%B4-%D8%B9%D8%A7%D9%84%DB%8C', 'https://tvu.ac.ir/./fa/549152/%DB%8C%D8%A7%D8%B2%D8%AF%D9%87%D9%85%DB%8C%D9%86-%D8%B4%D9%85%D8%A7%D8%B1%D9%87-%D8%AE%D8%A8%D8%B1%D9%86%D8%A7%D9%85%D9%87-%D8%A2%D9%85%D9%88%D8%B2%D8%B4-%D8%B9%D8%A7%D9%84%DB%8C/./file/2/attach2020101282980874309522.pdf', '           یازدهمین شماره خبرنامه آموزش عالی |         دانشگاه فنی و حرفه ای  ', 'یازدهمین شماره خبرنامه آموزش عالی'),
(190, 4, 'https://tvu.ac.ir/./fa/548860/%D8%B4%D9%85%D8%A7%D8%B1%D9%87-%D8%B3%D9%88%D9%85-%D9%86%D8%B4%D8%B1%DB%8C%D9%87-%D9%81%D9%86-%D9%88%D8%B1%D8%B2-%D8%AF%D8%A7%D9%86%D8%B4%DA%AF%D8%A7%D9%87-%D9%81%D9%86%DB%8C-%D9%88-%D8%AD%D8%B1%D9%81%D9%87-%D8%A7%DB%8C-%D8%A7%D8%B3%D8%AA%D8%A7%D9%86-%D9%81%D8%A7%D8%B1%D8%B3', 'https://tvu.ac.ir/./fa/548860/%D8%B4%D9%85%D8%A7%D8%B1%D9%87-%D8%B3%D9%88%D9%85-%D9%86%D8%B4%D8%B1%DB%8C%D9%87-%D9%81%D9%86-%D9%88%D8%B1%D8%B2-%D8%AF%D8%A7%D9%86%D8%B4%DA%AF%D8%A7%D9%87-%D9%81%D9%86%DB%8C-%D9%88-%D8%AD%D8%B1%D9%81%D9%87-%D8%A7%DB%8C-%D8%A7%D8%B3%D8%AA%D8%A7%D9%86-%D9%81%D8%A7%D8%B1%D8%B3/./file/2/attach2020102483594698308960.pdf', '           شماره سوم نشریه فن ورز دانشگاه فنی و حرفه ای استان فارس |         دانشگاه فنی و حرفه ای  ', 'شماره سوم نشریه فن ورز دانشگاه فنی و حرفه ای استان فارس'),
(191, 4, 'https://tvu.ac.ir/./fa/545977/%D9%86%D8%B3%D8%AE%D9%87-%D8%A7%D9%84%DA%A9%D8%AA%D8%B1%D9%88%D9%86%DB%8C%DA%A9%DB%8C-%D8%B4%D9%85%D8%A7%D8%B1%D9%87-%DB%B4-\"%D8%A7%D9%86%D8%AF%DB%8C%D8%B4%D9%87-%D9%86%D9%88\"%D8%8C-%D9%86%D8%B4%D8%B1%DB%8C%D9%87-%D8%AF%D8%A7%D9%86%D8%B4%DA%AF%D8%A7%D9%87-%D9%81%D9%86%DB%8C-%D9%88-%D8%AD%D8%B1%D9%81%D9%87-%D8%A7%DB%8C-%D8%A7%D8%B3%D8%AA%D8%A7%D9%86-%D8%A8%D9%88%D8%B4%D9%87%D8%B1-%D9%85%D9%86%D8%AA%D8%B4%D8%B1-%D8%B4%D8%AF', 'https://tvu.ac.ir/./fa/545977/%D9%86%D8%B3%D8%AE%D9%87-%D8%A7%D9%84%DA%A9%D8%AA%D8%B1%D9%88%D9%86%DB%8C%DA%A9%DB%8C-%D8%B4%D9%85%D8%A7%D8%B1%D9%87-%DB%B4-\"%D8%A7%D9%86%D8%AF%DB%8C%D8%B4%D9%87-%D9%86%D9%88\"%D8%8C-%D9%86%D8%B4%D8%B1%DB%8C%D9%87-%D8%AF%D8%A7%D9%86%D8%B4%DA%AF%D8%A7%D9%87-%D9%81%D9%86%DB%8C-%D9%88-%D8%AD%D8%B1%D9%81%D9%87-%D8%A7%DB%8C-%D8%A7%D8%B3%D8%AA%D8%A7%D9%86-%D8%A8%D9%88%D8%B4%D9%87%D8%B1-%D9%85%D9%86%D8%AA%D8%B4%D8%B1-%D8%B4%D8%AF/./file/2/attach2020093895212592300929.pdf', '           نسخه الکترونیکی شماره ۴ \"اندیشه نو\"، نشریه دانشگاه فنی و حرفه ای استان بوشهر منتشر شد |         دانشگاه فنی و حرفه ای  ', 'نسخه الکترونیکی شماره ۴ \"اندیشه نو\"، نشریه دانشگاه فنی و حرفه ای استان بوشهر منتشر شد');

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `domain` text NOT NULL,
  `is_ssl` tinyint(1) NOT NULL DEFAULT '0',
  `depth` int(11) NOT NULL DEFAULT '0',
  `max_docs` int(11) NOT NULL DEFAULT '100',
  `doc_formats` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`id`, `name`, `domain`, `is_ssl`, `depth`, `max_docs`, `doc_formats`, `status`) VALUES
(1, 'khev', 'khev.um.ac.ir', 1, 3, 100, 'a:8:{i:0;s:3:\"doc\";i:1;s:4:\"docx\";i:2;s:3:\"pdf\";i:3;s:3:\"xls\";i:4;s:4:\"xlsx\";i:5;s:3:\"ppt\";i:6;s:4:\"pptx\";i:7;s:3:\"txt\";}', 2),
(2, 'pellekan', 'pellekan.ir', 0, 4, 100, 'a:8:{i:0;s:3:\"doc\";i:1;s:4:\"docx\";i:2;s:3:\"pdf\";i:3;s:3:\"xls\";i:4;s:4:\"xlsx\";i:5;s:3:\"ppt\";i:6;s:4:\"pptx\";i:7;s:3:\"txt\";}', 2),
(3, 'فرهنگیان', 'cfu.ac.ir', 1, 2, 100, 'a:8:{i:0;s:3:\"doc\";i:1;s:4:\"docx\";i:2;s:3:\"pdf\";i:3;s:3:\"xls\";i:4;s:4:\"xlsx\";i:5;s:3:\"ppt\";i:6;s:4:\"pptx\";i:7;s:3:\"txt\";}', 2),
(4, 'فنی و حرفه ای', 'tvu.ac.ir', 1, 3, 100, 'a:8:{i:0;s:3:\"doc\";i:1;s:4:\"docx\";i:2;s:3:\"pdf\";i:3;s:3:\"xls\";i:4;s:4:\"xlsx\";i:5;s:3:\"ppt\";i:6;s:4:\"pptx\";i:7;s:3:\"txt\";}', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `docs`
--
ALTER TABLE `docs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `docs`
--
ALTER TABLE `docs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
