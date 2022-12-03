-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2019 at 08:41 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datacenter2`
--

-- --------------------------------------------------------

--
-- Table structure for table `aer_bos`
--

CREATE TABLE `aer_bos` (
  `id` int(10) NOT NULL,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aer_bos_mem`
--

CREATE TABLE `aer_bos_mem` (
  `id` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aer_dept`
--

CREATE TABLE `aer_dept` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `aff1` varchar(50) DEFAULT NULL,
  `aff_cer1` varchar(100) DEFAULT NULL,
  `nba_cer1` varchar(100) DEFAULT NULL,
  `intake2` int(5) DEFAULT NULL,
  `aff2` varchar(50) DEFAULT NULL,
  `aff_cer2` varchar(100) DEFAULT NULL,
  `nba_cer2` varchar(100) DEFAULT NULL,
  `intake3` int(5) DEFAULT NULL,
  `aff3` varchar(50) DEFAULT NULL,
  `aff_cer3` varchar(100) DEFAULT NULL,
  `nba_cer3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aer_faci`
--

CREATE TABLE `aer_faci` (
  `id` int(5) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aer_org`
--

CREATE TABLE `aer_org` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `orgcategory1` varchar(20) DEFAULT NULL,
  `orgtitle1` varchar(50) DEFAULT NULL,
  `orgfun1` varchar(50) DEFAULT NULL,
  `orgdays1` int(3) DEFAULT NULL,
  `orgfrom1` date NOT NULL,
  `orgto1` date NOT NULL,
  `orgdate1` date NOT NULL,
  `orgres1` varchar(30) DEFAULT NULL,
  `orgpar1` int(5) DEFAULT NULL,
  `orglevel1` varchar(20) DEFAULT NULL,
  `orgcer1` varchar(100) DEFAULT NULL,
  `orgkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aer_stud`
--

CREATE TABLE `aer_stud` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `year` varchar(5) DEFAULT NULL,
  `sem` int(5) DEFAULT NULL,
  `sec` varchar(5) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  `new_j` int(5) DEFAULT NULL,
  `drop` int(5) DEFAULT NULL,
  `d_discon` int(5) DEFAULT NULL,
  `d_notreg` int(5) DEFAULT NULL,
  `d_passed` int(5) DEFAULT NULL,
  `d_others` int(5) DEFAULT NULL,
  `g_boys` int(5) DEFAULT NULL,
  `g_girls` int(5) DEFAULT NULL,
  `g_others` int(5) DEFAULT NULL,
  `c_bc` int(5) DEFAULT NULL,
  `c_oc` int(5) DEFAULT NULL,
  `c_bcm` int(10) DEFAULT NULL,
  `c_mbc` int(10) DEFAULT NULL,
  `c_sca` int(50) DEFAULT NULL,
  `c_obc` int(5) DEFAULT NULL,
  `c_sc` int(5) DEFAULT NULL,
  `c_st` int(5) DEFAULT NULL,
  `c_others` int(5) DEFAULT NULL,
  `r_hindu` int(5) DEFAULT NULL,
  `r_muslim` int(5) DEFAULT NULL,
  `r_christian` int(5) DEFAULT NULL,
  `r_others` int(5) DEFAULT NULL,
  `stud` int(5) DEFAULT NULL,
  `drop_file` varchar(200) DEFAULT NULL,
  `stud_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `arc_bos`
--

CREATE TABLE `arc_bos` (
  `id` int(10) NOT NULL,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `arc_bos_mem`
--

CREATE TABLE `arc_bos_mem` (
  `id` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `arc_dept`
--

CREATE TABLE `arc_dept` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `aff1` varchar(50) DEFAULT NULL,
  `aff_cer1` varchar(100) DEFAULT NULL,
  `nba_cer1` varchar(100) DEFAULT NULL,
  `intake2` int(5) DEFAULT NULL,
  `aff2` varchar(50) DEFAULT NULL,
  `aff_cer2` varchar(100) DEFAULT NULL,
  `nba_cer2` varchar(100) DEFAULT NULL,
  `intake3` int(5) DEFAULT NULL,
  `aff3` varchar(50) DEFAULT NULL,
  `aff_cer3` varchar(100) DEFAULT NULL,
  `nba_cer3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `arc_faci`
--

CREATE TABLE `arc_faci` (
  `id` int(5) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `arc_org`
--

CREATE TABLE `arc_org` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `orgcategory1` varchar(20) DEFAULT NULL,
  `orgtitle1` varchar(50) DEFAULT NULL,
  `orgfun1` varchar(50) DEFAULT NULL,
  `orgdays1` int(3) DEFAULT NULL,
  `orgfrom1` date NOT NULL,
  `orgto1` date NOT NULL,
  `orgdate1` date NOT NULL,
  `orgres1` varchar(30) DEFAULT NULL,
  `orgpar1` int(5) DEFAULT NULL,
  `orglevel1` varchar(20) DEFAULT NULL,
  `orgcer1` varchar(100) DEFAULT NULL,
  `orgkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `arc_stud`
--

CREATE TABLE `arc_stud` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `year` varchar(5) DEFAULT NULL,
  `sem` int(5) DEFAULT NULL,
  `sec` varchar(5) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  `new_j` int(5) DEFAULT NULL,
  `drop` int(5) DEFAULT NULL,
  `d_discon` int(5) DEFAULT NULL,
  `d_notreg` int(5) DEFAULT NULL,
  `d_passed` int(5) DEFAULT NULL,
  `d_others` int(5) DEFAULT NULL,
  `g_boys` int(5) DEFAULT NULL,
  `g_girls` int(5) DEFAULT NULL,
  `g_others` int(5) DEFAULT NULL,
  `c_bc` int(5) DEFAULT NULL,
  `c_oc` int(5) DEFAULT NULL,
  `c_bcm` int(10) DEFAULT NULL,
  `c_mbc` int(10) DEFAULT NULL,
  `c_sca` int(50) DEFAULT NULL,
  `c_obc` int(5) DEFAULT NULL,
  `c_sc` int(5) DEFAULT NULL,
  `c_st` int(5) DEFAULT NULL,
  `c_others` int(5) DEFAULT NULL,
  `r_hindu` int(5) DEFAULT NULL,
  `r_muslim` int(5) DEFAULT NULL,
  `r_christian` int(5) DEFAULT NULL,
  `r_others` int(5) DEFAULT NULL,
  `stud` int(5) DEFAULT NULL,
  `drop_file` varchar(200) DEFAULT NULL,
  `stud_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bio_bos`
--

CREATE TABLE `bio_bos` (
  `id` int(10) NOT NULL,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bio_bos_mem`
--

CREATE TABLE `bio_bos_mem` (
  `id` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bio_dept`
--

CREATE TABLE `bio_dept` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `aff1` varchar(50) DEFAULT NULL,
  `aff_cer1` varchar(100) DEFAULT NULL,
  `nba_cer1` varchar(100) DEFAULT NULL,
  `intake2` int(5) DEFAULT NULL,
  `aff2` varchar(50) DEFAULT NULL,
  `aff_cer2` varchar(100) DEFAULT NULL,
  `nba_cer2` varchar(100) DEFAULT NULL,
  `intake3` int(5) DEFAULT NULL,
  `aff3` varchar(50) DEFAULT NULL,
  `aff_cer3` varchar(100) DEFAULT NULL,
  `nba_cer3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bio_faci`
--

CREATE TABLE `bio_faci` (
  `id` int(5) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bio_org`
--

CREATE TABLE `bio_org` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `orgcategory1` varchar(20) DEFAULT NULL,
  `orgtitle1` varchar(50) DEFAULT NULL,
  `orgfun1` varchar(50) DEFAULT NULL,
  `orgdays1` int(3) DEFAULT NULL,
  `orgfrom1` date NOT NULL,
  `orgto1` date NOT NULL,
  `orgdate1` date NOT NULL,
  `orgres1` varchar(30) DEFAULT NULL,
  `orgpar1` int(5) DEFAULT NULL,
  `orglevel1` varchar(20) DEFAULT NULL,
  `orgcer1` varchar(100) DEFAULT NULL,
  `orgkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bio_stud`
--

CREATE TABLE `bio_stud` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `year` varchar(5) DEFAULT NULL,
  `sem` int(5) DEFAULT NULL,
  `sec` varchar(5) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  `new_j` int(5) DEFAULT NULL,
  `drop` int(5) DEFAULT NULL,
  `d_discon` int(5) DEFAULT NULL,
  `d_notreg` int(5) DEFAULT NULL,
  `d_passed` int(5) DEFAULT NULL,
  `d_others` int(5) DEFAULT NULL,
  `g_boys` int(5) DEFAULT NULL,
  `g_girls` int(5) DEFAULT NULL,
  `g_others` int(5) DEFAULT NULL,
  `c_bc` int(5) DEFAULT NULL,
  `c_oc` int(5) DEFAULT NULL,
  `c_bcm` int(10) DEFAULT NULL,
  `c_mbc` int(10) DEFAULT NULL,
  `c_sca` int(50) DEFAULT NULL,
  `c_obc` int(5) DEFAULT NULL,
  `c_sc` int(5) DEFAULT NULL,
  `c_st` int(5) DEFAULT NULL,
  `c_others` int(5) DEFAULT NULL,
  `r_hindu` int(5) DEFAULT NULL,
  `r_muslim` int(5) DEFAULT NULL,
  `r_christian` int(5) DEFAULT NULL,
  `r_others` int(5) DEFAULT NULL,
  `stud` int(5) DEFAULT NULL,
  `drop_file` varchar(200) DEFAULT NULL,
  `stud_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bit_bos`
--

CREATE TABLE `bit_bos` (
  `id` int(10) NOT NULL,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bit_bos_mem`
--

CREATE TABLE `bit_bos_mem` (
  `id` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bit_dept`
--

CREATE TABLE `bit_dept` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `aff1` varchar(50) DEFAULT NULL,
  `aff_cer1` varchar(100) DEFAULT NULL,
  `nba_cer1` varchar(100) DEFAULT NULL,
  `intake2` int(5) DEFAULT NULL,
  `aff2` varchar(50) DEFAULT NULL,
  `aff_cer2` varchar(100) DEFAULT NULL,
  `nba_cer2` varchar(100) DEFAULT NULL,
  `intake3` int(5) DEFAULT NULL,
  `aff3` varchar(50) DEFAULT NULL,
  `aff_cer3` varchar(100) DEFAULT NULL,
  `nba_cer3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bit_faci`
--

CREATE TABLE `bit_faci` (
  `id` int(5) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bit_org`
--

CREATE TABLE `bit_org` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `orgcategory1` varchar(20) DEFAULT NULL,
  `orgtitle1` varchar(50) DEFAULT NULL,
  `orgfun1` varchar(50) DEFAULT NULL,
  `orgdays1` int(3) DEFAULT NULL,
  `orgfrom1` date NOT NULL,
  `orgto1` date NOT NULL,
  `orgdate1` date NOT NULL,
  `orgres1` varchar(30) DEFAULT NULL,
  `orgpar1` int(5) DEFAULT NULL,
  `orglevel1` varchar(20) DEFAULT NULL,
  `orgcer1` varchar(100) DEFAULT NULL,
  `orgkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bit_stud`
--

CREATE TABLE `bit_stud` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `year` varchar(5) DEFAULT NULL,
  `sem` int(5) DEFAULT NULL,
  `sec` varchar(5) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  `new_j` int(5) DEFAULT NULL,
  `drop` int(5) DEFAULT NULL,
  `d_discon` int(5) DEFAULT NULL,
  `d_notreg` int(5) DEFAULT NULL,
  `d_passed` int(5) DEFAULT NULL,
  `d_others` int(5) DEFAULT NULL,
  `g_boys` int(5) DEFAULT NULL,
  `g_girls` int(5) DEFAULT NULL,
  `g_others` int(5) DEFAULT NULL,
  `c_bc` int(5) DEFAULT NULL,
  `c_oc` int(5) DEFAULT NULL,
  `c_bcm` int(10) DEFAULT NULL,
  `c_mbc` int(10) DEFAULT NULL,
  `c_sca` int(50) DEFAULT NULL,
  `c_obc` int(5) DEFAULT NULL,
  `c_sc` int(5) DEFAULT NULL,
  `c_st` int(5) DEFAULT NULL,
  `c_others` int(5) DEFAULT NULL,
  `r_hindu` int(5) DEFAULT NULL,
  `r_muslim` int(5) DEFAULT NULL,
  `r_christian` int(5) DEFAULT NULL,
  `r_others` int(5) DEFAULT NULL,
  `stud` int(5) DEFAULT NULL,
  `drop_file` varchar(200) DEFAULT NULL,
  `stud_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bme_bos`
--

CREATE TABLE `bme_bos` (
  `id` int(10) NOT NULL,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bme_bos_mem`
--

CREATE TABLE `bme_bos_mem` (
  `id` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bme_dept`
--

CREATE TABLE `bme_dept` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `aff1` varchar(50) DEFAULT NULL,
  `aff_cer1` varchar(100) DEFAULT NULL,
  `nba_cer1` varchar(100) DEFAULT NULL,
  `intake2` int(5) DEFAULT NULL,
  `aff2` varchar(50) DEFAULT NULL,
  `aff_cer2` varchar(100) DEFAULT NULL,
  `nba_cer2` varchar(100) DEFAULT NULL,
  `intake3` int(5) DEFAULT NULL,
  `aff3` varchar(50) DEFAULT NULL,
  `aff_cer3` varchar(100) DEFAULT NULL,
  `nba_cer3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bme_faci`
--

CREATE TABLE `bme_faci` (
  `id` int(5) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bme_org`
--

CREATE TABLE `bme_org` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `orgcategory1` varchar(20) DEFAULT NULL,
  `orgtitle1` varchar(50) DEFAULT NULL,
  `orgfun1` varchar(50) DEFAULT NULL,
  `orgdays1` int(3) DEFAULT NULL,
  `orgfrom1` date NOT NULL,
  `orgto1` date NOT NULL,
  `orgdate1` date NOT NULL,
  `orgres1` varchar(30) DEFAULT NULL,
  `orgpar1` int(5) DEFAULT NULL,
  `orglevel1` varchar(20) DEFAULT NULL,
  `orgcer1` varchar(100) DEFAULT NULL,
  `orgkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bme_stud`
--

CREATE TABLE `bme_stud` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `year` varchar(5) DEFAULT NULL,
  `sem` int(5) DEFAULT NULL,
  `sec` varchar(5) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  `new_j` int(5) DEFAULT NULL,
  `drop` int(5) DEFAULT NULL,
  `d_discon` int(5) DEFAULT NULL,
  `d_notreg` int(5) DEFAULT NULL,
  `d_passed` int(5) DEFAULT NULL,
  `d_others` int(5) DEFAULT NULL,
  `g_boys` int(5) DEFAULT NULL,
  `g_girls` int(5) DEFAULT NULL,
  `g_others` int(5) DEFAULT NULL,
  `c_bc` int(5) DEFAULT NULL,
  `c_oc` int(5) DEFAULT NULL,
  `c_bcm` int(10) DEFAULT NULL,
  `c_mbc` int(10) DEFAULT NULL,
  `c_sca` int(50) DEFAULT NULL,
  `c_obc` int(5) DEFAULT NULL,
  `c_sc` int(5) DEFAULT NULL,
  `c_st` int(5) DEFAULT NULL,
  `c_others` int(5) DEFAULT NULL,
  `r_hindu` int(5) DEFAULT NULL,
  `r_muslim` int(5) DEFAULT NULL,
  `r_christian` int(5) DEFAULT NULL,
  `r_others` int(5) DEFAULT NULL,
  `stud` int(5) DEFAULT NULL,
  `drop_file` varchar(200) DEFAULT NULL,
  `stud_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `che_bos`
--

CREATE TABLE `che_bos` (
  `id` int(10) NOT NULL,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `che_bos_mem`
--

CREATE TABLE `che_bos_mem` (
  `id` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `che_dept`
--

CREATE TABLE `che_dept` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `aff1` varchar(50) DEFAULT NULL,
  `aff_cer1` varchar(100) DEFAULT NULL,
  `nba_cer1` varchar(100) DEFAULT NULL,
  `intake2` int(5) DEFAULT NULL,
  `aff2` varchar(50) DEFAULT NULL,
  `aff_cer2` varchar(100) DEFAULT NULL,
  `nba_cer2` varchar(100) DEFAULT NULL,
  `intake3` int(5) DEFAULT NULL,
  `aff3` varchar(50) DEFAULT NULL,
  `aff_cer3` varchar(100) DEFAULT NULL,
  `nba_cer3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `che_faci`
--

CREATE TABLE `che_faci` (
  `id` int(5) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `che_org`
--

CREATE TABLE `che_org` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `orgcategory1` varchar(20) DEFAULT NULL,
  `orgtitle1` varchar(50) DEFAULT NULL,
  `orgfun1` varchar(50) DEFAULT NULL,
  `orgdays1` int(3) DEFAULT NULL,
  `orgfrom1` date NOT NULL,
  `orgto1` date NOT NULL,
  `orgdate1` date NOT NULL,
  `orgres1` varchar(30) DEFAULT NULL,
  `orgpar1` int(5) DEFAULT NULL,
  `orglevel1` varchar(20) DEFAULT NULL,
  `orgcer1` varchar(100) DEFAULT NULL,
  `orgkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `che_stud`
--

CREATE TABLE `che_stud` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `year` varchar(5) DEFAULT NULL,
  `sem` int(5) DEFAULT NULL,
  `sec` varchar(5) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  `new_j` int(5) DEFAULT NULL,
  `drop` int(5) DEFAULT NULL,
  `d_discon` int(5) DEFAULT NULL,
  `d_notreg` int(5) DEFAULT NULL,
  `d_passed` int(5) DEFAULT NULL,
  `d_others` int(5) DEFAULT NULL,
  `g_boys` int(5) DEFAULT NULL,
  `g_girls` int(5) DEFAULT NULL,
  `g_others` int(5) DEFAULT NULL,
  `c_bc` int(5) DEFAULT NULL,
  `c_oc` int(5) DEFAULT NULL,
  `c_bcm` int(10) DEFAULT NULL,
  `c_mbc` int(10) DEFAULT NULL,
  `c_sca` int(50) DEFAULT NULL,
  `c_obc` int(5) DEFAULT NULL,
  `c_sc` int(5) DEFAULT NULL,
  `c_st` int(5) DEFAULT NULL,
  `c_others` int(5) DEFAULT NULL,
  `r_hindu` int(5) DEFAULT NULL,
  `r_muslim` int(5) DEFAULT NULL,
  `r_christian` int(5) DEFAULT NULL,
  `r_others` int(5) DEFAULT NULL,
  `stud` int(5) DEFAULT NULL,
  `drop_file` varchar(200) DEFAULT NULL,
  `stud_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chm_bos`
--

CREATE TABLE `chm_bos` (
  `id` int(10) NOT NULL,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chm_bos_mem`
--

CREATE TABLE `chm_bos_mem` (
  `id` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chm_dept`
--

CREATE TABLE `chm_dept` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `aff1` varchar(50) DEFAULT NULL,
  `aff_cer1` varchar(100) DEFAULT NULL,
  `nba_cer1` varchar(100) DEFAULT NULL,
  `intake2` int(5) DEFAULT NULL,
  `aff2` varchar(50) DEFAULT NULL,
  `aff_cer2` varchar(100) DEFAULT NULL,
  `nba_cer2` varchar(100) DEFAULT NULL,
  `intake3` int(5) DEFAULT NULL,
  `aff3` varchar(50) DEFAULT NULL,
  `aff_cer3` varchar(100) DEFAULT NULL,
  `nba_cer3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chm_faci`
--

CREATE TABLE `chm_faci` (
  `id` int(5) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chm_org`
--

CREATE TABLE `chm_org` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `orgcategory1` varchar(20) DEFAULT NULL,
  `orgtitle1` varchar(50) DEFAULT NULL,
  `orgfun1` varchar(50) DEFAULT NULL,
  `orgdays1` int(3) DEFAULT NULL,
  `orgfrom1` date NOT NULL,
  `orgto1` date NOT NULL,
  `orgdate1` date NOT NULL,
  `orgres1` varchar(30) DEFAULT NULL,
  `orgpar1` int(5) DEFAULT NULL,
  `orglevel1` varchar(20) DEFAULT NULL,
  `orgcer1` varchar(100) DEFAULT NULL,
  `orgkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chm_stud`
--

CREATE TABLE `chm_stud` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `year` varchar(5) DEFAULT NULL,
  `sem` int(5) DEFAULT NULL,
  `sec` varchar(5) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  `new_j` int(5) DEFAULT NULL,
  `drop` int(5) DEFAULT NULL,
  `d_discon` int(5) DEFAULT NULL,
  `d_notreg` int(5) DEFAULT NULL,
  `d_passed` int(5) DEFAULT NULL,
  `d_others` int(5) DEFAULT NULL,
  `g_boys` int(5) DEFAULT NULL,
  `g_girls` int(5) DEFAULT NULL,
  `g_others` int(5) DEFAULT NULL,
  `c_bc` int(5) DEFAULT NULL,
  `c_oc` int(5) DEFAULT NULL,
  `c_bcm` int(10) DEFAULT NULL,
  `c_mbc` int(10) DEFAULT NULL,
  `c_sca` int(50) DEFAULT NULL,
  `c_obc` int(5) DEFAULT NULL,
  `c_sc` int(5) DEFAULT NULL,
  `c_st` int(5) DEFAULT NULL,
  `c_others` int(5) DEFAULT NULL,
  `r_hindu` int(5) DEFAULT NULL,
  `r_muslim` int(5) DEFAULT NULL,
  `r_christian` int(5) DEFAULT NULL,
  `r_others` int(5) DEFAULT NULL,
  `stud` int(5) DEFAULT NULL,
  `drop_file` varchar(200) DEFAULT NULL,
  `stud_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `civ_bos`
--

CREATE TABLE `civ_bos` (
  `id` int(10) NOT NULL,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `civ_bos_mem`
--

CREATE TABLE `civ_bos_mem` (
  `id` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `civ_dept`
--

CREATE TABLE `civ_dept` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `aff1` varchar(50) DEFAULT NULL,
  `aff_cer1` varchar(100) DEFAULT NULL,
  `nba_cer1` varchar(100) DEFAULT NULL,
  `intake2` int(5) DEFAULT NULL,
  `aff2` varchar(50) DEFAULT NULL,
  `aff_cer2` varchar(100) DEFAULT NULL,
  `nba_cer2` varchar(100) DEFAULT NULL,
  `intake3` int(5) DEFAULT NULL,
  `aff3` varchar(50) DEFAULT NULL,
  `aff_cer3` varchar(100) DEFAULT NULL,
  `nba_cer3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `civ_faci`
--

CREATE TABLE `civ_faci` (
  `id` int(5) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `civ_org`
--

CREATE TABLE `civ_org` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `orgcategory1` varchar(20) DEFAULT NULL,
  `orgtitle1` varchar(50) DEFAULT NULL,
  `orgfun1` varchar(50) DEFAULT NULL,
  `orgdays1` int(3) DEFAULT NULL,
  `orgfrom1` date NOT NULL,
  `orgto1` date NOT NULL,
  `orgdate1` date NOT NULL,
  `orgres1` varchar(30) DEFAULT NULL,
  `orgpar1` int(5) DEFAULT NULL,
  `orglevel1` varchar(20) DEFAULT NULL,
  `orgcer1` varchar(100) DEFAULT NULL,
  `orgkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `civ_stud`
--

CREATE TABLE `civ_stud` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `year` varchar(5) DEFAULT NULL,
  `sem` int(5) DEFAULT NULL,
  `sec` varchar(5) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  `new_j` int(5) DEFAULT NULL,
  `drop` int(5) DEFAULT NULL,
  `d_discon` int(5) DEFAULT NULL,
  `d_notreg` int(5) DEFAULT NULL,
  `d_passed` int(5) DEFAULT NULL,
  `d_others` int(5) DEFAULT NULL,
  `g_boys` int(5) DEFAULT NULL,
  `g_girls` int(5) DEFAULT NULL,
  `g_others` int(5) DEFAULT NULL,
  `c_bc` int(5) DEFAULT NULL,
  `c_oc` int(5) DEFAULT NULL,
  `c_bcm` int(10) DEFAULT NULL,
  `c_mbc` int(10) DEFAULT NULL,
  `c_sca` int(50) DEFAULT NULL,
  `c_obc` int(5) DEFAULT NULL,
  `c_sc` int(5) DEFAULT NULL,
  `c_st` int(5) DEFAULT NULL,
  `c_others` int(5) DEFAULT NULL,
  `r_hindu` int(5) DEFAULT NULL,
  `r_muslim` int(5) DEFAULT NULL,
  `r_christian` int(5) DEFAULT NULL,
  `r_others` int(5) DEFAULT NULL,
  `stud` int(5) DEFAULT NULL,
  `drop_file` varchar(200) DEFAULT NULL,
  `stud_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cse_bos`
--

CREATE TABLE `cse_bos` (
  `id` int(10) NOT NULL,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cse_bos_mem`
--

CREATE TABLE `cse_bos_mem` (
  `id` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cse_dept`
--

CREATE TABLE `cse_dept` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `aff1` varchar(50) DEFAULT NULL,
  `aff_cer1` varchar(100) DEFAULT NULL,
  `nba_cer1` varchar(100) DEFAULT NULL,
  `intake2` int(5) DEFAULT NULL,
  `aff2` varchar(50) DEFAULT NULL,
  `aff_cer2` varchar(100) DEFAULT NULL,
  `nba_cer2` varchar(100) DEFAULT NULL,
  `intake3` int(5) DEFAULT NULL,
  `aff3` varchar(50) DEFAULT NULL,
  `aff_cer3` varchar(100) DEFAULT NULL,
  `nba_cer3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cse_faci`
--

CREATE TABLE `cse_faci` (
  `id` int(5) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cse_org`
--

CREATE TABLE `cse_org` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `orgcategory1` varchar(20) DEFAULT NULL,
  `orgtitle1` varchar(50) DEFAULT NULL,
  `orgfun1` varchar(50) DEFAULT NULL,
  `orgdays1` int(3) DEFAULT NULL,
  `orgfrom1` date NOT NULL,
  `orgto1` date NOT NULL,
  `orgdate1` date NOT NULL,
  `orgres1` varchar(30) DEFAULT NULL,
  `orgpar1` int(5) DEFAULT NULL,
  `orglevel1` varchar(20) DEFAULT NULL,
  `orgcer1` varchar(100) DEFAULT NULL,
  `orgkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cse_stud`
--

CREATE TABLE `cse_stud` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `year` varchar(5) DEFAULT NULL,
  `sem` int(5) DEFAULT NULL,
  `sec` varchar(5) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  `new_j` int(5) DEFAULT NULL,
  `drop` int(5) DEFAULT NULL,
  `d_discon` int(5) DEFAULT NULL,
  `d_notreg` int(5) DEFAULT NULL,
  `d_passed` int(5) DEFAULT NULL,
  `d_others` int(5) DEFAULT NULL,
  `g_boys` int(5) DEFAULT NULL,
  `g_girls` int(5) DEFAULT NULL,
  `g_others` int(5) DEFAULT NULL,
  `c_bc` int(5) DEFAULT NULL,
  `c_oc` int(5) DEFAULT NULL,
  `c_bcm` int(10) DEFAULT NULL,
  `c_mbc` int(10) DEFAULT NULL,
  `c_sca` int(50) DEFAULT NULL,
  `c_obc` int(5) DEFAULT NULL,
  `c_sc` int(5) DEFAULT NULL,
  `c_st` int(5) DEFAULT NULL,
  `c_others` int(5) DEFAULT NULL,
  `r_hindu` int(5) DEFAULT NULL,
  `r_muslim` int(5) DEFAULT NULL,
  `r_christian` int(5) DEFAULT NULL,
  `r_others` int(5) DEFAULT NULL,
  `stud` int(5) DEFAULT NULL,
  `drop_file` varchar(200) DEFAULT NULL,
  `stud_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dept_info`
--

CREATE TABLE `dept_info` (
  `id` int(3) NOT NULL,
  `dept` varchar(3) NOT NULL,
  `year1` varchar(9) DEFAULT NULL,
  `name1` varchar(20) DEFAULT NULL,
  `branch1` varchar(30) DEFAULT NULL,
  `year2` varchar(9) DEFAULT NULL,
  `name2` varchar(20) NOT NULL,
  `branch2` varchar(30) DEFAULT NULL,
  `year3` varchar(9) DEFAULT NULL,
  `name3` varchar(20) DEFAULT NULL,
  `branch3` varchar(30) DEFAULT NULL,
  `class` int(10) DEFAULT NULL,
  `lab` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept_info`
--

INSERT INTO `dept_info` (`id`, `dept`, `year1`, `name1`, `branch1`, `year2`, `name2`, `branch2`, `year3`, `name3`, `branch3`, `class`, `lab`) VALUES
(2, 'MCA', NULL, NULL, NULL, '1995-1996', 'MCA', 'MCA', NULL, NULL, NULL, 6, 3),
(4, 'vv', '1993-1994', 'Ram', 'arc', '2004-2005', 'ME', 'CSE', '2009-2010', 'PHD', 'CSE', 5, 1),
(5, 'vmc', '1995-1996', 'BE', 'vmca', NULL, '', NULL, NULL, NULL, NULL, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `dup_bos`
--

CREATE TABLE `dup_bos` (
  `id` int(10) NOT NULL,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `pic` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dup_bos_mem`
--

CREATE TABLE `dup_bos_mem` (
  `id` int(5) NOT NULL,
  `bid` int(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `desig` varchar(100) DEFAULT NULL,
  `adde` varchar(200) DEFAULT NULL,
  `cat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dup_dept`
--

CREATE TABLE `dup_dept` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `aff1` varchar(50) DEFAULT NULL,
  `aff_cer1` varchar(100) DEFAULT NULL,
  `nba_cer1` varchar(100) DEFAULT NULL,
  `intake2` int(5) DEFAULT NULL,
  `aff2` varchar(50) DEFAULT NULL,
  `aff_cer2` varchar(100) DEFAULT NULL,
  `nba_cer2` varchar(100) DEFAULT NULL,
  `intake3` int(5) DEFAULT NULL,
  `aff3` varchar(50) DEFAULT NULL,
  `aff_cer3` varchar(100) DEFAULT NULL,
  `nba_cer3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dup_faci`
--

CREATE TABLE `dup_faci` (
  `id` int(5) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dup_org`
--

CREATE TABLE `dup_org` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `orgcategory1` varchar(20) DEFAULT NULL,
  `orgtitle1` varchar(50) DEFAULT NULL,
  `orgfun1` varchar(50) DEFAULT NULL,
  `orgdays1` int(3) DEFAULT NULL,
  `orgfrom1` date DEFAULT NULL,
  `orgto1` date DEFAULT NULL,
  `orgdate1` date DEFAULT NULL,
  `orgres1` varchar(30) DEFAULT NULL,
  `orgpar1` int(5) DEFAULT NULL,
  `orglevel1` varchar(20) DEFAULT NULL,
  `orgcer1` varchar(200) DEFAULT NULL,
  `orgkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dup_stud`
--

CREATE TABLE `dup_stud` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `year` varchar(5) DEFAULT NULL,
  `sem` int(5) DEFAULT NULL,
  `sec` varchar(5) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  `new_j` int(5) DEFAULT NULL,
  `drop` int(5) DEFAULT NULL,
  `d_discon` int(5) DEFAULT NULL,
  `d_notreg` int(5) DEFAULT NULL,
  `d_passed` int(5) DEFAULT NULL,
  `d_others` int(5) DEFAULT NULL,
  `g_boys` int(5) DEFAULT NULL,
  `g_girls` int(5) DEFAULT NULL,
  `g_others` int(5) DEFAULT NULL,
  `c_bc` int(5) DEFAULT NULL,
  `c_oc` int(5) DEFAULT NULL,
  `c_bcm` int(10) DEFAULT NULL,
  `c_mbc` int(10) DEFAULT NULL,
  `c_sca` int(50) DEFAULT NULL,
  `c_obc` int(5) DEFAULT NULL,
  `c_sc` int(5) DEFAULT NULL,
  `c_st` int(5) DEFAULT NULL,
  `c_others` int(5) DEFAULT NULL,
  `r_hindu` int(5) DEFAULT NULL,
  `r_muslim` int(5) DEFAULT NULL,
  `r_christian` int(5) DEFAULT NULL,
  `r_others` int(5) DEFAULT NULL,
  `stud` int(5) DEFAULT NULL,
  `drop_file` varchar(200) DEFAULT NULL,
  `stud_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ece_bos`
--

CREATE TABLE `ece_bos` (
  `id` int(10) NOT NULL,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ece_bos_mem`
--

CREATE TABLE `ece_bos_mem` (
  `id` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ece_dept`
--

CREATE TABLE `ece_dept` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `aff1` varchar(50) DEFAULT NULL,
  `aff_cer1` varchar(100) DEFAULT NULL,
  `nba_cer1` varchar(100) DEFAULT NULL,
  `intake2` int(5) DEFAULT NULL,
  `aff2` varchar(50) DEFAULT NULL,
  `aff_cer2` varchar(100) DEFAULT NULL,
  `nba_cer2` varchar(100) DEFAULT NULL,
  `intake3` int(5) DEFAULT NULL,
  `aff3` varchar(50) DEFAULT NULL,
  `aff_cer3` varchar(100) DEFAULT NULL,
  `nba_cer3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ece_faci`
--

CREATE TABLE `ece_faci` (
  `id` int(5) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ece_org`
--

CREATE TABLE `ece_org` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `orgcategory1` varchar(20) DEFAULT NULL,
  `orgtitle1` varchar(50) DEFAULT NULL,
  `orgfun1` varchar(50) DEFAULT NULL,
  `orgdays1` int(3) DEFAULT NULL,
  `orgfrom1` date NOT NULL,
  `orgto1` date NOT NULL,
  `orgdate1` date NOT NULL,
  `orgres1` varchar(30) DEFAULT NULL,
  `orgpar1` int(5) DEFAULT NULL,
  `orglevel1` varchar(20) DEFAULT NULL,
  `orgcer1` varchar(100) DEFAULT NULL,
  `orgkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ece_stud`
--

CREATE TABLE `ece_stud` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `year` varchar(5) DEFAULT NULL,
  `sem` int(5) DEFAULT NULL,
  `sec` varchar(5) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  `new_j` int(5) DEFAULT NULL,
  `drop` int(5) DEFAULT NULL,
  `d_discon` int(5) DEFAULT NULL,
  `d_notreg` int(5) DEFAULT NULL,
  `d_passed` int(5) DEFAULT NULL,
  `d_others` int(5) DEFAULT NULL,
  `g_boys` int(5) DEFAULT NULL,
  `g_girls` int(5) DEFAULT NULL,
  `g_others` int(5) DEFAULT NULL,
  `c_bc` int(5) DEFAULT NULL,
  `c_oc` int(5) DEFAULT NULL,
  `c_bcm` int(10) DEFAULT NULL,
  `c_mbc` int(10) DEFAULT NULL,
  `c_sca` int(50) DEFAULT NULL,
  `c_obc` int(5) DEFAULT NULL,
  `c_sc` int(5) DEFAULT NULL,
  `c_st` int(5) DEFAULT NULL,
  `c_others` int(5) DEFAULT NULL,
  `r_hindu` int(5) DEFAULT NULL,
  `r_muslim` int(5) DEFAULT NULL,
  `r_christian` int(5) DEFAULT NULL,
  `r_others` int(5) DEFAULT NULL,
  `stud` int(5) DEFAULT NULL,
  `drop_file` varchar(200) DEFAULT NULL,
  `stud_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eee_bos`
--

CREATE TABLE `eee_bos` (
  `id` int(10) NOT NULL,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eee_bos_mem`
--

CREATE TABLE `eee_bos_mem` (
  `id` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eee_dept`
--

CREATE TABLE `eee_dept` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `aff1` varchar(50) DEFAULT NULL,
  `aff_cer1` varchar(100) DEFAULT NULL,
  `nba_cer1` varchar(100) DEFAULT NULL,
  `intake2` int(5) DEFAULT NULL,
  `aff2` varchar(50) DEFAULT NULL,
  `aff_cer2` varchar(100) DEFAULT NULL,
  `nba_cer2` varchar(100) DEFAULT NULL,
  `intake3` int(5) DEFAULT NULL,
  `aff3` varchar(50) DEFAULT NULL,
  `aff_cer3` varchar(100) DEFAULT NULL,
  `nba_cer3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eee_faci`
--

CREATE TABLE `eee_faci` (
  `id` int(5) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eee_org`
--

CREATE TABLE `eee_org` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `orgcategory1` varchar(20) DEFAULT NULL,
  `orgtitle1` varchar(50) DEFAULT NULL,
  `orgfun1` varchar(50) DEFAULT NULL,
  `orgdays1` int(3) DEFAULT NULL,
  `orgfrom1` date NOT NULL,
  `orgto1` date NOT NULL,
  `orgdate1` date NOT NULL,
  `orgres1` varchar(30) DEFAULT NULL,
  `orgpar1` int(5) DEFAULT NULL,
  `orglevel1` varchar(20) DEFAULT NULL,
  `orgcer1` varchar(100) DEFAULT NULL,
  `orgkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eee_stud`
--

CREATE TABLE `eee_stud` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `year` varchar(5) DEFAULT NULL,
  `sem` int(5) DEFAULT NULL,
  `sec` varchar(5) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  `new_j` int(5) DEFAULT NULL,
  `drop` int(5) DEFAULT NULL,
  `d_discon` int(5) DEFAULT NULL,
  `d_notreg` int(5) DEFAULT NULL,
  `d_passed` int(5) DEFAULT NULL,
  `d_others` int(5) DEFAULT NULL,
  `g_boys` int(5) DEFAULT NULL,
  `g_girls` int(5) DEFAULT NULL,
  `g_others` int(5) DEFAULT NULL,
  `c_bc` int(5) DEFAULT NULL,
  `c_oc` int(5) DEFAULT NULL,
  `c_bcm` int(10) DEFAULT NULL,
  `c_mbc` int(10) DEFAULT NULL,
  `c_sca` int(50) DEFAULT NULL,
  `c_obc` int(5) DEFAULT NULL,
  `c_sc` int(5) DEFAULT NULL,
  `c_st` int(5) DEFAULT NULL,
  `c_others` int(5) DEFAULT NULL,
  `r_hindu` int(5) DEFAULT NULL,
  `r_muslim` int(5) DEFAULT NULL,
  `r_christian` int(5) DEFAULT NULL,
  `r_others` int(5) DEFAULT NULL,
  `stud` int(5) DEFAULT NULL,
  `drop_file` varchar(200) DEFAULT NULL,
  `stud_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eie_bos`
--

CREATE TABLE `eie_bos` (
  `id` int(10) NOT NULL,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eie_bos_mem`
--

CREATE TABLE `eie_bos_mem` (
  `id` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eie_dept`
--

CREATE TABLE `eie_dept` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `aff1` varchar(50) DEFAULT NULL,
  `aff_cer1` varchar(100) DEFAULT NULL,
  `nba_cer1` varchar(100) DEFAULT NULL,
  `intake2` int(5) DEFAULT NULL,
  `aff2` varchar(50) DEFAULT NULL,
  `aff_cer2` varchar(100) DEFAULT NULL,
  `nba_cer2` varchar(100) DEFAULT NULL,
  `intake3` int(5) DEFAULT NULL,
  `aff3` varchar(50) DEFAULT NULL,
  `aff_cer3` varchar(100) DEFAULT NULL,
  `nba_cer3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eie_faci`
--

CREATE TABLE `eie_faci` (
  `id` int(5) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eie_org`
--

CREATE TABLE `eie_org` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `orgcategory1` varchar(20) DEFAULT NULL,
  `orgtitle1` varchar(50) DEFAULT NULL,
  `orgfun1` varchar(50) DEFAULT NULL,
  `orgdays1` int(3) DEFAULT NULL,
  `orgfrom1` date NOT NULL,
  `orgto1` date NOT NULL,
  `orgdate1` date NOT NULL,
  `orgres1` varchar(30) DEFAULT NULL,
  `orgpar1` int(5) DEFAULT NULL,
  `orglevel1` varchar(20) DEFAULT NULL,
  `orgcer1` varchar(100) DEFAULT NULL,
  `orgkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eie_stud`
--

CREATE TABLE `eie_stud` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `year` varchar(5) DEFAULT NULL,
  `sem` int(5) DEFAULT NULL,
  `sec` varchar(5) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  `new_j` int(5) DEFAULT NULL,
  `drop` int(5) DEFAULT NULL,
  `d_discon` int(5) DEFAULT NULL,
  `d_notreg` int(5) DEFAULT NULL,
  `d_passed` int(5) DEFAULT NULL,
  `d_others` int(5) DEFAULT NULL,
  `g_boys` int(5) DEFAULT NULL,
  `g_girls` int(5) DEFAULT NULL,
  `g_others` int(5) DEFAULT NULL,
  `c_bc` int(5) DEFAULT NULL,
  `c_oc` int(5) DEFAULT NULL,
  `c_bcm` int(10) DEFAULT NULL,
  `c_mbc` int(10) DEFAULT NULL,
  `c_sca` int(50) DEFAULT NULL,
  `c_obc` int(5) DEFAULT NULL,
  `c_sc` int(5) DEFAULT NULL,
  `c_st` int(5) DEFAULT NULL,
  `c_others` int(5) DEFAULT NULL,
  `r_hindu` int(5) DEFAULT NULL,
  `r_muslim` int(5) DEFAULT NULL,
  `r_christian` int(5) DEFAULT NULL,
  `r_others` int(5) DEFAULT NULL,
  `stud` int(5) DEFAULT NULL,
  `drop_file` varchar(200) DEFAULT NULL,
  `stud_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eng_bos`
--

CREATE TABLE `eng_bos` (
  `id` int(10) NOT NULL,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eng_bos_mem`
--

CREATE TABLE `eng_bos_mem` (
  `id` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eng_dept`
--

CREATE TABLE `eng_dept` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `aff1` varchar(50) DEFAULT NULL,
  `aff_cer1` varchar(100) DEFAULT NULL,
  `nba_cer1` varchar(100) DEFAULT NULL,
  `intake2` int(5) DEFAULT NULL,
  `aff2` varchar(50) DEFAULT NULL,
  `aff_cer2` varchar(100) DEFAULT NULL,
  `nba_cer2` varchar(100) DEFAULT NULL,
  `intake3` int(5) DEFAULT NULL,
  `aff3` varchar(50) DEFAULT NULL,
  `aff_cer3` varchar(100) DEFAULT NULL,
  `nba_cer3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eng_faci`
--

CREATE TABLE `eng_faci` (
  `id` int(5) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eng_org`
--

CREATE TABLE `eng_org` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `orgcategory1` varchar(20) DEFAULT NULL,
  `orgtitle1` varchar(50) DEFAULT NULL,
  `orgfun1` varchar(50) DEFAULT NULL,
  `orgdays1` int(3) DEFAULT NULL,
  `orgfrom1` date NOT NULL,
  `orgto1` date NOT NULL,
  `orgdate1` date NOT NULL,
  `orgres1` varchar(30) DEFAULT NULL,
  `orgpar1` int(5) DEFAULT NULL,
  `orglevel1` varchar(20) DEFAULT NULL,
  `orgcer1` varchar(100) DEFAULT NULL,
  `orgkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eng_stud`
--

CREATE TABLE `eng_stud` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `year` varchar(5) DEFAULT NULL,
  `sem` int(5) DEFAULT NULL,
  `sec` varchar(5) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  `new_j` int(5) DEFAULT NULL,
  `drop` int(5) DEFAULT NULL,
  `d_discon` int(5) DEFAULT NULL,
  `d_notreg` int(5) DEFAULT NULL,
  `d_passed` int(5) DEFAULT NULL,
  `d_others` int(5) DEFAULT NULL,
  `g_boys` int(5) DEFAULT NULL,
  `g_girls` int(5) DEFAULT NULL,
  `g_others` int(5) DEFAULT NULL,
  `c_bc` int(5) DEFAULT NULL,
  `c_oc` int(5) DEFAULT NULL,
  `c_bcm` int(10) DEFAULT NULL,
  `c_mbc` int(10) DEFAULT NULL,
  `c_sca` int(50) DEFAULT NULL,
  `c_obc` int(5) DEFAULT NULL,
  `c_sc` int(5) DEFAULT NULL,
  `c_st` int(5) DEFAULT NULL,
  `c_others` int(5) DEFAULT NULL,
  `r_hindu` int(5) DEFAULT NULL,
  `r_muslim` int(5) DEFAULT NULL,
  `r_christian` int(5) DEFAULT NULL,
  `r_others` int(5) DEFAULT NULL,
  `stud` int(5) DEFAULT NULL,
  `drop_file` varchar(200) DEFAULT NULL,
  `stud_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ins_info`
--

CREATE TABLE `ins_info` (
  `id` int(10) NOT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `meet` varchar(100) NOT NULL,
  `dis` varchar(1500) NOT NULL,
  `pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ins_info`
--

INSERT INTO `ins_info` (`id`, `ayear`, `date`, `meet`, `dis`, `pic`) VALUES
(1, '1987-1988', '1998-02-05', 'sports day', 'This is to give the dis of the sports day', '69058-img1.jpg'),
(2, '1987-1988', '1987-04-23', 'sports day', 'dgdgrbhtrhbwhwgtg', '2191-aer.jpg'),
(7, '1992-1993', '1992-08-09', 'College Day', 'wergytrehyt', '98731-arc.jpg'),
(8, '2005-2006', '2005-08-06', 'HOD Meeting', 'This the meeting to have the discussion of the content regarding the hod', '3712-aer.jpg'),
(9, '1987-1988', '1988-04-30', 'College Day', 'This is the meeting for the college day', '70547-aer.jpg'),
(10, '1987-1988', '1988-05-31', 'College Day', 'treyje56ye56yd', '31362-aer.jpg'),
(11, '1987-1988', '1988-02-04', 'College Day', 'tfghjfryjf', '90120-beeee.png');

-- --------------------------------------------------------

--
-- Table structure for table `mat_bos`
--

CREATE TABLE `mat_bos` (
  `id` int(10) NOT NULL,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mat_bos_mem`
--

CREATE TABLE `mat_bos_mem` (
  `id` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mat_dept`
--

CREATE TABLE `mat_dept` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `aff1` varchar(50) DEFAULT NULL,
  `aff_cer1` varchar(100) DEFAULT NULL,
  `nba_cer1` varchar(100) DEFAULT NULL,
  `intake2` int(5) DEFAULT NULL,
  `aff2` varchar(50) DEFAULT NULL,
  `aff_cer2` varchar(100) DEFAULT NULL,
  `nba_cer2` varchar(100) DEFAULT NULL,
  `intake3` int(5) DEFAULT NULL,
  `aff3` varchar(50) DEFAULT NULL,
  `aff_cer3` varchar(100) DEFAULT NULL,
  `nba_cer3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mat_faci`
--

CREATE TABLE `mat_faci` (
  `id` int(5) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mat_org`
--

CREATE TABLE `mat_org` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `orgcategory1` varchar(20) DEFAULT NULL,
  `orgtitle1` varchar(50) DEFAULT NULL,
  `orgfun1` varchar(50) DEFAULT NULL,
  `orgdays1` int(3) DEFAULT NULL,
  `orgfrom1` date NOT NULL,
  `orgto1` date NOT NULL,
  `orgdate1` date NOT NULL,
  `orgres1` varchar(30) DEFAULT NULL,
  `orgpar1` int(5) DEFAULT NULL,
  `orglevel1` varchar(20) DEFAULT NULL,
  `orgcer1` varchar(100) DEFAULT NULL,
  `orgkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mat_stud`
--

CREATE TABLE `mat_stud` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `year` varchar(5) DEFAULT NULL,
  `sem` int(5) DEFAULT NULL,
  `sec` varchar(5) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  `new_j` int(5) DEFAULT NULL,
  `drop` int(5) DEFAULT NULL,
  `d_discon` int(5) DEFAULT NULL,
  `d_notreg` int(5) DEFAULT NULL,
  `d_passed` int(5) DEFAULT NULL,
  `d_others` int(5) DEFAULT NULL,
  `g_boys` int(5) DEFAULT NULL,
  `g_girls` int(5) DEFAULT NULL,
  `g_others` int(5) DEFAULT NULL,
  `c_bc` int(5) DEFAULT NULL,
  `c_oc` int(5) DEFAULT NULL,
  `c_bcm` int(10) DEFAULT NULL,
  `c_mbc` int(10) DEFAULT NULL,
  `c_sca` int(50) DEFAULT NULL,
  `c_obc` int(5) DEFAULT NULL,
  `c_sc` int(5) DEFAULT NULL,
  `c_st` int(5) DEFAULT NULL,
  `c_others` int(5) DEFAULT NULL,
  `r_hindu` int(5) DEFAULT NULL,
  `r_muslim` int(5) DEFAULT NULL,
  `r_christian` int(5) DEFAULT NULL,
  `r_others` int(5) DEFAULT NULL,
  `stud` int(5) DEFAULT NULL,
  `drop_file` varchar(200) DEFAULT NULL,
  `stud_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mba_bos`
--

CREATE TABLE `mba_bos` (
  `id` int(10) NOT NULL,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `pic` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mba_bos_mem`
--

CREATE TABLE `mba_bos_mem` (
  `id` int(5) NOT NULL,
  `bid` int(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `desig` varchar(100) DEFAULT NULL,
  `adde` varchar(200) DEFAULT NULL,
  `cat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mba_dept`
--

CREATE TABLE `mba_dept` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `aff1` varchar(50) DEFAULT NULL,
  `aff_cer1` varchar(100) DEFAULT NULL,
  `nba_cer1` varchar(100) DEFAULT NULL,
  `intake2` int(5) DEFAULT NULL,
  `aff2` varchar(50) DEFAULT NULL,
  `aff_cer2` varchar(100) DEFAULT NULL,
  `nba_cer2` varchar(100) DEFAULT NULL,
  `intake3` int(5) DEFAULT NULL,
  `aff3` varchar(50) DEFAULT NULL,
  `aff_cer3` varchar(100) DEFAULT NULL,
  `nba_cer3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mba_faci`
--

CREATE TABLE `mba_faci` (
  `id` int(5) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mba_org`
--

CREATE TABLE `mba_org` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `orgcategory1` varchar(20) DEFAULT NULL,
  `orgtitle1` varchar(50) DEFAULT NULL,
  `orgfun1` varchar(50) DEFAULT NULL,
  `orgdays1` int(3) DEFAULT NULL,
  `orgfrom1` date DEFAULT NULL,
  `orgto1` date DEFAULT NULL,
  `orgdate1` date DEFAULT NULL,
  `orgres1` varchar(30) DEFAULT NULL,
  `orgpar1` int(5) DEFAULT NULL,
  `orglevel1` varchar(20) DEFAULT NULL,
  `orgcer1` varchar(200) DEFAULT NULL,
  `orgkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mba_stud`
--

CREATE TABLE `mba_stud` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `year` varchar(5) DEFAULT NULL,
  `sem` int(5) DEFAULT NULL,
  `sec` varchar(5) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  `new_j` int(5) DEFAULT NULL,
  `drop` int(5) DEFAULT NULL,
  `d_discon` int(5) DEFAULT NULL,
  `d_notreg` int(5) DEFAULT NULL,
  `d_passed` int(5) DEFAULT NULL,
  `d_others` int(5) DEFAULT NULL,
  `g_boys` int(5) DEFAULT NULL,
  `g_girls` int(5) DEFAULT NULL,
  `g_others` int(5) DEFAULT NULL,
  `c_bc` int(5) DEFAULT NULL,
  `c_oc` int(5) DEFAULT NULL,
  `c_bcm` int(10) DEFAULT NULL,
  `c_mbc` int(10) DEFAULT NULL,
  `c_sca` int(50) DEFAULT NULL,
  `c_obc` int(5) DEFAULT NULL,
  `c_sc` int(5) DEFAULT NULL,
  `c_st` int(5) DEFAULT NULL,
  `c_others` int(5) DEFAULT NULL,
  `r_hindu` int(5) DEFAULT NULL,
  `r_muslim` int(5) DEFAULT NULL,
  `r_christian` int(5) DEFAULT NULL,
  `r_others` int(5) DEFAULT NULL,
  `stud` int(5) DEFAULT NULL,
  `drop_file` varchar(200) DEFAULT NULL,
  `stud_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mca_bos`
--

CREATE TABLE `mca_bos` (
  `id` int(10) NOT NULL,
  `n_bos` int(10) NOT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mca_bos`
--

INSERT INTO `mca_bos` (`id`, `n_bos`, `ayear`, `date`, `pic`) VALUES
(1, 1, '2007-2008', '2007-08-22', '60391-mca_bos_1.jpg'),
(2, 2, '2008-2009', '2008-06-28', '56205-mca_bos_2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mca_bos_mem`
--

CREATE TABLE `mca_bos_mem` (
  `id` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mca_bos_mem`
--

INSERT INTO `mca_bos_mem` (`id`, `bid`, `name`, `desig`, `adde`, `cate`) VALUES
(1, 1, 'Prof. D Swamydoss', 'Professor', 'Professor & Head,\r\nDepartment of MCA,\r\nAdhiyamaan College of Engineering,\r\nHosur', 'Chairman'),
(2, 1, 'Prof. M Lilly Florence ', 'Asst. Prof.', 'Department of MCA,\r\nAdhiyamaan College of Engineering,\r\nHosur  ', 'Internal Member'),
(3, 1, 'Mr. S Saravanan', 'Lecturer', 'Department of MCA,\r\nAdhiyamaan College of Engineering,\r\nHosur  ', 'Internal Member'),
(4, 1, 'Mr. N Sakthivel', 'Lecturer', 'Department of MCA,\r\nAdhiyamaan College of Engineering,\r\nHosur  ', 'Internal Member'),
(5, 1, 'Ms. V Sathya', 'Lecturer', 'Department of MCA,\r\nAdhiyamaan College of Engineering,\r\nHosur  ', 'Internal Member'),
(6, 1, 'Mr. V Alanthuraiyan ', 'Lecturer', 'Department of MCA,\r\nAdhiyamaan College of Engineering,\r\nHosur  ', 'Internal Member'),
(7, 1, 'Dr. Wahidha Banu', 'Professor', 'Prof. & Head,\r\nDepartment of ECE,\r\nGovt. College of Engineering,\r\nSalem', 'Academic Council Nominee'),
(8, 1, 'Dr. A Santha Kumaran', 'Professor', 'Prof. & Head,\r\nDepartment of Statistic,\r\nSalem Sowdeswari College,\r\nSalem.', 'Academic Council Nominee'),
(9, 1, 'Dr. K Thangavelu', 'Professor', 'Professor & Head,\r\nDepartment of CS,\r\nPeriyar University,\r\nSalem.', 'University Nominee'),
(10, 1, 'Prof. Krishna Kumar', 'Professor', 'Professor & Head,\r\nSona College of Technology,\r\nSalem', 'University Nominee'),
(11, 1, 'Mr. P Ilavarasu', 'Technical Manager', 'Headstrong India Pvt. Ltd.,\r\nBangalore', 'Industry Representative'),
(12, 1, 'Mr. C Harikrishan', 'User Experience Evangelist', 'Wipro Technologies,\r\nBangalore', 'Alumni Representative'),
(13, 2, 'Prof. D Swamydoss', 'Professor', 'Professor & Head,\r\nDepartment of MCA,\r\nAdhiyamaan College of Engineering,\r\nHosur', 'Chairman'),
(14, 2, 'Prof. M Lilly Florence', 'Asst. Prof.', 'Department of MCA,\r\nAdhiyamaan College of Engineering,\r\nHosur  ', 'Internal Member'),
(15, 2, 'Mr. S Saravanan', 'Lecturer', 'Department of MCA,\r\nAdhiyamaan College of Engineering,\r\nHosur  ', 'Internal Member'),
(16, 2, 'Mr. N Sakthivel', 'Lecturer', 'Department of MCA,\r\nAdhiyamaan College of Engineering,\r\nHosur  ', 'Internal Member'),
(17, 2, 'Ms. V Sathya', 'Lecturer', 'Department of MCA,\r\nAdhiyamaan College of Engineering,\r\nHosur  ', 'Internal Member'),
(18, 2, 'Mr. V Alanthuraiyan', 'Lecturer', 'Department of MCA,\r\nAdhiyamaan College of Engineering,\r\nHosur  ', 'Internal Member'),
(19, 2, 'Dr. Wahidha Banu R S D', 'Professor', 'Professor & Head,\r\nDepartment of ECE,\r\nGovernment College of Engineering,\r\nSalem', 'Academic Council Nominee'),
(20, 2, 'Dr. A Santha Kumaran', 'Professor', 'Prof. & Head,\r\nDepartment of Statistic,\r\nSalem Sowdeswari College,\r\nSalem.  ', 'Academic Council Nominee'),
(21, 2, 'Dr. K Thangavelu', 'Professor', 'Professor & Head,\r\nDepartment of CS,\r\nPeriyar University,\r\nSalem.  ', 'University Nominee'),
(22, 2, 'Prof. Krishna Kumar', 'Professor', 'Professor & Head,\r\nSona College of Technology,\r\nSalem ', 'University Nominee');

-- --------------------------------------------------------

--
-- Table structure for table `mca_dept`
--

CREATE TABLE `mca_dept` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `aff1` varchar(50) DEFAULT NULL,
  `aff_cer1` varchar(100) DEFAULT NULL,
  `nba_cer1` varchar(100) DEFAULT NULL,
  `intake2` int(5) DEFAULT NULL,
  `aff2` varchar(50) DEFAULT NULL,
  `aff_cer2` varchar(100) DEFAULT NULL,
  `nba_cer2` varchar(100) DEFAULT NULL,
  `intake3` int(5) DEFAULT NULL,
  `aff3` varchar(50) DEFAULT NULL,
  `aff_cer3` varchar(100) DEFAULT NULL,
  `nba_cer3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mca_dept`
--

INSERT INTO `mca_dept` (`id`, `ayear`, `intake1`, `aff1`, `aff_cer1`, `nba_cer1`, `intake2`, `aff2`, `aff_cer2`, `nba_cer2`, `intake3`, `aff3`, `aff_cer3`, `nba_cer3`) VALUES
(1, '1995-1996', NULL, NULL, NULL, NULL, 60, 'University of Madras', '', '', NULL, NULL, NULL, NULL),
(2, '1996-1997', NULL, NULL, NULL, NULL, 60, 'Periyar Univesity', '', '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mca_faci`
--

CREATE TABLE `mca_faci` (
  `id` int(5) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mca_org`
--

CREATE TABLE `mca_org` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `orgcategory1` varchar(20) DEFAULT NULL,
  `orgtitle1` varchar(50) DEFAULT NULL,
  `orgfun1` varchar(50) DEFAULT NULL,
  `orgdays1` int(3) DEFAULT NULL,
  `orgfrom1` date NOT NULL,
  `orgto1` date NOT NULL,
  `orgdate1` date NOT NULL,
  `orgres1` varchar(30) DEFAULT NULL,
  `orgpar1` int(5) DEFAULT NULL,
  `orglevel1` varchar(20) DEFAULT NULL,
  `orgcer1` varchar(100) DEFAULT NULL,
  `orgkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mca_stud`
--

CREATE TABLE `mca_stud` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `year` varchar(5) DEFAULT NULL,
  `sem` int(5) DEFAULT NULL,
  `sec` varchar(5) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  `new_j` int(5) DEFAULT NULL,
  `drop` int(5) DEFAULT NULL,
  `d_discon` int(5) DEFAULT NULL,
  `d_notreg` int(5) DEFAULT NULL,
  `d_passed` int(5) DEFAULT NULL,
  `d_others` int(5) DEFAULT NULL,
  `g_boys` int(5) DEFAULT NULL,
  `g_girls` int(5) DEFAULT NULL,
  `g_others` int(5) DEFAULT NULL,
  `c_bc` int(5) DEFAULT NULL,
  `c_oc` int(5) DEFAULT NULL,
  `c_bcm` int(10) DEFAULT NULL,
  `c_mbc` int(10) DEFAULT NULL,
  `c_sca` int(50) DEFAULT NULL,
  `c_obc` int(5) DEFAULT NULL,
  `c_sc` int(5) DEFAULT NULL,
  `c_st` int(5) DEFAULT NULL,
  `c_others` int(5) DEFAULT NULL,
  `r_hindu` int(5) DEFAULT NULL,
  `r_muslim` int(5) DEFAULT NULL,
  `r_christian` int(5) DEFAULT NULL,
  `r_others` int(5) DEFAULT NULL,
  `stud` int(5) DEFAULT NULL,
  `drop_file` varchar(200) DEFAULT NULL,
  `stud_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mec_bos`
--

CREATE TABLE `mec_bos` (
  `id` int(10) NOT NULL,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mec_bos_mem`
--

CREATE TABLE `mec_bos_mem` (
  `id` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mec_dept`
--

CREATE TABLE `mec_dept` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `aff1` varchar(50) DEFAULT NULL,
  `aff_cer1` varchar(100) DEFAULT NULL,
  `nba_cer1` varchar(100) DEFAULT NULL,
  `intake2` int(5) DEFAULT NULL,
  `aff2` varchar(50) DEFAULT NULL,
  `aff_cer2` varchar(100) DEFAULT NULL,
  `nba_cer2` varchar(100) DEFAULT NULL,
  `intake3` int(5) DEFAULT NULL,
  `aff3` varchar(50) DEFAULT NULL,
  `aff_cer3` varchar(100) DEFAULT NULL,
  `nba_cer3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mec_faci`
--

CREATE TABLE `mec_faci` (
  `id` int(5) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mec_org`
--

CREATE TABLE `mec_org` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `orgcategory1` varchar(20) DEFAULT NULL,
  `orgtitle1` varchar(50) DEFAULT NULL,
  `orgfun1` varchar(50) DEFAULT NULL,
  `orgdays1` int(3) DEFAULT NULL,
  `orgfrom1` date NOT NULL,
  `orgto1` date NOT NULL,
  `orgdate1` date NOT NULL,
  `orgres1` varchar(30) DEFAULT NULL,
  `orgpar1` int(5) DEFAULT NULL,
  `orglevel1` varchar(20) DEFAULT NULL,
  `orgcer1` varchar(100) DEFAULT NULL,
  `orgkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mec_stud`
--

CREATE TABLE `mec_stud` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `year` varchar(5) DEFAULT NULL,
  `sem` int(5) DEFAULT NULL,
  `sec` varchar(5) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  `new_j` int(5) DEFAULT NULL,
  `drop` int(5) DEFAULT NULL,
  `d_discon` int(5) DEFAULT NULL,
  `d_notreg` int(5) DEFAULT NULL,
  `d_passed` int(5) DEFAULT NULL,
  `d_others` int(5) DEFAULT NULL,
  `g_boys` int(5) DEFAULT NULL,
  `g_girls` int(5) DEFAULT NULL,
  `g_others` int(5) DEFAULT NULL,
  `c_bc` int(5) DEFAULT NULL,
  `c_oc` int(5) DEFAULT NULL,
  `c_bcm` int(10) DEFAULT NULL,
  `c_mbc` int(10) DEFAULT NULL,
  `c_sca` int(50) DEFAULT NULL,
  `c_obc` int(5) DEFAULT NULL,
  `c_sc` int(5) DEFAULT NULL,
  `c_st` int(5) DEFAULT NULL,
  `c_others` int(5) DEFAULT NULL,
  `r_hindu` int(5) DEFAULT NULL,
  `r_muslim` int(5) DEFAULT NULL,
  `r_christian` int(5) DEFAULT NULL,
  `r_others` int(5) DEFAULT NULL,
  `stud` int(5) DEFAULT NULL,
  `drop_file` varchar(200) DEFAULT NULL,
  `stud_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phy_bos`
--

CREATE TABLE `phy_bos` (
  `id` int(10) NOT NULL,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phy_bos_mem`
--

CREATE TABLE `phy_bos_mem` (
  `id` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phy_dept`
--

CREATE TABLE `phy_dept` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `aff1` varchar(50) DEFAULT NULL,
  `aff_cer1` varchar(100) DEFAULT NULL,
  `nba_cer1` varchar(100) DEFAULT NULL,
  `intake2` int(5) DEFAULT NULL,
  `aff2` varchar(50) DEFAULT NULL,
  `aff_cer2` varchar(100) DEFAULT NULL,
  `nba_cer2` varchar(100) DEFAULT NULL,
  `intake3` int(5) DEFAULT NULL,
  `aff3` varchar(50) DEFAULT NULL,
  `aff_cer3` varchar(100) DEFAULT NULL,
  `nba_cer3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phy_faci`
--

CREATE TABLE `phy_faci` (
  `id` int(5) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phy_org`
--

CREATE TABLE `phy_org` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `orgcategory1` varchar(20) DEFAULT NULL,
  `orgtitle1` varchar(50) DEFAULT NULL,
  `orgfun1` varchar(50) DEFAULT NULL,
  `orgdays1` int(3) DEFAULT NULL,
  `orgfrom1` date NOT NULL,
  `orgto1` date NOT NULL,
  `orgdate1` date NOT NULL,
  `orgres1` varchar(30) DEFAULT NULL,
  `orgpar1` int(5) DEFAULT NULL,
  `orglevel1` varchar(20) DEFAULT NULL,
  `orgcer1` varchar(100) DEFAULT NULL,
  `orgkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phy_stud`
--

CREATE TABLE `phy_stud` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `year` varchar(5) DEFAULT NULL,
  `sem` int(5) DEFAULT NULL,
  `sec` varchar(5) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  `new_j` int(5) DEFAULT NULL,
  `drop` int(5) DEFAULT NULL,
  `d_discon` int(5) DEFAULT NULL,
  `d_notreg` int(5) DEFAULT NULL,
  `d_passed` int(5) DEFAULT NULL,
  `d_others` int(5) DEFAULT NULL,
  `g_boys` int(5) DEFAULT NULL,
  `g_girls` int(5) DEFAULT NULL,
  `g_others` int(5) DEFAULT NULL,
  `c_bc` int(5) DEFAULT NULL,
  `c_oc` int(5) DEFAULT NULL,
  `c_bcm` int(10) DEFAULT NULL,
  `c_mbc` int(10) DEFAULT NULL,
  `c_sca` int(50) DEFAULT NULL,
  `c_obc` int(5) DEFAULT NULL,
  `c_sc` int(5) DEFAULT NULL,
  `c_st` int(5) DEFAULT NULL,
  `c_others` int(5) DEFAULT NULL,
  `r_hindu` int(5) DEFAULT NULL,
  `r_muslim` int(5) DEFAULT NULL,
  `r_christian` int(5) DEFAULT NULL,
  `r_others` int(5) DEFAULT NULL,
  `stud` int(5) DEFAULT NULL,
  `drop_file` varchar(200) DEFAULT NULL,
  `stud_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vmc_bos`
--

CREATE TABLE `vmc_bos` (
  `id` int(10) NOT NULL,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vmc_bos`
--

INSERT INTO `vmc_bos` (`id`, `n_bos`, `ayear`, `date`, `pic`) VALUES
(12, 1, '1987-1988', '1988-09-05', '17882-img1.jpg'),
(13, 2, '1990-1991', '1990-04-05', '62507-img1.jpg'),
(14, 3, '1989-1990', '1990-08-05', '46210-img1.jpg'),
(15, 4, '1995-1996', '1995-10-28', '36384-img1.jpg'),
(16, 5, '1992-1993', '1992-02-05', '16607-img2.jpg'),
(17, 6, '1991-1992', '1998-04-05', '20640-img1.jpg'),
(18, 7, '1995-1996', '1989-05-08', '73689-img1.jpg'),
(19, 8, '1991-1992', '1991-04-05', '43890-img1.jpg'),
(20, 9, '2002-2003', '2002-02-05', '3322-img1.jpg'),
(21, 10, '1996-1997', '1996-09-05', '27090-img1.jpg'),
(22, 11, '1995-1996', '1995-09-08', '3326-img1.jpg'),
(23, 12, '1991-1992', '0000-00-00', '84097-img1.jpg'),
(24, 13, '1993-1994', '1999-08-05', '54555-img1.jpg'),
(25, 14, '1992-1993', '1999-05-05', '94313-img1.jpg'),
(26, 15, '1991-1992', '1991-08-05', '92851-img1.jpg'),
(27, 16, '1987-1988', '1995-02-05', '53427-1096-512.png'),
(28, 17, '1987-1988', '1999-06-09', '39858-img1.jpg'),
(29, 18, '1987-1988', '1999-08-05', '35249-code.png'),
(30, 19, '1988-1989', '1999-09-08', '4162-code.png'),
(31, 20, '1990-1991', '1999-06-05', '56758-code.png'),
(32, 21, '1993-1994', '1993-09-06', '11803-code.png'),
(33, 22, '1987-1988', '1987-09-08', '64711-download.jpeg'),
(34, 23, '2007-2008', '2007-10-02', '87001-download.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `vmc_bos_mem`
--

CREATE TABLE `vmc_bos_mem` (
  `id` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vmc_bos_mem`
--

INSERT INTO `vmc_bos_mem` (`id`, `bid`, `name`, `desig`, `adde`, `cate`) VALUES
(1, 12, 'Ram', 'HOD', 'Add', 'Staff'),
(2, 13, 'Ram', 'HOD', 'Add', 'Staff'),
(3, 15, 'Ram', 'HOD', 'Add', 'Staff'),
(4, 15, 'sam', 'Faculty', 'Add', 'Staff'),
(5, 15, 'ramki', 'Faculty', 'Add', 'Staff'),
(7, 16, 'Ram', 'HOD', 'Add', 'Staff'),
(8, 17, 'Ram', 'HOD', 'Add', 'Staff'),
(9, 18, 'Ram', 'HOD', 'Add', 'Staff'),
(10, 19, 'Ram', 'HOD', '', 'Staff'),
(11, 20, 'Ram', 'HOD', 'M1/42,New ASTC HUDCO, Hosur', 'Staff'),
(12, 21, 'Ram', 'HOD', 'HIG 352,TNHB,PHASE VII,THENDRAL NAGAR, HOSUR', 'Staff'),
(13, 22, 'Vjo', 'Faculty', 'M1/42,New ASTC HUDCO, Hosur', 'Staff'),
(14, 23, 'siva', 'HOD', '2/612-30,MGR NAGAR, HOSUR', 'Staff'),
(16, 25, 'Ram', 'HOD', 'M1/42,New ASTC HUDCO, Hosur', 'Staff'),
(17, 15, 'Vjo', 'Faculty', 'M1/42,New ASTC HUDCO, Hosur', 'Staff'),
(18, 26, 'siva', 'HOD', '2/612-30,MGR NAGAR, HOSUR', 'Staff'),
(19, 34, 'Ram', 'HOD', 'HIG 352,TNHB,PHASE VII,THENDRAL NAGAR, HOSUR', 'Staff'),
(20, 34, 'ramki', 'Faculty', '123,the', 'Staff'),
(21, 13, 'ramki', 'Faculty', 'HIG 352,TNHB,PHASE VII,THENDRAL NAGAR, HOSUR', 'Staff'),
(22, 13, 'siva', 'Faculty', 'M1/42,New ASTC HUDCO, Hosur', 'Staff'),
(23, 13, 'sam', 'Faculty', '2/612-30,MGR NAGAR, HOSUR', 'Staff'),
(24, 13, 'CSI', 'Faculty', 's/o albart amman theru 2nd cross,kandhikuppam.', 'Staff');

-- --------------------------------------------------------

--
-- Table structure for table `vmc_dept`
--

CREATE TABLE `vmc_dept` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `aff1` varchar(50) DEFAULT NULL,
  `aff_cer1` varchar(100) DEFAULT NULL,
  `nba_cer1` varchar(100) DEFAULT NULL,
  `intake2` int(5) DEFAULT NULL,
  `aff2` varchar(50) DEFAULT NULL,
  `aff_cer2` varchar(100) DEFAULT NULL,
  `nba_cer2` varchar(100) DEFAULT NULL,
  `intake3` int(5) DEFAULT NULL,
  `aff3` varchar(50) DEFAULT NULL,
  `aff_cer3` varchar(100) DEFAULT NULL,
  `nba_cer3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vmc_dept`
--

INSERT INTO `vmc_dept` (`id`, `ayear`, `intake1`, `aff1`, `aff_cer1`, `nba_cer1`, `intake2`, `aff2`, `aff_cer2`, `nba_cer2`, `intake3`, `aff3`, `aff_cer3`, `nba_cer3`) VALUES
(1, '1995-1996', 55, 'anna', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vmc_faci`
--

CREATE TABLE `vmc_faci` (
  `id` int(5) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vmc_faci`
--

INSERT INTO `vmc_faci` (`id`, `type`, `l_name`, `name`, `model`, `year`, `price`, `quantity`, `invoice`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'lab1', 'Computer center 1', 'pc', 'hp', '2015', '10000', 10, ''),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vmc_org`
--

CREATE TABLE `vmc_org` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `orgcategory1` varchar(20) DEFAULT NULL,
  `orgtitle1` varchar(50) DEFAULT NULL,
  `orgfun1` varchar(50) DEFAULT NULL,
  `orgdays1` int(3) DEFAULT NULL,
  `orgfrom1` date NOT NULL,
  `orgto1` date NOT NULL,
  `orgdate1` date NOT NULL,
  `orgres1` varchar(30) DEFAULT NULL,
  `orgpar1` int(5) DEFAULT NULL,
  `orglevel1` varchar(20) DEFAULT NULL,
  `orgcer1` varchar(100) DEFAULT NULL,
  `orgkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vmc_stud`
--

CREATE TABLE `vmc_stud` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `year` varchar(5) DEFAULT NULL,
  `sem` int(5) DEFAULT NULL,
  `sec` varchar(5) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  `new_j` int(5) DEFAULT NULL,
  `drop` int(5) DEFAULT NULL,
  `d_discon` int(5) DEFAULT NULL,
  `d_notreg` int(5) DEFAULT NULL,
  `d_passed` int(5) DEFAULT NULL,
  `d_others` int(5) DEFAULT NULL,
  `g_boys` int(5) DEFAULT NULL,
  `g_girls` int(5) DEFAULT NULL,
  `g_others` int(5) DEFAULT NULL,
  `c_bc` int(5) DEFAULT NULL,
  `c_oc` int(5) DEFAULT NULL,
  `c_bcm` int(10) DEFAULT NULL,
  `c_mbc` int(10) DEFAULT NULL,
  `c_sca` int(50) DEFAULT NULL,
  `c_obc` int(5) DEFAULT NULL,
  `c_sc` int(5) DEFAULT NULL,
  `c_st` int(5) DEFAULT NULL,
  `c_others` int(5) DEFAULT NULL,
  `r_hindu` int(5) DEFAULT NULL,
  `r_muslim` int(5) DEFAULT NULL,
  `r_christian` int(5) DEFAULT NULL,
  `r_others` int(5) DEFAULT NULL,
  `stud` int(5) DEFAULT NULL,
  `drop_file` varchar(200) DEFAULT NULL,
  `stud_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vv_bos`
--

CREATE TABLE `vv_bos` (
  `id` int(10) NOT NULL,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vv_bos`
--

INSERT INTO `vv_bos` (`id`, `n_bos`, `ayear`, `date`, `pic`) VALUES
(1, 2, '2007-2008', '2007-06-10', '95259-bg1.jpg'),
(2, 2, '2008-2009', '2009-04-12', '64987-seminar_dec-2010.jpg'),
(3, 1, '2007-2008', '2007-12-12', '47212-250px-czech_passport_2006_mrz_data.jpg'),
(4, 1, '2007-2008', '2007-12-12', '19085-250px-czech_passport_2006_mrz_data.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `vv_bos_mem`
--

CREATE TABLE `vv_bos_mem` (
  `id` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vv_bos_mem`
--

INSERT INTO `vv_bos_mem` (`id`, `bid`, `name`, `desig`, `adde`, `cate`) VALUES
(1, 1, 'Ram', 'HOD', '2/612-30,MGR NAGAR, HOSUR', 'Staff'),
(2, 1, 'siva', 'Faculty', '123,the', 'Staff'),
(3, 1, 'ramki', 'Faculty', 'HIG 352,TNHB,PHASE VII,THENDRAL NAGAR, HOSUR', 'Staff'),
(4, 2, 'sdfsad', 'sdfsdf', 'sdfsdf', 'dfsdf'),
(5, 3, 'sam', 'Faculty', '2/612-30,MGR NAGAR, HOSUR', 'Staff'),
(6, 3, 'siva', 'HOD', 's/o albart amman theru 2nd cross,kandhikuppam.', 'Staff');

-- --------------------------------------------------------

--
-- Table structure for table `vv_dept`
--

CREATE TABLE `vv_dept` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `aff1` varchar(50) DEFAULT NULL,
  `aff_cer1` varchar(100) DEFAULT NULL,
  `nba_cer1` varchar(100) DEFAULT NULL,
  `intake2` int(5) DEFAULT NULL,
  `aff2` varchar(50) DEFAULT NULL,
  `aff_cer2` varchar(100) DEFAULT NULL,
  `nba_cer2` varchar(100) DEFAULT NULL,
  `intake3` int(5) DEFAULT NULL,
  `aff3` varchar(50) DEFAULT NULL,
  `aff_cer3` varchar(100) DEFAULT NULL,
  `nba_cer3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vv_dept`
--

INSERT INTO `vv_dept` (`id`, `ayear`, `intake1`, `aff1`, `aff_cer1`, `nba_cer1`, `intake2`, `aff2`, `aff_cer2`, `nba_cer2`, `intake3`, `aff3`, `aff_cer3`, `nba_cer3`) VALUES
(1, '1996-1997', 55, 'anna', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2006-2007', NULL, NULL, NULL, NULL, 54, 'anna', '', '', NULL, NULL, NULL, NULL),
(3, '1993-1994', 0, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2004-2005', NULL, NULL, NULL, NULL, 0, '', '', '', NULL, NULL, NULL, NULL),
(5, '2017-2018', NULL, NULL, NULL, NULL, 24, 'Anna University', '', '', NULL, NULL, NULL, NULL),
(6, '2007-2008', 50, 'Anna University', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vv_faci`
--

CREATE TABLE `vv_faci` (
  `id` int(5) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vv_faci`
--

INSERT INTO `vv_faci` (`id`, `type`, `l_name`, `name`, `model`, `year`, `price`, `quantity`, `invoice`) VALUES
(1, 'lab1', NULL, 'Server', 'I7', '2010', '100000', 1, ''),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'gen', NULL, 'LCD Projector', 'BenQ', '2010', '30000', 2, ''),
(5, 'gen', NULL, 'Printer', 'HP MFP', '2016', '20000', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `vv_org`
--

CREATE TABLE `vv_org` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `orgcategory1` varchar(20) DEFAULT NULL,
  `orgtitle1` varchar(50) DEFAULT NULL,
  `orgfun1` varchar(50) DEFAULT NULL,
  `orgdays1` int(3) DEFAULT NULL,
  `orgfrom1` date NOT NULL,
  `orgto1` date NOT NULL,
  `orgdate1` date NOT NULL,
  `orgres1` varchar(30) DEFAULT NULL,
  `orgpar1` int(5) DEFAULT NULL,
  `orglevel1` varchar(20) DEFAULT NULL,
  `orgcer1` varchar(100) DEFAULT NULL,
  `orgkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vv_org`
--

INSERT INTO `vv_org` (`id`, `ayear`, `orgcategory1`, `orgtitle1`, `orgfun1`, `orgdays1`, `orgfrom1`, `orgto1`, `orgdate1`, `orgres1`, `orgpar1`, `orglevel1`, `orgcer1`, `orgkey`) VALUES
(1, '1991-1992', 'training', 'web development', 'csi', 2, '1992-05-05', '1992-05-06', '0000-00-00', 'Shiva', 50, 'state', '15312-1.jpg', 1),
(2, '2006-2007', 'seminar', 'Online Marketing', 'Self', 1, '0000-00-00', '0000-00-00', '2007-02-05', 'Mr. Koteeswaran, Chennai', 50, 'national', '49687-lilly.jpg', 1),
(3, '2016-2017', 'workshop', 'Photoshop', 'Self', 2, '2017-02-10', '2017-02-11', '0000-00-00', 'Mr. rajaraman', 25, 'national', '12974-sign-lilly1.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vv_stud`
--

CREATE TABLE `vv_stud` (
  `id` int(5) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `year` varchar(5) DEFAULT NULL,
  `sem` int(5) DEFAULT NULL,
  `sec` varchar(5) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  `new_j` int(5) DEFAULT NULL,
  `drop` int(5) DEFAULT NULL,
  `d_discon` int(5) DEFAULT NULL,
  `d_notreg` int(5) DEFAULT NULL,
  `d_passed` int(5) DEFAULT NULL,
  `d_others` int(5) DEFAULT NULL,
  `g_boys` int(5) DEFAULT NULL,
  `g_girls` int(5) DEFAULT NULL,
  `g_others` int(5) DEFAULT NULL,
  `c_bc` int(5) DEFAULT NULL,
  `c_oc` int(5) DEFAULT NULL,
  `c_bcm` int(10) DEFAULT NULL,
  `c_mbc` int(10) DEFAULT NULL,
  `c_sca` int(50) DEFAULT NULL,
  `c_obc` int(5) DEFAULT NULL,
  `c_sc` int(5) DEFAULT NULL,
  `c_st` int(5) DEFAULT NULL,
  `c_others` int(5) DEFAULT NULL,
  `r_hindu` int(5) DEFAULT NULL,
  `r_muslim` int(5) DEFAULT NULL,
  `r_christian` int(5) DEFAULT NULL,
  `r_others` int(5) DEFAULT NULL,
  `stud` int(5) DEFAULT NULL,
  `drop_file` varchar(200) DEFAULT NULL,
  `stud_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vv_stud`
--

INSERT INTO `vv_stud` (`id`, `ayear`, `year`, `sem`, `sec`, `level`, `batch`, `new_j`, `drop`, `d_discon`, `d_notreg`, `d_passed`, `d_others`, `g_boys`, `g_girls`, `g_others`, `c_bc`, `c_oc`, `c_bcm`, `c_mbc`, `c_sca`, `c_obc`, `c_sc`, `c_st`, `c_others`, `r_hindu`, `r_muslim`, `r_christian`, `r_others`, `stud`, `drop_file`, `stud_file`) VALUES
(1, '1990-1991', 'I', 1, 'A', 'ug', '1990-1994', 0, 0, 0, 0, 0, 0, 10, 10, 0, 5, 0, NULL, NULL, NULL, 5, 5, 5, 0, 10, 10, 0, 0, 20, '0', '65054-admin.png'),
(3, '1992-1993', 'II', 3, 'A', 'ug', '1990-1994', 2, 1, 1, 0, 0, 0, 10, 11, 0, 10, 5, NULL, NULL, NULL, 5, 1, 0, 0, 10, 10, 1, 0, 21, '53559-72668-exported_file.csv', '53559-72668-exported_file.csv'),
(5, '1994-1995', 'I', 5, 'A', 'ug', '1990-1994', 0, 0, 0, 0, 0, 0, 10, 10, 0, 10, 5, NULL, NULL, NULL, 5, 0, 0, 0, 10, 10, 0, 0, 20, '', '36525-81541-contacts.csv'),
(6, '1995-1996', 'III', 6, 'A', 'ug', '1990-1994', 2, 2, 0, 2, 0, 0, 10, 10, 0, 10, 5, NULL, NULL, NULL, 5, 0, 0, 0, 10, 10, 0, 0, 20, '', '52188-81541-contacts.csv'),
(7, '1996-1997', 'IV', 7, 'A', 'ug', '1990-1994', 2, 2, 1, 1, 0, 0, 10, 10, 0, 10, 0, NULL, NULL, NULL, 5, 5, 0, 0, 10, 10, 0, 0, 20, '15437-72668-exported_file.csv', '15437-72668-exported_file.csv'),
(8, '1991-1992', 'IV', 2, 'A', 'ug', '1990-1994', 2, 2, 2, 0, 0, 0, 10, 10, 0, 10, 5, NULL, NULL, NULL, 5, 0, 0, 0, 10, 10, 0, 0, 20, '25999-81541-contacts.csv', '23272-72668-exported_file.csv'),
(9, '1992-1993', 'IV', 4, 'A', 'ug', '1990-1994', 1, 2, 1, 1, 0, 0, 10, 10, 0, 5, 5, NULL, NULL, NULL, 5, 5, 0, 0, 10, 10, 0, 0, 20, '30721-81541-contacts.csv', '88818-72668-exported_file.csv'),
(10, '1991-1992', 'IV', 5, 'A', 'ug', '1990-1994', 1, 1, 1, 0, 0, 0, 10, 10, 0, 5, 5, NULL, NULL, NULL, 5, 5, 0, 0, 10, 10, 0, 0, 20, '10719-81541-contacts.csv', '43159-72668-exported_file.csv'),
(11, '1987-1988', 'III', 5, 'A', 'ug', '1990-1994', 2, 2, 0, 0, 0, 2, 10, 10, 0, 0, 10, NULL, NULL, NULL, 10, 0, 0, 0, 10, 10, 0, 0, 20, '93884-72668-exported_file.csv', '42896-81541-contacts.csv'),
(12, '2015-2016', 'I', 1, 'A', 'ug', '2015-2019', 0, 0, 0, 0, 0, 0, 10, 10, 0, 5, 5, NULL, NULL, NULL, 5, 5, 0, 0, 10, 5, 5, 0, 20, '0', '54437-sample.csv'),
(13, '2015-2016', 'I', 2, 'A', 'ug', '2015-2019', 2, 2, 0, 1, 0, 1, 10, 10, 0, 5, 5, 5, 5, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 20, '74135-sample_file.csv', '76328-sample_file-(14).csv'),
(16, '2016-2017', 'II', 3, 'A', 'ug', '2015-2019', 2, 2, 0, 0, 1, 1, 10, 10, 0, 5, 0, 5, 5, 0, NULL, 5, 0, NULL, NULL, NULL, NULL, NULL, 20, '28618-sample_file.csv', '22242-sample_file-(14).csv'),
(17, '2016-2017', 'II', 4, 'A', 'ug', '2015-2019', 2, 2, 0, 0, 1, 1, 10, 10, 0, 0, 0, 5, 5, 5, NULL, 5, 0, NULL, NULL, NULL, NULL, NULL, 20, 'vv-2015-2019-II-4-A-DROP-', 'vv-2015-2019-II-4-A-NEW-sample_file (14).csv'),
(18, '2007-2008', 'I', 1, 'A', 'ug', '2007-2011', 0, 0, 0, 0, 0, 0, 10, 10, 0, 5, 5, 5, 5, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 20, '0', 'vv-2007-2011-I-1-A-NEW-sample_file (15).csv'),
(19, '2007-2008', 'I', 2, 'A', 'ug', '2007-2011', 0, 2, 1, 1, 0, 0, 9, 9, 0, 6, 6, 6, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 18, 'vv-2007-2011-I-2-A-DROP-', 'vv-2007-2011-I-2-A-NEW-sample_file (14).csv');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aer_bos`
--
ALTER TABLE `aer_bos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aer_bos_mem`
--
ALTER TABLE `aer_bos_mem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aer_dept`
--
ALTER TABLE `aer_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aer_faci`
--
ALTER TABLE `aer_faci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aer_org`
--
ALTER TABLE `aer_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arc_bos`
--
ALTER TABLE `arc_bos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arc_bos_mem`
--
ALTER TABLE `arc_bos_mem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arc_dept`
--
ALTER TABLE `arc_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arc_faci`
--
ALTER TABLE `arc_faci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arc_org`
--
ALTER TABLE `arc_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bio_bos`
--
ALTER TABLE `bio_bos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bio_bos_mem`
--
ALTER TABLE `bio_bos_mem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bio_dept`
--
ALTER TABLE `bio_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bio_faci`
--
ALTER TABLE `bio_faci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bio_org`
--
ALTER TABLE `bio_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_bos`
--
ALTER TABLE `bit_bos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_bos_mem`
--
ALTER TABLE `bit_bos_mem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_dept`
--
ALTER TABLE `bit_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_faci`
--
ALTER TABLE `bit_faci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_org`
--
ALTER TABLE `bit_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bme_bos`
--
ALTER TABLE `bme_bos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bme_bos_mem`
--
ALTER TABLE `bme_bos_mem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bme_dept`
--
ALTER TABLE `bme_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bme_faci`
--
ALTER TABLE `bme_faci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bme_org`
--
ALTER TABLE `bme_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `che_bos`
--
ALTER TABLE `che_bos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `che_bos_mem`
--
ALTER TABLE `che_bos_mem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `che_dept`
--
ALTER TABLE `che_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `che_faci`
--
ALTER TABLE `che_faci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `che_org`
--
ALTER TABLE `che_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chm_bos`
--
ALTER TABLE `chm_bos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chm_bos_mem`
--
ALTER TABLE `chm_bos_mem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chm_dept`
--
ALTER TABLE `chm_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chm_faci`
--
ALTER TABLE `chm_faci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chm_org`
--
ALTER TABLE `chm_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civ_bos`
--
ALTER TABLE `civ_bos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civ_bos_mem`
--
ALTER TABLE `civ_bos_mem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civ_dept`
--
ALTER TABLE `civ_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civ_faci`
--
ALTER TABLE `civ_faci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civ_org`
--
ALTER TABLE `civ_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cse_bos`
--
ALTER TABLE `cse_bos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cse_bos_mem`
--
ALTER TABLE `cse_bos_mem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cse_dept`
--
ALTER TABLE `cse_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cse_faci`
--
ALTER TABLE `cse_faci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cse_org`
--
ALTER TABLE `cse_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dept_info`
--
ALTER TABLE `dept_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dup_bos`
--
ALTER TABLE `dup_bos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dup_bos_mem`
--
ALTER TABLE `dup_bos_mem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dup_dept`
--
ALTER TABLE `dup_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dup_faci`
--
ALTER TABLE `dup_faci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dup_org`
--
ALTER TABLE `dup_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dup_stud`
--
ALTER TABLE `dup_stud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ece_bos`
--
ALTER TABLE `ece_bos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ece_bos_mem`
--
ALTER TABLE `ece_bos_mem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ece_dept`
--
ALTER TABLE `ece_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ece_faci`
--
ALTER TABLE `ece_faci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ece_org`
--
ALTER TABLE `ece_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eee_bos`
--
ALTER TABLE `eee_bos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eee_bos_mem`
--
ALTER TABLE `eee_bos_mem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eee_dept`
--
ALTER TABLE `eee_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eee_faci`
--
ALTER TABLE `eee_faci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eee_org`
--
ALTER TABLE `eee_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eie_bos`
--
ALTER TABLE `eie_bos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eie_bos_mem`
--
ALTER TABLE `eie_bos_mem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eie_dept`
--
ALTER TABLE `eie_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eie_faci`
--
ALTER TABLE `eie_faci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eie_org`
--
ALTER TABLE `eie_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eng_bos`
--
ALTER TABLE `eng_bos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eng_bos_mem`
--
ALTER TABLE `eng_bos_mem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eng_dept`
--
ALTER TABLE `eng_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eng_faci`
--
ALTER TABLE `eng_faci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eng_org`
--
ALTER TABLE `eng_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ins_info`
--
ALTER TABLE `ins_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_bos`
--
ALTER TABLE `mat_bos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_bos_mem`
--
ALTER TABLE `mat_bos_mem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_dept`
--
ALTER TABLE `mat_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_faci`
--
ALTER TABLE `mat_faci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_org`
--
ALTER TABLE `mat_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mba_bos`
--
ALTER TABLE `mba_bos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mba_bos_mem`
--
ALTER TABLE `mba_bos_mem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mba_dept`
--
ALTER TABLE `mba_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mba_faci`
--
ALTER TABLE `mba_faci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mba_org`
--
ALTER TABLE `mba_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mba_stud`
--
ALTER TABLE `mba_stud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mca_bos`
--
ALTER TABLE `mca_bos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mca_bos_mem`
--
ALTER TABLE `mca_bos_mem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mca_dept`
--
ALTER TABLE `mca_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mca_faci`
--
ALTER TABLE `mca_faci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mca_org`
--
ALTER TABLE `mca_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mec_bos`
--
ALTER TABLE `mec_bos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mec_bos_mem`
--
ALTER TABLE `mec_bos_mem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mec_dept`
--
ALTER TABLE `mec_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mec_faci`
--
ALTER TABLE `mec_faci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mec_org`
--
ALTER TABLE `mec_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phy_bos`
--
ALTER TABLE `phy_bos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phy_bos_mem`
--
ALTER TABLE `phy_bos_mem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phy_dept`
--
ALTER TABLE `phy_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phy_faci`
--
ALTER TABLE `phy_faci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phy_org`
--
ALTER TABLE `phy_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vmc_bos`
--
ALTER TABLE `vmc_bos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vmc_bos_mem`
--
ALTER TABLE `vmc_bos_mem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vmc_dept`
--
ALTER TABLE `vmc_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vmc_faci`
--
ALTER TABLE `vmc_faci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vmc_org`
--
ALTER TABLE `vmc_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vmc_stud`
--
ALTER TABLE `vmc_stud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vv_bos`
--
ALTER TABLE `vv_bos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vv_bos_mem`
--
ALTER TABLE `vv_bos_mem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vv_dept`
--
ALTER TABLE `vv_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vv_faci`
--
ALTER TABLE `vv_faci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vv_org`
--
ALTER TABLE `vv_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vv_stud`
--
ALTER TABLE `vv_stud`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aer_bos`
--
ALTER TABLE `aer_bos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aer_bos_mem`
--
ALTER TABLE `aer_bos_mem`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aer_dept`
--
ALTER TABLE `aer_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aer_faci`
--
ALTER TABLE `aer_faci`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aer_org`
--
ALTER TABLE `aer_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arc_bos`
--
ALTER TABLE `arc_bos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arc_bos_mem`
--
ALTER TABLE `arc_bos_mem`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arc_dept`
--
ALTER TABLE `arc_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arc_faci`
--
ALTER TABLE `arc_faci`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arc_org`
--
ALTER TABLE `arc_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bio_bos`
--
ALTER TABLE `bio_bos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bio_bos_mem`
--
ALTER TABLE `bio_bos_mem`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bio_dept`
--
ALTER TABLE `bio_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bio_faci`
--
ALTER TABLE `bio_faci`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bio_org`
--
ALTER TABLE `bio_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bit_bos`
--
ALTER TABLE `bit_bos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bit_bos_mem`
--
ALTER TABLE `bit_bos_mem`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bit_dept`
--
ALTER TABLE `bit_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bit_faci`
--
ALTER TABLE `bit_faci`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bit_org`
--
ALTER TABLE `bit_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bme_bos`
--
ALTER TABLE `bme_bos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bme_bos_mem`
--
ALTER TABLE `bme_bos_mem`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bme_dept`
--
ALTER TABLE `bme_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bme_faci`
--
ALTER TABLE `bme_faci`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bme_org`
--
ALTER TABLE `bme_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `che_bos`
--
ALTER TABLE `che_bos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `che_bos_mem`
--
ALTER TABLE `che_bos_mem`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `che_dept`
--
ALTER TABLE `che_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `che_faci`
--
ALTER TABLE `che_faci`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `che_org`
--
ALTER TABLE `che_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chm_bos`
--
ALTER TABLE `chm_bos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chm_bos_mem`
--
ALTER TABLE `chm_bos_mem`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chm_dept`
--
ALTER TABLE `chm_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chm_faci`
--
ALTER TABLE `chm_faci`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chm_org`
--
ALTER TABLE `chm_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `civ_bos`
--
ALTER TABLE `civ_bos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `civ_bos_mem`
--
ALTER TABLE `civ_bos_mem`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `civ_dept`
--
ALTER TABLE `civ_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `civ_faci`
--
ALTER TABLE `civ_faci`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `civ_org`
--
ALTER TABLE `civ_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cse_bos`
--
ALTER TABLE `cse_bos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cse_bos_mem`
--
ALTER TABLE `cse_bos_mem`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cse_dept`
--
ALTER TABLE `cse_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cse_faci`
--
ALTER TABLE `cse_faci`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cse_org`
--
ALTER TABLE `cse_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dept_info`
--
ALTER TABLE `dept_info`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dup_bos`
--
ALTER TABLE `dup_bos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dup_bos_mem`
--
ALTER TABLE `dup_bos_mem`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dup_dept`
--
ALTER TABLE `dup_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dup_faci`
--
ALTER TABLE `dup_faci`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dup_org`
--
ALTER TABLE `dup_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dup_stud`
--
ALTER TABLE `dup_stud`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ece_bos`
--
ALTER TABLE `ece_bos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ece_bos_mem`
--
ALTER TABLE `ece_bos_mem`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ece_dept`
--
ALTER TABLE `ece_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ece_faci`
--
ALTER TABLE `ece_faci`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ece_org`
--
ALTER TABLE `ece_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eee_bos`
--
ALTER TABLE `eee_bos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eee_bos_mem`
--
ALTER TABLE `eee_bos_mem`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eee_dept`
--
ALTER TABLE `eee_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eee_faci`
--
ALTER TABLE `eee_faci`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eee_org`
--
ALTER TABLE `eee_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eie_bos`
--
ALTER TABLE `eie_bos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eie_bos_mem`
--
ALTER TABLE `eie_bos_mem`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eie_dept`
--
ALTER TABLE `eie_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eie_faci`
--
ALTER TABLE `eie_faci`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eie_org`
--
ALTER TABLE `eie_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eng_bos`
--
ALTER TABLE `eng_bos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eng_bos_mem`
--
ALTER TABLE `eng_bos_mem`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eng_dept`
--
ALTER TABLE `eng_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eng_faci`
--
ALTER TABLE `eng_faci`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eng_org`
--
ALTER TABLE `eng_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ins_info`
--
ALTER TABLE `ins_info`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mat_bos`
--
ALTER TABLE `mat_bos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mat_bos_mem`
--
ALTER TABLE `mat_bos_mem`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mat_dept`
--
ALTER TABLE `mat_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mat_faci`
--
ALTER TABLE `mat_faci`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mat_org`
--
ALTER TABLE `mat_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mba_bos`
--
ALTER TABLE `mba_bos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mba_bos_mem`
--
ALTER TABLE `mba_bos_mem`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mba_dept`
--
ALTER TABLE `mba_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mba_faci`
--
ALTER TABLE `mba_faci`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mba_org`
--
ALTER TABLE `mba_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mba_stud`
--
ALTER TABLE `mba_stud`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mca_bos`
--
ALTER TABLE `mca_bos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mca_bos_mem`
--
ALTER TABLE `mca_bos_mem`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `mca_dept`
--
ALTER TABLE `mca_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mca_faci`
--
ALTER TABLE `mca_faci`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mca_org`
--
ALTER TABLE `mca_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mec_bos`
--
ALTER TABLE `mec_bos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mec_bos_mem`
--
ALTER TABLE `mec_bos_mem`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mec_dept`
--
ALTER TABLE `mec_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mec_faci`
--
ALTER TABLE `mec_faci`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mec_org`
--
ALTER TABLE `mec_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phy_bos`
--
ALTER TABLE `phy_bos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phy_bos_mem`
--
ALTER TABLE `phy_bos_mem`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phy_dept`
--
ALTER TABLE `phy_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phy_faci`
--
ALTER TABLE `phy_faci`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phy_org`
--
ALTER TABLE `phy_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vmc_bos`
--
ALTER TABLE `vmc_bos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `vmc_bos_mem`
--
ALTER TABLE `vmc_bos_mem`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `vmc_dept`
--
ALTER TABLE `vmc_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vmc_faci`
--
ALTER TABLE `vmc_faci`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vmc_org`
--
ALTER TABLE `vmc_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vmc_stud`
--
ALTER TABLE `vmc_stud`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vv_bos`
--
ALTER TABLE `vv_bos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vv_bos_mem`
--
ALTER TABLE `vv_bos_mem`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vv_dept`
--
ALTER TABLE `vv_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vv_faci`
--
ALTER TABLE `vv_faci`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vv_org`
--
ALTER TABLE `vv_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vv_stud`
--
ALTER TABLE `vv_stud`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
