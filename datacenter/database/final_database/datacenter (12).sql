-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2019 at 10:13 AM
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
-- Database: `datacenter`
--

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
-- Table structure for table `aer_fac`
--

CREATE TABLE `aer_fac` (
  `sid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `age` int(4) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob1` bigint(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `mstatus` varchar(5) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `relegion` varchar(30) NOT NULL,
  `comunity` varchar(10) NOT NULL,
  `place` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `aadharno` bigint(12) NOT NULL,
  `panno` varchar(10) NOT NULL,
  `passport` varchar(20) DEFAULT NULL,
  `blood` varchar(5) NOT NULL,
  `doj` date NOT NULL,
  `designation` varchar(50) NOT NULL,
  `mob2` bigint(10) DEFAULT NULL,
  `dept` varchar(50) NOT NULL,
  `uploadpic` varchar(100) NOT NULL,
  `aadharpic` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `dor` date DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `app_order` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aer_fac`
--

INSERT INTO `aer_fac` (`sid`, `name`, `dob`, `age`, `gender`, `email`, `mob1`, `fname`, `mname`, `mstatus`, `sname`, `relegion`, `comunity`, `place`, `city`, `district`, `state`, `country`, `pincode`, `address`, `paddress`, `aadharno`, `panno`, `passport`, `blood`, `doj`, `designation`, `mob2`, `dept`, `uploadpic`, `aadharpic`, `password`, `status`, `dor`, `reason`, `app_order`) VALUES
('S13AER003', 'ANAND', '1988-07-19', 31, 'male', 'anand.aero@adhiyamaan.in', 9786292925, 'THANGARAJ.M', 'CHANDRA KALAI SELVI', 'y', '', 'HINDU', 'SC', 'NATHAM', 'NATHAM', 'DINDUGUL', 'Tamil Nadu', 'India', '624401', '27/17,KAMARAJ NAGAR,\r\nNATHAM,\r\nDINDUGUL\r\nPIN CODE-624401   ', '27/17,KAMARAJ NAGAR,\r\nNATHAM,\r\nDINDUGUL\r\nPIN CODE-624401   ', 750083556339, '624401', '', 'B+Ve', '2013-08-07', 'ASSISTANT PROFESSOR', 0, 'AER', '17553-556.jpg', '29008-adhar-card.pdf', '6339', NULL, NULL, NULL, NULL),
('S17AER001', 'R.PRIYANKA', '1994-12-07', 25, 'female', 'priyankaragunathanae@gmail.com', 9790509177, 'RAGUNATHAN.K', 'LATHA.P', 'n', '', 'HINDU', 'BC', 'PERAMPATTU', 'VELLORE', 'VELLORE', 'Tamil Nadu', 'India', '635652', '1/33 PERUMAL KOVIL STREET,\r\nPERAMPATTU(P.O),\r\nTIRUPATTUR(TK),\r\nVELLORE(DT)-635652  ', '1/33 PERUMAL KOVIL STREET,\r\nPERAMPATTU(P.O),\r\nTIRUPATTUR(TK),\r\nVELLORE(DT)-635652  ', 571115289633, 'CYOPP9182N', '', 'O+Ve', '2017-08-16', 'ASSISTANT PROFESSOR', 9486161677, 'AER', '47562-img233.jpg', '58721-img410.pdf', '9633', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aer_fac_attorg`
--

CREATE TABLE `aer_fac_attorg` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `attcategory1` varchar(20) DEFAULT NULL,
  `atttitle1` varchar(50) DEFAULT NULL,
  `attdays1` int(3) DEFAULT NULL,
  `attfrom1` date NOT NULL,
  `attto1` date NOT NULL,
  `attdate1` date NOT NULL,
  `attorg1` varchar(50) DEFAULT NULL,
  `attplace1` varchar(50) DEFAULT NULL,
  `attlevel1` varchar(20) DEFAULT NULL,
  `attcer1` varchar(100) DEFAULT NULL,
  `attkey` int(1) DEFAULT NULL,
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
-- Table structure for table `aer_fac_bkjrn`
--

CREATE TABLE `aer_fac_bkjrn` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `bk1` varchar(20) DEFAULT NULL,
  `bkcha1` varchar(50) DEFAULT NULL,
  `bkissn1` varchar(20) DEFAULT NULL,
  `bkmy1` varchar(7) DEFAULT NULL,
  `bkpub1` varchar(50) DEFAULT NULL,
  `bktype1` varchar(50) DEFAULT NULL,
  `bkkey` int(1) DEFAULT NULL,
  `jrnname1` varchar(50) DEFAULT NULL,
  `jrnvol1` varchar(20) DEFAULT NULL,
  `jrnissue1` varchar(20) DEFAULT NULL,
  `jrnissn1` varchar(20) DEFAULT NULL,
  `jrncategory1` varchar(20) DEFAULT NULL,
  `jrnlink1` varchar(100) DEFAULT NULL,
  `jrncit1` varchar(30) DEFAULT NULL,
  `jrnpdf1` varchar(100) DEFAULT NULL,
  `jrnimpact1` int(10) DEFAULT NULL,
  `jrnkey` int(1) DEFAULT NULL,
  `jrntitle1` varchar(100) DEFAULT NULL,
  `gl` varchar(50) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aer_fac_edu`
--

CREATE TABLE `aer_fac_edu` (
  `sid` varchar(30) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `sboard` varchar(10) DEFAULT NULL,
  `syear` int(4) DEFAULT NULL,
  `spercentage` int(4) DEFAULT NULL,
  `scertificate` varchar(100) DEFAULT NULL,
  `skey` int(1) DEFAULT NULL,
  `s2name` varchar(50) DEFAULT NULL,
  `s2board` varchar(10) DEFAULT NULL,
  `s2branch` varchar(50) DEFAULT NULL,
  `s2year` int(4) DEFAULT NULL,
  `s2percentage` int(4) DEFAULT NULL,
  `s2certificate` varchar(100) DEFAULT NULL,
  `s2key` int(1) DEFAULT NULL,
  `dname` varchar(50) DEFAULT NULL,
  `dboard` varchar(10) DEFAULT NULL,
  `ddegree` varchar(50) DEFAULT NULL,
  `dmode` varchar(10) DEFAULT NULL,
  `dyear` int(4) DEFAULT NULL,
  `dpercentage` int(4) DEFAULT NULL,
  `dcertificate` varchar(100) DEFAULT NULL,
  `dkey` int(1) DEFAULT NULL,
  `d1name` varchar(50) DEFAULT NULL,
  `d1board` varchar(10) DEFAULT NULL,
  `d1degree` varchar(50) DEFAULT NULL,
  `d1mode` varchar(10) DEFAULT NULL,
  `d1year` int(4) DEFAULT NULL,
  `d1percentage` int(4) DEFAULT NULL,
  `d1certificate` varchar(100) DEFAULT NULL,
  `d1key` int(1) DEFAULT NULL,
  `d2name` varchar(50) DEFAULT NULL,
  `d2board` varchar(10) DEFAULT NULL,
  `d2degree` varchar(50) DEFAULT NULL,
  `d2mode` varchar(10) DEFAULT NULL,
  `d2year` int(4) DEFAULT NULL,
  `d2percentage` int(4) DEFAULT NULL,
  `d2certificate` varchar(100) DEFAULT NULL,
  `d2key` int(1) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `uuniversity` varchar(50) DEFAULT NULL,
  `udegree` varchar(50) DEFAULT NULL,
  `ubranch` varchar(50) DEFAULT NULL,
  `umode` varchar(10) DEFAULT NULL,
  `uyear` int(4) DEFAULT NULL,
  `upercentage` int(4) DEFAULT NULL,
  `ucertificate` varchar(100) DEFAULT NULL,
  `ukey` int(1) DEFAULT NULL,
  `u1name` varchar(50) DEFAULT NULL,
  `u1university` varchar(50) DEFAULT NULL,
  `u1degree` varchar(50) DEFAULT NULL,
  `u1branch` varchar(50) DEFAULT NULL,
  `u1mode` varchar(10) DEFAULT NULL,
  `u1year` int(4) DEFAULT NULL,
  `u1percentage` int(4) DEFAULT NULL,
  `u1certificate` varchar(100) DEFAULT NULL,
  `u1key` int(1) DEFAULT NULL,
  `u2name` varchar(50) DEFAULT NULL,
  `u2university` varchar(50) DEFAULT NULL,
  `u2degree` varchar(50) DEFAULT NULL,
  `u2branch` varchar(50) DEFAULT NULL,
  `u2mode` varchar(10) DEFAULT NULL,
  `u2year` int(4) DEFAULT NULL,
  `u2percentage` int(4) DEFAULT NULL,
  `u2certificate` varchar(100) DEFAULT NULL,
  `u2key` int(1) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `puniversity` varchar(50) DEFAULT NULL,
  `pdegree` varchar(50) DEFAULT NULL,
  `pbranch` varchar(50) DEFAULT NULL,
  `pmode` varchar(10) DEFAULT NULL,
  `pyear` int(4) DEFAULT NULL,
  `ppercentage` int(4) DEFAULT NULL,
  `pcertificate` varchar(100) DEFAULT NULL,
  `pkey` int(1) DEFAULT NULL,
  `p1name` varchar(50) DEFAULT NULL,
  `p1university` varchar(50) DEFAULT NULL,
  `p1degree` varchar(50) DEFAULT NULL,
  `p1branch` varchar(50) DEFAULT NULL,
  `p1mode` varchar(10) DEFAULT NULL,
  `p1year` int(4) DEFAULT NULL,
  `p1percentage` int(4) DEFAULT NULL,
  `p1certificate` varchar(100) DEFAULT NULL,
  `p1key` int(1) DEFAULT NULL,
  `p2name` varchar(50) DEFAULT NULL,
  `p2university` varchar(50) DEFAULT NULL,
  `p2degree` varchar(50) DEFAULT NULL,
  `p2branch` varchar(50) DEFAULT NULL,
  `p2mode` varchar(10) DEFAULT NULL,
  `p2year` int(4) DEFAULT NULL,
  `p2percentage` int(4) DEFAULT NULL,
  `p2certificate` varchar(100) DEFAULT NULL,
  `p2key` int(1) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `muniversity` varchar(50) DEFAULT NULL,
  `mspec` varchar(50) DEFAULT NULL,
  `mbranch` varchar(50) DEFAULT NULL,
  `mmode` varchar(10) DEFAULT NULL,
  `myear` int(4) DEFAULT NULL,
  `mpercentage` int(4) DEFAULT NULL,
  `mthesis` varchar(50) DEFAULT NULL,
  `mguide` varchar(30) DEFAULT NULL,
  `mcertificate` varchar(100) DEFAULT NULL,
  `mkey` int(1) DEFAULT NULL,
  `phname` varchar(50) DEFAULT NULL,
  `phuniversity` varchar(50) DEFAULT NULL,
  `phspec` varchar(50) DEFAULT NULL,
  `phbranch` varchar(50) DEFAULT NULL,
  `phmode` varchar(10) DEFAULT NULL,
  `phyreg` varchar(7) DEFAULT NULL,
  `phyear` varchar(7) DEFAULT NULL,
  `phthesis` varchar(100) DEFAULT NULL,
  `phguide` varchar(30) DEFAULT NULL,
  `phcertificate` varchar(100) DEFAULT NULL,
  `phkey` int(1) DEFAULT NULL,
  `ph1name` varchar(50) DEFAULT NULL,
  `ph1university` varchar(50) DEFAULT NULL,
  `ph1spec` varchar(50) DEFAULT NULL,
  `ph1branch` varchar(50) DEFAULT NULL,
  `ph1mode` varchar(10) DEFAULT NULL,
  `ph1yreg` varchar(7) DEFAULT NULL,
  `ph1year` varchar(7) DEFAULT NULL,
  `ph1thesis` varchar(100) DEFAULT NULL,
  `ph1guide` varchar(30) DEFAULT NULL,
  `ph1certificate` varchar(100) DEFAULT NULL,
  `ph1key` int(1) DEFAULT NULL,
  `ph2name` varchar(50) DEFAULT NULL,
  `ph2university` varchar(50) DEFAULT NULL,
  `ph2spec` varchar(50) DEFAULT NULL,
  `ph2branch` varchar(50) DEFAULT NULL,
  `ph2mode` varchar(10) DEFAULT NULL,
  `ph2yreg` varchar(7) DEFAULT NULL,
  `ph2year` varchar(7) DEFAULT NULL,
  `ph2thesis` varchar(100) DEFAULT NULL,
  `ph2guide` varchar(30) DEFAULT NULL,
  `ph2certificate` varchar(100) DEFAULT NULL,
  `ph2key` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aer_fac_exp`
--

CREATE TABLE `aer_fac_exp` (
  `sid` varchar(30) NOT NULL,
  `clg1` varchar(50) DEFAULT NULL,
  `clgdesg1` varchar(30) DEFAULT NULL,
  `clgdoj1` date DEFAULT NULL,
  `clgdor1` date DEFAULT NULL,
  `clgreason1` varchar(100) DEFAULT NULL,
  `clgcir1` varchar(100) DEFAULT NULL,
  `clgkey` int(1) DEFAULT NULL,
  `pol1` varchar(50) DEFAULT NULL,
  `poldesg1` varchar(30) DEFAULT NULL,
  `poldoj1` date DEFAULT NULL,
  `poldor1` date DEFAULT NULL,
  `polreason1` varchar(100) DEFAULT NULL,
  `polcir1` varchar(100) DEFAULT NULL,
  `polkey` int(1) DEFAULT NULL,
  `sch1` varchar(50) DEFAULT NULL,
  `schdesg1` varchar(30) DEFAULT NULL,
  `schdoj1` date DEFAULT NULL,
  `schdor1` date DEFAULT NULL,
  `schreason1` varchar(100) DEFAULT NULL,
  `schcir1` varchar(100) DEFAULT NULL,
  `schkey` int(1) DEFAULT NULL,
  `ind1` varchar(50) DEFAULT NULL,
  `inddesg1` varchar(30) DEFAULT NULL,
  `indnature1` varchar(30) DEFAULT NULL,
  `inddoj1` date DEFAULT NULL,
  `inddor1` date DEFAULT NULL,
  `indreason1` varchar(100) DEFAULT NULL,
  `indcir1` varchar(100) DEFAULT NULL,
  `indkey` int(1) DEFAULT NULL,
  `ot1` varchar(50) DEFAULT NULL,
  `otdesg1` varchar(30) DEFAULT NULL,
  `otnature1` varchar(30) DEFAULT NULL,
  `otdoj1` date DEFAULT NULL,
  `otdor1` date DEFAULT NULL,
  `otreason1` varchar(100) DEFAULT NULL,
  `otcir1` varchar(100) DEFAULT NULL,
  `otkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aer_fac_funpat`
--

CREATE TABLE `aer_fac_funpat` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `titleofpro1` varchar(50) DEFAULT NULL,
  `duration1` varchar(30) DEFAULT NULL,
  `amountsan1` varchar(20) DEFAULT NULL,
  `agency1` varchar(20) DEFAULT NULL,
  `startdate1` date DEFAULT NULL,
  `copiname1` varchar(20) DEFAULT NULL,
  `year1` varchar(7) DEFAULT NULL,
  `order1` varchar(200) DEFAULT NULL,
  `uc1` varchar(200) DEFAULT NULL,
  `funkey` int(1) DEFAULT NULL,
  `nameofpat1` varchar(50) DEFAULT NULL,
  `title1` varchar(30) DEFAULT NULL,
  `fileno1` varchar(20) DEFAULT NULL,
  `pat_cer` varchar(200) NOT NULL,
  `patkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aer_fac_glc`
--

CREATE TABLE `aer_fac_glc` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `gltitle1` varchar(50) DEFAULT NULL,
  `gldays1` int(3) DEFAULT NULL,
  `glfrom1` date NOT NULL,
  `glto1` date NOT NULL,
  `gldate1` date NOT NULL,
  `gltopic1` varchar(50) DEFAULT NULL,
  `glorg1` varchar(50) DEFAULT NULL,
  `glplace1` varchar(50) DEFAULT NULL,
  `glpic1` varchar(100) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL,
  `conname1` varchar(30) DEFAULT NULL,
  `contitle1` varchar(50) DEFAULT NULL,
  `conorg1` varchar(50) DEFAULT NULL,
  `condays1` int(3) DEFAULT NULL,
  `confrom1` date NOT NULL,
  `conto1` date NOT NULL,
  `condate1` date NOT NULL,
  `conlevel1` varchar(20) DEFAULT NULL,
  `conpdf1` varchar(100) DEFAULT NULL,
  `concer1` varchar(100) DEFAULT NULL,
  `conkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aer_fac_member`
--

CREATE TABLE `aer_fac_member` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `memberid1` varchar(30) DEFAULT NULL,
  `validity1` varchar(20) DEFAULT NULL,
  `pic1` varchar(100) DEFAULT NULL,
  `memkey` int(1) DEFAULT NULL,
  `res1` varchar(50) DEFAULT NULL,
  `level1` varchar(20) DEFAULT NULL,
  `reskey` int(1) DEFAULT NULL,
  `aname1` varchar(50) DEFAULT NULL,
  `aissue1` varchar(10) DEFAULT NULL,
  `amy1` varchar(7) DEFAULT NULL,
  `acer1` varchar(100) DEFAULT NULL,
  `awakey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aer_fac_ot_qual`
--

CREATE TABLE `aer_fac_ot_qual` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) NOT NULL,
  `name_qual` varchar(50) NOT NULL,
  `year_com` int(10) NOT NULL,
  `cer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aer_fac_resg`
--

CREATE TABLE `aer_fac_resg` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `supid` varchar(20) DEFAULT NULL,
  `numsch` int(2) NOT NULL,
  `reg` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` varchar(10) NOT NULL,
  `cyear` varchar(20) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `tit` varchar(100) NOT NULL,
  `j_sup` varchar(50) DEFAULT NULL
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
-- Table structure for table `arc_fac`
--

CREATE TABLE `arc_fac` (
  `sid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `age` int(4) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob1` bigint(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `mstatus` varchar(5) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `relegion` varchar(30) NOT NULL,
  `comunity` varchar(10) NOT NULL,
  `place` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `aadharno` bigint(12) NOT NULL,
  `panno` varchar(10) NOT NULL,
  `passport` varchar(20) DEFAULT NULL,
  `blood` varchar(5) NOT NULL,
  `doj` date NOT NULL,
  `designation` varchar(50) NOT NULL,
  `mob2` bigint(10) DEFAULT NULL,
  `dept` varchar(50) NOT NULL,
  `uploadpic` varchar(100) NOT NULL,
  `aadharpic` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `dor` date DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `app_order` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arc_fac`
--

INSERT INTO `arc_fac` (`sid`, `name`, `dob`, `age`, `gender`, `email`, `mob1`, `fname`, `mname`, `mstatus`, `sname`, `relegion`, `comunity`, `place`, `city`, `district`, `state`, `country`, `pincode`, `address`, `paddress`, `aadharno`, `panno`, `passport`, `blood`, `doj`, `designation`, `mob2`, `dept`, `uploadpic`, `aadharpic`, `password`, `status`, `dor`, `reason`, `app_order`) VALUES
('S13ARC007', 'M.SRIMADHI', '1991-03-17', 28, 'female', 'twinsister1991@rediffmail.com', 9445649902, 'MADHAVAKUMAR.S', 'MANGAYARKARASI.M', 'n', '', 'HINDU', 'BC', 'HOSUR', 'HOSUR', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635109', '	4-1, NEELAMEGA NAGAR, HOSUR   ', '	4-1, NEELAMEGA NAGAR, HOSUR   ', 527114138281, 'FFQPS0389L', '', 'O+ve', '2013-07-01', 'ASSISTANT PROFESSOR', 0, 'ARC', '25727-srimadhi-photo.jpg', '77005-srimadhi-aadhar.pdf', '8281', NULL, NULL, NULL, NULL),
('S13ARC008', 'M.SRINIDHI', '1991-03-17', 28, 'female', 'twinsister1991@gmail.com', 9445639902, 'MADHAVAKUMAR.S', 'MANGAYARKARASI.M', 'n', '', 'HINDU', 'BC', 'HOSUR', 'HOSUR', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635109', '	4-1, NEELAMEGA NAGAR, HOSUR   ', '	4-1, NEELAMEGA NAGAR, HOSUR   ', 593930661247, 'FFWPS1360R', '', 'O+ve', '2013-07-01', 'ASSISTANT PROFESSOR', 0, 'ARC', '4121-srinidhi-photo.jpg', '39146-srinidhi-aadhar.pdf', '1247', NULL, NULL, NULL, NULL),
('S16ARC004', 'kamalaeaswari S', '1980-06-11', 39, 'female', 'skamalaeswari@gmail.com', 9962307746, 'P.SUBBIAH', 'S.VELLAMMAL', 'y', '', 'Hindu', 'SC', 'HOSUR', 'TIRUPPUR', 'KIRISHNAGIRI', 'Tamil Nadu', 'India', '641664', ' C 28 GROUND FLOOR,THALLY HUDCO,THALLY ROAD,HOSUR,KRISHNAGIRI 635109', '194 Elango st, B.D.O Colony,C R P Layout,Palladam,641664\r\nTiruppur Dt  ', 342683522876, 'BIPPK3948B', '', 'O+', '2017-01-18', 'ASSOCIATE PROFESSOR', 9986030073, 'ARC', '4240-ar.kamala.jpg', '10344-aadhar-1-merged.pdf', '2876', NULL, NULL, NULL, '2853-ao-kamala.pdf'),
('S16ARC006', 'KRUTHIKA.M', '1994-04-05', 25, 'female', 'kirumohan05@gmail.com', 8870739372, 'MOHAN KUMAR.S', 'RENUKA.M', 'n', '', 'HINDU', 'BC', 'HOSUR', 'HOSUR', 'KIRISHNAGIRI', 'Tamil Nadu', 'India', '635109', '	5/444, 3rd MAIN, 3rd CROSS, DWARAKA NAGAR, HOSUR   ', '	5/444, 3rd MAIN, 3rd CROSS, DWARAKA NAGAR, HOSUR   ', 505048568515, 'ERKPK2904Q', '', 'O+ve', '2016-08-01', 'ASSISTANT PROFESSOR', 0, 'ARC', '11929-kruthika-photo.jpg', '29245-aadhar-new.pdf', '8515', NULL, NULL, NULL, '40007-kruthika-ace-appointment-order.pdf'),
('S17ARC001', 'Kaviya A', '1994-07-28', 25, 'female', 'kaviyasokan@gmail.com', 9500747505, 'Asokan S', 'Vijaya A', 'n', '', 'Hindu', 'MBC', 'Thiruthuraipoondi', 'Thiruvarur', 'Thiruvarur', 'Tamil Nadu', 'India', '610203', '	1/82, Sivan kovil Street,Kunnoor post   ', '	1/82, Sivan kovil Street,Kunnoor post   ', 856155614813, 'CQEPK3734K', '', 'B+', '2017-09-06', 'Assistant Professor', 9514381394, 'ARC', '79912-kaviya.jpg', '12369-aadhar.pdf', '4813', NULL, NULL, NULL, '15165-convert-jpg-to-pdf.net_2019-04-05_08-21-13(1).pdf'),
('S17ARC003', 'Pradipa Devi S R', '1994-12-04', 25, 'female', 'pradiparajaggopalan@gmail.com', 9629097476, 'Rajaggopalan R S', 'Sujatha R', 'n', '', 'Hindu', 'BC', 'Kattur', 'Trichy', 'Trichy', 'Tamil Nadu', 'India', '620019', 'No-13, Vedhathiri Nagar,Kattur,Ellakudi  ', 'No-13, Vedhathiri Nagar,Kattur,Ellakudi  ', 523955780491, 'DHZPP8369C', '', 'O+', '2017-09-01', 'Assistant Professor', 9488058185, 'ARC', '40157-pradipa-devi.jpg', '26593-aadhar.pdf', '0491', NULL, NULL, NULL, '25175-pradipa.pdf'),
('S18ARC005', 'S Sindhu', '1994-03-14', 25, 'female', 'sindhuarch1403@gmail.com', 9003399862, 'A SEKAR', 'S INDRANI', 'y', '', 'HINDU', 'MBC', 'karur', 'KARUR', 'KARUR', 'Tamil Nadu', 'India', '639002', '	28,universal garden,kothai nagar,   ', '	28,universal garden,kothai nagar,   ', 564812704275, 'FGRPS8887M', '', 'A1B+v', '2018-08-06', 'Assistant Professor', 0, 'ARC', '4351-si-005-min.jpg', '34174-aadhar-sindhu.pdf', '4275', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `arc_fac_attorg`
--

CREATE TABLE `arc_fac_attorg` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `attcategory1` varchar(20) DEFAULT NULL,
  `atttitle1` varchar(50) DEFAULT NULL,
  `attdays1` int(3) DEFAULT NULL,
  `attfrom1` date NOT NULL,
  `attto1` date NOT NULL,
  `attdate1` date NOT NULL,
  `attorg1` varchar(50) DEFAULT NULL,
  `attplace1` varchar(50) DEFAULT NULL,
  `attlevel1` varchar(20) DEFAULT NULL,
  `attcer1` varchar(100) DEFAULT NULL,
  `attkey` int(1) DEFAULT NULL,
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
-- Table structure for table `arc_fac_bkjrn`
--

CREATE TABLE `arc_fac_bkjrn` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `bk1` varchar(20) DEFAULT NULL,
  `bkcha1` varchar(50) DEFAULT NULL,
  `bkissn1` varchar(20) DEFAULT NULL,
  `bkmy1` varchar(7) DEFAULT NULL,
  `bkpub1` varchar(50) DEFAULT NULL,
  `bktype1` varchar(50) DEFAULT NULL,
  `bkkey` int(1) DEFAULT NULL,
  `jrntitle1` varchar(100) DEFAULT NULL,
  `jrnname1` varchar(50) DEFAULT NULL,
  `jrnvol1` varchar(20) DEFAULT NULL,
  `jrnissue1` varchar(20) DEFAULT NULL,
  `jrnissn1` varchar(20) DEFAULT NULL,
  `jrncategory1` varchar(20) DEFAULT NULL,
  `jrnlink1` varchar(100) DEFAULT NULL,
  `jrncit1` varchar(30) DEFAULT NULL,
  `jrnpdf1` varchar(100) DEFAULT NULL,
  `jrnimpact1` int(10) DEFAULT NULL,
  `jrnkey` int(1) DEFAULT NULL,
  `gl` varchar(50) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `arc_fac_edu`
--

CREATE TABLE `arc_fac_edu` (
  `sid` varchar(30) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `sboard` varchar(10) DEFAULT NULL,
  `syear` int(4) DEFAULT NULL,
  `spercentage` int(4) DEFAULT NULL,
  `scertificate` varchar(100) DEFAULT NULL,
  `skey` int(1) DEFAULT NULL,
  `s2name` varchar(50) DEFAULT NULL,
  `s2board` varchar(10) DEFAULT NULL,
  `s2branch` varchar(50) DEFAULT NULL,
  `s2year` int(4) DEFAULT NULL,
  `s2percentage` int(4) DEFAULT NULL,
  `s2certificate` varchar(100) DEFAULT NULL,
  `s2key` int(1) DEFAULT NULL,
  `dname` varchar(50) DEFAULT NULL,
  `dboard` varchar(10) DEFAULT NULL,
  `ddegree` varchar(50) DEFAULT NULL,
  `dmode` varchar(10) DEFAULT NULL,
  `dyear` int(4) DEFAULT NULL,
  `dpercentage` int(4) DEFAULT NULL,
  `dcertificate` varchar(100) DEFAULT NULL,
  `dkey` int(1) DEFAULT NULL,
  `d1name` varchar(50) DEFAULT NULL,
  `d1board` varchar(10) DEFAULT NULL,
  `d1degree` varchar(50) DEFAULT NULL,
  `d1mode` varchar(10) DEFAULT NULL,
  `d1year` int(4) DEFAULT NULL,
  `d1percentage` int(4) DEFAULT NULL,
  `d1certificate` varchar(100) DEFAULT NULL,
  `d1key` int(1) DEFAULT NULL,
  `d2name` varchar(50) DEFAULT NULL,
  `d2board` varchar(10) DEFAULT NULL,
  `d2degree` varchar(50) DEFAULT NULL,
  `d2mode` varchar(10) DEFAULT NULL,
  `d2year` int(4) DEFAULT NULL,
  `d2percentage` int(4) DEFAULT NULL,
  `d2certificate` varchar(100) DEFAULT NULL,
  `d2key` int(1) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `uuniversity` varchar(50) DEFAULT NULL,
  `udegree` varchar(50) DEFAULT NULL,
  `ubranch` varchar(50) DEFAULT NULL,
  `umode` varchar(10) DEFAULT NULL,
  `uyear` int(4) DEFAULT NULL,
  `upercentage` int(4) DEFAULT NULL,
  `ucertificate` varchar(100) DEFAULT NULL,
  `ukey` int(1) DEFAULT NULL,
  `u1name` varchar(50) DEFAULT NULL,
  `u1university` varchar(50) DEFAULT NULL,
  `u1degree` varchar(50) DEFAULT NULL,
  `u1branch` varchar(50) DEFAULT NULL,
  `u1mode` varchar(10) DEFAULT NULL,
  `u1year` int(4) DEFAULT NULL,
  `u1percentage` int(4) DEFAULT NULL,
  `u1certificate` varchar(100) DEFAULT NULL,
  `u1key` int(1) DEFAULT NULL,
  `u2name` varchar(50) DEFAULT NULL,
  `u2university` varchar(50) DEFAULT NULL,
  `u2degree` varchar(50) DEFAULT NULL,
  `u2branch` varchar(50) DEFAULT NULL,
  `u2mode` varchar(10) DEFAULT NULL,
  `u2year` int(4) DEFAULT NULL,
  `u2percentage` int(4) DEFAULT NULL,
  `u2certificate` varchar(100) DEFAULT NULL,
  `u2key` int(1) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `puniversity` varchar(50) DEFAULT NULL,
  `pdegree` varchar(50) DEFAULT NULL,
  `pbranch` varchar(50) DEFAULT NULL,
  `pmode` varchar(10) DEFAULT NULL,
  `pyear` int(4) DEFAULT NULL,
  `ppercentage` int(4) DEFAULT NULL,
  `pcertificate` varchar(100) DEFAULT NULL,
  `pkey` int(1) DEFAULT NULL,
  `p1name` varchar(50) DEFAULT NULL,
  `p1university` varchar(50) DEFAULT NULL,
  `p1degree` varchar(50) DEFAULT NULL,
  `p1branch` varchar(50) DEFAULT NULL,
  `p1mode` varchar(10) DEFAULT NULL,
  `p1year` int(4) DEFAULT NULL,
  `p1percentage` int(4) DEFAULT NULL,
  `p1certificate` varchar(100) DEFAULT NULL,
  `p1key` int(1) DEFAULT NULL,
  `p2name` varchar(50) DEFAULT NULL,
  `p2university` varchar(50) DEFAULT NULL,
  `p2degree` varchar(50) DEFAULT NULL,
  `p2branch` varchar(50) DEFAULT NULL,
  `p2mode` varchar(10) DEFAULT NULL,
  `p2year` int(4) DEFAULT NULL,
  `p2percentage` int(4) DEFAULT NULL,
  `p2certificate` varchar(100) DEFAULT NULL,
  `p2key` int(1) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `muniversity` varchar(50) DEFAULT NULL,
  `mspec` varchar(50) DEFAULT NULL,
  `mbranch` varchar(50) DEFAULT NULL,
  `mmode` varchar(10) DEFAULT NULL,
  `myear` int(4) DEFAULT NULL,
  `mpercentage` int(4) DEFAULT NULL,
  `mthesis` varchar(50) DEFAULT NULL,
  `mguide` varchar(30) DEFAULT NULL,
  `mcertificate` varchar(100) DEFAULT NULL,
  `mkey` int(1) DEFAULT NULL,
  `phname` varchar(50) DEFAULT NULL,
  `phuniversity` varchar(50) DEFAULT NULL,
  `phspec` varchar(50) DEFAULT NULL,
  `phbranch` varchar(50) DEFAULT NULL,
  `phmode` varchar(10) DEFAULT NULL,
  `phyreg` varchar(7) DEFAULT NULL,
  `phyear` varchar(7) DEFAULT NULL,
  `phthesis` varchar(100) DEFAULT NULL,
  `phguide` varchar(30) DEFAULT NULL,
  `phcertificate` varchar(100) DEFAULT NULL,
  `phkey` int(1) DEFAULT NULL,
  `ph1name` varchar(50) DEFAULT NULL,
  `ph1university` varchar(50) DEFAULT NULL,
  `ph1spec` varchar(50) DEFAULT NULL,
  `ph1branch` varchar(50) DEFAULT NULL,
  `ph1mode` varchar(10) DEFAULT NULL,
  `ph1yreg` varchar(7) DEFAULT NULL,
  `ph1year` varchar(7) DEFAULT NULL,
  `ph1thesis` varchar(100) DEFAULT NULL,
  `ph1guide` varchar(30) DEFAULT NULL,
  `ph1certificate` varchar(100) DEFAULT NULL,
  `ph1key` int(1) DEFAULT NULL,
  `ph2name` varchar(50) DEFAULT NULL,
  `ph2university` varchar(50) DEFAULT NULL,
  `ph2spec` varchar(50) DEFAULT NULL,
  `ph2branch` varchar(50) DEFAULT NULL,
  `ph2mode` varchar(10) DEFAULT NULL,
  `ph2yreg` varchar(7) DEFAULT NULL,
  `ph2year` varchar(7) DEFAULT NULL,
  `ph2thesis` varchar(100) DEFAULT NULL,
  `ph2guide` varchar(30) DEFAULT NULL,
  `ph2certificate` varchar(100) DEFAULT NULL,
  `ph2key` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arc_fac_edu`
--

INSERT INTO `arc_fac_edu` (`sid`, `sname`, `sboard`, `syear`, `spercentage`, `scertificate`, `skey`, `s2name`, `s2board`, `s2branch`, `s2year`, `s2percentage`, `s2certificate`, `s2key`, `dname`, `dboard`, `ddegree`, `dmode`, `dyear`, `dpercentage`, `dcertificate`, `dkey`, `d1name`, `d1board`, `d1degree`, `d1mode`, `d1year`, `d1percentage`, `d1certificate`, `d1key`, `d2name`, `d2board`, `d2degree`, `d2mode`, `d2year`, `d2percentage`, `d2certificate`, `d2key`, `uname`, `uuniversity`, `udegree`, `ubranch`, `umode`, `uyear`, `upercentage`, `ucertificate`, `ukey`, `u1name`, `u1university`, `u1degree`, `u1branch`, `u1mode`, `u1year`, `u1percentage`, `u1certificate`, `u1key`, `u2name`, `u2university`, `u2degree`, `u2branch`, `u2mode`, `u2year`, `u2percentage`, `u2certificate`, `u2key`, `pname`, `puniversity`, `pdegree`, `pbranch`, `pmode`, `pyear`, `ppercentage`, `pcertificate`, `pkey`, `p1name`, `p1university`, `p1degree`, `p1branch`, `p1mode`, `p1year`, `p1percentage`, `p1certificate`, `p1key`, `p2name`, `p2university`, `p2degree`, `p2branch`, `p2mode`, `p2year`, `p2percentage`, `p2certificate`, `p2key`, `mname`, `muniversity`, `mspec`, `mbranch`, `mmode`, `myear`, `mpercentage`, `mthesis`, `mguide`, `mcertificate`, `mkey`, `phname`, `phuniversity`, `phspec`, `phbranch`, `phmode`, `phyreg`, `phyear`, `phthesis`, `phguide`, `phcertificate`, `phkey`, `ph1name`, `ph1university`, `ph1spec`, `ph1branch`, `ph1mode`, `ph1yreg`, `ph1year`, `ph1thesis`, `ph1guide`, `ph1certificate`, `ph1key`, `ph2name`, `ph2university`, `ph2spec`, `ph2branch`, `ph2mode`, `ph2yreg`, `ph2year`, `ph2thesis`, `ph2guide`, `ph2certificate`, `ph2key`) VALUES
('S16ARC004', 'Govt Girls Hr Sec School ', 'state', 1995, 84, '85716-10th.pdf', 1, 'Kadri mills Hr sec School', 'state', 'Biology and maths', 1997, 71, '88756-+2.pdf', 1, 'Govt Polytechnic for women', 'State boar', 'DCE (Arch)', 'regular', 2000, 92, '51242-diploma.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Thiagarajar college of engg', 'Madurai Kamaraj University', 'B.arch', 'Architecture', 'regular', 2008, 64, '62983-degree.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sathyabama University', 'Sathyabama University', 'M Arch', 'Architecture Building management', 'regular', 2015, 8, '1736-m.arch.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S16ARC006', 'SRI VIJAY VIDYALAYA HOSUR', 'state', 2009, 92, '68948-10-th.pdf', 1, 'SRI VIJAY VIDYALAYA HOSUR', 'state', 'COMPUTER SCIENCE', 2011, 96, '40092-12th-min.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Adhiyamaan college of engineering', 'Anna university', 'B.arch', 'Architecture', 'regular', 2011, 81, '1316-degree-certificate.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S17ARC001', 'St theresas girls higher secondary school', 'state', 2010, 92, '24845-10th.pdf', 1, 'St theresas girls higher secondary school', 'state', 'Biology', 2012, 78, '98778-12th.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Adhiyamaan college of engineering', 'Anna university', 'B.arch', 'Architecture', 'regular', 2017, 78, '66698-degree.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S17ARC003', 'R S Krishnan Higher Secondary School', 'cbse', 2010, 92, '32486-10th.pdf', 1, 'R S Krishnan higher secondary school', 'cbse', 'Computer Science', 2012, 74, '95379-12th.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Periyar Maniammai University', 'Periyar Maniammai University', 'B.arch', 'Architecture', 'regular', 2017, 91, '77576-degree.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `arc_fac_exp`
--

CREATE TABLE `arc_fac_exp` (
  `sid` varchar(30) NOT NULL,
  `clg1` varchar(50) DEFAULT NULL,
  `clgdesg1` varchar(30) DEFAULT NULL,
  `clgdoj1` date DEFAULT NULL,
  `clgdor1` date DEFAULT NULL,
  `clgreason1` varchar(100) DEFAULT NULL,
  `clgcir1` varchar(100) DEFAULT NULL,
  `clgkey` int(1) DEFAULT NULL,
  `pol1` varchar(50) DEFAULT NULL,
  `poldesg1` varchar(30) DEFAULT NULL,
  `poldoj1` date DEFAULT NULL,
  `poldor1` date DEFAULT NULL,
  `polreason1` varchar(100) DEFAULT NULL,
  `polcir1` varchar(100) DEFAULT NULL,
  `polkey` int(1) DEFAULT NULL,
  `sch1` varchar(50) DEFAULT NULL,
  `schdesg1` varchar(30) DEFAULT NULL,
  `schdoj1` date DEFAULT NULL,
  `schdor1` date DEFAULT NULL,
  `schreason1` varchar(100) DEFAULT NULL,
  `schcir1` varchar(100) DEFAULT NULL,
  `schkey` int(1) DEFAULT NULL,
  `ind1` varchar(50) DEFAULT NULL,
  `inddesg1` varchar(30) DEFAULT NULL,
  `indnature1` varchar(30) DEFAULT NULL,
  `inddoj1` date DEFAULT NULL,
  `inddor1` date DEFAULT NULL,
  `indreason1` varchar(100) DEFAULT NULL,
  `indcir1` varchar(100) DEFAULT NULL,
  `indkey` int(1) DEFAULT NULL,
  `ot1` varchar(50) DEFAULT NULL,
  `otdesg1` varchar(30) DEFAULT NULL,
  `otnature1` varchar(30) DEFAULT NULL,
  `otdoj1` date DEFAULT NULL,
  `otdor1` date DEFAULT NULL,
  `otreason1` varchar(100) DEFAULT NULL,
  `otcir1` varchar(100) DEFAULT NULL,
  `otkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `arc_fac_funpat`
--

CREATE TABLE `arc_fac_funpat` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `titleofpro1` varchar(50) DEFAULT NULL,
  `duration1` varchar(30) DEFAULT NULL,
  `amountsan1` varchar(20) DEFAULT NULL,
  `agency1` varchar(20) DEFAULT NULL,
  `startdate1` date DEFAULT NULL,
  `copiname1` varchar(20) DEFAULT NULL,
  `year1` varchar(7) DEFAULT NULL,
  `order1` varchar(200) DEFAULT NULL,
  `uc1` varchar(200) DEFAULT NULL,
  `funkey` int(1) DEFAULT NULL,
  `nameofpat1` varchar(50) DEFAULT NULL,
  `title1` varchar(30) DEFAULT NULL,
  `fileno1` varchar(20) DEFAULT NULL,
  `pat_cer1` varchar(200) DEFAULT NULL,
  `patkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `arc_fac_glc`
--

CREATE TABLE `arc_fac_glc` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `gltitle1` varchar(50) DEFAULT NULL,
  `gldays1` int(3) DEFAULT NULL,
  `glfrom1` date NOT NULL,
  `glto1` date NOT NULL,
  `gldate1` date NOT NULL,
  `gltopic1` varchar(50) DEFAULT NULL,
  `glorg1` varchar(50) DEFAULT NULL,
  `glplace1` varchar(50) DEFAULT NULL,
  `glpic1` varchar(100) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL,
  `conname1` varchar(30) DEFAULT NULL,
  `contitle1` varchar(50) DEFAULT NULL,
  `conorg1` varchar(50) DEFAULT NULL,
  `condays1` int(3) DEFAULT NULL,
  `confrom1` date NOT NULL,
  `conto1` date NOT NULL,
  `condate1` date NOT NULL,
  `conlevel1` varchar(20) DEFAULT NULL,
  `conpdf1` varchar(100) DEFAULT NULL,
  `concer1` varchar(100) DEFAULT NULL,
  `conkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `arc_fac_member`
--

CREATE TABLE `arc_fac_member` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `memberid1` varchar(30) DEFAULT NULL,
  `validity1` varchar(20) DEFAULT NULL,
  `pic1` varchar(100) DEFAULT NULL,
  `memkey` int(1) DEFAULT NULL,
  `res1` varchar(50) DEFAULT NULL,
  `level1` varchar(20) DEFAULT NULL,
  `res2` varchar(50) NOT NULL,
  `level2` varchar(20) NOT NULL,
  `reskey` int(1) DEFAULT NULL,
  `aname1` varchar(50) DEFAULT NULL,
  `aissue1` varchar(10) DEFAULT NULL,
  `amy1` varchar(7) DEFAULT NULL,
  `acer1` varchar(100) DEFAULT NULL,
  `awakey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arc_fac_member`
--

INSERT INTO `arc_fac_member` (`id`, `sid`, `ayear`, `name1`, `memberid1`, `validity1`, `pic1`, `memkey`, `res1`, `level1`, `res2`, `level2`, `reskey`, `aname1`, `aissue1`, `amy1`, `acer1`, `awakey`) VALUES
(1, 'S16ARC004', '2010-2011', 'Council of Architecture', 'CA/2010/46990', '31.12.2021', '43706-coa.pdf', 1, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'S16ARC004', '2017-2018', NULL, NULL, NULL, NULL, NULL, 'CLASS TUTOR', 'department', 'CLASS TUTOR', 'department', 2, NULL, NULL, NULL, NULL, NULL),
(4, 'S16ARC004', '2018-2019', NULL, NULL, NULL, NULL, NULL, 'CLASS TUTOR', 'department', '', '', 1, NULL, NULL, NULL, NULL, NULL),
(5, 'S16ARC006', '2016-2017', 'COUNCIL OF ARCHITECTURE', 'CA/2016/78639', '31.12.2028', '51944-kruthika-coa-resistration-certificate.pdf', 1, 'CLASS TUTOR', 'department', '', '', 1, NULL, NULL, NULL, NULL, NULL),
(6, 'S16ARC006', '2017-2018', NULL, NULL, NULL, NULL, NULL, 'CLASS TUTOR', 'department', '', '', 1, NULL, NULL, NULL, NULL, NULL),
(7, 'S16ARC006', '2018-2019', NULL, NULL, NULL, NULL, NULL, 'CLASS TUTOR', 'department', '', '', 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `arc_fac_ot_qual`
--

CREATE TABLE `arc_fac_ot_qual` (
  `id` int(5) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `name_qual` varchar(100) DEFAULT NULL,
  `year_com` int(10) DEFAULT NULL,
  `cer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `arc_fac_resg`
--

CREATE TABLE `arc_fac_resg` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `supid` varchar(20) DEFAULT NULL,
  `numsch` int(2) NOT NULL,
  `reg` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` varchar(10) NOT NULL,
  `cyear` varchar(20) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `tit` varchar(100) NOT NULL,
  `j_sup` varchar(50) DEFAULT NULL
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
-- Table structure for table `bio_fac`
--

CREATE TABLE `bio_fac` (
  `sid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `age` int(4) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob1` bigint(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `mstatus` varchar(5) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `relegion` varchar(30) NOT NULL,
  `comunity` varchar(10) NOT NULL,
  `place` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `aadharno` bigint(12) NOT NULL,
  `panno` varchar(10) NOT NULL,
  `passport` varchar(20) DEFAULT NULL,
  `blood` varchar(5) NOT NULL,
  `doj` date NOT NULL,
  `designation` varchar(50) NOT NULL,
  `mob2` bigint(10) DEFAULT NULL,
  `dept` varchar(50) NOT NULL,
  `uploadpic` varchar(100) NOT NULL,
  `aadharpic` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `dor` date DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `app_order` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bio_fac`
--

INSERT INTO `bio_fac` (`sid`, `name`, `dob`, `age`, `gender`, `email`, `mob1`, `fname`, `mname`, `mstatus`, `sname`, `relegion`, `comunity`, `place`, `city`, `district`, `state`, `country`, `pincode`, `address`, `paddress`, `aadharno`, `panno`, `passport`, `blood`, `doj`, `designation`, `mob2`, `dept`, `uploadpic`, `aadharpic`, `password`, `status`, `dor`, `reason`, `app_order`) VALUES
('S05BIO004', 'N.SARAVANAN', '1981-07-11', 38, 'male', 'natarajsaravanan@gmail.com', 9486931081, 'S.M.NATARAJAN', 'N.VASANTHA', 'y', '', 'HINDHU', 'VANNIYAR', 'Hosur', 'Hosur', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635109', 'Plot No:8, Alnazeem Manzil, Eswar Naga	   ', 'Plot No:8, Alnazeem Manzil, Eswar Naga	   ', 4705, 'BEYPS4105R', '', 'A1+VE', '2005-12-06', 'ASSOCIATE PROFESSOR', 0, 'BIO', '46049-n.-saravanan.jpg', '2952-adhar-ns.pdf', '2 2672', NULL, NULL, NULL, NULL),
('S05BIO008', 'N.G.RAMESH BABU', '1960-05-05', 59, 'male', 'hod_bt@adhiyamaan.ac.in', 9487819135, 'N.R. Govinda Setty', 'N.R. G Setty', 'y', '', 'HINDHU', 'OC', '61, 6th Cross, Paj Layout, Hulimavu, Bannerghatta ', 'Bengaluru', 'Bengaluru', 'Karnataka', 'India', '560076', '61, 6th Cross, Paj Layout, Hulimavu, Bannerghatta Road	   ', '61, 6th Cross, Paj Layout, Hulimavu, Bannerghatta Road	   ', 8166, 'ABGPR1635M', '', 'O+VE', '2005-07-01', 'PROFESSOR', 9845697770, 'BIO', '83453-dr.-n.-g.-ramesh-babu.jpg', '87124-ng-a0001.pdf', '5 6576', NULL, NULL, NULL, NULL),
('S06BIO003', 'V MANIVASAGAN', '1982-03-07', 36, 'male', 'manivasaganv@gmail.com', 9865373358, 'N. Veerasamy', 'V.VASANTHA', 'y', '', 'HINDHU', 'VANNIYAR', 'Udayarpalayam', 'Ariyalur', 'Ariyalur', 'Tamil Nadu', 'India', '621806', 'Nallasiriyar Illam, West Elaiyur	   ', 'Nallasiriyar Illam, West Elaiyur	   ', 3470, 'ASVPM2420M', '', 'O+ve', '2006-06-07', 'PROFESSOR', 8300880591, 'BIO', '57903-v.-manivasagan.jpg', '52458-dr-manivasagan-aathar-card.pdf', '2 2517', NULL, NULL, NULL, NULL),
('S17BIO005', 'K.SARANYA', '1986-03-01', 33, 'female', 'ksaranya31@gmail.com', 9894455091, 'A.V.KRISHNAMOORTHY', 'R.SUMATHI', 'y', '', 'HINDHU', 'VANNIYAR', 'Ambattur O.T', 'Chennai', 'Chennai', 'Tamil Nadu', 'India', '600053', '	  No.7, Pinto Street, Ram Nagar ', '	  No.7, Pinto Street, Ram Nagar ', 5878, 'DAZPS2707G', '', 'B+VE', '2017-08-18', 'ASSOCIATE PROFESSOR', 0, 'BIO', '5340-k.-saranya.jpg', '17053-aadhaar--saranya.pdf', '4 2712', NULL, NULL, NULL, NULL),
('S18BIO001', 'S.KAVITHA', '1991-12-12', 28, 'male', 'kavitha.biotechnology@gmail.com', 7845355761, 'C.SAMPATH', 'R.SUNDARI', 'n', '', 'HINDHU', 'VANNIYAR', 'BARUGUR', 'KRISHNAGIRI', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635104', '	60/30, SANJEEVI CHETTI STREET   ', '	60/30, SANJEEVI CHETTI STREET   ', 319167389946, 'FNRPS5470P', '', 'O+ve', '2018-12-06', 'ASSISTANT PROFESSOR', 0, 'BIO', '69940-3706.jpg', '59361-aadhar.pdf', '1234', NULL, NULL, NULL, '74681-appointment-order-adhiyaman.pdf'),
('S18BIO006', 'N.NANDAKUMAR', '1991-02-17', 28, 'male', 'mavericknandy@gmail.com', 7845659621, 'S.ARUMUGAM', 'A.PREMALATHA', 'n', '', 'HINDHU', 'MBC', 'Virupatchipuram', 'Vellore', 'Vellore', 'Tamil Nadu', 'India', '632002', 'No.267, Gandhi Nagar, 15th Street	   ', 'No.267, Gandhi Nagar, 15th Street	   ', 9872, 'AYUPN9739P', '', 'O+VE', '2018-07-02', 'ASSISTANT PROFESSOR', 0, 'BIO', '93327-a.nandakumar.jpg', '63319-nandakumar.pdf', '1 8340', NULL, NULL, NULL, NULL),
('S18BIO007', 'D.KUBENDRAN', '1992-06-07', 27, 'male', 'deva.kubedad@gmail.com', 8124681954, 'K.DEVARAJ', 'D.VEDIYAMMAL', 'n', '', 'HINDHU', 'VANNIYAR', 'Pappiredipatti', 'Dharmapuri', 'Dharmapuri', 'Tamil Nadu', 'India', '636905', '	1/149, Adhikarapatti (P.O.)   ', '	1/149, Adhikarapatti (P.O.)   ', 9785, 'HIEPK2948J', '', 'B+VE', '2018-06-18', 'ASSISTANT PROFESSOR', 0, 'BIO', '13607-d.-kubendran.jpeg', '28015-kubendran.pdf', '6 9850', NULL, NULL, NULL, NULL),
('S18BIO009', 'KUBENDRAN', '1992-06-07', 27, 'male', 'devakubendran@gmail.com', 8124681954, 'DEVARAJ', 'VEDIYAMMAL', 'n', '', 'Hindu', 'MBC', 'Adhikarapatti', 'DHARMAPURI', 'Dharmapuri', 'Tamil Nadu', 'India', '636905', '1/149, adhikarapatti\r\npappiredipatti\r\ndharmapuri	   ', '	   ', 978544869850, 'HIEPK2948J', '', 'B+ve', '2018-07-08', 'ASSISTANT PROFESSOR', 0, 'BIO', '12064-4099.jpeg', '2307-convert-jpg-to-pdf.net_2019-04-05_06-27-28.pdf', '9850', NULL, NULL, NULL, '72884-appoinment.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `bio_fac_attorg`
--

CREATE TABLE `bio_fac_attorg` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `attcategory1` varchar(20) DEFAULT NULL,
  `atttitle1` varchar(50) DEFAULT NULL,
  `attdays1` int(3) DEFAULT NULL,
  `attfrom1` date NOT NULL,
  `attto1` date NOT NULL,
  `attdate1` date NOT NULL,
  `attorg1` varchar(50) DEFAULT NULL,
  `attplace1` varchar(50) DEFAULT NULL,
  `attlevel1` varchar(20) DEFAULT NULL,
  `attcer1` varchar(100) DEFAULT NULL,
  `attkey` int(1) DEFAULT NULL,
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
-- Dumping data for table `bio_fac_attorg`
--

INSERT INTO `bio_fac_attorg` (`id`, `sid`, `ayear`, `attcategory1`, `atttitle1`, `attdays1`, `attfrom1`, `attto1`, `attdate1`, `attorg1`, `attplace1`, `attlevel1`, `attcer1`, `attkey`, `orgcategory1`, `orgtitle1`, `orgfun1`, `orgdays1`, `orgfrom1`, `orgto1`, `orgdate1`, `orgres1`, `orgpar1`, `orglevel1`, `orgcer1`, `orgkey`) VALUES
(1, 'S05BIO004', '2013-2014', 'fdp', 'CORPORATE INFORMATION SECURTY AND POLICIES FOR CHE', 5, '2013-12-17', '2013-12-21', '0000-00-00', 'COIMBATORE INSTITUTE OF TECHNOLOGY', 'COIMBATORE', 'national', '71444-skm_554e19030817282.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(2, 'S05BIO004', '2015-2016', 'fdp', 'separation process in environemntal applications', 3, '2015-06-24', '2015-06-26', '0000-00-00', 'SSN College of Engineering', 'chennai', 'national', '30799-skm_554e19030817284.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(3, 'S05BIO004', '2016-2017', 'fdp', 'Modern separation process in environmental applica', 8, '2016-12-12', '2016-12-19', '0000-00-00', 'SSN College of Engineering', 'chennai', 'national', '79804-skm_554e19030817291.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(4, 'S05BIO004', '2013-2014', 'workshop', 'Role of intellectual property rights in Biotechnol', 2, '2014-01-10', '2014-01-11', '0000-00-00', 'Arunai Engineering college', 'Thiruvannamalai', 'national', '89575-skm_554e19030817280.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bio_fac_bkjrn`
--

CREATE TABLE `bio_fac_bkjrn` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `bk1` varchar(20) DEFAULT NULL,
  `bkcha1` varchar(50) DEFAULT NULL,
  `bkissn1` varchar(20) DEFAULT NULL,
  `bkmy1` varchar(7) DEFAULT NULL,
  `bkpub1` varchar(50) DEFAULT NULL,
  `bktype1` varchar(50) DEFAULT NULL,
  `bkkey` int(1) DEFAULT NULL,
  `jrntitle1` varchar(100) DEFAULT NULL,
  `jrnname1` varchar(50) DEFAULT NULL,
  `jrnvol1` varchar(20) DEFAULT NULL,
  `jrnissue1` varchar(20) DEFAULT NULL,
  `jrnissn1` varchar(20) DEFAULT NULL,
  `jrncategory1` varchar(20) DEFAULT NULL,
  `jrnlink1` varchar(100) DEFAULT NULL,
  `jrncit1` varchar(30) DEFAULT NULL,
  `jrnpdf1` varchar(100) DEFAULT NULL,
  `jrnimpact1` int(10) DEFAULT NULL,
  `jrnkey` int(1) DEFAULT NULL,
  `gl` varchar(50) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bio_fac_bkjrn`
--

INSERT INTO `bio_fac_bkjrn` (`id`, `sid`, `ayear`, `bk1`, `bkcha1`, `bkissn1`, `bkmy1`, `bkpub1`, `bktype1`, `bkkey`, `jrntitle1`, `jrnname1`, `jrnvol1`, `jrnissue1`, `jrnissn1`, `jrncategory1`, `jrnlink1`, `jrncit1`, `jrnpdf1`, `jrnimpact1`, `jrnkey`, `gl`, `glkey`) VALUES
(1, 'S05BIO004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://scholar.google.co.in/citations?user=i6wEaL', 1),
(2, 'S05BIO004', '2007-2008', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.	â€œBiodegradation of Phenol and toluene using Bacillus sp., Pseudomonas sp., Staphylococcus sp., ', 'Advanced Biotech', ' ', ' ', '0973-0109', 'others', ' ', ' ', '31100-1.-34-biodegradation.pdf', 0, 1, NULL, NULL),
(3, 'S05BIO004', '2011-2012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.	â€œDevelopment of new method for diagnosis of Group B Coxsackie genome by reverse transcription l', 'Indian Journal of Medical Microbiology', '29', '2', '0255-0857', 'others', ' ', ' ', '13792-1.-indianjmedmicrobiol292110-8168408_224124.pdf', 0, 1, NULL, NULL),
(4, 'S05BIO004', '2012-2013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.	â€œBiosorption of Nickel on Biobeads and Biofilm using Immobilized Escherichia coliâ€', 'European Journal of Scientific Research', '81', '2', '1450202X', ' ', ' ', ' ', '98554-1.-ejsr_81_2_10.pdf', 0, 1, NULL, NULL),
(5, 'S05BIO004', '2013-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'â€œMolecular docking study ON NS5B polymerase of hepatitis c virus by screening of volatile compound', 'International Journal of Pharmacy & Life Sciences', '4', ' ', ' 0975 - 1491', 'others', ' ', ' ', '39280-1.-balavignesh.pdf', 0, 1, NULL, NULL),
(6, 'S05BIO004', '2013-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.	â€˜Biosorption of textile dye using immobilized bacterial (Pseudomonas aeruginosa) And fungal (Ph', 'American Journal of Environmental Science', '9', '4', '1553-345X', 'others', ' ', ' ', '94101-2.-pdf_ajessp.2013.377.387.pdf', 0, 1, NULL, NULL),
(7, 'S05BIO004', '2013-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3.	â€œA Study of Production and Partial Purification of Lipase Enzyme from Milkâ€', 'International Journal of Engineering Research & Te', '3', '4', '0974 â€“3154', 'others', ' ', ' ', '37011-3.-v3i4-ijertv3is040033.pdf', 0, 1, NULL, NULL),
(8, 'S05BIO004', '2013-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4.	â€œProduction, Optimization and Characterization of Nattokinase from Bacillus subtilis REVS12 Iso', 'International Journal of Scientific & Engineering ', '5', '4', '2229-5518', 'others', ' ', ' ', '7449-4.-production-optimization-and-characterization-of-nattokinase.pdf', 0, 1, NULL, NULL),
(9, 'S05BIO004', '2015-2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.	â€œChemical analysis of agro-pollutant coir pith- a byproduct of coir industryâ€', 'International Journal of Environmental & Agricultu', '2', '11', '2454-1850', 'others', ' ', ' ', '64902-1.-ijoear-oct-2016-15.pdf', 0, 1, NULL, NULL),
(10, 'S05BIO004', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.	â€œBiodegradation of nicotine obtained from tobacco powder using Pseudomonas aeruginosa sp.â€', 'International Engineering Research and Management', '4', '1', ' 2349-  2058', 'others', ' ', ' ', '95207-1.-ijerm0401036.pdf', 0, 1, NULL, NULL),
(11, 'S05BIO004', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.	Biosynthesis of tamoxifen coated chitosan biopolymer, its characterization, DNA damage study and ', 'International Journal of Advanced Research in Biol', '4', '2', '2348-8069', 'others', ' ', ' ', '93082-2.-ijarbs21.pdf', 0, 1, NULL, NULL),
(12, 'S05BIO004', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Molecular study on Multidrug Resistant (MDR) pathogen Pseudomonas sp. strain ts_397 isolated from eg', 'World journal of pharmacy and pharmaceutical scien', '6', '3', '2278-4357', 'others', ' ', ' ', '21333-3.-article_wjpps_1488628303.pdf', 0, 1, NULL, NULL),
(13, 'S05BIO004', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4.	â€œBiosynthesis of zinc oxide nanoparticles from Glycyrrhiza glabra Linn for antimicrobial, antic', 'World journal of pharmacy and pharmaceutical scien', '6', '4', '2278-4357', 'others', ' ', ' ', '83203-4.-article_wjpps_1490958602.pdf', 0, 1, NULL, NULL),
(14, 'S05BIO004', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.	â€œTreatment of hyperpigmentation using Terminalia Catappa with zebrafish as a modelâ€ ', 'World journal of pharmacy and pharmaceutical scien', '6', '3', '2278-4357', 'others', ' ', ' ', '61623-5.-article_wjpps_1490959750.pdf', 0, 1, NULL, NULL),
(15, 'S05BIO004', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.	â€œOuter Membrane Protein of Vibrio Species Isolated from Marine Fishesâ€ ', 'International Research Journal of Engineering and ', '4', '11', '2395-0072', 'others', ' ', ' ', '63240-1.-irjet-v4i11199.pdf', 0, 1, NULL, NULL),
(16, 'S05BIO004', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'â€œStudy of anti-diabetic activity of Artesunate as an agonist to GLP-1 by molecular docking and in-', ', International Journal of current research', '10', '3', '0975-833x', 'others', ' ', ' ', '97730-2.-29045.pdf', 0, 1, NULL, NULL),
(17, 'S05BIO004', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Identification of multi drug resistant gene in E.coli', 'World journal of pharmacy and pharmaceutical scien', '7', '12', '2278-4357', 'others', ' ', ' ', '19770-3.-article_wjpps_1543907513.pdf', 0, 1, NULL, NULL),
(18, 'S05BIO004', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.	â€œComparative study on pharmacological activities of essential oils of selected aroma plants', 'World journal of pharmacy and pharmaceutical scien', '8', '1', '2278-4357', 'others', ' ', ' ', '30118-1.-article_wjpps_1546241190.pdf', 0, 1, NULL, NULL),
(19, 'S05BIO004', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.	â€œIn vitro phytochemical and antioxidant activity of Solanum muricatum in hydro alcohol extractâ', 'World journal of pharmacy and pharmaceutical scien', '8', '1', '2278-4357', 'others', ' ', ' ', '21047-2.-article_wjpps_1546241248.pdf', 0, 1, NULL, NULL),
(20, 'S05BIO004', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A study on synthesis of silver nanoparticles and antibacterial activity of Acalypha hispidaâ€', 'World journal of pharmacy and pharmaceutical scien', '8', '1', '2278-4357', 'others', ' ', ' ', '56855-3.-article_wjpps_1546241525.pdf', 0, 1, NULL, NULL),
(21, 'S18BIO009', '1987-1988', 'Journal of Cleaner P', 'Study on Effectiveness of Activated Calcium Oxide ', 'https://doi.org/10.1', '2019-03', 'Elsevier', 'Journal, Research Article', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'S18BIO009', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://scholar.google.com/citations?user=2fyXXawA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bio_fac_edu`
--

CREATE TABLE `bio_fac_edu` (
  `sid` varchar(30) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `sboard` varchar(10) DEFAULT NULL,
  `syear` int(4) DEFAULT NULL,
  `spercentage` int(4) DEFAULT NULL,
  `scertificate` varchar(100) DEFAULT NULL,
  `skey` int(1) DEFAULT NULL,
  `s2name` varchar(50) DEFAULT NULL,
  `s2board` varchar(10) DEFAULT NULL,
  `s2branch` varchar(50) DEFAULT NULL,
  `s2year` int(4) DEFAULT NULL,
  `s2percentage` int(4) DEFAULT NULL,
  `s2certificate` varchar(100) DEFAULT NULL,
  `s2key` int(1) DEFAULT NULL,
  `dname` varchar(50) DEFAULT NULL,
  `dboard` varchar(10) DEFAULT NULL,
  `ddegree` varchar(50) DEFAULT NULL,
  `dmode` varchar(10) DEFAULT NULL,
  `dyear` int(4) DEFAULT NULL,
  `dpercentage` int(4) DEFAULT NULL,
  `dcertificate` varchar(100) DEFAULT NULL,
  `dkey` int(1) DEFAULT NULL,
  `d1name` varchar(50) DEFAULT NULL,
  `d1board` varchar(10) DEFAULT NULL,
  `d1degree` varchar(50) DEFAULT NULL,
  `d1mode` varchar(10) DEFAULT NULL,
  `d1year` int(4) DEFAULT NULL,
  `d1percentage` int(4) DEFAULT NULL,
  `d1certificate` varchar(100) DEFAULT NULL,
  `d1key` int(1) DEFAULT NULL,
  `d2name` varchar(50) DEFAULT NULL,
  `d2board` varchar(10) DEFAULT NULL,
  `d2degree` varchar(50) DEFAULT NULL,
  `d2mode` varchar(10) DEFAULT NULL,
  `d2year` int(4) DEFAULT NULL,
  `d2percentage` int(4) DEFAULT NULL,
  `d2certificate` varchar(100) DEFAULT NULL,
  `d2key` int(1) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `uuniversity` varchar(50) DEFAULT NULL,
  `udegree` varchar(50) DEFAULT NULL,
  `ubranch` varchar(50) DEFAULT NULL,
  `umode` varchar(10) DEFAULT NULL,
  `uyear` int(4) DEFAULT NULL,
  `upercentage` int(4) DEFAULT NULL,
  `ucertificate` varchar(100) DEFAULT NULL,
  `ukey` int(1) DEFAULT NULL,
  `u1name` varchar(50) DEFAULT NULL,
  `u1university` varchar(50) DEFAULT NULL,
  `u1degree` varchar(50) DEFAULT NULL,
  `u1branch` varchar(50) DEFAULT NULL,
  `u1mode` varchar(10) DEFAULT NULL,
  `u1year` int(4) DEFAULT NULL,
  `u1percentage` int(4) DEFAULT NULL,
  `u1certificate` varchar(100) DEFAULT NULL,
  `u1key` int(1) DEFAULT NULL,
  `u2name` varchar(50) DEFAULT NULL,
  `u2university` varchar(50) DEFAULT NULL,
  `u2degree` varchar(50) DEFAULT NULL,
  `u2branch` varchar(50) DEFAULT NULL,
  `u2mode` varchar(10) DEFAULT NULL,
  `u2year` int(4) DEFAULT NULL,
  `u2percentage` int(4) DEFAULT NULL,
  `u2certificate` varchar(100) DEFAULT NULL,
  `u2key` int(1) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `puniversity` varchar(50) DEFAULT NULL,
  `pdegree` varchar(50) DEFAULT NULL,
  `pbranch` varchar(50) DEFAULT NULL,
  `pmode` varchar(10) DEFAULT NULL,
  `pyear` int(4) DEFAULT NULL,
  `ppercentage` int(4) DEFAULT NULL,
  `pcertificate` varchar(100) DEFAULT NULL,
  `pkey` int(1) DEFAULT NULL,
  `p1name` varchar(50) DEFAULT NULL,
  `p1university` varchar(50) DEFAULT NULL,
  `p1degree` varchar(50) DEFAULT NULL,
  `p1branch` varchar(50) DEFAULT NULL,
  `p1mode` varchar(10) DEFAULT NULL,
  `p1year` int(4) DEFAULT NULL,
  `p1percentage` int(4) DEFAULT NULL,
  `p1certificate` varchar(100) DEFAULT NULL,
  `p1key` int(1) DEFAULT NULL,
  `p2name` varchar(50) DEFAULT NULL,
  `p2university` varchar(50) DEFAULT NULL,
  `p2degree` varchar(50) DEFAULT NULL,
  `p2branch` varchar(50) DEFAULT NULL,
  `p2mode` varchar(10) DEFAULT NULL,
  `p2year` int(4) DEFAULT NULL,
  `p2percentage` int(4) DEFAULT NULL,
  `p2certificate` varchar(100) DEFAULT NULL,
  `p2key` int(1) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `muniversity` varchar(50) DEFAULT NULL,
  `mspec` varchar(50) DEFAULT NULL,
  `mbranch` varchar(50) DEFAULT NULL,
  `mmode` varchar(10) DEFAULT NULL,
  `myear` int(4) DEFAULT NULL,
  `mpercentage` int(4) DEFAULT NULL,
  `mthesis` varchar(50) DEFAULT NULL,
  `mguide` varchar(30) DEFAULT NULL,
  `mcertificate` varchar(100) DEFAULT NULL,
  `mkey` int(1) DEFAULT NULL,
  `phname` varchar(50) DEFAULT NULL,
  `phuniversity` varchar(50) DEFAULT NULL,
  `phspec` varchar(50) DEFAULT NULL,
  `phbranch` varchar(50) DEFAULT NULL,
  `phmode` varchar(10) DEFAULT NULL,
  `phyreg` varchar(7) DEFAULT NULL,
  `phyear` varchar(7) DEFAULT NULL,
  `phthesis` varchar(100) DEFAULT NULL,
  `phguide` varchar(30) DEFAULT NULL,
  `phcertificate` varchar(100) DEFAULT NULL,
  `phkey` int(1) DEFAULT NULL,
  `ph1name` varchar(50) DEFAULT NULL,
  `ph1university` varchar(50) DEFAULT NULL,
  `ph1spec` varchar(50) DEFAULT NULL,
  `ph1branch` varchar(50) DEFAULT NULL,
  `ph1mode` varchar(10) DEFAULT NULL,
  `ph1yreg` varchar(7) DEFAULT NULL,
  `ph1year` varchar(7) DEFAULT NULL,
  `ph1thesis` varchar(100) DEFAULT NULL,
  `ph1guide` varchar(30) DEFAULT NULL,
  `ph1certificate` varchar(100) DEFAULT NULL,
  `ph1key` int(1) DEFAULT NULL,
  `ph2name` varchar(50) DEFAULT NULL,
  `ph2university` varchar(50) DEFAULT NULL,
  `ph2spec` varchar(50) DEFAULT NULL,
  `ph2branch` varchar(50) DEFAULT NULL,
  `ph2mode` varchar(10) DEFAULT NULL,
  `ph2yreg` varchar(7) DEFAULT NULL,
  `ph2year` varchar(7) DEFAULT NULL,
  `ph2thesis` varchar(100) DEFAULT NULL,
  `ph2guide` varchar(30) DEFAULT NULL,
  `ph2certificate` varchar(100) DEFAULT NULL,
  `ph2key` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bio_fac_edu`
--

INSERT INTO `bio_fac_edu` (`sid`, `sname`, `sboard`, `syear`, `spercentage`, `scertificate`, `skey`, `s2name`, `s2board`, `s2branch`, `s2year`, `s2percentage`, `s2certificate`, `s2key`, `dname`, `dboard`, `ddegree`, `dmode`, `dyear`, `dpercentage`, `dcertificate`, `dkey`, `d1name`, `d1board`, `d1degree`, `d1mode`, `d1year`, `d1percentage`, `d1certificate`, `d1key`, `d2name`, `d2board`, `d2degree`, `d2mode`, `d2year`, `d2percentage`, `d2certificate`, `d2key`, `uname`, `uuniversity`, `udegree`, `ubranch`, `umode`, `uyear`, `upercentage`, `ucertificate`, `ukey`, `u1name`, `u1university`, `u1degree`, `u1branch`, `u1mode`, `u1year`, `u1percentage`, `u1certificate`, `u1key`, `u2name`, `u2university`, `u2degree`, `u2branch`, `u2mode`, `u2year`, `u2percentage`, `u2certificate`, `u2key`, `pname`, `puniversity`, `pdegree`, `pbranch`, `pmode`, `pyear`, `ppercentage`, `pcertificate`, `pkey`, `p1name`, `p1university`, `p1degree`, `p1branch`, `p1mode`, `p1year`, `p1percentage`, `p1certificate`, `p1key`, `p2name`, `p2university`, `p2degree`, `p2branch`, `p2mode`, `p2year`, `p2percentage`, `p2certificate`, `p2key`, `mname`, `muniversity`, `mspec`, `mbranch`, `mmode`, `myear`, `mpercentage`, `mthesis`, `mguide`, `mcertificate`, `mkey`, `phname`, `phuniversity`, `phspec`, `phbranch`, `phmode`, `phyreg`, `phyear`, `phthesis`, `phguide`, `phcertificate`, `phkey`, `ph1name`, `ph1university`, `ph1spec`, `ph1branch`, `ph1mode`, `ph1yreg`, `ph1year`, `ph1thesis`, `ph1guide`, `ph1certificate`, `ph1key`, `ph2name`, `ph2university`, `ph2spec`, `ph2branch`, `ph2mode`, `ph2yreg`, `ph2year`, `ph2thesis`, `ph2guide`, `ph2certificate`, `ph2key`) VALUES
('S05BIO004', 'ST. MARYS MARTICULATION SCHOOL', 'state', 1997, 67, '1754-10.pdf', 1, 'JKK RANGAMMAL MATRIC HR SEC SCHOOL', 'state', 'MATHS - COMPUTER', 1999, 86, '89605-12.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SCHOOL OF ENGINEERING & TECHNOLOGY', 'BHARATHIDASAN UNIVERSITY', 'B.TECH', 'BIOTECHNOLOGY', 'regular', 2003, 69, '86389-ug.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FACULTY OF ENGINEERING AND TECHNOLOGY', 'ANNAMALAI UNIVERSITY', 'M.TECH', 'INDUSTRIAL BIOTECHNOLOGY', 'regular', 2005, 8, '33476-pg.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'COIMBATORE OF INSTITUTE OF TECHNOLOGY', 'ANNA UNIVERSITY CHENNAI', 'BIOTECHNOLOGY', 'TECHNOLOGY', 'parttime', '2008', '2014', 'INVESTIGATION OF INTEGRATION OF BIO AND PHYSICOCHEMICAL PROCESSES FOR THE TREATMENT OF EFFLUENT CONT', 'DR. T. KANNADASAN', '13098-ph-d.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S18BIO009', 'Govt her. sec school,', 'state', 2007, 80, '71348-10th.pdf', 1, 'Sri vijay vidhayalaya metric her sec school', 'state', 'Maths biology', 2009, 92, '28440-12th.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vel Tech High Tech', 'Anna University', 'B.Tech', 'Biotechnology', 'regular', 2013, 78, '56040-ug.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AC Tech', 'Anna University', 'M.Tech', 'Environmental Science and Technology', 'regular', 2015, 81, '13727-pg.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bio_fac_exp`
--

CREATE TABLE `bio_fac_exp` (
  `sid` varchar(30) NOT NULL,
  `clg1` varchar(50) DEFAULT NULL,
  `clgdesg1` varchar(30) DEFAULT NULL,
  `clgdoj1` date DEFAULT NULL,
  `clgdor1` date DEFAULT NULL,
  `clgreason1` varchar(100) DEFAULT NULL,
  `clg2` varchar(50) NOT NULL,
  `clgdesg2` varchar(50) NOT NULL,
  `clgdoj2` date NOT NULL,
  `clgdor2` date NOT NULL,
  `clgreason2` varchar(100) NOT NULL,
  `clgcir2` date NOT NULL,
  `clgcir1` varchar(100) DEFAULT NULL,
  `clgkey` int(1) DEFAULT NULL,
  `pol1` varchar(50) DEFAULT NULL,
  `poldesg1` varchar(30) DEFAULT NULL,
  `poldoj1` date DEFAULT NULL,
  `poldor1` date DEFAULT NULL,
  `polreason1` varchar(100) DEFAULT NULL,
  `polcir1` varchar(100) DEFAULT NULL,
  `polkey` int(1) DEFAULT NULL,
  `sch1` varchar(50) DEFAULT NULL,
  `schdesg1` varchar(30) DEFAULT NULL,
  `schdoj1` date DEFAULT NULL,
  `schdor1` date DEFAULT NULL,
  `schreason1` varchar(100) DEFAULT NULL,
  `schcir1` varchar(100) DEFAULT NULL,
  `schkey` int(1) DEFAULT NULL,
  `ind1` varchar(50) DEFAULT NULL,
  `inddesg1` varchar(30) DEFAULT NULL,
  `indnature1` varchar(30) DEFAULT NULL,
  `inddoj1` date DEFAULT NULL,
  `inddor1` date DEFAULT NULL,
  `indreason1` varchar(100) DEFAULT NULL,
  `indcir1` varchar(100) DEFAULT NULL,
  `indkey` int(1) DEFAULT NULL,
  `ot1` varchar(50) DEFAULT NULL,
  `otdesg1` varchar(30) DEFAULT NULL,
  `otnature1` varchar(30) DEFAULT NULL,
  `otdoj1` date DEFAULT NULL,
  `otdor1` date DEFAULT NULL,
  `otreason1` varchar(100) DEFAULT NULL,
  `otcir1` varchar(100) DEFAULT NULL,
  `otkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bio_fac_exp`
--

INSERT INTO `bio_fac_exp` (`sid`, `clg1`, `clgdesg1`, `clgdoj1`, `clgdor1`, `clgreason1`, `clg2`, `clgdesg2`, `clgdoj2`, `clgdor2`, `clgreason2`, `clgcir2`, `clgcir1`, `clgkey`, `pol1`, `poldesg1`, `poldoj1`, `poldor1`, `polreason1`, `polcir1`, `polkey`, `sch1`, `schdesg1`, `schdoj1`, `schdor1`, `schreason1`, `schcir1`, `schkey`, `ind1`, `inddesg1`, `indnature1`, `inddoj1`, `inddor1`, `indreason1`, `indcir1`, `indkey`, `ot1`, `otdesg1`, `otnature1`, `otdoj1`, `otdor1`, `otreason1`, `otcir1`, `otkey`) VALUES
('S18BIO001', 'VIVEKANANDHA COLLEGE OF ENGINEERING FOR WOMEN', 'ASSISTANT PROFESSOR', '2016-06-17', '2017-12-06', 'HEALTH ISSUE', 'SELVAM COLLEGE OF TECHNOLOGY', 'ASSISTANT PROFESSOR', '2016-01-18', '2016-05-31', 'HEALTH ISSUE', '0000-00-00', '51719-experience-certificate-vcew.pdf', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bio_fac_funpat`
--

CREATE TABLE `bio_fac_funpat` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `titleofpro1` varchar(50) DEFAULT NULL,
  `duration1` varchar(30) DEFAULT NULL,
  `amountsan1` varchar(20) DEFAULT NULL,
  `agency1` varchar(20) DEFAULT NULL,
  `startdate1` date DEFAULT NULL,
  `copiname1` varchar(20) DEFAULT NULL,
  `year1` varchar(7) DEFAULT NULL,
  `order1` varchar(200) DEFAULT NULL,
  `uc1` varchar(200) DEFAULT NULL,
  `funkey` int(1) DEFAULT NULL,
  `nameofpat1` varchar(50) DEFAULT NULL,
  `title1` varchar(30) DEFAULT NULL,
  `fileno1` varchar(20) DEFAULT NULL,
  `pat_cer1` varchar(200) DEFAULT NULL,
  `patkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bio_fac_glc`
--

CREATE TABLE `bio_fac_glc` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `gltitle1` varchar(50) DEFAULT NULL,
  `gldays1` int(3) DEFAULT NULL,
  `glfrom1` date NOT NULL,
  `glto1` date NOT NULL,
  `gldate1` date NOT NULL,
  `gltopic1` varchar(50) DEFAULT NULL,
  `glorg1` varchar(50) DEFAULT NULL,
  `glplace1` varchar(50) DEFAULT NULL,
  `glpic1` varchar(100) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL,
  `conname1` varchar(30) DEFAULT NULL,
  `contitle1` varchar(50) DEFAULT NULL,
  `conorg1` varchar(50) DEFAULT NULL,
  `condays1` int(3) DEFAULT NULL,
  `confrom1` date NOT NULL,
  `conto1` date NOT NULL,
  `condate1` date NOT NULL,
  `conlevel1` varchar(20) DEFAULT NULL,
  `conpdf1` varchar(100) DEFAULT NULL,
  `concer1` varchar(100) DEFAULT NULL,
  `conkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bio_fac_glc`
--

INSERT INTO `bio_fac_glc` (`id`, `sid`, `ayear`, `gltitle1`, `gldays1`, `glfrom1`, `glto1`, `gldate1`, `gltopic1`, `glorg1`, `glplace1`, `glpic1`, `glkey`, `conname1`, `contitle1`, `conorg1`, `condays1`, `confrom1`, `conto1`, `condate1`, `conlevel1`, `conpdf1`, `concer1`, `conkey`) VALUES
(1, 'S05BIO004', '2010-2011', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'GREEN TECHNOLOGIES FOR THE BEN', ' â€œBiodegradation  of waste water  containing  hy', 'Universiti Sains Malaysia', 3, '2010-12-13', '2010-12-15', '0000-00-00', 'international', NULL, '47396-skm_554e19030817290.pdf', 1),
(2, 'S05BIO004', '2017-2018', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'EMERGING CHALLENGES IN BIOTECH', ' ', 'MGR COLLEGE', 2, '2018-01-31', '2018-02-01', '0000-00-00', 'national', NULL, '68667-skm_554e19030817283.pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bio_fac_member`
--

CREATE TABLE `bio_fac_member` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `memberid1` varchar(30) DEFAULT NULL,
  `validity1` varchar(20) DEFAULT NULL,
  `name2` varchar(50) NOT NULL,
  `pic2` varchar(30) NOT NULL,
  `memberid2` varchar(30) NOT NULL,
  `validity2` varchar(20) NOT NULL,
  `pic1` varchar(100) DEFAULT NULL,
  `memkey` int(1) DEFAULT NULL,
  `res1` varchar(50) DEFAULT NULL,
  `level1` varchar(20) DEFAULT NULL,
  `reskey` int(1) DEFAULT NULL,
  `aname1` varchar(50) DEFAULT NULL,
  `aissue1` varchar(10) DEFAULT NULL,
  `amy1` varchar(7) DEFAULT NULL,
  `acer1` varchar(100) DEFAULT NULL,
  `awakey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bio_fac_member`
--

INSERT INTO `bio_fac_member` (`id`, `sid`, `ayear`, `name1`, `memberid1`, `validity1`, `name2`, `pic2`, `memberid2`, `validity2`, `pic1`, `memkey`, `res1`, `level1`, `reskey`, `aname1`, `aissue1`, `amy1`, `acer1`, `awakey`) VALUES
(1, 'S05BIO004', '2009-2010', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'DCOE', 'institute', 1, NULL, NULL, NULL, NULL, NULL),
(2, 'S05BIO004', '2010-2011', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'DCOE', 'institute', 1, NULL, NULL, NULL, NULL, NULL),
(3, 'S05BIO004', '2011-2012', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'DCOE', 'institute', 1, NULL, NULL, NULL, NULL, NULL),
(4, 'S05BIO004', '2012-2013', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'DCOE', 'institute', 1, NULL, NULL, NULL, NULL, NULL),
(5, 'S05BIO004', '2013-2014', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'DCOE', 'institute', 1, NULL, NULL, NULL, NULL, NULL),
(6, 'S05BIO004', '2014-2015', 'Asia-Pacific  Chemical,  Biological&  Environmenta', '200224', 'LIFE', '', '', '', '', '18232-_member-200224.pdf', 1, 'DCOE', 'institute', 1, NULL, NULL, NULL, NULL, NULL),
(7, 'S05BIO004', '2015-2016', 'IE', 'M-151552-1', 'LIFE', 'IAENG', '38400-iaeng_membership_151647.', '151647', 'LIFE', '58003-mie.pdf', 2, 'DCOE', 'institute', 1, NULL, NULL, NULL, NULL, NULL),
(8, 'S05BIO004', '2016-2017', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'DCOE', 'institute', 1, NULL, NULL, NULL, NULL, NULL),
(9, 'S05BIO004', '2017-2018', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'DCOE', 'institute', 1, NULL, NULL, NULL, NULL, NULL),
(10, 'S05BIO004', '2018-2019', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'DCOE', 'institute', 1, NULL, NULL, NULL, NULL, NULL),
(11, 'S05BIO004', '2007-2008', 'ISTE', 'LM57667', 'LIFE', '', '', '', '', '99437-iste.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'S18BIO009', '2018-2019', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'Tutor', 'department', 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bio_fac_ot_qual`
--

CREATE TABLE `bio_fac_ot_qual` (
  `id` int(5) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `name_qual` varchar(100) DEFAULT NULL,
  `year_com` int(10) DEFAULT NULL,
  `cer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bio_fac_resg`
--

CREATE TABLE `bio_fac_resg` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `supid` varchar(20) DEFAULT NULL,
  `numsch` int(2) NOT NULL,
  `reg` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` varchar(10) NOT NULL,
  `cyear` varchar(20) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `tit` varchar(100) NOT NULL,
  `j_sup` varchar(50) DEFAULT NULL
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
-- Table structure for table `bit_fac`
--

CREATE TABLE `bit_fac` (
  `sid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `age` int(4) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob1` bigint(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `mstatus` varchar(5) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `relegion` varchar(30) NOT NULL,
  `comunity` varchar(10) NOT NULL,
  `place` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `aadharno` bigint(12) NOT NULL,
  `panno` varchar(10) NOT NULL,
  `passport` varchar(20) DEFAULT NULL,
  `blood` varchar(5) NOT NULL,
  `doj` date NOT NULL,
  `designation` varchar(50) NOT NULL,
  `mob2` bigint(10) DEFAULT NULL,
  `dept` varchar(50) NOT NULL,
  `uploadpic` varchar(100) NOT NULL,
  `aadharpic` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `dor` date DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `app_order` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bit_fac`
--

INSERT INTO `bit_fac` (`sid`, `name`, `dob`, `age`, `gender`, `email`, `mob1`, `fname`, `mname`, `mstatus`, `sname`, `relegion`, `comunity`, `place`, `city`, `district`, `state`, `country`, `pincode`, `address`, `paddress`, `aadharno`, `panno`, `passport`, `blood`, `doj`, `designation`, `mob2`, `dept`, `uploadpic`, `aadharpic`, `password`, `status`, `dor`, `reason`, `app_order`) VALUES
('S04BIT008', 'Dr.D.THILAGAVATHY', '1976-06-07', 43, 'female', 'thilagakarthick@yahoo.co.in', 9487819100, 'S.K.DORAIRAJ', 'D.SANTHA KUMARI', 'y', '', 'Hindu', 'BC', 'Hosur', 'Hosur', 'Krishnagiri', 'Tamil Nadu', 'India', '635109', '	Plot.No.51,Swagath Residencies\r\nMoranapalli(V)\r\nHosur   ', '	Plot.No.51,Swagath Residencies\r\nMoranapalli(V)\r\nHosur   ', 598731137776, 'AFFPT9357K', '', 'O+', '2004-06-21', 'Professor and Head', 9443824660, 'BIT', '92102-thilaga-new.jpg', '96676-thilagaaa.pdf', '7776', NULL, NULL, NULL, '65591-d.thilagavathy---appointment-order.pdf'),
('S10BIT006', 'SIVAKUMAR.V', '1984-04-03', 35, 'male', 'sivcse45@gmail.com', 9994886632, 'S.VENU', 'V.KAMATCHI', 'y', '', 'Hindu', 'BC', 'GUDIYATHAM', 'GUDIYATHAM', 'VELLORE', 'Tamil Nadu', 'India', '632602', 'NO: 1A-3, 2ND ANDIYAPPA MUDALI STREET, KAMATCHIAMMAN PET, NEAR BOSE PET, GUDIYATHAM-632602, VELLORE ', '	   ', 512277592404, 'CYWPS2782P', '', 'O+', '2010-11-06', 'Assistant Professor', 0, 'BIT', '87038-sivakumar-photo.jpg', '20579-sivakumar-aadhaar.jpg', '2404', NULL, NULL, NULL, NULL),
('S11BIT005', 'sivanantham', '1987-11-03', 32, 'male', 'sivanantham17@gmail.com', 9791714881, 'sivakumar', 'valli', 'y', '', 'Hindu', 'BC', 'Hosur', 'Hosur', 'Krishnagiri', 'Tamil Nadu', 'India', '635109', '3/302-1, 5th cross, Narasamma Colony, Hosur', '3/302-1, 5th cross, Narasamma Colony, Hosur', 313564744634, 'DQPPS6111C', '', 'O Neg', '2011-06-13', 'Assistant Professor', 0, 'BIT', '12207-dsc_0535.jpg', '59244-aadhar-1-ilovepdf-compressed.pdf', 'siva1987', NULL, NULL, NULL, NULL),
('S12BIT005', 'R REGIN', '1985-01-01', 34, 'male', 'regin.it@adhiyamaan.in', 9600632341, 'T N RAJAN', 'J SHEELA RAJAN', 'y', '', 'Christian', 'Nadar', 'Nagercoil', 'Nagercoil', 'Kanyakumari', 'Tamil Nadu', 'India', '629003', '	   127/39 B Parama Shakthi Street ,Pallivilai,Vetturnimadam[Post],Nagercoil-629003', '	   127/39 B Parama Shakthi Street ,Pallivilai,Vetturnimadam[Post],Nagercoil-629003', 736549876160, 'BJPPR7685R', '', 'O pos', '2012-06-18', 'Assistant Professor', 0, 'BIT', '70541-reginphoto1.jpg', '46184-regin-aadharcard.jpg', '6160', NULL, NULL, NULL, NULL),
('S12BIT007', 'SATHISHKUMAR S', '1983-02-23', 36, 'male', 'sathis.aeri@gmail.com', 7373048485, 'SUBRAMANIAM G', 'BALAMANI S', 'n', '', 'HINDU', 'BC', 'KandianKoil', 'Tiruppur', 'Tiruppur', 'Tamil Nadu', 'India', '641665', 'Deputy Warden, \r\nRoom No: G215,\r\nCauvery Hostel, \r\nAdhiyamaan College of Engg,\r\nHosur	   ', '	2/461-AalanGarden, KandianKoil(Post) P.K.Palayam (Via), Tiruppur 641665   ', 798809998628, 'DZVPS7558N', '', 'O pos', '2012-06-18', 'Assistant Professor', 8489468485, 'BIT', '14252-sathishkumar_photo.jpg', '94256-sathis_adharcard.pdf', '8628', NULL, NULL, NULL, NULL),
('S13BIT007', 'R. RAGHU', '1985-07-10', 34, 'male', 'raghuace85@gmail.com', 9597174618, 'N. RAMA MOORTHY', 'R. PARVATHAMMA', 'y', '', 'HINDHU', 'Kamma Naid', 'HOSUR', 'Hosur', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635109', 'D. No: 1/278 1(2), Bairamangalam(Village & Post),\r\nDenkanokota(Taluk),\r\nKsrishnagiri (Dist),\r\nTamiln', 'D. No: 1/278 1(2), Bairamangalam(Village & Post),\r\nDenkanokota(Taluk),\r\nKsrishnagiri (Dist),\r\nTamiln', 373435133716, 'AUEPR7775D', '', 'B +VE', '2013-06-07', 'Assistant Professor', 0, 'BIT', '47875-r.raghu.jpg', '44561-adar.pdf', '3716', NULL, NULL, NULL, '87417-appointment-letter.pdf'),
('S13BIT009', 'KARTHIKA K', '1987-12-06', 32, 'female', 'karthikainfoscience@gmail.com', 7708258586, 'KUMARAVEL K P', 'REVATHI C', 'n', '', 'hindu', 'BC', 'hosur', 'HOSUR', 'krishnagiri', 'Tamil Nadu', 'India', '635109', 'no 126 f/48 A,therpet   ', 'no 126 f/48 A,therpet   ', 771277133591, 'BZLPK7199D', '', 'O+', '2013-06-07', 'ASSISTANT PROFESSOR', 9790225439, 'BIT', '25915-edited.jpg', '22088-ilovepdf_jpg_to_pdf.pdf', '3591', NULL, NULL, NULL, '64265-20190410_102655.pdf'),
('S18BIT003', 'Gowtham Raj M', '1994-09-30', 25, 'male', 'gowthamglitters@gmail.com', 8903573745, 'Mohan Raj AR', 'Bhuvaneshwari M', 'n', '', 'Hindu', 'BC', 'Kaveripattinam', 'Krishnagiri', 'Krishnagiri', 'Tamil Nadu', 'India', '635112', '#1/14 Thomson Pettai, Achari Street,\r\nKaveripattinam,\r\nKrishnagiri(DT)\r\npin-635112', '#1/14 Thomson Pettai, Achari Street,\r\nKaveripattinam,\r\nKrishnagiri(DT)\r\npin-635112', 860888526057, 'BGEPG7601Q', '', 'O+', '2018-08-01', 'Assistant Professor', 9445273745, 'BIT', '55767-8461-gowtham.jpg', '1706-new-doc-2019-01-24-18.42.59_2.jpg', '1945', NULL, NULL, NULL, '52549-new-doc-2018-09-29-10.28.45_1.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `bit_fac_attorg`
--

CREATE TABLE `bit_fac_attorg` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `attcategory1` varchar(20) DEFAULT NULL,
  `atttitle1` varchar(50) DEFAULT NULL,
  `attdays1` int(3) DEFAULT NULL,
  `attfrom1` date NOT NULL,
  `attto1` date NOT NULL,
  `attdate1` date NOT NULL,
  `attorg1` varchar(50) DEFAULT NULL,
  `attplace1` varchar(50) DEFAULT NULL,
  `attlevel1` varchar(20) DEFAULT NULL,
  `attcer1` varchar(100) DEFAULT NULL,
  `attkey` int(1) DEFAULT NULL,
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
-- Dumping data for table `bit_fac_attorg`
--

INSERT INTO `bit_fac_attorg` (`id`, `sid`, `ayear`, `attcategory1`, `atttitle1`, `attdays1`, `attfrom1`, `attto1`, `attdate1`, `attorg1`, `attplace1`, `attlevel1`, `attcer1`, `attkey`, `orgcategory1`, `orgtitle1`, `orgfun1`, `orgdays1`, `orgfrom1`, `orgto1`, `orgdate1`, `orgres1`, `orgpar1`, `orglevel1`, `orgcer1`, `orgkey`) VALUES
(1, 'S18BIT003', '2018-2019', 'fdp', 'INTRODUCTION TO BIG DATA ANALYTICS', 2, '2018-09-03', '2018-09-04', '0000-00-00', 'ICT ACADEMY', 'ADHIYAMAAN ENGINEERING COLLEGE, HOSUR', 'district', '89647-new-doc-2019-01-30-13.03.33.jpg', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(2, 'S10BIT006', '2018-2019', 'fdp', 'Introduction to Big Data Analytics', 2, '2018-09-03', '2018-09-04', '0000-00-00', 'ICTACT', 'Adhiyamaan College of Engineering', 'state', '9726-2018-bigdata-ictact.jpg', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(3, 'S10BIT006', '2018-2019', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, '0', 'National Level Technical Symposium Accendo 2K18', '-', 2, '2018-09-19', '2018-09-20', '0000-00-00', 'nil', 100, 'national', '60365-a2k18-coordinator-award.jpeg', 1),
(4, 'S10BIT006', '2017-2018', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, '0', 'Intra College level Project Innovation Contest â€œ', '-', 2, '2018-03-15', '2018-03-16', '0000-00-00', 'nil', 80, 'national', '96540-pic-18-coordinator.jpeg', 1),
(5, 'S13BIT007', '2016-2017', 'training', '% th National Conference on Frontiers in communica', 2, '2017-03-13', '2017-03-14', '0000-00-00', 'Dept of ECE', 'ACE, Hosur', 'national', '86459-2017.1.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(6, 'S13BIT007', '2016-2017', 'training', '5 th National Conference on Frontiers in communica', 2, '2017-03-13', '2017-03-14', '0000-00-00', 'Dept of ECE  ', 'ACE, Hosur  ', 'national', '38529-2017.2.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(7, 'S13BIT007', '2016-2017', 'fdp', 'Introduction to R Programming  ', 2, '2017-04-20', '2017-04-21', '0000-00-00', 'ICT Academy of Tamilnadu ', 'ACE, Hosur  ', 'international', '45151-2017.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(8, 'S13BIT007', '2017-2018', 'fdp', 'Adaptation of Computational Intelligence in Wirele', 14, '2017-12-04', '2017-12-17', '0000-00-00', 'AICTE ', 'ACE, Hosur  ', 'international', '82464-2018.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(9, 'S13BIT007', '2016-2017', 'seminar', 'Employability Skills for the Future', 1, '0000-00-00', '0000-00-00', '2016-07-30', 'ICT Academy of Tamilnadu ', 'ACE, Hosur   ', 'national', '25013-2016.1.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(10, 'S13BIT007', '2016-2017', 'fdp', 'Internet of Things ', 2, '2016-08-18', '2016-08-19', '0000-00-00', 'Dept of IT ', 'ACE, Hosur   ', 'national', '53450-2016.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(11, 'S13BIT007', '2016-2017', 'fdp', 'Introduction to Mobile APP Development ', 2, '2016-09-26', '2016-09-27', '0000-00-00', 'ICT Academy of Tamilnadu   ', 'ACE, Hosur  ', 'national', '96979-2016.3.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(12, 'S13BIT007', '2015-2016', 'fdp', 'Mission 10X', 2, '2015-06-02', '2015-06-04', '0000-00-00', 'WIPRO & ACE', 'ACE, Hosur   ', 'international', '57877-2015.1.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(13, 'S13BIT007', '2015-2016', 'workshop', 'C# and .NET Programming', 3, '2016-01-11', '2016-01-13', '0000-00-00', 'Dept of IT ', 'ACE, Hosur     ', 'national', '19016-2016.2.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(14, 'S13BIT007', '2015-2016', 'fdp', 'Entrepreneurship Development', 14, '2016-02-01', '2016-02-13', '0000-00-00', 'DST & ACE', 'ACE, Hosur   ', 'national', '2641-2016.3.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(15, 'S13BIT007', '2014-2015', 'fdp', 'Introduction to PHP & MySQL', 2, '2015-01-08', '2015-01-09', '0000-00-00', 'ICT Academy of Tamilnadu  ', 'EXCEL Engg College, Namakkal', 'national', '47400-2015.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(16, 'S13BIT007', '2014-2015', 'fdp', 'Decision Making Skills', 2, '2015-04-20', '2015-04-21', '0000-00-00', 'ICT Academy of Tamilnadu   ', 'ACE, Hosur    ', 'national', '1679-2015.2.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(17, 'S13BIT007', '2013-2014', 'fdp', 'LateX', 2, '2013-06-28', '2013-06-29', '0000-00-00', 'Dept of IT & EIE ', 'ACE, Hosur     ', 'national', '83906-2013.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(18, 'S13BIT007', '2013-2014', 'workshop', 'Network Simulator 2', 1, '0000-00-00', '0000-00-00', '2013-07-22', 'Dept of IT  ', 'ACE, Hosur      ', 'national', '27691-2013.1.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(19, 'S13BIT007', '2013-2014', 'fdp', 'MANETs -Opportunities and Challenges ', 7, '2014-05-19', '2014-05-25', '0000-00-00', 'Dept of CSE, GCE, Bargur', 'Bargur', 'national', '25267-2014.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(20, 'S13BIT007', '2011-2012', 'seminar', 'Wireless Security', 1, '0000-00-00', '0000-00-00', '2011-08-26', 'IE(I)& CSE', 'ACE, Hosur      ', 'national', '46132-2011.3.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(21, 'S13BIT007', '2011-2012', 'workshop', 'Cloud Computing and virtualization ', 2, '2012-02-08', '2012-02-09', '0000-00-00', 'World Innovation Center & CSE', 'ACE, Hosur   ', 'national', '41254-2012.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(22, 'S13BIT007', '2010-2011', 'seminar', 'Grid and Cloud Computing', 1, '0000-00-00', '0000-00-00', '2010-09-08', 'IE(I)& IT', 'ACE, Hosur      ', 'national', '28456-2010.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(23, 'S13BIT007', '2010-2011', 'workshop', 'Advanced Java Programming', 1, '0000-00-00', '0000-00-00', '2011-03-12', 'Dept of IT  ', 'ACE, Hosur     ', 'national', '37795-2011.1.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(24, 'S13BIT007', '2010-2011', 'workshop', 'Nuances of Database Design and Handling', 1, '0000-00-00', '0000-00-00', '2011-03-18', 'Dept of IT ', 'ACE, Hosur ', 'national', '63524-2011.2.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(25, 'S13BIT007', '2010-2011', 'workshop', 'Dynamic web designing', 1, '0000-00-00', '0000-00-00', '2011-03-19', 'Dept of IT  ', 'ACE, Hosur       ', 'national', '88781-2011.3.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bit_fac_bkjrn`
--

CREATE TABLE `bit_fac_bkjrn` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `bk1` varchar(20) DEFAULT NULL,
  `bkcha1` varchar(50) DEFAULT NULL,
  `bkissn1` varchar(20) DEFAULT NULL,
  `bkmy1` varchar(7) DEFAULT NULL,
  `bkpub1` varchar(50) DEFAULT NULL,
  `bktype1` varchar(50) DEFAULT NULL,
  `bkkey` int(1) DEFAULT NULL,
  `jrntitle1` varchar(100) DEFAULT NULL,
  `jrnname1` varchar(50) DEFAULT NULL,
  `jrnvol1` varchar(20) DEFAULT NULL,
  `jrnissue1` varchar(20) DEFAULT NULL,
  `jrnissn1` varchar(20) DEFAULT NULL,
  `jrncategory1` varchar(20) DEFAULT NULL,
  `jrnlink1` varchar(100) DEFAULT NULL,
  `jrncit1` varchar(30) DEFAULT NULL,
  `jrnpdf1` varchar(100) DEFAULT NULL,
  `jrnimpact1` int(10) DEFAULT NULL,
  `jrnkey` int(1) DEFAULT NULL,
  `gl` varchar(50) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bit_fac_bkjrn`
--

INSERT INTO `bit_fac_bkjrn` (`id`, `sid`, `ayear`, `bk1`, `bkcha1`, `bkissn1`, `bkmy1`, `bkpub1`, `bktype1`, `bkkey`, `jrntitle1`, `jrnname1`, `jrnvol1`, `jrnissue1`, `jrnissn1`, `jrncategory1`, `jrnlink1`, `jrncit1`, `jrnpdf1`, `jrnimpact1`, `jrnkey`, `gl`, `glkey`) VALUES
(1, 'S10BIT006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://scholar.google.co.in/citations?hl=en&user=', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bit_fac_edu`
--

CREATE TABLE `bit_fac_edu` (
  `sid` varchar(30) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `sboard` varchar(10) DEFAULT NULL,
  `syear` int(4) DEFAULT NULL,
  `spercentage` int(4) DEFAULT NULL,
  `scertificate` varchar(100) DEFAULT NULL,
  `skey` int(1) DEFAULT NULL,
  `s2name` varchar(50) DEFAULT NULL,
  `s2board` varchar(10) DEFAULT NULL,
  `s2branch` varchar(50) DEFAULT NULL,
  `s2year` int(4) DEFAULT NULL,
  `s2percentage` int(4) DEFAULT NULL,
  `s2certificate` varchar(100) DEFAULT NULL,
  `s2key` int(1) DEFAULT NULL,
  `dname` varchar(50) DEFAULT NULL,
  `dboard` varchar(10) DEFAULT NULL,
  `ddegree` varchar(50) DEFAULT NULL,
  `dmode` varchar(10) DEFAULT NULL,
  `dyear` int(4) DEFAULT NULL,
  `dpercentage` int(4) DEFAULT NULL,
  `dcertificate` varchar(100) DEFAULT NULL,
  `dkey` int(1) DEFAULT NULL,
  `d1name` varchar(50) DEFAULT NULL,
  `d1board` varchar(10) DEFAULT NULL,
  `d1degree` varchar(50) DEFAULT NULL,
  `d1mode` varchar(10) DEFAULT NULL,
  `d1year` int(4) DEFAULT NULL,
  `d1percentage` int(4) DEFAULT NULL,
  `d1certificate` varchar(100) DEFAULT NULL,
  `d1key` int(1) DEFAULT NULL,
  `d2name` varchar(50) DEFAULT NULL,
  `d2board` varchar(10) DEFAULT NULL,
  `d2degree` varchar(50) DEFAULT NULL,
  `d2mode` varchar(10) DEFAULT NULL,
  `d2year` int(4) DEFAULT NULL,
  `d2percentage` int(4) DEFAULT NULL,
  `d2certificate` varchar(100) DEFAULT NULL,
  `d2key` int(1) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `uuniversity` varchar(50) DEFAULT NULL,
  `udegree` varchar(50) DEFAULT NULL,
  `ubranch` varchar(50) DEFAULT NULL,
  `umode` varchar(10) DEFAULT NULL,
  `uyear` int(4) DEFAULT NULL,
  `upercentage` int(4) DEFAULT NULL,
  `ucertificate` varchar(100) DEFAULT NULL,
  `ukey` int(1) DEFAULT NULL,
  `u1name` varchar(50) DEFAULT NULL,
  `u1university` varchar(50) DEFAULT NULL,
  `u1degree` varchar(50) DEFAULT NULL,
  `u1branch` varchar(50) DEFAULT NULL,
  `u1mode` varchar(10) DEFAULT NULL,
  `u1year` int(4) DEFAULT NULL,
  `u1percentage` int(4) DEFAULT NULL,
  `u1certificate` varchar(100) DEFAULT NULL,
  `u1key` int(1) DEFAULT NULL,
  `u2name` varchar(50) DEFAULT NULL,
  `u2university` varchar(50) DEFAULT NULL,
  `u2degree` varchar(50) DEFAULT NULL,
  `u2branch` varchar(50) DEFAULT NULL,
  `u2mode` varchar(10) DEFAULT NULL,
  `u2year` int(4) DEFAULT NULL,
  `u2percentage` int(4) DEFAULT NULL,
  `u2certificate` varchar(100) DEFAULT NULL,
  `u2key` int(1) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `puniversity` varchar(50) DEFAULT NULL,
  `pdegree` varchar(50) DEFAULT NULL,
  `pbranch` varchar(50) DEFAULT NULL,
  `pmode` varchar(10) DEFAULT NULL,
  `pyear` int(4) DEFAULT NULL,
  `ppercentage` int(4) DEFAULT NULL,
  `pcertificate` varchar(100) DEFAULT NULL,
  `pkey` int(1) DEFAULT NULL,
  `p1name` varchar(50) DEFAULT NULL,
  `p1university` varchar(50) DEFAULT NULL,
  `p1degree` varchar(50) DEFAULT NULL,
  `p1branch` varchar(50) DEFAULT NULL,
  `p1mode` varchar(10) DEFAULT NULL,
  `p1year` int(4) DEFAULT NULL,
  `p1percentage` int(4) DEFAULT NULL,
  `p1certificate` varchar(100) DEFAULT NULL,
  `p1key` int(1) DEFAULT NULL,
  `p2name` varchar(50) DEFAULT NULL,
  `p2university` varchar(50) DEFAULT NULL,
  `p2degree` varchar(50) DEFAULT NULL,
  `p2branch` varchar(50) DEFAULT NULL,
  `p2mode` varchar(10) DEFAULT NULL,
  `p2year` int(4) DEFAULT NULL,
  `p2percentage` int(4) DEFAULT NULL,
  `p2certificate` varchar(100) DEFAULT NULL,
  `p2key` int(1) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `muniversity` varchar(50) DEFAULT NULL,
  `mspec` varchar(50) DEFAULT NULL,
  `mbranch` varchar(50) DEFAULT NULL,
  `mmode` varchar(10) DEFAULT NULL,
  `myear` int(4) DEFAULT NULL,
  `mpercentage` int(4) DEFAULT NULL,
  `mthesis` varchar(50) DEFAULT NULL,
  `mguide` varchar(30) DEFAULT NULL,
  `mcertificate` varchar(100) DEFAULT NULL,
  `mkey` int(1) DEFAULT NULL,
  `phname` varchar(50) DEFAULT NULL,
  `phuniversity` varchar(50) DEFAULT NULL,
  `phspec` varchar(50) DEFAULT NULL,
  `phbranch` varchar(50) DEFAULT NULL,
  `phmode` varchar(10) DEFAULT NULL,
  `phyreg` varchar(7) DEFAULT NULL,
  `phyear` varchar(7) DEFAULT NULL,
  `phthesis` varchar(100) DEFAULT NULL,
  `phguide` varchar(30) DEFAULT NULL,
  `phcertificate` varchar(100) DEFAULT NULL,
  `phkey` int(1) DEFAULT NULL,
  `ph1name` varchar(50) DEFAULT NULL,
  `ph1university` varchar(50) DEFAULT NULL,
  `ph1spec` varchar(50) DEFAULT NULL,
  `ph1branch` varchar(50) DEFAULT NULL,
  `ph1mode` varchar(10) DEFAULT NULL,
  `ph1yreg` varchar(7) DEFAULT NULL,
  `ph1year` varchar(7) DEFAULT NULL,
  `ph1thesis` varchar(100) DEFAULT NULL,
  `ph1guide` varchar(30) DEFAULT NULL,
  `ph1certificate` varchar(100) DEFAULT NULL,
  `ph1key` int(1) DEFAULT NULL,
  `ph2name` varchar(50) DEFAULT NULL,
  `ph2university` varchar(50) DEFAULT NULL,
  `ph2spec` varchar(50) DEFAULT NULL,
  `ph2branch` varchar(50) DEFAULT NULL,
  `ph2mode` varchar(10) DEFAULT NULL,
  `ph2yreg` varchar(7) DEFAULT NULL,
  `ph2year` varchar(7) DEFAULT NULL,
  `ph2thesis` varchar(100) DEFAULT NULL,
  `ph2guide` varchar(30) DEFAULT NULL,
  `ph2certificate` varchar(100) DEFAULT NULL,
  `ph2key` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bit_fac_edu`
--

INSERT INTO `bit_fac_edu` (`sid`, `sname`, `sboard`, `syear`, `spercentage`, `scertificate`, `skey`, `s2name`, `s2board`, `s2branch`, `s2year`, `s2percentage`, `s2certificate`, `s2key`, `dname`, `dboard`, `ddegree`, `dmode`, `dyear`, `dpercentage`, `dcertificate`, `dkey`, `d1name`, `d1board`, `d1degree`, `d1mode`, `d1year`, `d1percentage`, `d1certificate`, `d1key`, `d2name`, `d2board`, `d2degree`, `d2mode`, `d2year`, `d2percentage`, `d2certificate`, `d2key`, `uname`, `uuniversity`, `udegree`, `ubranch`, `umode`, `uyear`, `upercentage`, `ucertificate`, `ukey`, `u1name`, `u1university`, `u1degree`, `u1branch`, `u1mode`, `u1year`, `u1percentage`, `u1certificate`, `u1key`, `u2name`, `u2university`, `u2degree`, `u2branch`, `u2mode`, `u2year`, `u2percentage`, `u2certificate`, `u2key`, `pname`, `puniversity`, `pdegree`, `pbranch`, `pmode`, `pyear`, `ppercentage`, `pcertificate`, `pkey`, `p1name`, `p1university`, `p1degree`, `p1branch`, `p1mode`, `p1year`, `p1percentage`, `p1certificate`, `p1key`, `p2name`, `p2university`, `p2degree`, `p2branch`, `p2mode`, `p2year`, `p2percentage`, `p2certificate`, `p2key`, `mname`, `muniversity`, `mspec`, `mbranch`, `mmode`, `myear`, `mpercentage`, `mthesis`, `mguide`, `mcertificate`, `mkey`, `phname`, `phuniversity`, `phspec`, `phbranch`, `phmode`, `phyreg`, `phyear`, `phthesis`, `phguide`, `phcertificate`, `phkey`, `ph1name`, `ph1university`, `ph1spec`, `ph1branch`, `ph1mode`, `ph1yreg`, `ph1year`, `ph1thesis`, `ph1guide`, `ph1certificate`, `ph1key`, `ph2name`, `ph2university`, `ph2spec`, `ph2branch`, `ph2mode`, `ph2yreg`, `ph2year`, `ph2thesis`, `ph2guide`, `ph2certificate`, `ph2key`) VALUES
('S04BIT008', 'St.Joseph Matriculation Higher Secondary School', 'state', 1991, 79, '21026-10.pdf', 1, 'St.Joseph Matriculation Higher Secondary School', 'state', 'Plus Two', 1993, 87, '66585-10.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tamil Nadu College of Engineering', 'Bharathiyar University', 'B.E', 'Computer Science and Engineering', 'regular', 1997, 59, '97289-b.e.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sona College of Technology', 'Anna University', 'M.E', 'Computer Science and Engineering', 'regular', 2004, 71, '69502-d.thilagavathy-convocation-pg.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Anna University', 'Anna University', 'Network Security', 'Information and Communication Engineering', 'parttime', '2007-01', '2011-10', 'Resilient Interval Based Contributory Re-key Agreement with Efficient Authentication', 'Dr.M.Rajaram', '72901-phd.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S10BIT006', 'Vallalar High School', 'state', 2000, 88, '97457-10std_3.jpg', 1, 'National Higher Secondary School', 'state', 'Maths & Biology', 2002, 87, '92390-12th.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Priyadarshini Engineering College', 'Anna University, Chennai', 'B.E.', 'Computer Science & Engineering', 'regular', 2006, 78, '8811-be.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Anna University of Technology, Coimbatore', 'Anna University of Technology, Coimbatore', 'M.E.', 'Computer Science & Engineering', 'regular', 2010, 9, '38921-siva-me.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S12BIT005', 'E D W M SDA MHSS VETTURNIMADAM', 'state', 2000, 58, '17339-x-pdf.pdf', 1, 'MODERATOR GNANADASON POLYTECHNIC COLLEGE', 'state', 'Computer Technology', 2004, 79, '76114-diploma-degree-cert.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CSI INSTITUTE OF TECHNOLOGY', 'ANNA UNIVERSITY', 'BE', 'Computer SCIENCE ', 'regular', 2007, 67, '49656-be-pdf.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ANNAMALAI UNIVERSITY', 'ANNAMALAI UNIVERSITY', 'ME', 'Computer Science', 'regular', 2011, 7, '86161-regin-me-degree.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Adhiyamaan College of Engineering', 'Anna University', 'Vanet', 'ICE', 'parttime', '2015-07', '', '', 'Dr T.MENAKADEVI', '41054-reginph.d-fee.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S13BIT007', 'Govt HS BAIRAMANGALAM', 'state', 2000, 74, '83928-10th-raghu.pdf', 1, 'R.V.G.B.Hr Sec School, HOSUR', 'state', 'MPCB', 2003, 69, '49550-12.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADHIYAMAAN COLLEGE OF ENGINEERING', 'ANNA UNIVERSITY', 'B.TECH', 'INFORMATION TECHNOLOGY', 'regular', 2007, 68, '48538-new-doc-2019-04-10-07.35.24-3.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Adhiyamaan College of Engineering', 'Anna University', 'M.E', 'Computer science and Engineering', 'regular', 2013, 9, '93904-raghu-3.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Adhiyamaan College of Engineering', 'Anna University', 'Faculty of Information and Communication Enginneri', 'Computer Science- VANETs', 'regular', '2016-01', '', '', 'Dr. T. Menakadevi', '73525-new-doc-2019-04-10-07.35.24-1.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S13BIT009', 'kingston matric higher secondary school', 'state', 2003, 76, '97508-new-doc-2017-06-24-1-2.pdf', 1, 'Government Girls Higher Secondary School Hosur', 'state', 'maths physics chemistry biology', 2005, 73, '45361-new-doc-2017-06-24-3-4.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lord Venkateshwara Engineering College kanchepuram', 'Anna University', 'B TECH', 'INFORMATION TECHNOLOGY', 'regular', 2009, 83, '66720-new-doc-2017-06-24-10-11.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'COLLEGE OF ENGINEERING GUINDY CAMPUS', 'ANNA UNIVERSITY ', 'ME', 'MULTIMEDIA TECHNOLOGY', 'regular', 2013, 9, '4521-new-doc-2017-06-24-12-13.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S18BIT003', 'TES HIGHER SECONDARY SCHOOL, KATHALAMEDU', 'state', 2009, 54, '79008-new-doc-2019-01-31-11.34.49_1.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LAKSHMI NARAYANA POLYTECHNIC COLLEGE, DHARMAPURI', 'STATE BOAR', 'COMPUTER ENGINEERING', 'regular', 2012, 90, '55982-new-doc-2019-01-31-11.45.05.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VELAMMAL ENGINEERING COLLEGE, CHENNAI', 'ANNA UNIVERSITY', 'B.E', 'COMPUTER SCIENCE AND ENGINEERING', 'regular', 2015, 7, '30421-new-doc-2019-01-31-11.59.18.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'COLLEGE OF ENGINEERING GUINDY CAMPUS', 'ANNA UNIVERSITY', 'ME', 'SOFTWARE ENGINEERING', 'regular', 2018, 8, '44370-new-doc-2019-04-10-12.49.50.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bit_fac_exp`
--

CREATE TABLE `bit_fac_exp` (
  `sid` varchar(30) NOT NULL,
  `clg1` varchar(50) DEFAULT NULL,
  `clgdesg1` varchar(30) DEFAULT NULL,
  `clgdoj1` date DEFAULT NULL,
  `clgdor1` date DEFAULT NULL,
  `clgreason1` varchar(100) DEFAULT NULL,
  `clg2` varchar(50) NOT NULL,
  `clgdesg2` varchar(50) NOT NULL,
  `clgdoj2` date NOT NULL,
  `clgdor2` date NOT NULL,
  `clgreason2` varchar(100) NOT NULL,
  `clgcir2` date NOT NULL,
  `clgcir1` varchar(100) DEFAULT NULL,
  `clgkey` int(1) DEFAULT NULL,
  `pol1` varchar(50) DEFAULT NULL,
  `poldesg1` varchar(30) DEFAULT NULL,
  `poldoj1` date DEFAULT NULL,
  `poldor1` date DEFAULT NULL,
  `polreason1` varchar(100) DEFAULT NULL,
  `polcir1` varchar(100) DEFAULT NULL,
  `polkey` int(1) DEFAULT NULL,
  `sch1` varchar(50) DEFAULT NULL,
  `schdesg1` varchar(30) DEFAULT NULL,
  `schdoj1` date DEFAULT NULL,
  `schdor1` date DEFAULT NULL,
  `schreason1` varchar(100) DEFAULT NULL,
  `schcir1` varchar(100) DEFAULT NULL,
  `schkey` int(1) DEFAULT NULL,
  `ind1` varchar(50) DEFAULT NULL,
  `inddesg1` varchar(30) DEFAULT NULL,
  `indnature1` varchar(30) DEFAULT NULL,
  `inddoj1` date DEFAULT NULL,
  `inddor1` date DEFAULT NULL,
  `indreason1` varchar(100) DEFAULT NULL,
  `indcir1` varchar(100) DEFAULT NULL,
  `indkey` int(1) DEFAULT NULL,
  `ot1` varchar(50) DEFAULT NULL,
  `otdesg1` varchar(30) DEFAULT NULL,
  `otnature1` varchar(30) DEFAULT NULL,
  `otdoj1` date DEFAULT NULL,
  `otdor1` date DEFAULT NULL,
  `otreason1` varchar(100) DEFAULT NULL,
  `otcir1` varchar(100) DEFAULT NULL,
  `otkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bit_fac_exp`
--

INSERT INTO `bit_fac_exp` (`sid`, `clg1`, `clgdesg1`, `clgdoj1`, `clgdor1`, `clgreason1`, `clg2`, `clgdesg2`, `clgdoj2`, `clgdor2`, `clgreason2`, `clgcir2`, `clgcir1`, `clgkey`, `pol1`, `poldesg1`, `poldoj1`, `poldor1`, `polreason1`, `polcir1`, `polkey`, `sch1`, `schdesg1`, `schdoj1`, `schdor1`, `schreason1`, `schcir1`, `schkey`, `ind1`, `inddesg1`, `indnature1`, `inddoj1`, `inddor1`, `indreason1`, `indcir1`, `indkey`, `ot1`, `otdesg1`, `otnature1`, `otdoj1`, `otdor1`, `otreason1`, `otcir1`, `otkey`) VALUES
('S13BIT009', 'AVS ENGINEERING COLLEGE ', 'LECTURER', '2010-07-16', '2011-07-25', 'for continuing higher studies', 'AVS ENGINEERING COLLEGE', 'LECTURER', '2010-07-16', '2011-07-25', 'FOR CONTINUING HIGHER STUDIES', '0000-00-00', '94298-new-doc-2017-06-24-21.pdf', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bit_fac_funpat`
--

CREATE TABLE `bit_fac_funpat` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `titleofpro1` varchar(50) DEFAULT NULL,
  `duration1` varchar(30) DEFAULT NULL,
  `amountsan1` varchar(20) DEFAULT NULL,
  `agency1` varchar(20) DEFAULT NULL,
  `startdate1` date DEFAULT NULL,
  `copiname1` varchar(20) DEFAULT NULL,
  `year1` varchar(7) DEFAULT NULL,
  `order1` varchar(200) NOT NULL,
  `uc1` varchar(200) NOT NULL,
  `funkey` int(1) DEFAULT NULL,
  `nameofpat1` varchar(50) DEFAULT NULL,
  `title1` varchar(30) DEFAULT NULL,
  `fileno1` varchar(20) DEFAULT NULL,
  `pat_cer` varchar(200) NOT NULL,
  `patkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bit_fac_glc`
--

CREATE TABLE `bit_fac_glc` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `gltitle1` varchar(50) DEFAULT NULL,
  `gldays1` int(3) DEFAULT NULL,
  `glfrom1` date NOT NULL,
  `glto1` date NOT NULL,
  `gldate1` date NOT NULL,
  `gltopic1` varchar(50) DEFAULT NULL,
  `glorg1` varchar(50) DEFAULT NULL,
  `glplace1` varchar(50) DEFAULT NULL,
  `glpic1` varchar(100) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL,
  `conname1` varchar(30) DEFAULT NULL,
  `contitle1` varchar(50) DEFAULT NULL,
  `conorg1` varchar(50) DEFAULT NULL,
  `condays1` int(3) DEFAULT NULL,
  `confrom1` date NOT NULL,
  `conto1` date NOT NULL,
  `condate1` date NOT NULL,
  `conlevel1` varchar(20) DEFAULT NULL,
  `conpdf1` varchar(100) DEFAULT NULL,
  `concer1` varchar(100) DEFAULT NULL,
  `conkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bit_fac_glc`
--

INSERT INTO `bit_fac_glc` (`id`, `sid`, `ayear`, `gltitle1`, `gldays1`, `glfrom1`, `glto1`, `gldate1`, `gltopic1`, `glorg1`, `glplace1`, `glpic1`, `glkey`, `conname1`, `contitle1`, `conorg1`, `condays1`, `confrom1`, `conto1`, `condate1`, `conlevel1`, `conpdf1`, `concer1`, `conkey`) VALUES
(1, 'S10BIT006', '2016-2017', 'Dynamic Web design with PHP and MySQL', 2, '2017-02-21', '2017-02-22', '0000-00-00', 'PHP and MySQL', 'Adhiymaan College of Engineering (Autonomous)', 'Hosur', '0', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bit_fac_member`
--

CREATE TABLE `bit_fac_member` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `memberid1` varchar(30) DEFAULT NULL,
  `validity1` varchar(20) DEFAULT NULL,
  `name2` varchar(50) NOT NULL,
  `pic2` varchar(30) NOT NULL,
  `memberid2` varchar(30) NOT NULL,
  `validity2` varchar(20) NOT NULL,
  `pic1` varchar(100) DEFAULT NULL,
  `memkey` int(1) DEFAULT NULL,
  `res1` varchar(50) DEFAULT NULL,
  `level1` varchar(20) DEFAULT NULL,
  `res2` varchar(50) NOT NULL,
  `level2` varchar(20) NOT NULL,
  `res3` varchar(50) NOT NULL,
  `level3` varchar(20) NOT NULL,
  `reskey` int(1) DEFAULT NULL,
  `aname1` varchar(50) DEFAULT NULL,
  `aissue1` varchar(10) DEFAULT NULL,
  `amy1` varchar(7) DEFAULT NULL,
  `aname2` varchar(50) NOT NULL,
  `acer2` varchar(30) NOT NULL,
  `aissue2` varchar(30) NOT NULL,
  `amy2` varchar(20) NOT NULL,
  `aname3` varchar(50) NOT NULL,
  `acer3` varchar(30) NOT NULL,
  `aissue3` varchar(30) NOT NULL,
  `amy3` varchar(20) NOT NULL,
  `acer1` varchar(100) DEFAULT NULL,
  `awakey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bit_fac_member`
--

INSERT INTO `bit_fac_member` (`id`, `sid`, `ayear`, `name1`, `memberid1`, `validity1`, `name2`, `pic2`, `memberid2`, `validity2`, `pic1`, `memkey`, `res1`, `level1`, `res2`, `level2`, `res3`, `level3`, `reskey`, `aname1`, `aissue1`, `amy1`, `aname2`, `acer2`, `aissue2`, `amy2`, `aname3`, `acer3`, `aissue3`, `amy3`, `acer1`, `awakey`) VALUES
(1, 'S18BIT003', '2018-2019', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'CLASS TUTOR', 'department', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL),
(2, 'S10BIT006', '2016-2017', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'Tutor, Unit Test Incharge, IETE incharge', 'department', '', '', '', '', 1, 'Facilitator Workshop on PHP & MySQL', 'Department', '2017-04', '', '', '', '', '', '', '', '', '0', 1),
(3, 'S10BIT006', '2017-2018', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'Autonomous Semester Exams Duty Allotment', 'department', 'Tutor, Unit Test Incharge, IETE incharge', 'department', 'BOS Member', 'department', 3, 'Silver Faculty', 'Infosys Ca', '2018-09', 'Coordinator for PIC-18', '0', 'Department of IT', '2018-04', '', '', '', '', '0', 2),
(4, 'S10BIT006', '2018-2019', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'Tutor, Unit Test Incharge, IETE incharge', 'department', 'Discipline Incharge', 'department', 'BOS Member', 'department', 3, 'Silver Faculty', 'Infosys Ca', '2018-06', 'Staff Coordinator Accendo2K18', '0', 'Department of IT', '2018-09', '', '', '', '', '0', 2),
(5, 'S04BIT008', '2008-2009', 'ISTE', 'LM61437', 'LIFE TIME', 'IE(I)', '19660-ie.pdf', 'M1459419', 'LIFE TIME', '21239-iste.pdf', 2, 'HOD', 'department', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL),
(6, 'S04BIT008', '2009-2010', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'HOD', 'department', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL),
(7, 'S04BIT008', '2010-2011', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'HOD', 'department', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL),
(8, 'S04BIT008', '2011-2012', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'HOD', 'department', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL),
(9, 'S04BIT008', '2012-2013', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'HOD', 'department', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL),
(10, 'S04BIT008', '2013-2014', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'HOD', 'department', '', '', '', '', 1, 'PARTERS IN SUCCESS -BRONZE', 'INFOSYS', '2014-03', '', '', '', '', '', '', '', '', '25502-bronze-2014.pdf', 1),
(11, 'S04BIT008', '2014-2015', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'HOD', 'department', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL),
(12, 'S04BIT008', '2015-2016', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'HOD', 'department', '', '', '', '', 1, 'BEST ENGINEER AWARD', 'IE(I)', '2016-09', 'BEST PROJECT AWARD', '84331-best-project.pdf', 'IE(I)', '2016-03', 'PARTERS IN SUCESS -SILVER', '87140-silver-2015.pdf', 'INFOSYS', '2015-03', '97125-best-engg.pdf', 3),
(13, 'S04BIT008', '2016-2017', 'CSI', 'N1012769', 'LIFE TIME', '', '', '', '', '10895-csi.pdf', 1, 'HOD', 'department', '', '', '', '', 1, 'Appreciation', 'Adhiyamaan', '2016-09', '', '', '', '', '', '', '', '', '14784-c16.pdf', 1),
(14, 'S04BIT008', '2017-2018', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'HOD', 'department', '', '', '', '', 1, 'Appreciation', 'Tiruvalluv', '2018-03', 'Appreciation', '23438-crypto17.pdf', 'Adhiyamaan College of Engineer', '2017-09', 'Appreciation', '18753-infosys.pdf', 'INFOSYS', '2017-03', '55105-appre.pdf', 3),
(15, 'S04BIT008', '2018-2019', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'HOD', '', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL),
(16, 'S13BIT009', '2013-2014', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'TUTOR', 'department', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL),
(17, 'S13BIT009', '2014-2015', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'TUTOR, STOCK INCHARGE', 'department', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL),
(18, 'S13BIT009', '2015-2016', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'TUTOR, STOCK INCHARGE', 'department', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL),
(19, 'S13BIT009', '2016-2017', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'TUTOR,STOCK INCHARGE', 'department', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL),
(20, 'S13BIT009', '2017-2018', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'TUTOR - BATCH(2017-21),sTOCK INCHARGE,DEPARTMENT L', 'department', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL),
(21, 'S10BIT006', '2011-2012', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'Unit Test Incharge', 'department', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL),
(22, 'S10BIT006', '2012-2013', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'Examination in-charge (Autonomous Semester & Unit ', 'department', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL),
(23, 'S10BIT006', '2013-2014', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'Autonomous Semester Exams Duty Allotment', 'department', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL),
(24, 'S10BIT006', '2014-2015', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'IETE Coordinator, Unit Test Exam Incharge', 'department', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL),
(25, 'S10BIT006', '2015-2016', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'IIT Spoken Tutorial Project Coordinator,Unit Test ', 'department', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL),
(26, 'S13BIT007', '2008-2009', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'Tutor', '', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL),
(27, 'S13BIT007', '2009-2010', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'Class Tutor, ISO File incharge, Events Coordinator', 'department', 'Class Tutor,Events Coordinator, Lab In charge (VI)', 'department', '', '', 2, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL),
(28, 'S13BIT007', '2010-2011', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'Class Tutor,Events Coordinator, Lab In charge (VI)', 'department', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL),
(29, 'S13BIT007', '2013-2014', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'Tutor,Events Coordinator,External Valuator, Worksh', '', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL),
(30, 'S13BIT007', '2014-2015', NULL, NULL, NULL, '', '', '', '', NULL, NULL, ' Tutor,Events Coordinator,External & Internal Exam', 'department', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL),
(31, 'S13BIT007', '2015-2016', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'IE(I) staff Coordinator, Tutor,Lab In charge (IV),', 'department', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL),
(32, 'S13BIT007', '2016-2017', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'Tutor,Lab In charge (IV),IE(I) staff Coordinator, ', 'department', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL),
(33, 'S13BIT007', '2017-2018', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'Tutor,Lab In charge (IV),IE(I) staff Coordinator, ', 'department', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL),
(34, 'S13BIT007', '2018-2019', NULL, NULL, NULL, '', '', '', '', NULL, NULL, 'Lab In charge (IV),Tutor,IE(I) staff Coordinator, ', 'department', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bit_fac_ot_qual`
--

CREATE TABLE `bit_fac_ot_qual` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) NOT NULL,
  `name_qual` varchar(50) NOT NULL,
  `year_com` int(10) NOT NULL,
  `cer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bit_fac_resg`
--

CREATE TABLE `bit_fac_resg` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `supid` varchar(20) DEFAULT NULL,
  `numsch` int(2) NOT NULL,
  `reg` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` varchar(10) NOT NULL,
  `cyear` varchar(20) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `tit` varchar(100) NOT NULL,
  `j_sup` varchar(50) DEFAULT NULL
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
-- Table structure for table `bme_fac`
--

CREATE TABLE `bme_fac` (
  `sid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `age` int(4) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob1` bigint(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `mstatus` varchar(5) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `relegion` varchar(30) NOT NULL,
  `comunity` varchar(10) NOT NULL,
  `place` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `aadharno` bigint(12) NOT NULL,
  `panno` varchar(10) NOT NULL,
  `passport` varchar(20) DEFAULT NULL,
  `blood` varchar(5) NOT NULL,
  `doj` date NOT NULL,
  `designation` varchar(50) NOT NULL,
  `mob2` bigint(10) DEFAULT NULL,
  `dept` varchar(50) NOT NULL,
  `uploadpic` varchar(100) NOT NULL,
  `aadharpic` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `dor` date DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `app_order` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bme_fac`
--

INSERT INTO `bme_fac` (`sid`, `name`, `dob`, `age`, `gender`, `email`, `mob1`, `fname`, `mname`, `mstatus`, `sname`, `relegion`, `comunity`, `place`, `city`, `district`, `state`, `country`, `pincode`, `address`, `paddress`, `aadharno`, `panno`, `passport`, `blood`, `doj`, `designation`, `mob2`, `dept`, `uploadpic`, `aadharpic`, `password`, `status`, `dor`, `reason`, `app_order`) VALUES
('S07BME001', 'Dr.T.S.Udhaya Suriya', '1977-06-06', 42, 'female', 'tsu.suriya@gmail.com', 9894171294, 'Mr.P. Thankappan', 'Mrs.C.Saraswathi', 'y', '', 'Hindu', 'BC', 'Surya Nagar', 'HOSUR', 'Krishnagiri', 'Tamil Nadu', 'India', '635126', '3/335C, Surya Nagar 6th Cross, Arasanetty\r\nMookandapalli Post\r\nHosur-635126	   ', '3/335C, Surya Nagar 6th Cross, Arasanetty\r\nMookandapalli Post\r\nHosur-635126	   ', 601210193399, 'ABEPU5499A', '', 'B+ive', '2007-02-05', 'Prof& Head', 0, 'BME', '87367-us-photo.jpg', '67402-udahya-suriya_aadhar.pdf', '3399', NULL, NULL, NULL, NULL),
('S10BME003', 'V.P.Krishnammal', '1983-05-14', 36, 'female', 'krishna_vp2002@yahoo.com', 9994609270, 'A.Velappan', 'S.Ponnammal', 'y', '', 'Hindu', 'MBC', 'HOSUR', 'HOSUR', 'Krishnagiri', '', 'India', '635109', 'Plot No:56,\r\nVenkatehwara\r\nNagar,\r\nKrishna Nagar Extn, \r\nDharga,Hosur	   ', '556a, Annastreet,\r\nMKP Nagar,\r\nPalayamkottai,	\r\nTirunelveli   ', 8146, 'BDOPK5877K', '-', 'O+', '2010-12-01', 'Assistant Professor', 8248488641, 'BME', '64728-scan-image-new.jpg', '83970-krishnammal.pdf', '7 0767', NULL, NULL, NULL, '53342-app-1.pdf'),
('S10BME005', 'P GANESH BABU ', '1984-09-15', 35, 'male', 'ganeshbabu15@gmail.com', 9894152562, 'S.PARAMASIVAN', 'P.SELVA VELAMMAL', 'n', '', 'Hindu', 'Senaithala', 'Ambasamudram', 'Tirunelveli', 'Tirunelveli', 'Tamil Nadu', 'India', '627428', '3/123,Amaravathi st,Agasthiyarpatti,\r\nTirunelveli Dt.', '3/123,Amaravathi st,Agasthiyarpatti,\r\nTirunelveli Dt.', 725710007572, 'ATFPG8201K', '', 'B+ve', '2010-06-11', 'Assistant professor', 0, 'BME', '44348-photo1.jpg', '89335-ganesh-babu_aadhar.pdf', '7572', NULL, NULL, NULL, '66468-app.pdf'),
('S16BME004', 'S. Archana', '1993-02-03', 26, 'female', 'archusiva.s@gmail.com', 7639107134, 'V. Sadhasivam', 'S. Adistalakshmi', 'n', '', 'Hindu', 'Senaithala', 'Uthangarai', 'Uthangarai', 'Krishnagiri', 'Tamil Nadu', 'India', '635207', '94/58 c, kamaraj Nagar,Uthangarai, krishnagiri (DT)	   ', '94/58 c, kamaraj Nagar,Uthangarai, krishnagiri (DT)	   ', 627727126450, 'BWIPA4998J', '', 'B+ive', '2016-07-04', 'Assistant professor', 7010638358, 'BME', '18630-archana-photo.jpg', '48583-aadhar-archana.pdf', '6450', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bme_fac_attorg`
--

CREATE TABLE `bme_fac_attorg` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `attcategory1` varchar(20) DEFAULT NULL,
  `atttitle1` varchar(50) DEFAULT NULL,
  `attdays1` int(3) DEFAULT NULL,
  `attfrom1` date NOT NULL,
  `attto1` date NOT NULL,
  `attdate1` date NOT NULL,
  `attorg1` varchar(50) DEFAULT NULL,
  `attplace1` varchar(50) DEFAULT NULL,
  `attlevel1` varchar(20) DEFAULT NULL,
  `attcer1` varchar(100) DEFAULT NULL,
  `attkey` int(1) DEFAULT NULL,
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
-- Dumping data for table `bme_fac_attorg`
--

INSERT INTO `bme_fac_attorg` (`id`, `sid`, `ayear`, `attcategory1`, `atttitle1`, `attdays1`, `attfrom1`, `attto1`, `attdate1`, `attorg1`, `attplace1`, `attlevel1`, `attcer1`, `attkey`, `orgcategory1`, `orgtitle1`, `orgfun1`, `orgdays1`, `orgfrom1`, `orgto1`, `orgdate1`, `orgres1`, `orgpar1`, `orglevel1`, `orgcer1`, `orgkey`) VALUES
(1, 'S07BME001', '2006-2007', 'training', 'Quality Improvement Programme on â€œRecent Trends ', 7, '2006-11-15', '2006-11-21', '0000-00-00', 'Indian Institute of Technology Madras', 'Chennai', 'international', '51630-iit.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(2, 'S07BME001', '2006-2007', 'fdp', 'Anna university sponsored FDP on Solid State Drive', 15, '2006-12-01', '2006-12-14', '0000-00-00', 'St. Xavierâ€™s Catholic College of Engineering', ' Chunkankadai, Kanyakumari Dist', 'national', '17398-st.-xavier.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bme_fac_bkjrn`
--

CREATE TABLE `bme_fac_bkjrn` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `bk1` varchar(20) DEFAULT NULL,
  `bkcha1` varchar(50) DEFAULT NULL,
  `bkissn1` varchar(20) DEFAULT NULL,
  `bkmy1` varchar(7) DEFAULT NULL,
  `bkpub1` varchar(50) DEFAULT NULL,
  `bktype1` varchar(50) DEFAULT NULL,
  `bkkey` int(1) DEFAULT NULL,
  `jrntitle1` varchar(100) DEFAULT NULL,
  `jrnname1` varchar(50) DEFAULT NULL,
  `jrnvol1` varchar(20) DEFAULT NULL,
  `jrnissue1` varchar(20) DEFAULT NULL,
  `jrnissn1` varchar(20) DEFAULT NULL,
  `jrncategory1` varchar(20) DEFAULT NULL,
  `jrnlink1` varchar(100) DEFAULT NULL,
  `jrncit1` varchar(30) DEFAULT NULL,
  `jrnpdf1` varchar(100) DEFAULT NULL,
  `jrnimpact1` int(10) DEFAULT NULL,
  `jrnkey` int(1) DEFAULT NULL,
  `gl` varchar(50) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bme_fac_bkjrn`
--

INSERT INTO `bme_fac_bkjrn` (`id`, `sid`, `ayear`, `bk1`, `bkcha1`, `bkissn1`, `bkmy1`, `bkpub1`, `bktype1`, `bkkey`, `jrntitle1`, `jrnname1`, `jrnvol1`, `jrnissue1`, `jrnissn1`, `jrncategory1`, `jrnlink1`, `jrncit1`, `jrnpdf1`, `jrnimpact1`, `jrnkey`, `gl`, `glkey`) VALUES
(1, 'S10BME003', '2014-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'design and implementation of FFT processor using Vedic multiplier', 'International Journal of Applied Engineering Resea', 'Volume 10', 'Number 18 (2015)', 'ISSN 0973-4562', 'scopus', 'http://www.ripublication.com', 'SCOPUS(2010-2017), EBSCOhost, ', '9635-fft-paper-ijaer.pdf', 0, 1, NULL, NULL),
(2, 'S10BME003', '2015-2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Performance Analysis of Anurupye Vedic Multiplier in FFT Processor', 'AUSTRALIAN JOURNAL OF BASIC AND APPLIED SCIENCES', 'Volume 10', '2016 march', 'ISSN:1991-8178', 'sci', 'www.ajbasweb.com', '43', '38228-579-585.pdf', 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bme_fac_edu`
--

CREATE TABLE `bme_fac_edu` (
  `sid` varchar(30) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `sboard` varchar(10) DEFAULT NULL,
  `syear` int(4) DEFAULT NULL,
  `spercentage` int(4) DEFAULT NULL,
  `scertificate` varchar(100) DEFAULT NULL,
  `skey` int(1) DEFAULT NULL,
  `s2name` varchar(50) DEFAULT NULL,
  `s2board` varchar(10) DEFAULT NULL,
  `s2branch` varchar(50) DEFAULT NULL,
  `s2year` int(4) DEFAULT NULL,
  `s2percentage` int(4) DEFAULT NULL,
  `s2certificate` varchar(100) DEFAULT NULL,
  `s2key` int(1) DEFAULT NULL,
  `dname` varchar(50) DEFAULT NULL,
  `dboard` varchar(10) DEFAULT NULL,
  `ddegree` varchar(50) DEFAULT NULL,
  `dmode` varchar(10) DEFAULT NULL,
  `dyear` int(4) DEFAULT NULL,
  `dpercentage` int(4) DEFAULT NULL,
  `dcertificate` varchar(100) DEFAULT NULL,
  `dkey` int(1) DEFAULT NULL,
  `d1name` varchar(50) DEFAULT NULL,
  `d1board` varchar(10) DEFAULT NULL,
  `d1degree` varchar(50) DEFAULT NULL,
  `d1mode` varchar(10) DEFAULT NULL,
  `d1year` int(4) DEFAULT NULL,
  `d1percentage` int(4) DEFAULT NULL,
  `d1certificate` varchar(100) DEFAULT NULL,
  `d1key` int(1) DEFAULT NULL,
  `d2name` varchar(50) DEFAULT NULL,
  `d2board` varchar(10) DEFAULT NULL,
  `d2degree` varchar(50) DEFAULT NULL,
  `d2mode` varchar(10) DEFAULT NULL,
  `d2year` int(4) DEFAULT NULL,
  `d2percentage` int(4) DEFAULT NULL,
  `d2certificate` varchar(100) DEFAULT NULL,
  `d2key` int(1) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `uuniversity` varchar(50) DEFAULT NULL,
  `udegree` varchar(50) DEFAULT NULL,
  `ubranch` varchar(50) DEFAULT NULL,
  `umode` varchar(10) DEFAULT NULL,
  `uyear` int(4) DEFAULT NULL,
  `upercentage` int(4) DEFAULT NULL,
  `ucertificate` varchar(100) DEFAULT NULL,
  `ukey` int(1) DEFAULT NULL,
  `u1name` varchar(50) DEFAULT NULL,
  `u1university` varchar(50) DEFAULT NULL,
  `u1degree` varchar(50) DEFAULT NULL,
  `u1branch` varchar(50) DEFAULT NULL,
  `u1mode` varchar(10) DEFAULT NULL,
  `u1year` int(4) DEFAULT NULL,
  `u1percentage` int(4) DEFAULT NULL,
  `u1certificate` varchar(100) DEFAULT NULL,
  `u1key` int(1) DEFAULT NULL,
  `u2name` varchar(50) DEFAULT NULL,
  `u2university` varchar(50) DEFAULT NULL,
  `u2degree` varchar(50) DEFAULT NULL,
  `u2branch` varchar(50) DEFAULT NULL,
  `u2mode` varchar(10) DEFAULT NULL,
  `u2year` int(4) DEFAULT NULL,
  `u2percentage` int(4) DEFAULT NULL,
  `u2certificate` varchar(100) DEFAULT NULL,
  `u2key` int(1) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `puniversity` varchar(50) DEFAULT NULL,
  `pdegree` varchar(50) DEFAULT NULL,
  `pbranch` varchar(50) DEFAULT NULL,
  `pmode` varchar(10) DEFAULT NULL,
  `pyear` int(4) DEFAULT NULL,
  `ppercentage` int(4) DEFAULT NULL,
  `pcertificate` varchar(100) DEFAULT NULL,
  `pkey` int(1) DEFAULT NULL,
  `p1name` varchar(50) DEFAULT NULL,
  `p1university` varchar(50) DEFAULT NULL,
  `p1degree` varchar(50) DEFAULT NULL,
  `p1branch` varchar(50) DEFAULT NULL,
  `p1mode` varchar(10) DEFAULT NULL,
  `p1year` int(4) DEFAULT NULL,
  `p1percentage` int(4) DEFAULT NULL,
  `p1certificate` varchar(100) DEFAULT NULL,
  `p1key` int(1) DEFAULT NULL,
  `p2name` varchar(50) DEFAULT NULL,
  `p2university` varchar(50) DEFAULT NULL,
  `p2degree` varchar(50) DEFAULT NULL,
  `p2branch` varchar(50) DEFAULT NULL,
  `p2mode` varchar(10) DEFAULT NULL,
  `p2year` int(4) DEFAULT NULL,
  `p2percentage` int(4) DEFAULT NULL,
  `p2certificate` varchar(100) DEFAULT NULL,
  `p2key` int(1) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `muniversity` varchar(50) DEFAULT NULL,
  `mspec` varchar(50) DEFAULT NULL,
  `mbranch` varchar(50) DEFAULT NULL,
  `mmode` varchar(10) DEFAULT NULL,
  `myear` int(4) DEFAULT NULL,
  `mpercentage` int(4) DEFAULT NULL,
  `mthesis` varchar(50) DEFAULT NULL,
  `mguide` varchar(30) DEFAULT NULL,
  `mcertificate` varchar(100) DEFAULT NULL,
  `mkey` int(1) DEFAULT NULL,
  `phname` varchar(50) DEFAULT NULL,
  `phuniversity` varchar(50) DEFAULT NULL,
  `phspec` varchar(50) DEFAULT NULL,
  `phbranch` varchar(50) DEFAULT NULL,
  `phmode` varchar(10) DEFAULT NULL,
  `phyreg` varchar(7) DEFAULT NULL,
  `phyear` varchar(7) DEFAULT NULL,
  `phthesis` varchar(100) DEFAULT NULL,
  `phguide` varchar(30) DEFAULT NULL,
  `phcertificate` varchar(100) DEFAULT NULL,
  `phkey` int(1) DEFAULT NULL,
  `ph1name` varchar(50) DEFAULT NULL,
  `ph1university` varchar(50) DEFAULT NULL,
  `ph1spec` varchar(50) DEFAULT NULL,
  `ph1branch` varchar(50) DEFAULT NULL,
  `ph1mode` varchar(10) DEFAULT NULL,
  `ph1yreg` varchar(7) DEFAULT NULL,
  `ph1year` varchar(7) DEFAULT NULL,
  `ph1thesis` varchar(100) DEFAULT NULL,
  `ph1guide` varchar(30) DEFAULT NULL,
  `ph1certificate` varchar(100) DEFAULT NULL,
  `ph1key` int(1) DEFAULT NULL,
  `ph2name` varchar(50) DEFAULT NULL,
  `ph2university` varchar(50) DEFAULT NULL,
  `ph2spec` varchar(50) DEFAULT NULL,
  `ph2branch` varchar(50) DEFAULT NULL,
  `ph2mode` varchar(10) DEFAULT NULL,
  `ph2yreg` varchar(7) DEFAULT NULL,
  `ph2year` varchar(7) DEFAULT NULL,
  `ph2thesis` varchar(100) DEFAULT NULL,
  `ph2guide` varchar(30) DEFAULT NULL,
  `ph2certificate` varchar(100) DEFAULT NULL,
  `ph2key` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bme_fac_edu`
--

INSERT INTO `bme_fac_edu` (`sid`, `sname`, `sboard`, `syear`, `spercentage`, `scertificate`, `skey`, `s2name`, `s2board`, `s2branch`, `s2year`, `s2percentage`, `s2certificate`, `s2key`, `dname`, `dboard`, `ddegree`, `dmode`, `dyear`, `dpercentage`, `dcertificate`, `dkey`, `d1name`, `d1board`, `d1degree`, `d1mode`, `d1year`, `d1percentage`, `d1certificate`, `d1key`, `d2name`, `d2board`, `d2degree`, `d2mode`, `d2year`, `d2percentage`, `d2certificate`, `d2key`, `uname`, `uuniversity`, `udegree`, `ubranch`, `umode`, `uyear`, `upercentage`, `ucertificate`, `ukey`, `u1name`, `u1university`, `u1degree`, `u1branch`, `u1mode`, `u1year`, `u1percentage`, `u1certificate`, `u1key`, `u2name`, `u2university`, `u2degree`, `u2branch`, `u2mode`, `u2year`, `u2percentage`, `u2certificate`, `u2key`, `pname`, `puniversity`, `pdegree`, `pbranch`, `pmode`, `pyear`, `ppercentage`, `pcertificate`, `pkey`, `p1name`, `p1university`, `p1degree`, `p1branch`, `p1mode`, `p1year`, `p1percentage`, `p1certificate`, `p1key`, `p2name`, `p2university`, `p2degree`, `p2branch`, `p2mode`, `p2year`, `p2percentage`, `p2certificate`, `p2key`, `mname`, `muniversity`, `mspec`, `mbranch`, `mmode`, `myear`, `mpercentage`, `mthesis`, `mguide`, `mcertificate`, `mkey`, `phname`, `phuniversity`, `phspec`, `phbranch`, `phmode`, `phyreg`, `phyear`, `phthesis`, `phguide`, `phcertificate`, `phkey`, `ph1name`, `ph1university`, `ph1spec`, `ph1branch`, `ph1mode`, `ph1yreg`, `ph1year`, `ph1thesis`, `ph1guide`, `ph1certificate`, `ph1key`, `ph2name`, `ph2university`, `ph2spec`, `ph2branch`, `ph2mode`, `ph2yreg`, `ph2year`, `ph2thesis`, `ph2guide`, `ph2certificate`, `ph2key`) VALUES
('S07BME001', 'GOVT GIRLS HS ERANIEL', 'state', 1992, 87, '53625-sslc-us.pdf', 1, 'LMS  G HSS NEYYOOR', 'state', 'Maths,Physics,Chemistry, Biology', 1994, 79, '6252-hsc-us.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NOORUL ISLAM COLLEGE OF ENGG THUCKALAY', 'MANONMANIAM SUNDARANAR UNIVERSITY', 'BE', 'ELECTRICAL AND ELECTRONICS', 'regular', 1999, 69, '18107-ug-us.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HINDUSTAN COLLEGE OF ENGG CHENNAI', 'MADRAS UNIVERSITY', 'ME', 'APPLIED ELECTRONICS', 'regular', 2001, 73, '60026-me-us.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ANNA UNIVERSITY CHENNAI', 'ANNA UNIVERSITY CHENNAI', 'BIOMEDICAL ENGINEERING', 'INFORMATION AND COMMUNICATION ENGINEERING', 'regular', '2010-07', '2017-02', 'AN IMPROVED FUSION TECHNIQUE FOR MEDICAL IMAGES USING  DISCRETE WAVELET TRANSFORM.', 'Dr.P.RANGARAJAN', '9474-phd.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S10BME003', 'GOVERNMENT  GIRLS HIGHER SECONDARY SCHOOL', 'state', 0, 87, '53080-sslc.pdf', 1, 'BAPUJI MEMORIAL HSS ,mANAVALAKURICHY', 'state', 'Maths,Physics,Chemistry, Biology', 0, 89, '35868-hsc.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'THIAGARAJAR COLLEGE OF ENGINEERING,MADURAI', 'MADURAI KAMARAJ UNIVERSITY', 'BE', 'ECE', 'regular', 0, 70, '19628-ug-degree.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GOVERNMENT COLLEGE OF TECHNOLOGY,COIMBATORE', 'ANNA UNIVERSITY', 'ME', 'VLSI DESIGN', 'regular', 0, 87, '90076-pg-degree.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S10BME005', 'AVRmV Matricultaion School', 'state', 2000, 67, '10830-sslc.pdf', 1, 'AVRmV Higher Secondary School', 'state', 'Maths,Physics,Chemistry', 2002, 80, '80007-10th-12th-marksheet.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Adhiyamaan College of Engineering', 'Anna University', 'BE', 'EEE', 'regular', 2006, 59, '75957-d1.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PSG Tech', 'Anna University, Coimbatore', 'ME', 'Applied Electronics', 'regular', 2010, 7, '30428-d2.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bme_fac_exp`
--

CREATE TABLE `bme_fac_exp` (
  `sid` varchar(30) NOT NULL,
  `clg1` varchar(50) DEFAULT NULL,
  `clgdesg1` varchar(30) DEFAULT NULL,
  `clgdoj1` date DEFAULT NULL,
  `clgdor1` date DEFAULT NULL,
  `clgreason1` varchar(100) DEFAULT NULL,
  `clg2` varchar(50) NOT NULL,
  `clgdesg2` varchar(50) NOT NULL,
  `clgdoj2` date NOT NULL,
  `clgdor2` date NOT NULL,
  `clgreason2` varchar(100) NOT NULL,
  `clg3` varchar(50) NOT NULL,
  `clgdesg3` varchar(50) NOT NULL,
  `clgdoj3` date NOT NULL,
  `clgdor3` date NOT NULL,
  `clgreason3` varchar(100) NOT NULL,
  `clg4` varchar(50) NOT NULL,
  `clgdesg4` varchar(50) NOT NULL,
  `clgdoj4` date NOT NULL,
  `clgdor4` date NOT NULL,
  `clgreason4` varchar(100) NOT NULL,
  `clg5` varchar(50) NOT NULL,
  `clgdesg5` varchar(50) NOT NULL,
  `clgdoj5` date NOT NULL,
  `clgdor5` date NOT NULL,
  `clgreason5` varchar(100) NOT NULL,
  `clg6` varchar(50) NOT NULL,
  `clgdesg6` varchar(50) NOT NULL,
  `clgdoj6` date NOT NULL,
  `clgdor6` date NOT NULL,
  `clgreason6` varchar(100) NOT NULL,
  `clgcir6` date NOT NULL,
  `clgcir5` date NOT NULL,
  `clgcir4` date NOT NULL,
  `clgcir3` date NOT NULL,
  `clgcir2` date NOT NULL,
  `clgcir1` varchar(100) DEFAULT NULL,
  `clgkey` int(1) DEFAULT NULL,
  `pol1` varchar(50) DEFAULT NULL,
  `poldesg1` varchar(30) DEFAULT NULL,
  `poldoj1` date DEFAULT NULL,
  `poldor1` date DEFAULT NULL,
  `polreason1` varchar(100) DEFAULT NULL,
  `polcir1` varchar(100) DEFAULT NULL,
  `polkey` int(1) DEFAULT NULL,
  `sch1` varchar(50) DEFAULT NULL,
  `schdesg1` varchar(30) DEFAULT NULL,
  `schdoj1` date DEFAULT NULL,
  `schdor1` date DEFAULT NULL,
  `schreason1` varchar(100) DEFAULT NULL,
  `schcir1` varchar(100) DEFAULT NULL,
  `schkey` int(1) DEFAULT NULL,
  `ind1` varchar(50) DEFAULT NULL,
  `inddesg1` varchar(30) DEFAULT NULL,
  `indnature1` varchar(30) DEFAULT NULL,
  `inddoj1` date DEFAULT NULL,
  `inddor1` date DEFAULT NULL,
  `indreason1` varchar(100) DEFAULT NULL,
  `indcir1` varchar(100) DEFAULT NULL,
  `indkey` int(1) DEFAULT NULL,
  `ot1` varchar(50) DEFAULT NULL,
  `otdesg1` varchar(30) DEFAULT NULL,
  `otnature1` varchar(30) DEFAULT NULL,
  `otdoj1` date DEFAULT NULL,
  `otdor1` date DEFAULT NULL,
  `otreason1` varchar(100) DEFAULT NULL,
  `otcir1` varchar(100) DEFAULT NULL,
  `otkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bme_fac_exp`
--

INSERT INTO `bme_fac_exp` (`sid`, `clg1`, `clgdesg1`, `clgdoj1`, `clgdor1`, `clgreason1`, `clg2`, `clgdesg2`, `clgdoj2`, `clgdor2`, `clgreason2`, `clg3`, `clgdesg3`, `clgdoj3`, `clgdor3`, `clgreason3`, `clg4`, `clgdesg4`, `clgdoj4`, `clgdor4`, `clgreason4`, `clg5`, `clgdesg5`, `clgdoj5`, `clgdor5`, `clgreason5`, `clg6`, `clgdesg6`, `clgdoj6`, `clgdor6`, `clgreason6`, `clgcir6`, `clgcir5`, `clgcir4`, `clgcir3`, `clgcir2`, `clgcir1`, `clgkey`, `pol1`, `poldesg1`, `poldoj1`, `poldor1`, `polreason1`, `polcir1`, `polkey`, `sch1`, `schdesg1`, `schdoj1`, `schdor1`, `schreason1`, `schcir1`, `schkey`, `ind1`, `inddesg1`, `indnature1`, `inddoj1`, `inddor1`, `indreason1`, `indcir1`, `indkey`, `ot1`, `otdesg1`, `otnature1`, `otdoj1`, `otdor1`, `otreason1`, `otcir1`, `otkey`) VALUES
('S07BME001', 'HINDUSTAN COLLEGE OF ENGG CHENNAI', 'LECTURER', '2001-07-26', '2001-12-08', 'PERSONAL', 'JAYAMATHA ENGINEERING COLLEGE', 'LECTURER', '2002-01-27', '2004-09-22', 'PERSONAL', 'Er.PERUMAL MANIMEKALAI COLLEGE OF ENGINEERING', 'LECTURER', '2004-09-23', '2007-02-02', 'PERSONAL', 'ADHIYAMAAN COLLEGE OF ENGG HOSUR', 'LECTURER', '2007-02-01', '2008-10-31', 'PERSONAL', 'ADHIYAMAAN COLLEGE OF ENGG HOSURS', 'ASSISTANT  PROFESSOR', '2009-06-22', '2011-06-30', 'PERSONAL', 'ADHIYAMAAN COLLEGE OF ENGG HOSUR', 'ASSOCIATE PROFESSOR', '2011-07-01', '2017-06-21', 'PERSONAL', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '11601-hind-exp.pdf', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bme_fac_funpat`
--

CREATE TABLE `bme_fac_funpat` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `titleofpro1` varchar(50) DEFAULT NULL,
  `duration1` varchar(30) DEFAULT NULL,
  `amountsan1` varchar(20) DEFAULT NULL,
  `agency1` varchar(20) DEFAULT NULL,
  `startdate1` date DEFAULT NULL,
  `copiname1` varchar(20) DEFAULT NULL,
  `year1` varchar(7) DEFAULT NULL,
  `order1` varchar(200) NOT NULL,
  `uc1` varchar(200) NOT NULL,
  `funkey` int(1) DEFAULT NULL,
  `nameofpat1` varchar(50) DEFAULT NULL,
  `title1` varchar(30) DEFAULT NULL,
  `fileno1` varchar(20) DEFAULT NULL,
  `pat_cer` varchar(200) NOT NULL,
  `patkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bme_fac_glc`
--

CREATE TABLE `bme_fac_glc` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `gltitle1` varchar(50) DEFAULT NULL,
  `gldays1` int(3) DEFAULT NULL,
  `glfrom1` date NOT NULL,
  `glto1` date NOT NULL,
  `gldate1` date NOT NULL,
  `gltopic1` varchar(50) DEFAULT NULL,
  `glorg1` varchar(50) DEFAULT NULL,
  `glplace1` varchar(50) DEFAULT NULL,
  `glpic1` varchar(100) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL,
  `conname1` varchar(30) DEFAULT NULL,
  `contitle1` varchar(50) DEFAULT NULL,
  `conorg1` varchar(50) DEFAULT NULL,
  `condays1` int(3) DEFAULT NULL,
  `confrom1` date NOT NULL,
  `conto1` date NOT NULL,
  `condate1` date NOT NULL,
  `conlevel1` varchar(20) DEFAULT NULL,
  `conpdf1` varchar(100) DEFAULT NULL,
  `concer1` varchar(100) DEFAULT NULL,
  `conkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bme_fac_member`
--

CREATE TABLE `bme_fac_member` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `memberid1` varchar(30) DEFAULT NULL,
  `validity1` varchar(20) DEFAULT NULL,
  `pic1` varchar(100) DEFAULT NULL,
  `memkey` int(1) DEFAULT NULL,
  `res1` varchar(50) DEFAULT NULL,
  `level1` varchar(20) DEFAULT NULL,
  `reskey` int(1) DEFAULT NULL,
  `aname1` varchar(50) DEFAULT NULL,
  `aissue1` varchar(10) DEFAULT NULL,
  `amy1` varchar(7) DEFAULT NULL,
  `acer1` varchar(100) DEFAULT NULL,
  `awakey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bme_fac_ot_qual`
--

CREATE TABLE `bme_fac_ot_qual` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) NOT NULL,
  `name_qual` varchar(50) NOT NULL,
  `year_com` int(10) NOT NULL,
  `cer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bme_fac_resg`
--

CREATE TABLE `bme_fac_resg` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `supid` varchar(20) DEFAULT NULL,
  `numsch` int(2) NOT NULL,
  `reg` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` varchar(10) NOT NULL,
  `cyear` varchar(20) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `tit` varchar(100) NOT NULL,
  `j_sup` varchar(50) DEFAULT NULL
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
-- Table structure for table `che_fac`
--

CREATE TABLE `che_fac` (
  `sid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `age` int(4) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob1` bigint(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `mstatus` varchar(5) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `relegion` varchar(30) NOT NULL,
  `comunity` varchar(10) NOT NULL,
  `place` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `aadharno` bigint(12) NOT NULL,
  `panno` varchar(10) NOT NULL,
  `passport` varchar(20) DEFAULT NULL,
  `blood` varchar(5) NOT NULL,
  `doj` date NOT NULL,
  `designation` varchar(50) NOT NULL,
  `mob2` bigint(10) DEFAULT NULL,
  `dept` varchar(50) NOT NULL,
  `uploadpic` varchar(100) NOT NULL,
  `aadharpic` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `dor` date DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `app_order` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `che_fac`
--

INSERT INTO `che_fac` (`sid`, `name`, `dob`, `age`, `gender`, `email`, `mob1`, `fname`, `mname`, `mstatus`, `sname`, `relegion`, `comunity`, `place`, `city`, `district`, `state`, `country`, `pincode`, `address`, `paddress`, `aadharno`, `panno`, `passport`, `blood`, `doj`, `designation`, `mob2`, `dept`, `uploadpic`, `aadharpic`, `password`, `status`, `dor`, `reason`, `app_order`) VALUES
('S08CHE003', 'DR. S. ANTHUVAN BABU', '1983-01-20', 36, 'male', 'anthuvanb@gmail.com', 9003667688, 'STANTLEY M', 'FATHIMA', 'y', '', 'CHIRISTIAN - RC', 'BC - KALLA', 'NALLAVANNIYAN KUDIKADU', 'THANJAVUR', 'THANJAVUR', 'Tamil Nadu', 'India', '613502', '	2/322, SOUTH STREET,\r\nNALLAVANNIYAN KUDIKADU & POST,\r\nPOONDI (VIA),\r\nPAPANASAM (TK),\r\nTHANJAVUR - 6', '	2/322, SOUTH STREET,\r\nNALLAVANNIYAN KUDIKADU & POST,\r\nPOONDI (VIA),\r\nPAPANASAM (TK),\r\nTHANJAVUR - 6', 426518762517, 'ANGPA6618K', '', 'O+ve', '2008-08-18', 'AP', 7010260789, 'CHE', '98161-photo.jpg', '91097-aadhar.pdf', '2517', NULL, NULL, NULL, NULL),
('S10CHE001', 'DR. K. SIVAKUMAR', '1982-10-17', 37, 'male', 'siva1782@gmai.com', 9791916258, 'KULANTHAIVEL P', 'VENNILA P', 'y', '', 'HINDU', 'VANNIYAR', 'OMALUR', 'SALEM', 'SALEM', 'Tamil Nadu', 'India', '636304', 'HOD CHEMISTRY, \r\nADHIYAMAAN COLLEGE OF ENGINEERING, \r\nHOSUR  ', 'MALLAGOUNDANOOR,\r\nCHELLAPILLAIKUTTAI (PO)\r\nOMALUR (TK)\r\nSALEM (DT)   ', 5023, 'DDXPS0384E', '-', 'AB+', '2010-07-07', 'ASSOCIATE PROFESSOR', 0, 'CHE', '44935-dr.sivakumar.png', '61620-eaadhaar_502386258038_13112017113753_807303.pdf', '8038', NULL, NULL, NULL, NULL),
('S97CHE004', 'INIGO BABU I', '1970-05-31', 49, 'male', 'inigobabu@yahoo.co.in', 9894801849, 'IGNASI SAMY', 'SEENIMMAL', 'y', '', 'RC ', 'BC', 'HOSUR', 'HOSUR', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635109', '5/704, 165A 36TH STREET\r\nKCC NAGAR\r\nHOSUR   ', '5/704, 165A 36TH STREET\r\nKCC NAGAR\r\nHOSUR   ', 388954341484, 'AALPI1462R', '', 'O +ve', '1997-06-16', 'ASSOCIATE PROFESSOR', 0, 'CHE', '1044-i.inigobabu.jpg', '76219-inigo-babu.pdf', '1484', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `che_fac_attorg`
--

CREATE TABLE `che_fac_attorg` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `attcategory1` varchar(20) DEFAULT NULL,
  `atttitle1` varchar(50) DEFAULT NULL,
  `attdays1` int(3) DEFAULT NULL,
  `attfrom1` date NOT NULL,
  `attto1` date NOT NULL,
  `attdate1` date NOT NULL,
  `attorg1` varchar(50) DEFAULT NULL,
  `attplace1` varchar(50) DEFAULT NULL,
  `attlevel1` varchar(20) DEFAULT NULL,
  `attcer1` varchar(100) DEFAULT NULL,
  `attkey` int(1) DEFAULT NULL,
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
-- Table structure for table `che_fac_bkjrn`
--

CREATE TABLE `che_fac_bkjrn` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `bk1` varchar(20) DEFAULT NULL,
  `bkcha1` varchar(50) DEFAULT NULL,
  `bkissn1` varchar(20) DEFAULT NULL,
  `bkmy1` varchar(7) DEFAULT NULL,
  `bkpub1` varchar(50) DEFAULT NULL,
  `bktype1` varchar(50) DEFAULT NULL,
  `bkkey` int(1) DEFAULT NULL,
  `jrntitle1` varchar(100) DEFAULT NULL,
  `jrnname1` varchar(50) DEFAULT NULL,
  `jrnvol1` varchar(20) DEFAULT NULL,
  `jrnissue1` varchar(20) DEFAULT NULL,
  `jrnissn1` varchar(20) DEFAULT NULL,
  `jrncategory1` varchar(20) DEFAULT NULL,
  `jrnlink1` varchar(100) DEFAULT NULL,
  `jrncit1` varchar(30) DEFAULT NULL,
  `jrnpdf1` varchar(100) DEFAULT NULL,
  `jrnimpact1` int(10) DEFAULT NULL,
  `jrnkey` int(1) DEFAULT NULL,
  `gl` varchar(50) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `che_fac_edu`
--

CREATE TABLE `che_fac_edu` (
  `sid` varchar(30) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `sboard` varchar(10) DEFAULT NULL,
  `syear` int(4) DEFAULT NULL,
  `spercentage` int(4) DEFAULT NULL,
  `scertificate` varchar(100) DEFAULT NULL,
  `skey` int(1) DEFAULT NULL,
  `s2name` varchar(50) DEFAULT NULL,
  `s2board` varchar(10) DEFAULT NULL,
  `s2branch` varchar(50) DEFAULT NULL,
  `s2year` int(4) DEFAULT NULL,
  `s2percentage` int(4) DEFAULT NULL,
  `s2certificate` varchar(100) DEFAULT NULL,
  `s2key` int(1) DEFAULT NULL,
  `dname` varchar(50) DEFAULT NULL,
  `dboard` varchar(10) DEFAULT NULL,
  `ddegree` varchar(50) DEFAULT NULL,
  `dmode` varchar(10) DEFAULT NULL,
  `dyear` int(4) DEFAULT NULL,
  `dpercentage` int(4) DEFAULT NULL,
  `dcertificate` varchar(100) DEFAULT NULL,
  `dkey` int(1) DEFAULT NULL,
  `d1name` varchar(50) DEFAULT NULL,
  `d1board` varchar(10) DEFAULT NULL,
  `d1degree` varchar(50) DEFAULT NULL,
  `d1mode` varchar(10) DEFAULT NULL,
  `d1year` int(4) DEFAULT NULL,
  `d1percentage` int(4) DEFAULT NULL,
  `d1certificate` varchar(100) DEFAULT NULL,
  `d1key` int(1) DEFAULT NULL,
  `d2name` varchar(50) DEFAULT NULL,
  `d2board` varchar(10) DEFAULT NULL,
  `d2degree` varchar(50) DEFAULT NULL,
  `d2mode` varchar(10) DEFAULT NULL,
  `d2year` int(4) DEFAULT NULL,
  `d2percentage` int(4) DEFAULT NULL,
  `d2certificate` varchar(100) DEFAULT NULL,
  `d2key` int(1) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `uuniversity` varchar(50) DEFAULT NULL,
  `udegree` varchar(50) DEFAULT NULL,
  `ubranch` varchar(50) DEFAULT NULL,
  `umode` varchar(10) DEFAULT NULL,
  `uyear` int(4) DEFAULT NULL,
  `upercentage` int(4) DEFAULT NULL,
  `ucertificate` varchar(100) DEFAULT NULL,
  `ukey` int(1) DEFAULT NULL,
  `u1name` varchar(50) DEFAULT NULL,
  `u1university` varchar(50) DEFAULT NULL,
  `u1degree` varchar(50) DEFAULT NULL,
  `u1branch` varchar(50) DEFAULT NULL,
  `u1mode` varchar(10) DEFAULT NULL,
  `u1year` int(4) DEFAULT NULL,
  `u1percentage` int(4) DEFAULT NULL,
  `u1certificate` varchar(100) DEFAULT NULL,
  `u1key` int(1) DEFAULT NULL,
  `u2name` varchar(50) DEFAULT NULL,
  `u2university` varchar(50) DEFAULT NULL,
  `u2degree` varchar(50) DEFAULT NULL,
  `u2branch` varchar(50) DEFAULT NULL,
  `u2mode` varchar(10) DEFAULT NULL,
  `u2year` int(4) DEFAULT NULL,
  `u2percentage` int(4) DEFAULT NULL,
  `u2certificate` varchar(100) DEFAULT NULL,
  `u2key` int(1) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `puniversity` varchar(50) DEFAULT NULL,
  `pdegree` varchar(50) DEFAULT NULL,
  `pbranch` varchar(50) DEFAULT NULL,
  `pmode` varchar(10) DEFAULT NULL,
  `pyear` int(4) DEFAULT NULL,
  `ppercentage` int(4) DEFAULT NULL,
  `pcertificate` varchar(100) DEFAULT NULL,
  `pkey` int(1) DEFAULT NULL,
  `p1name` varchar(50) DEFAULT NULL,
  `p1university` varchar(50) DEFAULT NULL,
  `p1degree` varchar(50) DEFAULT NULL,
  `p1branch` varchar(50) DEFAULT NULL,
  `p1mode` varchar(10) DEFAULT NULL,
  `p1year` int(4) DEFAULT NULL,
  `p1percentage` int(4) DEFAULT NULL,
  `p1certificate` varchar(100) DEFAULT NULL,
  `p1key` int(1) DEFAULT NULL,
  `p2name` varchar(50) DEFAULT NULL,
  `p2university` varchar(50) DEFAULT NULL,
  `p2degree` varchar(50) DEFAULT NULL,
  `p2branch` varchar(50) DEFAULT NULL,
  `p2mode` varchar(10) DEFAULT NULL,
  `p2year` int(4) DEFAULT NULL,
  `p2percentage` int(4) DEFAULT NULL,
  `p2certificate` varchar(100) DEFAULT NULL,
  `p2key` int(1) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `muniversity` varchar(50) DEFAULT NULL,
  `mspec` varchar(50) DEFAULT NULL,
  `mbranch` varchar(50) DEFAULT NULL,
  `mmode` varchar(10) DEFAULT NULL,
  `myear` int(4) DEFAULT NULL,
  `mpercentage` int(4) DEFAULT NULL,
  `mthesis` varchar(50) DEFAULT NULL,
  `mguide` varchar(30) DEFAULT NULL,
  `mcertificate` varchar(100) DEFAULT NULL,
  `mkey` int(1) DEFAULT NULL,
  `phname` varchar(50) DEFAULT NULL,
  `phuniversity` varchar(50) DEFAULT NULL,
  `phspec` varchar(50) DEFAULT NULL,
  `phbranch` varchar(50) DEFAULT NULL,
  `phmode` varchar(10) DEFAULT NULL,
  `phyreg` varchar(7) DEFAULT NULL,
  `phyear` varchar(7) DEFAULT NULL,
  `phthesis` varchar(100) DEFAULT NULL,
  `phguide` varchar(30) DEFAULT NULL,
  `phcertificate` varchar(100) DEFAULT NULL,
  `phkey` int(1) DEFAULT NULL,
  `ph1name` varchar(50) DEFAULT NULL,
  `ph1university` varchar(50) DEFAULT NULL,
  `ph1spec` varchar(50) DEFAULT NULL,
  `ph1branch` varchar(50) DEFAULT NULL,
  `ph1mode` varchar(10) DEFAULT NULL,
  `ph1yreg` varchar(7) DEFAULT NULL,
  `ph1year` varchar(7) DEFAULT NULL,
  `ph1thesis` varchar(100) DEFAULT NULL,
  `ph1guide` varchar(30) DEFAULT NULL,
  `ph1certificate` varchar(100) DEFAULT NULL,
  `ph1key` int(1) DEFAULT NULL,
  `ph2name` varchar(50) DEFAULT NULL,
  `ph2university` varchar(50) DEFAULT NULL,
  `ph2spec` varchar(50) DEFAULT NULL,
  `ph2branch` varchar(50) DEFAULT NULL,
  `ph2mode` varchar(10) DEFAULT NULL,
  `ph2yreg` varchar(7) DEFAULT NULL,
  `ph2year` varchar(7) DEFAULT NULL,
  `ph2thesis` varchar(100) DEFAULT NULL,
  `ph2guide` varchar(30) DEFAULT NULL,
  `ph2certificate` varchar(100) DEFAULT NULL,
  `ph2key` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `che_fac_exp`
--

CREATE TABLE `che_fac_exp` (
  `sid` varchar(30) NOT NULL,
  `clg1` varchar(50) DEFAULT NULL,
  `clgdesg1` varchar(30) DEFAULT NULL,
  `clgdoj1` date DEFAULT NULL,
  `clgdor1` date DEFAULT NULL,
  `clgreason1` varchar(100) DEFAULT NULL,
  `clgcir1` varchar(100) DEFAULT NULL,
  `clgkey` int(1) DEFAULT NULL,
  `pol1` varchar(50) DEFAULT NULL,
  `poldesg1` varchar(30) DEFAULT NULL,
  `poldoj1` date DEFAULT NULL,
  `poldor1` date DEFAULT NULL,
  `polreason1` varchar(100) DEFAULT NULL,
  `polcir1` varchar(100) DEFAULT NULL,
  `polkey` int(1) DEFAULT NULL,
  `sch1` varchar(50) DEFAULT NULL,
  `schdesg1` varchar(30) DEFAULT NULL,
  `schdoj1` date DEFAULT NULL,
  `schdor1` date DEFAULT NULL,
  `schreason1` varchar(100) DEFAULT NULL,
  `schcir1` varchar(100) DEFAULT NULL,
  `schkey` int(1) DEFAULT NULL,
  `ind1` varchar(50) DEFAULT NULL,
  `inddesg1` varchar(30) DEFAULT NULL,
  `indnature1` varchar(30) DEFAULT NULL,
  `inddoj1` date DEFAULT NULL,
  `inddor1` date DEFAULT NULL,
  `indreason1` varchar(100) DEFAULT NULL,
  `indcir1` varchar(100) DEFAULT NULL,
  `indkey` int(1) DEFAULT NULL,
  `ot1` varchar(50) DEFAULT NULL,
  `otdesg1` varchar(30) DEFAULT NULL,
  `otnature1` varchar(30) DEFAULT NULL,
  `otdoj1` date DEFAULT NULL,
  `otdor1` date DEFAULT NULL,
  `otreason1` varchar(100) DEFAULT NULL,
  `otcir1` varchar(100) DEFAULT NULL,
  `otkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `che_fac_funpat`
--

CREATE TABLE `che_fac_funpat` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `titleofpro1` varchar(50) DEFAULT NULL,
  `duration1` varchar(30) DEFAULT NULL,
  `amountsan1` varchar(20) DEFAULT NULL,
  `agency1` varchar(20) DEFAULT NULL,
  `startdate1` date DEFAULT NULL,
  `copiname1` varchar(20) DEFAULT NULL,
  `year1` varchar(7) DEFAULT NULL,
  `order1` varchar(200) DEFAULT NULL,
  `uc1` varchar(200) DEFAULT NULL,
  `funkey` int(1) DEFAULT NULL,
  `nameofpat1` varchar(50) DEFAULT NULL,
  `title1` varchar(30) DEFAULT NULL,
  `fileno1` varchar(20) DEFAULT NULL,
  `pat_cer` varchar(200) NOT NULL,
  `patkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `che_fac_glc`
--

CREATE TABLE `che_fac_glc` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `gltitle1` varchar(50) DEFAULT NULL,
  `gldays1` int(3) DEFAULT NULL,
  `glfrom1` date NOT NULL,
  `glto1` date NOT NULL,
  `gldate1` date NOT NULL,
  `gltopic1` varchar(50) DEFAULT NULL,
  `glorg1` varchar(50) DEFAULT NULL,
  `glplace1` varchar(50) DEFAULT NULL,
  `glpic1` varchar(100) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL,
  `conname1` varchar(30) DEFAULT NULL,
  `contitle1` varchar(50) DEFAULT NULL,
  `conorg1` varchar(50) DEFAULT NULL,
  `condays1` int(3) DEFAULT NULL,
  `confrom1` date NOT NULL,
  `conto1` date NOT NULL,
  `condate1` date NOT NULL,
  `conlevel1` varchar(20) DEFAULT NULL,
  `conpdf1` varchar(100) DEFAULT NULL,
  `concer1` varchar(100) DEFAULT NULL,
  `conkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `che_fac_member`
--

CREATE TABLE `che_fac_member` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `memberid1` varchar(30) DEFAULT NULL,
  `validity1` varchar(20) DEFAULT NULL,
  `pic1` varchar(100) DEFAULT NULL,
  `memkey` int(1) DEFAULT NULL,
  `res1` varchar(50) DEFAULT NULL,
  `level1` varchar(20) DEFAULT NULL,
  `reskey` int(1) DEFAULT NULL,
  `aname1` varchar(50) DEFAULT NULL,
  `aissue1` varchar(10) DEFAULT NULL,
  `amy1` varchar(7) DEFAULT NULL,
  `acer1` varchar(100) DEFAULT NULL,
  `awakey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `che_fac_ot_qual`
--

CREATE TABLE `che_fac_ot_qual` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) NOT NULL,
  `name_qual` varchar(50) NOT NULL,
  `year_com` int(10) NOT NULL,
  `cer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `che_fac_resg`
--

CREATE TABLE `che_fac_resg` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `supid` varchar(20) DEFAULT NULL,
  `numsch` int(2) NOT NULL,
  `reg` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` varchar(10) NOT NULL,
  `cyear` varchar(20) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `tit` varchar(100) NOT NULL,
  `j_sup` varchar(50) DEFAULT NULL
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
-- Table structure for table `chm_fac`
--

CREATE TABLE `chm_fac` (
  `sid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `age` int(4) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob1` bigint(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `mstatus` varchar(5) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `relegion` varchar(30) NOT NULL,
  `comunity` varchar(10) NOT NULL,
  `place` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `aadharno` bigint(12) NOT NULL,
  `panno` varchar(10) NOT NULL,
  `passport` varchar(20) DEFAULT NULL,
  `blood` varchar(5) NOT NULL,
  `doj` date NOT NULL,
  `designation` varchar(50) NOT NULL,
  `mob2` bigint(10) DEFAULT NULL,
  `dept` varchar(50) NOT NULL,
  `uploadpic` varchar(100) NOT NULL,
  `aadharpic` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `dor` date DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `app_order` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chm_fac`
--

INSERT INTO `chm_fac` (`sid`, `name`, `dob`, `age`, `gender`, `email`, `mob1`, `fname`, `mname`, `mstatus`, `sname`, `relegion`, `comunity`, `place`, `city`, `district`, `state`, `country`, `pincode`, `address`, `paddress`, `aadharno`, `panno`, `passport`, `blood`, `doj`, `designation`, `mob2`, `dept`, `uploadpic`, `aadharpic`, `password`, `status`, `dor`, `reason`, `app_order`) VALUES
('S13CHM001', 'yuvanashree', '1990-08-29', 29, 'female', 'yuvanashreedeepan@gmail.com', 9976933022, 'Esawaramoorthi', 'Andal', 'y', '', 'Hinduism', 'Gavara Nai', 'avaniyapuram', 'madurai', 'madurai', 'Tamil Nadu', 'India', '625012', 'No5, CMK APPARTMENT,\r\nADHIYAMAAN STREET,NEHRU NAGAR, HOSUR   ', 'CHOKKU PILLAI NAGAR,\r\nSRIRAM NAGAR,\r\nAVANIYAPURAM,\r\nMADURAI ', 873432299995, 'ADRPY0498A', '', 'A-ve', '2013-06-07', 'ASSISTANT PROFESSOR', 0, 'CHM', '81596-mrs.yuvanashree-e.jpg', '21650-eaadhaar_2192502010411120161104125802_14112016131648_864377.pdf', '9995', NULL, NULL, NULL, '60901-yuvanashree-appointment-order.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `chm_fac_attorg`
--

CREATE TABLE `chm_fac_attorg` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `attcategory1` varchar(20) DEFAULT NULL,
  `atttitle1` varchar(50) DEFAULT NULL,
  `attdays1` int(3) DEFAULT NULL,
  `attfrom1` date NOT NULL,
  `attto1` date NOT NULL,
  `attdate1` date NOT NULL,
  `attorg1` varchar(50) DEFAULT NULL,
  `attplace1` varchar(50) DEFAULT NULL,
  `attlevel1` varchar(20) DEFAULT NULL,
  `attcer1` varchar(100) DEFAULT NULL,
  `attkey` int(1) DEFAULT NULL,
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
-- Dumping data for table `chm_fac_attorg`
--

INSERT INTO `chm_fac_attorg` (`id`, `sid`, `ayear`, `attcategory1`, `atttitle1`, `attdays1`, `attfrom1`, `attto1`, `attdate1`, `attorg1`, `attplace1`, `attlevel1`, `attcer1`, `attkey`, `orgcategory1`, `orgtitle1`, `orgfun1`, `orgdays1`, `orgfrom1`, `orgto1`, `orgdate1`, `orgres1`, `orgpar1`, `orglevel1`, `orgcer1`, `orgkey`) VALUES
(1, 'S13CHM001', '2018-2019', 'seminar', 'BIOENERGY, ENVIRONMENT AND SUSTAINABLE TECHNOLOGIE', 1, '0000-00-00', '0000-00-00', '2019-01-28', 'ARUNAI ENGINEERING COLLEGE', 'THIRUVANAMALAI', 'international', '75743-arunai.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chm_fac_bkjrn`
--

CREATE TABLE `chm_fac_bkjrn` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `bk1` varchar(20) DEFAULT NULL,
  `bkcha1` varchar(50) DEFAULT NULL,
  `bkissn1` varchar(20) DEFAULT NULL,
  `bkmy1` varchar(7) DEFAULT NULL,
  `bkpub1` varchar(50) DEFAULT NULL,
  `bktype1` varchar(50) DEFAULT NULL,
  `bkkey` int(1) DEFAULT NULL,
  `jrntitle1` varchar(100) DEFAULT NULL,
  `jrnname1` varchar(50) DEFAULT NULL,
  `jrnvol1` varchar(20) DEFAULT NULL,
  `jrnissue1` varchar(20) DEFAULT NULL,
  `jrnissn1` varchar(20) DEFAULT NULL,
  `jrncategory1` varchar(20) DEFAULT NULL,
  `jrnlink1` varchar(100) DEFAULT NULL,
  `jrncit1` varchar(30) DEFAULT NULL,
  `jrnpdf1` varchar(100) DEFAULT NULL,
  `jrnimpact1` int(10) DEFAULT NULL,
  `jrnkey` int(1) DEFAULT NULL,
  `gl` varchar(50) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chm_fac_bkjrn`
--

INSERT INTO `chm_fac_bkjrn` (`id`, `sid`, `ayear`, `bk1`, `bkcha1`, `bkissn1`, `bkmy1`, `bkpub1`, `bktype1`, `bkkey`, `jrntitle1`, `jrnname1`, `jrnvol1`, `jrnissue1`, `jrnissn1`, `jrncategory1`, `jrnlink1`, `jrncit1`, `jrnpdf1`, `jrnimpact1`, `jrnkey`, `gl`, `glkey`) VALUES
(1, 'S13CHM001', '2014-2015', 'Journal of chemical ', 'National Conference on Green Engineering and Techn', '0974-2115', 'dec 201', 'journal of chemical and pharmaceutical sciences', 'special', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'S13CHM001', '2015-2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Acid dye degradation using electrochemical batch recirculation flow reactor', 'journal of Chemical and Pharmaceutical Sciences', '9', '1', '0974-2115', 'scopus', 'www.jchps.com', '1', '68516-jchps-9(1)-71-selvakumar-308-312.pdf', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chm_fac_edu`
--

CREATE TABLE `chm_fac_edu` (
  `sid` varchar(30) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `sboard` varchar(10) DEFAULT NULL,
  `syear` int(4) DEFAULT NULL,
  `spercentage` int(4) DEFAULT NULL,
  `scertificate` varchar(100) DEFAULT NULL,
  `skey` int(1) DEFAULT NULL,
  `s2name` varchar(50) DEFAULT NULL,
  `s2board` varchar(10) DEFAULT NULL,
  `s2branch` varchar(50) DEFAULT NULL,
  `s2year` int(4) DEFAULT NULL,
  `s2percentage` int(4) DEFAULT NULL,
  `s2certificate` varchar(100) DEFAULT NULL,
  `s2key` int(1) DEFAULT NULL,
  `dname` varchar(50) DEFAULT NULL,
  `dboard` varchar(10) DEFAULT NULL,
  `ddegree` varchar(50) DEFAULT NULL,
  `dmode` varchar(10) DEFAULT NULL,
  `dyear` int(4) DEFAULT NULL,
  `dpercentage` int(4) DEFAULT NULL,
  `dcertificate` varchar(100) DEFAULT NULL,
  `dkey` int(1) DEFAULT NULL,
  `d1name` varchar(50) DEFAULT NULL,
  `d1board` varchar(10) DEFAULT NULL,
  `d1degree` varchar(50) DEFAULT NULL,
  `d1mode` varchar(10) DEFAULT NULL,
  `d1year` int(4) DEFAULT NULL,
  `d1percentage` int(4) DEFAULT NULL,
  `d1certificate` varchar(100) DEFAULT NULL,
  `d1key` int(1) DEFAULT NULL,
  `d2name` varchar(50) DEFAULT NULL,
  `d2board` varchar(10) DEFAULT NULL,
  `d2degree` varchar(50) DEFAULT NULL,
  `d2mode` varchar(10) DEFAULT NULL,
  `d2year` int(4) DEFAULT NULL,
  `d2percentage` int(4) DEFAULT NULL,
  `d2certificate` varchar(100) DEFAULT NULL,
  `d2key` int(1) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `uuniversity` varchar(50) DEFAULT NULL,
  `udegree` varchar(50) DEFAULT NULL,
  `ubranch` varchar(50) DEFAULT NULL,
  `umode` varchar(10) DEFAULT NULL,
  `uyear` int(4) DEFAULT NULL,
  `upercentage` int(4) DEFAULT NULL,
  `ucertificate` varchar(100) DEFAULT NULL,
  `ukey` int(1) DEFAULT NULL,
  `u1name` varchar(50) DEFAULT NULL,
  `u1university` varchar(50) DEFAULT NULL,
  `u1degree` varchar(50) DEFAULT NULL,
  `u1branch` varchar(50) DEFAULT NULL,
  `u1mode` varchar(10) DEFAULT NULL,
  `u1year` int(4) DEFAULT NULL,
  `u1percentage` int(4) DEFAULT NULL,
  `u1certificate` varchar(100) DEFAULT NULL,
  `u1key` int(1) DEFAULT NULL,
  `u2name` varchar(50) DEFAULT NULL,
  `u2university` varchar(50) DEFAULT NULL,
  `u2degree` varchar(50) DEFAULT NULL,
  `u2branch` varchar(50) DEFAULT NULL,
  `u2mode` varchar(10) DEFAULT NULL,
  `u2year` int(4) DEFAULT NULL,
  `u2percentage` int(4) DEFAULT NULL,
  `u2certificate` varchar(100) DEFAULT NULL,
  `u2key` int(1) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `puniversity` varchar(50) DEFAULT NULL,
  `pdegree` varchar(50) DEFAULT NULL,
  `pbranch` varchar(50) DEFAULT NULL,
  `pmode` varchar(10) DEFAULT NULL,
  `pyear` int(4) DEFAULT NULL,
  `ppercentage` int(4) DEFAULT NULL,
  `pcertificate` varchar(100) DEFAULT NULL,
  `pkey` int(1) DEFAULT NULL,
  `p1name` varchar(50) DEFAULT NULL,
  `p1university` varchar(50) DEFAULT NULL,
  `p1degree` varchar(50) DEFAULT NULL,
  `p1branch` varchar(50) DEFAULT NULL,
  `p1mode` varchar(10) DEFAULT NULL,
  `p1year` int(4) DEFAULT NULL,
  `p1percentage` int(4) DEFAULT NULL,
  `p1certificate` varchar(100) DEFAULT NULL,
  `p1key` int(1) DEFAULT NULL,
  `p2name` varchar(50) DEFAULT NULL,
  `p2university` varchar(50) DEFAULT NULL,
  `p2degree` varchar(50) DEFAULT NULL,
  `p2branch` varchar(50) DEFAULT NULL,
  `p2mode` varchar(10) DEFAULT NULL,
  `p2year` int(4) DEFAULT NULL,
  `p2percentage` int(4) DEFAULT NULL,
  `p2certificate` varchar(100) DEFAULT NULL,
  `p2key` int(1) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `muniversity` varchar(50) DEFAULT NULL,
  `mspec` varchar(50) DEFAULT NULL,
  `mbranch` varchar(50) DEFAULT NULL,
  `mmode` varchar(10) DEFAULT NULL,
  `myear` int(4) DEFAULT NULL,
  `mpercentage` int(4) DEFAULT NULL,
  `mthesis` varchar(50) DEFAULT NULL,
  `mguide` varchar(30) DEFAULT NULL,
  `mcertificate` varchar(100) DEFAULT NULL,
  `mkey` int(1) DEFAULT NULL,
  `phname` varchar(50) DEFAULT NULL,
  `phuniversity` varchar(50) DEFAULT NULL,
  `phspec` varchar(50) DEFAULT NULL,
  `phbranch` varchar(50) DEFAULT NULL,
  `phmode` varchar(10) DEFAULT NULL,
  `phyreg` varchar(7) DEFAULT NULL,
  `phyear` varchar(7) DEFAULT NULL,
  `phthesis` varchar(100) DEFAULT NULL,
  `phguide` varchar(30) DEFAULT NULL,
  `phcertificate` varchar(100) DEFAULT NULL,
  `phkey` int(1) DEFAULT NULL,
  `ph1name` varchar(50) DEFAULT NULL,
  `ph1university` varchar(50) DEFAULT NULL,
  `ph1spec` varchar(50) DEFAULT NULL,
  `ph1branch` varchar(50) DEFAULT NULL,
  `ph1mode` varchar(10) DEFAULT NULL,
  `ph1yreg` varchar(7) DEFAULT NULL,
  `ph1year` varchar(7) DEFAULT NULL,
  `ph1thesis` varchar(100) DEFAULT NULL,
  `ph1guide` varchar(30) DEFAULT NULL,
  `ph1certificate` varchar(100) DEFAULT NULL,
  `ph1key` int(1) DEFAULT NULL,
  `ph2name` varchar(50) DEFAULT NULL,
  `ph2university` varchar(50) DEFAULT NULL,
  `ph2spec` varchar(50) DEFAULT NULL,
  `ph2branch` varchar(50) DEFAULT NULL,
  `ph2mode` varchar(10) DEFAULT NULL,
  `ph2yreg` varchar(7) DEFAULT NULL,
  `ph2year` varchar(7) DEFAULT NULL,
  `ph2thesis` varchar(100) DEFAULT NULL,
  `ph2guide` varchar(30) DEFAULT NULL,
  `ph2certificate` varchar(100) DEFAULT NULL,
  `ph2key` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chm_fac_edu`
--

INSERT INTO `chm_fac_edu` (`sid`, `sname`, `sboard`, `syear`, `spercentage`, `scertificate`, `skey`, `s2name`, `s2board`, `s2branch`, `s2year`, `s2percentage`, `s2certificate`, `s2key`, `dname`, `dboard`, `ddegree`, `dmode`, `dyear`, `dpercentage`, `dcertificate`, `dkey`, `d1name`, `d1board`, `d1degree`, `d1mode`, `d1year`, `d1percentage`, `d1certificate`, `d1key`, `d2name`, `d2board`, `d2degree`, `d2mode`, `d2year`, `d2percentage`, `d2certificate`, `d2key`, `uname`, `uuniversity`, `udegree`, `ubranch`, `umode`, `uyear`, `upercentage`, `ucertificate`, `ukey`, `u1name`, `u1university`, `u1degree`, `u1branch`, `u1mode`, `u1year`, `u1percentage`, `u1certificate`, `u1key`, `u2name`, `u2university`, `u2degree`, `u2branch`, `u2mode`, `u2year`, `u2percentage`, `u2certificate`, `u2key`, `pname`, `puniversity`, `pdegree`, `pbranch`, `pmode`, `pyear`, `ppercentage`, `pcertificate`, `pkey`, `p1name`, `p1university`, `p1degree`, `p1branch`, `p1mode`, `p1year`, `p1percentage`, `p1certificate`, `p1key`, `p2name`, `p2university`, `p2degree`, `p2branch`, `p2mode`, `p2year`, `p2percentage`, `p2certificate`, `p2key`, `mname`, `muniversity`, `mspec`, `mbranch`, `mmode`, `myear`, `mpercentage`, `mthesis`, `mguide`, `mcertificate`, `mkey`, `phname`, `phuniversity`, `phspec`, `phbranch`, `phmode`, `phyreg`, `phyear`, `phthesis`, `phguide`, `phcertificate`, `phkey`, `ph1name`, `ph1university`, `ph1spec`, `ph1branch`, `ph1mode`, `ph1yreg`, `ph1year`, `ph1thesis`, `ph1guide`, `ph1certificate`, `ph1key`, `ph2name`, `ph2university`, `ph2spec`, `ph2branch`, `ph2mode`, `ph2yreg`, `ph2year`, `ph2thesis`, `ph2guide`, `ph2certificate`, `ph2key`) VALUES
('S13CHM001', 'PA Vidhyabhavan Hr Sec School', 'state', 2005, 96, '7365-ssc-compressed.pdf', 1, 'PA VIDYA BAVAN HR SEC SCHOOL', 'state', 'BIOLOGY MATHEMATICS', 2007, 83, '49956-12(1)(1)_compressed.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ANNA UINVERSITY', 'ANNA UNIVERSITY', 'B TECH', 'PETROCHEMICAL ENGINEERING', 'regular', 2011, 83, '74968-ug.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ALLAGAPPA COLLEGE OF ENGINEERING', 'ANNA UNIVERSITY', 'M TECH', 'PETROLEUM REFINING AND PETROCHEMICALS', 'regular', 2013, 9, '82089-pg.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chm_fac_exp`
--

CREATE TABLE `chm_fac_exp` (
  `sid` varchar(30) NOT NULL,
  `clg1` varchar(50) DEFAULT NULL,
  `clgdesg1` varchar(30) DEFAULT NULL,
  `clgdoj1` date DEFAULT NULL,
  `clgdor1` date DEFAULT NULL,
  `clgreason1` varchar(100) DEFAULT NULL,
  `clgcir1` varchar(100) DEFAULT NULL,
  `clgkey` int(1) DEFAULT NULL,
  `pol1` varchar(50) DEFAULT NULL,
  `poldesg1` varchar(30) DEFAULT NULL,
  `poldoj1` date DEFAULT NULL,
  `poldor1` date DEFAULT NULL,
  `polreason1` varchar(100) DEFAULT NULL,
  `polcir1` varchar(100) DEFAULT NULL,
  `polkey` int(1) DEFAULT NULL,
  `sch1` varchar(50) DEFAULT NULL,
  `schdesg1` varchar(30) DEFAULT NULL,
  `schdoj1` date DEFAULT NULL,
  `schdor1` date DEFAULT NULL,
  `schreason1` varchar(100) DEFAULT NULL,
  `schcir1` varchar(100) DEFAULT NULL,
  `schkey` int(1) DEFAULT NULL,
  `ind1` varchar(50) DEFAULT NULL,
  `inddesg1` varchar(30) DEFAULT NULL,
  `indnature1` varchar(30) DEFAULT NULL,
  `inddoj1` date DEFAULT NULL,
  `inddor1` date DEFAULT NULL,
  `indreason1` varchar(100) DEFAULT NULL,
  `indcir1` varchar(100) DEFAULT NULL,
  `indkey` int(1) DEFAULT NULL,
  `ot1` varchar(50) DEFAULT NULL,
  `otdesg1` varchar(30) DEFAULT NULL,
  `otnature1` varchar(30) DEFAULT NULL,
  `otdoj1` date DEFAULT NULL,
  `otdor1` date DEFAULT NULL,
  `otreason1` varchar(100) DEFAULT NULL,
  `otcir1` varchar(100) DEFAULT NULL,
  `otkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chm_fac_funpat`
--

CREATE TABLE `chm_fac_funpat` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `titleofpro1` varchar(50) DEFAULT NULL,
  `duration1` varchar(30) DEFAULT NULL,
  `amountsan1` varchar(20) DEFAULT NULL,
  `agency1` varchar(20) DEFAULT NULL,
  `startdate1` date DEFAULT NULL,
  `copiname1` varchar(20) DEFAULT NULL,
  `year1` varchar(7) DEFAULT NULL,
  `order1` varchar(200) DEFAULT NULL,
  `uc1` varchar(200) DEFAULT NULL,
  `funkey` int(1) DEFAULT NULL,
  `nameofpat1` varchar(50) DEFAULT NULL,
  `title1` varchar(30) DEFAULT NULL,
  `fileno1` varchar(20) DEFAULT NULL,
  `pat_cer1` varchar(200) DEFAULT NULL,
  `patkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chm_fac_glc`
--

CREATE TABLE `chm_fac_glc` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `gltitle1` varchar(50) DEFAULT NULL,
  `gldays1` int(3) DEFAULT NULL,
  `glfrom1` date NOT NULL,
  `glto1` date NOT NULL,
  `gldate1` date NOT NULL,
  `gltopic1` varchar(50) DEFAULT NULL,
  `glorg1` varchar(50) DEFAULT NULL,
  `glplace1` varchar(50) DEFAULT NULL,
  `glpic1` varchar(100) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL,
  `conname1` varchar(30) DEFAULT NULL,
  `contitle1` varchar(50) DEFAULT NULL,
  `conorg1` varchar(50) DEFAULT NULL,
  `condays1` int(3) DEFAULT NULL,
  `confrom1` date NOT NULL,
  `conto1` date NOT NULL,
  `condate1` date NOT NULL,
  `conlevel1` varchar(20) DEFAULT NULL,
  `conpdf1` varchar(100) DEFAULT NULL,
  `concer1` varchar(100) DEFAULT NULL,
  `conkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chm_fac_member`
--

CREATE TABLE `chm_fac_member` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `memberid1` varchar(30) DEFAULT NULL,
  `validity1` varchar(20) DEFAULT NULL,
  `pic1` varchar(100) DEFAULT NULL,
  `memkey` int(1) DEFAULT NULL,
  `res1` varchar(50) DEFAULT NULL,
  `level1` varchar(20) DEFAULT NULL,
  `reskey` int(1) DEFAULT NULL,
  `aname1` varchar(50) DEFAULT NULL,
  `aissue1` varchar(10) DEFAULT NULL,
  `amy1` varchar(7) DEFAULT NULL,
  `acer1` varchar(100) DEFAULT NULL,
  `awakey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chm_fac_member`
--

INSERT INTO `chm_fac_member` (`id`, `sid`, `ayear`, `name1`, `memberid1`, `validity1`, `pic1`, `memkey`, `res1`, `level1`, `reskey`, `aname1`, `aissue1`, `amy1`, `acer1`, `awakey`) VALUES
(1, 'S13CHM001', '2018-2019', NULL, NULL, NULL, NULL, NULL, 'DISCIPLINE COMMITEE', 'institute', 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chm_fac_ot_qual`
--

CREATE TABLE `chm_fac_ot_qual` (
  `id` int(5) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `name_qual` varchar(100) DEFAULT NULL,
  `year_com` int(10) DEFAULT NULL,
  `cer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chm_fac_resg`
--

CREATE TABLE `chm_fac_resg` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `supid` varchar(20) DEFAULT NULL,
  `numsch` int(2) NOT NULL,
  `reg` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` varchar(10) NOT NULL,
  `cyear` varchar(20) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `tit` varchar(100) NOT NULL,
  `j_sup` varchar(50) DEFAULT NULL
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
-- Table structure for table `civ_fac`
--

CREATE TABLE `civ_fac` (
  `sid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `age` int(4) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob1` bigint(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `mstatus` varchar(5) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `relegion` varchar(30) NOT NULL,
  `comunity` varchar(10) NOT NULL,
  `place` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `aadharno` bigint(12) NOT NULL,
  `panno` varchar(10) NOT NULL,
  `passport` varchar(20) DEFAULT NULL,
  `blood` varchar(5) NOT NULL,
  `doj` date NOT NULL,
  `designation` varchar(50) NOT NULL,
  `mob2` bigint(10) DEFAULT NULL,
  `dept` varchar(50) NOT NULL,
  `uploadpic` varchar(100) NOT NULL,
  `aadharpic` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `dor` date DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `app_order` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `civ_fac`
--

INSERT INTO `civ_fac` (`sid`, `name`, `dob`, `age`, `gender`, `email`, `mob1`, `fname`, `mname`, `mstatus`, `sname`, `relegion`, `comunity`, `place`, `city`, `district`, `state`, `country`, `pincode`, `address`, `paddress`, `aadharno`, `panno`, `passport`, `blood`, `doj`, `designation`, `mob2`, `dept`, `uploadpic`, `aadharpic`, `password`, `status`, `dor`, `reason`, `app_order`) VALUES
('S12CIV003', 'S.ROOPANKUMAR', '1980-09-12', 39, 'male', 's.roopankumar@gmail.com', 9159848444, 'M.SANKARAN', 'S.RAJESHWARI', 'y', '', 'HINDU', 'BC', 'KRISHNAGIRI', 'DHARMAPURI', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635111', '35E, VASANTHA NAGAR,KARIMANGALAM(PO), DHARMAPURI(DT) 635111   ', '35E, VASANTHA NAGAR,KARIMANGALAM(PO), DHARMAPURI(DT) 635111   ', 271648492285, 'AMSPR8718G', 'NIL', 'B+', '2012-07-18', 'ASSISTANT PROFESSOR', 8122592195, 'CIV', '50619-22.mr.-s.-roopan-kumar.png', '83140-roopan.pdf', '2285', NULL, NULL, NULL, NULL),
('S14CIV001', 'SETHURAMAN                    ', '1984-03-17', 35, 'male', 'shanram83@gmail.com', 9894523983, 'SHANMUGAM', 'MALARKODI', 'y', '', 'HINDU', 'MBC', 'KRISHNAGIRI', 'KRISHNAGIRI', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635001', '	2/262 G KAMARAJ NAGAR PEDDALAPALLI \r\n        KRISHNAGIRI 635001  ', '	2/262 G KAMARAJ NAGAR PEDDALAPALLI \r\n        KRISHNAGIRI 635001  ', 255925915212, 'DTSPS4218G', '', 'O+ve', '2014-06-06', 'ASSISTANT PROFESSOR', 0, 'CIV', '88230-sethuimage.jpg', '21051-adhar-card.pdf', '5212', NULL, NULL, NULL, NULL),
('S16CIV004', 'KATHIRVEL M', '1992-11-14', 27, 'male', 'kathirvelnaren@gmail.com', 9788316897, 'MUNUSAMY M', 'KALAIVANI M', 'y', '', 'HINDU', 'BC', 'KRISHNAGIRI', 'KRISHNAGIRI', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635122', '3/87, GANGALERI (PO & VILL),\r\nKRISHNAGIRI (DT & TK)-635122   ', '3/87, GANGALERI (PO & VILL),\r\nKRISHNAGIRI (DT & TK)-635122   ', 779223796199, 'DBEPK2878E', '', 'O-VE', '2016-06-13', 'ASSISTANT PROFESSOR', 0, 'CIV', '65650-kathir-photo.jpg', '35115-kathir-aadhar.pdf', '6199', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `civ_fac_attorg`
--

CREATE TABLE `civ_fac_attorg` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `attcategory1` varchar(20) DEFAULT NULL,
  `atttitle1` varchar(50) DEFAULT NULL,
  `attdays1` int(3) DEFAULT NULL,
  `attfrom1` date NOT NULL,
  `attto1` date NOT NULL,
  `attdate1` date NOT NULL,
  `attorg1` varchar(50) DEFAULT NULL,
  `attplace1` varchar(50) DEFAULT NULL,
  `attlevel1` varchar(20) DEFAULT NULL,
  `attcer1` varchar(100) DEFAULT NULL,
  `attkey` int(1) DEFAULT NULL,
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
-- Table structure for table `civ_fac_bkjrn`
--

CREATE TABLE `civ_fac_bkjrn` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `bk1` varchar(20) DEFAULT NULL,
  `bkcha1` varchar(50) DEFAULT NULL,
  `bkissn1` varchar(20) DEFAULT NULL,
  `bkmy1` varchar(7) DEFAULT NULL,
  `bkpub1` varchar(50) DEFAULT NULL,
  `bktype1` varchar(50) DEFAULT NULL,
  `bkkey` int(1) DEFAULT NULL,
  `jrntitle1` varchar(100) DEFAULT NULL,
  `jrnname1` varchar(50) DEFAULT NULL,
  `jrnvol1` varchar(20) DEFAULT NULL,
  `jrnissue1` varchar(20) DEFAULT NULL,
  `jrnissn1` varchar(20) DEFAULT NULL,
  `jrncategory1` varchar(20) DEFAULT NULL,
  `jrnlink1` varchar(100) DEFAULT NULL,
  `jrncit1` varchar(30) DEFAULT NULL,
  `jrnpdf1` varchar(100) DEFAULT NULL,
  `jrnimpact1` int(10) DEFAULT NULL,
  `jrnkey` int(1) DEFAULT NULL,
  `gl` varchar(50) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `civ_fac_bkjrn`
--

INSERT INTO `civ_fac_bkjrn` (`id`, `sid`, `ayear`, `bk1`, `bkcha1`, `bkissn1`, `bkmy1`, `bkpub1`, `bktype1`, `bkkey`, `jrntitle1`, `jrnname1`, `jrnvol1`, `jrnissue1`, `jrnissn1`, `jrncategory1`, `jrnlink1`, `jrncit1`, `jrnpdf1`, `jrnimpact1`, `jrnkey`, `gl`, `glkey`) VALUES
(1, 'S14CIV001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SETHURSMAN SHANMUGAM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `civ_fac_edu`
--

CREATE TABLE `civ_fac_edu` (
  `sid` varchar(30) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `sboard` varchar(10) DEFAULT NULL,
  `syear` int(4) DEFAULT NULL,
  `spercentage` int(4) DEFAULT NULL,
  `scertificate` varchar(100) DEFAULT NULL,
  `skey` int(1) DEFAULT NULL,
  `s2name` varchar(50) DEFAULT NULL,
  `s2board` varchar(10) DEFAULT NULL,
  `s2branch` varchar(50) DEFAULT NULL,
  `s2year` int(4) DEFAULT NULL,
  `s2percentage` int(4) DEFAULT NULL,
  `s2certificate` varchar(100) DEFAULT NULL,
  `s2key` int(1) DEFAULT NULL,
  `dname` varchar(50) DEFAULT NULL,
  `dboard` varchar(10) DEFAULT NULL,
  `ddegree` varchar(50) DEFAULT NULL,
  `dmode` varchar(10) DEFAULT NULL,
  `dyear` int(4) DEFAULT NULL,
  `dpercentage` int(4) DEFAULT NULL,
  `dcertificate` varchar(100) DEFAULT NULL,
  `dkey` int(1) DEFAULT NULL,
  `d1name` varchar(50) DEFAULT NULL,
  `d1board` varchar(10) DEFAULT NULL,
  `d1degree` varchar(50) DEFAULT NULL,
  `d1mode` varchar(10) DEFAULT NULL,
  `d1year` int(4) DEFAULT NULL,
  `d1percentage` int(4) DEFAULT NULL,
  `d1certificate` varchar(100) DEFAULT NULL,
  `d1key` int(1) DEFAULT NULL,
  `d2name` varchar(50) DEFAULT NULL,
  `d2board` varchar(10) DEFAULT NULL,
  `d2degree` varchar(50) DEFAULT NULL,
  `d2mode` varchar(10) DEFAULT NULL,
  `d2year` int(4) DEFAULT NULL,
  `d2percentage` int(4) DEFAULT NULL,
  `d2certificate` varchar(100) DEFAULT NULL,
  `d2key` int(1) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `uuniversity` varchar(50) DEFAULT NULL,
  `udegree` varchar(50) DEFAULT NULL,
  `ubranch` varchar(50) DEFAULT NULL,
  `umode` varchar(10) DEFAULT NULL,
  `uyear` int(4) DEFAULT NULL,
  `upercentage` int(4) DEFAULT NULL,
  `ucertificate` varchar(100) DEFAULT NULL,
  `ukey` int(1) DEFAULT NULL,
  `u1name` varchar(50) DEFAULT NULL,
  `u1university` varchar(50) DEFAULT NULL,
  `u1degree` varchar(50) DEFAULT NULL,
  `u1branch` varchar(50) DEFAULT NULL,
  `u1mode` varchar(10) DEFAULT NULL,
  `u1year` int(4) DEFAULT NULL,
  `u1percentage` int(4) DEFAULT NULL,
  `u1certificate` varchar(100) DEFAULT NULL,
  `u1key` int(1) DEFAULT NULL,
  `u2name` varchar(50) DEFAULT NULL,
  `u2university` varchar(50) DEFAULT NULL,
  `u2degree` varchar(50) DEFAULT NULL,
  `u2branch` varchar(50) DEFAULT NULL,
  `u2mode` varchar(10) DEFAULT NULL,
  `u2year` int(4) DEFAULT NULL,
  `u2percentage` int(4) DEFAULT NULL,
  `u2certificate` varchar(100) DEFAULT NULL,
  `u2key` int(1) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `puniversity` varchar(50) DEFAULT NULL,
  `pdegree` varchar(50) DEFAULT NULL,
  `pbranch` varchar(50) DEFAULT NULL,
  `pmode` varchar(10) DEFAULT NULL,
  `pyear` int(4) DEFAULT NULL,
  `ppercentage` int(4) DEFAULT NULL,
  `pcertificate` varchar(100) DEFAULT NULL,
  `pkey` int(1) DEFAULT NULL,
  `p1name` varchar(50) DEFAULT NULL,
  `p1university` varchar(50) DEFAULT NULL,
  `p1degree` varchar(50) DEFAULT NULL,
  `p1branch` varchar(50) DEFAULT NULL,
  `p1mode` varchar(10) DEFAULT NULL,
  `p1year` int(4) DEFAULT NULL,
  `p1percentage` int(4) DEFAULT NULL,
  `p1certificate` varchar(100) DEFAULT NULL,
  `p1key` int(1) DEFAULT NULL,
  `p2name` varchar(50) DEFAULT NULL,
  `p2university` varchar(50) DEFAULT NULL,
  `p2degree` varchar(50) DEFAULT NULL,
  `p2branch` varchar(50) DEFAULT NULL,
  `p2mode` varchar(10) DEFAULT NULL,
  `p2year` int(4) DEFAULT NULL,
  `p2percentage` int(4) DEFAULT NULL,
  `p2certificate` varchar(100) DEFAULT NULL,
  `p2key` int(1) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `muniversity` varchar(50) DEFAULT NULL,
  `mspec` varchar(50) DEFAULT NULL,
  `mbranch` varchar(50) DEFAULT NULL,
  `mmode` varchar(10) DEFAULT NULL,
  `myear` int(4) DEFAULT NULL,
  `mpercentage` int(4) DEFAULT NULL,
  `mthesis` varchar(50) DEFAULT NULL,
  `mguide` varchar(30) DEFAULT NULL,
  `mcertificate` varchar(100) DEFAULT NULL,
  `mkey` int(1) DEFAULT NULL,
  `phname` varchar(50) DEFAULT NULL,
  `phuniversity` varchar(50) DEFAULT NULL,
  `phspec` varchar(50) DEFAULT NULL,
  `phbranch` varchar(50) DEFAULT NULL,
  `phmode` varchar(10) DEFAULT NULL,
  `phyreg` varchar(7) DEFAULT NULL,
  `phyear` varchar(7) DEFAULT NULL,
  `phthesis` varchar(100) DEFAULT NULL,
  `phguide` varchar(30) DEFAULT NULL,
  `phcertificate` varchar(100) DEFAULT NULL,
  `phkey` int(1) DEFAULT NULL,
  `ph1name` varchar(50) DEFAULT NULL,
  `ph1university` varchar(50) DEFAULT NULL,
  `ph1spec` varchar(50) DEFAULT NULL,
  `ph1branch` varchar(50) DEFAULT NULL,
  `ph1mode` varchar(10) DEFAULT NULL,
  `ph1yreg` varchar(7) DEFAULT NULL,
  `ph1year` varchar(7) DEFAULT NULL,
  `ph1thesis` varchar(100) DEFAULT NULL,
  `ph1guide` varchar(30) DEFAULT NULL,
  `ph1certificate` varchar(100) DEFAULT NULL,
  `ph1key` int(1) DEFAULT NULL,
  `ph2name` varchar(50) DEFAULT NULL,
  `ph2university` varchar(50) DEFAULT NULL,
  `ph2spec` varchar(50) DEFAULT NULL,
  `ph2branch` varchar(50) DEFAULT NULL,
  `ph2mode` varchar(10) DEFAULT NULL,
  `ph2yreg` varchar(7) DEFAULT NULL,
  `ph2year` varchar(7) DEFAULT NULL,
  `ph2thesis` varchar(100) DEFAULT NULL,
  `ph2guide` varchar(30) DEFAULT NULL,
  `ph2certificate` varchar(100) DEFAULT NULL,
  `ph2key` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `civ_fac_edu`
--

INSERT INTO `civ_fac_edu` (`sid`, `sname`, `sboard`, `syear`, `spercentage`, `scertificate`, `skey`, `s2name`, `s2board`, `s2branch`, `s2year`, `s2percentage`, `s2certificate`, `s2key`, `dname`, `dboard`, `ddegree`, `dmode`, `dyear`, `dpercentage`, `dcertificate`, `dkey`, `d1name`, `d1board`, `d1degree`, `d1mode`, `d1year`, `d1percentage`, `d1certificate`, `d1key`, `d2name`, `d2board`, `d2degree`, `d2mode`, `d2year`, `d2percentage`, `d2certificate`, `d2key`, `uname`, `uuniversity`, `udegree`, `ubranch`, `umode`, `uyear`, `upercentage`, `ucertificate`, `ukey`, `u1name`, `u1university`, `u1degree`, `u1branch`, `u1mode`, `u1year`, `u1percentage`, `u1certificate`, `u1key`, `u2name`, `u2university`, `u2degree`, `u2branch`, `u2mode`, `u2year`, `u2percentage`, `u2certificate`, `u2key`, `pname`, `puniversity`, `pdegree`, `pbranch`, `pmode`, `pyear`, `ppercentage`, `pcertificate`, `pkey`, `p1name`, `p1university`, `p1degree`, `p1branch`, `p1mode`, `p1year`, `p1percentage`, `p1certificate`, `p1key`, `p2name`, `p2university`, `p2degree`, `p2branch`, `p2mode`, `p2year`, `p2percentage`, `p2certificate`, `p2key`, `mname`, `muniversity`, `mspec`, `mbranch`, `mmode`, `myear`, `mpercentage`, `mthesis`, `mguide`, `mcertificate`, `mkey`, `phname`, `phuniversity`, `phspec`, `phbranch`, `phmode`, `phyreg`, `phyear`, `phthesis`, `phguide`, `phcertificate`, `phkey`, `ph1name`, `ph1university`, `ph1spec`, `ph1branch`, `ph1mode`, `ph1yreg`, `ph1year`, `ph1thesis`, `ph1guide`, `ph1certificate`, `ph1key`, `ph2name`, `ph2university`, `ph2spec`, `ph2branch`, `ph2mode`, `ph2yreg`, `ph2year`, `ph2thesis`, `ph2guide`, `ph2certificate`, `ph2key`) VALUES
('S14CIV001', 'Govt.Hr.Sec.Scl Lakkiyampatti', 'state', 1999, 82, '92004-10-th.compressed.pdf', 1, 'Govt.Hr.Sec.Scl Lakkiyampatti', 'state', 'MATHS - BIOLOGY', 2001, 73, '53563-12-th.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'K.S.Rangasamy College of Technology, Tiruchengode', 'Anna University, Chennai', 'BE ', ' (Civil Engg.)', 'regular', 2006, 72, '1173-ug-degree1.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'College of Engg, Guindy, Anna University, Chennai', 'Anna University, Chennai', 'ME ', '(Environmental Engg.)', 'regular', 2010, 8, '19775-pg-degree.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `civ_fac_exp`
--

CREATE TABLE `civ_fac_exp` (
  `sid` varchar(30) NOT NULL,
  `clg1` varchar(50) DEFAULT NULL,
  `clgdesg1` varchar(30) DEFAULT NULL,
  `clgdoj1` date DEFAULT NULL,
  `clgdor1` date DEFAULT NULL,
  `clgreason1` varchar(100) DEFAULT NULL,
  `clgcir1` varchar(100) DEFAULT NULL,
  `clgkey` int(1) DEFAULT NULL,
  `pol1` varchar(50) DEFAULT NULL,
  `poldesg1` varchar(30) DEFAULT NULL,
  `poldoj1` date DEFAULT NULL,
  `poldor1` date DEFAULT NULL,
  `polreason1` varchar(100) DEFAULT NULL,
  `polcir1` varchar(100) DEFAULT NULL,
  `polkey` int(1) DEFAULT NULL,
  `sch1` varchar(50) DEFAULT NULL,
  `schdesg1` varchar(30) DEFAULT NULL,
  `schdoj1` date DEFAULT NULL,
  `schdor1` date DEFAULT NULL,
  `schreason1` varchar(100) DEFAULT NULL,
  `schcir1` varchar(100) DEFAULT NULL,
  `schkey` int(1) DEFAULT NULL,
  `ind1` varchar(50) DEFAULT NULL,
  `inddesg1` varchar(30) DEFAULT NULL,
  `indnature1` varchar(30) DEFAULT NULL,
  `inddoj1` date DEFAULT NULL,
  `inddor1` date DEFAULT NULL,
  `indreason1` varchar(100) DEFAULT NULL,
  `indcir1` varchar(100) DEFAULT NULL,
  `indkey` int(1) DEFAULT NULL,
  `ot1` varchar(50) DEFAULT NULL,
  `otdesg1` varchar(30) DEFAULT NULL,
  `otnature1` varchar(30) DEFAULT NULL,
  `otdoj1` date DEFAULT NULL,
  `otdor1` date DEFAULT NULL,
  `otreason1` varchar(100) DEFAULT NULL,
  `otcir1` varchar(100) DEFAULT NULL,
  `otkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `civ_fac_funpat`
--

CREATE TABLE `civ_fac_funpat` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `titleofpro1` varchar(50) DEFAULT NULL,
  `duration1` varchar(30) DEFAULT NULL,
  `amountsan1` varchar(20) DEFAULT NULL,
  `agency1` varchar(20) DEFAULT NULL,
  `startdate1` date DEFAULT NULL,
  `copiname1` varchar(20) DEFAULT NULL,
  `year1` varchar(7) DEFAULT NULL,
  `order1` varchar(200) DEFAULT NULL,
  `uc1` varchar(200) DEFAULT NULL,
  `funkey` int(1) DEFAULT NULL,
  `nameofpat1` varchar(50) DEFAULT NULL,
  `title1` varchar(30) DEFAULT NULL,
  `fileno1` varchar(20) DEFAULT NULL,
  `pat_cer1` varchar(200) DEFAULT NULL,
  `patkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `civ_fac_glc`
--

CREATE TABLE `civ_fac_glc` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `gltitle1` varchar(50) DEFAULT NULL,
  `gldays1` int(3) DEFAULT NULL,
  `glfrom1` date NOT NULL,
  `glto1` date NOT NULL,
  `gldate1` date NOT NULL,
  `gltopic1` varchar(50) DEFAULT NULL,
  `glorg1` varchar(50) DEFAULT NULL,
  `glplace1` varchar(50) DEFAULT NULL,
  `glpic1` varchar(100) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL,
  `conname1` varchar(30) DEFAULT NULL,
  `contitle1` varchar(50) DEFAULT NULL,
  `conorg1` varchar(50) DEFAULT NULL,
  `condays1` int(3) DEFAULT NULL,
  `confrom1` date NOT NULL,
  `conto1` date NOT NULL,
  `condate1` date NOT NULL,
  `conlevel1` varchar(20) DEFAULT NULL,
  `conpdf1` varchar(100) DEFAULT NULL,
  `concer1` varchar(100) DEFAULT NULL,
  `conkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `civ_fac_member`
--

CREATE TABLE `civ_fac_member` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `memberid1` varchar(30) DEFAULT NULL,
  `validity1` varchar(20) DEFAULT NULL,
  `pic1` varchar(100) DEFAULT NULL,
  `memkey` int(1) DEFAULT NULL,
  `res1` varchar(50) DEFAULT NULL,
  `level1` varchar(20) DEFAULT NULL,
  `reskey` int(1) DEFAULT NULL,
  `aname1` varchar(50) DEFAULT NULL,
  `aissue1` varchar(10) DEFAULT NULL,
  `amy1` varchar(7) DEFAULT NULL,
  `acer1` varchar(100) DEFAULT NULL,
  `awakey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `civ_fac_member`
--

INSERT INTO `civ_fac_member` (`id`, `sid`, `ayear`, `name1`, `memberid1`, `validity1`, `pic1`, `memkey`, `res1`, `level1`, `reskey`, `aname1`, `aissue1`, `amy1`, `acer1`, `awakey`) VALUES
(1, 'S14CIV001', '2014-2015', NULL, NULL, NULL, NULL, NULL, 'INDUSTRIAL VISIT CO ORDINATOR', 'department', 1, NULL, NULL, NULL, NULL, NULL),
(2, 'S14CIV001', '2015-2016', NULL, NULL, NULL, NULL, NULL, 'INDUSTRIAL VISIT CO-ORDINATOR', 'department', 1, NULL, NULL, NULL, NULL, NULL),
(3, 'S14CIV001', '2016-2017', NULL, NULL, NULL, NULL, NULL, 'INDUSTRIAL VISIT CO-ORDINATOR', 'department', 1, NULL, NULL, NULL, NULL, NULL),
(4, 'S14CIV001', '2017-2018', NULL, NULL, NULL, NULL, NULL, 'INDUSTRIAL VISIT CO-ORDINATOR', 'department', 1, NULL, NULL, NULL, NULL, NULL),
(5, 'S14CIV001', '2018-2019', NULL, NULL, NULL, NULL, NULL, 'INDUSTRIAL VISIT CO-ORDINATOR', 'department', 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `civ_fac_ot_qual`
--

CREATE TABLE `civ_fac_ot_qual` (
  `id` int(5) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `name_qual` varchar(100) DEFAULT NULL,
  `year_com` int(10) DEFAULT NULL,
  `cer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `civ_fac_resg`
--

CREATE TABLE `civ_fac_resg` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `supid` varchar(20) DEFAULT NULL,
  `numsch` int(2) NOT NULL,
  `reg` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` varchar(10) NOT NULL,
  `cyear` varchar(20) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `tit` varchar(100) NOT NULL,
  `j_sup` varchar(50) DEFAULT NULL
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
-- Table structure for table `cse_fac`
--

CREATE TABLE `cse_fac` (
  `sid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `age` int(4) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob1` bigint(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `mstatus` varchar(5) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `relegion` varchar(30) NOT NULL,
  `comunity` varchar(10) NOT NULL,
  `place` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `aadharno` bigint(12) NOT NULL,
  `panno` varchar(10) NOT NULL,
  `passport` varchar(20) DEFAULT NULL,
  `blood` varchar(5) NOT NULL,
  `doj` date NOT NULL,
  `designation` varchar(50) NOT NULL,
  `mob2` bigint(10) DEFAULT NULL,
  `dept` varchar(50) NOT NULL,
  `uploadpic` varchar(100) NOT NULL,
  `aadharpic` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `dor` date DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `app_order` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cse_fac`
--

INSERT INTO `cse_fac` (`sid`, `name`, `dob`, `age`, `gender`, `email`, `mob1`, `fname`, `mname`, `mstatus`, `sname`, `relegion`, `comunity`, `place`, `city`, `district`, `state`, `country`, `pincode`, `address`, `paddress`, `aadharno`, `panno`, `passport`, `blood`, `doj`, `designation`, `mob2`, `dept`, `uploadpic`, `aadharpic`, `password`, `status`, `dor`, `reason`, `app_order`) VALUES
('S01CSE009', 'Dr. M. Lilly Florence', '1974-03-20', 45, 'female', 'lilly_swamy@yahoo.co.in', 9487819149, 'Maria Adaickalam', 'Arul Arockia Mary', 'y', '', 'Christian', 'BC', 'Hosur', 'Hosur', 'Krishnagiri', 'Tamil Nadu', 'India', '635109', '	   M1/42, New ASTC Hudco\r\nHosur', '	   M1/42, New ASTC Hudco\r\nHosur', 656478349777, 'ABSPL4660L', '', 'B+ve', '2001-06-01', 'Professor', 0, 'CSE', '52094-lilly.jpg', '14079-aadhar-lilly.pdf', '9777', NULL, NULL, NULL, '3834-appoinment-order.pdf'),
('S08CSE001', 'MANIKANDAN', '1983-11-20', 36, 'male', 'manikandanm10@gmail.com', 9944352965, 'MUTHAIYAN', 'JANATHA', 'y', '', 'HINDU', 'MBC', 'TINDIVANAM', 'TINDIVANAM', 'VILLUPURAM', 'Tamil Nadu', 'India', '604001', '	 NO:29 SWAGATH LAYOUT\r\nMORANAPALLI  ', '	NO:29 SWAGATH LAYOUT\r\nMORANAPALLI   ', 411613211570, 'AWKPM254OD', '', 'B+ve', '2008-07-28', 'ASSISTANT PROFESSOR', 0, 'CSE', '42490-manikandan.jpg', '11084-manikandan.pdf', '1570', NULL, NULL, NULL, NULL),
('S10CSE003', 'W.GRACY THERESA', '1983-09-14', 36, 'female', 'sunphin14@gmail.com', 9600583768, 'T. WILLIAM JAMES', 'W. SANTHOSH MARY', 'y', '', 'CHRISTIAN', 'BC', 'HOSUR', 'HOSUR', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635109', '	HIG-174, TNHB, PHASE 7, BRINDAVAN GARDENS, HOSUR - 635109 ', '	HIG-174, TNHB, PHASE 7, BRINDAVAN GARDENS, HOSUR - 635109 ', 225291551459, 'ALQPT2605K', '', 'B+ve', '2010-08-02', 'ASSISTANT PROFESSOR', 8838217433, 'CSE', '43497-gracy.jpg', '57288-gracy-aadhar.pdf', '1459', NULL, NULL, NULL, NULL),
('S11CSE010', 'KARTHICK RAGHUNATH K M', '1986-06-28', 33, 'male', 'raguaut@gmail.com', 9952445562, 'K. MURUGESAN', 'D.A.KALYANI', 'y', '', 'HINDU', 'VANNIYAR', 'KAVERIPATTINAM', 'KRISHNAGIRI', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635112', '	 46/1,KOTTAI STREET,\r\nKAVERIPATTINAM-PO,\r\nKRISHNAGIRI-DT.  ', '	 46/1,KOTTAI STREET,\r\nKAVERIPATTINAM-PO,\r\nKRISHNAGIRI-DT.  ', 839543471397, 'BBEPK4221K', '', 'O -ve', '2011-06-08', 'ASSISTANT PROFESSOR', 9865858596, 'CSE', '66530-photo2.jpg', '70896-karthick-raghunath-aadhar-pdf.pdf', '1397', NULL, NULL, NULL, NULL),
('S12CSE005', 'VIVEKANANDHAN', '1986-03-25', 33, 'male', 'acevivek7677@gmail.com', 9345458588, 'C.VIJAYARANGAN', 'V.SHANTHI', 'y', '', 'HINDU', 'SC', 'KRISHNAGIRI', 'KRISHNAGIRI', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635001', '4/42,DEVASAMUTHIRAM(VILL)\r\nKRISHNAGIRI (POST)\r\nTAMILNADU-635001\r\n', '4/42,DEVASAMUTHIRAM(VILL)\r\nKRISHNAGIRI (POST)\r\nTAMILNADU-635001\r\n', 205001698341, 'AKSPV5383M', '', 'A+ve', '2012-06-18', 'ASSISTANT PROFESSOR', 0, 'CSE', '10536-photo.jpg', '59724-vivek.pdf', '8341', NULL, NULL, NULL, NULL),
('S12CSE007', 'J DHIVYA MERLIN', '1984-05-03', 35, 'female', 'dhivyamerlin@gmail.com', 9786276273, 'M.JAMES', 'V.LILLY MARY', 'y', '', 'CHRISTIAN', 'BC', 'HOSUR', 'HOSUR', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635109', '	23/6B, FIRST MAIN\r\nVASANTH NAGAR, HOSUR   ', '	23/6B, FIRST MAIN\r\nVASANTH NAGAR, HOSUR   ', 727034098459, 'BKGPD7608Q', '', 'A+ve', '2012-06-18', 'ASSISTANT PROFESSOR', 0, 'CSE', '89286-divya-merlin.jpg', '5721-dhivya-merlin-aadhar.pdf', '8459', NULL, NULL, NULL, NULL),
('S13CSE004', 'KANIMOZHIVEENA E', '1989-03-06', 30, 'female', 'kani.veena@gmail.com', 7598844600, 'P. ELANGO', 'E. JAYANTHI', 'y', '', 'HINDU', 'BC', 'KRISHNAGIRI', 'KRISHNAGIRI', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635001', '	   167, BANGALORE ROAD,\r\nKRISHNAGIRI - 635001', '	   167, BANGALORE ROAD,\r\nKRISHNAGIRI - 635001', 383379118001, 'BTFPK7065L', '', 'O+VE', '2013-06-07', 'ASSISTANT PROFESSOR', 0, 'CSE', '84278-kani_photo.jpg', '37386-kani-aadhar.pdf', '8001', NULL, NULL, NULL, NULL),
('S13CSE006', 'INDIRA R', '1988-11-04', 31, 'female', 'indicse@gmail.com', 9677782183, 'RAMACHANDRAN G', 'TAMILARASI R', 'n', '', 'HINDU', 'BC', 'HOSUR', 'HOSUR', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635109', 'C 23,\r\nTHALLY HUDCO,\r\nHOSUR - 635109	   ', 'C 23,\r\nTHALLY HUDCO,\r\nHOSUR - 635109	   ', 245075216398, 'ADRPI3034Q', '', 'B+ve', '2013-07-06', 'ASSISTANT PROFESSOR', 0, 'CSE', '48769-1.jpg', '28845-aadhaar-new1-compressed.pdf', '6398', NULL, NULL, NULL, NULL),
('S18CSE008', 'VENKATESH', '1990-10-11', 29, 'male', 'venkimahalakshmi10@gmail.com', 9952722086, 'PALANI', 'LAKSHMI', 'n', '', 'HINDU', 'AGAMUDAIYA', 'KRISHNAGIRI', 'KRISHNAGIRI', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635001', '76 A ,POOGAVANAM STREET,NEWPET,KRISHNAGIRI', '	   ', 438023272845, 'ALQPV7750H', '', 'B+ve', '2018-08-01', 'ASSISTANT PROFESSOR', 0, 'CSE', '91752-247-a.jpg', '10598-copy-of-aadharcard.pdf', '2845', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cse_fac_attorg`
--

CREATE TABLE `cse_fac_attorg` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `attcategory1` varchar(20) DEFAULT NULL,
  `atttitle1` varchar(50) DEFAULT NULL,
  `attdays1` int(3) DEFAULT NULL,
  `attfrom1` date NOT NULL,
  `attto1` date NOT NULL,
  `attdate1` date NOT NULL,
  `attorg1` varchar(50) DEFAULT NULL,
  `attplace1` varchar(50) DEFAULT NULL,
  `attlevel1` varchar(20) DEFAULT NULL,
  `attcer1` varchar(100) DEFAULT NULL,
  `attkey` int(1) DEFAULT NULL,
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
-- Dumping data for table `cse_fac_attorg`
--

INSERT INTO `cse_fac_attorg` (`id`, `sid`, `ayear`, `attcategory1`, `atttitle1`, `attdays1`, `attfrom1`, `attto1`, `attdate1`, `attorg1`, `attplace1`, `attlevel1`, `attcer1`, `attkey`, `orgcategory1`, `orgtitle1`, `orgfun1`, `orgdays1`, `orgfrom1`, `orgto1`, `orgdate1`, `orgres1`, `orgpar1`, `orglevel1`, `orgcer1`, `orgkey`) VALUES
(1, 'S01CSE009', '2006-2007', 'fdp', 'Cryptography and Network Security', 15, '2006-12-04', '2006-12-16', '0000-00-00', 'Adhiyamaan College of Engineering', 'Hosur', 'state', '45818-fdp_dec_2006.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(2, 'S01CSE009', '2006-2007', 'fdp', 'Software Project Success with Effective Project Ma', 3, '2007-04-04', '2007-04-06', '0000-00-00', 'Infosys', 'Bangalore', 'national', '20928-fdp_apr-2007.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(3, 'S01CSE009', '2007-2008', 'fdp', 'Web Development using IBM Open Sources', 2, '2007-08-29', '2007-08-30', '0000-00-00', 'IBM Academic Initiative', 'Hosur', 'national', '43197-fdp_aug_2007.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(4, 'S01CSE009', '2014-2015', 'fdp', 'Introduction to ASp .Net', 2, '2015-01-23', '2015-01-24', '0000-00-00', 'ICT Academay of Tamilnadu', 'Hosur', 'state', '62605-fdp_jan-2015.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(5, 'S01CSE009', '2010-2011', 'seminar', 'Quantum Cryptography', 2, '2011-02-14', '2011-02-15', '0000-00-00', 'Kong Engineering College', 'Erode', 'national', '17038-seminar_feb-2011.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(6, 'S01CSE009', '2008-2009', 'seminar', 'Intellectual Property Rights', 1, '0000-00-00', '0000-00-00', '2009-03-31', 'Anna University With Adhiyamaan College of Enginee', 'Hosur', 'national', '91654-seminar-mar-2009.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(7, 'S01CSE009', '2010-2011', 'seminar', 'Impact of Matlab Tool Kit in Research Work', 1, '0000-00-00', '0000-00-00', '2010-12-03', 'MGR College', 'Hosur', 'national', '9620-seminar_dec-2010.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(8, 'S01CSE009', '2011-2012', 'fdp', 'Eclipse IDE, Plug ins, Tools for developing Java a', 2, '2012-03-29', '2012-03-30', '0000-00-00', 'CTS', 'Bangalore', 'national', '33773-fdp_march-2012.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(9, 'S01CSE009', '2005-2006', 'workshop', 'Recent Trends in Wireless Technologies', 1, '0000-00-00', '0000-00-00', '2006-04-07', 'Adhiyamaan College of Engineering', 'Hosur', 'national', '82942-workshop_apr-2006.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(10, 'S01CSE009', '2008-2009', 'workshop', 'Neural Networks for Image Processing', 2, '2009-01-30', '2009-01-31', '0000-00-00', 'Adhiyamaan College of Engineering', 'Hosur', 'national', '34013-workshop_jan-2009.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(11, 'S01CSE009', '2009-2010', 'workshop', 'High Impact Teaching Skills', 2, '2009-08-24', '2009-08-25', '0000-00-00', 'Wipro Technologies With Adhiyamaan College of Engi', 'Hosur', 'national', '20545-workshop_august-2009.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(12, 'S01CSE009', '2014-2015', 'workshop', 'Android Application Development', 2, '2014-09-05', '2014-09-06', '0000-00-00', 'Adhiyamaan College of Engineering', 'Hosur', 'national', '24065-workshop_sep-2014.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(13, 'S01CSE009', '2010-2011', 'training', 'Effective E-Teaching and Learning', 120, '2010-10-04', '2011-01-29', '0000-00-00', 'IIIT-B', 'Bangalore', 'international', '51589-course_jan-2011.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cse_fac_bkjrn`
--

CREATE TABLE `cse_fac_bkjrn` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `bk1` varchar(20) DEFAULT NULL,
  `bkcha1` varchar(50) DEFAULT NULL,
  `bkissn1` varchar(20) DEFAULT NULL,
  `bkmy1` varchar(7) DEFAULT NULL,
  `bkpub1` varchar(50) DEFAULT NULL,
  `bktype1` varchar(50) DEFAULT NULL,
  `bkkey` int(1) DEFAULT NULL,
  `jrntitle1` varchar(100) DEFAULT NULL,
  `jrnname1` varchar(50) DEFAULT NULL,
  `jrnvol1` varchar(20) DEFAULT NULL,
  `jrnissue1` varchar(20) DEFAULT NULL,
  `jrnissn1` varchar(20) DEFAULT NULL,
  `jrncategory1` varchar(20) DEFAULT NULL,
  `jrnlink1` varchar(100) DEFAULT NULL,
  `jrncit1` varchar(30) DEFAULT NULL,
  `jrnpdf1` varchar(100) DEFAULT NULL,
  `jrnimpact1` int(10) DEFAULT NULL,
  `jrnkey` int(1) DEFAULT NULL,
  `gl` varchar(200) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cse_fac_bkjrn`
--

INSERT INTO `cse_fac_bkjrn` (`id`, `sid`, `ayear`, `bk1`, `bkcha1`, `bkissn1`, `bkmy1`, `bkpub1`, `bktype1`, `bkkey`, `jrntitle1`, `jrnname1`, `jrnvol1`, `jrnissue1`, `jrnissn1`, `jrncategory1`, `jrnlink1`, `jrncit1`, `jrnpdf1`, `jrnimpact1`, `jrnkey`, `gl`, `glkey`) VALUES
(2, 'S01CSE009', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://scholar.google.co.in/citations?hl=en&user=RX3s55wAAAAJ', 1),
(3, 'S11CSE010', '2012-2013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Investigation of Faults, Errors and Failures in Wireless Sensor Network: A Systematical Survey', 'International Journal of Advanced Computer Researc', '3', '12', '2277-7970', 'scopus', 'https://www.accentsjournals.org/paperInfo.php?journalPaperId=595&countPaper=709', '10', '61899-investigation-of-faults,-errors-and-failures-in-wireless-sensor-network.pdf', 1, 1, NULL, NULL),
(4, 'S11CSE010', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Response time optimization with enhanced fault-tolerant wireless sensor network design for on-board ', 'Cluster Computing: The Journal of Networks, Softwa', '1', '1', '1573-7543', 'sci,scopus,ugc', 'https://link.springer.com/article/10.1007/s10586-017-1473-4', '0', '26747-response-time-optimization-with-enhanced-fault-tolerant-wireless.pdf', 2, 1, NULL, NULL),
(5, 'S11CSE010', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Evolving Optimal Response Time and Synchronized Communication on Integrating Fuzzy Logic Using Infra', 'SENSOR LETTERS', '16', '8', '1546-1971', 'scopus', 'https://www.ingentaconnect.com/contentone/asp/senlet/2018/00000016/00000008/art00006', '0', '93716-sensor-letters.pdf', 1, 1, NULL, NULL),
(6, 'S11CSE010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://scholar.google.co.in/citations?user=njQ9zmMAAAAJ&hl=en', 1),
(7, 'S11CSE010', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A Novel Fuzzy Integrated Fault-Tolerant and Energy-Efficient Routing Protocol for Wireless Sensor Ne', 'Asian Journal of Information Technology ', '15', '8', '1993-5994', 'scopus', 'https://www.medwelljournals.com/abstract/?doi=ajit.2016.1289.1296', '0', '8919-a-novel-fuzzy-integrated-fault-tolerant-and-energy-efficient-routing-protocol-for-wireless-sens', 1, 1, NULL, NULL),
(8, 'S11CSE010', '2011-2012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Self Diagnosing and Fault Evacuation Framework for Ad-Hoc Network', 'International Journal of Engineering and Technolog', '4', '6', '1793-8236', 'others', 'http://www.ijetch.org/show-46-370-1.html', '0', '9761-self-diagnosing-and-fault-evacuation-framework-for-adhoc-network.pdf', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cse_fac_edu`
--

CREATE TABLE `cse_fac_edu` (
  `sid` varchar(30) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `sboard` varchar(10) DEFAULT NULL,
  `syear` int(4) DEFAULT NULL,
  `spercentage` int(4) DEFAULT NULL,
  `scertificate` varchar(100) DEFAULT NULL,
  `skey` int(1) DEFAULT NULL,
  `s2name` varchar(50) DEFAULT NULL,
  `s2board` varchar(10) DEFAULT NULL,
  `s2branch` varchar(50) DEFAULT NULL,
  `s2year` int(4) DEFAULT NULL,
  `s2percentage` int(4) DEFAULT NULL,
  `s2certificate` varchar(100) DEFAULT NULL,
  `s2key` int(1) DEFAULT NULL,
  `dname` varchar(50) DEFAULT NULL,
  `dboard` varchar(10) DEFAULT NULL,
  `ddegree` varchar(50) DEFAULT NULL,
  `dmode` varchar(10) DEFAULT NULL,
  `dyear` int(4) DEFAULT NULL,
  `dpercentage` int(4) DEFAULT NULL,
  `dcertificate` varchar(100) DEFAULT NULL,
  `dkey` int(1) DEFAULT NULL,
  `d1name` varchar(50) DEFAULT NULL,
  `d1board` varchar(10) DEFAULT NULL,
  `d1degree` varchar(50) DEFAULT NULL,
  `d1mode` varchar(10) DEFAULT NULL,
  `d1year` int(4) DEFAULT NULL,
  `d1percentage` int(4) DEFAULT NULL,
  `d1certificate` varchar(100) DEFAULT NULL,
  `d1key` int(1) DEFAULT NULL,
  `d2name` varchar(50) DEFAULT NULL,
  `d2board` varchar(10) DEFAULT NULL,
  `d2degree` varchar(50) DEFAULT NULL,
  `d2mode` varchar(10) DEFAULT NULL,
  `d2year` int(4) DEFAULT NULL,
  `d2percentage` int(4) DEFAULT NULL,
  `d2certificate` varchar(100) DEFAULT NULL,
  `d2key` int(1) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `uuniversity` varchar(50) DEFAULT NULL,
  `udegree` varchar(50) DEFAULT NULL,
  `ubranch` varchar(50) DEFAULT NULL,
  `umode` varchar(10) DEFAULT NULL,
  `uyear` int(4) DEFAULT NULL,
  `upercentage` int(4) DEFAULT NULL,
  `ucertificate` varchar(100) DEFAULT NULL,
  `ukey` int(1) DEFAULT NULL,
  `u1name` varchar(50) DEFAULT NULL,
  `u1university` varchar(50) DEFAULT NULL,
  `u1degree` varchar(50) DEFAULT NULL,
  `u1branch` varchar(50) DEFAULT NULL,
  `u1mode` varchar(10) DEFAULT NULL,
  `u1year` int(4) DEFAULT NULL,
  `u1percentage` int(4) DEFAULT NULL,
  `u1certificate` varchar(100) DEFAULT NULL,
  `u1key` int(1) DEFAULT NULL,
  `u2name` varchar(50) DEFAULT NULL,
  `u2university` varchar(50) DEFAULT NULL,
  `u2degree` varchar(50) DEFAULT NULL,
  `u2branch` varchar(50) DEFAULT NULL,
  `u2mode` varchar(10) DEFAULT NULL,
  `u2year` int(4) DEFAULT NULL,
  `u2percentage` int(4) DEFAULT NULL,
  `u2certificate` varchar(100) DEFAULT NULL,
  `u2key` int(1) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `puniversity` varchar(50) DEFAULT NULL,
  `pdegree` varchar(50) DEFAULT NULL,
  `pbranch` varchar(50) DEFAULT NULL,
  `pmode` varchar(10) DEFAULT NULL,
  `pyear` int(4) DEFAULT NULL,
  `ppercentage` int(4) DEFAULT NULL,
  `pcertificate` varchar(100) DEFAULT NULL,
  `pkey` int(1) DEFAULT NULL,
  `p1name` varchar(50) DEFAULT NULL,
  `p1university` varchar(50) DEFAULT NULL,
  `p1degree` varchar(50) DEFAULT NULL,
  `p1branch` varchar(50) DEFAULT NULL,
  `p1mode` varchar(10) DEFAULT NULL,
  `p1year` int(4) DEFAULT NULL,
  `p1percentage` int(4) DEFAULT NULL,
  `p1certificate` varchar(100) DEFAULT NULL,
  `p1key` int(1) DEFAULT NULL,
  `p2name` varchar(50) DEFAULT NULL,
  `p2university` varchar(50) DEFAULT NULL,
  `p2degree` varchar(50) DEFAULT NULL,
  `p2branch` varchar(50) DEFAULT NULL,
  `p2mode` varchar(10) DEFAULT NULL,
  `p2year` int(4) DEFAULT NULL,
  `p2percentage` int(4) DEFAULT NULL,
  `p2certificate` varchar(100) DEFAULT NULL,
  `p2key` int(1) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `muniversity` varchar(50) DEFAULT NULL,
  `mspec` varchar(50) DEFAULT NULL,
  `mbranch` varchar(50) DEFAULT NULL,
  `mmode` varchar(10) DEFAULT NULL,
  `myear` int(4) DEFAULT NULL,
  `mpercentage` int(4) DEFAULT NULL,
  `mthesis` varchar(50) DEFAULT NULL,
  `mguide` varchar(30) DEFAULT NULL,
  `mcertificate` varchar(100) DEFAULT NULL,
  `mkey` int(1) DEFAULT NULL,
  `phname` varchar(50) DEFAULT NULL,
  `phuniversity` varchar(50) DEFAULT NULL,
  `phspec` varchar(50) DEFAULT NULL,
  `phbranch` varchar(50) DEFAULT NULL,
  `phmode` varchar(10) DEFAULT NULL,
  `phyreg` varchar(7) DEFAULT NULL,
  `phyear` varchar(7) DEFAULT NULL,
  `phthesis` varchar(100) DEFAULT NULL,
  `phguide` varchar(30) DEFAULT NULL,
  `phcertificate` varchar(100) DEFAULT NULL,
  `phkey` int(1) DEFAULT NULL,
  `ph1name` varchar(50) DEFAULT NULL,
  `ph1university` varchar(50) DEFAULT NULL,
  `ph1spec` varchar(50) DEFAULT NULL,
  `ph1branch` varchar(50) DEFAULT NULL,
  `ph1mode` varchar(10) DEFAULT NULL,
  `ph1yreg` varchar(7) DEFAULT NULL,
  `ph1year` varchar(7) DEFAULT NULL,
  `ph1thesis` varchar(100) DEFAULT NULL,
  `ph1guide` varchar(30) DEFAULT NULL,
  `ph1certificate` varchar(100) DEFAULT NULL,
  `ph1key` int(1) DEFAULT NULL,
  `ph2name` varchar(50) DEFAULT NULL,
  `ph2university` varchar(50) DEFAULT NULL,
  `ph2spec` varchar(50) DEFAULT NULL,
  `ph2branch` varchar(50) DEFAULT NULL,
  `ph2mode` varchar(10) DEFAULT NULL,
  `ph2yreg` varchar(7) DEFAULT NULL,
  `ph2year` varchar(7) DEFAULT NULL,
  `ph2thesis` varchar(100) DEFAULT NULL,
  `ph2guide` varchar(30) DEFAULT NULL,
  `ph2certificate` varchar(100) DEFAULT NULL,
  `ph2key` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cse_fac_edu`
--

INSERT INTO `cse_fac_edu` (`sid`, `sname`, `sboard`, `syear`, `spercentage`, `scertificate`, `skey`, `s2name`, `s2board`, `s2branch`, `s2year`, `s2percentage`, `s2certificate`, `s2key`, `dname`, `dboard`, `ddegree`, `dmode`, `dyear`, `dpercentage`, `dcertificate`, `dkey`, `d1name`, `d1board`, `d1degree`, `d1mode`, `d1year`, `d1percentage`, `d1certificate`, `d1key`, `d2name`, `d2board`, `d2degree`, `d2mode`, `d2year`, `d2percentage`, `d2certificate`, `d2key`, `uname`, `uuniversity`, `udegree`, `ubranch`, `umode`, `uyear`, `upercentage`, `ucertificate`, `ukey`, `u1name`, `u1university`, `u1degree`, `u1branch`, `u1mode`, `u1year`, `u1percentage`, `u1certificate`, `u1key`, `u2name`, `u2university`, `u2degree`, `u2branch`, `u2mode`, `u2year`, `u2percentage`, `u2certificate`, `u2key`, `pname`, `puniversity`, `pdegree`, `pbranch`, `pmode`, `pyear`, `ppercentage`, `pcertificate`, `pkey`, `p1name`, `p1university`, `p1degree`, `p1branch`, `p1mode`, `p1year`, `p1percentage`, `p1certificate`, `p1key`, `p2name`, `p2university`, `p2degree`, `p2branch`, `p2mode`, `p2year`, `p2percentage`, `p2certificate`, `p2key`, `mname`, `muniversity`, `mspec`, `mbranch`, `mmode`, `myear`, `mpercentage`, `mthesis`, `mguide`, `mcertificate`, `mkey`, `phname`, `phuniversity`, `phspec`, `phbranch`, `phmode`, `phyreg`, `phyear`, `phthesis`, `phguide`, `phcertificate`, `phkey`, `ph1name`, `ph1university`, `ph1spec`, `ph1branch`, `ph1mode`, `ph1yreg`, `ph1year`, `ph1thesis`, `ph1guide`, `ph1certificate`, `ph1key`, `ph2name`, `ph2university`, `ph2spec`, `ph2branch`, `ph2mode`, `ph2yreg`, `ph2year`, `ph2thesis`, `ph2guide`, `ph2certificate`, `ph2key`) VALUES
('S01CSE009', 'Punitha Arulappar Hr. Sec. School', 'state', 1989, 65, '97263-age_proof.jpg', 1, 'Amali Girls Hr. Sce. School', 'state', 'Maths, Phy, Chem', 1992, 60, '73692-age_proof.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Thiruvalluvar College', 'Manonmanim Sundarnar University', 'B.Sc.', 'Mathematics', 'regular', 1995, 78, '29878-lilly-florence-ug-convocation.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manonmaniam Sundarnar University', 'Manonmaniam Sundarnar University', 'MCA', 'MCA', 'regular', 1998, 65, '73113-lilly-florence-pg-degree.jpg', 1, 'Punjabi University', 'Punjabi University', 'M.Tech', 'IT', 'distance', 2003, 71, '42278-m.tech.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mother Theresa Womens University', 'Mother Teresa Womens University', 'ANN', 'Ph.D.', 'parttime', '2009', '2011', ' Neural Network Approach for HIV/AIDS Regimen Specification Decision Support System', 'Dr. P. Balasubramanie', '67610-ph.d.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S11CSE010', 'CAMBRIDGE MATRICULATION HR.SEC SCHOOL, KRISHNAGIRI', 'state', 2002, 80, '60888-matric.pdf', 1, 'INDIAN MATRICULATION HR.SEC SCHOOL, HARUR', 'state', 'MATHS,BIOLOGY', 2004, 86, '19472-hrsec.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SRI RAM ENGINEERING COLLEGE, CHENNAI', 'ANNA UNIVERSITY, CHENNAI', 'B.TECH', 'INFORMATION TECHNOLOGY', 'regular', 2008, 69, '47184-ug-degree-cert.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ANNA UNIVERSITY, TIRUCHIRAPPALLI', 'ANNA UNIVERSITY, TIRUCHIRAPPALLI', 'M.E', 'PERVASIVE COMPUTING TECHNOLOGIES', 'regular', 2011, 8, '92446-pg-degree-cert.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cse_fac_exp`
--

CREATE TABLE `cse_fac_exp` (
  `sid` varchar(30) NOT NULL,
  `clg1` varchar(50) DEFAULT NULL,
  `clgdesg1` varchar(30) DEFAULT NULL,
  `clgdoj1` date DEFAULT NULL,
  `clgdor1` date DEFAULT NULL,
  `clgreason1` varchar(100) DEFAULT NULL,
  `clgcir1` varchar(100) DEFAULT NULL,
  `clgkey` int(1) DEFAULT NULL,
  `pol1` varchar(50) DEFAULT NULL,
  `poldesg1` varchar(30) DEFAULT NULL,
  `poldoj1` date DEFAULT NULL,
  `poldor1` date DEFAULT NULL,
  `polreason1` varchar(100) DEFAULT NULL,
  `polcir1` varchar(100) DEFAULT NULL,
  `polkey` int(1) DEFAULT NULL,
  `sch1` varchar(50) DEFAULT NULL,
  `schdesg1` varchar(30) DEFAULT NULL,
  `schdoj1` date DEFAULT NULL,
  `schdor1` date DEFAULT NULL,
  `schreason1` varchar(100) DEFAULT NULL,
  `schcir1` varchar(100) DEFAULT NULL,
  `schkey` int(1) DEFAULT NULL,
  `ind1` varchar(50) DEFAULT NULL,
  `inddesg1` varchar(30) DEFAULT NULL,
  `indnature1` varchar(30) DEFAULT NULL,
  `inddoj1` date DEFAULT NULL,
  `inddor1` date DEFAULT NULL,
  `indreason1` varchar(100) DEFAULT NULL,
  `indcir1` varchar(100) DEFAULT NULL,
  `indkey` int(1) DEFAULT NULL,
  `ot1` varchar(50) DEFAULT NULL,
  `otdesg1` varchar(30) DEFAULT NULL,
  `otnature1` varchar(30) DEFAULT NULL,
  `otdoj1` date DEFAULT NULL,
  `otdor1` date DEFAULT NULL,
  `otreason1` varchar(100) DEFAULT NULL,
  `otcir1` varchar(100) DEFAULT NULL,
  `otkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cse_fac_funpat`
--

CREATE TABLE `cse_fac_funpat` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `titleofpro1` varchar(50) DEFAULT NULL,
  `duration1` varchar(30) DEFAULT NULL,
  `amountsan1` varchar(20) DEFAULT NULL,
  `agency1` varchar(20) DEFAULT NULL,
  `startdate1` date DEFAULT NULL,
  `copiname1` varchar(20) DEFAULT NULL,
  `year1` varchar(7) DEFAULT NULL,
  `order1` varchar(200) NOT NULL,
  `uc1` varchar(200) NOT NULL,
  `funkey` int(1) DEFAULT NULL,
  `nameofpat1` varchar(50) DEFAULT NULL,
  `title1` varchar(30) DEFAULT NULL,
  `fileno1` varchar(20) DEFAULT NULL,
  `pat_cer` varchar(200) NOT NULL,
  `patkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cse_fac_funpat`
--

INSERT INTO `cse_fac_funpat` (`id`, `sid`, `ayear`, `titleofpro1`, `duration1`, `amountsan1`, `agency1`, `startdate1`, `copiname1`, `year1`, `order1`, `uc1`, `funkey`, `nameofpat1`, `title1`, `fileno1`, `pat_cer`, `patkey`) VALUES
(1, 'S01CSE009', '2015-2016', 'Digital Information System for Storage and        ', '2 years', '8,45,000', 'DST-NRDMS', '2016-01-06', 'Dr. D. Swamydoss', '0', '82556-proj1.pdf', '0', 1, NULL, NULL, NULL, '', NULL),
(2, 'S01CSE009', '2018-2019', 'Ontology Driven Meteorology Conceptual Data Dissem', '2 years', '13,06,000', 'ISRO', '2018-06-01', 'Dr. D. Swamydoss', '0', '38349-proj2.pdf', '0', 1, NULL, NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cse_fac_glc`
--

CREATE TABLE `cse_fac_glc` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `gltitle1` varchar(50) DEFAULT NULL,
  `gldays1` int(3) DEFAULT NULL,
  `glfrom1` date NOT NULL,
  `glto1` date NOT NULL,
  `gldate1` date NOT NULL,
  `gltopic1` varchar(50) DEFAULT NULL,
  `glorg1` varchar(50) DEFAULT NULL,
  `glplace1` varchar(50) DEFAULT NULL,
  `glpic1` varchar(100) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL,
  `conname1` varchar(30) DEFAULT NULL,
  `contitle1` varchar(50) DEFAULT NULL,
  `conorg1` varchar(50) DEFAULT NULL,
  `condays1` int(3) DEFAULT NULL,
  `confrom1` date NOT NULL,
  `conto1` date NOT NULL,
  `condate1` date NOT NULL,
  `conlevel1` varchar(20) DEFAULT NULL,
  `conpdf1` varchar(100) DEFAULT NULL,
  `concer1` varchar(100) DEFAULT NULL,
  `conkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cse_fac_glc`
--

INSERT INTO `cse_fac_glc` (`id`, `sid`, `ayear`, `gltitle1`, `gldays1`, `glfrom1`, `glto1`, `gldate1`, `gltopic1`, `glorg1`, `glplace1`, `glpic1`, `glkey`, `conname1`, `contitle1`, `conorg1`, `condays1`, `confrom1`, `conto1`, `condate1`, `conlevel1`, `conpdf1`, `concer1`, `conkey`) VALUES
(1, 'S01CSE009', '2008-2009', 'Computer Science Association Inaugural', 1, '0000-00-00', '0000-00-00', '2008-07-25', 'Operating Systems Concepts', 'St Joseph College', 'Hosur', '0', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL),
(2, 'S01CSE009', '2011-2012', 'National Seminar on Emerging Trends in IT', 1, '0000-00-00', '0000-00-00', '2011-12-21', 'Trends in Computing', 'St Frances De Sales College', 'Bangalore', '0', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL),
(3, 'S01CSE009', '2008-2009', 'Web Technology', 2, '2009-05-20', '2009-05-21', '0000-00-00', 'Web Technology', 'Jayam Engineering College', 'Dharmapuri', '0', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cse_fac_member`
--

CREATE TABLE `cse_fac_member` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `memberid1` varchar(30) DEFAULT NULL,
  `validity1` varchar(20) DEFAULT NULL,
  `pic1` varchar(100) DEFAULT NULL,
  `memkey` int(1) DEFAULT NULL,
  `res1` varchar(50) DEFAULT NULL,
  `level1` varchar(20) DEFAULT NULL,
  `res2` varchar(50) NOT NULL,
  `level2` varchar(20) NOT NULL,
  `res3` varchar(50) NOT NULL,
  `level3` varchar(20) NOT NULL,
  `res4` varchar(50) NOT NULL,
  `level4` varchar(20) NOT NULL,
  `reskey` int(1) DEFAULT NULL,
  `aname1` varchar(50) DEFAULT NULL,
  `aissue1` varchar(10) DEFAULT NULL,
  `amy1` varchar(7) DEFAULT NULL,
  `acer1` varchar(100) DEFAULT NULL,
  `awakey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cse_fac_member`
--

INSERT INTO `cse_fac_member` (`id`, `sid`, `ayear`, `name1`, `memberid1`, `validity1`, `pic1`, `memkey`, `res1`, `level1`, `res2`, `level2`, `res3`, `level3`, `res4`, `level4`, `reskey`, `aname1`, `aissue1`, `amy1`, `acer1`, `awakey`) VALUES
(1, 'S01CSE009', '2007-2008', NULL, NULL, NULL, NULL, NULL, 'HOD-Applied Sciences', 'institute', 'BOS Chairman-Applied Science Board', 'institute', 'BOS Member MCA Board', 'department', '', '', 3, NULL, NULL, NULL, NULL, NULL),
(2, 'S01CSE009', '2008-2009', NULL, NULL, NULL, NULL, NULL, 'HOD-Applied Sciences', 'institute', 'BOS Chairman-Applied Science Board', 'institute', 'BOS Member MCA Board', 'department', '', '', 3, NULL, NULL, NULL, NULL, NULL),
(3, 'S01CSE009', '2009-2010', 'ISTE', '61443', 'Life Member', '16707-iste-pdf.pdf', 1, 'HOD-Applied Sciences', 'institute', 'BOS Chairman-Applied Science Board', 'institute', 'BOS Member MCA Board', 'department', '', '', 3, NULL, NULL, NULL, NULL, NULL),
(4, 'S01CSE009', '2010-2011', NULL, NULL, NULL, NULL, NULL, 'HOD-Applied Sciences', 'institute', 'BOS Chairman-Applied Science Board', 'institute', '', '', '', '', 2, NULL, NULL, NULL, NULL, NULL),
(5, 'S01CSE009', '2011-2012', NULL, NULL, NULL, NULL, NULL, 'HOD-Applied Sciences', 'institute', 'BOS Chairman-Applied Science Board', 'institute', 'BOS Member MCA Board', 'department', 'CSI SB Counselore', 'institute', 4, NULL, NULL, NULL, NULL, NULL),
(6, 'S01CSE009', '2018-2019', NULL, NULL, NULL, NULL, NULL, 'Data Center Incharge', 'institute', 'BOS Member CSE Board', 'department', 'CSI SB Counselore', 'institute', '', '', 3, NULL, NULL, NULL, NULL, NULL),
(7, 'S01CSE009', '2015-2016', 'CSI', 'I0153816', 'Life Time', '17209-csi-member-lilly.pdf', 1, 'Feedback Incharge', 'institute', 'CSI SB Counselore', 'institute', '', '', '', '', 2, NULL, NULL, NULL, NULL, NULL),
(8, 'S01CSE009', '2016-2017', NULL, NULL, NULL, NULL, NULL, 'Feedback Incharge', 'institute', 'CSI SB Counselore', 'institute', '', '', '', '', 2, NULL, NULL, NULL, NULL, NULL),
(9, 'S01CSE009', '2012-2013', NULL, NULL, NULL, NULL, NULL, 'CSI SB Counselore', 'institute', '', '', '', '', '', '', 1, NULL, NULL, NULL, NULL, NULL),
(10, 'S01CSE009', '2013-2014', NULL, NULL, NULL, NULL, NULL, 'CSI SB Counselore', 'institute', '', '', '', '', '', '', 1, NULL, NULL, NULL, NULL, NULL),
(11, 'S01CSE009', '2014-2015', NULL, NULL, NULL, NULL, NULL, 'CSI SB Counselore', 'institute', '', '', '', '', '', '', 1, NULL, NULL, NULL, NULL, NULL),
(12, 'S01CSE009', '2017-2018', NULL, NULL, NULL, NULL, NULL, 'CSI SB Counselore', 'institute', '', '', '', '', '', '', 1, NULL, NULL, NULL, NULL, NULL),
(13, 'S11CSE010', '2018-2019', 'ACM', '4742134', '1', '34167-acm-mem-detail.pdf', 1, 'PLACEMENT COORDINATOR', 'department', '', '', '', '', '', '', 1, NULL, NULL, NULL, NULL, NULL),
(14, 'S11CSE010', '2011-2012', 'International Association of Engineers (IAENG) ', '113210', '50', '87856-iaeng_membership_113210.pdf', 1, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'S11CSE010', '2014-2015', 'Institution of Engineers (IE)', 'AM 158872-1', '50', '43415-ie-membership.pdf', 1, NULL, NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cse_fac_ot_qual`
--

CREATE TABLE `cse_fac_ot_qual` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) NOT NULL,
  `name_qual` varchar(50) NOT NULL,
  `year_com` int(10) NOT NULL,
  `cer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cse_fac_resg`
--

CREATE TABLE `cse_fac_resg` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `supid` varchar(20) DEFAULT NULL,
  `numsch` int(2) NOT NULL,
  `reg` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` varchar(10) NOT NULL,
  `cyear` varchar(20) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `tit` varchar(100) NOT NULL,
  `j_sup` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cse_fac_resg`
--

INSERT INTO `cse_fac_resg` (`id`, `sid`, `uname`, `supid`, `numsch`, `reg`, `name`, `year`, `cyear`, `spec`, `tit`, `j_sup`) VALUES
(1, 'S01CSE009', 'Anna University', '3140003', 0, '10900132058', 'Latha Shanmugam', '2012', '2014', 'Software Reliability', 'ENHANCED ANT COLONY OPTIMIZATION ALGORITHM FOR PARAMETER ESTIMATION METHOD IN SOFTWARE RELIABILITY M', NULL),
(2, 'S01CSE009', 'Periyar University', '05670', 0, '089', 'D. Santhi Jeslet', '2014', 'discontinued', 'Data Mining', 'Recommeder System Using Data Mining Techniques', NULL),
(3, 'S01CSE009', 'Periyar University', '05670', 0, '099', 'Dhina Suresh', '2014', 'ongoing', 'Cloud Computing', 'Enhanced Secure Sharing of Personal Health Records in Cloud using Multi Authority Attribute Based En', NULL),
(4, 'S01CSE009', 'Bharathiyar University', '2012', 0, '0230', 'R. Jayanthi', '2012', 'ongoing', 'Software Engineering', 'SOFTWARE DEFECT PREDICTION USING   METRICS BASED  ON  MACHINE  LEARNING TECHNIQUES', NULL),
(5, 'S01CSE009', 'Bharathiyar University', '2012', 0, '0236', 'Manjula C', '2012', 'ongoing', 'Software Engineering', 'SOFTWARE DEFECT PREDICTION USING DEEP LEARNING TECHNIQUES', NULL),
(6, 'S01CSE009', 'Bharathiyar University', '2012', 0, '0355', 'Raja K', '2012', 'ongoing', 'Network Security', '', NULL),
(7, 'S01CSE009', 'Bharathiyar University', '2012', 0, '', '', '', 'discontinued', '', '', NULL);

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
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `id` int(30) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `deptid` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `create_at` datetime NOT NULL,
  `is_expired` int(11) NOT NULL,
  `about` varchar(3000) NOT NULL,
  `image` varchar(100) NOT NULL,
  `memberkey` int(3) NOT NULL,
  `funprokey` int(3) NOT NULL,
  `pattkey` int(3) NOT NULL,
  `respkey` int(3) NOT NULL,
  `collegekey` int(3) NOT NULL,
  `polikey` int(3) NOT NULL,
  `schokey` int(3) NOT NULL,
  `indukey` int(3) NOT NULL,
  `otkey` int(3) NOT NULL,
  `attenkey` int(3) NOT NULL,
  `orgakey` int(3) NOT NULL,
  `gueskey` int(3) NOT NULL,
  `connkey` int(3) NOT NULL,
  `bookkey` int(3) NOT NULL,
  `jrnlkey` int(3) NOT NULL,
  `awakey` int(3) DEFAULT NULL,
  `orgkey` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`id`, `dept`, `deptid`, `email`, `username`, `password`, `otp`, `create_at`, `is_expired`, `about`, `image`, `memberkey`, `funprokey`, `pattkey`, `respkey`, `collegekey`, `polikey`, `schokey`, `indukey`, `otkey`, `attenkey`, `orgakey`, `gueskey`, `connkey`, `bookkey`, `jrnlkey`, `awakey`, `orgkey`) VALUES
(53, 'Duplicate', 'vMC', 'lilly_swamy@yahoo.co.in', 'vmcahod', '4321', '268737', '2019-04-11 10:42:39', 1, '	  ;oigoidfgvdrioh ', '53852-mca.png', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(54, 'Duplicate1', 'vv', 'vijoad661@gmail.com', 'vv', '123', '540663', '2019-04-11 13:47:36', 1, '	ftyhtfcyh   ', '63542-mca.png', 1, 2, 1, 1, 1, 4, 1, 1, 2, 1, 1, 1, 1, 1, 1, 2, 1),
(55, 'Master Of Computer Application', 'MCA', 'hod_mca@adhiyamaan.ac.in', 'mca', '1111', '831330', '2019-04-08 15:04:52', 1, '	   This is for MCA', '8506-mca.png', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(56, 'Computer Science And Engineering', 'CSE', 'hod_cse@adhiyamaan.ac.in', 'cse', '1111', '', '0000-00-00 00:00:00', 0, '	   This is For CSE', '26773-cse.png', 1, 1, 1, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(57, 'Information Technology', 'BIT', 'hod_it@adhiyamaan.ac.in', 'bit', '1111', '456956', '2019-04-11 13:58:43', 1, '	   This is for IT', '93347-it.png', 2, 1, 1, 3, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1),
(58, 'Electronics and Instrumentation Engineering', 'EIE', 'hod_eie@adhiyamaan.ac.in', 'eie', '1111', '411523', '2019-04-08 14:24:15', 1, '	   This is for EIE ', '29308-beeie.png', 3, 1, 1, 4, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1),
(59, 'Biomedical Engineering ', 'BME', 'hod_bme@adhiyamaan.ac.in', 'bme', '1111', '', '0000-00-00 00:00:00', 0, '	   This is for BME ', '15792-biomed.png', 1, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(60, 'Aeronautical Engineering Department', 'AER', 'hod_aero@adhiyamaan.ac.in', 'aer', '1122', '', '0000-00-00 00:00:00', 0, '	   This is  Aeronautical Engineering.....', '59998-aer.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(61, 'Physics', 'PHY', 'hod_phy@adhiyamaan.ac.in', 'phy', '1122', '', '0000-00-00 00:00:00', 0, '	   This is phyics Department....', '25259-phyices.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(62, 'Chemistry', 'CHE', 'hod_che@adhiyamaan.ac.in', 'che', '1122', '719630', '2019-04-10 12:26:09', 1, '	  This is chemistry Department....', '67634-chemistry.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(63, 'Maths', 'MAT', 'hod_maths@adhiyamaan.ac.in', 'mat', '1122', '', '0000-00-00 00:00:00', 0, '	   This is maths Department......', '55694-maths.png', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(64, 'English', 'ENG', 'hod_english@adhiyamaan.ac.in', 'eng', '1122', '', '0000-00-00 00:00:00', 0, '	   This is English Department...', '70513-english.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(65, 'Electronics and Communication Engineering', 'ECE', 'hod_ece@adhiyamaan.ac.in', 'ece', '1122', '381740', '2019-04-10 13:08:44', 1, '      This is Electronics and Communication Engineering Department.........', '10784-beece.png', 1, 1, 1, 9, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1),
(66, 'Electrical and Electronics Engineering ', 'EEE', 'hod_eee@adhiyamaan.ac.in', 'eee', '1452', '', '0000-00-00 00:00:00', 0, '	   This is Electrical and Electronics Engineering Department', '83440-eee.jpg', 1, 1, 1, 2, 5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(67, 'Chemical Engineering ', 'CHM', 'hod_chem@adhiyamaan.ac.in', 'chm', '9856', '', '0000-00-00 00:00:00', 0, '	This is for Chemical Engineering Department', '21671-chm.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(68, 'Biotechnology', 'BIO', 'hod_bt@adhiyamaan.ac.in', 'bio', '7854', '236793', '2019-04-11 10:43:04', 1, '	   This is Biotechnology Department', '65775-bio.jpg', 2, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(69, 'Mechanical Engineering', 'MEC', 'hod_mech@adhiyamaan.ac.in', 'mec', '4561', '564781', '2019-04-10 16:12:31', 1, '	   This is for Mechanical Engineering Department', '6825-m2.jpg', 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(70, 'Civil Engineering', 'CIV', 'hod_civil@adhiyamaan.ac.in', 'civ', '7532', '', '0000-00-00 00:00:00', 0, '	 This is for Civil Engineering Department  ', '74415-civ.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(71, 'Architecture Engineering', 'ARC', 'hod_arch@adhiyamaan.ac.in', 'arc', '4862', '', '0000-00-00 00:00:00', 0, '	 This is for Architecture Engineering Department  ', '11584-arc.jpg', 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(72, 'Duplicate2', 'DUP', 'vijoad661@gmail.com', 'dup', '1234', '540663', '2019-04-11 13:47:36', 1, '	   erstserty', '24928-bg1.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(73, 'Master of Business Administration', 'MBA', 'hod_mba@adhiyamaan.ac.in', 'mba', '5555', '324150', '2019-04-10 09:32:16', 1, '	   This MBA Department', '68375-mba.png', 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(74, 'Master of Business Administration', 'MBA', 'hod_mba@adhiyamaan.ac.in', 'mba', '5555', '324150', '2019-04-10 09:32:16', 1, '	   This MBA Department', '86432-mba.png', 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(75, 'Master of Business Administration', 'MBA', 'hod_mba@adhiyamaan.ac.in', 'mbahod', '4444', '324150', '2019-04-10 09:32:16', 1, 'This is for MBA Department	   ', '9008-mba.png', 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

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
  `branch3` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept_info`
--

INSERT INTO `dept_info` (`id`, `dept`, `year1`, `name1`, `branch1`, `year2`, `name2`, `branch2`, `year3`, `name3`, `branch3`) VALUES
(1, 'vv', '1987-1988', 'BE', 'arc', '1992-1993', 'arc', 'arc', '2006-2007', 'Ph.D.', 'CSE'),
(2, 'MCA', NULL, NULL, NULL, '1995-1996', 'MCA', 'MCA', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dup_fac`
--

CREATE TABLE `dup_fac` (
  `sid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `age` int(4) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob1` bigint(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `mstatus` varchar(5) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `relegion` varchar(30) NOT NULL,
  `comunity` varchar(10) NOT NULL,
  `place` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `aadharno` bigint(12) NOT NULL,
  `panno` varchar(10) NOT NULL,
  `passport` varchar(20) DEFAULT NULL,
  `blood` varchar(5) NOT NULL,
  `doj` date NOT NULL,
  `designation` varchar(50) NOT NULL,
  `mob2` bigint(10) DEFAULT NULL,
  `dept` varchar(50) NOT NULL,
  `uploadpic` varchar(100) NOT NULL,
  `aadharpic` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `dor` date DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `app_order` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dup_fac_attorg`
--

CREATE TABLE `dup_fac_attorg` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `attcategory1` varchar(20) DEFAULT NULL,
  `atttitle1` varchar(50) DEFAULT NULL,
  `attdays1` int(3) DEFAULT NULL,
  `attfrom1` date NOT NULL,
  `attto1` date NOT NULL,
  `attdate1` date NOT NULL,
  `attorg1` varchar(50) DEFAULT NULL,
  `attplace1` varchar(50) DEFAULT NULL,
  `attlevel1` varchar(20) DEFAULT NULL,
  `attcer1` varchar(100) DEFAULT NULL,
  `attkey` int(1) DEFAULT NULL,
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
-- Table structure for table `dup_fac_bkjrn`
--

CREATE TABLE `dup_fac_bkjrn` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `bk1` varchar(20) DEFAULT NULL,
  `bkcha1` varchar(50) DEFAULT NULL,
  `bkissn1` varchar(20) DEFAULT NULL,
  `bkmy1` varchar(7) DEFAULT NULL,
  `bkpub1` varchar(50) DEFAULT NULL,
  `bktype1` varchar(50) DEFAULT NULL,
  `bkkey` int(1) DEFAULT NULL,
  `jrntitle1` varchar(100) DEFAULT NULL,
  `jrnname1` varchar(50) DEFAULT NULL,
  `jrnvol1` varchar(20) DEFAULT NULL,
  `jrnissue1` varchar(20) DEFAULT NULL,
  `jrnissn1` varchar(20) DEFAULT NULL,
  `jrncategory1` varchar(20) DEFAULT NULL,
  `jrnlink1` varchar(100) DEFAULT NULL,
  `jrncit1` varchar(30) DEFAULT NULL,
  `jrnpdf1` varchar(100) DEFAULT NULL,
  `jrnimpact1` int(10) DEFAULT NULL,
  `jrnkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dup_fac_edu`
--

CREATE TABLE `dup_fac_edu` (
  `sid` varchar(30) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `sboard` varchar(10) DEFAULT NULL,
  `syear` int(4) DEFAULT NULL,
  `spercentage` int(4) DEFAULT NULL,
  `scertificate` varchar(100) DEFAULT NULL,
  `skey` int(1) DEFAULT NULL,
  `s2name` varchar(50) DEFAULT NULL,
  `s2board` varchar(10) DEFAULT NULL,
  `s2branch` varchar(50) DEFAULT NULL,
  `s2year` int(4) DEFAULT NULL,
  `s2percentage` int(4) DEFAULT NULL,
  `s2certificate` varchar(100) DEFAULT NULL,
  `s2key` int(1) DEFAULT NULL,
  `dname` varchar(50) DEFAULT NULL,
  `dboard` varchar(10) DEFAULT NULL,
  `ddegree` varchar(50) DEFAULT NULL,
  `dmode` varchar(10) DEFAULT NULL,
  `dyear` int(4) DEFAULT NULL,
  `dpercentage` int(4) DEFAULT NULL,
  `dcertificate` varchar(100) DEFAULT NULL,
  `dkey` int(1) DEFAULT NULL,
  `d1name` varchar(50) DEFAULT NULL,
  `d1board` varchar(10) DEFAULT NULL,
  `d1degree` varchar(50) DEFAULT NULL,
  `d1mode` varchar(10) DEFAULT NULL,
  `d1year` int(4) DEFAULT NULL,
  `d1percentage` int(4) DEFAULT NULL,
  `d1certificate` varchar(100) DEFAULT NULL,
  `d1key` int(1) DEFAULT NULL,
  `d2name` varchar(50) DEFAULT NULL,
  `d2board` varchar(10) DEFAULT NULL,
  `d2degree` varchar(50) DEFAULT NULL,
  `d2mode` varchar(10) DEFAULT NULL,
  `d2year` int(4) DEFAULT NULL,
  `d2percentage` int(4) DEFAULT NULL,
  `d2certificate` varchar(100) DEFAULT NULL,
  `d2key` int(1) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `uuniversity` varchar(50) DEFAULT NULL,
  `udegree` varchar(50) DEFAULT NULL,
  `ubranch` varchar(50) DEFAULT NULL,
  `umode` varchar(10) DEFAULT NULL,
  `uyear` int(4) DEFAULT NULL,
  `upercentage` int(4) DEFAULT NULL,
  `ucertificate` varchar(100) DEFAULT NULL,
  `ukey` int(1) DEFAULT NULL,
  `u1name` varchar(50) DEFAULT NULL,
  `u1university` varchar(50) DEFAULT NULL,
  `u1degree` varchar(50) DEFAULT NULL,
  `u1branch` varchar(50) DEFAULT NULL,
  `u1mode` varchar(10) DEFAULT NULL,
  `u1year` int(4) DEFAULT NULL,
  `u1percentage` int(4) DEFAULT NULL,
  `u1certificate` varchar(100) DEFAULT NULL,
  `u1key` int(1) DEFAULT NULL,
  `u2name` varchar(50) DEFAULT NULL,
  `u2university` varchar(50) DEFAULT NULL,
  `u2degree` varchar(50) DEFAULT NULL,
  `u2branch` varchar(50) DEFAULT NULL,
  `u2mode` varchar(10) DEFAULT NULL,
  `u2year` int(4) DEFAULT NULL,
  `u2percentage` int(4) DEFAULT NULL,
  `u2certificate` varchar(100) DEFAULT NULL,
  `u2key` int(1) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `puniversity` varchar(50) DEFAULT NULL,
  `pdegree` varchar(50) DEFAULT NULL,
  `pbranch` varchar(50) DEFAULT NULL,
  `pmode` varchar(10) DEFAULT NULL,
  `pyear` int(4) DEFAULT NULL,
  `ppercentage` int(4) DEFAULT NULL,
  `pcertificate` varchar(100) DEFAULT NULL,
  `pkey` int(1) DEFAULT NULL,
  `p1name` varchar(50) DEFAULT NULL,
  `p1university` varchar(50) DEFAULT NULL,
  `p1degree` varchar(50) DEFAULT NULL,
  `p1branch` varchar(50) DEFAULT NULL,
  `p1mode` varchar(10) DEFAULT NULL,
  `p1year` int(4) DEFAULT NULL,
  `p1percentage` int(4) DEFAULT NULL,
  `p1certificate` varchar(100) DEFAULT NULL,
  `p1key` int(1) DEFAULT NULL,
  `p2name` varchar(50) DEFAULT NULL,
  `p2university` varchar(50) DEFAULT NULL,
  `p2degree` varchar(50) DEFAULT NULL,
  `p2branch` varchar(50) DEFAULT NULL,
  `p2mode` varchar(10) DEFAULT NULL,
  `p2year` int(4) DEFAULT NULL,
  `p2percentage` int(4) DEFAULT NULL,
  `p2certificate` varchar(100) DEFAULT NULL,
  `p2key` int(1) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `muniversity` varchar(50) DEFAULT NULL,
  `mspec` varchar(50) DEFAULT NULL,
  `mbranch` varchar(50) DEFAULT NULL,
  `mmode` varchar(10) DEFAULT NULL,
  `myear` int(4) DEFAULT NULL,
  `mpercentage` int(4) DEFAULT NULL,
  `mthesis` varchar(50) DEFAULT NULL,
  `mguide` varchar(30) DEFAULT NULL,
  `mcertificate` varchar(100) DEFAULT NULL,
  `mkey` int(1) DEFAULT NULL,
  `phname` varchar(50) DEFAULT NULL,
  `phuniversity` varchar(50) DEFAULT NULL,
  `phspec` varchar(50) DEFAULT NULL,
  `phbranch` varchar(50) DEFAULT NULL,
  `phmode` varchar(10) DEFAULT NULL,
  `phyreg` varchar(7) DEFAULT NULL,
  `phyear` varchar(7) DEFAULT NULL,
  `phthesis` varchar(100) DEFAULT NULL,
  `phguide` varchar(30) DEFAULT NULL,
  `phcertificate` varchar(100) DEFAULT NULL,
  `phkey` int(1) DEFAULT NULL,
  `ph1name` varchar(50) DEFAULT NULL,
  `ph1university` varchar(50) DEFAULT NULL,
  `ph1spec` varchar(50) DEFAULT NULL,
  `ph1branch` varchar(50) DEFAULT NULL,
  `ph1mode` varchar(10) DEFAULT NULL,
  `ph1yreg` varchar(7) DEFAULT NULL,
  `ph1year` varchar(7) DEFAULT NULL,
  `ph1thesis` varchar(100) DEFAULT NULL,
  `ph1guide` varchar(30) DEFAULT NULL,
  `ph1certificate` varchar(100) DEFAULT NULL,
  `ph1key` int(1) DEFAULT NULL,
  `ph2name` varchar(50) DEFAULT NULL,
  `ph2university` varchar(50) DEFAULT NULL,
  `ph2spec` varchar(50) DEFAULT NULL,
  `ph2branch` varchar(50) DEFAULT NULL,
  `ph2mode` varchar(10) DEFAULT NULL,
  `ph2yreg` varchar(7) DEFAULT NULL,
  `ph2year` varchar(7) DEFAULT NULL,
  `ph2thesis` varchar(100) DEFAULT NULL,
  `ph2guide` varchar(30) DEFAULT NULL,
  `ph2certificate` varchar(100) DEFAULT NULL,
  `ph2key` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dup_fac_exp`
--

CREATE TABLE `dup_fac_exp` (
  `sid` varchar(30) NOT NULL,
  `clg1` varchar(50) DEFAULT NULL,
  `clgdesg1` varchar(30) DEFAULT NULL,
  `clgdoj1` date DEFAULT NULL,
  `clgdor1` date DEFAULT NULL,
  `clgreason1` varchar(100) DEFAULT NULL,
  `clgcir1` varchar(100) DEFAULT NULL,
  `clgkey` int(1) DEFAULT NULL,
  `pol1` varchar(50) DEFAULT NULL,
  `poldesg1` varchar(30) DEFAULT NULL,
  `poldoj1` date DEFAULT NULL,
  `poldor1` date DEFAULT NULL,
  `polreason1` varchar(100) DEFAULT NULL,
  `polcir1` varchar(100) DEFAULT NULL,
  `polkey` int(1) DEFAULT NULL,
  `sch1` varchar(50) DEFAULT NULL,
  `schdesg1` varchar(30) DEFAULT NULL,
  `schdoj1` date DEFAULT NULL,
  `schdor1` date DEFAULT NULL,
  `schreason1` varchar(100) DEFAULT NULL,
  `schcir1` varchar(100) DEFAULT NULL,
  `schkey` int(1) DEFAULT NULL,
  `ind1` varchar(50) DEFAULT NULL,
  `inddesg1` varchar(30) DEFAULT NULL,
  `indnature1` varchar(30) DEFAULT NULL,
  `inddoj1` date DEFAULT NULL,
  `inddor1` date DEFAULT NULL,
  `indreason1` varchar(100) DEFAULT NULL,
  `indcir1` varchar(100) DEFAULT NULL,
  `indkey` int(1) DEFAULT NULL,
  `ot1` varchar(50) DEFAULT NULL,
  `otdesg1` varchar(30) DEFAULT NULL,
  `otnature1` varchar(30) DEFAULT NULL,
  `otdoj1` date DEFAULT NULL,
  `otdor1` date DEFAULT NULL,
  `otreason1` varchar(100) DEFAULT NULL,
  `otcir1` varchar(100) DEFAULT NULL,
  `otkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dup_fac_funpat`
--

CREATE TABLE `dup_fac_funpat` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `titleofpro1` varchar(50) DEFAULT NULL,
  `duration1` varchar(30) DEFAULT NULL,
  `amountsan1` varchar(20) DEFAULT NULL,
  `agency1` varchar(20) DEFAULT NULL,
  `startdate1` date DEFAULT NULL,
  `copiname1` varchar(20) DEFAULT NULL,
  `year1` varchar(7) DEFAULT NULL,
  `order1` varchar(200) DEFAULT NULL,
  `uc1` varchar(200) DEFAULT NULL,
  `funkey` int(1) DEFAULT NULL,
  `nameofpat1` varchar(50) DEFAULT NULL,
  `title1` varchar(30) DEFAULT NULL,
  `fileno1` varchar(20) DEFAULT NULL,
  `pat_cer1` varchar(200) DEFAULT NULL,
  `patkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dup_fac_glc`
--

CREATE TABLE `dup_fac_glc` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `gltitle1` varchar(50) DEFAULT NULL,
  `gldays1` int(3) DEFAULT NULL,
  `glfrom1` date NOT NULL,
  `glto1` date NOT NULL,
  `gldate1` date NOT NULL,
  `gltopic1` varchar(50) DEFAULT NULL,
  `glorg1` varchar(50) DEFAULT NULL,
  `glplace1` varchar(50) DEFAULT NULL,
  `glpic1` varchar(100) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL,
  `conname1` varchar(30) DEFAULT NULL,
  `contitle1` varchar(50) DEFAULT NULL,
  `conorg1` varchar(50) DEFAULT NULL,
  `condays1` int(3) DEFAULT NULL,
  `confrom1` date NOT NULL,
  `conto1` date NOT NULL,
  `condate1` date NOT NULL,
  `conlevel1` varchar(20) DEFAULT NULL,
  `conpdf1` varchar(100) DEFAULT NULL,
  `concer1` varchar(100) DEFAULT NULL,
  `conkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dup_fac_member`
--

CREATE TABLE `dup_fac_member` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `memberid1` varchar(30) DEFAULT NULL,
  `validity1` varchar(20) DEFAULT NULL,
  `pic1` varchar(100) DEFAULT NULL,
  `memkey` int(1) DEFAULT NULL,
  `res1` varchar(50) DEFAULT NULL,
  `level1` varchar(20) DEFAULT NULL,
  `reskey` int(1) DEFAULT NULL,
  `aname1` varchar(50) DEFAULT NULL,
  `aissue1` varchar(10) DEFAULT NULL,
  `amy1` varchar(7) DEFAULT NULL,
  `acer1` varchar(100) DEFAULT NULL,
  `awakey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dup_fac_ot_qual`
--

CREATE TABLE `dup_fac_ot_qual` (
  `id` int(5) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `name_qual` varchar(100) DEFAULT NULL,
  `year_com` int(10) DEFAULT NULL,
  `cer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dup_fac_resg`
--

CREATE TABLE `dup_fac_resg` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `supid` varchar(20) DEFAULT NULL,
  `numsch` int(2) NOT NULL,
  `reg` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` varchar(10) NOT NULL,
  `cyear` varchar(20) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `tit` varchar(100) NOT NULL
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
-- Table structure for table `ece_fac`
--

CREATE TABLE `ece_fac` (
  `sid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `age` int(4) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob1` bigint(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `mstatus` varchar(5) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `relegion` varchar(30) NOT NULL,
  `comunity` varchar(10) NOT NULL,
  `place` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `aadharno` bigint(12) NOT NULL,
  `panno` varchar(10) NOT NULL,
  `passport` varchar(20) DEFAULT NULL,
  `blood` varchar(5) NOT NULL,
  `doj` date NOT NULL,
  `designation` varchar(50) NOT NULL,
  `mob2` bigint(10) DEFAULT NULL,
  `dept` varchar(50) NOT NULL,
  `uploadpic` varchar(100) NOT NULL,
  `aadharpic` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `dor` date DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `app_order` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ece_fac`
--

INSERT INTO `ece_fac` (`sid`, `name`, `dob`, `age`, `gender`, `email`, `mob1`, `fname`, `mname`, `mstatus`, `sname`, `relegion`, `comunity`, `place`, `city`, `district`, `state`, `country`, `pincode`, `address`, `paddress`, `aadharno`, `panno`, `passport`, `blood`, `doj`, `designation`, `mob2`, `dept`, `uploadpic`, `aadharpic`, `password`, `status`, `dor`, `reason`, `app_order`) VALUES
('S01ECE016', 'MENAKADEVI T', '1976-03-01', 43, 'female', 'menaka_sar@rediffmail.com', 9629350444, 'P.THANGAVELU', 'T.MANIMEKALAI', 'y', '', 'Hindu', 'OC', 'Hosur', 'Hosur', 'Krishnagiri', 'Tamil Nadu', 'India', '635109', 'Dr MGR Nagar, Adhiyamaan College of Engineering, Hosur, Krishnagiri - Dt, Tamil nadu', 'Plot#29 Golden City, Tottagiri raod,\r\nAlasanatham , Hosur', 346094889030, 'AQJPM7196E', '', 'B+', '2001-06-22', 'Professor', 9894445988, 'ECE', '80968-menaka-photo.jpg', '2044-menaka--adhar-new1.pdf', '9030', NULL, NULL, NULL, NULL),
('S01ECE018', 'S SUMATHI', '1973-07-31', 46, 'female', 'sumathi_2005@rediffmail.com', 9487819151, 'D APPRANCHI', 'G VIMALA', 'y', '', 'HINDU', 'BC', 'KRISHNAGIRI', 'KRISNAGIRI', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635001', '2/280,MANGAI NAGAR,\r\n			 KATTIGANAPALLI(po),\r\n			  KEEL PUDUR,\r\n			  KRISHNAGIRI \r\n   ', '2/280,MANGAI NAGAR,\r\n			 KATTIGANAPALLI(po),\r\n			  KEEL PUDUR,\r\n			  KRISHNAGIRI \r\n   ', 568728350822, 'AZXPS4281M', '', 'O POS', '2001-06-21', 'PROFESSOR AND HEAD', 0, 'ECE', '35472-dr.sumathi-photo.jpeg', '48564-dr.s.sumathi.pdf', '0822', NULL, NULL, NULL, '21170-experience-ace.pdf'),
('S09ECE013', 'M ASHOKKUMAR ', '1982-05-17', 37, 'male', 'ashokkumar.ece@adhiyamaan.in', 9488975593, 'B MUNIRAJ', 'M RANI', 'y', '', 'HINDU', 'BC', 'Bodinayakkanahalli', 'HOSUR', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635116', 'Bodinayakkanahalli, Odiyandahalli(P.O),\r\nDenkanikottai(T.K),\r\nKrishnagiri(D.T)\r\n635116.', 'Bodinayakkanahalli, Odiyandahalli(P.O),\r\nDenkanikottai(T.K),\r\nKrishnagiri(D.T)\r\n635116.	   ', 870539246066, 'ANXPA5474C', '', 'B+ve', '2009-07-01', 'ASSISTANT PROFESSOR', 8695697989, 'ECE', '88754-ashok-photo.jpg', '52720-ashok-aadhar.pdf', '6066', NULL, NULL, NULL, NULL),
('S09ECE015', 'S VIJAY MURUGAN', '1983-05-16', 36, 'male', 'vijaymuruganeee@gmail.com', 9443242295, 'S SIVAGNANAM', 'A MAHESWARI', 'y', '', 'HINDU', 'BC', 'AMMAPET COLONY', 'SALEM', 'SALEM', 'Tamil Nadu', 'India', '636014', '1/588 ISWARYA ILLAM\r\nVISHNU STREET 2ND CROSS\r\nMOOKANDAPALLI\r\nHOSUR	   ', '42/5/38, KAMARAJAR NAGAR COLONY\r\n2ND STREET\r\nSALEM - 636014	   ', 699685842918, 'ALLPV3040K', '', ' O +v', '2009-06-22', 'Assistant Professor', 0, 'ECE', '85871-s-vijay-murugan.jpg', '39655-aadar.pdf', '1431984REN', NULL, NULL, NULL, '92492-appointment-letter.pdf'),
('S09ECE019', 'M.SIVAKUMAR', '1974-05-20', 45, 'male', 'andhimaalai@gmail.com', 9698088338, 'S MURUGESAN', 'G JAYALAKSHMI', 'y', '', 'HINDU', 'BC', 'HOSUR', 'HOSUR', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635126', '2/919,6th Cross,Gandhi Nagar, SIPCOT (PO),Mookandapalli, Hosur-635126   ', '2/919,6th Cross,Gandhi Nagar, SIPCOT (PO),Mookandapalli, Hosur-635126   ', 532530743144, 'ASMPS4228C', '', 'B+ve', '2009-06-22', 'Associate professor', 9442093888, 'ECE', '70246-photo(1).jpg', '18877-sivakumar-aadhaar.pdf', '3144', NULL, NULL, NULL, NULL),
('S10ECE005', 'K RAJESH KUMAR', '1987-03-10', 32, 'male', 'rajeshmadesh@gmail.com', 8838252760, 'M KALAIPANDIYAN', 'M KARPAGGAM', 'y', '', 'HINDU', 'BC', 'KRISHNAGIRI', 'KRISHNAGIRI', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635001', '2/57B, PARIS NAGAR, NEAR TAMILNDU HOTEL, KRISHNAGIRI	   ', '2/57B, PARIS NAGAR, NEAR TAMILNDU HOTEL, KRISHNAGIRI	   ', 251621472904, 'AOJPR2876N', '', 'A +ve', '2010-06-15', 'Assistant Professor', 9944372324, 'ECE', '83465-photo-raje-1.jpg', '76949-aadhar-rajesh.pdf', '2904', NULL, NULL, NULL, '47425-ap-rk.pdf'),
('S10ECE012', 'ShanthaLakshmi K', '1976-01-15', 43, 'female', 'shrobsen@gmail.com', 9786980123, 'Krishnasamy T A', 'Jayalakshmi K', 'y', '', 'HINDU', 'OBC', 'Dharmapuri', 'DHARMAPURI', 'DHARMAPURI', 'Tamil Nadu', 'India', '636701', '	225,Gandhi nagar\r\nFifth cross   Dharmapuri', '	225,Gandhi nagar\r\nFifth cross   Dharmapuri', 262608188798, 'BQKPS8155B', '', ' O+ve', '2010-06-12', 'Assistant Professor', 8248148489, 'ECE', '39481-000_6708.jpg', '2812-shantha-lakshmi-adharcard-.pdf.pdf', '8798', NULL, NULL, NULL, NULL),
('S10ECE017', 'POOVENDRAN R', '1981-06-12', 38, 'male', 'poovendranr@gmail.com', 8248149060, 'PS RAMAN', 'R THERASAMMAL', 'y', '', 'HINDU', 'OBC', 'CUMBUM', 'THENI', 'THENI', 'Tamil Nadu', 'India', '625521', '	171/w2 Cumbum theni Dt   ', '	171/w2 Cumbum theni Dt   ', 451917241525, 'AXWPP4399N', '', ' O-ve', '2010-06-11', 'Assistant Professor', 0, 'ECE', '46909-poovendran.jpg', '8683-aadhar-poovendran.pdf', '1525', NULL, NULL, NULL, NULL),
('S11ECE006', 'MARTIN JOEL RATHNAM', '1986-08-09', 33, 'male', 'martinjoelrathnam@gmail.com', 9578025467, 'M SUSAI RATHINAM', 'JULIE PHILOMENA BARNABAS', 'y', '', 'CHRISTIAN', 'OBC', 'BYATRAYANAPURA', 'BANGALORE', 'BANGALORE', 'Karnataka', 'India', '560026', 'NO 18, 9TH CROSS GANAPATHY NAGAR, HOSEKEREHALLI MAIN ROAD BYATRAYANAPURA, BANGALORE	   ', 'NO 18, 9TH CROSS GANAPATHY NAGAR, HOSEKEREHALLI MAIN ROAD BYATRAYANAPURA, BANGALORE	   ', 695954666270, 'BBYPR7213N', '', 'B -VE', '2011-12-07', 'Assistant Professor', 0, 'ECE', '98070-martin.jpg', '20899-martin-aadhar.pdf', '6270', NULL, NULL, NULL, NULL),
('S11ECE007', 'N.NAGARAJU', '1987-06-02', 32, 'male', 'nnagaece@gmail.com', 9003620285, 'NARAYANAPPA', 'DEVIRAMMA', 'n', '', 'HINDU', 'BC', 'KOTHAGONDAPALLY', 'HOSUR', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635109', '	   S/O D.NARAYANAPPA,\r\n1/105-KOTHAGONDAPALLY(VILL AND PO)\r\nHOSUR-635109,\r\nKRISHNAGIRI(DIST)', '	   S/O D.NARAYANAPPA,\r\n1/105-KOTHAGONDAPALLY(VILL AND PO)\r\nHOSUR-635109,\r\nKRISHNAGIRI(DIST)', 959521195648, 'ANQPN0801R', '', 'O+ve', '2011-07-04', 'ASSISTANT PROFESSOR', 0, 'ECE', '78281-naga-photo.jpg', '77402-naga-adhar-card.pdf', '5648', NULL, NULL, NULL, '46218-naga-appoint.pdf'),
('S12ECE001', 'J.Subhash', '1989-03-12', 30, 'male', 'jsubhash12@gmail.com', 9894896043, 'K.JAYAKUMAR', 'R.BIRUNTHA', 'n', '', 'Hindu', 'BC', 'THIRUKOVILUR', 'THIRUKOVILUR', 'Villupuram', 'Tamil Nadu', 'India', '605757', '	   16/10 THEPPAKULLA STREET\r\n', '	   16/10 THEPPAKULLA STREET\r\n', 797242618910, 'DNAPS0526P', '', 'A1-', '2012-11-26', 'Assistant Professor', 9486553837, 'ECE', '88728-photo-subhash.jpg', '60891-subhash-aadhar.pdf', '8910', NULL, NULL, NULL, NULL),
('S12ECE008', 'A P NITHYAPRIYA', '1989-11-03', 30, 'female', 'nithyapriyadpi@gmail.com', 9790761049, 'M PALANISAMY', 'V PARVATHI', 'n', '', 'HINDU', 'OBC', 'DHARMAPURI', 'DHARMAPURI', 'DHARMAPURI', 'Tamil Nadu', 'India', '636807', '	3/99 THROUPATHI AMMAN KOVIL STREET, ADHIYAMANKOTTAI   ', '	3/99 THROUPATHI AMMAN KOVIL STREET, ADHIYAMANKOTTAI   ', 439517052320, 'ARTPN2912J', '', 'O+ve', '2012-11-26', 'Assistant Professor', 0, 'ECE', '12902-nithya-photo1.jpg', '10889-nithya-aadhaar.pdf', '2320', NULL, NULL, NULL, NULL),
('S13ECE003', 'P MANIVANNAN', '1989-05-21', 30, 'male', 'manivannanece2013@gmail.com', 9597386392, 'M PALANIVEL', 'P RAJAMAL', 'y', '', 'HINDU', 'BC', 'HARUR', 'HARUR', 'DHARMAPURI', 'Tamil Nadu', 'India', '636903', '4/244, VIJAYA NAGAR\r\nCHINNANKUPPAM POST\r\nHARUR TK\r\nDHARMAPURI	   ', '4/244, VIJAYA NAGAR\r\nCHINNANKUPPAM POST\r\nHARUR TK\r\nDHARMAPURI	   ', 479725693097, 'BZPPM0641G', '', 'B+ve', '2013-06-10', 'Assistant Professor', 0, 'ECE', '17804-rsz_dsc_5314.jpg', '81285-pdfresizer.com-pdf-resize.pdf', '3097', NULL, NULL, NULL, NULL),
('S13ECE011', 'M VENKATESAN ', '1982-04-15', 37, 'male', 'venkateshace82@gmail.com', 8838251532, 'V MANICKAM', 'K RANI', 'y', '', 'HINDU', 'SC', 'JAGADEVI', 'KRISHNAGIRI', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635203', '3/138,\r\nJAGADEVI POST AND VILLAGE       \r\nKRISHNAGIRI TK AND DT', '3/138,\r\nJAGADEVI POST AND VILLAGE       \r\nKRISHNAGIRI TK AND DT', 446918061218, 'AKGPV4052M', '', 'O+ve', '2013-06-07', 'ASSISTANT PROFESSOR', 0, 'ECE', '53909-venki-photo.jpg', '95054-venki-aa-40kb.pdf', '1218', NULL, NULL, NULL, NULL),
('S14ECE009', 'K DEEPA', '1991-04-24', 28, 'female', 'deepumuthu17@gmail.com', 9600416904, 'K KANNAN', 'K BHAGYALAKSHMI', 'y', '', 'HINDU', 'OBC', 'HOSUR', 'HOSUR', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635126', '	3/239-5 MUTHU ILLAM, SURYA NAGAR A CROSS, ARASANATTY.   ', '	3/239-5 MUTHU ILLAM, SURYA NAGAR A CROSS, ARASANATTY.   ', 280304428130, 'CBBPD8586N', 'R7307524', 'AB+ve', '2014-06-16', 'Assistant Professor', 0, 'ECE', '63046-j-2171-l.jpg', '69467-deepa-aathaar.pdf', '8130', NULL, NULL, NULL, '51962-appointment-letter.pdf'),
('S14ECE014', 'R SOMASUNDARAM', '1990-06-10', 29, 'male', 'rk.somu@yahoo.co.in', 9500366288, 'S. RAVI SANKAR', 'M.KALYANI', 'n', '', 'HINDU', 'OC', 'TIRUNELVELI', 'TIRUNELVELI', 'TIRUNELVELI', 'Tamil Nadu', 'India', '627011', '	NO. B 74 NEW NO. 9, 17TH CROSS STREET, MAHARAJA NAGAR   ', '	NO. B 74 NEW NO. 9, 17TH CROSS STREET, MAHARAJA NAGAR   ', 482676053360, 'DYAPS4401L', '', 'B+ve', '2014-06-08', 'Assistant Professor', 0, 'ECE', '10438-somu-(1).jpg', '88008-somu-aadhar.pdf', '3360', NULL, NULL, NULL, '97331-appointment.pdf'),
('S16ECE010', 'V SUNDARA JEYALAKSHMI', '1987-08-06', 32, 'female', 'sundarajeyalakshmi.v@gmail.com', 9566783902, 'K VELLAI GANAPATHY', 'V CHANDRA', 'y', '', 'HINDU', 'OBC', 'HOSUR', 'HOSUR', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635126', '	PLOT NO 41, DOOR NO 3B/13,1st CROSS STREET ,KRISHNA NAGAR,NEAR SIVARANJANI HOTEL,DHARGA   ', '	PLOT NO 41, DOOR NO 3B/13,1st CROSS STREET ,KRISHNA NAGAR,NEAR SIVARANJANI HOTEL,DHARGA   ', 772876175170, 'CKKPS1204G', '', 'B +VE', '2016-08-01', 'Assistant Professor', 0, 'ECE', '63552-photo.jpg', '60935-sjl.pdf', '5170', NULL, NULL, NULL, NULL),
('S17ECE004', 'DAVID WILLIAM RAJ L', '1992-06-03', 27, 'male', 'davidraj1311@gmail.com', 9790347191, 'LOURDUSAMY T', 'RANI S', 'y', '', 'CHRISTIAN', 'BC', 'KOPPAKARAI', 'BOMMIDI', 'DHARMAPURI', 'Tamil Nadu', 'India', '635301', '4/363,KOPPAKARAI VILLAGE,THIPPIREDDIHALLI POST,DHARMAPURI TALUK,DHARMAPURI DISTRICT	   ', '4/363,KOPPAKARAI VILLAGE,THIPPIREDDIHALLI POST,DHARMAPURI TALUK,DHARMAPURI DISTRICT	   ', 219225397932, 'BLMPD9054K', '', 'B+ve', '2017-07-17', 'Assistant Professor', 0, 'ECE', '81150-david-william-raj.jpg', '35354-david-aadhar-100kb.pdf', '7932', NULL, NULL, NULL, '16815-appointment-order.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `ece_fac_attorg`
--

CREATE TABLE `ece_fac_attorg` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `attcategory1` varchar(20) DEFAULT NULL,
  `atttitle1` varchar(50) DEFAULT NULL,
  `attdays1` int(3) DEFAULT NULL,
  `attfrom1` date NOT NULL,
  `attto1` date NOT NULL,
  `attdate1` date NOT NULL,
  `attorg1` varchar(50) DEFAULT NULL,
  `attplace1` varchar(50) DEFAULT NULL,
  `attlevel1` varchar(20) DEFAULT NULL,
  `attcer1` varchar(100) DEFAULT NULL,
  `attkey` int(1) DEFAULT NULL,
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
-- Dumping data for table `ece_fac_attorg`
--

INSERT INTO `ece_fac_attorg` (`id`, `sid`, `ayear`, `attcategory1`, `atttitle1`, `attdays1`, `attfrom1`, `attto1`, `attdate1`, `attorg1`, `attplace1`, `attlevel1`, `attcer1`, `attkey`, `orgcategory1`, `orgtitle1`, `orgfun1`, `orgdays1`, `orgfrom1`, `orgto1`, `orgdate1`, `orgres1`, `orgpar1`, `orglevel1`, `orgcer1`, `orgkey`) VALUES
(1, 'S09ECE015', '2013-2014', 'workshop', 'LaTeX', 2, '2013-08-30', '2013-08-31', '0000-00-00', 'Department of Computer Science and Engineering', 'Salem', 'national', '90049-sona-college---latex-august-2013.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(2, 'S09ECE015', '2011-2012', 'training', 'Digital IC Design', 3, '2012-02-23', '2012-02-25', '0000-00-00', 'VLSI Division,School of Electronics Engineering', 'VIT University', 'national', '77802-vit---hands-on-traninig.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(3, 'S14ECE009', '2015-2016', 'workshop', 'MISSION 10X UTLP', 4, '2016-03-28', '2016-03-31', '0000-00-00', 'MISSION 10X - WIPRO TECHNOLOGIES', 'ADDHIYAMAAN COLLEGE OF ENGINEERING, HOSUR', 'district', '13080-mission10x.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(4, 'S14ECE009', '2015-2016', 'workshop', 'ENGINEERING FACULTY WORKSHOP', 3, '2015-11-19', '2015-11-21', '0000-00-00', ' WIPRO TECHNOLOGIES', 'ADHIYAMAAN COLLEGE OF ENGINEERING, HOSUR', 'district', '76495-wipro-workshop.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(5, 'S09ECE015', '2009-2010', 'seminar', 'Secure Routing and Intrusion Detection Techniques ', 3, '2010-03-29', '2010-03-31', '0000-00-00', 'DRDO', 'Kongu Engineering College', 'national', '26869-kongu-engineering.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(6, 'S09ECE015', '2011-2012', 'seminar', 'Strategies in Enhancing Research', 2, '2012-02-16', '2012-02-17', '0000-00-00', 'Centre for Research, Anna University', 'Coimbatore', 'national', '76658-anna-university---seminor-febrary-2010.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(7, 'S01ECE018', '2015-2016', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'training', 'Microwave Integrated Circuits', 'Self', 1, '0000-00-00', '0000-00-00', '2015-07-24', 'Mr.S.Sathishkumar, Mindtree Li', 60, 'district', '67313-first.jpeg', 1),
(8, 'S01ECE018', '2015-2016', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'training', 'Inter personal skills of the Emerging engineers', 'Self', 1, '0000-00-00', '0000-00-00', '2015-09-28', 'Shri.LavanamAmbulla GlobalCamp', 70, 'district', '51504-1st-min.jpeg', 1),
(9, 'S01ECE018', '2015-2016', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'training', 'Avionics and Cockpits in Fighter Jets', 'Self', 1, '0000-00-00', '0000-00-00', '2016-03-10', 'Shri.B.N.Lokesha Scientist â€˜', 80, 'district', '70457-100_0141.jpeg', 1),
(10, 'S01ECE018', '2016-2017', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'training', 'Indiaâ€™s next target is to build fifth generation', 'Self', 1, '0000-00-00', '0000-00-00', '2016-09-19', 'Shri.Ch.Durga Prasad, Scientis', 79, 'district', '74601-first-(1).jpeg', 1),
(11, 'S01ECE018', '2017-2018', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'training', 'Developments in Atomic, Molecular, Optical and Nan', 'Self', 1, '0000-00-00', '0000-00-00', '2018-03-13', 'Shri.S.S.Patil Scientistâ€™Eâ€', 75, 'district', '79575-100_0141.jpeg', 1),
(12, 'S01ECE018', '2017-2018', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'training', 'Software Defined Network', 'Self', 1, '0000-00-00', '0000-00-00', '2017-09-18', 'Mr.V.Ramkumar, Engineering gro', 82, 'district', '12424-100_0141.jpeg', 1),
(13, 'S01ECE018', '2017-2018', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'training', 'Field Programmable Gate Array and Direct Digital S', 'self', 1, '0000-00-00', '0000-00-00', '2018-02-12', 'Ms.M.Tara, Application Enginee', 79, 'district', '67952-5.jpeg', 1),
(14, 'S01ECE018', '2016-2017', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'workshop', 'Internet of Things', 'self', 2, '2016-08-03', '2016-08-04', '0000-00-00', 'Shri.Ajith and Shri.Dharmesh R', 68, 'district', '78134-5.jpeg', 1),
(15, 'S01ECE018', '2017-2018', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'workshop', 'Wireless robotics', 'self', 2, '2017-12-05', '2017-12-06', '0000-00-00', 'Prof. Rajasree.B , Prof.Sonali', 65, 'district', '12952-6.jpeg', 1),
(16, 'S01ECE018', '2017-2018', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'workshop', 'Internet of Things', 'self', 2, '2018-02-14', '2018-02-15', '0000-00-00', 'Mr.Shamir, Robokart in associa', 72, 'district', '28119-4.jpeg', 1),
(17, 'S01ECE018', '2013-2014', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'workshop', 'PCB  Design and Fabrication', 'self', 1, '0000-00-00', '0000-00-00', '2014-02-17', 'Mr.Vaithyanathan, R.R Circuits', 79, 'district', '33198-4.jpeg', 1),
(18, 'S01ECE018', '2013-2014', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'training', 'Industry Oriented Real time Embedded Systems and P', 'self', 1, '0000-00-00', '0000-00-00', '2013-12-13', 'Mr.J.Kasinathan, Mr.Sunil, Mr.', 79, 'district', '9830-1st.jpg', 1),
(19, 'S01ECE018', '2013-2014', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'training', 'Communication Engineering', 'self', 1, '0000-00-00', '0000-00-00', '2013-10-09', 'Prof.Jayaraman, Pedagogy Syste', 79, 'district', '45944-5.jpeg', 1),
(20, 'S01ECE018', '2013-2014', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'workshop', 'ISENSOBOTZ ON ARDUINO', 'self', 2, '2013-07-29', '2013-07-30', '0000-00-00', 'Mr.JigneshVaghela, Mr.A.Ghonth', 78, 'district', '23704-6.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ece_fac_bkjrn`
--

CREATE TABLE `ece_fac_bkjrn` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `bk1` varchar(20) DEFAULT NULL,
  `bkcha1` varchar(50) DEFAULT NULL,
  `bkissn1` varchar(20) DEFAULT NULL,
  `bkmy1` varchar(7) DEFAULT NULL,
  `bkpub1` varchar(50) DEFAULT NULL,
  `bktype1` varchar(50) DEFAULT NULL,
  `bkkey` int(1) DEFAULT NULL,
  `jrntitle1` varchar(100) DEFAULT NULL,
  `jrnname1` varchar(50) DEFAULT NULL,
  `jrnvol1` varchar(20) DEFAULT NULL,
  `jrnissue1` varchar(20) DEFAULT NULL,
  `jrnissn1` varchar(20) DEFAULT NULL,
  `jrncategory1` varchar(20) DEFAULT NULL,
  `jrnlink1` varchar(100) DEFAULT NULL,
  `jrncit1` varchar(30) DEFAULT NULL,
  `jrnpdf1` varchar(100) DEFAULT NULL,
  `jrnimpact1` int(10) DEFAULT NULL,
  `jrnkey` int(1) DEFAULT NULL,
  `gl` varchar(50) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ece_fac_bkjrn`
--

INSERT INTO `ece_fac_bkjrn` (`id`, `sid`, `ayear`, `bk1`, `bkcha1`, `bkissn1`, `bkmy1`, `bkpub1`, `bktype1`, `bkkey`, `jrntitle1`, `jrnname1`, `jrnvol1`, `jrnissue1`, `jrnissn1`, `jrncategory1`, `jrnlink1`, `jrncit1`, `jrnpdf1`, `jrnimpact1`, `jrnkey`, `gl`, `glkey`) VALUES
(1, 'S01ECE018', '2007-2008', 'Principles of VLSI D', 'Principles of VLSI Design', '9788183711340', '2008-03', 'Scitech Publications( India) Pvt. Ltd.', 'Book', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'S01ECE018', '2007-2008', 'Intelligent Computin', 'Intelligent Computing', '3540372717', '2008-03', 'Springer', 'Chapter', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'S01ECE018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://doi.org/10.1007/s10766-018-0607-5', 1),
(4, 'S01ECE018', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Optimal Feature Selection for the Classification of Hyperspectral Imagery Using Adaptive Spectralâ€“', 'Springer US-International Journal of Parallel Prog', '41', '6', '0885-7458', 'scopus', 'https://doi.org/10.1007/s10766-018-0607-5', 'H index', '5839-springer-a1.pdf', 1, 1, NULL, NULL),
(5, 'S01ECE018', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Analysis of THD in Cascaded H-Bridge Multilevel Inverter with Fuzzy Logic Controller', '	Journal of Electrical Engineering', '17', '1', '	1335-3632', 'anna university jour', 'https://www.jee.ro', 'H5 index', '10387-journal-of-electrical-engineering-a1.pdf', 0, 1, NULL, NULL),
(6, 'S01ECE018', '2011-2012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EACS Approach for Grid Workflow Scheduling in a Computational Grid', 'Springer-Verlag Berlin Heidelberg', '250', '1', '0303-4216', 'scopus', 'https://openlibrary.org/publishers/Springer-Verlag_Berlin_Heidelberg', 'I index', '67644-springer-verlag-berlin-heidelberg.pdf', 1, 1, NULL, NULL),
(7, 'S01ECE018', '2011-2012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Handoff Mobiles with Low Latency in Heterogeneous Networks for Seamless Mobility: A Survey and Futur', 'European Journal of Scientific Research', '81', '3', '1450-216X', 'sci', 'http://www.europeanjournalofscientificresearch.com', 'H index', '9375-3.european-journal-of-scientific-research.pdf', 1, 1, NULL, NULL),
(8, 'S01ECE018', '2012-2013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Comparative study of two techniques of  missing value imputation in medical databases with data accu', 'European Journal of Scientific Research', '97', '3', '1450-216X', 'sci', 'http://www.europeanjournalofscientificresearch.com', 'H index', '62595-1.european-journal-of-scientific-research.pdf', 1, 1, NULL, NULL),
(9, 'S01ECE018', '2012-2013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A Study on Issues in Cloud Computing', 'European Journal of Scientific Research', '102', '4', '1450-216X', 'sci', 'http://www.europeanjournalofscientificresearch.com', 'H index', '40731-2.european-journal-of-scientific-research.pdf', 1, 1, NULL, NULL),
(10, 'S01ECE018', '2013-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Biologically-Inspired Vertical Mobile Handoff with Seamless Mobility', 'International Journal of Innovative Research in Sc', '2', '9', '2319-8753', 'others', 'http://http://www.rroij.com', 'H index', '40582-3.international-journal-of-innovative-research-in-science.pdf', 7, 1, NULL, NULL),
(11, 'S01ECE018', '2013-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERFORMANCE ANALYSIS OF CASCADED MULTILEVEL INVERTERS USING SHE PWM TECHNIQUE FOR THE EMERGING APPLI', 'European Journal of Scientific Research', '103', '4', '1450-216X', 'sci', 'http://www.europeanjournalofscientificresearch.com', 'H index', '2361-4.2.european-journal-of-scientific-research.pdf', 1, 1, NULL, NULL),
(12, 'S01ECE018', '2013-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Avoiding Unbeneficial Handoff and Reducing Handoff Latency in Wlans Based on Network Condition', 'INTERNATIONAL JOURNAL OF ENGINEERING SCIENCES & RE', '2', '9', '2277-9655', 'ugc', 'http: // www.ijesrt.com', 'G index', '43368-5.international-journal-of-engineering-sciences-&-research.pdf', 2, 1, NULL, NULL),
(13, 'S01ECE018', '2012-2013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dual Mode Mpeg Steganography Scheme For Mobile and Fixed Devices', 'International Journal of Engineering Research and ', '6', '3', '2278-800X', 'scopus', 'www.ijerd.com', 'H index', '54729-6.international-journal-of-engineering-research-&-development.pdf', 4, 1, NULL, NULL),
(14, 'S01ECE018', '2013-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Location and Priority Based Vertical Handoff Approach for Seamless Mobility', 'International Journal of Computer Applications', '11', '3', '0975 â€“ 8887', 'ugc', 'http://www.ijcaonline.org', 'H index', '41614-7.international-conference-on-current-trends-in-advanced-computing.pdf', 3, 1, NULL, NULL),
(15, 'S01ECE018', '2013-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Control of Hybrid System Using Multi-Input Inverter and Maximum Power Point Tracking', 'International Journal of Engineering Research and ', '3', '4', '2248-9622', 'ugc', 'http://www.ijera.com', 'H index', '66700-8.international-journal-of-engineering-research-and-applications.pdf', 5, 1, NULL, NULL),
(16, 'S01ECE018', '2012-2013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A comparative study on various security attacks in MANET', 'INTERNATIONAL JOURNAL OF ENGINEERING SCIENCES & RE', '2', '3', '2277-9655', 'ugc', 'http: // www.ijesrt.com', 'G index', '94193-9.5.international-journal-of-engineering-sciences-&-research.pdf', 5, 1, NULL, NULL),
(17, 'S01ECE018', '2013-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Trust Based Resource Selection Policies To Optimize Aco Scheduler In Grid Environment', 'International Journal of Applied Engineering Resea', '9', '22', '0973-4562', 'ugc', 'http://www.ripublication.com', 'H index', '83370-1.international-journal-of-applied-engineering-research.pdf', 6, 1, NULL, NULL),
(18, 'S01ECE018', '2014-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A Transformer Less Grid-Connected Photovoltaic System Based On The Single Stage Boost -Three Phase I', 'International Journal of Applied Engineering Resea', '10', '30', '0973-4562', 'ugc', 'http://www.ripublication.com/ijaer.htm', 'H index', '88593-1.international-journal-of-applied-engineering-research.pdf', 6, 1, NULL, NULL),
(19, 'S01ECE018', '2014-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Thermo Electric Generator Modeling Based on Radiation Effects', 'International Journal of Applied Engineering Resea', '10', '30', '0973-4562', 'ugc', 'http://www.ripublication.com/ijaer.htm', 'H index', '69224-2.international-journal-of-applied-engineering-research.pdf', 6, 1, NULL, NULL),
(20, 'S01ECE018', '2014-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Fuzzy Optimization of Electric Vehicle Charging Under Grid Power Consumption Constraint', 'International Journal of Applied Engineering Resea', '10', '30', '0973-4562', 'ugc', 'http://www.ripublication.com/ijaer.htm', 'H index', '88792-3.international-journal-of-applied-engineering-research.pdf', 6, 1, NULL, NULL),
(21, 'S01ECE018', '2014-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'An Alternate Imputation Technique of A Mean Method For Missing Values and Comparative Study With Nei', 'International Journal of Applied Engineering Resea', '10', '4', '0973-4562', 'ugc', 'http://www.ripublication.com/ijaer.htm', 'H index', '2404-4.international-journal-of-applied-engineering-research.pdf', 6, 1, NULL, NULL),
(22, 'S01ECE018', '2014-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Efficient Data Storage and Retrieval in Cloud Environment Using Cuckoo Hashing and Latent Semantic S', 'Middle-East Journal of Scientific Research', '23', '6', '1990-9233', 'sci', 'http://idosi.mejsr', 'H index', '89740-5.middle-east-journal-of-scientific-research.pdf', 0, 1, NULL, NULL),
(23, 'S01ECE018', '2014-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DCSA: Data Classification based Secure Storage and Efficient Access Control in cloud', 'International Journal of Applied Engineering Resea', '10', '20', '0973-4562', 'ugc', 'http://www.ripublication.com/ijaer.htm', 'H index', '43461-6.international-journal-of-applied-engineering-research.pdf', 6, 1, NULL, NULL),
(24, 'S01ECE018', '2014-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Investigation of the Effect of Dielectric Properties of the Biscuit on RF Power Uniformity using a F', 'Indian Journal of Science and Technology,', '8', '26', '0974-5645', 'scopus', 'http://www.indjst.org', 'H index', '59606-7.indian-journal-of-science-and-technology.pdf', 5, 1, NULL, NULL),
(25, 'S01ECE018', '2014-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A hybrid Ant colony optimization algorithm for job scheduling in computational Grids', 'Indian Journal of Science and Technology', '74', '1', '0974-6846', 'ugc', 'http://indjst.org', 'H index', '59833-8.indian-journal-of-science-and-technology.pdf', 5, 1, NULL, NULL),
(26, 'S01ECE018', '2014-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'THD ANALYSIS OF SEVEN LEVEL HYBRID PV INVERTER WITH LESS NUMBER OF SWITCHES', 'International Journal of Applied Engineering Resea', '10', '9', '0973-4562', 'ugc', 'http://www.ripublication.com/ijaer.htm', 'H index', '72976-10.international-journal-of-applied-engineering-research.pdf', 6, 1, NULL, NULL),
(27, 'S01ECE018', '2014-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DATA ACQUISITION SYSTEMS APPLIED TO DECENTRALIZED RENEWABLE ENERGY PLANTS USING WIRELESS SENSOR NETW', 'International Journal of Applied Engineering Resea', '10', '30', '0973-4562', 'ugc', 'http://www.ripublication.com/ijaer.htm', 'H index', '59010-11.international-journal-of-applied-engineering-research.pdf', 6, 1, NULL, NULL),
(28, 'S01ECE018', '2014-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DTC of B6 Inverter Fed BLDC Motor Drives With Reduced Torque Ripple During Sector To Sector Commutat', 'International Journal of Applied Engineering Resea', '10', '30', '0973-4562', 'ugc', 'http://www.ripublication.com/ijaer.htm', 'H index', '99597-12.international-journal-of-applied-engineering-research.pdf', 6, 1, NULL, NULL),
(29, 'S01ECE018', '2014-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'THREE PHASE ANALYSIS OF SYMMETRICAL CASCADED H-BRIDGE MULTILEVEL INVERTER WITH PV ARRAYS', 'International Journal of Applied Engineering Resea', '10', '37', '0973-4562', 'ugc', 'http://www.ripublication.com/ijaer.htm', 'H index', '19775-13.international-journal-of-applied-engineering-research.pdf', 6, 1, NULL, NULL),
(30, 'S01ECE018', '2014-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bandwidth based vertical handoff for tightly coupled wimax/wlan overlay networks', 'journal of scientific and industrial research', '74', '1', '0974-6846', 'ugc', 'http://indjst.org', 'H index', '41036-14.international-journal-of-applied-engineering-research.pdf', 5, 1, NULL, NULL),
(31, 'S01ECE018', '2014-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'THD Analysis of a 13 Level Asymmetric Hybrid Cascaded Multilevel Inverter for Industrial Application', 'World Engineering & Applied Sciences Journal', '6', '2', '2079-2204', 'scopus', 'http://idosi.weasj', 'H index', '16248-15.world-engineering-&-applied-sciences-journal.pdf', 7, 1, NULL, NULL),
(32, 'S01ECE018', '2015-2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SEQUENTIAL ENCRYPTION FOR MULTIPLE CHUNKS OF DATA IN CLOUD ENVIRONMENT', 'J o u r n a l o f A d v a n c e s i n c h e m i s ', '12', '13', '2 3 2 1 - 8 0 7 X', 'sci', 'http://w w w . c i r w o r l d . c o m', 'H index', '88669-1.j-o-u-r-n-a-l-o-f-a-d-v-a-n-c-e-s-i-n-c-h-e-m-i-s-t-r-y.pdf', 1, 1, NULL, NULL),
(33, 'S01ECE018', '2015-2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Enhanced Fuzzy C-Means Clustering with Optimization of Support Vector Regression for Imputation of M', 'Journal of Medical Imaging and Health Informatics', '6', '1', '2156-7018', 'scopus', 'http://www.aspbs.com', 'H index', '65459-2.journal-of-medical-imaging-and-health-informatics.pdf', 1, 1, NULL, NULL),
(34, 'S01ECE018', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reduction of THD in Thirteen-Level Hybrid PV Inverter with Less Number of Switches', 'Circuits and Systems', '7', '1', '2153-1285', 'scopus', 'http://dx.doi.org/10.4236/cs.2016.710290', 'H index', '40698-5.circuits-and-systems.pdf', 1, 1, NULL, NULL),
(35, 'S01ECE018', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reduction of THD in Seven Level H-Bridge Inverter with Reduced Number of Switches', 'Asian Journal of Research in Social Sciences and H', '6', '8', '2249-7315', 'sci', 'http://www.aijsh.com', 'H index', '72346-6.asian-journal-of-research-in-social-sciences-and-humanities.pdf', 5, 1, NULL, NULL),
(36, 'S01ECE018', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Design and Implementation of Cryptographic Shared Processor using FPGA', 'Asian Journal of Research in Social Sciences and H', '6', '9', '2249-7315', 'sci', 'http://www.aijsh.com', 'H index', '75929-7.asian-journal-of-research-in-social-sciences-and-humanities.pdf', 5, 1, NULL, NULL),
(37, 'S01ECE018', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'High-Performance FIR Filter Implementation Using Anurupye Vedic Multiplier', 'Circuits and Systems', '7', '2', '2153-1293', 'scopus', 'http://www.scirp.org/journal/cs', 'H index', '57508-8.circuits-and-systems.pdf', 1, 1, NULL, NULL),
(38, 'S01ECE018', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Analysis of THD in Cascaded H-Bridge Multilevel Inverter with Fuzzy Logic Controller', 'journal of electrical engineering', '17', '14', '1582-4594', 'sci', 'http://www.jee.ro', 'H index', '16116-10.journal-of-electrical-engineering.pdf', 6, 1, NULL, NULL),
(39, 'S01ECE018', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A Novel spectral signature based classification approach for Airborne and spaceborne Hyperspectral I', 'Asian journal of information technology', '15', '23', '1682-3915', 'scopus', 'https://www.medwelljournals.com', 'H index', '26154-asian--chidam.pdf', 0, 1, NULL, NULL),
(40, 'S01ECE018', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Data Sensitive Level based Encryption for Protecting Data Stored in Public Cloud', 'Asian Journal of Research in Social Sciences and H', '7', '3', '2249-7315', 'sci', 'http://www.aijsh.com', 'H index', '66501-1.asian-journal-of-research-in-social-sciences-and-humanities.pdf', 5, 1, NULL, NULL),
(41, 'S01ECE018', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Area Efficiency And High Speed Implementation Of Cryptography Using Hash Function And RSA Algorithm', 'Advances in natural and applied sciences', '11', '6', '1995-0772', 'scopus', 'http://www.aensiweb.com/ANAS', 'H index', '15416-4.advances-in-natural-and-applied-science.pdf', 0, 1, NULL, NULL),
(42, 'S01ECE018', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Health Monitoring System For Elderly People Using Iot', 'Advances in natural and applied sciences', '11', '6', '1995-0772', 'scopus', 'http://www.aensiweb.com/ANAS', 'H index', '3734-5.advances-in-natural-and-applied-science.pdf', 0, 1, NULL, NULL),
(43, 'S01ECE018', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8-bit kogge stone adder design for FIR Filter applications', 'Advances in natural and applied sciences', '11', '6', '1995-0772', 'scopus', 'http://www.aensiweb.com/ANAS', 'H index', '45853-7.advances-in-natural-and-applied-science.pdf', 0, 1, NULL, NULL),
(44, 'S14ECE009', '2015-2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Witricity Transmission via Solar Power  Satellites', 'International Journal of Innovative Research in Sc', '5', '2', '2319 - 8753', 'others', 'http://www.ijirset.com/upload/2016/ncfcsps/48_14_Witricity.pdf', 'NIL', '63375-witricity.pdf', 7, 1, NULL, NULL),
(45, 'S14ECE009', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Steam Boiler Automation Using Programmable Logic Controller', 'International Journal of Innovative Research in Sc', '6', '3', '2319 - 8753', 'others', 'http://www.ijirset.com/upload/2017/ncfcsps/41_50_Steam.pdf', 'NIL', '97120-steam-boiler.pdf', 7, 1, NULL, NULL),
(46, 'S14ECE009', '1987-1988', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Automation of Battery Testing', 'International Journal of Innovative Research in Sc', '6', '3', '2319 - 8753', 'others', 'http://www.ijirset.com/upload/2017/ncfcsps/42_51_Automation.pdf', 'NIL', '48181-automation.pdf', 7, 1, NULL, NULL),
(47, 'S14ECE009', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Automation of Battery Testing', 'International Journal of Innovative Research in Sc', '6', '3', '2319 - 8753', 'others', 'http://www.ijirset.com/upload/2017/ncfcsps/42_51_Automation.pdf', 'NIL', '85599-automation.pdf', 7, 1, NULL, NULL),
(48, 'S14ECE009', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Design and Development of Application for Pedagouge Utility Using Android', 'International Journal of Innovative Research in Sc', '7', '1', ' 2319 - 8753', 'others', 'http://www.ijirset.com/upload/2018/ncfcsps/J38_Design.pdf', 'NIL', '95368-pedagouge.pdf', 7, 1, NULL, NULL),
(49, 'S14ECE009', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sleep Inducer through Generation of Pink Noise', 'International Journal of Innovative Research in Sc', '7', '1', '2319 - 8753', 'others', 'http://www.ijirset.com/upload/2018/ncfcsps/J44_Sleep.pdf', 'NIL', '51162-sleep-inducer.pdf', 7, 1, NULL, NULL),
(50, 'S14ECE009', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Minimizing the Eavesdroppers in Massive MIMO Relay Network using OFDM', 'International Journal of Innovative Research in Sc', '8', '1', ' 2319 - 8753', 'others', 'http://www.ijirset.com/upload/2019/ncfcsps/25_Batch%2025%20main.pdf', 'NIL', '42462-eves-dropping.pdf', 7, 1, NULL, NULL),
(51, 'S14ECE009', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Obscuring the Message in Digital Image Using Steganography', 'International Journal of Innovative Research in Sc', '8', '1', '2319 - 8753', 'others', 'http://www.ijirset.com/upload/2019/ncfcsps/26_Batch%2025%20mini_NEW.pdf', 'NIL', '59669-steganography.pdf', 7, 1, NULL, NULL),
(52, 'S14ECE009', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VoIP based Voice Interaction System for PSTN', 'International Journal of Innovative Research in Sc', '8', '1', '2319 - 8753', 'others', 'http://www.ijirset.com/upload/2019/ncfcsps/28_BATCH%2027.pdf', 'NIL', '31587-voip.pdf', 7, 1, NULL, NULL),
(53, 'S14ECE009', '2013-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Power Efficient Standby Switch Based Domino Logic Circuit ', 'IOSR Journal of VLSI and Signal Processing', '4', '2', ' 2319 â€“ 4197 ', 'ugc', 'http://www.iosrjournals.org/iosr-jvlsi/papers/vol4-issue2/Version-2/D04221722.pdf', 'NIL', '28718-power-efficient.pdf', 3, 1, NULL, NULL),
(54, 'S09ECE015', '2013-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'An Intelligent Environmental Novelty System Using Mobile Technology  For Warfields', 'International Journal of Engineering Research & Te', '2', '10', '2278-0181', 'other', ' ', ' ', '83039-an-intelligent-environmental-novelty-system-using-mobile-technology.pdf', 0, 1, NULL, NULL),
(55, 'S09ECE015', '2013-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VIGILANCE CONTROL SYSTEM USING MCF5235 PROCESSOR', 'International Journal of Research in Engineering a', '3', '4', '2319-1163', 'other', 'http://www.ijret.org  ', ' ', '26238-vigilance-control-system-using-mcf5235-processor.pdf', 0, 1, NULL, NULL),
(56, 'S14ECE009', '2013-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Low power sleep switch based domino logic circuit with voltage regulated static keeper', 'International Journal of Science, Engineering and ', '3', '2', '2278 â€“ 7798 ', 'others', 'http://ijsetr.org/wp-content/uploads/2014/02/IJSETR-VOL-3-ISSUE-2-261-264.pdf', '1', '1341-low-power-sleep-switch.pdf', 6, 1, NULL, NULL),
(57, 'S09ECE015', '2014-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Two Factor Authentication for High Security Banking ATM Users', 'International Journal of Advances in Engineering R', '9', '4', '2231-5152', 'other', ' ', ' ', '29410-two-factor-authentication-for-high-security-banking-atm-users.pdf', 0, 1, NULL, NULL),
(58, 'S14ECE009', '2013-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Comparative Analysis of Keeper Techniques for Domino Circuits', 'The International Journal of Science and Technoled', '2', '2', '2321 â€“ 919X', 'others', 'http://www.internationaljournalcorner.com/index.php/theijst/article/view/138162/97000', 'NIL', '93695-comparative-analysis.pdf', 1, 1, NULL, NULL),
(59, 'S14ECE009', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://scholar.google.co.in/citations?user=ZyE2k0', 1),
(60, 'S01ECE018', '2006-2007', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Digital Filter Design Using Evolvable Hardware Chip for Image Enhancement', 'Springer(LNCS)', '4113', '10', '0302-9743', 'scopus', 'https://link.springer.com/chapter/10.1007/11816157_79', '7', '26253-document.pdf', 1, 1, NULL, NULL),
(61, 'S01ECE018', '2012-2013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Power Optimization Techniques for Multipliersâ€ ,European Journal of Scientific Research', 'European Journal of Scientific Research', '100', '7', '1450-216X', 'sci', 'http://www.europeanjournalofscientificresearch.com', '2', '28583-ejsr_vol_100_issue_4.pdf', 1, 1, NULL, NULL),
(62, 'S01ECE018', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'THD Analysis of Cascaded H-Bridge Inverter with Fuzzy Logic Controller', 'Circuits and Systems', '8', '1', '2153-1293', 'scopus', 'http://dx.doi.org/10.4236/cs.2016.710290', '3', '24143-8.circuits-and-systems.pdf', 1, 1, NULL, NULL),
(63, 'S01ECE018', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dyadic product and crow lion algorithm based coefficient generation for privacy protection on cloud', 'The Journal of Networks, Software Tools and Applic', '10', '6', '1386-7857 ', 'sci', 'https://www.researchgate.net/publication/329584152_1Springer_Cluster_Comp_Annexure_1', '3', '31552-1.springer_cluster_comp._annexure_1.pdf', 2, 1, NULL, NULL),
(64, 'S01ECE018', '2015-2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Location Prediction to Reduce Hand-Off Delay for Seamless Mobility of VOIP ', 'International Journal of Innovative Research in Sc', '5', '2', '2319 - 8753', 'others', 'http://www.ijirset.com/upload/2016/ncfcsps/5_Location.pdf', '2', '3767-5_location.pdf', 7, 1, NULL, NULL),
(65, 'S01ECE018', '2015-2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Design and Analysis of Sierpinski Pentagonal Fractal Antenna for Tri-Band Applications ', 'International Journal of Innovative Research in Sc', '5', '2', '2319 - 8753', 'others', 'http://www.ijirset.com/upload/2016/ncfcsps/7_Design.pdf', '2', '87224-7_design.pdf', 7, 1, NULL, NULL),
(66, 'S01ECE018', '2015-2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'High Throughput, Privacy and Security for Handover in 5g Networks Using SoftwareDefined Networking', 'International Journal of Innovative Research in Sc', '5', '2', '2319 - 8753', 'others', 'http://www.ijirset.com/upload/2016/ncfcsps/32%20_corrected_.pdf', '2', '79358-8_journal.pdf', 7, 1, NULL, NULL),
(67, 'S01ECE018', '2015-2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Performance Analysis of 4 Bit & 8 Bit Vedic Multiplier for Signal Processing', 'International Journal of Innovative Research in Sc', '5', '2', '2319 - 8753', 'others', 'http://www.ijirset.com', '2', '23140-33_performance.pdf', 7, 1, NULL, NULL),
(68, 'S01ECE018', '2011-2012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ant colony optimization approach', 'International  Journal of Emerging Technologies an', '4', '1', '0974-3588', 'others', 'http://www.ijetae.com', '3', '39697-vol4-2011.pdf', 4, 1, NULL, NULL),
(69, 'S01ECE018', '2011-2012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Heuristics Based Survey on Workflow Scheduling in Computational Grids', 'CIIT International Journal of Networking and Commu', '3', '2', '0974-9713', 'others', 'http://http://www.ciitresearch.org', '3', '23421-vol3-2011.pdf', 1, 1, NULL, NULL),
(70, 'S01ECE018', '2011-2012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Automatic Recognition And Analysis Of Human Faces And Facial Expression By LDA Using Wavelet Transfo', 'European Journal of Scientific Research', '67', '3', '1450-216X', 'sci', 'http://www.europeanjournalofscientificresearch.com', '3', '89703-vol-672012.pdf', 1, 1, NULL, NULL),
(71, 'S01ECE018', '2011-2012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Feature Selection and Extraction for Content-Based Image Retrieval', 'International Journal of Mathematics Trends and Te', '3', '2', '2231-5373', 'others', 'http://http://www.ijmttjournal.org/', '4', '57732-vol-3-2012.pdf', 1, 1, NULL, NULL),
(72, 'S01ECE018', '2011-2012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A MPU: ACS Algorithm for grid workflow scheduling', 'European Journal of Scientific Research', '67', '4', '1450-216X', 'scopus', 'http://www.europeanjournalofscientificresearch.com', '3', '94040-vol-672012.pdf', 1, 1, NULL, NULL),
(73, 'S01ECE018', '2012-2013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Performance Evaluation of Grid using Random Scheduling', 'International Journal of Computer Applications', '55', '9', '0975 â€“ 8887', 'ugc', 'http://www.ijcaonline.org', '3', '45078-oct-2012.pdf', 0, 1, NULL, NULL),
(74, 'S01ECE018', '2013-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Image Registration Techniques for Satellite and Medical Image:A Survey', 'International journal of Scientific and engineerin', '4', '12', '2229-5518', 'scopus', 'https://www.ijser.org/', '4', '94338-vol4,2013.pdf', 3, 1, NULL, NULL),
(75, 'S01ECE018', '2013-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Handheld All-In-One Electronics and Communication Engineering', 'International Organization of Scientific Research', '9', '2', '2278-2834', 'ugc', 'http://www.iosrjournals.org', '3', '36321-vol9,2014.pdf', 3, 1, NULL, NULL),
(76, 'S01ECE018', '2014-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PTS Precoding Technique for PAPR Reduction in Mobile WIMAX', 'International Journal of Innovative Research and G', '3', '1', '2091-2730', 'others', 'http://www.ijirgs.org', '3', '99435-vol3,2015.pdf', 4, 1, NULL, NULL),
(77, 'S01ECE018', '2014-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Analysis of dimensionality reduction techniques for Hyperspectral image classification', 'International journal of engineering trends and te', '21', '2', '2231-5381', 'ugc', 'http://ijettjournal.org', '3', '82052-vol21,2015.pdf', 2, 1, NULL, NULL),
(78, 'S01ECE018', '2015-2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FPGA Implementation of DTCWT Architecture Using Distributive Arithmatic and Multiplexer Based Multip', 'Australian Journal of Basic and Applied Sciences', '9', '36', '1991-8178', 'ugc', 'http://www.ajbasweb.com', '2', '45017-vol9,2015.pdf', 4, 1, NULL, NULL),
(79, 'S01ECE018', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A Novel Spectral Signature Based Classification Approach for Airborn and Spaceborne Hyper spectral I', 'Asian journal of information technology', '15', '23', '1682-3915', 'ugc', 'http://medweljournals.com', '3', '73310-vol15,2016.pdf', 4, 1, NULL, NULL),
(80, 'S01ECE018', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Design and implementation of Cryptographic Shared Processor using FPGA', 'Asian Journal of Research in Social Sciences and H', '6', '9', '2249-7315', 'ugc', 'http://www.aijsh.com', '3', '44505-vol6,2016.pdf', 5, 1, NULL, NULL),
(81, 'S01ECE018', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'High-Performance FIR Filter  Implementation Using Anurupye Vedic Multiplier', 'Circuits and Systems', '7', '1', '2153-1285', 'scopus', 'http://www.scirp.org/journal/cs', '3', '79601-vol7,2016.pdf', 1, 1, NULL, NULL),
(82, 'S01ECE018', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Reduction of THD in Seven- level H-Bridge  Inverter with Reduced Number of switches', 'Asian journal of Research in Social Science and Hu', '6', '8', '2249-7315', 'ugc', 'http://www.aijsh.com', '3', '1845-vol6,no.8,2016.pdf', 5, 1, NULL, NULL),
(83, 'S01ECE018', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'THD Analysis of Cascaded H-Bridge Inverter with Fuzzy Logic Controller', 'Circuits and Systems', '3', '1', '2153-1293', 'scopus', 'http://www.scirp.org/journal/cs', '3', '28861-vol3,aug-2017.pdf', 6, 1, NULL, NULL),
(84, 'S01ECE018', '2015-2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Personal Authentication Using the Combination of Left and Right Palmprint Images', 'International Journal of Innovative Research in Sc', '5', '2', '2319-8753', 'ugc', 'http://www.ijirset.com', '3', '59105-vol5,mar2016.pdf', 6, 1, NULL, NULL),
(85, 'S01ECE018', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Multiplay Service Deployment Using GEPON Technology', 'International Journal of Innovative Research in Sc', '5', '2', '2319-8753', 'ugc', 'http://www.ijirset.com', '3', '88004-vol5,no2-pg294,mar-2016.pdf', 6, 1, NULL, NULL),
(86, 'S01ECE018', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Effective Resource Sharing With Universal Base-Band Processing Technology Supporting All Mobile User', 'International Journal of Electronics and Communica', '8', '1', '0976-6464', 'others', 'http://www.iaeme.com', '2', '64979-vol8,2017.pdf', 8, 1, NULL, NULL),
(87, 'S01ECE018', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Multi-Band Communication and Effective Sprectrum Utilization using SRAN Technology', 'International Journal of Innovative Research in Sc', '6', '3', '2319-8753', 'ugc', 'http://www.ijirset.com', '3', '17859-vol6,issue3,2017.pdf', 6, 1, NULL, NULL),
(88, 'S01ECE018', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'An Efficient Approach for Data Security in Cloud Environment using Watermarking Technique and RSA Di', 'International research journal of engineering and ', '4', '2', '2395-0056', 'scopus', 'https://www.irjet.net/', '2', '18616-vol4,issue2,2017.pdf', 5, 1, NULL, NULL),
(89, 'S01ECE018', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vehicular Pollution Monitoring using IoT', 'International Journal of Innovative Research in Sc', '6', '3', '2319-8753', 'ugc', 'http://www.ijirset.com', '3', '62015-vol6,issue3,mar2017.pdf', 6, 1, NULL, NULL),
(90, 'S01ECE018', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Data Sensitive Level based Encryption for Protecting Data Stored in Public Cloud', 'Asian Journal of Research in Social Sciences and H', '7', '3', '2249-7315', 'ugc', 'http://www.aijsh.com', '3', '70333-vol7,2017.pdf', 5, 1, NULL, NULL),
(91, 'S01ECE018', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Analysis of THD in Cascaded H-Bridge Inverter with Fuzzy Logic Controller', 'journal of electrical engineering', '17', '1', '2230-7176', 'sci', 'http://www.jee.ro', '3', '49392-vol17,2017.pdf', 6, 1, NULL, NULL),
(92, 'S01ECE018', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Area Efficiency And High Speed Implementation Of Cryptography Using Hash Function And RSA Algorithm', 'Advances in natural and applied sciences', '11', '6', '1995-0772', 'scopus', 'http://www.aensiweb.com/ANAS', '2', '72042-vol11,2017.pdf', 2, 1, NULL, NULL),
(93, 'S01ECE018', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A Survey about Cloud Computing and an Improved Method of Data Security using Watermarking Technique ', 'Asian Journal of Research in Social Sciences and H', '7', '5', '2249-7315', 'ugc', 'http://www.aijsh.com', '3', '38646-vol7,issue5,2017.pdf', 6, 1, NULL, NULL),
(94, 'S01ECE018', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A Conceptual Approach to Next Generation Real Time On board Hyperspectral Image Exploration System', 'International Journal of Electrical, Electronics a', '6', '11', '2348-117X', 'others', 'http://www.ijeecs.org', '2', '90579-vol6,issue11,2017.pdf', 2, 1, NULL, NULL),
(95, 'S01ECE018', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Size Reduction and Performance Improvement Scheme in Hybrid LUT/Mux FPGA Logic Architecture ', 'Asian Journal of Research in Social Sciences and H', '8', '1', '2249-7315', 'ugc', 'http://indianjournals.com', '3', '15881-vol8,issue1,2018.pdf', 6, 1, NULL, NULL),
(96, 'S01ECE018', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Design and construction of wireless charging system using inductive coupling', 'International Journal of Innovative Research in Sc', '7', '1', '2319-8753', 'ugc', 'http://www.ijirset.com', '2', '56578-vol7,2018.pdf', 6, 1, NULL, NULL),
(97, 'S01ECE018', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Real time gas leakage detection system using cloud', 'International Journal of Innovative Research in Sc', '7', '1', '2319-8753', 'ugc', 'http://www.ijirset.com', '2', '38886-vol7,issue1,2018.pdf', 6, 1, NULL, NULL),
(98, 'S01ECE018', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Design and development of driving pattern analysis for automatic license issuing system', 'International Journal of Innovative Research in Sc', '7', '1', '2319-8753', 'ugc', 'http://www.ijirset.com', '2', '36276-vol7,issue1,pg139,2018.pdf', 6, 1, NULL, NULL),
(99, 'S01ECE018', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Memorization based low power FPGA design using approximate computing', 'International Journal of Innovative Research in Sc', '7', '1', '2319-8753', 'ugc', 'http://www.ijirset.com', '2', '92947-vol7,issue1,pg62,2018.pdf', 6, 1, NULL, NULL),
(100, 'S01ECE018', '2010-2011', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Resource discovery based on Qos-A ware checkpointing arrangement in grid computing', 'International journal of emerging technologies and', '4', '1', '0974-3588', 'others', 'http://www.ijeta.com', '4', '32825-1569656409.pdf', 4, 1, NULL, NULL),
(101, 'S01ECE018', '2012-2013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RF applicator design for efficient heating of materials ', 'CIIT', '1', '3', '978-0-9888421-1-3', 'others', 'http://www.ciitresearch.org/', '3', '32336-ciit-journal,anto,2013.pdf', 1, 1, NULL, NULL),
(102, 'S01ECE018', '2012-2013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FPGA based implementation of SDR waveforms in digital receiver board', 'CIIT', '1', '3', '978-0-9888421-1-3', 'others', 'http://www.ciitresearch.org/', '3', '4499-ciit-journal,sylvia,2013.pdf', 1, 1, NULL, NULL),
(103, 'S01ECE018', '2013-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Available bandwidth and packet delay estimation in Wimax networks', 'International Journal of Applied Engineering Resea', '9', '27', '0973-4562', 'ugc', 'http://www.ripublication.com/ijaer.htm', '4', '14689-vol9,issue27,2014.pdf', 6, 1, NULL, NULL),
(104, 'S01ECE018', '2013-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Estimation of number of people in Crowded scenes using Amid and Pdc', 'International Organization of Scientific Research', '9', '1', '2278-8735', 'ugc', 'http://www.iosrjournals.org', '4', '88647-vol9,issue1,2014.pdf', 3, 1, NULL, NULL),
(105, 'S01ECE018', '2014-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JDHC technique by using SMVQ scheme for enhancing the quality of digital image', 'international journal of scientific research and d', '2', '12', '2321-0613', 'others', 'http://ijsrd.com/', '3', '50759-vol2,issue12,2015.pdf', 4, 1, NULL, NULL),
(106, 'S01ECE018', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A hybrid approach of dimensionality reduction and classification for hyper spectral imager', 'Asian Journal of Research in Social Sciences and H', '6', '8', '2249-7315', 'ugc', 'http://www.indianjournals.com', '3', '58598-vol6,issue8,2016.pdf', 5, 1, NULL, NULL),
(107, 'S01ECE018', '2015-2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Photodetection properties of Zno/Si heterojunction diode: A simulation study', 'IETE technical review', '1', '1', '0256-4602', 'sci', 'http://http://www.iete.org', '2', '68980-iete-review,2016.pdf', 1, 1, NULL, NULL),
(108, 'S01ECE018', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Removing camera shake via weighted fourier burst accumulation', 'International Journal of Innovative Research in Sc', '6', '3', '2319-8753', 'ugc', 'http://www.ijirset.com', '3', '38285-vol6,issue3,2017.pdf', 6, 1, NULL, NULL),
(109, 'S01ECE018', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'An Area-Efficient FPGA Implementation of Network-on-Chip (NoC) Router Architecture for Optimized Mul', 'Sensor Letters - American Scientific Publishers', '16', '1', '1546-198X', 'sci', 'http://www.aspbs.com', '2', '25313-16sl-3985--sl.pdf', 2, 1, NULL, NULL),
(110, 'S01ECE018', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'An Low-Power Area-Efficient Routing Analysis and Optimization for a Fat Tree-Based Optical Network-o', 'Sensor Letters - American Scientific Publishers', '16', '1', '1546-198X', 'sci', 'http://www.aspbs.com', '2', '57685-16sl-4033.pdf', 2, 1, NULL, NULL),
(111, 'S01ECE018', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'An area-efficient low-power SCM topology for high performance network-on Chip (NoC) architecture usi', 'John wiley and sons', '10', '1', '1532-0626', 'sci', 'http://wileyonlinelibrary.com/journal/cpe', '2', '16623-wiley-puplised-paper.pdf', 1, 1, NULL, NULL),
(112, 'S01ECE018', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FPGA Implementation of DTCWT Architecture Using Distributive Arithmatic and Multiplexer Based Multip', 'journal of microelectronics,electronic components ', '9', '36', '0352-9045', 'sci', 'http://www.midem-drustvo.si/journal/', '2', '40871-journal_-midem_paper.pdf', 0, 1, NULL, NULL),
(113, 'S01ECE018', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Design and development of a prototype radio frequency applicator for post baking of biscuits', 'journal of electrical engineering', '1', '1', '1582-4594', 'sci', 'http://www.jee.ro', '2', '56615-anto_accepted_paper.pdf', 0, 1, NULL, NULL),
(114, 'S11ECE007', '2013-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FAULT SENSING IN A REMOTE TRANSFORMER USING GSM & AUTOMATIC ON/OFF OF STREET LAMPS', 'International Journal of Advanced Research in Elec', '2', '10', '2278 â€“ 8875', 'others', 'https://www.ijareeie.com/upload/2013/october/8LFAULT.pdf', '1', '11972-8lfault.pdf', 6, 1, NULL, NULL),
(115, 'S11ECE007', '2014-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Auto Payment of Tolls with Tracking of Theft Vehicles & Proximity Detection for Avoiding Accidents', 'International Journal of Advanced Research in Elec', '3', '4', '2278 â€“ 8875', 'others', 'https://pdfs.semanticscholar.org/15ab/1ad8a41da839cbe6b97fd92d298dc0541ec1.pdf', '1', '16408-27l_autopayment.pdf', 6, 1, NULL, NULL),
(116, 'S11ECE007', '2015-2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DESIGN AND ANALYSIS OF SHIFT REGISTER USING PULSE-TRIGGERED FLIP-FLOP', 'International Journal of Computer Informatics & Te', '2', '3', 'ISSN (Online): 2348-', 'others', 'http://www.ijcite.com/', 'NIL', '78485-04-04-2015192ijcite-v2-e3-003.pdf', 3, 1, NULL, NULL),
(117, 'S11ECE007', '2015-2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Low-Power Adder Design Using Full-Swing Gate Diffusion Input Logic', 'International Journal of Advanced Research in Elec', '4', '3', 'IISSN (Online): 2278', 'others', 'https://www.ijareeie.com/upload/2015/march/17_LOW-POWER.pdf', 'NIL', '51577-17_low-power.pdf', 6, 1, NULL, NULL),
(118, 'S11ECE007', '2015-2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FPGA IMPLEMENTATION OF AN  EFFICIENT VEDIC MULTIPLIER', 'International Journal of Emerging Technology and A', '5', '3', 'ISSN 2250-2459', 'others', 'https://pdfs.semanticscholar.org/f16e/f468db0c3703e41026e0b58d9d78909801da.pdf', 'NIL', '1078-ijetae_0315_61.pdf', 6, 1, NULL, NULL),
(119, 'S11ECE007', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Implementation of Low Power Arithmetic Circuits Using Reversible Gates', 'International Journal of Advanced Research in Elec', '5', '4', 'ISSN (Online): 2278 ', 'others', 'https://www.ijareeie.com/upload/2016/april/9_Implementation.pdf', 'NIL', '68983-9_implementation.pdf', 6, 1, NULL, NULL),
(120, 'S11ECE007', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Design and Simulation of FIR Filter', 'International Journal of Innovative Research in Sc', '5', '2', 'ISSN (Online) : 2319', 'others', 'http://www.ijirset.com/upload/2016/ncfcsps/41_7_Design.pdf', 'NIL', '27962-41_7_design.pdf', 7, 1, NULL, NULL),
(121, 'S01ECE018', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ghost-Free High Dynamic Range Imaging Using Weighted Histogram Separation and Fuzzy Fusion Method', 'International Journal of Innovative Research in Sc', '6', '3', '2319 - 8753', 'others', 'http://www.ijirset.com', '3', '99943-66_16_ghost.pdf', 6, 1, NULL, NULL),
(122, 'S11ECE007', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Design and Implementation of LFSR in Cryptography', 'IJSRD - International Journal for Scientific Resea', '4', '9', 'ISSN (online): 2321-', 'others', 'http://ijsrd.com/', 'NIL', '30708-ijsrdv4i90383.pdf', 4, 1, NULL, NULL),
(123, 'S11ECE007', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A Low Power Design of Encoder for Flash ADC Using CMOS Technology', 'International Journal of Innovative Research in Sc', '6', '3', 'ISSN (Online) : 2319', 'others', 'https://www.ijirset.com/upload/2017/ncfcsps/34_42_A%20Low.pdf', 'NIL', '27008-34_42_a-low.pdf', 7, 1, NULL, NULL),
(124, 'S11ECE007', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Infant Incubator Monitoring system with Remote Access (IIMRA)', 'International Journal of Innovative Research in Sc', '6', '3', 'ISSN (Online) : 2319', 'others', 'https://www.ijirset.com/upload/2017/ncfcsps/45_56_Infant.pdf', 'NIL', '5693-45_56_infant.pdf', 7, 1, NULL, NULL),
(125, 'S11ECE007', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FPGA Implementation of High Speed MAC Unit', 'International Journal of Innovative Research in Sc', '6', '3', 'ISSN (Online) : 2319', 'others', 'https://www.ijirset.com/upload/2017/ncfcsps/46_55_FPGA.pdf', 'NIL', '58003-46_55_fpga.pdf', 7, 1, NULL, NULL),
(126, 'S11ECE007', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Low Power High Speed Multiplexer using CMOS Technology for Industrial Applications', 'IJSRD - International Journal for Scientific Resea', '4', '11', 'ISSN (online): 2321-', 'others', 'http://ijsrd.com/', 'NIL', '17855-ijsrdv4i110181.pdf', 4, 1, NULL, NULL),
(127, 'S11ECE007', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Analysis and Design of Efficient Multipliers by Modified Adders using Various Logic', 'International Journal for Research in Technologica', '5', '2', 'ISSN (online): 2348-', 'others', 'http://www.ijrts.com/Downloads1.php?file=180502002', 'NIL', '53896-180502002-2018.pdf', 4, 1, NULL, NULL),
(128, 'S11ECE007', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DESIGN AND IMPLEMENTATION OF EFFICIENT ADDER USING VARIOUS LOGIC STYLES', 'International Research Journal of Engineering and ', '5', '2', 'e-ISSN: 2395-0056', 'others', 'https://www.irjet.net/archives/V5/i2/IRJET-V5I262.pdf', 'NIL', '1107-irjet-v5i262.pdf', 7, 1, NULL, NULL),
(129, 'S11ECE007', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FPGA Implementation of Cryptography Using Blowfish Algorithm', 'International Journal of Innovative Research in Sc', '7', '1', 'ISSN (Online) : 2319', 'others', 'https://www.ijirset.com/upload/2018/ncfcsps/J29_FPGA.pdf', 'NIL', '88375-j29_fpga.pdf', 7, 1, NULL, NULL),
(130, 'S11ECE007', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Analysis and Design of Low Power Arithmetic Circuits', 'International Journal of Innovative Research in Sc', '7', '1', 'ISSN (Online) : 2319', 'others', 'https://www.ijirset.com/upload/2018/ncfcsps/J40_Analysis.pdf', 'NIL', '11189-j40_analysis.pdf', 7, 1, NULL, NULL),
(131, 'S11ECE007', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'An Efficient Implementation of Multiplier Using Modified Carry Select Adder', 'International Journal of Innovative Research in Sc', '7', '1', 'ISSN (Online) : 2319', 'others', 'http://www.ijirset.org/', 'NIL', '8393-j54_an.pdf', 7, 1, NULL, NULL),
(132, 'S11ECE007', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Real Time Biometrics Based Vehicle Security Alert System with GPS and GSM Technology Using IOT', 'International Journal of Innovative Research in Sc', '8', '1', 'ISSN (Online) : 2319', 'others', 'https://www.ijirset.com/upload/2019/ncfcsps/20_batch%2021.pdf', 'NIL', '11612-20_batch-21.pdf', 7, 1, NULL, NULL),
(133, 'S11ECE007', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Design and Implementation of RBSD Technique for Various Arithmetic Circuits', 'International Journal of Innovative Research in Sc', '8', '1', 'ISSN (Online) : 2319', 'others', 'https://www.ijirset.com/upload/2019/ncfcsps/37_Batch%2037.pdf', 'NIL', '58176-37_batch-37.pdf', 7, 1, NULL, NULL),
(134, 'S11ECE007', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Analysis and Implementation of Multimode Interleaver for Wireless Communication', 'International Journal of Innovative Research in Sc', '8', '1', 'ISSN (Online) : 2319', 'others', 'https://www.ijirset.com/upload/2019/ncfcsps/42_batch%2042.pdf', 'NIL', '58398-42_batch-42.pdf', 7, 1, NULL, NULL),
(135, 'S01ECE018', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hospital Management System Using Beacon', 'International Journal of Innovative Research in Sc', '8', '1', '2319-8753', 'others', 'http://www.ijirset.com', '2', '85251-43_batch-43.pdf', 7, 1, NULL, NULL),
(136, 'S01ECE018', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Scouting Robot for Wireless Border Surveillance System', 'International Journal of Innovative Research in Sc', '8', '1', '2319-8753', 'others', 'http://www.ijirset.com', '2', '4497-45_batch-45.pdf', 7, 1, NULL, NULL),
(137, 'S01ECE018', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Smart Vehicle Monitoring System Using IOT Module for Boulders Management System', 'International Journal of Innovative Research in Sc', '8', '1', '2319-8753', 'others', 'http://www.ijirset.com', '2', '54202-46_batch-46.pdf', 7, 1, NULL, NULL),
(138, 'S01ECE018', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Computation of Gesture Recognition and Applications in Wireless Sensor Networks', 'International Journal of Innovative Research in Sc', '8', '1', '2319-8753', 'others', 'http://www.ijirset.com', '2', '57756-55_batch-55.pdf', 7, 1, NULL, NULL),
(139, 'S01ECE018', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Leukocyte Using FCM and AKM Based on Detection and Counting of Microscopic Images with Digital Image', 'International Journal of Innovative Research in Sc', '8', '1', '2319-8753', 'others', 'http://www.ijirset.com', '2', '5539-56_batch-56.pdf', 7, 1, NULL, NULL),
(140, 'S09ECE015', '2015-2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Simulated High Speed Fault Injection in Arithmetic Unit using Verilog HDL', 'International Journal of Innovative Research in Sc', '5', '2', ' 2319 - 8753', 'other', 'www.ijirset.com ', ' ', '33789-simulated-high-speed-fault-injection-in-arithmetic-unit-using-verilog-hdl.pdf', 0, 1, NULL, NULL),
(141, 'S09ECE015', '2015-2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Design an Energy-Efficient Approximate Multiplication for Digital Signal Processing Application', 'International Journal of Innovative Research in Sc', '5', '2', '2319 - 8753', 'other', ' www.ijirset.com   ', ' ', '57051-design-an-energy-efficient-approximate-multiplication-for-digital-signal-processing-applicatio', 0, 1, NULL, NULL),
(142, 'S09ECE015', '2015-2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A Combination of Low Power TPG and LFSR with FPGA Implementation', 'International Journal of Innovative Research in Sc', '5', '2', '2319 - 8753', 'other', 'www.ijirset.com ', ' ', '24304-a-combination-of-low-power-tpg-and-lfsr-with-fpga-implementation.pdf', 0, 1, NULL, NULL),
(143, 'S09ECE015', '2015-2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Test Pattern Generation by Sharing Scan Sequence in block level', 'International Journal of Innovative Research in Sc', '5', '2', '2319 - 8753', 'other', 'www.ijirset.com', ' ', '18387-test-pattern-generation-by-sharing-scan-sequence-in-block-level.pdf', 0, 1, NULL, NULL),
(144, 'S09ECE015', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Online Fault Detection Method within SRAM Based FIFO Buffer in NOC Router', 'International Journal of Innovative Research in Sc', '6', '3', '2319 - 8753', 'other', 'www.ijirset.com ', ' ', '52827-online-fault-detection-method-within-sram-based-fifo-buffer-in-noc-router.pdf', 0, 1, NULL, NULL),
(145, 'S09ECE015', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Performance Analysis of Various Scheduling Algorithms using FPGA Platforms', 'International Journal of Innovative Research in Sc', '6', '3', '2319 - 8753', 'other', 'www.ijirset.com', ' ', '37055-performance-analysis-of-various-scheduling-algorithms-using-fpga-platforms.pdf', 0, 1, NULL, NULL),
(146, 'S09ECE015', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Analysis of On-line and Periodic Field Fault Tolerant Test in FIFO Buffers of NOC Routers', 'International Journal of Emerging Technology in VL', '1', '1', '4116 â€“ 8986', 'other', 'ijetvsoc.com', ' ', '37060-analysis-of-on-line-and-periodic-field-fault-tolerant-test-in-fifo-buffers-of-noc-routers-pdf.', 0, 1, NULL, NULL),
(147, 'S09ECE015', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'An Intelligent Coin Based Mobile Charging System', 'International Journal of Innovative Research in Sc', '7', '1', '2319 - 8753', 'other', 'www.ijirset.com', ' ', '19662-an-intelligent-coin-based-mobile-charging-systems.pdf', 0, 1, NULL, NULL);
INSERT INTO `ece_fac_bkjrn` (`id`, `sid`, `ayear`, `bk1`, `bkcha1`, `bkissn1`, `bkmy1`, `bkpub1`, `bktype1`, `bkkey`, `jrntitle1`, `jrnname1`, `jrnvol1`, `jrnissue1`, `jrnissn1`, `jrncategory1`, `jrnlink1`, `jrncit1`, `jrnpdf1`, `jrnimpact1`, `jrnkey`, `gl`, `glkey`) VALUES
(148, 'S09ECE015', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Fault Tolerance Techniques for Combinational Circuits', 'International Journal of Innovative Research in Sc', '7', '1', '2319 - 8753', 'other', 'www.ijirset.com', ' ', '2331-fault-tolerance-techniques-for-combinational-circuits.pdf', 0, 1, NULL, NULL),
(149, 'S09ECE015', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Analysis of Stuck on and off Faults in SRAM Based FPGA', 'International Journal of Innovative Research in Sc', '7', '1', '2319 - 8753', 'other', 'www.ijirset.com', ' ', '21227-analysis-of-stuck-on-and-off-fault-in-sram-based-fpga.pdf', 0, 1, NULL, NULL),
(150, 'S09ECE015', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DETECTION OF STUCK OPEN AND SHORT FAULT IN SRAM BASED SYSTEM', 'Elsevierâ€™s SSRN eLibrary â€“ Journal of Informat', ' ', ' ', '1556-5068', 'other', 'https://ssrn.com/abstract=3125993', ' ', '84151-detection-of-stuck-open-and-short-fault-in-sram-based-system.pdf', 0, 1, NULL, NULL),
(151, 'S09ECE015', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A High Performance Scan Flip-Flop Design  for Serial and Mixed Mode Scan Test', 'International Journal of Innovative Research in Sc', '8', '1', '2319 - 8753', 'other', 'www.ijirset.com', ' ', '45244-a-high-performance-scan-flip-flop-design-for-serial-and-mixed-mode-scan-test.pdf', 0, 1, NULL, NULL),
(152, 'S09ECE015', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Identification of Fertility and Effective  Educational Strategies influencing the  Professional Comp', 'International Journal of Innovative Research in Sc', '8', '1', '2319 - 8753', 'other', 'www.ijirset.com', ' ', '69929-identification-of-fertility-and-effective-educational-strategies-influencing-the-professional-', 0, 1, NULL, NULL),
(153, 'S09ECE015', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Image Classification Using Android Things  through Machine Learning', 'International Journal of Innovative Research in Sc', '8', '1', '2319 - 8753', 'other', 'www.ijirset.com', ' ', '66245-image-classification-using-android-things-through-machine-learning.pdf', 0, 1, NULL, NULL),
(154, 'S09ECE015', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Implementation of High-Tech Hard Hat & Intelligent Ideal of Motorbike', 'International Journal of Electronics Engineering', '1', '1', '0973-7383', 'ugc', 'www.csjournals.com', ' ', '14740-implementation-of-high-tech-hard-hat-intelligent.pdf.pdf', 0, 1, NULL, NULL),
(155, 'S09ECE015', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Implementation of Automated Fuel and Oil Stock Digital Monitors for Vehicles', 'International Journal of Electronics Engineering', '11', '1', '0973-7383', 'ugc', 'www.csjournals.com', ' ', '66091-implementation-of-automated-fuel-and-oil-.pdf.pdf', 0, 1, NULL, NULL),
(156, 'S14ECE014', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Data Monitoring and Controlling Over Cloud Computing Through VNC Viewer', 'International Journal of Innovative Research in Sc', '8', '1', '2319 - 8753', 'others', 'http://www.ijirset.com/upload/2019/ncfcsps/27_Batch%2026_NEW.pdf', 'NIL', '44333-27_batch-26_new.pdf', 7, 1, NULL, NULL),
(157, 'S16ECE010', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Controlling TV with Arduino using Joystick ', 'International Journal of Innovative Research in Sc', 'Volume 8', 'Special Issue 1', '2319 - 8753', 'others', 'http://www.ijirset.com/upload/2019/ncfcsps/34_batch%2033.pdf', 'NIL', '96061-34_batch-33.pdf', 7, 1, NULL, NULL),
(158, 'S14ECE014', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A New Technique for Smart Shopping Cart', 'International Journal of Innovative Research in Sc', '6', '3', '2319 - 8753', 'others', 'http://www.ijirset.com/upload/2017/ncfcsps/32_40_A%20New.pdf', 'NIL', '21930-32_40_a-new.pdf', 7, 1, NULL, NULL),
(159, 'S14ECE014', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rescue Based Unmanned Aerial Vehicle Using Deep Learning Algorithm', 'International Journal of Innovative Research in Sc', '8', '1', '2319 - 8753', 'others', 'http://www.ijirset.com/upload/2019/ncfcsps/51_batch%2051.pdf', 'NIL', '11492-51_batch-51.pdf', 7, 1, NULL, NULL),
(160, 'S16ECE010', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Distratto: Impaired Driving Using Textile Sensors', 'International Journal of Innovative Research in Sc', 'Volume 7', 'Special Issue 1', '2319 - 8753', 'others', 'http://www.ijirset.com/upload/2018/ncfcsps/J63_Distratto.pdf', 'NIL', '59462-j63_distratto.pdf', 7, 1, NULL, NULL),
(161, 'S14ECE014', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hand-Eye Coordination Equipment Testing for Trainees', 'International Journal of Innovative Research in Sc', '6', '3', '2319 - 8753', 'others', 'http://www.ijirset.com/upload/2017/ncfcsps/61_11_Hand.pdf', 'NIL', '26632-61_11_hand.pdf', 7, 1, NULL, NULL),
(162, 'S16ECE010', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Design a System to Detect Metals Using Raspberry PI and Image Processing Technique', 'International Journal of Innovative Research in Sc', 'Volume 7', 'Special Issue 1', '2319 - 8753', 'others', 'http://www.ijirset.com/upload/2018/ncfcsps/J64_Design.pdf', 'NIL', '61892-j64_design.pdf', 7, 1, NULL, NULL),
(163, 'S14ECE014', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4 Window Annunciator Using ST Microcontroller', 'International Journal of Innovative Research in Sc', '7', '1', '2319 - 8753', 'others', 'http://www.ijirset.com/upload/2018/ncfcsps/J19_4%20Window.pdf', 'NIL', '34764-j19_4-window.pdf', 7, 1, NULL, NULL),
(164, 'S14ECE014', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Biometric Based Ignition System Using Arduino', 'International Journal of Innovative Research in Sc', '7', '1', '2319 - 8753', 'others', 'http://www.ijirset.com/upload/2018/ncfcsps/J25_Biometric.pdf', 'NIL', '24302-j25_biometric.pdf', 7, 1, NULL, NULL),
(165, 'S14ECE014', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cyberphysical System with Virtual Reality for Intelligent Motion Recognition and Training', 'International Journal of Innovative Research in Sc', '7', '1', '2319 - 8753', 'others', 'http://www.ijirset.com/upload/2018/ncfcsps/J68_Cyberphysical.pdf', 'NIL', '65130-j68_cyberphysical.pdf', 7, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ece_fac_edu`
--

CREATE TABLE `ece_fac_edu` (
  `sid` varchar(30) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `sboard` varchar(10) DEFAULT NULL,
  `syear` int(4) DEFAULT NULL,
  `spercentage` int(4) DEFAULT NULL,
  `scertificate` varchar(100) DEFAULT NULL,
  `skey` int(1) DEFAULT NULL,
  `s2name` varchar(50) DEFAULT NULL,
  `s2board` varchar(10) DEFAULT NULL,
  `s2branch` varchar(50) DEFAULT NULL,
  `s2year` int(4) DEFAULT NULL,
  `s2percentage` int(4) DEFAULT NULL,
  `s2certificate` varchar(100) DEFAULT NULL,
  `s2key` int(1) DEFAULT NULL,
  `dname` varchar(50) DEFAULT NULL,
  `dboard` varchar(10) DEFAULT NULL,
  `ddegree` varchar(50) DEFAULT NULL,
  `dmode` varchar(10) DEFAULT NULL,
  `dyear` int(4) DEFAULT NULL,
  `dpercentage` int(4) DEFAULT NULL,
  `dcertificate` varchar(100) DEFAULT NULL,
  `dkey` int(1) DEFAULT NULL,
  `d1name` varchar(50) DEFAULT NULL,
  `d1board` varchar(10) DEFAULT NULL,
  `d1degree` varchar(50) DEFAULT NULL,
  `d1mode` varchar(10) DEFAULT NULL,
  `d1year` int(4) DEFAULT NULL,
  `d1percentage` int(4) DEFAULT NULL,
  `d1certificate` varchar(100) DEFAULT NULL,
  `d1key` int(1) DEFAULT NULL,
  `d2name` varchar(50) DEFAULT NULL,
  `d2board` varchar(10) DEFAULT NULL,
  `d2degree` varchar(50) DEFAULT NULL,
  `d2mode` varchar(10) DEFAULT NULL,
  `d2year` int(4) DEFAULT NULL,
  `d2percentage` int(4) DEFAULT NULL,
  `d2certificate` varchar(100) DEFAULT NULL,
  `d2key` int(1) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `uuniversity` varchar(50) DEFAULT NULL,
  `udegree` varchar(50) DEFAULT NULL,
  `ubranch` varchar(50) DEFAULT NULL,
  `umode` varchar(10) DEFAULT NULL,
  `uyear` int(4) DEFAULT NULL,
  `upercentage` int(4) DEFAULT NULL,
  `ucertificate` varchar(100) DEFAULT NULL,
  `ukey` int(1) DEFAULT NULL,
  `u1name` varchar(50) DEFAULT NULL,
  `u1university` varchar(50) DEFAULT NULL,
  `u1degree` varchar(50) DEFAULT NULL,
  `u1branch` varchar(50) DEFAULT NULL,
  `u1mode` varchar(10) DEFAULT NULL,
  `u1year` int(4) DEFAULT NULL,
  `u1percentage` int(4) DEFAULT NULL,
  `u1certificate` varchar(100) DEFAULT NULL,
  `u1key` int(1) DEFAULT NULL,
  `u2name` varchar(50) DEFAULT NULL,
  `u2university` varchar(50) DEFAULT NULL,
  `u2degree` varchar(50) DEFAULT NULL,
  `u2branch` varchar(50) DEFAULT NULL,
  `u2mode` varchar(10) DEFAULT NULL,
  `u2year` int(4) DEFAULT NULL,
  `u2percentage` int(4) DEFAULT NULL,
  `u2certificate` varchar(100) DEFAULT NULL,
  `u2key` int(1) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `puniversity` varchar(50) DEFAULT NULL,
  `pdegree` varchar(50) DEFAULT NULL,
  `pbranch` varchar(50) DEFAULT NULL,
  `pmode` varchar(10) DEFAULT NULL,
  `pyear` int(4) DEFAULT NULL,
  `ppercentage` int(4) DEFAULT NULL,
  `pcertificate` varchar(100) DEFAULT NULL,
  `pkey` int(1) DEFAULT NULL,
  `p1name` varchar(50) DEFAULT NULL,
  `p1university` varchar(50) DEFAULT NULL,
  `p1degree` varchar(50) DEFAULT NULL,
  `p1branch` varchar(50) DEFAULT NULL,
  `p1mode` varchar(10) DEFAULT NULL,
  `p1year` int(4) DEFAULT NULL,
  `p1percentage` int(4) DEFAULT NULL,
  `p1certificate` varchar(100) DEFAULT NULL,
  `p1key` int(1) DEFAULT NULL,
  `p2name` varchar(50) DEFAULT NULL,
  `p2university` varchar(50) DEFAULT NULL,
  `p2degree` varchar(50) DEFAULT NULL,
  `p2branch` varchar(50) DEFAULT NULL,
  `p2mode` varchar(10) DEFAULT NULL,
  `p2year` int(4) DEFAULT NULL,
  `p2percentage` int(4) DEFAULT NULL,
  `p2certificate` varchar(100) DEFAULT NULL,
  `p2key` int(1) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `muniversity` varchar(50) DEFAULT NULL,
  `mspec` varchar(50) DEFAULT NULL,
  `mbranch` varchar(50) DEFAULT NULL,
  `mmode` varchar(10) DEFAULT NULL,
  `myear` int(4) DEFAULT NULL,
  `mpercentage` int(4) DEFAULT NULL,
  `mthesis` varchar(50) DEFAULT NULL,
  `mguide` varchar(30) DEFAULT NULL,
  `mcertificate` varchar(100) DEFAULT NULL,
  `mkey` int(1) DEFAULT NULL,
  `phname` varchar(50) DEFAULT NULL,
  `phuniversity` varchar(50) DEFAULT NULL,
  `phspec` varchar(50) DEFAULT NULL,
  `phbranch` varchar(50) DEFAULT NULL,
  `phmode` varchar(10) DEFAULT NULL,
  `phyreg` varchar(7) DEFAULT NULL,
  `phyear` varchar(7) DEFAULT NULL,
  `phthesis` varchar(100) DEFAULT NULL,
  `phguide` varchar(30) DEFAULT NULL,
  `phcertificate` varchar(100) DEFAULT NULL,
  `phkey` int(1) DEFAULT NULL,
  `ph1name` varchar(50) DEFAULT NULL,
  `ph1university` varchar(50) DEFAULT NULL,
  `ph1spec` varchar(50) DEFAULT NULL,
  `ph1branch` varchar(50) DEFAULT NULL,
  `ph1mode` varchar(10) DEFAULT NULL,
  `ph1yreg` varchar(7) DEFAULT NULL,
  `ph1year` varchar(7) DEFAULT NULL,
  `ph1thesis` varchar(100) DEFAULT NULL,
  `ph1guide` varchar(30) DEFAULT NULL,
  `ph1certificate` varchar(100) DEFAULT NULL,
  `ph1key` int(1) DEFAULT NULL,
  `ph2name` varchar(50) DEFAULT NULL,
  `ph2university` varchar(50) DEFAULT NULL,
  `ph2spec` varchar(50) DEFAULT NULL,
  `ph2branch` varchar(50) DEFAULT NULL,
  `ph2mode` varchar(10) DEFAULT NULL,
  `ph2yreg` varchar(7) DEFAULT NULL,
  `ph2year` varchar(7) DEFAULT NULL,
  `ph2thesis` varchar(100) DEFAULT NULL,
  `ph2guide` varchar(30) DEFAULT NULL,
  `ph2certificate` varchar(100) DEFAULT NULL,
  `ph2key` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ece_fac_edu`
--

INSERT INTO `ece_fac_edu` (`sid`, `sname`, `sboard`, `syear`, `spercentage`, `scertificate`, `skey`, `s2name`, `s2board`, `s2branch`, `s2year`, `s2percentage`, `s2certificate`, `s2key`, `dname`, `dboard`, `ddegree`, `dmode`, `dyear`, `dpercentage`, `dcertificate`, `dkey`, `d1name`, `d1board`, `d1degree`, `d1mode`, `d1year`, `d1percentage`, `d1certificate`, `d1key`, `d2name`, `d2board`, `d2degree`, `d2mode`, `d2year`, `d2percentage`, `d2certificate`, `d2key`, `uname`, `uuniversity`, `udegree`, `ubranch`, `umode`, `uyear`, `upercentage`, `ucertificate`, `ukey`, `u1name`, `u1university`, `u1degree`, `u1branch`, `u1mode`, `u1year`, `u1percentage`, `u1certificate`, `u1key`, `u2name`, `u2university`, `u2degree`, `u2branch`, `u2mode`, `u2year`, `u2percentage`, `u2certificate`, `u2key`, `pname`, `puniversity`, `pdegree`, `pbranch`, `pmode`, `pyear`, `ppercentage`, `pcertificate`, `pkey`, `p1name`, `p1university`, `p1degree`, `p1branch`, `p1mode`, `p1year`, `p1percentage`, `p1certificate`, `p1key`, `p2name`, `p2university`, `p2degree`, `p2branch`, `p2mode`, `p2year`, `p2percentage`, `p2certificate`, `p2key`, `mname`, `muniversity`, `mspec`, `mbranch`, `mmode`, `myear`, `mpercentage`, `mthesis`, `mguide`, `mcertificate`, `mkey`, `phname`, `phuniversity`, `phspec`, `phbranch`, `phmode`, `phyreg`, `phyear`, `phthesis`, `phguide`, `phcertificate`, `phkey`, `ph1name`, `ph1university`, `ph1spec`, `ph1branch`, `ph1mode`, `ph1yreg`, `ph1year`, `ph1thesis`, `ph1guide`, `ph1certificate`, `ph1key`, `ph2name`, `ph2university`, `ph2spec`, `ph2branch`, `ph2mode`, `ph2yreg`, `ph2year`, `ph2thesis`, `ph2guide`, `ph2certificate`, `ph2key`) VALUES
('S09ECE015', 'MPL Boys Higher Secondary School', 'state', 1998, 60, '37888-tenth.pdf', 1, 'MPL B HSS', 'state', 'Electrical Motor Rewinding', 2001, 71, '24522-+2.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sona College of Technology', 'Anna University', 'B.E.', 'Electrical and Electronics Engineering', 'regular', 2006, 71, '3592-u.g.degree.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sona College of Technology', 'Anna University', 'P.G.', 'VLSI Design', 'regular', 2009, 9, '84406-p.g.degree.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S10ECE005', 'Government higher secondary school Krishnagiri', 'state', 2002, 82, '11787-sslc.pdf', 1, 'Sri Vijay Vidyalaya higher secondary school Dharma', 'state', 'Maths/Biology', 2004, 85, '97490-hsc.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Paavai Engineering College', 'Anna University Chennai', 'BE', 'Electronics and Communication Engineering', 'regular', 2008, 72, '29335-ug.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kongu Engineering College', 'Anna University Coimbatore', 'ME', 'Applied Electronics', 'regular', 2010, 8, '61763-pg.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S11ECE007', 'R V GOVT BOYS HIGHER SECONDARY SCHOOL,HOSUR', 'state', 2003, 89, '19342-naga-10th.pdf', 1, 'R V GOVT BOYS HIGHER SECONDARY SCHOOL,HOSUR', 'state', 'PCCM', 2005, 76, '61263-naga-12th.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADHIYAMAAN COLLEGE OF ENGINEERING,HOSUR', 'ANNA UNIVERSITY-CHENNAI', 'B.E', 'ELECTRONICS AND COMMUNICATION ENGINEERING', 'regular', 2009, 77, '43047-naga-be.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'K.S.RANGASAMY COLLEGE OF TECHNOLOGY,TIRUCHENGODE', 'ANNA UNIVERSITY-COIMBATORE', 'M.E', 'APPLIED ELECTRONICS', 'regular', 2011, 9, '23401-naga-me.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S13ECE003', 'GOVT HS CHINNANKUPPAM', 'state', 2004, 80, '77218-mani10th.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Adhiyamaan polytechnic college', 'STATE BOAR', 'DIPLOMA', 'regular', 2008, 79, '89746-manidiploma.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Adhiyamaan college of engineering', 'Anna University', 'B.E', 'ELECTRONICS AND COMMUNICATION ENGINEERING', 'regular', 2011, 8, '97399-maniug.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADHIYAMAAN COLLEGE OF ENGINEERING', 'ANNA UNIVERSITY', 'M.E', 'COMMUNICATION SYSTEMS', 'regular', 2013, 9, '21077-mani-pg.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S14ECE009', 'ST.JOSEPH MAT. HR. SEC. SCHOOL', 'state', 2006, 92, '60018-sslc.pdf', 1, 'ST. JOSEPH MAT.HR. SEC. SCHOOL', 'state', 'MATHS-BIOLOGY', 2008, 87, '6638-hsc.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PARK COLLEGE OF ENGINEERING AND TECHNOLOGY', 'Anna University', 'B.E', 'ELECTRONICS AND COMMUNICATION ENGINEERING', 'regular', 2012, 9, '5484-b.e..pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KPR INSTITUTE OF ENGINEERING AND TECHNOLOGY', 'ANNA UNIVERSITY', 'M.E', 'VLSI DESIGN', 'regular', 2014, 8, '60062-m.e.-certificate.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S14ECE014', 'ROSEMARY HSS', 'state', 2005, 84, '13905-somu-sslc.pdf', 1, 'ROSEMARY HSS', 'state', 'MATHS-COMPUTER SCIENCE', 2007, 81, '15432-hsc.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DR. SIVANTHI ADITHINAR COLLEGE OF ENGINEERING', 'Anna University', 'B.E', 'ELECTRONICS AND COMMUNICATION ENGINEERING', 'regular', 2011, 68, '70092-b.e.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADHIYAMAAN COLLEGE OF ENGINEERING', 'ANNA UNIVERSITY', 'M.E', 'COMMUNICATION SYSTEMS', 'regular', 2014, 9, '98795-m.e.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S16ECE010', 'O.C.P.M GIRLS HIGHER SECONDARY SCHOOL', 'state', 2003, 89, '96109-10.pdf', 1, 'O.C.P.M GIRLS HR.SEC.SCHOOL', 'state', 'MATHS-BIOLOGY', 2005, 82, '92222-12.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S17ECE004', 'NEW INDIA HIGH SCHOOL', 'state', 2007, 92, '38418-x.pdf', 1, 'SRI VIJAY VIDHYALAYA BOYS MATRIC HIGHER SECONDARY ', 'state', 'MATHS-BIOLOGY', 2009, 94, '59065-x11.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A.C. COLLEGE OF ENGINEERING AND TECHNOLOGY', 'Anna University', 'B.E', 'ELECTRONICS AND COMMUNICATION ENGINEERING', 'regular', 2013, 8, '98501-daviid-ug-degree.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AVS ENGINEERING COLLEGE', 'ANNA UNIVERSITY', 'M.E', 'VLSI DESIGN', 'regular', 2015, 8, '3435-david1-pg-degeree.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ece_fac_exp`
--

CREATE TABLE `ece_fac_exp` (
  `sid` varchar(30) NOT NULL,
  `clg1` varchar(50) DEFAULT NULL,
  `clgdesg1` varchar(30) DEFAULT NULL,
  `clgdoj1` date DEFAULT NULL,
  `clgdor1` date DEFAULT NULL,
  `clgreason1` varchar(100) DEFAULT NULL,
  `clgcir1` varchar(100) DEFAULT NULL,
  `clgkey` int(1) DEFAULT NULL,
  `pol1` varchar(50) DEFAULT NULL,
  `poldesg1` varchar(30) DEFAULT NULL,
  `poldoj1` date DEFAULT NULL,
  `poldor1` date DEFAULT NULL,
  `polreason1` varchar(100) DEFAULT NULL,
  `polcir1` varchar(100) DEFAULT NULL,
  `polkey` int(1) DEFAULT NULL,
  `sch1` varchar(50) DEFAULT NULL,
  `schdesg1` varchar(30) DEFAULT NULL,
  `schdoj1` date DEFAULT NULL,
  `schdor1` date DEFAULT NULL,
  `schreason1` varchar(100) DEFAULT NULL,
  `schcir1` varchar(100) DEFAULT NULL,
  `schkey` int(1) DEFAULT NULL,
  `ind1` varchar(50) DEFAULT NULL,
  `inddesg1` varchar(30) DEFAULT NULL,
  `indnature1` varchar(30) DEFAULT NULL,
  `inddoj1` date DEFAULT NULL,
  `inddor1` date DEFAULT NULL,
  `indreason1` varchar(100) DEFAULT NULL,
  `indcir1` varchar(100) DEFAULT NULL,
  `indkey` int(1) DEFAULT NULL,
  `ot1` varchar(50) DEFAULT NULL,
  `otdesg1` varchar(30) DEFAULT NULL,
  `otnature1` varchar(30) DEFAULT NULL,
  `otdoj1` date DEFAULT NULL,
  `otdor1` date DEFAULT NULL,
  `otreason1` varchar(100) DEFAULT NULL,
  `otcir1` varchar(100) DEFAULT NULL,
  `otkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ece_fac_exp`
--

INSERT INTO `ece_fac_exp` (`sid`, `clg1`, `clgdesg1`, `clgdoj1`, `clgdor1`, `clgreason1`, `clgcir1`, `clgkey`, `pol1`, `poldesg1`, `poldoj1`, `poldor1`, `polreason1`, `polcir1`, `polkey`, `sch1`, `schdesg1`, `schdoj1`, `schdor1`, `schreason1`, `schcir1`, `schkey`, `ind1`, `inddesg1`, `indnature1`, `inddoj1`, `inddor1`, `indreason1`, `indcir1`, `indkey`, `ot1`, `otdesg1`, `otnature1`, `otdoj1`, `otdor1`, `otreason1`, `otcir1`, `otkey`) VALUES
('S01ECE018', 'Government college of Engineering, Bargur', 'Lecturer', '1999-03-03', '2000-04-03', 'Career Growth', '55340-exp-certificate-other-college.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S09ECE015', 'Sona College of Technology', 'Trainee Research Associate', '2006-09-29', '2017-08-31', 'Higher Study', '67034-sona-service-certificate.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ece_fac_funpat`
--

CREATE TABLE `ece_fac_funpat` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `titleofpro1` varchar(50) DEFAULT NULL,
  `duration1` varchar(30) DEFAULT NULL,
  `amountsan1` varchar(20) DEFAULT NULL,
  `agency1` varchar(20) DEFAULT NULL,
  `startdate1` date DEFAULT NULL,
  `copiname1` varchar(20) DEFAULT NULL,
  `year1` varchar(7) DEFAULT NULL,
  `order1` varchar(200) DEFAULT NULL,
  `uc1` varchar(200) DEFAULT NULL,
  `funkey` int(1) DEFAULT NULL,
  `nameofpat1` varchar(50) DEFAULT NULL,
  `title1` varchar(30) DEFAULT NULL,
  `fileno1` varchar(20) DEFAULT NULL,
  `pat_cer` varchar(200) NOT NULL,
  `patkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ece_fac_funpat`
--

INSERT INTO `ece_fac_funpat` (`id`, `sid`, `ayear`, `titleofpro1`, `duration1`, `amountsan1`, `agency1`, `startdate1`, `copiname1`, `year1`, `order1`, `uc1`, `funkey`, `nameofpat1`, `title1`, `fileno1`, `pat_cer`, `patkey`) VALUES
(1, 'S01ECE018', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Intellectual Property India', 'An Apparatus For Transformatio', '201841022781', '81391-patent-2-complete_specifications__1_.pdf', 1),
(2, 'S01ECE018', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Allinnov research and development private limited', 'A smart Hybrid cooking system', '201641037185', '41031-patent-madam.pdf', 1),
(3, 'S01ECE018', '2018-2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Intellectual Property India', 'An Apparatus for Fast Image Re', 'TEMP/E-1/24920/2018-', '30982-patent-1-completespecifications.pdf', 1),
(4, 'S01ECE018', '2012-2013', 'Application of sparse representations in hyperspec', '3 years', 'Rs.386667', 'All India council fo', '2013-03-04', 'nil', '0', '24653-funded-project.pdf', '0', 1, NULL, NULL, NULL, '', NULL),
(5, 'S01ECE018', '2012-2013', 'Application of sparse representations in hyperspec', '3 years', 'Rs.386667', 'All India council fo', '2013-03-04', 'nil', '2018-11', '92981-funded-project.pdf', '0', 1, NULL, NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ece_fac_glc`
--

CREATE TABLE `ece_fac_glc` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `gltitle1` varchar(50) DEFAULT NULL,
  `gldays1` int(3) DEFAULT NULL,
  `glfrom1` date NOT NULL,
  `glto1` date NOT NULL,
  `gldate1` date NOT NULL,
  `gltopic1` varchar(50) DEFAULT NULL,
  `glorg1` varchar(50) DEFAULT NULL,
  `glplace1` varchar(50) DEFAULT NULL,
  `glpic1` varchar(100) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL,
  `conname1` varchar(30) DEFAULT NULL,
  `contitle1` varchar(50) DEFAULT NULL,
  `conorg1` varchar(50) DEFAULT NULL,
  `condays1` int(3) DEFAULT NULL,
  `confrom1` date NOT NULL,
  `conto1` date NOT NULL,
  `condate1` date NOT NULL,
  `conlevel1` varchar(20) DEFAULT NULL,
  `conpdf1` varchar(100) DEFAULT NULL,
  `concer1` varchar(100) DEFAULT NULL,
  `conkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ece_fac_glc`
--

INSERT INTO `ece_fac_glc` (`id`, `sid`, `ayear`, `gltitle1`, `gldays1`, `glfrom1`, `glto1`, `gldate1`, `gltopic1`, `glorg1`, `glplace1`, `glpic1`, `glkey`, `conname1`, `contitle1`, `conorg1`, `condays1`, `confrom1`, `conto1`, `condate1`, `conlevel1`, `conpdf1`, `concer1`, `conkey`) VALUES
(1, 'S01ECE018', '2012-2013', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'IEEE- Fourth International Con', 'Missing Value Imputation Techniques Depth Survey A', 'MIT, Anna University, Chennai. ', 3, '2012-12-13', '2012-12-15', '0000-00-00', 'international', NULL, '75878-1.4th-international-conference-on-advanced-computing-mit.pdf', 1),
(2, 'S01ECE018', '2012-2013', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'IEEE- Fourth International Con', 'Dynamic Handoff Decision Based on Current Traffic ', 'MIT, Anna University, Chennai', 3, '2012-12-13', '2012-12-15', '0000-00-00', 'international', NULL, '38454-2.4th-international-conference-on-advanced-computing-mit.pdf', 1),
(3, 'S14ECE009', '2013-2014', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'wireless networks, computing a', 'Keeper topology for optimization of power delay pr', 'PSG COLLEGE OF TECHNOLOGY', 2, '2014-02-07', '2014-02-08', '0000-00-00', 'national', NULL, '72826-psg-college.pdf', 1),
(4, 'S14ECE009', '2012-2013', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'OPTIMIZATION TECHNIQUES IN ENG', 'Taper buffer design for low power and delay optimi', 'Bannari Amman Institute of Technology', 2, '2013-04-19', '2013-04-20', '0000-00-00', 'national', NULL, '83158-bannari-college.pdf', 1),
(5, 'S14ECE009', '2013-2014', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'International conference on el', 'Keeper topology for optimization of pdp', 'karpagam college of engineering', 2, '2014-02-13', '2014-02-14', '0000-00-00', 'international', NULL, '73988-karpagam-college-conference.pdf', 1),
(6, 'S01ECE018', '2003-2004', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'Emerging Trends in Engineering', 'Independent Tree Adhoc Multicast Routing', 'Dr.M.G.R.Educational and Research Institute', 3, '2004-05-01', '2004-05-03', '0000-00-00', 'national', NULL, '61353-conference-2004.pdf', 1),
(7, 'S01ECE018', '2014-2015', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'International conference in Sy', 'Sleepy Keeper: A new approach to low leakage power', 'Surya Engineering college', 2, '2015-03-04', '2015-03-05', '0000-00-00', 'international', NULL, '65003-conference-icsee,2015.pdf', 1),
(8, 'S01ECE018', '2014-2015', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'International conference in Sy', 'Area and power optimization of DCT Architecture fo', 'Surya Engineering college', 2, '2015-03-04', '2015-03-05', '0000-00-00', 'international', NULL, '94718-conference-icsee-2,2015.pdf', 1),
(9, 'S01ECE018', '2014-2015', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'International conference on En', 'THD analysis of sevel level hybrid PV inverter wit', 'Muthayammal college of engineering, Namakkal', 2, '2015-03-05', '2015-03-06', '0000-00-00', 'international', NULL, '71525-conference-icets,2015.pdf', 1),
(10, 'S01ECE018', '2015-2016', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'International conference on En', 'THD analysis of cascaded H-Bridge inverter with fu', 'Muthayammal college of engineering, Namakkal', 2, '2016-03-18', '2016-03-19', '0000-00-00', 'international', NULL, '8838-conference-icets,2016.pdf', 1),
(11, 'S01ECE018', '2015-2016', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'International conference on En', 'A new topology of fifteen level solar PV inverter ', 'Muthayammal college of engineering, Namakkal', 2, '2016-03-18', '2016-03-19', '0000-00-00', 'international', NULL, '87531-conference-icets,mar2016.pdf', 1),
(12, 'S01ECE018', '2015-2016', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'International conference on En', 'Reduction of THD in thirteen level hybrid PV inver', 'Muthayammal college of engineering, Namakkal', 2, '2016-03-18', '2016-03-19', '0000-00-00', 'international', NULL, '60572-conference-icets,march2016.pdf', 1),
(13, 'S01ECE018', '2018-2019', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'International conference on tr', 'Intergrating Renewable energy system in smart grid', 'Mangayarkarasi college of engineering,madurai', 1, '0000-00-00', '0000-00-00', '2019-03-15', 'international', NULL, '42605-conference-mar2019.pdf', 1),
(14, 'S01ECE018', '2016-2017', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'International conference on Ad', 'Literature survey on spectrum utilization using SR', 'Government college of engineering, salem', 4, '2017-03-07', '2017-03-10', '0000-00-00', 'international', NULL, '85038-conference-icaren,2017.pdf', 1),
(15, 'S01ECE018', '2005-2006', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'International conference on sy', 'Digital Circuit Design using Evolvable Hardware', 'Pentagram Research Centre Pvt Ltd.', 5, '2006-01-04', '2006-01-08', '0000-00-00', 'international', NULL, '13440-conference-icsci-2006.pdf', 1),
(16, 'S01ECE018', '2012-2013', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'International conference on em', 'RF Applicator design for efficient heating of mate', 'Coimbatore Institute of Information Technology', 2, '2013-02-21', '2013-02-22', '0000-00-00', 'international', NULL, '32099-ciit-journal,anto-conference,2013.pdf', 1),
(17, 'S01ECE018', '2012-2013', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'International conference on em', 'FPGA based implementation of SDR waveforms in digi', 'Coimbatore Institute of Information Technology', 2, '2013-02-21', '2013-02-22', '0000-00-00', 'international', NULL, '91410-ciit-journal,sylvia-conference,2013.pdf', 1),
(18, 'S01ECE018', '2018-2019', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'National conference on frontie', 'Hospital Management System Using Beacon', 'Adhiyamaan college of engineering', 2, '2019-03-19', '2019-03-20', '0000-00-00', 'national', NULL, '80869-43_batch-43.pdf', 1),
(19, 'S01ECE018', '2018-2019', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'National conference on frontie', 'Scouting Robot for Wireless Border Surveillance Sy', 'Adhiyamaan college of engineering', 2, '2019-03-19', '2019-03-20', '0000-00-00', 'national', NULL, '77220-45_batch-45.pdf', 1),
(20, 'S01ECE018', '2018-2019', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'National conference on frontie', 'Leukocyte Using FCM and AKM Based on Detection and', 'Adhiyamaan college of engineering', 2, '2019-03-19', '2019-03-20', '0000-00-00', 'national', NULL, '93374-56_batch-56.pdf', 1),
(21, 'S01ECE018', '2012-2013', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'International conference on cu', 'Location and priority based vertical handoff appro', 'Kristu Jayanti college of mangament and technology', 2, '2013-02-15', '2013-02-16', '0000-00-00', 'international', NULL, '2539-vertical_handoff.pdf', 1),
(22, 'S01ECE018', '2015-2016', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'National conference on frontie', 'Multiplay Service Deployment Using GEPON Technolog', 'Adhiyamaan college of engineering', 2, '2016-03-10', '2016-03-11', '0000-00-00', 'national', NULL, '58797-conference-50_2_multiplay,2016.pdf', 1),
(23, 'S01ECE018', '2015-2016', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'National conference on frontie', 'Performance Analysis of 4 Bit & 8 Bit Vedic Multip', 'Adhiyamaan college of engineering', 2, '2016-03-10', '2016-03-11', '0000-00-00', 'national', NULL, '28396-conference_1ace2016.pdf', 1),
(24, 'S01ECE018', '2015-2016', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'National conference on frontie', 'High Throughput, Privacy and Security for Handover', 'Adhiyamaan college of engineering', 2, '2016-03-10', '2016-03-11', '0000-00-00', 'national', NULL, '13462-conference-2ace,2016.pdf', 1),
(25, 'S01ECE018', '2015-2016', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'National conference on frontie', 'Personal Authentication Using the Combination of L', 'Adhiyamaan college of engineering', 2, '2016-03-10', '2016-03-11', '0000-00-00', 'national', NULL, '55298-conference-3ace-2016.pdf', 1),
(26, 'S01ECE018', '2015-2016', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'National conference on frontie', 'Design and Analysis of Sierpinski Pentagonal Fract', 'Adhiyamaan college of engineering', 2, '2016-03-10', '2016-03-11', '0000-00-00', 'national', NULL, '89824-conference-4ace2016.pdf', 1),
(27, 'S09ECE015', '2012-2013', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'International Conference on Co', 'Reducing Test Data Volume Using Flexible Code for ', 'Department of EEE, ECE & EIE', 3, '2012-09-14', '2012-09-16', '0000-00-00', 'international', NULL, '74891-mahendra-international-conference---september-2012-(2012-2013).pdf', 1),
(28, 'S09ECE015', '2012-2013', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'International Conference on Co', 'An Inteligent Tactical Traded Robot Using Mobile T', 'Department of EEE, ECE & EIE', 3, '2012-09-14', '2012-09-16', '0000-00-00', 'international', NULL, '90206-mahendra-international-conference---september-2012--1(2012-2013).pdf', 1),
(29, 'S09ECE015', '2017-2018', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'Inteligent Computing System', 'Detection of Stuck Open and Short Fault in SRAM Ba', 'Department of CSE, IT, MCA', 2, '2017-12-15', '2017-12-16', '0000-00-00', 'international', NULL, '78310-international-conference---sona-college-of-technology-nov--2017.pdf', 1),
(30, 'S09ECE015', '2017-2018', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'Electrical, Electronics, Compu', 'Low Power Stuck Open and Short Fault Analysis Buil', 'Priyadharshini Engineering College', 2, '2018-01-28', '2018-01-29', '0000-00-00', 'international', NULL, '42127-priyadharshni---international-conference.pdf', 1),
(31, 'S09ECE015', '2012-2013', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'Recent Trends in Electrical & ', 'Flexible Code Test Data Compression Using Scan Bas', 'Adhiyamaan College of Engineering', 1, '0000-00-00', '0000-00-00', '2012-09-21', 'national', NULL, '72559-national-conference---sri-venkateswara---1-(2012-2013).pdf', 1),
(32, 'S01ECE018', '2010-2011', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'National conference on communi', 'Noise PSD tracking with low complexity using MMSE ', 'SSM college of Engineering', 1, '0000-00-00', '0000-00-00', '2011-03-11', 'national', NULL, '92398-conference-mar2011.pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ece_fac_member`
--

CREATE TABLE `ece_fac_member` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `memberid1` varchar(30) DEFAULT NULL,
  `validity1` varchar(20) DEFAULT NULL,
  `pic1` varchar(100) DEFAULT NULL,
  `memkey` int(1) DEFAULT NULL,
  `res1` varchar(50) DEFAULT NULL,
  `level1` varchar(20) DEFAULT NULL,
  `res2` varchar(50) NOT NULL,
  `level2` varchar(20) NOT NULL,
  `res3` varchar(50) NOT NULL,
  `level3` varchar(20) NOT NULL,
  `res4` varchar(50) NOT NULL,
  `level4` varchar(20) NOT NULL,
  `res5` varchar(50) NOT NULL,
  `level5` varchar(20) NOT NULL,
  `res6` varchar(50) NOT NULL,
  `level6` varchar(20) NOT NULL,
  `res7` varchar(50) NOT NULL,
  `level7` varchar(20) NOT NULL,
  `res8` varchar(50) NOT NULL,
  `level8` varchar(20) NOT NULL,
  `res9` varchar(50) NOT NULL,
  `level9` varchar(20) NOT NULL,
  `reskey` int(1) DEFAULT NULL,
  `aname1` varchar(50) DEFAULT NULL,
  `aissue1` varchar(10) DEFAULT NULL,
  `amy1` varchar(7) DEFAULT NULL,
  `aname2` varchar(50) NOT NULL,
  `acer2` varchar(30) NOT NULL,
  `aissue2` varchar(30) NOT NULL,
  `amy2` varchar(20) NOT NULL,
  `acer1` varchar(100) DEFAULT NULL,
  `awakey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ece_fac_member`
--

INSERT INTO `ece_fac_member` (`id`, `sid`, `ayear`, `name1`, `memberid1`, `validity1`, `pic1`, `memkey`, `res1`, `level1`, `res2`, `level2`, `res3`, `level3`, `res4`, `level4`, `res5`, `level5`, `res6`, `level6`, `res7`, `level7`, `res8`, `level8`, `res9`, `level9`, `reskey`, `aname1`, `aissue1`, `amy1`, `aname2`, `acer2`, `aissue2`, `amy2`, `acer1`, `awakey`) VALUES
(1, 'S11ECE007', '2011-2012', NULL, NULL, NULL, NULL, NULL, 'TUTOR', 'department', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(2, 'S11ECE007', '2012-2013', NULL, NULL, NULL, NULL, NULL, 'TUTOR', 'department', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(3, 'S11ECE007', '2013-2014', NULL, NULL, NULL, NULL, NULL, 'TUTOR', 'department', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(4, 'S11ECE007', '2014-2015', NULL, NULL, NULL, NULL, NULL, 'TUTOR', 'department', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(5, 'S11ECE007', '2015-2016', 'THE INSTITUTION OF ENGINEERS(INDIA)', 'AM1589000', 'LIFE TIME', '47478-ie-member-nagaraju.pdf', 1, 'TUTOR', 'department', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(6, 'S11ECE007', '2016-2017', NULL, NULL, NULL, NULL, NULL, 'TUTOR', 'department', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(7, 'S11ECE007', '2017-2018', NULL, NULL, NULL, NULL, NULL, 'TUTOR', '', 'TUTOR', 'department', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(8, 'S11ECE007', '2018-2019', NULL, NULL, NULL, NULL, NULL, 'TUTOR', 'department', 'DISCIPLINARY COMMITTEE', 'institute', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(9, 'S09ECE015', '2012-2013', NULL, NULL, NULL, NULL, NULL, 'Deputy Controller of Examinations', 'institute', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(10, 'S01ECE018', '2018-2019', NULL, NULL, NULL, NULL, NULL, 'Member in Academic council ', 'institute', 'Chairman of  Board of Studies', 'institute', 'Member in Research council', 'institute', 'Member in Anti-Ragging committee', 'institute', 'Organising Secretary for symposium, conference and', 'department', 'Board of ', '', 'Board of studies member in computer science Engine', 'department', 'Board of studies member in Information Technology', 'department', 'Board of studies member in Bio-medical ', 'department', 9, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(11, 'S14ECE009', '2014-2015', NULL, NULL, NULL, NULL, NULL, 'TUTORSHIP', 'department', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(12, 'S14ECE009', '2015-2016', 'THE INSTITUTION OF ENGINEERS', 'AM159202-8', '-', '94107-ie.pdf', 1, 'TUTORSHIP', 'department', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(13, 'S14ECE009', '2016-2017', NULL, NULL, NULL, NULL, NULL, 'TUTORSHIP', 'department', 'FACULTY COORDINATOR FOR WORKSHOP', 'department', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(14, 'S14ECE009', '2017-2018', NULL, NULL, NULL, NULL, NULL, 'TUTORSHIP', 'department', 'STAFF TREASURER', 'department', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(15, 'S09ECE015', '2013-2014', NULL, NULL, NULL, NULL, NULL, 'Deputy Controller of Examinations', 'institute', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(16, 'S09ECE015', '2014-2015', NULL, NULL, NULL, NULL, NULL, 'Deputy Controller of Examinations', 'institute', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(17, 'S09ECE015', '2015-2016', NULL, NULL, NULL, NULL, NULL, 'Deputy Controller of Examinations', 'institute', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(18, 'S09ECE015', '2016-2017', NULL, NULL, NULL, NULL, NULL, 'Deputy Controller of Examinations', 'institute', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(19, 'S09ECE015', '2017-2018', NULL, NULL, NULL, NULL, NULL, 'Deputy Controller of Examinations', 'institute', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(20, 'S09ECE015', '2018-2019', NULL, NULL, NULL, NULL, NULL, 'Deputy Controller of Examinations', 'institute', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(21, 'S14ECE009', '2018-2019', NULL, NULL, NULL, NULL, NULL, 'JUDGE FOR E&I DEPT CONFERENCE', 'department', 'STAFF TREASURER', 'department', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(22, 'S01ECE018', '2009-2010', 'The Indian Society for Technical Education', '69314', 'life member', '86761-life-member,2010.pdf', 1, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(23, 'S10ECE005', '2018-2019', NULL, NULL, NULL, NULL, NULL, 'Tutor', 'department', 'Feedback Incharge', 'institute', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(24, 'S10ECE005', '2013-2014', NULL, NULL, NULL, NULL, NULL, 'Tutor', 'department', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(25, 'S01ECE018', '2015-2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Bharat Jyoti Award', 'Indian Int', '2016-06', 'The Best Citizen of India Award', '4020-best-citizen-of-india-awa', 'The International publishing h', '2016-06', '98516-bharat-jyothi-award.pdf', 2),
(26, 'S17ECE004', '2017-2018', NULL, NULL, NULL, NULL, NULL, 'TUTOR', 'department', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(27, 'S17ECE004', '2018-2019', NULL, NULL, NULL, NULL, NULL, 'TUTOR', 'department', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(28, 'S01ECE018', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'Distinguished Faculty in Engineering', 'Venus Inte', '2017-03', '', '', '', '', '27238-page1.pdf', 1),
(29, 'S01ECE018', '2013-2014', 'The Institution of Engineers (India)', 'F-119074-8', 'life member', '77478-institution-of-engineers-membership.pdf', 1, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(30, 'S16ECE010', '2016-2017', NULL, NULL, NULL, NULL, NULL, 'TUTOR', 'department', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(31, 'S16ECE010', '2017-2018', NULL, NULL, NULL, NULL, NULL, 'TUTOR', 'department', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(32, 'S16ECE010', '2018-2019', NULL, NULL, NULL, NULL, NULL, 'TUTOR', 'department', 'TUTOR', 'department', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, NULL, NULL, NULL, '', '', '', '', NULL, NULL),
(33, 'S16ECE010', '2014-2015', NULL, NULL, NULL, NULL, NULL, 'TUTOR', 'department', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL, '', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ece_fac_ot_qual`
--

CREATE TABLE `ece_fac_ot_qual` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) NOT NULL,
  `name_qual` varchar(50) NOT NULL,
  `year_com` int(10) NOT NULL,
  `cer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ece_fac_ot_qual`
--

INSERT INTO `ece_fac_ot_qual` (`id`, `sid`, `name_qual`, `year_com`, `cer`) VALUES
(1, 'S11ECE007', 'MBA', 2013, '81521-naga-mba.pdf.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `ece_fac_resg`
--

CREATE TABLE `ece_fac_resg` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `supid` varchar(20) DEFAULT NULL,
  `numsch` int(2) NOT NULL,
  `reg` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` varchar(10) NOT NULL,
  `cyear` varchar(20) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `tit` varchar(100) NOT NULL,
  `j_sup` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ece_fac_resg`
--

INSERT INTO `ece_fac_resg` (`id`, `sid`, `uname`, `supid`, `numsch`, `reg`, `name`, `year`, `cyear`, `spec`, `tit`, `j_sup`) VALUES
(1, 'S01ECE018', 'Anna university-Chennai', '2640091', 0, '10950621089', 'Saravana kumar E', '2009', '2015', 'Information and communication Engineering', 'A Trust based Hybrid Ant Colony Optimized Grid Scheduling ', 'Nil'),
(2, 'S01ECE018', 'Anna university-Chennai', '2640091', 0, '71050121040', 'Thirukumaran S', '2010', '2018', 'Information and communication Engineering', 'IMPROVISING THE IMPUTATION METHOD USING ADVANCED FUZZY CLUSTERING TECHNIQUES FOR MEDICAL DATABASE', 'Nil'),
(3, 'S01ECE018', 'Anna university-Chennai', '2640091', 0, '71051021001', 'Jayakumar S', '2010', '2018', 'Information and communication Engineering', 'Analysis of high performance vedic multipliers and fast adders for FIR filter implementation used in', 'Nil'),
(4, 'S01ECE018', 'Anna university-Chennai', '2640091', 0, '71020421038', 'Sivakumar N', '2010', 'ongoing', 'Electrical Engineering', 'Reduction of Harmonics in PV- Fed Asymmetric Cascaded H-Bridge Multilevel Inverter Using Fuzzy Logic', 'Nil'),
(5, 'S01ECE018', 'Anna university-Chennai', '2640091', 0, '71010631005', 'Ashok Goerge', '2010', 'ongoing', 'Information and communication Engineering', 'DATA SANITIZATION AND ENCRYPTION BASED METHOD FOR SECURE DATA STORAGE IN CLOUD COMPUTING', 'Nil'),
(6, 'S01ECE018', 'Anna university-Chennai', '2640091', 0, '11100432021', 'B.Poornima', '2011', 'ongoing', 'Electrical Engineering', 'FAST ALGORITHMS FOR IMAGE        REGISTRATION IN SURVEILLANCE IMAGES FOR SMART BORDER  MANAGEMENT', 'Nil'),
(7, 'S01ECE018', 'Anna university-Chennai', '2640091', 0, '11100531015', 'F.Jeni Anto', '2011', 'ongoing', 'Information and communication Engineering', 'DESIGN AND DEVELOPMENT OF A PROTOTYPE RADIO FREQUENCY APPLICATOR FOR POST BAKING OF BISCUITS ', 'Nil'),
(8, 'S01ECE018', 'Anna university-Chennai', '2640091', 0, '11100532004', 'V.I.Beatrice Sylvia', '2011', 'ongoing', 'Information and communication Engineering', 'ACHIEVING MINIMUM PEAK SIDE LOBE THROUGH PULSE COMPRESSION CODING TECHNIQUE ON SYNTHETIC APERTURE RA', 'Nil'),
(9, 'S01ECE018', 'Anna university-Chennai', '2640091', 0, '11150531013', 'S.Chidambaram', '2011', 'ongoing', 'Information and communication Engineering', 'Development and Analysis of Novel Spectral and Spatial Classification Approach for Airborne Hyperspe', 'Nil'),
(10, 'S01ECE018', 'Anna university-Chennai', '2640091', 0, '11150531028', 'R.Poovendran', '2011', 'ongoing', 'Information and communication Engineering', 'An Area-Efficient Low-Power Router Design for Network-on-Chip (NoC) Architecture with Optimized Topo', 'Nil'),
(11, 'S01ECE018', 'Anna university-Chennai', '2640091', 0, '71150532021', 'Nirmala Nandakumar', '2011', 'ongoing', 'Information and communication Engineering', 'ENRICHED ARCHITECTURE OF LOW POWER FFT PROCESSOR FOR OFDMA TRANSCEIVER IN WIRELESS COMMUNICATION NET', 'Nil'),
(12, 'S01ECE018', 'Anna university-Chennai', '2640091', 0, '16154697359', 'V.Mahendra Babu', '2016', 'ongoing', 'Information and communication Engineering', 'Wireless sensor networks', 'Nil'),
(13, 'S01ECE018', 'Anna university-Chennai', '2640091', 0, '18223691269', 'Bharathy Priya D', '2018', 'ongoing', 'Electrical Engineering', 'Analysis,Design and implementation of multiphase interleaved DC-DC boost converter with coupled Indu', 'Nil'),
(14, 'S01ECE018', 'Anna university-Chennai', '2640091', 0, '18254697188', 'M.Gurupriya', '2018', 'ongoing', 'Information and communication Engineering', 'Smart wrist band device for Indian Dactylology interpretation using wireless sensor networks', 'Nil');

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
-- Table structure for table `eee_fac`
--

CREATE TABLE `eee_fac` (
  `sid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `age` int(4) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob1` bigint(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `mstatus` varchar(5) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `relegion` varchar(30) NOT NULL,
  `comunity` varchar(10) NOT NULL,
  `place` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `aadharno` bigint(12) NOT NULL,
  `panno` varchar(10) NOT NULL,
  `passport` varchar(20) DEFAULT NULL,
  `blood` varchar(5) NOT NULL,
  `doj` date NOT NULL,
  `designation` varchar(50) NOT NULL,
  `mob2` bigint(10) DEFAULT NULL,
  `dept` varchar(50) NOT NULL,
  `uploadpic` varchar(100) NOT NULL,
  `aadharpic` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `dor` date DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `app_order` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eee_fac`
--

INSERT INTO `eee_fac` (`sid`, `name`, `dob`, `age`, `gender`, `email`, `mob1`, `fname`, `mname`, `mstatus`, `sname`, `relegion`, `comunity`, `place`, `city`, `district`, `state`, `country`, `pincode`, `address`, `paddress`, `aadharno`, `panno`, `passport`, `blood`, `doj`, `designation`, `mob2`, `dept`, `uploadpic`, `aadharpic`, `password`, `status`, `dor`, `reason`, `app_order`) VALUES
('S04EEE008', 'NARAYANAPPA', '1966-10-09', 53, 'male', 'narayanbsn@yahoo.co.in', 9488118851, 'SONNAPPAIAH', 'MUNIYAMMA', 'y', '', 'HINDU', 'OC', 'BENGALURU', 'ATTIBELE', 'BENGALURU', 'Karnataka', 'India', '562107', '599, BEHIND KEB,\r\nATTIBELE,\r\nBENGALURU.   ', '	   ', 858239809495, 'ADSPN1962G', '', 'A POS', '2004-01-07', 'PROFESSOR', 0, 'EEE', '82570-prof.-narayanappa.jpg', '3625-narayanappa-new-aadhar.pdf.pdf', '9495', NULL, NULL, NULL, NULL),
('S05EEE006', 'PERUMAL BALAN', '1978-03-03', 41, 'male', 'balan_perumal@yahoo.com', 9965022603, 'P. Balan', 'B. Govindhammal', 'y', '', 'Hindu', 'SC, Adi Dr', 'Londonpet-1', 'Tamil Nadu', 'Kirshnagiri', 'Tamil Nadu', 'India', '635 001', 'B.Perumal\r\nW/o P.Sudhapriya,\r\n22A-1, Londonpet-1,\r\nIELC Church Opp,\r\nKrishnagiri Dt\r\nKeishnagiri- 63', 'B.Perumal\r\nW/o P.Sudhapriya,\r\n22A-1, Londonpet-1,\r\nIELC Church Opp,\r\nKrishnagiri Dt   ', 892689456830, 'AMNPP8513A', '', 'O+ve', '2005-06-13', 'Associate Professor', 7339413213, 'EEE', '68288-mr.-b.-perumal.jpg', '5644-perumal.aadhar.pdf', '6830', NULL, NULL, NULL, NULL),
('S08EEE012', 'VIVEKANANDA SIBAL .T', '1977-03-06', 42, 'male', 'SIVASIBAL@GMAIL.COM', 9842625748, 'THIRUPATHY. R', 'LAKSHMI. P', 'y', '', 'HINDU', 'MBC', 'KAVERIPATTNAM', 'KRISHNAGIRI', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635112', '	\r\nT VIVEKANANDASIBAL \r\nS/O R THIRUPATHY,\r\n455 GOVINDA CHETTY ST,\r\nKAVERIPATTNAM (PO)\r\nKRISHNAGIRI (', '	\r\nT VIVEKANANDASIBAL \r\nS/O R THIRUPATHY,\r\n455 GOVINDA CHETTY ST,\r\nKAVERIPATTNAM (PO)\r\nKRISHNAGIRI-6', 998282330648, 'AHVPV3076H', '', 'O+VE', '2008-06-13', 'ASSOCIATE PROFESSOR ', 9944559805, 'EEE', '4534-149991.jpg', '26990-sibal-sr-adhar.pdf', '0648', NULL, NULL, NULL, NULL),
('S09EEE007', 'JALENDIRAN.J', '1979-05-03', 40, 'male', 'mailjalen@rediffmail.com', 9486116916, 'JAGANATHAN.D', 'MANGAYARKKARASI.J', 'y', '', 'HINDU', 'BC', 'KRISHNAGIRI', 'KRISHNAGIRI', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635002', '4/388, RAJIV NAGAR,\r\nVENKATAPURAM,\r\nKRISHNAGIRI(PO)&(DT)   ', '	   ', 718111878949, 'AMQPJ5986J', '', 'O Pos', '2009-07-02', 'ASSISTANT PROFESSOR', 0, 'EEE', '70729-jalen-photo.jpg', '80611-aadhaar__jalendiran.pdf', '8949', NULL, NULL, NULL, NULL),
('S10EEE009', 'SENTHIL.K', '1979-05-21', 40, 'male', 'ksenthil2179@yahoo.co.in', 9942664303, 'S.KUPPAN', 'G.THIYALNAYAGI', 'y', '', 'HINDU', 'BC', 'POCHAMPALLI', 'POCHAMPALLI', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635206', '3/449,VADAMALAMPATTI\r\nPOCHAMPALLI (TK)\r\nKRISHNAGIRI(DT)\r\nPIN:635206   ', 'BALATHOTTAM(PO)\r\nPOCHAMPALLI(TK)\r\nKRISHNAGIRI(DT)\r\nPIN:635206   ', 244219801546, 'DATPS9208A', '', 'o+ve', '2010-06-11', 'ASSISTANT PROFESSOR', 0, 'EEE', '1398-photo.jpg', '78493-adhar-first-page-senthil.pdf', '1546', NULL, NULL, NULL, NULL),
('S11EEE001', 'KARTHIKEYAN V', '1987-02-01', 32, 'male', 'karthikpse@yahoo.com', 8300088814, 'VIJAYARANGAN', 'THILAGA', 'y', '', 'HINDU', 'BC', 'KRISHNAGIRI', 'KRISHNAGIRI', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635001', '	   5/530.1 BHARATHIYAR NAGAR II CROSS,\r\nKRISHNAGIRI.635001', '	   5/530.1 BHARATHIYAR NAGAR II CROSS,\r\nKRISHNAGIRI.635001', 866623219938, 'CBKPK9185R', '', 'o+ve', '2011-08-06', 'ASSISTANT PROFESSOR', 9585888814, 'EEE', '45135-photo.jpg', '38752-karthikeyan-adhaar.pdf', '9938', NULL, NULL, NULL, NULL),
('S12EEE004', 'BALAMANIKANDAN A', '1983-06-23', 36, 'male', 'balamanieee83@gmail.com', 9750650117, 'APPACHIANNAN K V', 'PONNAYAMMAL', 'y', '', 'HINDU', 'BC', 'KARATTUR', 'ERODE', 'ERODE', 'Tamil Nadu', 'India', '638502', '	   KARATTUR \r\nKUPPANDAMPALAYAM PO\r\nATHANI VIA\r\nERODE', '	   KARATTUR \r\nKUPPANDAMPALAYAM PO\r\nATHANI VIA\r\nERODE', 613685165733, 'BDRPB9766K', '', 'A1+', '2012-12-10', 'ASSISTANT PROFESSOR', 0, 'EEE', '11179-balamanikandan.jpg', '81048-balamanikandan.adhaar.pdf', '5733', NULL, NULL, NULL, NULL),
('S12EEE005', 'BALAMANIKANDAN A', '1983-06-23', 36, 'male', 'balamanieee83@gmail.com', 9750650117, 'APPACHIANNAN K V', 'PONNAYAMMAL', 'y', '', 'HINDU', 'BC', 'KARATTUR', 'ERODE', 'ERODE', 'Tamil Nadu', 'India', '638502', '	   KARATTUR \r\nKUPPANDAMPALAYAM PO\r\nATHANI VIA\r\nERODE', '	   KARATTUR \r\nKUPPANDAMPALAYAM PO\r\nATHANI VIA\r\nERODE', 613685165733, 'BDRPB9766K', '', 'A1+', '2012-12-10', 'ASSISTANT PROFESSOR', 0, 'EEE', '38999-balamanikandan.jpg', '28430-balamanikandan.adhaar.pdf', '5733', NULL, NULL, NULL, NULL),
('S12EEE010', 'NANDHAKUMAR S', '1979-12-02', 40, 'male', 'rsnandhu@gmail.com', 9976937338, 'SELVARAJ S', 'RAJALAKSHMI S', 'y', '', 'HINDU', 'BC', 'DINDIGUL', 'DINDIGUL', 'DINDIGUL', 'Tamil Nadu', 'India', '624001', '186 EAST YMR PATTI\r\nSHANTHI NILYAM\r\nDINDIGUL', '186 EAST YMR PATTI\r\nSHANTHI NILYAM\r\nDINDIGUL', 902018132224, 'AQPPN4319J', '', 'B +VE', '2012-06-25', 'ASSISTANT PROFESSOR', 9986531004, 'EEE', '53032-nandhakumar-photo.jpg', '25408-nandhu-aadhar.pdf', '2224', NULL, NULL, NULL, NULL),
('S16EEE003', 'LOGANATHAN P S', '1979-05-07', 40, 'male', 'logu24455@gmail.com', 9965324455, 'SUBRAMANIAN M', 'KALPANA T', 'y', '', 'HINDU', 'MBC', 'PALAYAMPUDUR', 'DHARMAPURI', 'DHARMAPURI', 'Tamil Nadu', 'India', '636807', '1/120, PALAYAM(PO),\r\nNALLAMPALLI (VIA),\r\nDHARMAPURI DISTRICT,\r\nTAMILNADU -636807', '1/120, PALAYAM(PO),\r\nNALLAMPALLI (VIA),\r\nDHARMAPURI DISTRICT,\r\nTAMILNADU -636807', 254916055914, 'AGKPL7734L', '', 'B +VE', '2016-04-07', 'ASSISTANT PROFESSOR', 6374635105, 'EEE', '63728-logu-photo.jpg', '57936-aadhaar.pdf', '5914', NULL, NULL, NULL, NULL),
('S17EEE011', 'M.SUKANYA', '1985-10-07', 34, 'female', 'sukanyavisagan@gmail.com', 9994538345, 'S.MOORTHY', 'R.ANJUGAM', 'y', '', 'HINDU', 'MBC', 'HOSUR', 'HOSUR', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635109', '5/431,DWARAKA NAGAR,NEW ASTC HUDCO,HOSUR-635109.	   ', '5/431,DWARAKA NAGAR,NEW ASTC HUDCO,HOSUR-635109.	   ', 344627088244, 'ENPPS9226C', 'H9984866', 'O+ve', '2017-06-12', 'Assistant Professor', 0, 'EEE', '37099-sukanya.jpeg', '81182-sukanya-aadhar.pdf', '8244', NULL, NULL, NULL, NULL),
('S18EEE013', 'MOHANKUMAR.J', '1986-05-06', 33, 'male', 'mohanme1199@gmail.com', 9894556300, 'JEEVANANDAM', 'KOKILAMBAL', 'y', '', 'HINDU', 'KULALAR', 'KITCHIPALAYAM', 'SALEM', 'SALEM', 'Tamil Nadu', 'India', '636015', '13,THIRUNEELAKANDAR STREET, KITCHIPALAYAM , SALEM -636015.	   ', '13,THIRUNEELAKANDAR STREET, KITCHIPALAYAM , SALEM -636015.	   ', 436138424268, 'BZXPM6243A', '', 'O -VE', '2018-06-18', 'ASSISTANT PROFESSOR', 9789324808, 'EEE', '83537-new-doc-2019-02-13-14.36.15.jpg', '52748-new-doc-2018-12-18-18.44.21_1.pdf', '4268', NULL, NULL, NULL, '94525-new-doc-2019-02-13-13.50.47(1).pdf');

-- --------------------------------------------------------

--
-- Table structure for table `eee_fac_attorg`
--

CREATE TABLE `eee_fac_attorg` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `attcategory1` varchar(20) DEFAULT NULL,
  `atttitle1` varchar(50) DEFAULT NULL,
  `attdays1` int(3) DEFAULT NULL,
  `attfrom1` date NOT NULL,
  `attto1` date NOT NULL,
  `attdate1` date NOT NULL,
  `attorg1` varchar(50) DEFAULT NULL,
  `attplace1` varchar(50) DEFAULT NULL,
  `attlevel1` varchar(20) DEFAULT NULL,
  `attcer1` varchar(100) DEFAULT NULL,
  `attkey` int(1) DEFAULT NULL,
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
-- Dumping data for table `eee_fac_attorg`
--

INSERT INTO `eee_fac_attorg` (`id`, `sid`, `ayear`, `attcategory1`, `atttitle1`, `attdays1`, `attfrom1`, `attto1`, `attdate1`, `attorg1`, `attplace1`, `attlevel1`, `attcer1`, `attkey`, `orgcategory1`, `orgtitle1`, `orgfun1`, `orgdays1`, `orgfrom1`, `orgto1`, `orgdate1`, `orgres1`, `orgpar1`, `orglevel1`, `orgcer1`, `orgkey`) VALUES
(1, 'S12EEE010', '2017-2018', 'workshop', 'TEACHING WORKSHOP ON DC MACHINES AND DC DRIVES', 5, '2018-01-01', '2018-01-05', '0000-00-00', 'CENTRE FOR CONTINUING EDUCATION ,INDIAN INSTITUTE ', 'BANGALORE', 'national', '53680-iisc.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(2, 'S12EEE010', '2015-2016', 'workshop', 'Mission 10 X ', 3, '2015-06-02', '2015-06-04', '0000-00-00', 'WIPRO', 'ADHIYAMAAN COLLEGE OF ENGINEERING ,HOSUR', 'national', '17659-mission-10-x-3-days.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(3, 'S12EEE010', '2015-2016', 'workshop', 'Mission 10 X UTLP -Practitioner Workshop', 6, '2016-03-26', '2016-03-31', '0000-00-00', 'WIPRO', 'ADHIYAMAAN COLLEGE OF ENGINEERING ,HOSUR', 'national', '28978-mission-10-x-6-days.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(4, 'S12EEE010', '2013-2014', 'fdp', 'LaTeX', 2, '2013-06-28', '2013-06-29', '0000-00-00', 'Department of IT and E&I ', 'ADHIYAMAAN COLLEGE OF ENGINEERING ,HOSUR', 'national', '65468-ace-latex.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(5, 'S12EEE010', '2012-2013', 'workshop', 'NPTEL workshop', 1, '0000-00-00', '0000-00-00', '2013-02-16', 'NPTEL (IIT Madras)', 'Chennai', 'national', '60656-nptel-2013.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(6, 'S12EEE010', '2013-2014', 'workshop', 'NPTEL Online Certification Courses', 1, '0000-00-00', '0000-00-00', '2014-02-25', 'NPTEL(IIT Madras)', 'Chennai', 'national', '1228-nptel-2014.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eee_fac_bkjrn`
--

CREATE TABLE `eee_fac_bkjrn` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `bk1` varchar(20) DEFAULT NULL,
  `bkcha1` varchar(50) DEFAULT NULL,
  `bkissn1` varchar(20) DEFAULT NULL,
  `bkmy1` varchar(7) DEFAULT NULL,
  `bkpub1` varchar(50) DEFAULT NULL,
  `bktype1` varchar(50) DEFAULT NULL,
  `bkkey` int(1) DEFAULT NULL,
  `jrntitle1` varchar(100) DEFAULT NULL,
  `jrnname1` varchar(50) DEFAULT NULL,
  `jrnvol1` varchar(20) DEFAULT NULL,
  `jrnissue1` varchar(20) DEFAULT NULL,
  `jrnissn1` varchar(20) DEFAULT NULL,
  `jrncategory1` varchar(20) DEFAULT NULL,
  `jrnlink1` varchar(100) DEFAULT NULL,
  `jrncit1` varchar(30) DEFAULT NULL,
  `jrnpdf1` varchar(100) DEFAULT NULL,
  `jrnimpact1` int(10) DEFAULT NULL,
  `jrnkey` int(1) DEFAULT NULL,
  `gl` varchar(50) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eee_fac_bkjrn`
--

INSERT INTO `eee_fac_bkjrn` (`id`, `sid`, `ayear`, `bk1`, `bkcha1`, `bkissn1`, `bkmy1`, `bkpub1`, `bktype1`, `bkkey`, `jrntitle1`, `jrnname1`, `jrnvol1`, `jrnissue1`, `jrnissn1`, `jrncategory1`, `jrnlink1`, `jrncit1`, `jrnpdf1`, `jrnimpact1`, `jrnkey`, `gl`, `glkey`) VALUES
(1, 'S10EEE009', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A RESONANT DUAL FULL-BRIDGE CLASS-E BIDIRECTIONAL DCâ€“DC                    CONVERTER FOR FUEL CELL', 'CIRCUITS AND SYSTEMS', '7', '10', '710289', 'scrip', 'htt/:dx.doi.org/10.4236/cs.2016.710289', '2071', '55923-paper.pdf', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eee_fac_edu`
--

CREATE TABLE `eee_fac_edu` (
  `sid` varchar(30) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `sboard` varchar(10) DEFAULT NULL,
  `syear` int(4) DEFAULT NULL,
  `spercentage` int(4) DEFAULT NULL,
  `scertificate` varchar(100) DEFAULT NULL,
  `skey` int(1) DEFAULT NULL,
  `s2name` varchar(50) DEFAULT NULL,
  `s2board` varchar(10) DEFAULT NULL,
  `s2branch` varchar(50) DEFAULT NULL,
  `s2year` int(4) DEFAULT NULL,
  `s2percentage` int(4) DEFAULT NULL,
  `s2certificate` varchar(100) DEFAULT NULL,
  `s2key` int(1) DEFAULT NULL,
  `dname` varchar(50) DEFAULT NULL,
  `dboard` varchar(10) DEFAULT NULL,
  `ddegree` varchar(50) DEFAULT NULL,
  `dmode` varchar(10) DEFAULT NULL,
  `dyear` int(4) DEFAULT NULL,
  `dpercentage` int(4) DEFAULT NULL,
  `dcertificate` varchar(100) DEFAULT NULL,
  `dkey` int(1) DEFAULT NULL,
  `d1name` varchar(50) DEFAULT NULL,
  `d1board` varchar(10) DEFAULT NULL,
  `d1degree` varchar(50) DEFAULT NULL,
  `d1mode` varchar(10) DEFAULT NULL,
  `d1year` int(4) DEFAULT NULL,
  `d1percentage` int(4) DEFAULT NULL,
  `d1certificate` varchar(100) DEFAULT NULL,
  `d1key` int(1) DEFAULT NULL,
  `d2name` varchar(50) DEFAULT NULL,
  `d2board` varchar(10) DEFAULT NULL,
  `d2degree` varchar(50) DEFAULT NULL,
  `d2mode` varchar(10) DEFAULT NULL,
  `d2year` int(4) DEFAULT NULL,
  `d2percentage` int(4) DEFAULT NULL,
  `d2certificate` varchar(100) DEFAULT NULL,
  `d2key` int(1) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `uuniversity` varchar(50) DEFAULT NULL,
  `udegree` varchar(50) DEFAULT NULL,
  `ubranch` varchar(50) DEFAULT NULL,
  `umode` varchar(10) DEFAULT NULL,
  `uyear` int(4) DEFAULT NULL,
  `upercentage` int(4) DEFAULT NULL,
  `ucertificate` varchar(100) DEFAULT NULL,
  `ukey` int(1) DEFAULT NULL,
  `u1name` varchar(50) DEFAULT NULL,
  `u1university` varchar(50) DEFAULT NULL,
  `u1degree` varchar(50) DEFAULT NULL,
  `u1branch` varchar(50) DEFAULT NULL,
  `u1mode` varchar(10) DEFAULT NULL,
  `u1year` int(4) DEFAULT NULL,
  `u1percentage` int(4) DEFAULT NULL,
  `u1certificate` varchar(100) DEFAULT NULL,
  `u1key` int(1) DEFAULT NULL,
  `u2name` varchar(50) DEFAULT NULL,
  `u2university` varchar(50) DEFAULT NULL,
  `u2degree` varchar(50) DEFAULT NULL,
  `u2branch` varchar(50) DEFAULT NULL,
  `u2mode` varchar(10) DEFAULT NULL,
  `u2year` int(4) DEFAULT NULL,
  `u2percentage` int(4) DEFAULT NULL,
  `u2certificate` varchar(100) DEFAULT NULL,
  `u2key` int(1) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `puniversity` varchar(50) DEFAULT NULL,
  `pdegree` varchar(50) DEFAULT NULL,
  `pbranch` varchar(50) DEFAULT NULL,
  `pmode` varchar(10) DEFAULT NULL,
  `pyear` int(4) DEFAULT NULL,
  `ppercentage` int(4) DEFAULT NULL,
  `pcertificate` varchar(100) DEFAULT NULL,
  `pkey` int(1) DEFAULT NULL,
  `p1name` varchar(50) DEFAULT NULL,
  `p1university` varchar(50) DEFAULT NULL,
  `p1degree` varchar(50) DEFAULT NULL,
  `p1branch` varchar(50) DEFAULT NULL,
  `p1mode` varchar(10) DEFAULT NULL,
  `p1year` int(4) DEFAULT NULL,
  `p1percentage` int(4) DEFAULT NULL,
  `p1certificate` varchar(100) DEFAULT NULL,
  `p1key` int(1) DEFAULT NULL,
  `p2name` varchar(50) DEFAULT NULL,
  `p2university` varchar(50) DEFAULT NULL,
  `p2degree` varchar(50) DEFAULT NULL,
  `p2branch` varchar(50) DEFAULT NULL,
  `p2mode` varchar(10) DEFAULT NULL,
  `p2year` int(4) DEFAULT NULL,
  `p2percentage` int(4) DEFAULT NULL,
  `p2certificate` varchar(100) DEFAULT NULL,
  `p2key` int(1) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `muniversity` varchar(50) DEFAULT NULL,
  `mspec` varchar(50) DEFAULT NULL,
  `mbranch` varchar(50) DEFAULT NULL,
  `mmode` varchar(10) DEFAULT NULL,
  `myear` int(4) DEFAULT NULL,
  `mpercentage` int(4) DEFAULT NULL,
  `mthesis` varchar(50) DEFAULT NULL,
  `mguide` varchar(30) DEFAULT NULL,
  `mcertificate` varchar(100) DEFAULT NULL,
  `mkey` int(1) DEFAULT NULL,
  `phname` varchar(50) DEFAULT NULL,
  `phuniversity` varchar(50) DEFAULT NULL,
  `phspec` varchar(50) DEFAULT NULL,
  `phbranch` varchar(50) DEFAULT NULL,
  `phmode` varchar(10) DEFAULT NULL,
  `phyreg` varchar(7) DEFAULT NULL,
  `phyear` varchar(7) DEFAULT NULL,
  `phthesis` varchar(100) DEFAULT NULL,
  `phguide` varchar(30) DEFAULT NULL,
  `phcertificate` varchar(100) DEFAULT NULL,
  `phkey` int(1) DEFAULT NULL,
  `ph1name` varchar(50) DEFAULT NULL,
  `ph1university` varchar(50) DEFAULT NULL,
  `ph1spec` varchar(50) DEFAULT NULL,
  `ph1branch` varchar(50) DEFAULT NULL,
  `ph1mode` varchar(10) DEFAULT NULL,
  `ph1yreg` varchar(7) DEFAULT NULL,
  `ph1year` varchar(7) DEFAULT NULL,
  `ph1thesis` varchar(100) DEFAULT NULL,
  `ph1guide` varchar(30) DEFAULT NULL,
  `ph1certificate` varchar(100) DEFAULT NULL,
  `ph1key` int(1) DEFAULT NULL,
  `ph2name` varchar(50) DEFAULT NULL,
  `ph2university` varchar(50) DEFAULT NULL,
  `ph2spec` varchar(50) DEFAULT NULL,
  `ph2branch` varchar(50) DEFAULT NULL,
  `ph2mode` varchar(10) DEFAULT NULL,
  `ph2yreg` varchar(7) DEFAULT NULL,
  `ph2year` varchar(7) DEFAULT NULL,
  `ph2thesis` varchar(100) DEFAULT NULL,
  `ph2guide` varchar(30) DEFAULT NULL,
  `ph2certificate` varchar(100) DEFAULT NULL,
  `ph2key` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eee_fac_edu`
--

INSERT INTO `eee_fac_edu` (`sid`, `sname`, `sboard`, `syear`, `spercentage`, `scertificate`, `skey`, `s2name`, `s2board`, `s2branch`, `s2year`, `s2percentage`, `s2certificate`, `s2key`, `dname`, `dboard`, `ddegree`, `dmode`, `dyear`, `dpercentage`, `dcertificate`, `dkey`, `d1name`, `d1board`, `d1degree`, `d1mode`, `d1year`, `d1percentage`, `d1certificate`, `d1key`, `d2name`, `d2board`, `d2degree`, `d2mode`, `d2year`, `d2percentage`, `d2certificate`, `d2key`, `uname`, `uuniversity`, `udegree`, `ubranch`, `umode`, `uyear`, `upercentage`, `ucertificate`, `ukey`, `u1name`, `u1university`, `u1degree`, `u1branch`, `u1mode`, `u1year`, `u1percentage`, `u1certificate`, `u1key`, `u2name`, `u2university`, `u2degree`, `u2branch`, `u2mode`, `u2year`, `u2percentage`, `u2certificate`, `u2key`, `pname`, `puniversity`, `pdegree`, `pbranch`, `pmode`, `pyear`, `ppercentage`, `pcertificate`, `pkey`, `p1name`, `p1university`, `p1degree`, `p1branch`, `p1mode`, `p1year`, `p1percentage`, `p1certificate`, `p1key`, `p2name`, `p2university`, `p2degree`, `p2branch`, `p2mode`, `p2year`, `p2percentage`, `p2certificate`, `p2key`, `mname`, `muniversity`, `mspec`, `mbranch`, `mmode`, `myear`, `mpercentage`, `mthesis`, `mguide`, `mcertificate`, `mkey`, `phname`, `phuniversity`, `phspec`, `phbranch`, `phmode`, `phyreg`, `phyear`, `phthesis`, `phguide`, `phcertificate`, `phkey`, `ph1name`, `ph1university`, `ph1spec`, `ph1branch`, `ph1mode`, `ph1yreg`, `ph1year`, `ph1thesis`, `ph1guide`, `ph1certificate`, `ph1key`, `ph2name`, `ph2university`, `ph2spec`, `ph2branch`, `ph2mode`, `ph2yreg`, `ph2year`, `ph2thesis`, `ph2guide`, `ph2certificate`, `ph2key`) VALUES
('S10EEE009', 'GOVT HSS POCHAMPALLI', 'state', 1994, 84, '95594-senthil-tenth-std.pdf', 1, 'GOVT HSS POCHAMPALLI', 'state', 'MATHS', 1996, 73, '75521-12certificatepdf.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MAILAM ENGINEERING COLLEGE', 'MADRAS UNIVERSITY', 'BE-EEE', 'EEE', 'regular', 2002, 74, '2443-senthil-be.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SONA COLLEGE OF TECHNOLOGY', 'ANNA UNIVERSITY COIMBATORE', 'ME', 'POWER ELECTRONICS AND DRIVES', 'regular', 0, 9, '98019-pg.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S12EEE010', 'MSP SOLAINADAR MEMORIAL HIGHER SECONDARY SCHOOL DI', 'state', 1995, 78, '28200-tenth-pdf.pdf', 1, 'MSP SOLAINADAR MEMORIAL HIGHER SECONDARY SCHOOL DI', 'state', 'MATHS PHYSICS CHEMISTRY', 1997, 67, '18045-twelth-pdf.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ODAIYAPPA COLLEGE OF ENGINEERING', 'MADURAI KAMARAJ UNIVERSITY', 'BE', 'EEE', 'regular', 2003, 71, '29023-ug-pdf.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PSNA COLLEGE OF ENGINEERING', 'ANNA UNIVERSITY CHENNAI', 'ME', 'POWER ELECTRONICS AND DRIVES', 'regular', 2005, 70, '72320-pg-pdf.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S18EEE013', 'SRI RAMA KRISHNA SARADA HIGER SECONDARY SCHOOL', 'state', 2001, 65, '67643-x.pdf', 1, 'NEELAMBAL SUBRAMANIAM HIGHER SECONDARY SCHOOL', 'state', 'EMR (VOCATIONAL)', 2003, 72, '64976-+2.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'K S RAGASAMY COLLEGE OF TECHNOLOGY', 'ANNA UNIVERSITY', 'B.E', 'ELECTRICAL AND ELECTRONICS ENGINEERING', 'regular', 2008, 69, '35900-ug--degree.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'K S RANGASAMY COLLEGE OF TECHNOLOGY', 'ANNA UNIVERSITY', 'M.E', 'POWER ELECTRONICS AND DRIVES', 'regular', 2012, 82, '93433-pg-degree.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eee_fac_exp`
--

CREATE TABLE `eee_fac_exp` (
  `sid` varchar(30) NOT NULL,
  `clg1` varchar(50) DEFAULT NULL,
  `clgdesg1` varchar(30) DEFAULT NULL,
  `clgdoj1` date DEFAULT NULL,
  `clgdor1` date DEFAULT NULL,
  `clgreason1` varchar(100) DEFAULT NULL,
  `clg2` varchar(50) NOT NULL,
  `clgdesg2` varchar(50) NOT NULL,
  `clgdoj2` date NOT NULL,
  `clgdor2` date NOT NULL,
  `clgreason2` varchar(100) NOT NULL,
  `clg3` varchar(50) NOT NULL,
  `clgdesg3` varchar(50) NOT NULL,
  `clgdoj3` date NOT NULL,
  `clgdor3` date NOT NULL,
  `clgreason3` varchar(100) NOT NULL,
  `clg4` varchar(50) NOT NULL,
  `clgdesg4` varchar(50) NOT NULL,
  `clgdoj4` date NOT NULL,
  `clgdor4` date NOT NULL,
  `clgreason4` varchar(100) NOT NULL,
  `clg5` varchar(50) NOT NULL,
  `clgdesg5` varchar(50) NOT NULL,
  `clgdoj5` date NOT NULL,
  `clgdor5` date NOT NULL,
  `clgreason5` varchar(100) NOT NULL,
  `clgcir5` date NOT NULL,
  `clgcir4` date NOT NULL,
  `clgcir3` date NOT NULL,
  `clgcir2` date NOT NULL,
  `clgcir1` varchar(100) DEFAULT NULL,
  `clgkey` int(1) DEFAULT NULL,
  `pol1` varchar(50) DEFAULT NULL,
  `poldesg1` varchar(30) DEFAULT NULL,
  `poldoj1` date DEFAULT NULL,
  `poldor1` date DEFAULT NULL,
  `polreason1` varchar(100) DEFAULT NULL,
  `polcir1` varchar(100) DEFAULT NULL,
  `polkey` int(1) DEFAULT NULL,
  `sch1` varchar(50) DEFAULT NULL,
  `schdesg1` varchar(30) DEFAULT NULL,
  `schdoj1` date DEFAULT NULL,
  `schdor1` date DEFAULT NULL,
  `schreason1` varchar(100) DEFAULT NULL,
  `schcir1` varchar(100) DEFAULT NULL,
  `schkey` int(1) DEFAULT NULL,
  `ind1` varchar(50) DEFAULT NULL,
  `inddesg1` varchar(30) DEFAULT NULL,
  `indnature1` varchar(30) DEFAULT NULL,
  `inddoj1` date DEFAULT NULL,
  `inddor1` date DEFAULT NULL,
  `indreason1` varchar(100) DEFAULT NULL,
  `indcir1` varchar(100) DEFAULT NULL,
  `indkey` int(1) DEFAULT NULL,
  `ot1` varchar(50) DEFAULT NULL,
  `otdesg1` varchar(30) DEFAULT NULL,
  `otnature1` varchar(30) DEFAULT NULL,
  `otdoj1` date DEFAULT NULL,
  `otdor1` date DEFAULT NULL,
  `otreason1` varchar(100) DEFAULT NULL,
  `otcir1` varchar(100) DEFAULT NULL,
  `otkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eee_fac_exp`
--

INSERT INTO `eee_fac_exp` (`sid`, `clg1`, `clgdesg1`, `clgdoj1`, `clgdor1`, `clgreason1`, `clg2`, `clgdesg2`, `clgdoj2`, `clgdor2`, `clgreason2`, `clg3`, `clgdesg3`, `clgdoj3`, `clgdor3`, `clgreason3`, `clg4`, `clgdesg4`, `clgdoj4`, `clgdor4`, `clgreason4`, `clg5`, `clgdesg5`, `clgdoj5`, `clgdor5`, `clgreason5`, `clgcir5`, `clgcir4`, `clgcir3`, `clgcir2`, `clgcir1`, `clgkey`, `pol1`, `poldesg1`, `poldoj1`, `poldor1`, `polreason1`, `polcir1`, `polkey`, `sch1`, `schdesg1`, `schdoj1`, `schdor1`, `schreason1`, `schcir1`, `schkey`, `ind1`, `inddesg1`, `indnature1`, `inddoj1`, `inddor1`, `indreason1`, `indcir1`, `indkey`, `ot1`, `otdesg1`, `otnature1`, `otdoj1`, `otdor1`, `otreason1`, `otcir1`, `otkey`) VALUES
('S10EEE009', 'MAILAM ENGINEERING COLLEGE', 'LECTURER', '2002-10-01', '2004-11-30', 'FATHER HEALTH PROBLEM', 'SAPTHAGIRI COLLEGE OF ENGINEERING', 'LECTURER', '2004-12-01', '2006-09-14', 'PROFESSIONAL GROWTH', 'JAYAM COLLEGE OF ENGINEERING AND TECHNOLOGY', 'LECTURER', '2006-09-15', '2007-12-31', 'HIGHER STUDY', 'KING COLLEGE OF TECHNOLOGY', 'LECTURER', '2009-01-02', '2009-07-01', 'PERSONAL WORK', 'SRI NANDHANAM COLLEGE OF ENGINEERING AND TECHNOLOG', 'SENIOR LECTURER', '2009-07-03', '2010-06-04', 'PROFESSIONAL GROWTH', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '78825-exp-mailam-converted.pdf', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S12EEE010', 'ODAIYAPPA COLLEGE OF ENGINEERING', 'ASST  PROFESSOR', '2005-06-21', '2009-01-31', 'Professional growth ', 'MAHAKAVI BHARATHIYAR COLLEGE OF ENGINEERING', 'ASST  PROFESSOR', '2009-02-09', '2011-01-31', 'Career Prospectus', 'MNSK COLLEGE OF ENGINEERING', 'ASST  PROFESSOR', '2011-06-13', '2012-05-04', 'Professional growth ', '', '', '0000-00-00', '0000-00-00', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '22453-ocet.pdf', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eee_fac_funpat`
--

CREATE TABLE `eee_fac_funpat` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `titleofpro1` varchar(50) DEFAULT NULL,
  `duration1` varchar(30) DEFAULT NULL,
  `amountsan1` varchar(20) DEFAULT NULL,
  `agency1` varchar(20) DEFAULT NULL,
  `startdate1` date DEFAULT NULL,
  `copiname1` varchar(20) DEFAULT NULL,
  `year1` varchar(7) DEFAULT NULL,
  `order1` varchar(200) DEFAULT NULL,
  `uc1` varchar(200) DEFAULT NULL,
  `funkey` int(1) DEFAULT NULL,
  `nameofpat1` varchar(50) DEFAULT NULL,
  `title1` varchar(30) DEFAULT NULL,
  `fileno1` varchar(20) DEFAULT NULL,
  `pat_cer1` varchar(200) DEFAULT NULL,
  `patkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eee_fac_glc`
--

CREATE TABLE `eee_fac_glc` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `gltitle1` varchar(50) DEFAULT NULL,
  `gldays1` int(3) DEFAULT NULL,
  `glfrom1` date NOT NULL,
  `glto1` date NOT NULL,
  `gldate1` date NOT NULL,
  `gltopic1` varchar(50) DEFAULT NULL,
  `glorg1` varchar(50) DEFAULT NULL,
  `glplace1` varchar(50) DEFAULT NULL,
  `glpic1` varchar(100) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL,
  `conname1` varchar(30) DEFAULT NULL,
  `contitle1` varchar(50) DEFAULT NULL,
  `conorg1` varchar(50) DEFAULT NULL,
  `condays1` int(3) DEFAULT NULL,
  `confrom1` date NOT NULL,
  `conto1` date NOT NULL,
  `condate1` date NOT NULL,
  `conlevel1` varchar(20) DEFAULT NULL,
  `conpdf1` varchar(100) DEFAULT NULL,
  `concer1` varchar(100) DEFAULT NULL,
  `conkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eee_fac_glc`
--

INSERT INTO `eee_fac_glc` (`id`, `sid`, `ayear`, `gltitle1`, `gldays1`, `glfrom1`, `glto1`, `gldate1`, `gltopic1`, `glorg1`, `glplace1`, `glpic1`, `glkey`, `conname1`, `contitle1`, `conorg1`, `condays1`, `confrom1`, `conto1`, `condate1`, `conlevel1`, `conpdf1`, `concer1`, `conkey`) VALUES
(1, 'S12EEE010', '2004-2005', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'RECENT TRENDS IN INSTRUMENTATI', 'Virtual Instrument for Testing Current and Voltage', 'Dept of EEE, National Engineering college ', 2, '2004-12-23', '2004-12-24', '0000-00-00', 'national', NULL, '64602-national-college-conference.pdf', 1),
(2, 'S12EEE010', '2005-2006', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'SACOEFERENCE', 'A stator flux oriented vector controlled Induction', 'Dr.Sivanthi Aditanar College of Engineering', 2, '2005-08-18', '2005-08-19', '0000-00-00', 'national', NULL, '32635-adithanar-college-.pdf', 1),
(3, 'S12EEE010', '2011-2012', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'POWER AND ENERGY SYSTEMS', 'A Novel Out -Of-Step Detection Algorithm Using Ang', 'Dept of EEE, Indian Institute of Technology Madras', 3, '2011-12-22', '2011-12-24', '0000-00-00', 'international', NULL, '98214-iit-confernce.pdf', 1),
(4, 'S12EEE010', '2011-2012', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'POWER AND ENERGY SYSTEMS ', 'Detection of Power Quality Disturbances in Presenc', 'Indian Institute of Technology Madras', 3, '2011-12-22', '2011-12-24', '0000-00-00', 'international', NULL, '26944-iit-confernce.pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `eee_fac_member`
--

CREATE TABLE `eee_fac_member` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `memberid1` varchar(30) DEFAULT NULL,
  `validity1` varchar(20) DEFAULT NULL,
  `pic1` varchar(100) DEFAULT NULL,
  `memkey` int(1) DEFAULT NULL,
  `res1` varchar(50) DEFAULT NULL,
  `level1` varchar(20) DEFAULT NULL,
  `res2` varchar(50) NOT NULL,
  `level2` varchar(20) NOT NULL,
  `reskey` int(1) DEFAULT NULL,
  `aname1` varchar(50) DEFAULT NULL,
  `aissue1` varchar(10) DEFAULT NULL,
  `amy1` varchar(7) DEFAULT NULL,
  `acer1` varchar(100) DEFAULT NULL,
  `awakey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eee_fac_member`
--

INSERT INTO `eee_fac_member` (`id`, `sid`, `ayear`, `name1`, `memberid1`, `validity1`, `pic1`, `memkey`, `res1`, `level1`, `res2`, `level2`, `reskey`, `aname1`, `aissue1`, `amy1`, `acer1`, `awakey`) VALUES
(1, 'S11EEE001', '2017-2018', NULL, NULL, NULL, NULL, NULL, 'PRESIDENT ADHIYAMAAN ALUMNI ASSOCIATION', 'institute', '', '', 1, NULL, NULL, NULL, NULL, NULL),
(2, 'S12EEE010', '2015-2016', 'THE INSTITUTION OF ENGINEERS', 'AM158773-3', 'LIFE MEMBERSHIP', '65110-iei.pdf', 1, 'TUTOR ', 'department', '', '', 1, NULL, NULL, NULL, NULL, NULL),
(3, 'S12EEE010', '2018-2019', NULL, NULL, NULL, NULL, NULL, 'PLACEMENT COORDINATOR', 'department', '', '', 1, NULL, NULL, NULL, NULL, NULL),
(4, 'S12EEE010', '2017-2018', NULL, NULL, NULL, NULL, NULL, 'EXAM CELL COORDINATOR', 'department', '', '', 1, NULL, NULL, NULL, NULL, NULL),
(5, 'S12EEE010', '2012-2013', NULL, NULL, NULL, NULL, NULL, 'TUTOR ', 'department', 'NPTEL COORDINATOR', 'department', 2, NULL, NULL, NULL, NULL, NULL),
(6, 'S12EEE010', '2013-2014', NULL, NULL, NULL, NULL, NULL, 'TUTOR ', 'department', 'NPTEL COORDINATOR', 'department', 2, NULL, NULL, NULL, NULL, NULL),
(7, 'S12EEE010', '2014-2015', NULL, NULL, NULL, NULL, NULL, 'TUTOR ', 'department', '', '', 1, NULL, NULL, NULL, NULL, NULL),
(8, 'S12EEE010', '2016-2017', NULL, NULL, NULL, NULL, NULL, 'EXAM CELL COORDINATOR', 'department', '', '', 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eee_fac_ot_qual`
--

CREATE TABLE `eee_fac_ot_qual` (
  `id` int(5) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `name_qual` varchar(100) DEFAULT NULL,
  `year_com` int(10) DEFAULT NULL,
  `cer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eee_fac_resg`
--

CREATE TABLE `eee_fac_resg` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `supid` varchar(20) DEFAULT NULL,
  `numsch` int(2) NOT NULL,
  `reg` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` varchar(10) NOT NULL,
  `cyear` varchar(20) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `tit` varchar(100) NOT NULL,
  `j_sup` varchar(50) DEFAULT NULL
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
-- Table structure for table `eie_fac`
--

CREATE TABLE `eie_fac` (
  `sid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `age` int(4) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob1` bigint(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `mstatus` varchar(5) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `relegion` varchar(30) NOT NULL,
  `comunity` varchar(10) NOT NULL,
  `place` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `aadharno` bigint(12) NOT NULL,
  `panno` varchar(10) NOT NULL,
  `passport` varchar(20) DEFAULT NULL,
  `blood` varchar(5) NOT NULL,
  `doj` date NOT NULL,
  `designation` varchar(50) NOT NULL,
  `mob2` bigint(10) DEFAULT NULL,
  `dept` varchar(50) NOT NULL,
  `uploadpic` varchar(100) NOT NULL,
  `aadharpic` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `dor` date DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `app_order` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eie_fac`
--

INSERT INTO `eie_fac` (`sid`, `name`, `dob`, `age`, `gender`, `email`, `mob1`, `fname`, `mname`, `mstatus`, `sname`, `relegion`, `comunity`, `place`, `city`, `district`, `state`, `country`, `pincode`, `address`, `paddress`, `aadharno`, `panno`, `passport`, `blood`, `doj`, `designation`, `mob2`, `dept`, `uploadpic`, `aadharpic`, `password`, `status`, `dor`, `reason`, `app_order`) VALUES
('S03EIE001', 'Dr.S.Sujatha', '1975-05-06', 44, 'female', 'sujasakthi22@gmail.com', 9487819134, 'P.Subramanian', 'S.Jegathambal', 'y', '', 'Hindu', 'MBC', 'Hosur', 'Hosur', 'Krishnagiri', 'Tamil Nadu', 'India', '635109', '	H-352,TNHB,Phase-7,Thendral Nagar, Hosur   ', '	H-352,TNHB,Phase-7,Thendral Nagar, Hosur   ', 991393280148, 'AXDPS2309G', '', 'O+ve', '2003-02-01', 'Professor & Head', 0, 'EIE', '44516-sujatha.jpg', '2694-aadharcard.jpg', '0148', NULL, NULL, NULL, NULL),
('S11EIE003', 'Dr.N.BAGYALAKSHMI', '1981-07-06', 37, 'female', 'bagyaeieace2009@gmail.com', 9344498040, 'Mr.M.NAGARAJAN', 'Mrs.N.PARVATHI', 'y', '', 'Hindu', 'MBC', 'Hosur', 'Hosur', 'Tamilnadu', 'Tamil Nadu', 'India', '635110', '151/21,Rajaganapathi Nagar, BMR Layout, \r\nOld Rayakotta Hudco,\r\nHosur,\r\n635110.   ', '151/21,Rajaganapathi Nagar, BMR Layout, \r\nOld Rayakotta Hudco,\r\nHosur,\r\n635110.   ', 406638821073, 'APAPB2069M', '', 'O+ve', '2009-06-22', 'ASSOCIATE PROFESSOR', 8248510171, 'EIE', '35182-bagya-photo.jpg', '97317-aadhar.jpg', '2 1073', NULL, NULL, NULL, NULL),
('S11EIE005', 'STALIN JOSE.C', '1985-05-14', 32, 'male', 'stalinjose.eie@adhiyamaan.in', 9789131150, 'V.CHARLES', 'CHALLATHANGAM', 'y', '', 'Christain ', 'BC', 'Poovancode', 'Verkizambi', 'Kanyakumari', 'Tamil Nadu', 'India', '629166', '	   14/45,Valiyaplankalavilai,\r\nPoovancode,\r\nVerkizambi(P.O).', '	   14/45,Valiyaplankalavilai,\r\nPoovancode,\r\nVerkizambi(P.O).', 656490682999, 'DROPS9347J', '', 'o Neg', '2011-06-08', 'Assistant Professor', 0, 'EIE', '38239-stalin-jose_pan.pdf', '50233-stali-jose_adar.pdf', '2999', NULL, NULL, NULL, NULL),
('S13EIE006', 'GOWRI SHANKAR M', '1986-02-21', 33, 'male', 'gowrishankar.eie@adhiyamaan.in', 9994222129, 'MADHAVAN J', 'VIJAYALAKSHMI', 'y', '', 'HINDU', 'BC', 'SALEM', 'SALEM', 'SALEM', 'Tamil Nadu', 'India', '636009', '15-8 DHAMODARAN STREET  \r\nARISIPALAYAM \r\nSALEM DISTRICT', '15-8 DHAMODARAN STREET  \r\nARISIPALAYAM \r\nSALEM DISTRICT', 247009818494, 'ASVPG6583F', '', 'B POS', '2013-06-07', 'ASSISTANT PROFESSOR', 0, 'EIE', '10335-gowri.jpg', '81667-aadhar.pdf', '8494', NULL, NULL, NULL, NULL),
('S13EIE007', 'Anbarasan', '1990-05-10', 28, 'male', 'anbarasanmsp@gmail.com', 9600491007, 'Muthusamy', 'Sarasu', 'n', '', 'Hindu', 'BC', 'Attur', 'Salem', 'Salem', '', 'India', '636108', '3/46, Akkichettipalayam, Palaniapuri (P.O),\r\nAttur (T.K),\r\nSalem   ', '3/46, Akkichettipalayam, Palaniapuri (P.O),\r\nAttur (T.K),\r\nSalem   ', 706404342101, 'AWKPA3889P', '', 'A1-ve', '2013-06-07', 'Assistant Professor', 0, 'EIE', '85075-photo.jpg', '38659-jpg2pdf.pdf', '2101', NULL, NULL, NULL, NULL),
('S70EIE004', 'GURUSAMY', '1986-12-27', 31, 'male', 'gurulakshmi006@gmail.com', 9789662232, 'PERUMAL', 'LAKSHMI', 'y', '', 'HINDU', 'SCA', 'SANKARI', 'SALEM', 'SALEM', 'Tamil Nadu', 'India', '637303', 'DOOR NO 95-B,\r\nCHINNAGOUNDNUR POST,\r\nSANKARI WEST,\r\nSALEM DISTRICT', 'DOOR NO 95-B,\r\nCHINNAGOUNDNUR POST,\r\nSANKARI WEST,\r\nSALEM DISTRICT', 418401465579, 'BECPG6466H', '', 'B+ve', '2012-06-18', 'ASSISTANT PROFESSOR', 0, 'EIE', '12674-guru-photo.jpg', '17262-guru.adhaar.pdf', '5579', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eie_fac_attorg`
--

CREATE TABLE `eie_fac_attorg` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `attcategory1` varchar(20) DEFAULT NULL,
  `atttitle1` varchar(50) DEFAULT NULL,
  `attdays1` int(3) DEFAULT NULL,
  `attfrom1` date NOT NULL,
  `attto1` date NOT NULL,
  `attdate1` date NOT NULL,
  `attorg1` varchar(50) DEFAULT NULL,
  `attplace1` varchar(50) DEFAULT NULL,
  `attlevel1` varchar(20) DEFAULT NULL,
  `attcer1` varchar(100) DEFAULT NULL,
  `attcategory2` varchar(20) NOT NULL,
  `atttitle2` varchar(50) NOT NULL,
  `attdays2` int(3) NOT NULL,
  `attfrom2` date NOT NULL,
  `attto2` date NOT NULL,
  `attdate2` date NOT NULL,
  `attorg2` varchar(50) NOT NULL,
  `attplace2` varchar(50) NOT NULL,
  `attlevel2` varchar(20) NOT NULL,
  `attcer2` varchar(100) NOT NULL,
  `attkey` int(1) DEFAULT NULL,
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
-- Dumping data for table `eie_fac_attorg`
--

INSERT INTO `eie_fac_attorg` (`id`, `sid`, `ayear`, `attcategory1`, `atttitle1`, `attdays1`, `attfrom1`, `attto1`, `attdate1`, `attorg1`, `attplace1`, `attlevel1`, `attcer1`, `attcategory2`, `atttitle2`, `attdays2`, `attfrom2`, `attto2`, `attdate2`, `attorg2`, `attplace2`, `attlevel2`, `attcer2`, `attkey`, `orgcategory1`, `orgtitle1`, `orgfun1`, `orgdays1`, `orgfrom1`, `orgto1`, `orgdate1`, `orgres1`, `orgpar1`, `orglevel1`, `orgcer1`, `orgkey`) VALUES
(1, 'S03EIE001', '2014-2015', 'workshop', 'ELECTRONIC SYSTEM LEVEL DESIGN AND VERIFICATION', 2, '2014-11-14', '2014-11-15', '0000-00-00', 'AMRITA VISHWA VIDYAPEETHAM', 'BANGALORE', 'national', '61195-amritha.pdf', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', 1, 'fdp', 'Analog and Digital Communication', 'ANNA UNIVERSITY', 7, '2014-06-12', '2014-06-18', '0000-00-00', 'DR.V.BANUMATHI,Dr. S. Vijayach', 30, 'state', '93810-fdp.pdf', 1),
(2, 'S03EIE001', '2015-2016', 'seminar', 'KCT INDUSTRY ACADEMIA MEET 2016-INSTRUMENTATION', 1, '0000-00-00', '0000-00-00', '2016-02-20', 'KUMARAGURU COLLEGE OF TECH', 'COIMBATORE', 'national', '89769-kct.pdf', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(3, 'S03EIE001', '2013-2014', 'workshop', 'WORKSHOP ON R & d PROJECT PROPOSALS-AWARENESS,NEED', 1, '0000-00-00', '0000-00-00', '2014-02-26', 'ANNA UNIVERSITY', 'CHENNAI', 'state', '53544-au.pdf', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(4, 'S03EIE001', '2009-2010', 'fdp', 'ADAPTIVE CONTROL', 6, '2010-05-03', '2010-05-09', '0000-00-00', 'ANNA UNIVERSITY', 'CHENNAI', 'state', '88077-aufdp1.pdf', 'seminar', 'AUTOMATION SYSTEM TECHNOLOGY', 1, '0000-00-00', '0000-00-00', '2009-12-19', 'CDAC,AND MIT', 'CHENNAI', 'national', '40464-cdac.pdf', 2, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(5, 'S03EIE001', '2007-2008', 'workshop', 'MULTIVARIABLE CONTROL SYSTEM', 1, '0000-00-00', '0000-00-00', '2008-02-29', 'NITT ', 'TRICHY', 'national', '96865-nitt.pdf', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(6, 'S03EIE001', '2011-2012', 'workshop', 'MISSION 10X', 5, '2011-06-21', '2011-06-25', '0000-00-00', 'ADHIYAMAAN COLLEGE OF ENGG', 'HOSUR', 'national', '54257-mission-10x.pdf', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(7, 'S03EIE001', '2017-2018', 'workshop', 'SMART GRID/SMART CITY AN INDIAN PERSPECTIVE-RESEAR', 1, '0000-00-00', '0000-00-00', '2017-07-17', 'KONGU ENGINEERING COLLEGE', 'ERODE', 'national', '89450-kongu.pdf', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', '', '', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eie_fac_bkjrn`
--

CREATE TABLE `eie_fac_bkjrn` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `bk1` varchar(20) DEFAULT NULL,
  `bkcha1` varchar(50) DEFAULT NULL,
  `bkissn1` varchar(20) DEFAULT NULL,
  `bkmy1` varchar(7) DEFAULT NULL,
  `bkpub1` varchar(50) DEFAULT NULL,
  `bktype1` varchar(50) DEFAULT NULL,
  `bkkey` int(1) DEFAULT NULL,
  `jrntitle1` varchar(100) DEFAULT NULL,
  `jrnname1` varchar(50) DEFAULT NULL,
  `jrnvol1` varchar(20) DEFAULT NULL,
  `jrnissue1` varchar(20) DEFAULT NULL,
  `jrnissn1` varchar(20) DEFAULT NULL,
  `jrncategory1` varchar(20) DEFAULT NULL,
  `jrnlink1` varchar(100) DEFAULT NULL,
  `jrncit1` varchar(30) DEFAULT NULL,
  `jrnpdf1` varchar(100) DEFAULT NULL,
  `jrnimpact1` int(10) DEFAULT NULL,
  `jrnkey` int(1) DEFAULT NULL,
  `gl` varchar(50) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eie_fac_bkjrn`
--

INSERT INTO `eie_fac_bkjrn` (`id`, `sid`, `ayear`, `bk1`, `bkcha1`, `bkissn1`, `bkmy1`, `bkpub1`, `bktype1`, `bkkey`, `jrntitle1`, `jrnname1`, `jrnvol1`, `jrnissue1`, `jrnissn1`, `jrncategory1`, `jrnlink1`, `jrncit1`, `jrnpdf1`, `jrnimpact1`, `jrnkey`, `gl`, `glkey`) VALUES
(1, 'S03EIE001', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'International Journal of Pure and Applied Mathemat', '119', '2', '1314-3395', 'ugc', 'http://www.ijpam.eu', '7.19%', '0', 0, 1, NULL, NULL),
(2, 'S03EIE001', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADVANCES in NATURAL and APPLIED SCIENCES', '11', '6', '1998-1090', 'others', 'http://www.aensiweb.com/ANAS', '0', '81937-21_eie21.pdf', 0, 1, NULL, NULL),
(3, 'S03EIE001', '2015-2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Middle-East Journal of Scientific Research ', '24', '10', '1990-9233', 'others', 'https://www.idosi.org/mejsr/mejsr24(10)16/50.pdf', '0', '45149-50.pdf', 0, 1, NULL, NULL),
(4, 'S03EIE001', '1987-1988', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'International Journal of Advanced Research in Elec', '5', 'special issue 1', '2278-8875', 'others', 'http://www.ijareeie.com/upload/2016/ncrte/21_EIE21.pdf', '0', '99426-21_eie21.pdf', 0, 1, NULL, NULL),
(5, 'S03EIE001', '2014-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Modelling and Simulation in Engineering', '14', 'Article ID 426402', '16875591', 'ugc,wos', 'https://www.hindawi.com/journals/mse/2014/426402/', 'INSPEC', '5368-426402.pdf', 0, 1, NULL, NULL),
(6, 'S03EIE001', '2011-2012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'International                     Journal of  Engi', '3', '3/4', '1755-9758', 'others', '10.1504/IJESMS.2011.043840', '5', '47516-ijesms0303-0404-sujatha.pdf', 0, 1, NULL, NULL),
(7, 'S03EIE001', '2010-2011', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'International Journal of Computer Application', '1', '20', '0975 - 8887', 'google scholar', 'DOI: 10.5120/417-615', '61 READS', '48951-ijca_paper.pdf', 0, 1, NULL, NULL),
(8, 'S03EIE001', '2012-2013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Asian Journal of Scientific Research', '5', '2', '19921454', 'ugc,scopus', 'https://scialert.net/abstract/?doi=ajsr.2012.31.44', '1', '29419-31-44.pdf', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eie_fac_edu`
--

CREATE TABLE `eie_fac_edu` (
  `sid` varchar(30) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `sboard` varchar(10) DEFAULT NULL,
  `syear` int(4) DEFAULT NULL,
  `spercentage` int(4) DEFAULT NULL,
  `scertificate` varchar(100) DEFAULT NULL,
  `skey` int(1) DEFAULT NULL,
  `s2name` varchar(50) DEFAULT NULL,
  `s2board` varchar(10) DEFAULT NULL,
  `s2branch` varchar(50) DEFAULT NULL,
  `s2year` int(4) DEFAULT NULL,
  `s2percentage` int(4) DEFAULT NULL,
  `s2certificate` varchar(100) DEFAULT NULL,
  `s2key` int(1) DEFAULT NULL,
  `dname` varchar(50) DEFAULT NULL,
  `dboard` varchar(10) DEFAULT NULL,
  `ddegree` varchar(50) DEFAULT NULL,
  `dmode` varchar(10) DEFAULT NULL,
  `dyear` int(4) DEFAULT NULL,
  `dpercentage` int(4) DEFAULT NULL,
  `dcertificate` varchar(100) DEFAULT NULL,
  `dkey` int(1) DEFAULT NULL,
  `d1name` varchar(50) DEFAULT NULL,
  `d1board` varchar(10) DEFAULT NULL,
  `d1degree` varchar(50) DEFAULT NULL,
  `d1mode` varchar(10) DEFAULT NULL,
  `d1year` int(4) DEFAULT NULL,
  `d1percentage` int(4) DEFAULT NULL,
  `d1certificate` varchar(100) DEFAULT NULL,
  `d1key` int(1) DEFAULT NULL,
  `d2name` varchar(50) DEFAULT NULL,
  `d2board` varchar(10) DEFAULT NULL,
  `d2degree` varchar(50) DEFAULT NULL,
  `d2mode` varchar(10) DEFAULT NULL,
  `d2year` int(4) DEFAULT NULL,
  `d2percentage` int(4) DEFAULT NULL,
  `d2certificate` varchar(100) DEFAULT NULL,
  `d2key` int(1) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `uuniversity` varchar(50) DEFAULT NULL,
  `udegree` varchar(50) DEFAULT NULL,
  `ubranch` varchar(50) DEFAULT NULL,
  `umode` varchar(10) DEFAULT NULL,
  `uyear` int(4) DEFAULT NULL,
  `upercentage` int(4) DEFAULT NULL,
  `ucertificate` varchar(100) DEFAULT NULL,
  `ukey` int(1) DEFAULT NULL,
  `u1name` varchar(50) DEFAULT NULL,
  `u1university` varchar(50) DEFAULT NULL,
  `u1degree` varchar(50) DEFAULT NULL,
  `u1branch` varchar(50) DEFAULT NULL,
  `u1mode` varchar(10) DEFAULT NULL,
  `u1year` int(4) DEFAULT NULL,
  `u1percentage` int(4) DEFAULT NULL,
  `u1certificate` varchar(100) DEFAULT NULL,
  `u1key` int(1) DEFAULT NULL,
  `u2name` varchar(50) DEFAULT NULL,
  `u2university` varchar(50) DEFAULT NULL,
  `u2degree` varchar(50) DEFAULT NULL,
  `u2branch` varchar(50) DEFAULT NULL,
  `u2mode` varchar(10) DEFAULT NULL,
  `u2year` int(4) DEFAULT NULL,
  `u2percentage` int(4) DEFAULT NULL,
  `u2certificate` varchar(100) DEFAULT NULL,
  `u2key` int(1) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `puniversity` varchar(50) DEFAULT NULL,
  `pdegree` varchar(50) DEFAULT NULL,
  `pbranch` varchar(50) DEFAULT NULL,
  `pmode` varchar(10) DEFAULT NULL,
  `pyear` int(4) DEFAULT NULL,
  `ppercentage` int(4) DEFAULT NULL,
  `pcertificate` varchar(100) DEFAULT NULL,
  `pkey` int(1) DEFAULT NULL,
  `p1name` varchar(50) DEFAULT NULL,
  `p1university` varchar(50) DEFAULT NULL,
  `p1degree` varchar(50) DEFAULT NULL,
  `p1branch` varchar(50) DEFAULT NULL,
  `p1mode` varchar(10) DEFAULT NULL,
  `p1year` int(4) DEFAULT NULL,
  `p1percentage` int(4) DEFAULT NULL,
  `p1certificate` varchar(100) DEFAULT NULL,
  `p1key` int(1) DEFAULT NULL,
  `p2name` varchar(50) DEFAULT NULL,
  `p2university` varchar(50) DEFAULT NULL,
  `p2degree` varchar(50) DEFAULT NULL,
  `p2branch` varchar(50) DEFAULT NULL,
  `p2mode` varchar(10) DEFAULT NULL,
  `p2year` int(4) DEFAULT NULL,
  `p2percentage` int(4) DEFAULT NULL,
  `p2certificate` varchar(100) DEFAULT NULL,
  `p2key` int(1) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `muniversity` varchar(50) DEFAULT NULL,
  `mspec` varchar(50) DEFAULT NULL,
  `mbranch` varchar(50) DEFAULT NULL,
  `mmode` varchar(10) DEFAULT NULL,
  `myear` int(4) DEFAULT NULL,
  `mpercentage` int(4) DEFAULT NULL,
  `mthesis` varchar(50) DEFAULT NULL,
  `mguide` varchar(30) DEFAULT NULL,
  `mcertificate` varchar(100) DEFAULT NULL,
  `mkey` int(1) DEFAULT NULL,
  `phname` varchar(50) DEFAULT NULL,
  `phuniversity` varchar(50) DEFAULT NULL,
  `phspec` varchar(50) DEFAULT NULL,
  `phbranch` varchar(50) DEFAULT NULL,
  `phmode` varchar(10) DEFAULT NULL,
  `phyreg` varchar(7) DEFAULT NULL,
  `phyear` varchar(7) DEFAULT NULL,
  `phthesis` varchar(100) DEFAULT NULL,
  `phguide` varchar(30) DEFAULT NULL,
  `phcertificate` varchar(100) DEFAULT NULL,
  `phkey` int(1) DEFAULT NULL,
  `ph1name` varchar(50) DEFAULT NULL,
  `ph1university` varchar(50) DEFAULT NULL,
  `ph1spec` varchar(50) DEFAULT NULL,
  `ph1branch` varchar(50) DEFAULT NULL,
  `ph1mode` varchar(10) DEFAULT NULL,
  `ph1yreg` varchar(7) DEFAULT NULL,
  `ph1year` varchar(7) DEFAULT NULL,
  `ph1thesis` varchar(100) DEFAULT NULL,
  `ph1guide` varchar(30) DEFAULT NULL,
  `ph1certificate` varchar(100) DEFAULT NULL,
  `ph1key` int(1) DEFAULT NULL,
  `ph2name` varchar(50) DEFAULT NULL,
  `ph2university` varchar(50) DEFAULT NULL,
  `ph2spec` varchar(50) DEFAULT NULL,
  `ph2branch` varchar(50) DEFAULT NULL,
  `ph2mode` varchar(10) DEFAULT NULL,
  `ph2yreg` varchar(7) DEFAULT NULL,
  `ph2year` varchar(7) DEFAULT NULL,
  `ph2thesis` varchar(100) DEFAULT NULL,
  `ph2guide` varchar(30) DEFAULT NULL,
  `ph2certificate` varchar(100) DEFAULT NULL,
  `ph2key` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eie_fac_edu`
--

INSERT INTO `eie_fac_edu` (`sid`, `sname`, `sboard`, `syear`, `spercentage`, `scertificate`, `skey`, `s2name`, `s2board`, `s2branch`, `s2year`, `s2percentage`, `s2certificate`, `s2key`, `dname`, `dboard`, `ddegree`, `dmode`, `dyear`, `dpercentage`, `dcertificate`, `dkey`, `d1name`, `d1board`, `d1degree`, `d1mode`, `d1year`, `d1percentage`, `d1certificate`, `d1key`, `d2name`, `d2board`, `d2degree`, `d2mode`, `d2year`, `d2percentage`, `d2certificate`, `d2key`, `uname`, `uuniversity`, `udegree`, `ubranch`, `umode`, `uyear`, `upercentage`, `ucertificate`, `ukey`, `u1name`, `u1university`, `u1degree`, `u1branch`, `u1mode`, `u1year`, `u1percentage`, `u1certificate`, `u1key`, `u2name`, `u2university`, `u2degree`, `u2branch`, `u2mode`, `u2year`, `u2percentage`, `u2certificate`, `u2key`, `pname`, `puniversity`, `pdegree`, `pbranch`, `pmode`, `pyear`, `ppercentage`, `pcertificate`, `pkey`, `p1name`, `p1university`, `p1degree`, `p1branch`, `p1mode`, `p1year`, `p1percentage`, `p1certificate`, `p1key`, `p2name`, `p2university`, `p2degree`, `p2branch`, `p2mode`, `p2year`, `p2percentage`, `p2certificate`, `p2key`, `mname`, `muniversity`, `mspec`, `mbranch`, `mmode`, `myear`, `mpercentage`, `mthesis`, `mguide`, `mcertificate`, `mkey`, `phname`, `phuniversity`, `phspec`, `phbranch`, `phmode`, `phyreg`, `phyear`, `phthesis`, `phguide`, `phcertificate`, `phkey`, `ph1name`, `ph1university`, `ph1spec`, `ph1branch`, `ph1mode`, `ph1yreg`, `ph1year`, `ph1thesis`, `ph1guide`, `ph1certificate`, `ph1key`, `ph2name`, `ph2university`, `ph2spec`, `ph2branch`, `ph2mode`, `ph2yreg`, `ph2year`, `ph2thesis`, `ph2guide`, `ph2certificate`, `ph2key`) VALUES
('S03EIE001', 'ZAMINDAR HIGHER SECONDARY SCHOOL', 'state', 1990, 88, '76706-10th.pdf', 1, 'ZAMINDAR HIGHER SECONDARY SCHOOL', 'state', 'MATHS,PHYSICS,CHEMISTRY,BIOLOGY', 1992, 89, '84874-12th.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ALAGAPPA CHETTIAR COLLEGE OF ENGINEERING AND TECHN', 'MADURAI KAMARAJ UNIVERSITY', 'B.E', 'ELECTRICAL AND ELECTRONICS ENGINEERING', 'regular', 1997, 73, '4409-be-degree.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ANNAMALAI UNIVERSITY', 'ANNAMALAI UNIVERSITY', 'M.E', 'PROCESS CONTROL AND INSTRUMENTATION', 'regular', 2002, 9, '76708-me-de.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MADRAS INSTITUTE OF TECHNOLOGY', 'ANNA UNIVERSITY', 'PROCESS CONTROL,MACHINE LEARNING', 'FACULTY OF ELECTRICAL', 'parttime', '2006', '2012', 'SUPPORT VECTOR MACHINE BASED MODELING AND CONTROL OF A BATCH REACTOR', 'DR.N.PAPPA', '66622-phd.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S70EIE004', 'SANKAR HIGHER SECONDARY SCHOOL', 'state', 2003, 59, '51039-10.pdf', 1, 'GOVERNMENT HIGHER SECONDARY SCHOOL', 'state', 'MATHS BIOLOGY', 2005, 51, '99115-12th.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADHIYAMAANCOLLEGE OF ENGINEERING', 'ANNA UNIVERSITY', 'BE', 'INSTRUMENTATION AND CONTROL ENGINEERING', 'regular', 2010, 64, '36001-ug.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eie_fac_exp`
--

CREATE TABLE `eie_fac_exp` (
  `sid` varchar(30) NOT NULL,
  `clg1` varchar(50) DEFAULT NULL,
  `clgdesg1` varchar(30) DEFAULT NULL,
  `clgdoj1` date DEFAULT NULL,
  `clgdor1` date DEFAULT NULL,
  `clgreason1` varchar(100) DEFAULT NULL,
  `clgcir1` varchar(100) DEFAULT NULL,
  `clgkey` int(1) DEFAULT NULL,
  `pol1` varchar(50) DEFAULT NULL,
  `poldesg1` varchar(30) DEFAULT NULL,
  `poldoj1` date DEFAULT NULL,
  `poldor1` date DEFAULT NULL,
  `polreason1` varchar(100) DEFAULT NULL,
  `polcir1` varchar(100) DEFAULT NULL,
  `polkey` int(1) DEFAULT NULL,
  `sch1` varchar(50) DEFAULT NULL,
  `schdesg1` varchar(30) DEFAULT NULL,
  `schdoj1` date DEFAULT NULL,
  `schdor1` date DEFAULT NULL,
  `schreason1` varchar(100) DEFAULT NULL,
  `schcir1` varchar(100) DEFAULT NULL,
  `schkey` int(1) DEFAULT NULL,
  `ind1` varchar(50) DEFAULT NULL,
  `inddesg1` varchar(30) DEFAULT NULL,
  `indnature1` varchar(30) DEFAULT NULL,
  `inddoj1` date DEFAULT NULL,
  `inddor1` date DEFAULT NULL,
  `indreason1` varchar(100) DEFAULT NULL,
  `indcir1` varchar(100) DEFAULT NULL,
  `indkey` int(1) DEFAULT NULL,
  `ot1` varchar(50) DEFAULT NULL,
  `otdesg1` varchar(30) DEFAULT NULL,
  `otnature1` varchar(30) DEFAULT NULL,
  `otdoj1` date DEFAULT NULL,
  `otdor1` date DEFAULT NULL,
  `otreason1` varchar(100) DEFAULT NULL,
  `otcir1` varchar(100) DEFAULT NULL,
  `otkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eie_fac_exp`
--

INSERT INTO `eie_fac_exp` (`sid`, `clg1`, `clgdesg1`, `clgdoj1`, `clgdor1`, `clgreason1`, `clgcir1`, `clgkey`, `pol1`, `poldesg1`, `poldoj1`, `poldor1`, `polreason1`, `polcir1`, `polkey`, `sch1`, `schdesg1`, `schdoj1`, `schdor1`, `schreason1`, `schcir1`, `schkey`, `ind1`, `inddesg1`, `indnature1`, `inddoj1`, `inddor1`, `indreason1`, `indcir1`, `indkey`, `ot1`, `otdesg1`, `otnature1`, `otdoj1`, `otdor1`, `otreason1`, `otcir1`, `otkey`) VALUES
('S03EIE001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TNEB', 'GRADUATE TRAINEE', 'TRAINING', '1997-09-19', '1998-09-18', 'ONE YEAR PERIOD', '0', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eie_fac_funpat`
--

CREATE TABLE `eie_fac_funpat` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `titleofpro1` varchar(50) DEFAULT NULL,
  `duration1` varchar(30) DEFAULT NULL,
  `amountsan1` varchar(20) DEFAULT NULL,
  `agency1` varchar(20) DEFAULT NULL,
  `startdate1` date DEFAULT NULL,
  `copiname1` varchar(20) DEFAULT NULL,
  `year1` varchar(7) DEFAULT NULL,
  `order1` varchar(200) NOT NULL,
  `uc1` varchar(200) NOT NULL,
  `funkey` int(1) DEFAULT NULL,
  `nameofpat1` varchar(50) DEFAULT NULL,
  `title1` varchar(30) DEFAULT NULL,
  `fileno1` varchar(20) DEFAULT NULL,
  `pat_cer` varchar(200) NOT NULL,
  `patkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eie_fac_funpat`
--

INSERT INTO `eie_fac_funpat` (`id`, `sid`, `ayear`, `titleofpro1`, `duration1`, `amountsan1`, `agency1`, `startdate1`, `copiname1`, `year1`, `order1`, `uc1`, `funkey`, `nameofpat1`, `title1`, `fileno1`, `pat_cer`, `patkey`) VALUES
(1, 'S03EIE001', '2014-2015', 'Design and Implementation of Low Power Arithmetic ', '1.5 years', '310000', 'UGC', '2014-04-01', 'Dr.S.Sujatha', '2015-10', '64070-ugc-project-sanctioned-order.pdf', '0', 1, NULL, NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eie_fac_glc`
--

CREATE TABLE `eie_fac_glc` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `gltitle1` varchar(50) DEFAULT NULL,
  `gldays1` int(3) DEFAULT NULL,
  `glfrom1` date NOT NULL,
  `glto1` date NOT NULL,
  `gldate1` date NOT NULL,
  `gltopic1` varchar(50) DEFAULT NULL,
  `glorg1` varchar(50) DEFAULT NULL,
  `glplace1` varchar(50) DEFAULT NULL,
  `glpic1` varchar(100) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL,
  `conname1` varchar(30) DEFAULT NULL,
  `contitle1` varchar(50) DEFAULT NULL,
  `conorg1` varchar(50) DEFAULT NULL,
  `condays1` int(3) DEFAULT NULL,
  `confrom1` date NOT NULL,
  `conto1` date NOT NULL,
  `condate1` date NOT NULL,
  `conlevel1` varchar(20) DEFAULT NULL,
  `conpdf1` varchar(100) DEFAULT NULL,
  `concer1` varchar(100) DEFAULT NULL,
  `conname2` varchar(20) NOT NULL,
  `contitle2` varchar(50) NOT NULL,
  `conorg2` varchar(50) NOT NULL,
  `condays2` int(3) NOT NULL,
  `confrom2` date NOT NULL,
  `conto2` date NOT NULL,
  `condate2` date NOT NULL,
  `conlevel2` varchar(20) NOT NULL,
  `concer2` varchar(100) NOT NULL,
  `conkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eie_fac_glc`
--

INSERT INTO `eie_fac_glc` (`id`, `sid`, `ayear`, `gltitle1`, `gldays1`, `glfrom1`, `glto1`, `gldate1`, `gltopic1`, `glorg1`, `glplace1`, `glpic1`, `glkey`, `conname1`, `contitle1`, `conorg1`, `condays1`, `confrom1`, `conto1`, `condate1`, `conlevel1`, `conpdf1`, `concer1`, `conname2`, `contitle2`, `conorg2`, `condays2`, `confrom2`, `conto2`, `condate2`, `conlevel2`, `concer2`, `conkey`) VALUES
(1, 'S03EIE001', '2005-2006', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'International conference on EA', 'Artifact amputation by adaptive comb filter', 'NOORUL ISLAM COLLEGE OF ENGG AND TECH', 2, '2005-12-16', '2005-12-17', '0000-00-00', 'international', NULL, '53377-nice.pdf', '', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 1),
(2, 'S03EIE001', '2014-2015', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'ieibct 2015', 'DESIGN AND IMPLEMENTATION OF FFT PROCESSOR USING V', 'ADHIYAMAAN COLLEGE OF ENGG', 2, '2015-03-23', '2015-03-24', '0000-00-00', 'national', NULL, '68411-dept1.pdf', '', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 1),
(3, 'S03EIE001', '2004-2005', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'NATIONAL CONFERENCE ON POWER E', 'COMPLEX WAVELET TRANSFORM BASED POWER QUANTITY MEA', 'ACCET', 1, '0000-00-00', '0000-00-00', '2005-03-31', 'national', NULL, '89201-accet.pdf', '', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 1),
(4, 'S03EIE001', '2015-2016', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'ICRSME 2016', 'PERFORMANCE ANALYSIS OF ANURUPYE VEDIC MULTIPLIER ', 'INTERNATIONAL ORGANIZATION OF SCIENTIFIC RESEARCH ', 2, '2016-02-18', '2016-02-19', '0000-00-00', 'international', NULL, '64175-iosed.pdf', '', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 1),
(5, 'S03EIE001', '2017-2018', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'ICACT 18', 'REAL TIME IMPLEMENTATION OF A TELEMONITORING SYSTE', 'VELAMMAL INSTITUTE OF TECH', 1, '0000-00-00', '0000-00-00', '2018-03-17', 'international', NULL, '46707-velammal1.pdf', '', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 1),
(6, 'S03EIE001', '2006-2007', 'LEARNING SYSTEMS IN TNTELLIGENT CONTROL: AN APPRAI', 1, '0000-00-00', '0000-00-00', '2007-03-14', 'INTRODUCTION TO EXPERT SYSTEM', 'ST PETERS ENGINEERING COLLEGE', 'CHENNAI', '0', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, '', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eie_fac_member`
--

CREATE TABLE `eie_fac_member` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `memberid1` varchar(30) DEFAULT NULL,
  `validity1` varchar(20) DEFAULT NULL,
  `name2` varchar(50) NOT NULL,
  `pic2` varchar(30) NOT NULL,
  `memberid2` varchar(30) NOT NULL,
  `validity2` varchar(20) NOT NULL,
  `name3` varchar(50) NOT NULL,
  `pic3` varchar(30) NOT NULL,
  `memberid3` varchar(30) NOT NULL,
  `validity3` varchar(20) NOT NULL,
  `pic1` varchar(100) DEFAULT NULL,
  `memkey` int(1) DEFAULT NULL,
  `res1` varchar(50) DEFAULT NULL,
  `level1` varchar(20) DEFAULT NULL,
  `res2` varchar(50) NOT NULL,
  `level2` varchar(20) NOT NULL,
  `res3` varchar(50) NOT NULL,
  `level3` varchar(20) NOT NULL,
  `res4` varchar(50) NOT NULL,
  `level4` varchar(20) NOT NULL,
  `reskey` int(1) DEFAULT NULL,
  `aname1` varchar(50) DEFAULT NULL,
  `aissue1` varchar(10) DEFAULT NULL,
  `amy1` varchar(7) DEFAULT NULL,
  `acer1` varchar(100) DEFAULT NULL,
  `awakey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eie_fac_member`
--

INSERT INTO `eie_fac_member` (`id`, `sid`, `ayear`, `name1`, `memberid1`, `validity1`, `name2`, `pic2`, `memberid2`, `validity2`, `name3`, `pic3`, `memberid3`, `validity3`, `pic1`, `memkey`, `res1`, `level1`, `res2`, `level2`, `res3`, `level3`, `res4`, `level4`, `reskey`, `aname1`, `aissue1`, `amy1`, `acer1`, `awakey`) VALUES
(1, 'S03EIE001', '2006-2007', NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, 'HOD', 'department', '', '', '', '', '', '', 1, NULL, NULL, NULL, NULL, NULL),
(2, 'S03EIE001', '2007-2008', NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, 'HOD', 'department', 'BOS CHAIRMAN', 'department', 'BOS CHAIRMAN/EIE BOARD', 'institute', 'Member in Academic Council', 'institute', 4, NULL, NULL, NULL, NULL, NULL),
(3, 'S03EIE001', '2008-2009', NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, 'HOD', 'department', 'BOS CHAIRMAN', 'department', '', '', '', '', 2, NULL, NULL, NULL, NULL, NULL),
(4, 'S03EIE001', '2009-2010', NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, 'HOD', 'department', '', '', '', '', '', '', 1, NULL, NULL, NULL, NULL, NULL),
(5, 'S03EIE001', '2010-2011', NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, 'HOD', 'department', '', '', '', '', '', '', 1, NULL, NULL, NULL, NULL, NULL),
(6, 'S03EIE001', '2011-2012', NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, 'HOD', 'department', '', '', '', '', '', '', 1, NULL, NULL, NULL, NULL, NULL),
(7, 'S03EIE001', '2012-2013', NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, 'HOD', 'department', '', '', '', '', '', '', 1, NULL, NULL, NULL, NULL, NULL),
(8, 'S03EIE001', '2013-2014', NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, 'HOD', 'department', '', '', '', '', '', '', 1, NULL, NULL, NULL, NULL, NULL),
(9, 'S03EIE001', '2014-2015', NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, 'HOD', 'department', 'Member in Grievance Appeal Committee', 'institute', 'Program Coordinator in NBA, NAAC Team.', 'institute', '', '', 3, NULL, NULL, NULL, NULL, NULL),
(10, 'S03EIE001', '2015-2016', NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, 'HOD', 'department', 'Member in Grievance Appeal Committee', 'institute', '', '', '', '', 2, NULL, NULL, NULL, NULL, NULL),
(11, 'S03EIE001', '2016-2017', NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, 'HOD', 'department', 'Member in Grievance Appeal Committee', 'institute', '', '', '', '', 2, NULL, NULL, NULL, NULL, NULL),
(12, 'S03EIE001', '2017-2018', NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, 'HOD', 'department', 'Member in Disciplinary Committee', 'institute', 'Member in Grievance Appeal Committee', 'institute', '', '', 3, NULL, NULL, NULL, NULL, NULL),
(13, 'S03EIE001', '2018-2019', 'ISTE', 'LM 43567', 'LIFE MEMBER', 'ISOI', '0', 'LM.No.2266', 'LIFE MEMBER', 'IE(I)', '0', 'F-119868-4', 'LIFE MEMBER', '0', 3, 'HOD', 'department', 'â€¢	Monitoring committee member for ACE-NIDHI-PRAY', 'institute', 'Member in Disciplinary Committee', 'institute', 'Member in Grievance Appeal Committee', 'institute', 4, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eie_fac_ot_qual`
--

CREATE TABLE `eie_fac_ot_qual` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) NOT NULL,
  `name_qual` varchar(50) NOT NULL,
  `year_com` int(10) NOT NULL,
  `cer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eie_fac_resg`
--

CREATE TABLE `eie_fac_resg` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `supid` varchar(20) DEFAULT NULL,
  `numsch` int(2) NOT NULL,
  `reg` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` varchar(10) NOT NULL,
  `cyear` varchar(20) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `tit` varchar(100) NOT NULL,
  `j_sup` varchar(50) DEFAULT NULL
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
-- Table structure for table `eng_fac`
--

CREATE TABLE `eng_fac` (
  `sid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `age` int(4) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob1` bigint(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `mstatus` varchar(5) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `relegion` varchar(30) NOT NULL,
  `comunity` varchar(10) NOT NULL,
  `place` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `aadharno` bigint(12) NOT NULL,
  `panno` varchar(10) NOT NULL,
  `passport` varchar(20) DEFAULT NULL,
  `blood` varchar(5) NOT NULL,
  `doj` date NOT NULL,
  `designation` varchar(50) NOT NULL,
  `mob2` bigint(10) DEFAULT NULL,
  `dept` varchar(50) NOT NULL,
  `uploadpic` varchar(100) NOT NULL,
  `aadharpic` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `dor` date DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `app_order` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eng_fac`
--

INSERT INTO `eng_fac` (`sid`, `name`, `dob`, `age`, `gender`, `email`, `mob1`, `fname`, `mname`, `mstatus`, `sname`, `relegion`, `comunity`, `place`, `city`, `district`, `state`, `country`, `pincode`, `address`, `paddress`, `aadharno`, `panno`, `passport`, `blood`, `doj`, `designation`, `mob2`, `dept`, `uploadpic`, `aadharpic`, `password`, `status`, `dor`, `reason`, `app_order`) VALUES
('S15ENG003', 'LOGANATHAN ', '0000-00-00', 26, 'male', 'loganathanskg.ma@gmail.com', 9500594372, 'GANESHASUBBURAM', 'KANAGAVELTHAI', 'n', '', 'HINDU', 'MBC', 'KULLURSANDAI', 'KULLURSANDAI', 'VIRUDHUNAGAR', 'Tamil Nadu', 'India', '626004', '	   5-1042, SOUTH STREET, KULLURSANDAI', '	   5-1042, SOUTH STREET, KULLURSANDAI', 407536802571, 'ANTPL5501D', '', 'O+', '0000-00-00', 'ASSISTANT PROFESSOR', 0, 'ENG', '73240-copy-of-logu.jpg', '2965-loganathan-aadhar.pdf', '2571', NULL, NULL, NULL, NULL),
('S17ENG001', 'DR. N. UTTHAM KUMAR', '0000-00-00', 36, 'male', 'hod_english@adhiyamaan.ac.in', 9994999293, 'S. NARAYANASAMY', 'N. INDIRANI', 'y', '', 'HINDU', 'GAVARA', 'KAVERIPATTINAM', 'KRISHNAGIRI', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635112', '5/204-I, JANARDHANAN NAGAR, TNHB SOUTH, ERRAHALLI, POTHAPURAM (PO), KRISHNAGIRI (TK&DT), PIN:635112.', 'S/O. S. NARAYANASAMY, NAKKALPATTI (PO&VILL.), BARGUR (TK), KRISHNAGIRI (DT), PIN:635203.   ', 912691402893, 'ABVPU8401B', '', 'O+', '0000-00-00', 'ASSISTANT PROFESSOR', 0, 'ENG', '52635-uttham.jpg', '65164-aadhar-uk.pdf', '2893', NULL, NULL, NULL, NULL),
('S70ENG004', 'ANBUMANI', '0000-00-00', 30, 'male', 'anbumanimabed@gmail.com', 9047929119, 'MARUTHU', 'AMUTHA', 'y', '', 'HINDU', 'BC', 'SOKKAPADAPPU', 'SOKKAPADAPPU', 'SIVAGANGA', 'Tamil Nadu', 'India', '630713', '	S/O MARUTHU, 2/20, SOKKAPADAPPU,SURANAM (PO), SIVAGANGA(DT).   ', '	S/O MARUTHU, 2/20, SOKKAPADAPPU,SURANAM (PO), SIVAGANGA(DT).   ', 716821114826, 'BOEPA4774G', '', 'O+', '0000-00-00', 'ASSISTANT PROFESSOR', 7811976462, 'ENG', '16383-anbumani.jpg', '81170-anbu-aadhaar.pdf', '4826', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eng_fac_attorg`
--

CREATE TABLE `eng_fac_attorg` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `attcategory1` varchar(20) DEFAULT NULL,
  `atttitle1` varchar(50) DEFAULT NULL,
  `attdays1` int(3) DEFAULT NULL,
  `attfrom1` date NOT NULL,
  `attto1` date NOT NULL,
  `attdate1` date NOT NULL,
  `attorg1` varchar(50) DEFAULT NULL,
  `attplace1` varchar(50) DEFAULT NULL,
  `attlevel1` varchar(20) DEFAULT NULL,
  `attcer1` varchar(100) DEFAULT NULL,
  `attkey` int(1) DEFAULT NULL,
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
-- Table structure for table `eng_fac_bkjrn`
--

CREATE TABLE `eng_fac_bkjrn` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `bk1` varchar(20) DEFAULT NULL,
  `bkcha1` varchar(50) DEFAULT NULL,
  `bkissn1` varchar(20) DEFAULT NULL,
  `bkmy1` varchar(7) DEFAULT NULL,
  `bkpub1` varchar(50) DEFAULT NULL,
  `bktype1` varchar(50) DEFAULT NULL,
  `bkkey` int(1) DEFAULT NULL,
  `jrntitle1` varchar(100) DEFAULT NULL,
  `jrnname1` varchar(50) DEFAULT NULL,
  `jrnvol1` varchar(20) DEFAULT NULL,
  `jrnissue1` varchar(20) DEFAULT NULL,
  `jrnissn1` varchar(20) DEFAULT NULL,
  `jrncategory1` varchar(20) DEFAULT NULL,
  `jrnlink1` varchar(100) DEFAULT NULL,
  `jrncit1` varchar(30) DEFAULT NULL,
  `jrnpdf1` varchar(100) DEFAULT NULL,
  `jrnimpact1` int(10) DEFAULT NULL,
  `jrnkey` int(1) DEFAULT NULL,
  `gl` varchar(50) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eng_fac_edu`
--

CREATE TABLE `eng_fac_edu` (
  `sid` varchar(30) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `sboard` varchar(10) DEFAULT NULL,
  `syear` int(4) DEFAULT NULL,
  `spercentage` int(4) DEFAULT NULL,
  `scertificate` varchar(100) DEFAULT NULL,
  `skey` int(1) DEFAULT NULL,
  `s2name` varchar(50) DEFAULT NULL,
  `s2board` varchar(10) DEFAULT NULL,
  `s2branch` varchar(50) DEFAULT NULL,
  `s2year` int(4) DEFAULT NULL,
  `s2percentage` int(4) DEFAULT NULL,
  `s2certificate` varchar(100) DEFAULT NULL,
  `s2key` int(1) DEFAULT NULL,
  `dname` varchar(50) DEFAULT NULL,
  `dboard` varchar(10) DEFAULT NULL,
  `ddegree` varchar(50) DEFAULT NULL,
  `dmode` varchar(10) DEFAULT NULL,
  `dyear` int(4) DEFAULT NULL,
  `dpercentage` int(4) DEFAULT NULL,
  `dcertificate` varchar(100) DEFAULT NULL,
  `dkey` int(1) DEFAULT NULL,
  `d1name` varchar(50) DEFAULT NULL,
  `d1board` varchar(10) DEFAULT NULL,
  `d1degree` varchar(50) DEFAULT NULL,
  `d1mode` varchar(10) DEFAULT NULL,
  `d1year` int(4) DEFAULT NULL,
  `d1percentage` int(4) DEFAULT NULL,
  `d1certificate` varchar(100) DEFAULT NULL,
  `d1key` int(1) DEFAULT NULL,
  `d2name` varchar(50) DEFAULT NULL,
  `d2board` varchar(10) DEFAULT NULL,
  `d2degree` varchar(50) DEFAULT NULL,
  `d2mode` varchar(10) DEFAULT NULL,
  `d2year` int(4) DEFAULT NULL,
  `d2percentage` int(4) DEFAULT NULL,
  `d2certificate` varchar(100) DEFAULT NULL,
  `d2key` int(1) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `uuniversity` varchar(50) DEFAULT NULL,
  `udegree` varchar(50) DEFAULT NULL,
  `ubranch` varchar(50) DEFAULT NULL,
  `umode` varchar(10) DEFAULT NULL,
  `uyear` int(4) DEFAULT NULL,
  `upercentage` int(4) DEFAULT NULL,
  `ucertificate` varchar(100) DEFAULT NULL,
  `ukey` int(1) DEFAULT NULL,
  `u1name` varchar(50) DEFAULT NULL,
  `u1university` varchar(50) DEFAULT NULL,
  `u1degree` varchar(50) DEFAULT NULL,
  `u1branch` varchar(50) DEFAULT NULL,
  `u1mode` varchar(10) DEFAULT NULL,
  `u1year` int(4) DEFAULT NULL,
  `u1percentage` int(4) DEFAULT NULL,
  `u1certificate` varchar(100) DEFAULT NULL,
  `u1key` int(1) DEFAULT NULL,
  `u2name` varchar(50) DEFAULT NULL,
  `u2university` varchar(50) DEFAULT NULL,
  `u2degree` varchar(50) DEFAULT NULL,
  `u2branch` varchar(50) DEFAULT NULL,
  `u2mode` varchar(10) DEFAULT NULL,
  `u2year` int(4) DEFAULT NULL,
  `u2percentage` int(4) DEFAULT NULL,
  `u2certificate` varchar(100) DEFAULT NULL,
  `u2key` int(1) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `puniversity` varchar(50) DEFAULT NULL,
  `pdegree` varchar(50) DEFAULT NULL,
  `pbranch` varchar(50) DEFAULT NULL,
  `pmode` varchar(10) DEFAULT NULL,
  `pyear` int(4) DEFAULT NULL,
  `ppercentage` int(4) DEFAULT NULL,
  `pcertificate` varchar(100) DEFAULT NULL,
  `pkey` int(1) DEFAULT NULL,
  `p1name` varchar(50) DEFAULT NULL,
  `p1university` varchar(50) DEFAULT NULL,
  `p1degree` varchar(50) DEFAULT NULL,
  `p1branch` varchar(50) DEFAULT NULL,
  `p1mode` varchar(10) DEFAULT NULL,
  `p1year` int(4) DEFAULT NULL,
  `p1percentage` int(4) DEFAULT NULL,
  `p1certificate` varchar(100) DEFAULT NULL,
  `p1key` int(1) DEFAULT NULL,
  `p2name` varchar(50) DEFAULT NULL,
  `p2university` varchar(50) DEFAULT NULL,
  `p2degree` varchar(50) DEFAULT NULL,
  `p2branch` varchar(50) DEFAULT NULL,
  `p2mode` varchar(10) DEFAULT NULL,
  `p2year` int(4) DEFAULT NULL,
  `p2percentage` int(4) DEFAULT NULL,
  `p2certificate` varchar(100) DEFAULT NULL,
  `p2key` int(1) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `muniversity` varchar(50) DEFAULT NULL,
  `mspec` varchar(50) DEFAULT NULL,
  `mbranch` varchar(50) DEFAULT NULL,
  `mmode` varchar(10) DEFAULT NULL,
  `myear` int(4) DEFAULT NULL,
  `mpercentage` int(4) DEFAULT NULL,
  `mthesis` varchar(50) DEFAULT NULL,
  `mguide` varchar(30) DEFAULT NULL,
  `mcertificate` varchar(100) DEFAULT NULL,
  `mkey` int(1) DEFAULT NULL,
  `phname` varchar(50) DEFAULT NULL,
  `phuniversity` varchar(50) DEFAULT NULL,
  `phspec` varchar(50) DEFAULT NULL,
  `phbranch` varchar(50) DEFAULT NULL,
  `phmode` varchar(10) DEFAULT NULL,
  `phyreg` varchar(7) DEFAULT NULL,
  `phyear` varchar(7) DEFAULT NULL,
  `phthesis` varchar(100) DEFAULT NULL,
  `phguide` varchar(30) DEFAULT NULL,
  `phcertificate` varchar(100) DEFAULT NULL,
  `phkey` int(1) DEFAULT NULL,
  `ph1name` varchar(50) DEFAULT NULL,
  `ph1university` varchar(50) DEFAULT NULL,
  `ph1spec` varchar(50) DEFAULT NULL,
  `ph1branch` varchar(50) DEFAULT NULL,
  `ph1mode` varchar(10) DEFAULT NULL,
  `ph1yreg` varchar(7) DEFAULT NULL,
  `ph1year` varchar(7) DEFAULT NULL,
  `ph1thesis` varchar(100) DEFAULT NULL,
  `ph1guide` varchar(30) DEFAULT NULL,
  `ph1certificate` varchar(100) DEFAULT NULL,
  `ph1key` int(1) DEFAULT NULL,
  `ph2name` varchar(50) DEFAULT NULL,
  `ph2university` varchar(50) DEFAULT NULL,
  `ph2spec` varchar(50) DEFAULT NULL,
  `ph2branch` varchar(50) DEFAULT NULL,
  `ph2mode` varchar(10) DEFAULT NULL,
  `ph2yreg` varchar(7) DEFAULT NULL,
  `ph2year` varchar(7) DEFAULT NULL,
  `ph2thesis` varchar(100) DEFAULT NULL,
  `ph2guide` varchar(30) DEFAULT NULL,
  `ph2certificate` varchar(100) DEFAULT NULL,
  `ph2key` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eng_fac_exp`
--

CREATE TABLE `eng_fac_exp` (
  `sid` varchar(30) NOT NULL,
  `clg1` varchar(50) DEFAULT NULL,
  `clgdesg1` varchar(30) DEFAULT NULL,
  `clgdoj1` date DEFAULT NULL,
  `clgdor1` date DEFAULT NULL,
  `clgreason1` varchar(100) DEFAULT NULL,
  `clgcir1` varchar(100) DEFAULT NULL,
  `clgkey` int(1) DEFAULT NULL,
  `pol1` varchar(50) DEFAULT NULL,
  `poldesg1` varchar(30) DEFAULT NULL,
  `poldoj1` date DEFAULT NULL,
  `poldor1` date DEFAULT NULL,
  `polreason1` varchar(100) DEFAULT NULL,
  `polcir1` varchar(100) DEFAULT NULL,
  `polkey` int(1) DEFAULT NULL,
  `sch1` varchar(50) DEFAULT NULL,
  `schdesg1` varchar(30) DEFAULT NULL,
  `schdoj1` date DEFAULT NULL,
  `schdor1` date DEFAULT NULL,
  `schreason1` varchar(100) DEFAULT NULL,
  `schcir1` varchar(100) DEFAULT NULL,
  `schkey` int(1) DEFAULT NULL,
  `ind1` varchar(50) DEFAULT NULL,
  `inddesg1` varchar(30) DEFAULT NULL,
  `indnature1` varchar(30) DEFAULT NULL,
  `inddoj1` date DEFAULT NULL,
  `inddor1` date DEFAULT NULL,
  `indreason1` varchar(100) DEFAULT NULL,
  `indcir1` varchar(100) DEFAULT NULL,
  `indkey` int(1) DEFAULT NULL,
  `ot1` varchar(50) DEFAULT NULL,
  `otdesg1` varchar(30) DEFAULT NULL,
  `otnature1` varchar(30) DEFAULT NULL,
  `otdoj1` date DEFAULT NULL,
  `otdor1` date DEFAULT NULL,
  `otreason1` varchar(100) DEFAULT NULL,
  `otcir1` varchar(100) DEFAULT NULL,
  `otkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eng_fac_funpat`
--

CREATE TABLE `eng_fac_funpat` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `titleofpro1` varchar(50) DEFAULT NULL,
  `duration1` varchar(30) DEFAULT NULL,
  `amountsan1` varchar(20) DEFAULT NULL,
  `agency1` varchar(20) DEFAULT NULL,
  `startdate1` date DEFAULT NULL,
  `copiname1` varchar(20) DEFAULT NULL,
  `year1` varchar(7) DEFAULT NULL,
  `order1` varchar(200) DEFAULT NULL,
  `uc1` varchar(200) DEFAULT NULL,
  `funkey` int(1) DEFAULT NULL,
  `nameofpat1` varchar(50) DEFAULT NULL,
  `title1` varchar(30) DEFAULT NULL,
  `fileno1` varchar(20) DEFAULT NULL,
  `pat_cer` varchar(200) NOT NULL,
  `patkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eng_fac_glc`
--

CREATE TABLE `eng_fac_glc` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `gltitle1` varchar(50) DEFAULT NULL,
  `gldays1` int(3) DEFAULT NULL,
  `glfrom1` date NOT NULL,
  `glto1` date NOT NULL,
  `gldate1` date NOT NULL,
  `gltopic1` varchar(50) DEFAULT NULL,
  `glorg1` varchar(50) DEFAULT NULL,
  `glplace1` varchar(50) DEFAULT NULL,
  `glpic1` varchar(100) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL,
  `conname1` varchar(30) DEFAULT NULL,
  `contitle1` varchar(50) DEFAULT NULL,
  `conorg1` varchar(50) DEFAULT NULL,
  `condays1` int(3) DEFAULT NULL,
  `confrom1` date NOT NULL,
  `conto1` date NOT NULL,
  `condate1` date NOT NULL,
  `conlevel1` varchar(20) DEFAULT NULL,
  `conpdf1` varchar(100) DEFAULT NULL,
  `concer1` varchar(100) DEFAULT NULL,
  `conkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eng_fac_member`
--

CREATE TABLE `eng_fac_member` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `memberid1` varchar(30) DEFAULT NULL,
  `validity1` varchar(20) DEFAULT NULL,
  `pic1` varchar(100) DEFAULT NULL,
  `memkey` int(1) DEFAULT NULL,
  `res1` varchar(50) DEFAULT NULL,
  `level1` varchar(20) DEFAULT NULL,
  `reskey` int(1) DEFAULT NULL,
  `aname1` varchar(50) DEFAULT NULL,
  `aissue1` varchar(10) DEFAULT NULL,
  `amy1` varchar(7) DEFAULT NULL,
  `acer1` varchar(100) DEFAULT NULL,
  `awakey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eng_fac_ot_qual`
--

CREATE TABLE `eng_fac_ot_qual` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) NOT NULL,
  `name_qual` varchar(50) NOT NULL,
  `year_com` int(10) NOT NULL,
  `cer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eng_fac_resg`
--

CREATE TABLE `eng_fac_resg` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `supid` varchar(20) DEFAULT NULL,
  `numsch` int(2) NOT NULL,
  `reg` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` varchar(10) NOT NULL,
  `cyear` varchar(20) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `tit` varchar(100) NOT NULL,
  `j_sup` varchar(50) DEFAULT NULL
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
-- Table structure for table `mat_fac`
--

CREATE TABLE `mat_fac` (
  `sid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `age` int(4) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob1` bigint(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `mstatus` varchar(5) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `relegion` varchar(30) NOT NULL,
  `comunity` varchar(10) NOT NULL,
  `place` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `aadharno` bigint(12) NOT NULL,
  `panno` varchar(10) NOT NULL,
  `passport` varchar(20) DEFAULT NULL,
  `blood` varchar(5) NOT NULL,
  `doj` date NOT NULL,
  `designation` varchar(50) NOT NULL,
  `mob2` bigint(10) DEFAULT NULL,
  `dept` varchar(50) NOT NULL,
  `uploadpic` varchar(100) NOT NULL,
  `aadharpic` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `dor` date DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `app_order` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mat_fac_attorg`
--

CREATE TABLE `mat_fac_attorg` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `attcategory1` varchar(20) DEFAULT NULL,
  `atttitle1` varchar(50) DEFAULT NULL,
  `attdays1` int(3) DEFAULT NULL,
  `attfrom1` date NOT NULL,
  `attto1` date NOT NULL,
  `attdate1` date NOT NULL,
  `attorg1` varchar(50) DEFAULT NULL,
  `attplace1` varchar(50) DEFAULT NULL,
  `attlevel1` varchar(20) DEFAULT NULL,
  `attcer1` varchar(100) DEFAULT NULL,
  `attkey` int(1) DEFAULT NULL,
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
-- Table structure for table `mat_fac_bkjrn`
--

CREATE TABLE `mat_fac_bkjrn` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `bk1` varchar(20) DEFAULT NULL,
  `bkcha1` varchar(50) DEFAULT NULL,
  `bkissn1` varchar(20) DEFAULT NULL,
  `bkmy1` varchar(7) DEFAULT NULL,
  `bkpub1` varchar(50) DEFAULT NULL,
  `bktype1` varchar(50) DEFAULT NULL,
  `bkkey` int(1) DEFAULT NULL,
  `jrntitle1` varchar(100) DEFAULT NULL,
  `jrnname1` varchar(50) DEFAULT NULL,
  `jrnvol1` varchar(20) DEFAULT NULL,
  `jrnissue1` varchar(20) DEFAULT NULL,
  `jrnissn1` varchar(20) DEFAULT NULL,
  `jrncategory1` varchar(20) DEFAULT NULL,
  `jrnlink1` varchar(100) DEFAULT NULL,
  `jrncit1` varchar(30) DEFAULT NULL,
  `jrnpdf1` varchar(100) DEFAULT NULL,
  `jrnimpact1` int(10) DEFAULT NULL,
  `jrnkey` int(1) DEFAULT NULL,
  `gl` varchar(50) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mat_fac_edu`
--

CREATE TABLE `mat_fac_edu` (
  `sid` varchar(30) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `sboard` varchar(10) DEFAULT NULL,
  `syear` int(4) DEFAULT NULL,
  `spercentage` int(4) DEFAULT NULL,
  `scertificate` varchar(100) DEFAULT NULL,
  `skey` int(1) DEFAULT NULL,
  `s2name` varchar(50) DEFAULT NULL,
  `s2board` varchar(10) DEFAULT NULL,
  `s2branch` varchar(50) DEFAULT NULL,
  `s2year` int(4) DEFAULT NULL,
  `s2percentage` int(4) DEFAULT NULL,
  `s2certificate` varchar(100) DEFAULT NULL,
  `s2key` int(1) DEFAULT NULL,
  `dname` varchar(50) DEFAULT NULL,
  `dboard` varchar(10) DEFAULT NULL,
  `ddegree` varchar(50) DEFAULT NULL,
  `dmode` varchar(10) DEFAULT NULL,
  `dyear` int(4) DEFAULT NULL,
  `dpercentage` int(4) DEFAULT NULL,
  `dcertificate` varchar(100) DEFAULT NULL,
  `dkey` int(1) DEFAULT NULL,
  `d1name` varchar(50) DEFAULT NULL,
  `d1board` varchar(10) DEFAULT NULL,
  `d1degree` varchar(50) DEFAULT NULL,
  `d1mode` varchar(10) DEFAULT NULL,
  `d1year` int(4) DEFAULT NULL,
  `d1percentage` int(4) DEFAULT NULL,
  `d1certificate` varchar(100) DEFAULT NULL,
  `d1key` int(1) DEFAULT NULL,
  `d2name` varchar(50) DEFAULT NULL,
  `d2board` varchar(10) DEFAULT NULL,
  `d2degree` varchar(50) DEFAULT NULL,
  `d2mode` varchar(10) DEFAULT NULL,
  `d2year` int(4) DEFAULT NULL,
  `d2percentage` int(4) DEFAULT NULL,
  `d2certificate` varchar(100) DEFAULT NULL,
  `d2key` int(1) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `uuniversity` varchar(50) DEFAULT NULL,
  `udegree` varchar(50) DEFAULT NULL,
  `ubranch` varchar(50) DEFAULT NULL,
  `umode` varchar(10) DEFAULT NULL,
  `uyear` int(4) DEFAULT NULL,
  `upercentage` int(4) DEFAULT NULL,
  `ucertificate` varchar(100) DEFAULT NULL,
  `ukey` int(1) DEFAULT NULL,
  `u1name` varchar(50) DEFAULT NULL,
  `u1university` varchar(50) DEFAULT NULL,
  `u1degree` varchar(50) DEFAULT NULL,
  `u1branch` varchar(50) DEFAULT NULL,
  `u1mode` varchar(10) DEFAULT NULL,
  `u1year` int(4) DEFAULT NULL,
  `u1percentage` int(4) DEFAULT NULL,
  `u1certificate` varchar(100) DEFAULT NULL,
  `u1key` int(1) DEFAULT NULL,
  `u2name` varchar(50) DEFAULT NULL,
  `u2university` varchar(50) DEFAULT NULL,
  `u2degree` varchar(50) DEFAULT NULL,
  `u2branch` varchar(50) DEFAULT NULL,
  `u2mode` varchar(10) DEFAULT NULL,
  `u2year` int(4) DEFAULT NULL,
  `u2percentage` int(4) DEFAULT NULL,
  `u2certificate` varchar(100) DEFAULT NULL,
  `u2key` int(1) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `puniversity` varchar(50) DEFAULT NULL,
  `pdegree` varchar(50) DEFAULT NULL,
  `pbranch` varchar(50) DEFAULT NULL,
  `pmode` varchar(10) DEFAULT NULL,
  `pyear` int(4) DEFAULT NULL,
  `ppercentage` int(4) DEFAULT NULL,
  `pcertificate` varchar(100) DEFAULT NULL,
  `pkey` int(1) DEFAULT NULL,
  `p1name` varchar(50) DEFAULT NULL,
  `p1university` varchar(50) DEFAULT NULL,
  `p1degree` varchar(50) DEFAULT NULL,
  `p1branch` varchar(50) DEFAULT NULL,
  `p1mode` varchar(10) DEFAULT NULL,
  `p1year` int(4) DEFAULT NULL,
  `p1percentage` int(4) DEFAULT NULL,
  `p1certificate` varchar(100) DEFAULT NULL,
  `p1key` int(1) DEFAULT NULL,
  `p2name` varchar(50) DEFAULT NULL,
  `p2university` varchar(50) DEFAULT NULL,
  `p2degree` varchar(50) DEFAULT NULL,
  `p2branch` varchar(50) DEFAULT NULL,
  `p2mode` varchar(10) DEFAULT NULL,
  `p2year` int(4) DEFAULT NULL,
  `p2percentage` int(4) DEFAULT NULL,
  `p2certificate` varchar(100) DEFAULT NULL,
  `p2key` int(1) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `muniversity` varchar(50) DEFAULT NULL,
  `mspec` varchar(50) DEFAULT NULL,
  `mbranch` varchar(50) DEFAULT NULL,
  `mmode` varchar(10) DEFAULT NULL,
  `myear` int(4) DEFAULT NULL,
  `mpercentage` int(4) DEFAULT NULL,
  `mthesis` varchar(50) DEFAULT NULL,
  `mguide` varchar(30) DEFAULT NULL,
  `mcertificate` varchar(100) DEFAULT NULL,
  `mkey` int(1) DEFAULT NULL,
  `phname` varchar(50) DEFAULT NULL,
  `phuniversity` varchar(50) DEFAULT NULL,
  `phspec` varchar(50) DEFAULT NULL,
  `phbranch` varchar(50) DEFAULT NULL,
  `phmode` varchar(10) DEFAULT NULL,
  `phyreg` varchar(7) DEFAULT NULL,
  `phyear` varchar(7) DEFAULT NULL,
  `phthesis` varchar(100) DEFAULT NULL,
  `phguide` varchar(30) DEFAULT NULL,
  `phcertificate` varchar(100) DEFAULT NULL,
  `phkey` int(1) DEFAULT NULL,
  `ph1name` varchar(50) DEFAULT NULL,
  `ph1university` varchar(50) DEFAULT NULL,
  `ph1spec` varchar(50) DEFAULT NULL,
  `ph1branch` varchar(50) DEFAULT NULL,
  `ph1mode` varchar(10) DEFAULT NULL,
  `ph1yreg` varchar(7) DEFAULT NULL,
  `ph1year` varchar(7) DEFAULT NULL,
  `ph1thesis` varchar(100) DEFAULT NULL,
  `ph1guide` varchar(30) DEFAULT NULL,
  `ph1certificate` varchar(100) DEFAULT NULL,
  `ph1key` int(1) DEFAULT NULL,
  `ph2name` varchar(50) DEFAULT NULL,
  `ph2university` varchar(50) DEFAULT NULL,
  `ph2spec` varchar(50) DEFAULT NULL,
  `ph2branch` varchar(50) DEFAULT NULL,
  `ph2mode` varchar(10) DEFAULT NULL,
  `ph2yreg` varchar(7) DEFAULT NULL,
  `ph2year` varchar(7) DEFAULT NULL,
  `ph2thesis` varchar(100) DEFAULT NULL,
  `ph2guide` varchar(30) DEFAULT NULL,
  `ph2certificate` varchar(100) DEFAULT NULL,
  `ph2key` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mat_fac_exp`
--

CREATE TABLE `mat_fac_exp` (
  `sid` varchar(30) NOT NULL,
  `clg1` varchar(50) DEFAULT NULL,
  `clgdesg1` varchar(30) DEFAULT NULL,
  `clgdoj1` date DEFAULT NULL,
  `clgdor1` date DEFAULT NULL,
  `clgreason1` varchar(100) DEFAULT NULL,
  `clgcir1` varchar(100) DEFAULT NULL,
  `clgkey` int(1) DEFAULT NULL,
  `pol1` varchar(50) DEFAULT NULL,
  `poldesg1` varchar(30) DEFAULT NULL,
  `poldoj1` date DEFAULT NULL,
  `poldor1` date DEFAULT NULL,
  `polreason1` varchar(100) DEFAULT NULL,
  `polcir1` varchar(100) DEFAULT NULL,
  `polkey` int(1) DEFAULT NULL,
  `sch1` varchar(50) DEFAULT NULL,
  `schdesg1` varchar(30) DEFAULT NULL,
  `schdoj1` date DEFAULT NULL,
  `schdor1` date DEFAULT NULL,
  `schreason1` varchar(100) DEFAULT NULL,
  `schcir1` varchar(100) DEFAULT NULL,
  `schkey` int(1) DEFAULT NULL,
  `ind1` varchar(50) DEFAULT NULL,
  `inddesg1` varchar(30) DEFAULT NULL,
  `indnature1` varchar(30) DEFAULT NULL,
  `inddoj1` date DEFAULT NULL,
  `inddor1` date DEFAULT NULL,
  `indreason1` varchar(100) DEFAULT NULL,
  `indcir1` varchar(100) DEFAULT NULL,
  `indkey` int(1) DEFAULT NULL,
  `ot1` varchar(50) DEFAULT NULL,
  `otdesg1` varchar(30) DEFAULT NULL,
  `otnature1` varchar(30) DEFAULT NULL,
  `otdoj1` date DEFAULT NULL,
  `otdor1` date DEFAULT NULL,
  `otreason1` varchar(100) DEFAULT NULL,
  `otcir1` varchar(100) DEFAULT NULL,
  `otkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mat_fac_funpat`
--

CREATE TABLE `mat_fac_funpat` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `titleofpro1` varchar(50) DEFAULT NULL,
  `duration1` varchar(30) DEFAULT NULL,
  `amountsan1` varchar(20) DEFAULT NULL,
  `agency1` varchar(20) DEFAULT NULL,
  `startdate1` date DEFAULT NULL,
  `copiname1` varchar(20) DEFAULT NULL,
  `year1` varchar(7) DEFAULT NULL,
  `order1` varchar(200) DEFAULT NULL,
  `uc1` varchar(200) DEFAULT NULL,
  `funkey` int(1) DEFAULT NULL,
  `nameofpat1` varchar(50) DEFAULT NULL,
  `title1` varchar(30) DEFAULT NULL,
  `fileno1` varchar(20) DEFAULT NULL,
  `pat_cer` varchar(200) NOT NULL,
  `patkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mat_fac_glc`
--

CREATE TABLE `mat_fac_glc` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `gltitle1` varchar(50) DEFAULT NULL,
  `gldays1` int(3) DEFAULT NULL,
  `glfrom1` date NOT NULL,
  `glto1` date NOT NULL,
  `gldate1` date NOT NULL,
  `gltopic1` varchar(50) DEFAULT NULL,
  `glorg1` varchar(50) DEFAULT NULL,
  `glplace1` varchar(50) DEFAULT NULL,
  `glpic1` varchar(100) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL,
  `conname1` varchar(30) DEFAULT NULL,
  `contitle1` varchar(50) DEFAULT NULL,
  `conorg1` varchar(50) DEFAULT NULL,
  `condays1` int(3) DEFAULT NULL,
  `confrom1` date NOT NULL,
  `conto1` date NOT NULL,
  `condate1` date NOT NULL,
  `conlevel1` varchar(20) DEFAULT NULL,
  `conpdf1` varchar(100) DEFAULT NULL,
  `concer1` varchar(100) DEFAULT NULL,
  `conkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mat_fac_member`
--

CREATE TABLE `mat_fac_member` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `memberid1` varchar(30) DEFAULT NULL,
  `validity1` varchar(20) DEFAULT NULL,
  `pic1` varchar(100) DEFAULT NULL,
  `memkey` int(1) DEFAULT NULL,
  `res1` varchar(50) DEFAULT NULL,
  `level1` varchar(20) DEFAULT NULL,
  `reskey` int(1) DEFAULT NULL,
  `aname1` varchar(50) DEFAULT NULL,
  `aissue1` varchar(10) DEFAULT NULL,
  `amy1` varchar(7) DEFAULT NULL,
  `acer1` varchar(100) DEFAULT NULL,
  `awakey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mat_fac_ot_qual`
--

CREATE TABLE `mat_fac_ot_qual` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) NOT NULL,
  `name_qual` varchar(50) NOT NULL,
  `year_com` int(10) NOT NULL,
  `cer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mat_fac_resg`
--

CREATE TABLE `mat_fac_resg` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `supid` varchar(20) DEFAULT NULL,
  `numsch` int(2) NOT NULL,
  `reg` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` varchar(10) NOT NULL,
  `cyear` varchar(20) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `tit` varchar(100) NOT NULL,
  `j_sup` varchar(50) DEFAULT NULL
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
-- Table structure for table `mba_fac`
--

CREATE TABLE `mba_fac` (
  `sid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `age` int(4) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob1` bigint(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `mstatus` varchar(5) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `relegion` varchar(30) NOT NULL,
  `comunity` varchar(10) NOT NULL,
  `place` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `aadharno` bigint(12) NOT NULL,
  `panno` varchar(10) NOT NULL,
  `passport` varchar(20) DEFAULT NULL,
  `blood` varchar(5) NOT NULL,
  `doj` date NOT NULL,
  `designation` varchar(50) NOT NULL,
  `mob2` bigint(10) DEFAULT NULL,
  `dept` varchar(50) NOT NULL,
  `uploadpic` varchar(100) NOT NULL,
  `aadharpic` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `dor` date DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `app_order` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mba_fac`
--

INSERT INTO `mba_fac` (`sid`, `name`, `dob`, `age`, `gender`, `email`, `mob1`, `fname`, `mname`, `mstatus`, `sname`, `relegion`, `comunity`, `place`, `city`, `district`, `state`, `country`, `pincode`, `address`, `paddress`, `aadharno`, `panno`, `passport`, `blood`, `doj`, `designation`, `mob2`, `dept`, `uploadpic`, `aadharpic`, `password`, `status`, `dor`, `reason`, `app_order`) VALUES
('S08MBA009', 'DR. DHANASEKARAN M', '1983-04-10', 36, 'male', 'evergreenwishes@gmail.com', 9842634977, 'Mr.MARIMUTHU M', 'Mrs.RAJAMMAL.M', 'y', '', 'Hindu', 'BC', 'Hosur', 'Krishnagiri', 'Krishnagiri', 'Tamil Nadu', 'India', '635103', '4/333, MADARAHALLI POST, MATHUR\r\nVIA, Bargur TK, Krishnagiri District	   ', '4/333, MADARAHALLI POST, MATHUR\r\nVIA, Bargur TK, Krishnagiri District	   ', 459122244162, 'AUBPM1141P', '', 'A+ve', '2008-07-02', 'Associate Professor', 0, 'MBA', '49669-dr_m_dhanasekharan.jpeg', '92285-eaadhaar_459122244162_10042019091719_400643-unlocked.pdf', '4162', NULL, NULL, NULL, NULL),
('S11MBA008', 'Mr.S.JAGADEESAN', '1985-03-16', 34, 'male', 'jagadeesan.subramani@yahoo.com', 8940507276, 'B.C.SUBRAMANI ', 'S.SUGUNA', 'y', '', 'Hindu', 'MBC', 'Bargur', 'Bargur', 'Krishnagiri', 'Tamil Nadu', 'India', '635104', '9, KS GOVINDHA CHETTY STREET  \r\nJagadevi Road\r\nBargur-635104 ', '9, KS GOVINDHA CHETTY STREET  \r\nJagadevi Road\r\nBargur-635104 ', 638640976307, 'AJGPJ2184D', '', 'B+ve', '2011-07-04', 'Assistant Professor', 8072021091, 'MBA', '47605-mr.jagadeesan.jpeg', '33218-jagadeesan.pdf', '6307', NULL, NULL, NULL, NULL),
('S16MBA003', 'R.NAVEEN PRAKASH', '1988-07-25', 31, 'male', 'naveenprakash.hr@gmail.com', 8056865091, 'GURU RAVI A S', 'HEMALATHA R', 'y', '', 'Hindu', 'BC', 'Krishnagiti', 'Krishnagiri', 'Krishnagiri', 'Tamil Nadu', 'India', '635001', '55/4 Dharmaraja Kovil Street\r\nKrishnagiri-635001	   ', '55/4 Dharmaraja Kovil Street\r\nKrishnagiri-635001	   ', 571684947673, 'ASQPN2465C', '', 'O+ve', '2016-11-08', 'ASSISTANT PROFESSOR', 9566630754, 'MBA', '88941-img063.jpeg', '98001-naveen-aadhar.pdf', '7673', NULL, NULL, NULL, '90533-adhiyamaan-oppointment-letter.pdf'),
('S16MBA007', 'Dr.M.A.SURESH KUMAR', '1981-04-04', 38, 'male', 'sureshkumar4481@gmail.com', 9444433779, 'Mr.S.ASAITHAMBI', 'Mrs.PACHIYAMMAL.A', 'y', '', 'Hindu', 'BC', 'Thoppur', 'Ambur', 'Vellore', 'Tamil Nadu', 'India', '635814', '4/4651 THOPPUR VILLAGE, ALANKUPPAM PO,AMBUR TK-635814	   ', '4/4651 THOPPUR VILLAGE, ALANKUPPAM PO,AMBUR TK-635814	   ', 510491227580, 'DOPPS9073R', '', 'B+ve', '2016-08-17', 'Associate Professor', 0, 'MBA', '23501-suresh.jpeg', '64906-eaadhaar_suresh.pdf', '7580', NULL, NULL, NULL, NULL),
('S18MBA001', 'B.SANJAY', '1994-08-05', 25, 'male', 'sanjaysanjay935@gmail.com', 9894185172, 'M.BOOPATHI', 'B.MALATHI', 'n', '', 'Hindu', 'BC', 'Hosur', 'Hosur', 'Krishnagiri', 'Tamil Nadu', 'India', '635109', 'No.6 Ganapathi Nagar\r\nappavu nagar north,\r\nHosur	   ', 'No.6 Ganapathi Nagar\r\nappavu nagar north,\r\nHosur	   ', 491693090725, 'FWEPS4677A', '', 'B+ve', '2018-01-08', 'Assistant Professor', 0, 'MBA', '27631-sanjay.jpeg', '83896-sanjay.pdf', '0725', NULL, NULL, NULL, NULL),
('S18MBA004', 'SHABANA K M', '1991-02-24', 28, 'female', 'shabanamohamed91@gmail.com', 9597753739, 'A K MOHAMMED IKBAL', 'M SULTHAN BEGAM', 'y', '', 'Muslim', 'BCM', 'Coimbatore', 'Coimbatore', 'Coimbatore', 'Tamil Nadu', 'India', '641025', '2/1112B,5th Cross Rajaji Nagar\r\nMukandapalli Hosur 635126	   ', '4, Shaj Gardens, TVS Nagar, THadagam Road Coimbatore 641025', 887626907302, 'EDJPS0767Q', '', 'o+ve', '2018-08-01', 'Assitant Professor', 9916113263, 'MBA', '55715-shabana.jpeg', '54283-attachment-1.pdf', '7302', NULL, NULL, NULL, NULL),
('S18MBA005', 'Dr.K.R.KUMAR', '1975-06-15', 44, 'male', 'krkquality@gmail.com', 9894766236, 'Mr.RAJAMANI.K', 'Mrs.JAYALAKSMI.K', 'y', '', 'Hindu', 'MBC', 'Vaniyambadi', 'Vaniyambadi', 'Vellore', 'Tamil Nadu', 'India', '635752', '2/17,Kothakottai Village and Post\r\nVaniyambadi TK\r\nVellore Dt	   ', '2/17,Kothakottai Village and Post\r\nVaniyambadi TK\r\nVellore Dt	   ', 696732139607, 'AQOPK7897F', '', 'O+ve', '2018-06-25', 'Associate Professor', 0, 'MBA', '26749-kumar.jpeg', '38127-eaadhaar-kumar.pdf', 'Krk369@', NULL, NULL, NULL, NULL),
('S18MBA006', 'Dr.B.ADHINARAYANAN', '1976-05-25', 43, 'male', 'adhinarayanan76@gmail.com', 9486457822, 'Late A BALAKRISHNAN', 'Mrs.B.NAGAMANI', 'y', '', 'Hindu', 'BC', 'Mathi Marathu Patti', 'Dharmapuri', 'Dharmapuri', 'Tamil Nadu', 'India', '635205', '2/128 Mathi Marathu Patti,\r\nMaravadi Po\r\nDharmapuri Tk & DT	   ', '2/128 Mathi Marathu Patti,\r\nMaravadi Po\r\nDharmapuri Tk & DT	   ', 436726457151, 'BAZPZ8786M', '', 'B+ve', '2018-06-25', 'Associate Professor', 0, 'MBA', '68851-adhinarayanan.jpeg', '34401-img-20181217-wa0010.pdf', '7151', NULL, NULL, NULL, NULL),
('S95MBA010', 'Dr.B.N.SIVAKUMAR ', '1967-06-05', 52, 'male', 'jcbnsivakumar@yahoo.com', 9486279360, 'Late.M.B.NANJUNDAN', 'Late.RUKMANI', 'y', '', 'Hindu', 'BC', 'Hosur', 'OOTY', 'The NILGIRIS', 'Tamil Nadu', 'India', '643001', 'NO.3, NILGIRI HOME, VAISHNAVI NAGAR \r\nHOSUR 635109  ', 'ADHIGARATTY Village and Post\r\nThe NILGIRIS-643001', 795313172155, 'ANDPS1017K', 'K8288101', 'O+ve', '1995-01-17', 'PROFESSOR & HEAD', 0, 'MBA', '90506-dr.b.n.sivakumar.jpeg', '42905-new-doc-2019-04-10-12.08.46_1.pdf', '2155', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mba_fac_attorg`
--

CREATE TABLE `mba_fac_attorg` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `attcategory1` varchar(20) DEFAULT NULL,
  `atttitle1` varchar(50) DEFAULT NULL,
  `attdays1` int(3) DEFAULT NULL,
  `attfrom1` date NOT NULL,
  `attto1` date NOT NULL,
  `attdate1` date NOT NULL,
  `attorg1` varchar(50) DEFAULT NULL,
  `attplace1` varchar(50) DEFAULT NULL,
  `attlevel1` varchar(20) DEFAULT NULL,
  `attcer1` varchar(100) DEFAULT NULL,
  `attkey` int(1) DEFAULT NULL,
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
-- Table structure for table `mba_fac_bkjrn`
--

CREATE TABLE `mba_fac_bkjrn` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `bk1` varchar(20) DEFAULT NULL,
  `bkcha1` varchar(50) DEFAULT NULL,
  `bkissn1` varchar(20) DEFAULT NULL,
  `bkmy1` varchar(7) DEFAULT NULL,
  `bkpub1` varchar(50) DEFAULT NULL,
  `bktype1` varchar(50) DEFAULT NULL,
  `bkkey` int(1) DEFAULT NULL,
  `jrntitle1` varchar(100) DEFAULT NULL,
  `jrnname1` varchar(50) DEFAULT NULL,
  `jrnvol1` varchar(20) DEFAULT NULL,
  `jrnissue1` varchar(20) DEFAULT NULL,
  `jrnissn1` varchar(20) DEFAULT NULL,
  `jrncategory1` varchar(20) DEFAULT NULL,
  `jrnlink1` varchar(100) DEFAULT NULL,
  `jrncit1` varchar(30) DEFAULT NULL,
  `jrnpdf1` varchar(100) DEFAULT NULL,
  `jrnimpact1` int(10) DEFAULT NULL,
  `jrnkey` int(1) DEFAULT NULL,
  `gl` varchar(50) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mba_fac_edu`
--

CREATE TABLE `mba_fac_edu` (
  `sid` varchar(30) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `sboard` varchar(10) DEFAULT NULL,
  `syear` int(4) DEFAULT NULL,
  `spercentage` int(4) DEFAULT NULL,
  `scertificate` varchar(100) DEFAULT NULL,
  `skey` int(1) DEFAULT NULL,
  `s2name` varchar(50) DEFAULT NULL,
  `s2board` varchar(10) DEFAULT NULL,
  `s2branch` varchar(50) DEFAULT NULL,
  `s2year` int(4) DEFAULT NULL,
  `s2percentage` int(4) DEFAULT NULL,
  `s2certificate` varchar(100) DEFAULT NULL,
  `s2key` int(1) DEFAULT NULL,
  `dname` varchar(50) DEFAULT NULL,
  `dboard` varchar(10) DEFAULT NULL,
  `ddegree` varchar(50) DEFAULT NULL,
  `dmode` varchar(10) DEFAULT NULL,
  `dyear` int(4) DEFAULT NULL,
  `dpercentage` int(4) DEFAULT NULL,
  `dcertificate` varchar(100) DEFAULT NULL,
  `dkey` int(1) DEFAULT NULL,
  `d1name` varchar(50) DEFAULT NULL,
  `d1board` varchar(10) DEFAULT NULL,
  `d1degree` varchar(50) DEFAULT NULL,
  `d1mode` varchar(10) DEFAULT NULL,
  `d1year` int(4) DEFAULT NULL,
  `d1percentage` int(4) DEFAULT NULL,
  `d1certificate` varchar(100) DEFAULT NULL,
  `d1key` int(1) DEFAULT NULL,
  `d2name` varchar(50) DEFAULT NULL,
  `d2board` varchar(10) DEFAULT NULL,
  `d2degree` varchar(50) DEFAULT NULL,
  `d2mode` varchar(10) DEFAULT NULL,
  `d2year` int(4) DEFAULT NULL,
  `d2percentage` int(4) DEFAULT NULL,
  `d2certificate` varchar(100) DEFAULT NULL,
  `d2key` int(1) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `uuniversity` varchar(50) DEFAULT NULL,
  `udegree` varchar(50) DEFAULT NULL,
  `ubranch` varchar(50) DEFAULT NULL,
  `umode` varchar(10) DEFAULT NULL,
  `uyear` int(4) DEFAULT NULL,
  `upercentage` int(4) DEFAULT NULL,
  `ucertificate` varchar(100) DEFAULT NULL,
  `ukey` int(1) DEFAULT NULL,
  `u1name` varchar(50) DEFAULT NULL,
  `u1university` varchar(50) DEFAULT NULL,
  `u1degree` varchar(50) DEFAULT NULL,
  `u1branch` varchar(50) DEFAULT NULL,
  `u1mode` varchar(10) DEFAULT NULL,
  `u1year` int(4) DEFAULT NULL,
  `u1percentage` int(4) DEFAULT NULL,
  `u1certificate` varchar(100) DEFAULT NULL,
  `u1key` int(1) DEFAULT NULL,
  `u2name` varchar(50) DEFAULT NULL,
  `u2university` varchar(50) DEFAULT NULL,
  `u2degree` varchar(50) DEFAULT NULL,
  `u2branch` varchar(50) DEFAULT NULL,
  `u2mode` varchar(10) DEFAULT NULL,
  `u2year` int(4) DEFAULT NULL,
  `u2percentage` int(4) DEFAULT NULL,
  `u2certificate` varchar(100) DEFAULT NULL,
  `u2key` int(1) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `puniversity` varchar(50) DEFAULT NULL,
  `pdegree` varchar(50) DEFAULT NULL,
  `pbranch` varchar(50) DEFAULT NULL,
  `pmode` varchar(10) DEFAULT NULL,
  `pyear` int(4) DEFAULT NULL,
  `ppercentage` int(4) DEFAULT NULL,
  `pcertificate` varchar(100) DEFAULT NULL,
  `pkey` int(1) DEFAULT NULL,
  `p1name` varchar(50) DEFAULT NULL,
  `p1university` varchar(50) DEFAULT NULL,
  `p1degree` varchar(50) DEFAULT NULL,
  `p1branch` varchar(50) DEFAULT NULL,
  `p1mode` varchar(10) DEFAULT NULL,
  `p1year` int(4) DEFAULT NULL,
  `p1percentage` int(4) DEFAULT NULL,
  `p1certificate` varchar(100) DEFAULT NULL,
  `p1key` int(1) DEFAULT NULL,
  `p2name` varchar(50) DEFAULT NULL,
  `p2university` varchar(50) DEFAULT NULL,
  `p2degree` varchar(50) DEFAULT NULL,
  `p2branch` varchar(50) DEFAULT NULL,
  `p2mode` varchar(10) DEFAULT NULL,
  `p2year` int(4) DEFAULT NULL,
  `p2percentage` int(4) DEFAULT NULL,
  `p2certificate` varchar(100) DEFAULT NULL,
  `p2key` int(1) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `muniversity` varchar(50) DEFAULT NULL,
  `mspec` varchar(50) DEFAULT NULL,
  `mbranch` varchar(50) DEFAULT NULL,
  `mmode` varchar(10) DEFAULT NULL,
  `myear` int(4) DEFAULT NULL,
  `mpercentage` int(4) DEFAULT NULL,
  `mthesis` varchar(50) DEFAULT NULL,
  `mguide` varchar(30) DEFAULT NULL,
  `mcertificate` varchar(100) DEFAULT NULL,
  `mkey` int(1) DEFAULT NULL,
  `phname` varchar(50) DEFAULT NULL,
  `phuniversity` varchar(50) DEFAULT NULL,
  `phspec` varchar(50) DEFAULT NULL,
  `phbranch` varchar(50) DEFAULT NULL,
  `phmode` varchar(10) DEFAULT NULL,
  `phyreg` varchar(7) DEFAULT NULL,
  `phyear` varchar(7) DEFAULT NULL,
  `phthesis` varchar(100) DEFAULT NULL,
  `phguide` varchar(30) DEFAULT NULL,
  `phcertificate` varchar(100) DEFAULT NULL,
  `phkey` int(1) DEFAULT NULL,
  `ph1name` varchar(50) DEFAULT NULL,
  `ph1university` varchar(50) DEFAULT NULL,
  `ph1spec` varchar(50) DEFAULT NULL,
  `ph1branch` varchar(50) DEFAULT NULL,
  `ph1mode` varchar(10) DEFAULT NULL,
  `ph1yreg` varchar(7) DEFAULT NULL,
  `ph1year` varchar(7) DEFAULT NULL,
  `ph1thesis` varchar(100) DEFAULT NULL,
  `ph1guide` varchar(30) DEFAULT NULL,
  `ph1certificate` varchar(100) DEFAULT NULL,
  `ph1key` int(1) DEFAULT NULL,
  `ph2name` varchar(50) DEFAULT NULL,
  `ph2university` varchar(50) DEFAULT NULL,
  `ph2spec` varchar(50) DEFAULT NULL,
  `ph2branch` varchar(50) DEFAULT NULL,
  `ph2mode` varchar(10) DEFAULT NULL,
  `ph2yreg` varchar(7) DEFAULT NULL,
  `ph2year` varchar(7) DEFAULT NULL,
  `ph2thesis` varchar(100) DEFAULT NULL,
  `ph2guide` varchar(30) DEFAULT NULL,
  `ph2certificate` varchar(100) DEFAULT NULL,
  `ph2key` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mba_fac_edu`
--

INSERT INTO `mba_fac_edu` (`sid`, `sname`, `sboard`, `syear`, `spercentage`, `scertificate`, `skey`, `s2name`, `s2board`, `s2branch`, `s2year`, `s2percentage`, `s2certificate`, `s2key`, `dname`, `dboard`, `ddegree`, `dmode`, `dyear`, `dpercentage`, `dcertificate`, `dkey`, `d1name`, `d1board`, `d1degree`, `d1mode`, `d1year`, `d1percentage`, `d1certificate`, `d1key`, `d2name`, `d2board`, `d2degree`, `d2mode`, `d2year`, `d2percentage`, `d2certificate`, `d2key`, `uname`, `uuniversity`, `udegree`, `ubranch`, `umode`, `uyear`, `upercentage`, `ucertificate`, `ukey`, `u1name`, `u1university`, `u1degree`, `u1branch`, `u1mode`, `u1year`, `u1percentage`, `u1certificate`, `u1key`, `u2name`, `u2university`, `u2degree`, `u2branch`, `u2mode`, `u2year`, `u2percentage`, `u2certificate`, `u2key`, `pname`, `puniversity`, `pdegree`, `pbranch`, `pmode`, `pyear`, `ppercentage`, `pcertificate`, `pkey`, `p1name`, `p1university`, `p1degree`, `p1branch`, `p1mode`, `p1year`, `p1percentage`, `p1certificate`, `p1key`, `p2name`, `p2university`, `p2degree`, `p2branch`, `p2mode`, `p2year`, `p2percentage`, `p2certificate`, `p2key`, `mname`, `muniversity`, `mspec`, `mbranch`, `mmode`, `myear`, `mpercentage`, `mthesis`, `mguide`, `mcertificate`, `mkey`, `phname`, `phuniversity`, `phspec`, `phbranch`, `phmode`, `phyreg`, `phyear`, `phthesis`, `phguide`, `phcertificate`, `phkey`, `ph1name`, `ph1university`, `ph1spec`, `ph1branch`, `ph1mode`, `ph1yreg`, `ph1year`, `ph1thesis`, `ph1guide`, `ph1certificate`, `ph1key`, `ph2name`, `ph2university`, `ph2spec`, `ph2branch`, `ph2mode`, `ph2yreg`, `ph2year`, `ph2thesis`, `ph2guide`, `ph2certificate`, `ph2key`) VALUES
('S16MBA003', 'Vailankanni Matric Higher Secondary School', 'state', 2004, 68, '73619-10.pdf', 1, 'Vailankanni Matric Higher Secondary School', 'state', 'Maths Biology', 2006, 70, '47824-12.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sengunthar Engineering College', 'Anna University', 'BE', 'ECE', 'regular', 2010, 72, '52079-ug-degree.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADHIYAMAAN COLLEGE OF ENGINEERING', 'Anna University', 'MBA', 'HR', 'regular', 2012, 8, '8661-pg-certificate.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Adhiyamaan College of Engineering', 'Anna University', 'HR', 'HR', 'regular', '2017-07', NULL, 'The impact of TQM practice on employee empowerment in the automobile Industry in Krishnagiri Distric', 'Dr. M.DHANSEKARAN', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S18MBA001', 'MAHARISHI VIDHYA MANDIR', 'cbse', 2009, 67, '45652-10-marksheet.pdf', 1, 'MAHARISHI VIDHYA MANDIR', 'state', 'COMPUTER SCIENCE', 2011, 82, '24966-12-marksheet.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADHIYAMAAN COLLEGE OF ENGINEERING', 'ANNA UNIVERSITY', 'B.E', 'MECHANICAL ENGINEERING', 'regular', 2015, 9, '69341-ug.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADHIYAMAAN COLLEGE OF ENGINEERING', 'ANNA UNIVERSITY', 'MBA', 'MBA', 'regular', 2017, 9, '20862-pg.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S18MBA005', 'Government High School  Vellakuttai Vellore Dist', 'state', 1991, 47, '36595-sslc-krk.pdf', 1, 'Concordia Higher Secondary School Vaniyambadi ', 'state', 'Science ', 1993, 64, '29803-hsc-krk.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Annamalai University', 'Annamalai University', 'BA', 'Sociology', 'regular', 1998, 49, '80925-ug-degree.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Priyadarshini Engineering College Vaniyambadi', 'University of Madras', 'MBA', 'MBA', 'regular', 2002, 62, '71277-pg-degree.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Anna University Regional Centre Coimbatore', 'Anna University Chennai', 'Marketing', 'Management Studies', 'parttime', '2010-07', NULL, 'A study on Service Quality Evaluation of Science and Technology Higher Education (STHE) in Deemed Un', 'Dr G Barani Department of Mana', NULL, 1, 'Anna University Regional Centre Coimbatore', 'Anna University Chennai', 'Marketing', 'Management Studies', 'parttime', '2010-07', '2014-09', 'A study on Service Quality Evaluation of Science and Technology Higher Education (STHE) in Deemed Un', 'Dr G Barani Department of Mana', '22599-phd.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mba_fac_exp`
--

CREATE TABLE `mba_fac_exp` (
  `sid` varchar(30) NOT NULL,
  `clg1` varchar(50) DEFAULT NULL,
  `clgdesg1` varchar(30) DEFAULT NULL,
  `clgdoj1` date DEFAULT NULL,
  `clgdor1` date DEFAULT NULL,
  `clgreason1` varchar(100) DEFAULT NULL,
  `clgcir1` varchar(100) DEFAULT NULL,
  `clgkey` int(1) DEFAULT NULL,
  `pol1` varchar(50) DEFAULT NULL,
  `poldesg1` varchar(30) DEFAULT NULL,
  `poldoj1` date DEFAULT NULL,
  `poldor1` date DEFAULT NULL,
  `polreason1` varchar(100) DEFAULT NULL,
  `polcir1` varchar(100) DEFAULT NULL,
  `polkey` int(1) DEFAULT NULL,
  `sch1` varchar(50) DEFAULT NULL,
  `schdesg1` varchar(30) DEFAULT NULL,
  `schdoj1` date DEFAULT NULL,
  `schdor1` date DEFAULT NULL,
  `schreason1` varchar(100) DEFAULT NULL,
  `schcir1` varchar(100) DEFAULT NULL,
  `schkey` int(1) DEFAULT NULL,
  `ind1` varchar(50) DEFAULT NULL,
  `inddesg1` varchar(30) DEFAULT NULL,
  `indnature1` varchar(30) DEFAULT NULL,
  `inddoj1` date DEFAULT NULL,
  `inddor1` date DEFAULT NULL,
  `indreason1` varchar(100) DEFAULT NULL,
  `indcir1` varchar(100) DEFAULT NULL,
  `indkey` int(1) DEFAULT NULL,
  `ot1` varchar(50) DEFAULT NULL,
  `otdesg1` varchar(30) DEFAULT NULL,
  `otnature1` varchar(30) DEFAULT NULL,
  `otdoj1` date DEFAULT NULL,
  `otdor1` date DEFAULT NULL,
  `otreason1` varchar(100) DEFAULT NULL,
  `otcir1` varchar(100) DEFAULT NULL,
  `otkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mba_fac_exp`
--

INSERT INTO `mba_fac_exp` (`sid`, `clg1`, `clgdesg1`, `clgdoj1`, `clgdor1`, `clgreason1`, `clgcir1`, `clgkey`, `pol1`, `poldesg1`, `poldoj1`, `poldor1`, `polreason1`, `polcir1`, `polkey`, `sch1`, `schdesg1`, `schdoj1`, `schdor1`, `schreason1`, `schcir1`, `schkey`, `ind1`, `inddesg1`, `indnature1`, `inddoj1`, `inddor1`, `indreason1`, `indcir1`, `indkey`, `ot1`, `otdesg1`, `otnature1`, `otdoj1`, `otdor1`, `otreason1`, `otcir1`, `otkey`) VALUES
('S16MBA003', 'Jayalakshmi Institute of Technology', 'Assistant Professor', '2013-06-03', '2016-07-30', 'Got Job in Adhiyamaan college', '60289-experiences-naveen.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mba_fac_funpat`
--

CREATE TABLE `mba_fac_funpat` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `titleofpro1` varchar(50) DEFAULT NULL,
  `duration1` varchar(30) DEFAULT NULL,
  `amountsan1` varchar(20) DEFAULT NULL,
  `agency1` varchar(20) DEFAULT NULL,
  `startdate1` date DEFAULT NULL,
  `copiname1` varchar(20) DEFAULT NULL,
  `year1` varchar(7) DEFAULT NULL,
  `order1` varchar(200) DEFAULT NULL,
  `uc1` varchar(200) DEFAULT NULL,
  `funkey` int(1) DEFAULT NULL,
  `nameofpat1` varchar(50) DEFAULT NULL,
  `title1` varchar(30) DEFAULT NULL,
  `fileno1` varchar(20) DEFAULT NULL,
  `pat_cer1` varchar(200) DEFAULT NULL,
  `patkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mba_fac_glc`
--

CREATE TABLE `mba_fac_glc` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `gltitle1` varchar(50) DEFAULT NULL,
  `gldays1` int(3) DEFAULT NULL,
  `glfrom1` date NOT NULL,
  `glto1` date NOT NULL,
  `gldate1` date NOT NULL,
  `gltopic1` varchar(50) DEFAULT NULL,
  `glorg1` varchar(50) DEFAULT NULL,
  `glplace1` varchar(50) DEFAULT NULL,
  `glpic1` varchar(100) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL,
  `conname1` varchar(30) DEFAULT NULL,
  `contitle1` varchar(50) DEFAULT NULL,
  `conorg1` varchar(50) DEFAULT NULL,
  `condays1` int(3) DEFAULT NULL,
  `confrom1` date NOT NULL,
  `conto1` date NOT NULL,
  `condate1` date NOT NULL,
  `conlevel1` varchar(20) DEFAULT NULL,
  `conpdf1` varchar(100) DEFAULT NULL,
  `concer1` varchar(100) DEFAULT NULL,
  `conkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mba_fac_member`
--

CREATE TABLE `mba_fac_member` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `memberid1` varchar(30) DEFAULT NULL,
  `validity1` varchar(20) DEFAULT NULL,
  `pic1` varchar(100) DEFAULT NULL,
  `memkey` int(1) DEFAULT NULL,
  `res1` varchar(50) DEFAULT NULL,
  `level1` varchar(20) DEFAULT NULL,
  `res2` varchar(50) NOT NULL,
  `level2` varchar(20) NOT NULL,
  `res3` varchar(50) NOT NULL,
  `level3` varchar(20) NOT NULL,
  `reskey` int(1) DEFAULT NULL,
  `aname1` varchar(50) DEFAULT NULL,
  `aissue1` varchar(10) DEFAULT NULL,
  `amy1` varchar(7) DEFAULT NULL,
  `acer1` varchar(100) DEFAULT NULL,
  `awakey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mba_fac_member`
--

INSERT INTO `mba_fac_member` (`id`, `sid`, `ayear`, `name1`, `memberid1`, `validity1`, `pic1`, `memkey`, `res1`, `level1`, `res2`, `level2`, `res3`, `level3`, `reskey`, `aname1`, `aissue1`, `amy1`, `acer1`, `awakey`) VALUES
(1, 'S16MBA003', '2016-2017', NULL, NULL, NULL, NULL, NULL, 'Tutor', 'department', 'Placement Incharge', 'department', 'Lab Incharge', 'department', 3, NULL, NULL, NULL, NULL, NULL),
(2, 'S16MBA003', '2017-2018', NULL, NULL, NULL, NULL, NULL, 'Tutor', 'department', 'Placement Incharge', 'department', 'Lab Incharge', 'department', 3, NULL, NULL, NULL, NULL, NULL),
(3, 'S16MBA003', '2018-2019', NULL, NULL, NULL, NULL, NULL, 'Tutor', 'department', 'Placement Incharge', 'department', 'Lab Incharge', 'department', 3, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mba_fac_ot_qual`
--

CREATE TABLE `mba_fac_ot_qual` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `name_qual` varchar(100) DEFAULT NULL,
  `year_com` int(10) DEFAULT NULL,
  `cer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mba_fac_resg`
--

CREATE TABLE `mba_fac_resg` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `supid` varchar(20) DEFAULT NULL,
  `numsch` int(2) NOT NULL,
  `reg` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` varchar(10) NOT NULL,
  `cyear` varchar(20) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `tit` varchar(100) NOT NULL,
  `j_sup` varchar(50) NOT NULL
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
-- Table structure for table `mca_fac`
--

CREATE TABLE `mca_fac` (
  `sid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `age` int(4) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob1` bigint(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `mstatus` varchar(5) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `relegion` varchar(30) NOT NULL,
  `comunity` varchar(10) NOT NULL,
  `place` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `aadharno` bigint(12) NOT NULL,
  `panno` varchar(10) NOT NULL,
  `passport` varchar(20) DEFAULT NULL,
  `blood` varchar(5) NOT NULL,
  `doj` date NOT NULL,
  `designation` varchar(50) NOT NULL,
  `mob2` bigint(10) DEFAULT NULL,
  `dept` varchar(50) NOT NULL,
  `uploadpic` varchar(100) NOT NULL,
  `aadharpic` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `dor` date DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `app_order` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mca_fac`
--

INSERT INTO `mca_fac` (`sid`, `name`, `dob`, `age`, `gender`, `email`, `mob1`, `fname`, `mname`, `mstatus`, `sname`, `relegion`, `comunity`, `place`, `city`, `district`, `state`, `country`, `pincode`, `address`, `paddress`, `aadharno`, `panno`, `passport`, `blood`, `doj`, `designation`, `mob2`, `dept`, `uploadpic`, `aadharpic`, `password`, `status`, `dor`, `reason`, `app_order`) VALUES
('S07MCA003', 'K Raja', '1982-04-09', 37, 'male', 'raja.mca@adhiyamaan.in', 9789132732, 'Kaliappan M', 'Vellathai K', 'y', '', 'Hindu', 'SC', 'Hosur', 'Hosur', 'Krishnagiri', 'Tamil Nadu', 'India', '635109', '1/87, Venkateshwara Housing Colony, Kumudepalli Village,\r\nHosur - 635109', '1/87, Venkateshwara Housing Colony, Kumudepalli Village,\r\nHosur - 635109', 550591564861, 'ANBPR6499N', '', 'O+ve', '2007-06-25', 'Assistant Professor', 0, 'MCA', '68658-raja-kaliappan---photo.jpg', '63170-aadharcard.pdf', '4861', NULL, NULL, NULL, '2675-appointment--letter.pdf'),
('S09MCA001', 'S Thirukumaran', '1975-04-27', 44, 'male', 'thirukumaran75@gmail.com', 9443770805, 'Subramani', 'Rani', 'y', '', 'Hindu', 'Hindu', 'Hosur', 'Hosur', 'Krishnagiri', 'Tamil Nadu', 'India', '635109', '79 K, 8th Cross,\r\nJakkappan Nagar,\r\nKrishnagiri', '79 K, 8th Cross,\r\nJakkappan Nagar,\r\nKrishnagiri', 412406963744, 'AKXPT7344R', '', 'B+', '2009-01-19', 'Associate Professor', 0, 'MCA', '47416-s.thirukumaran.jpg', '10597-thirukumaran.pdf', '3744', NULL, NULL, NULL, '38257-tirukumaran.pdf'),
('S18MCA004', 'K Satheesh', '1987-06-30', 32, 'male', 'satheesh87mca@gmail.com', 8973950602, 'Koothan M', 'Ranjitham K', 'y', '', 'Hindu', 'MBC', 'Salem', 'Salem', 'Salem', 'Tamil Nadu', 'India', '636104', '5/98, Pallathathanoor,\r\nChandrapillaivalasu post,\r\nValappady Tk,\r\nSalem Dt.   ', '5/98, Pallathathanoor,\r\nChandrapillaivalasu post,\r\nValappady Tk,\r\nSalem Dt.   ', 666458489020, 'FYJPK4337L', '', 'B+ve', '2018-06-18', 'Assistant Professor', 0, 'MCA', '20298-satheeshphoto1.jpg', '57209-satheeshaadharpdf.pdf', '9020', NULL, NULL, NULL, '26289-new-doc-2019-02-26-07.33.02');

-- --------------------------------------------------------

--
-- Table structure for table `mca_fac_attorg`
--

CREATE TABLE `mca_fac_attorg` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `attcategory1` varchar(20) DEFAULT NULL,
  `atttitle1` varchar(50) DEFAULT NULL,
  `attdays1` int(3) DEFAULT NULL,
  `attfrom1` date NOT NULL,
  `attto1` date NOT NULL,
  `attdate1` date NOT NULL,
  `attorg1` varchar(50) DEFAULT NULL,
  `attplace1` varchar(50) DEFAULT NULL,
  `attlevel1` varchar(20) DEFAULT NULL,
  `attcer1` varchar(100) DEFAULT NULL,
  `attkey` int(1) DEFAULT NULL,
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
-- Dumping data for table `mca_fac_attorg`
--

INSERT INTO `mca_fac_attorg` (`id`, `sid`, `ayear`, `attcategory1`, `atttitle1`, `attdays1`, `attfrom1`, `attto1`, `attdate1`, `attorg1`, `attplace1`, `attlevel1`, `attcer1`, `attkey`, `orgcategory1`, `orgtitle1`, `orgfun1`, `orgdays1`, `orgfrom1`, `orgto1`, `orgdate1`, `orgres1`, `orgpar1`, `orglevel1`, `orgcer1`, `orgkey`) VALUES
(1, 'S18MCA004', '2014-2015', 'fdp', 'PHP & MySql', 33, '2015-01-08', '2015-01-09', '0000-00-00', 'ICTACT', 'Excel Enginnering College', 'state', '68737-ict-satheesh-001.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(2, 'S18MCA004', '2015-2016', 'fdp', 'Introduction to J2EE Programming', 2, '2015-07-23', '2015-07-24', '0000-00-00', 'ICTACT', 'Narasu\"s Sarathy Institute of Technology', 'state', '40197-ictact-j2ee.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(3, 'S18MCA004', '2014-2015', 'fdp', 'Introduction to Design of Algorithms', 6, '2015-05-25', '2015-05-30', '0000-00-00', 'IIT, Kharagpur', 'Selvam College of Technology, Namakkal', 'national', '13852-sct.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(4, 'S18MCA004', '2015-2016', 'workshop', 'Recent Computing Technologies', 1, '0000-00-00', '0000-00-00', '2016-03-03', 'Paavai College of Engineering', 'Paavai College of Engineering, Namakkal', 'state', '61501-paavai.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(5, 'S07MCA003', '2009-2010', 'seminar', 'Impact of MATLAB Toolkit in Research work', 1, '0000-00-00', '0000-00-00', '2010-04-09', 'CSNET.COM Association, Dept. of Computer Science, ', 'MGR College Hosur', 'national', '37872-mgr.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(6, 'S07MCA003', '2011-2012', 'seminar', 'Bio- Inspired Computing', 2, '2012-03-05', '2012-03-06', '0000-00-00', 'Er. Perumal Manimekalai College of Engineering ', 'Koneripalli', 'national', '75590-pmc.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(7, 'S07MCA003', '2013-2014', 'workshop', 'Research Trends in Information Technology and Appl', 2, '2013-10-04', '2013-10-05', '0000-00-00', 'CSI Student Branch, Adhiyamaan College of Engineer', 'Hosur', 'national', '37514-csi-2013-workshop.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(8, 'S07MCA003', '2014-2015', 'workshop', 'Research Trends in Information Technology and Appl', 2, '2014-12-10', '2014-12-11', '0000-00-00', 'CSI Student Branch, Adhiyamaan College of Engineer', 'Hosur', 'national', '82043-csi-2014-workshop.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(9, 'S07MCA003', '2015-2016', 'workshop', 'Research Trends in Advanced Datamining Techniques', 2, '2015-11-06', '2015-11-07', '0000-00-00', 'CSI Student Branch, Adhiyamaan College of Engineer', 'Hosur', 'national', '3848-csi-2015workshop.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(10, 'S07MCA003', '2011-2012', 'workshop', 'High Impact Teaching Skills', 2, '2011-06-21', '2011-06-22', '0000-00-00', 'Mission 10x, Wipro ', 'Hosur', 'national', '24794-mission10x.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(11, 'S07MCA003', '2014-2015', 'fdp', 'Decision Making Skills', 2, '2015-04-20', '2015-04-21', '0000-00-00', 'ICT Academic of Tamilnadu', 'Adhiyamaan College of Engineering, Hosur', 'national', '75810-ict-decision.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(12, 'S07MCA003', '2015-2016', 'fdp', 'Entrepreneurship Development', 14, '2016-02-01', '2016-02-13', '0000-00-00', 'CSI Student Branch, Adhiyamaan College of Engineer', 'Adhiyamaan College of Engineering, Hosur', 'national', '93041-edc-dst-workshop.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(13, 'S07MCA003', '2008-2009', 'seminar', 'Intellectual Property Rights ', 1, '0000-00-00', '0000-00-00', '2009-03-31', 'Ministry of MSME, Govt. of India, New Delhi', 'Adhiyamaan College of Engineering, Hosur', 'national', '14015-ipc.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mca_fac_bkjrn`
--

CREATE TABLE `mca_fac_bkjrn` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `bk1` varchar(20) DEFAULT NULL,
  `bkcha1` varchar(50) DEFAULT NULL,
  `bkissn1` varchar(20) DEFAULT NULL,
  `bkmy1` varchar(7) DEFAULT NULL,
  `bkpub1` varchar(50) DEFAULT NULL,
  `bktype1` varchar(50) DEFAULT NULL,
  `bkkey` int(1) DEFAULT NULL,
  `jrntitle1` varchar(100) DEFAULT NULL,
  `jrnname1` varchar(50) DEFAULT NULL,
  `jrnvol1` varchar(20) DEFAULT NULL,
  `jrnissue1` varchar(20) DEFAULT NULL,
  `jrnissn1` varchar(20) DEFAULT NULL,
  `jrncategory1` varchar(20) DEFAULT NULL,
  `jrnlink1` varchar(100) DEFAULT NULL,
  `jrncit1` varchar(30) DEFAULT NULL,
  `jrnpdf1` varchar(100) DEFAULT NULL,
  `jrnimpact1` int(10) DEFAULT NULL,
  `jrnkey` int(1) DEFAULT NULL,
  `gl` varchar(50) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mca_fac_bkjrn`
--

INSERT INTO `mca_fac_bkjrn` (`id`, `sid`, `ayear`, `bk1`, `bkcha1`, `bkissn1`, `bkmy1`, `bkpub1`, `bktype1`, `bkkey`, `jrntitle1`, `jrnname1`, `jrnvol1`, `jrnissue1`, `jrnissn1`, `jrncategory1`, `jrnlink1`, `jrncit1`, `jrnpdf1`, `jrnimpact1`, `jrnkey`, `gl`, `glkey`) VALUES
(1, 'S18MCA004', '2015-2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Analysis on Classification Techniques in Mammographic Mass Data Set', 'International Journal of Engineering Research and ', '5', '7', '2248-9622', 'ugc', 'https://www.ijera.com/pages/v5no7(v3).html', '1', '39472-0accefaec6d74f5480fc99e38a273c6a4ae8.pdf', 2, 1, NULL, NULL),
(2, 'S18MCA004', '2015-2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Comparative Analysis of Image Enhancement Algorithms in Mammogram Images', 'International Journal of Innovative Research and C', '1', '1', '2454-5988', 'others', 'http://www.ijirct.org/archive.php?vol=1', '0', '96021-ijirct1201018.pdf', 3, 1, NULL, NULL),
(3, 'S09MCA001', '2015-2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'An Alternate Imputation Technique of A Mean Method For Missing Values and Comparative Study With Nei', 'International Journal of Applied Engineering Resea', '10', '4', '0973-4562 ', 'scopus', 'http://www.ripublication.com', '12', '30640-31791---ijaer-ok-9969-9982.pdf', 0, 1, NULL, NULL),
(4, 'S09MCA001', '2012-2013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Comparative Study of Two Techniques of Missing value Imputation in Medical Database with Accuracy Es', 'European Journal of Scientific research', '97', '3', '1450-202x', 'scopus', 'www.europeanjournalofscientificresearch.com', '5', '81619-ejsr_vol_97_issue_3new.pdf', 0, 1, NULL, NULL),
(5, 'S09MCA001', '2016-2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Enhanced Fuzzy C-Means Clustering with Optimization of Support Vector Regression for Imputation of M', 'Journal of Medical Imaging and Health Informatics', '6', '5', '1612â€“1616', 'sci', 'doi:10.1166/jmihi.2016.1859', '10', '74773-0013_06jmihi07-1859.pdf', 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mca_fac_edu`
--

CREATE TABLE `mca_fac_edu` (
  `sid` varchar(30) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `sboard` varchar(10) DEFAULT NULL,
  `syear` int(4) DEFAULT NULL,
  `spercentage` int(4) DEFAULT NULL,
  `scertificate` varchar(100) DEFAULT NULL,
  `skey` int(1) DEFAULT NULL,
  `s2name` varchar(50) DEFAULT NULL,
  `s2board` varchar(10) DEFAULT NULL,
  `s2branch` varchar(50) DEFAULT NULL,
  `s2year` int(4) DEFAULT NULL,
  `s2percentage` int(4) DEFAULT NULL,
  `s2certificate` varchar(100) DEFAULT NULL,
  `s2key` int(1) DEFAULT NULL,
  `dname` varchar(50) DEFAULT NULL,
  `dboard` varchar(10) DEFAULT NULL,
  `ddegree` varchar(50) DEFAULT NULL,
  `dmode` varchar(10) DEFAULT NULL,
  `dyear` int(4) DEFAULT NULL,
  `dpercentage` int(4) DEFAULT NULL,
  `dcertificate` varchar(100) DEFAULT NULL,
  `dkey` int(1) DEFAULT NULL,
  `d1name` varchar(50) DEFAULT NULL,
  `d1board` varchar(10) DEFAULT NULL,
  `d1degree` varchar(50) DEFAULT NULL,
  `d1mode` varchar(10) DEFAULT NULL,
  `d1year` int(4) DEFAULT NULL,
  `d1percentage` int(4) DEFAULT NULL,
  `d1certificate` varchar(100) DEFAULT NULL,
  `d1key` int(1) DEFAULT NULL,
  `d2name` varchar(50) DEFAULT NULL,
  `d2board` varchar(10) DEFAULT NULL,
  `d2degree` varchar(50) DEFAULT NULL,
  `d2mode` varchar(10) DEFAULT NULL,
  `d2year` int(4) DEFAULT NULL,
  `d2percentage` int(4) DEFAULT NULL,
  `d2certificate` varchar(100) DEFAULT NULL,
  `d2key` int(1) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `uuniversity` varchar(50) DEFAULT NULL,
  `udegree` varchar(50) DEFAULT NULL,
  `ubranch` varchar(50) DEFAULT NULL,
  `umode` varchar(10) DEFAULT NULL,
  `uyear` int(4) DEFAULT NULL,
  `upercentage` int(4) DEFAULT NULL,
  `ucertificate` varchar(100) DEFAULT NULL,
  `ukey` int(1) DEFAULT NULL,
  `u1name` varchar(50) DEFAULT NULL,
  `u1university` varchar(50) DEFAULT NULL,
  `u1degree` varchar(50) DEFAULT NULL,
  `u1branch` varchar(50) DEFAULT NULL,
  `u1mode` varchar(10) DEFAULT NULL,
  `u1year` int(4) DEFAULT NULL,
  `u1percentage` int(4) DEFAULT NULL,
  `u1certificate` varchar(100) DEFAULT NULL,
  `u1key` int(1) DEFAULT NULL,
  `u2name` varchar(50) DEFAULT NULL,
  `u2university` varchar(50) DEFAULT NULL,
  `u2degree` varchar(50) DEFAULT NULL,
  `u2branch` varchar(50) DEFAULT NULL,
  `u2mode` varchar(10) DEFAULT NULL,
  `u2year` int(4) DEFAULT NULL,
  `u2percentage` int(4) DEFAULT NULL,
  `u2certificate` varchar(100) DEFAULT NULL,
  `u2key` int(1) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `puniversity` varchar(50) DEFAULT NULL,
  `pdegree` varchar(50) DEFAULT NULL,
  `pbranch` varchar(50) DEFAULT NULL,
  `pmode` varchar(10) DEFAULT NULL,
  `pyear` int(4) DEFAULT NULL,
  `ppercentage` int(4) DEFAULT NULL,
  `pcertificate` varchar(100) DEFAULT NULL,
  `pkey` int(1) DEFAULT NULL,
  `p1name` varchar(50) DEFAULT NULL,
  `p1university` varchar(50) DEFAULT NULL,
  `p1degree` varchar(50) DEFAULT NULL,
  `p1branch` varchar(50) DEFAULT NULL,
  `p1mode` varchar(10) DEFAULT NULL,
  `p1year` int(4) DEFAULT NULL,
  `p1percentage` int(4) DEFAULT NULL,
  `p1certificate` varchar(100) DEFAULT NULL,
  `p1key` int(1) DEFAULT NULL,
  `p2name` varchar(50) DEFAULT NULL,
  `p2university` varchar(50) DEFAULT NULL,
  `p2degree` varchar(50) DEFAULT NULL,
  `p2branch` varchar(50) DEFAULT NULL,
  `p2mode` varchar(10) DEFAULT NULL,
  `p2year` int(4) DEFAULT NULL,
  `p2percentage` int(4) DEFAULT NULL,
  `p2certificate` varchar(100) DEFAULT NULL,
  `p2key` int(1) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `muniversity` varchar(50) DEFAULT NULL,
  `mspec` varchar(50) DEFAULT NULL,
  `mbranch` varchar(50) DEFAULT NULL,
  `mmode` varchar(10) DEFAULT NULL,
  `myear` int(4) DEFAULT NULL,
  `mpercentage` int(4) DEFAULT NULL,
  `mthesis` varchar(50) DEFAULT NULL,
  `mguide` varchar(30) DEFAULT NULL,
  `mcertificate` varchar(100) DEFAULT NULL,
  `mkey` int(1) DEFAULT NULL,
  `phname` varchar(50) DEFAULT NULL,
  `phuniversity` varchar(50) DEFAULT NULL,
  `phspec` varchar(50) DEFAULT NULL,
  `phbranch` varchar(50) DEFAULT NULL,
  `phmode` varchar(10) DEFAULT NULL,
  `phyreg` varchar(7) DEFAULT NULL,
  `phyear` varchar(7) DEFAULT NULL,
  `phthesis` varchar(100) DEFAULT NULL,
  `phguide` varchar(30) DEFAULT NULL,
  `phcertificate` varchar(100) DEFAULT NULL,
  `phkey` int(1) DEFAULT NULL,
  `ph1name` varchar(50) DEFAULT NULL,
  `ph1university` varchar(50) DEFAULT NULL,
  `ph1spec` varchar(50) DEFAULT NULL,
  `ph1branch` varchar(50) DEFAULT NULL,
  `ph1mode` varchar(10) DEFAULT NULL,
  `ph1yreg` varchar(7) DEFAULT NULL,
  `ph1year` varchar(7) DEFAULT NULL,
  `ph1thesis` varchar(100) DEFAULT NULL,
  `ph1guide` varchar(30) DEFAULT NULL,
  `ph1certificate` varchar(100) DEFAULT NULL,
  `ph1key` int(1) DEFAULT NULL,
  `ph2name` varchar(50) DEFAULT NULL,
  `ph2university` varchar(50) DEFAULT NULL,
  `ph2spec` varchar(50) DEFAULT NULL,
  `ph2branch` varchar(50) DEFAULT NULL,
  `ph2mode` varchar(10) DEFAULT NULL,
  `ph2yreg` varchar(7) DEFAULT NULL,
  `ph2year` varchar(7) DEFAULT NULL,
  `ph2thesis` varchar(100) DEFAULT NULL,
  `ph2guide` varchar(30) DEFAULT NULL,
  `ph2certificate` varchar(100) DEFAULT NULL,
  `ph2key` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mca_fac_edu`
--

INSERT INTO `mca_fac_edu` (`sid`, `sname`, `sboard`, `syear`, `spercentage`, `scertificate`, `skey`, `s2name`, `s2board`, `s2branch`, `s2year`, `s2percentage`, `s2certificate`, `s2key`, `dname`, `dboard`, `ddegree`, `dmode`, `dyear`, `dpercentage`, `dcertificate`, `dkey`, `d1name`, `d1board`, `d1degree`, `d1mode`, `d1year`, `d1percentage`, `d1certificate`, `d1key`, `d2name`, `d2board`, `d2degree`, `d2mode`, `d2year`, `d2percentage`, `d2certificate`, `d2key`, `uname`, `uuniversity`, `udegree`, `ubranch`, `umode`, `uyear`, `upercentage`, `ucertificate`, `ukey`, `u1name`, `u1university`, `u1degree`, `u1branch`, `u1mode`, `u1year`, `u1percentage`, `u1certificate`, `u1key`, `u2name`, `u2university`, `u2degree`, `u2branch`, `u2mode`, `u2year`, `u2percentage`, `u2certificate`, `u2key`, `pname`, `puniversity`, `pdegree`, `pbranch`, `pmode`, `pyear`, `ppercentage`, `pcertificate`, `pkey`, `p1name`, `p1university`, `p1degree`, `p1branch`, `p1mode`, `p1year`, `p1percentage`, `p1certificate`, `p1key`, `p2name`, `p2university`, `p2degree`, `p2branch`, `p2mode`, `p2year`, `p2percentage`, `p2certificate`, `p2key`, `mname`, `muniversity`, `mspec`, `mbranch`, `mmode`, `myear`, `mpercentage`, `mthesis`, `mguide`, `mcertificate`, `mkey`, `phname`, `phuniversity`, `phspec`, `phbranch`, `phmode`, `phyreg`, `phyear`, `phthesis`, `phguide`, `phcertificate`, `phkey`, `ph1name`, `ph1university`, `ph1spec`, `ph1branch`, `ph1mode`, `ph1yreg`, `ph1year`, `ph1thesis`, `ph1guide`, `ph1certificate`, `ph1key`, `ph2name`, `ph2university`, `ph2spec`, `ph2branch`, `ph2mode`, `ph2yreg`, `ph2year`, `ph2thesis`, `ph2guide`, `ph2certificate`, `ph2key`) VALUES
('S07MCA003', 'VNUPK Higher Scondary School, Vanniampatty', 'state', 1997, 59, '47547-10th-marksheet.pdf', 1, 'S S Govt HSS School, Rajapalayam', 'state', 'Mathematics', 1999, 52, '33857-12th-marks.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rajapalayam Rajus College', 'Madurai Kamaraj University', 'B.Sc', 'Physics', 'regular', 2003, 60, '38778-ug-certificate.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute of Environment and Management', 'U.P Technical University, Lucknow', 'Master of Computer Applications', 'Master of Computer Applications', 'regular', 2006, 69, '35932-pg-certificate.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S18MCA004', 'Sri Thiagarajar Memorial Matriculation School, Bel', 'state', 2002, 77, '46030-matriculation_satheesh.pdf', 1, 'Saraswathi Matric Higher Secondary School, Attur', 'state', 'Maths-Biology', 2004, 82, '81242-hsc_satheesh.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Government Arts College, Salem -7', 'Periyar University', 'B.Sc.,', 'Mathematics', 'regular', 2007, 56, '20608-ug_satheesh.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Institute of Road and Transport Technology, Erode', 'Anna University', 'MCA', 'Computer Applications', 'regular', 2010, 7, '27195-mca_satheesh.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Periyar University', 'Periyar University', 'Digital Image Processing', 'Computer Science', 'regular', 2012, 8, 'An Evaluation of Face Segmentation Algorithms', 'Dr. I. Laurence Aroquiaraj, M.', '17637-mphil_satheesh.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mca_fac_exp`
--

CREATE TABLE `mca_fac_exp` (
  `sid` varchar(30) NOT NULL,
  `clg1` varchar(50) DEFAULT NULL,
  `clgdesg1` varchar(30) DEFAULT NULL,
  `clgdoj1` date DEFAULT NULL,
  `clgdor1` date DEFAULT NULL,
  `clgreason1` varchar(100) DEFAULT NULL,
  `clgcir1` varchar(100) DEFAULT NULL,
  `clgkey` int(1) DEFAULT NULL,
  `pol1` varchar(50) DEFAULT NULL,
  `poldesg1` varchar(30) DEFAULT NULL,
  `poldoj1` date DEFAULT NULL,
  `poldor1` date DEFAULT NULL,
  `polreason1` varchar(100) DEFAULT NULL,
  `polcir1` varchar(100) DEFAULT NULL,
  `polkey` int(1) DEFAULT NULL,
  `sch1` varchar(50) DEFAULT NULL,
  `schdesg1` varchar(30) DEFAULT NULL,
  `schdoj1` date DEFAULT NULL,
  `schdor1` date DEFAULT NULL,
  `schreason1` varchar(100) DEFAULT NULL,
  `schcir1` varchar(100) DEFAULT NULL,
  `schkey` int(1) DEFAULT NULL,
  `ind1` varchar(50) DEFAULT NULL,
  `inddesg1` varchar(30) DEFAULT NULL,
  `indnature1` varchar(30) DEFAULT NULL,
  `inddoj1` date DEFAULT NULL,
  `inddor1` date DEFAULT NULL,
  `indreason1` varchar(100) DEFAULT NULL,
  `indcir1` varchar(100) DEFAULT NULL,
  `indkey` int(1) DEFAULT NULL,
  `ot1` varchar(50) DEFAULT NULL,
  `otdesg1` varchar(30) DEFAULT NULL,
  `otnature1` varchar(30) DEFAULT NULL,
  `otdoj1` date DEFAULT NULL,
  `otdor1` date DEFAULT NULL,
  `otreason1` varchar(100) DEFAULT NULL,
  `otcir1` varchar(100) DEFAULT NULL,
  `otkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mca_fac_exp`
--

INSERT INTO `mca_fac_exp` (`sid`, `clg1`, `clgdesg1`, `clgdoj1`, `clgdor1`, `clgreason1`, `clgcir1`, `clgkey`, `pol1`, `poldesg1`, `poldoj1`, `poldor1`, `polreason1`, `polcir1`, `polkey`, `sch1`, `schdesg1`, `schdoj1`, `schdor1`, `schreason1`, `schcir1`, `schkey`, `ind1`, `inddesg1`, `indnature1`, `inddoj1`, `inddor1`, `indreason1`, `indcir1`, `indkey`, `ot1`, `otdesg1`, `otnature1`, `otdoj1`, `otdor1`, `otreason1`, `otcir1`, `otkey`) VALUES
('S18MCA004', 'Selvamm Arts and Science College, Namakkal', 'Assistant Professor', '2013-07-24', '2017-04-18', 'New Job', '71852-new-doc.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mca_fac_funpat`
--

CREATE TABLE `mca_fac_funpat` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `titleofpro1` varchar(50) DEFAULT NULL,
  `duration1` varchar(30) DEFAULT NULL,
  `amountsan1` varchar(20) DEFAULT NULL,
  `agency1` varchar(20) DEFAULT NULL,
  `startdate1` date DEFAULT NULL,
  `copiname1` varchar(20) DEFAULT NULL,
  `year1` varchar(7) DEFAULT NULL,
  `order1` varchar(200) NOT NULL,
  `uc1` varchar(200) NOT NULL,
  `funkey` int(1) DEFAULT NULL,
  `nameofpat1` varchar(50) DEFAULT NULL,
  `title1` varchar(30) DEFAULT NULL,
  `fileno1` varchar(20) DEFAULT NULL,
  `pat_cer` varchar(200) DEFAULT NULL,
  `patkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mca_fac_glc`
--

CREATE TABLE `mca_fac_glc` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `gltitle1` varchar(50) DEFAULT NULL,
  `gldays1` int(3) DEFAULT NULL,
  `glfrom1` date NOT NULL,
  `glto1` date NOT NULL,
  `gldate1` date NOT NULL,
  `gltopic1` varchar(50) DEFAULT NULL,
  `glorg1` varchar(50) DEFAULT NULL,
  `glplace1` varchar(50) DEFAULT NULL,
  `glpic1` varchar(100) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL,
  `conname1` varchar(30) DEFAULT NULL,
  `contitle1` varchar(50) DEFAULT NULL,
  `conorg1` varchar(50) DEFAULT NULL,
  `condays1` int(3) DEFAULT NULL,
  `confrom1` date NOT NULL,
  `conto1` date NOT NULL,
  `condate1` date NOT NULL,
  `conlevel1` varchar(20) DEFAULT NULL,
  `conpdf1` varchar(100) DEFAULT NULL,
  `concer1` varchar(100) DEFAULT NULL,
  `conkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mca_fac_glc`
--

INSERT INTO `mca_fac_glc` (`id`, `sid`, `ayear`, `gltitle1`, `gldays1`, `glfrom1`, `glto1`, `gldate1`, `gltopic1`, `glorg1`, `glplace1`, `glpic1`, `glkey`, `conname1`, `contitle1`, `conorg1`, `condays1`, `confrom1`, `conto1`, `condate1`, `conlevel1`, `conpdf1`, `concer1`, `conkey`) VALUES
(1, 'S18MCA004', '2012-2013', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'Envisiioning Innovation in Tec', 'An Evaluation of Face Segmentation Algorithms', 'Sona College of Technology(Autonomous), Salem', 1, '0000-00-00', '0000-00-00', '2012-08-11', 'national', NULL, '65830-sona-eitech.pdf', 1),
(2, 'S07MCA003', '2007-2008', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'Cyber Crime & Security Managem', 'Network Security - An Overview', 'Kongu Engineering College, Perundurai, Erode', 3, '2007-11-02', '2007-11-04', '0000-00-00', 'national', NULL, '55042-kongu.pdf', 1),
(3, 'S07MCA003', '2007-2008', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'Current Trends in Computer App', 'Portfolio Management', 'Department of Computer Applications, Muthayammal E', 1, '0000-00-00', '0000-00-00', '2008-02-27', 'national', NULL, '66470-muthayamal.pdf', 1),
(4, 'S07MCA003', '2008-2009', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'Information and Computer Appli', 'DNA Cryptography', 'Department of Computer Applications, Sengunthar En', 1, '0000-00-00', '0000-00-00', '2008-08-14', 'national', NULL, '12870-sengunthar.pdf', 1),
(5, 'S07MCA003', '2009-2010', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'Recent Trends in Industrial Au', 'Storage & Retrieval Technologies Using Mobile Care', 'Dept. of EIE & EEE, Maharaja Engineering College ', 1, '0000-00-00', '0000-00-00', '2010-04-10', 'national', NULL, '9749-maharaja.pdf', 1),
(6, 'S07MCA003', '2010-2011', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'Science and Technology ', 'Protection against Hardware Keyboard Hacking Devic', 'Depaertment of CSE, IT & MCA, Dhanalakshmi Sriniva', 1, '0000-00-00', '0000-00-00', '2011-02-26', 'national', NULL, '23548-dhanalakshmi.pdf', 1),
(7, 'S07MCA003', '2012-2013', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'New Advances in Computer and C', 'Optimal Performance for intrusion detection using ', 'Dept. of MCA, MVJ College of Engineering, Bangalor', 1, '0000-00-00', '0000-00-00', '2013-04-19', 'national', NULL, '4771-mvj-college.pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mca_fac_member`
--

CREATE TABLE `mca_fac_member` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `memberid1` varchar(30) DEFAULT NULL,
  `validity1` varchar(20) DEFAULT NULL,
  `pic1` varchar(100) DEFAULT NULL,
  `memkey` int(1) DEFAULT NULL,
  `res1` varchar(50) DEFAULT NULL,
  `level1` varchar(20) DEFAULT NULL,
  `reskey` int(1) DEFAULT NULL,
  `aname1` varchar(50) DEFAULT NULL,
  `aissue1` varchar(10) DEFAULT NULL,
  `amy1` varchar(7) DEFAULT NULL,
  `acer1` varchar(100) DEFAULT NULL,
  `awakey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mca_fac_member`
--

INSERT INTO `mca_fac_member` (`id`, `sid`, `ayear`, `name1`, `memberid1`, `validity1`, `pic1`, `memkey`, `res1`, `level1`, `reskey`, `aname1`, `aissue1`, `amy1`, `acer1`, `awakey`) VALUES
(1, 'S09MCA001', '2009-2010', NULL, NULL, NULL, NULL, NULL, 'Department Alumni Incharge, Staff Profile updation', 'department', 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mca_fac_ot_qual`
--

CREATE TABLE `mca_fac_ot_qual` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) NOT NULL,
  `name_qual` varchar(50) NOT NULL,
  `year_com` int(10) NOT NULL,
  `cer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mca_fac_resg`
--

CREATE TABLE `mca_fac_resg` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `supid` varchar(20) DEFAULT NULL,
  `numsch` int(2) NOT NULL,
  `reg` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` varchar(10) NOT NULL,
  `cyear` varchar(20) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `tit` varchar(100) NOT NULL,
  `j_sup` varchar(50) DEFAULT NULL
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
-- Table structure for table `mec_fac`
--

CREATE TABLE `mec_fac` (
  `sid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `age` int(4) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob1` bigint(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `mstatus` varchar(5) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `relegion` varchar(30) NOT NULL,
  `comunity` varchar(10) NOT NULL,
  `place` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `aadharno` bigint(12) NOT NULL,
  `panno` varchar(10) NOT NULL,
  `passport` varchar(20) DEFAULT NULL,
  `blood` varchar(5) NOT NULL,
  `doj` date NOT NULL,
  `designation` varchar(50) NOT NULL,
  `mob2` bigint(10) DEFAULT NULL,
  `dept` varchar(50) NOT NULL,
  `uploadpic` varchar(100) NOT NULL,
  `aadharpic` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `dor` date DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `app_order` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mec_fac`
--

INSERT INTO `mec_fac` (`sid`, `name`, `dob`, `age`, `gender`, `email`, `mob1`, `fname`, `mname`, `mstatus`, `sname`, `relegion`, `comunity`, `place`, `city`, `district`, `state`, `country`, `pincode`, `address`, `paddress`, `aadharno`, `panno`, `passport`, `blood`, `doj`, `designation`, `mob2`, `dept`, `uploadpic`, `aadharpic`, `password`, `status`, `dor`, `reason`, `app_order`) VALUES
('S04MEC035', 'M JAMES SELVAKUMAR', '1971-01-03', 48, 'male', 'vmanas2004@yahoo.co.in', 9443053120, 'MANAS', 'KANAGAMMAL', 'y', '', 'CHRISTIAN', 'BC', 'HOSUR', 'HOSUR', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635109', 'Plot No 393 Meenakshi Nagar\r\nHosur 635109\r\nKrishnagiri \r\nTamil Nadu', '53 KANAGA VILLA\r\nELAVADI VILLAGE\r\nMULUVI POST\r\nYERCAUD 636602\r\nSALEM DT', 779236498598, 'ALMPM1812D', '-', 'B- ve', '2004-09-18', 'ASSOCIATE PROFESSOR', 0, 'MEC', '67118-james.jpg', '45026-jameaadhar.pdf', '8598', NULL, NULL, NULL, NULL),
('S06MEC037', 'K SENTHIL KUMAR', '1978-06-01', 41, 'male', 'senthilace@gmail.com', 9894333716, 'KANDASAMY V', 'SAMYNAYAKI', 'y', '', 'HINDU', 'MBC', 'HOSUR', 'SALEM', 'SALEM', 'Tamil Nadu', 'India', '635109', 'PLOT NO. 55, VISHNU ANANDHAM GALAXY\r\nCHITHANAPALLI\r\nNALLUR\r\nHOSUR-635109	   ', 'PLOT NO. 55, VISHNU ANANDHAM GALAXY\r\nCHITHANAPALLI\r\nNALLUR\r\nHOSUR-635109	   ', 716414498919, 'BTAPS5170B', '', 'A1B+v', '2006-08-16', 'ASSOCIATE PROFESSOR', 0, 'MEC', '84908-k-senthil-kumar-jpeg-(1).jpeg', '22670-senthil-addhaar.pdf', '8919', NULL, NULL, NULL, NULL),
('S07MEC007', 'SENTHIL KUMAR P', '1983-09-01', 36, 'male', 'sonasen@gmail.com', 9942922235, 'PANNEER SELVAM K', 'NIRMALA P', '', '', 'HINDU', 'BC', 'HOSUR', 'HOSUR', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635 109', '9/3, 11TH CROSS, BHARATHIDASAN NAGAR, HOSUR - 635 109.\r\n	   ', '27/1, CHINNERY VAYAL KADU, CINEMA NAGAR, SALEM - 636 009.	   ', 343006738598, 'CBNPS4821D', '', 'AB+iv', '2007-08-06', 'ASSISTANT PROFESSOR', 0, 'MEC', '76577-my-photo.jpg', '16355-eaadhaar_senthil.pdf', '8598', NULL, NULL, NULL, NULL),
('S07MEC027', 'SHYAAM SUNDHAR. N', '1977-10-20', 42, 'male', 'shyaamsundhar77@gmail.com', 9655635541, 'NATARAJAN. R', 'INBARASI. N', 'y', '', 'HINDU', 'BC', 'HOSUR', 'HOSUR', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635126', 'Plot. No. 29, Venkateswara Nagar, Titan Watches Back side, Hosur - 635 126', 'Plot. No. 29, Venkateswara Nagar, Titan Watches Back side, Hosur - 635 126', 697487461839, 'BJDPS2662D', '', 'A1B+v', '2007-06-14', 'ASSISTANT PROFESSOR', 9751447794, 'MEC', '2877-shiyam.jpg', '94763-shyaam-aadhar-pdf.pdf', '1839', NULL, NULL, NULL, NULL),
('S07MEC034', 'D.MOHANRAJ', '1976-07-20', 43, 'male', 'raj76mohan@gmail.com', 9791237837, 'DURAISAMY', 'JOTHI', 'y', '', 'HINDU', 'OC', 'HOSUR', 'HOSUR', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635109', '3/6, 10TH CROSS, BARATHIDASAN NAGAR, HOSUR-635109	   ', '3/6, 10TH CROSS, BARATHIDASAN NAGAR, HOSUR-635109	   ', 685485280349, 'ASVPM6697G', '', 'O+ve', '2007-07-16', 'ASSISTANT PROFESSOR', 0, 'MEC', '31355-mohanraj-photo.jpeg', '26709-mohanraj-aadhar.pdf', '0349', NULL, NULL, NULL, NULL),
('S08MEC018', 'S.SHYLIN H JOSE', '1978-03-19', 41, 'male', 'shylinhjose.mech@adhiyamaan.in', 9994576500, 'H SELVA JOSE', 'C. ANIBAI', 'y', '', 'CHRISTIAN', 'BC', 'ATTOOR', 'MARTHANDAM', 'KANYAKUMARI', 'Tamil Nadu', 'India', '629177', '	8/46 CHECKITTA VILAI,\r\nATTOOR, THIRUVATTAR PO.   ', '	8/46 CHECKITTA VILAI,\r\nATTOOR, THIRUVATTAR PO.   ', 940524034900, 'AKUPJ7063Q', '', 'A+ve', '2008-07-07', 'ASSISTANT PROFESSOR', 0, 'MEC', '24726-shylin-jose.jpg', '8763-aadhar.pdf', '4900', NULL, NULL, NULL, NULL),
('S08MEC031', 'M.SURESH', '1979-06-07', 40, 'male', 'pmssuresh79@gmail.com', 9486465380, 'P MUNUSAMI', 'SINGARAMMAL.M', 'y', '', 'HINDU', 'sc', 'BOMMIDI', 'DHARAMAPURI', 'DHARMAPURI', 'Tamil Nadu', 'India', '635301', '	   BANDARACHETTIPATTI, THIPPIREDIHALLI(PO), BOMMIDI(SO), DHARAMAOURI(DT),PIN 635301', '	 BANDARACHETTIPATTI, THIPPIREDIHALLI(PO), BOMMIDI(SO), DHARAMAOURI(DT),PIN 635301   ', 618926732457, 'BDGPM3768M', '', 'A -iv', '2008-06-13', 'ASSISTANT PROFESSOR', 0, 'MEC', '24310-suresh.jpg', '6871-adhar-suresh-1.pdf', '2457', NULL, NULL, NULL, NULL),
('S10MEC036', 'RAJA P ', '1979-11-21', 40, 'male', 'leeraja@rediffmail.com', 9585714050, 'PONNURANGAM', 'VIJAYA KUMARI', 'y', '', 'HINDU', 'sc', 'DR MGR NAGAR', 'HOSUR', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635109', '144/4/8, NGGOS COLONY HOSUR- 635109', '144/4/8, NGGOS COLONY HOSUR- 635109', 995062952224, 'AMYPR9787K', '', 'o+', '2010-06-11', 'ASSISTANT PROFESSOR', 0, 'MEC', '2369-picture1.jpeg', '89241-addhar-card-raja.pdf', '2224', NULL, NULL, NULL, NULL),
('S11MEC010', 'A.K.SARAVANAN', '1986-03-10', 33, 'male', 'saravanan.mech@adhiyamaan.in', 9944566182, 'A.B.KUMAR', 'A.K.LALITHA', 'y', '', 'HINDU', 'BC', 'HOSUR', 'HOSUR', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635109', '8/4, 11th CROSS,\r\nBHARATHIDASAN NAGAR,\r\nHOSUR-635109	   ', '8/4, 11th CROSS,\r\nBHARATHIDASAN NAGAR,\r\nHOSUR-635109	   ', 852918961543, 'DCYPS4136N', '', 'A1 +v', '2011-06-08', 'ASSISTANT PROFESSOR', 0, 'MEC', '53808-saravanan-a-k.jpg', '13259-saravanan-aadhaar-card.pdf', '1543', NULL, NULL, NULL, '26705-appointment-ace-converted.pdf'),
('S11MEC017', 'Dr.M.SAKTHIVEL', '1978-06-18', 41, 'male', 'metalsakthi@gmail.com', 9488007445, 'S MUNISAMY ', 'C ANANDTHI', 'y', '', 'HINDU', 'MBC', 'KELAMANGALAM', 'KRISHNAGIRI', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635113', '	 33, PATTALAMMAN KOVIL STREET\r\nKELAMNAGALAM-POST  ', '	 33, PATTALAMMAN KOVIL STREET\r\nKELAMNAGALAM-POST  ', 238279523415, 'BUOPS8650R', '', 'A+', '2011-06-08', 'ASSOCIATE PROFESSOR', 0, 'MEC', '68006-sakthivel1.jpg', '36233-1_aadhar-card.pdf', '3415', NULL, NULL, NULL, NULL),
('S12MEC006', 'M.PARTHIBAN', '1985-06-16', 34, 'male', 'parthi85.auto@gmail.com', 9597627206, 'R MURUGAN', 'K PALANIAMMAL', 'n', '', 'HINDU', 'MBC', 'HARUR', 'HARUR', 'DHARMAPURI', 'Tamil Nadu', 'India', '636903', '7/205-17,GOVINDHASAMI NAGAR,HARUR	   ', '7/205-17,GOVINDHASAMI NAGAR,HARUR	   ', 6655, 'CEWPP1385M', '', 'A1 -i', '2012-07-13', 'ASSISTANT PROFESSOR', 0, 'MEC', '58529-partha_1.jpg', '3462-eaadhar-parthiban.pdf', '6 1353', NULL, NULL, NULL, NULL),
('S12MEC023', 'K SATEESH KUMAR REDDY', '1987-10-12', 32, 'male', 'mr.ksk.reddy@gmail.com', 9585794662, 'K SAMI REDDY', 'K JAMUNA', 'y', '', 'HINDU', 'OC', 'CHITTOOR', 'CHITTOOR', 'CHITTOOR', 'Andhra Pradesh', 'India', '517422', '1-74, NADIMPALLI VILLAGE, VEPANAPALLI ROAD,YADAMARI MANDAL,CHITTOOR D.T,PIN 517422	   ', '1-74, NADIMPALLI VILLAGE, VEPANAPALLI ROAD,YADAMARI MANDAL,CHITTOOR D.T,PIN 517422	   ', 420623735791, 'EKGPS6022A', '', 'O+ve', '2012-08-02', 'ASSISTANT PROFESSOR', 9751718892, 'MEC', '2901-photo1.jpg', '49071-adhaar-final.pdf', '5791', NULL, NULL, NULL, NULL),
('S13MEC005', 'HARIPRASAD', '1989-04-13', 30, 'male', 'hari13prasad@gmail.com', 9994106619, 'THIRUVENGADAM R', 'SELVI T', 'y', '', 'HINDU', 'BC', 'HOSUR', 'HOSUR', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635109', 'TNHB, MIG-235, PHASE NO-VI, AVALAPALLI HUDCO, HOSUR', 'TNHB, MIG-235, PHASE NO-VI, AVALAPALLI HUDCO, HOSUR', 680180420973, 'ALYPT2434N', '', 'O+VE', '2013-06-07', 'ASST.PROFESSOR', 0, 'MEC', '82474-hariprasad-t.jpg', '7342-aadhar.pdf', '0973', NULL, NULL, NULL, '67202-appointment-order.pdf'),
('S14MEC011', 'POUNRAJ ', '1990-05-05', 29, 'male', 'pounbala@gmail.com', 9655188839, 'BALAKRISHNAN L', 'MALLIGA B', 'y', '', 'HINDU', 'MBC', 'KRISHNAGIRI', 'KRISHNAGIRI', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635001', '3/344, THURINJIPATTI (VILL), PEDHATHALAPALLI(PO), KRISHNAGIRI(DT)', '3/344, THURINJIPATTI (VILL), PEDHATHALAPALLI(PO), KRISHNAGIRI(DT)', 371222365128, 'CODPP3417D', '', 'B+VE', '2014-06-06', 'ASST.PROFESSOR', 0, 'MEC', '96823-pounraj.jpeg', '5572-aadhar1.pdf', '5128', NULL, NULL, NULL, NULL),
('S14MEC013', 'RICHARD WILSON MARTIN ', '1991-04-17', 28, 'male', 'jrabrothers@gmail.com', 9786950777, 'MARTIN C', 'LEEMA MARY A', 'y', '', 'CHRISTIAN', 'BC', 'KRISHNAGIRI', 'KRISHNAGIRI', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635001', '1/36-8, WAHAB NAGAR, KATTIKANAPALLI, KRISHNAGIRI', '1/36-8, WAHAB NAGAR, KATTIKANAPALLI, KRISHNAGIRI   ', 367121443368, 'BVKPR3049C', '', 'A1B N', '2014-06-06', 'ASST.PROFESSOR', 0, 'MEC', '73866-richi.jpeg.jpg', '1926-richard.pdf', '3368', NULL, NULL, NULL, '69464-appointment-letter.pdf'),
('S14MEC024', 'VINAYAK MUDHOL', '1986-09-07', 32, 'male', 'vinayakmudhol33@gmail.com', 8123606858, 'RAMACHANDRA MUDHOL', 'LAXMIDEVI MUDHOL', 'y', '', 'HINDU', 'OBC', 'HUBLI', 'HUBLI', 'DHARWAD', 'Karnataka', 'India', '580023', 'B1 KRISHNA APPARTMENTS DESAI PARK KUSUGAL ROAD KESHWAPUR HUBLI	   ', 'B1 KRISHNA APPARTMENTS DESAI PARK KUSUGAL ROAD KESHWAPUR HUBLI	   ', 620527868237, 'BLGPM3777A', '', 'A POS', '2014-06-07', 'ASSISTANT PROFESSOR', 7010022698, 'MEC', '7036-953.jpg', '3272-vinayak-pdf.pdf', '8237', NULL, NULL, NULL, '64492-appointment-order-new-doc-2019-04-08-10.18.45_1.pdf'),
('S15MEC003', 'SHANTHANIKETHAN', '1991-08-28', 28, 'male', 'cpshanthanikethan@gmail.com', 8056991592, 'PEDDAPPA NAIDU', 'RAJAMMA M', 'n', '', 'HINDU', 'BC', 'HOSUR', 'HOSUR', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635109', '112-B NANJUNDESWAR NAGAR, RAYAKOTTAI ROAD	   ', '112-B NANJUNDESWAR NAGAR, RAYAKOTTAI ROAD	   ', 591291216994, 'FRVPS4080K', '', 'B+ve', '2015-06-15', 'ASSISTANT PROFESSOR', 0, 'MEC', '42592-pho3jpeg.jpg', '57933-my-aadhar.pdf', '6994', NULL, NULL, NULL, NULL),
('S15MEC014', 'M.N.NAVEEN', '1991-08-18', 28, 'male', 'naveenacemech@gmail.com', 9578185881, 'M.S.NALLASAMY', 'N.RENUGA DEVI', 'n', '', 'HINDU', 'BC', 'KAVINDAPADI', 'ERODE', 'ERODE', 'Tamil Nadu', 'India', '638455', 'D 208 CAUVERY HOSTEL\r\nACE. HOSUR	   ', '14 A MANIYAN KATTUR\r\nSINGANAALUR POST \r\nKAVINDAPADI- 638455\r\nERODE - (DT)	   ', 789954311140, 'AYPPN0849M', '', 'B+ve', '2015-06-08', 'ASSISTANT PROFESSOR', 9489392777, 'MEC', '30979-naveen.jpeg.jpg', '8347-naveen.pdf.pdf', '1140', NULL, NULL, NULL, NULL),
('S15MEC021', 'R.MANIKANDAN ', '1991-04-22', 28, 'male', 'mani.irur@gmail.com', 9159846670, 'N.RAJENDRAN ', 'R.SENTHAMILSELVI', 'n', '', 'HINDU', 'BC', 'IRUR', 'PERAMBALUR', 'PERAMBALUR', 'Tamil Nadu', 'India', '621109', '122 EAST STREET,ALATHUR(TK)\r\nPERAMBALUR (DT)	 \r\nPIN 621109  ', '122 EAST STREET,ALATHUR(TK)\r\nPERAMBALUR (DT)	 \r\nPIN 621109  ', 984261889179, 'BIRPM1494E', '', 'O+', '2015-06-08', 'ASSISTANT PROFESSOR', 8056619619, 'MEC', '52918-manikandan.r.jpg', '43236-mani-aadhar.pdf', '9179', NULL, NULL, NULL, NULL),
('S16MEC012', 'KALEESWARAN ', '1993-05-20', 26, 'male', 'mpkalliz@gmail.com', 8344782289, 'PERUMALSAMY M', 'PANDIYAMMAL P', 'n', '', 'HINDU', 'MBC', 'SALVARPATTI', 'SIVAKASI', 'VIRUDHUNAGAR', 'Tamil Nadu', 'India', '626128', '2/27 B NORTH STREET,\r\nSALVARPATTI (VILL & PO),\r\nSIVAKASI (TK),\r\nVIRUDHUNAGAR', '2/27 B NORTH STREET,\r\nSALVARPATTI (VILL & PO),\r\nSIVAKASI (TK),\r\nVIRUDHUNAGAR', 375601666235, 'DLNPK4730E', '', 'A1+', '2016-06-15', 'ASST.PROFESSOR', 0, 'MEC', '5297-kali0608.jpeg.jpg', '34044-kaleeswaran-aadhar.pdf', '6235', NULL, NULL, NULL, NULL),
('S17MEC001', 'Dr. L. SHAKEEL AHMED', '1989-01-16', 30, 'male', 'shakeelmech@gmail.com', 9976070647, 'LIYAKATH ALI KHAN', 'SHAKIRA BEGUM', 'y', '', 'MUSLIM', 'DEKKANI', 'KAVERIPATTINAM', 'KRISHNAGIRI', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635112', 'HIG 26 TNHB\r\nKAVERIPATTINAM   ', 'HIG 26 TNHB	   ', 740771039312, 'AJBPL4472H', '', 'A Pos', '2017-06-19', 'ASSOCIATE PROFESSOR', 0, 'MEC', '91839-shakeel-ahmed-l.jpg', '27474-shakeel-aadhaar.pdf', '9312', NULL, NULL, NULL, NULL),
('S17MEC004', 'SARATH KUMAR', '1992-12-17', 27, 'male', 'sarathmech123@gmail.com', 9843885785, 'RAJASEKARAN', 'RANI', 'y', '', 'HINDU', 'BC', 'HOSUR', 'HOSUR', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635109', '	185-A, street 39, KCC NAGAR, HOSUR   ', '1/216, VENUGOPAL KOVIL STREET, KALLAVI-635304  ', 207020108942, 'ETYPS1581M', '', 'B+ve', '2017-07-31', 'ASSISTANT PROFESSOR', 0, 'MEC', '36126-ab3311-min.jpg', '15726-aadhar.pdf', '8942', NULL, NULL, NULL, NULL),
('S17MEC015', 'MANU S', '1992-09-28', 26, 'male', 'dearmanu92@gmail.com', 9591653210, 'SOMASHEKAR V', 'PARANJYOTHI S', 'n', '', 'HINDU', 'MBC', 'CHALLAKERE', 'CHALLAKERE', 'CHITRADURGA', 'Karnataka', 'India', '577522', 'MANU S, S/O SOMASHEKAR V	#174/2, 7TH CROSS , GANDHINAGARA, CHALLAKERE(T), CHITRADURGA (D)\r\n577522   ', '	#403, C.V.R RESIDENCY, 1ST MAIN , 3RD CROSS , R.K.TOWNSHIP, YARANDHALLI, BOMMASANDRA, BANGALORE   ', 476166638517, 'BWXPM3121J', '', 'A1 +v', '2017-08-16', 'ASSISTANT PROFESSOR', 9110843092, 'MEC', '97067-20160523_213716-(2).jpeg', '15688-aadhar-card_1.pdf', '8517', NULL, NULL, NULL, '91630-order-copy_1.pdf'),
('S17MEC022', 'KRISHNAKANTH K', '1992-01-01', 27, 'male', 'krishnkanth77@gmail.com', 9715121531, 'KARUPPUSAMY N S', 'MALARVIZHI K', 'n', '', 'HINDU', 'BC', 'KUNNATHUR', 'TIRUPUR', 'TIRUPUR', 'Tamil Nadu', 'India', '638110', '40 NALLIGOUNDENPALAYAM\r\nKURUCHI POST\r\nGETTICHEVYUR VIA', '40 NALLIGOUNDENPALAYAM\r\nKURUCHI POST\r\nGETTICHEVYUR VIA', 572840805096, 'BXYPK3635H', '', 'B- ve', '2017-07-12', 'ASSISTANT PROFESSOR', 0, 'MEC', '47753-krishnakanth.jpg', '93586-krishnakanth.pdf', '5096', NULL, NULL, NULL, NULL),
('S17MEC025', 'RADHA.T', '1994-03-18', 25, 'female', 'radhakumaravel326@gmail.com', 8870132520, 'A. THIRUMAL', 'T. VANI', 'y', '', 'HINDU', 'BC', 'Dr.M.G.R.Nagar', 'HOSUR', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635109', 'Dr.M.G.R.Nagar', 'Dr.M.G.R.Nagar', 268883599727, 'DCFPR3974E', '', 'B Pos', '2017-08-21', 'ASSISTANT PROFESSOR', 0, 'MEC', '5201-photo-(rad).jpeg', '94194-adhar-radha.pdf', '9727', NULL, NULL, NULL, NULL),
('S17MEC029', 'M.YOGESH', '1989-09-19', 30, 'male', 'aadhitya63963@gmail.com', 9786565113, 'K.R.MANI', 'V.JAYALAKSHMI', 'n', '', 'HINDU', 'balajiga', 'chowdadhenahalli', 'malur', 'kolar', 'Karnataka', 'India', '563060', 'chowdadhenahalli,jayamangala post,malur taluk,kolar district	   ', 'chowdadhenahalli,jayamangala post,malur taluk,kolar district	   ', 622673357791, 'CCBPM1652B', '', 'o+', '2017-08-16', 'ASSISTANT PROFESSOR', 9620535495, 'MEC', '88925-dsc_5706.jpg', '41874-pjimage-converted.pdf', '7791', NULL, NULL, NULL, NULL),
('S18MEC016', 'D.VASIGA', '1992-03-25', 27, 'female', 'vasigadurai@gmail.com', 7449154413, 'D.DURAI ARUMUGAM', 'D.AMIRTHAM', 'y', '', 'HINDU', 'BC', 'ANAND NAGAR', 'HOSUR', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635126', '785/1 ANAND NAGAR 2ND PHASE, BEHIND TITAN WATCHES LTD, HOSUR', '785/1 ANAND NAGAR 2ND PHASE, BEHIND TITAN WATCHES LTD, HOSUR	   ', 814557903006, 'CGZPD3149J', '', 'O Pos', '2018-06-18', 'ASSISTANT PROFESSOR', 0, 'MEC', '95494-vasiga.jpg', '83689-vasiga-ahar.pdf', '3006', NULL, NULL, NULL, NULL),
('S18MEC026', 'P.MOHANASELVASURJITH', '1992-04-25', 27, 'male', 'mohanaselvasurjith@gmail.com', 7708455066, 'A.PERUMAL', 'N.AMUTHA', 'n', '', 'HINDU', 'BC', 'VANDAVASI', 'VANDAVASI', 'THIRUVANNAMALAI', 'Tamil Nadu', 'India', '604403', '1126/2 MGRNAGAR,KILKODUNGALORE PO,VANDAVASI TK,THIRUVANNAMALAI DT.PIN-604403', '1126/2 MGRNAGAR,KILKODUNGALORE PO,VANDAVASI TK,THIRUVANNAMALAI DT.PIN-604403', 231470385074, 'BKLPM7521E', '', 'O-VE', '2018-06-18', 'ASSISTANT PROFESSOR', 0, 'MEC', '82783-surjith.jpg', '43673-aadhar-surjith.pdf', '5074', NULL, NULL, NULL, NULL),
('S18MEC028', 'D.THAMODHARAN', '1986-06-08', 33, 'male', 'dharmaraj.thamodharan@gmail.com', 8825956983, 'DHARUMARAJ', 'POONGAVANAM', 'y', '', 'HINDU', 'BC', 'PANAMALAI', 'VILLUPURAM', 'VILLUPURAM', 'Tamil Nadu', 'India', '605201', '2/110, METTU STREET,\r\nPANAMALAI & (P.O),\r\nVILLUPURAM (DISTRICT)\r\n605201 ', '2/110, METTU STREET,\r\nPANAMALAI & (P.O),\r\nVILLUPURAM (DISTRICT)\r\n605201 ', 269755290167, 'BTHPD1157J', '', 'B+ve', '2018-06-18', 'ASSISTANT PROFESSOR', 0, 'MEC', '85509-photo.jpg', '86516-pdf-aadhar.pdf', '0167', NULL, NULL, NULL, NULL),
('S18MEC032', 'ANIN VINCELY D', '1979-06-15', 39, 'male', 'vincely_zeal@yahoo.com', 9445115278, 'DHASAIAN D', 'EPSI BAI M', 'y', '', 'CHRISTIAN', 'BC', 'PORUR', 'CHENNAI', 'THIRUVALLUR', 'Tamil Nadu', 'India', '600 116', 'NO 6/4 B VASAVI NILIYAM, LAKSHMI NARAYANA NAGAR, HOSUR, KRISHNAGIRI DIST- 635 109	   ', 'NO 5/4 THIRUVANGADEM 2 ST, KARAMBAKKAM, PORUR, CHENNAI 600 116	   ', 237412947021, 'ANDPA6817F', 'P 3362213', 'A1 +v', '2018-06-04', 'ASSOCIATE PROFESSOR', 0, 'MEC', '56318-anin-degree-photo-compressed.jpg', '19580-anil1.pdf', '7021', NULL, NULL, NULL, NULL),
('S18MEC034', 'GARIMA ARYA', '1993-02-07', 26, 'female', 'garya1635@gmail.com', 9431584870, 'RAVINDRA KUMAR', 'SUNITA KUMARI', 'n', '', 'HINDU', 'OBC', 'CHAS', 'BOKARO STEEL CITY', 'BOKARO ', 'Jharkhand', 'India', '827013', 'BHAVANI LADIES HOSTEL\r\nADHIYAMAAN COLLEGE OF ENGINEERING\r\nDR MGR NAGAR\r\nHOSUR-635109  ', 'MAHAVIR APARTMENT KUNWAR SINGH COLONY\r\nCHAS\r\nBOKARO STEEL CITY- 827013	   ', 947935629066, 'BACPA2817G', '', 'B+ve', '2018-06-18', 'ASSISTANT PROFESSOR', 0, 'MEC', '65808-1538889945761_001.jpg', '80784-garima.pdf', '9066', NULL, NULL, NULL, NULL),
('S99MEC019', 'Dr.S.V.Suresh Babu', '1973-07-01', 46, 'male', 'svsbabu@gmail.com', 9894213700, 'S.V.Seshadri', 'S. Saraswathamma', 'y', '', 'HINDU', 'OC', 'HOSUR', 'HOSUR', 'KRISHNAGIRI', 'Tamil Nadu', 'India', '635109', 'Flat No.F2, Sadhana Apartments, Bagalur HUDCO,\r\nHOSUR - 635109', 'Flat No.F2, Sadhana Apartments, Bagalur HUDCO,\r\nHOSUR - 635109', 725878677733, 'ARHPS2916D', 'R7287049', 'O Pos', '1999-09-06', 'PROFESSOR', 4344261010, 'MEC', '95406-suresh-babu_photo.jpg', '5178-suresh-babu_aadhar.pdf', '7733', NULL, NULL, NULL, '27023-appointmnet-order.pdf'),
('S99MEC020', 'Dr. K. SRINIVASAN', '1970-07-25', 49, 'male', 'ksrinivasan.cad@gmail.com', 9994214701, 'KANDASAMY K', 'MANIYAMMAL', 'y', '', 'HINDU', 'MBC', 'SALEM', 'SALEM', 'SALEM', 'Tamil Nadu', 'India', '636307', '	4/1152, FOURTH CROSS,\r\nINDIRA NAGAR, DHARMAPURI   ', '	4/1152, FOURTH CROSS,\r\nINDIRA NAGAR, DHARMAPURI   ', 244682598922, 'ANDPS1020J', '', 'A POS', '1999-01-04', 'PROFESSOR', 0, 'MEC', '90513-srini.jpg', '28345-dr.-k.-srinivasan---aadhaar.pdf', '8922', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mec_fac_attorg`
--

CREATE TABLE `mec_fac_attorg` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `attcategory1` varchar(20) DEFAULT NULL,
  `atttitle1` varchar(50) DEFAULT NULL,
  `attdays1` int(3) DEFAULT NULL,
  `attfrom1` date NOT NULL,
  `attto1` date NOT NULL,
  `attdate1` date NOT NULL,
  `attorg1` varchar(50) DEFAULT NULL,
  `attplace1` varchar(50) DEFAULT NULL,
  `attlevel1` varchar(20) DEFAULT NULL,
  `attcer1` varchar(100) DEFAULT NULL,
  `attkey` int(1) DEFAULT NULL,
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
-- Dumping data for table `mec_fac_attorg`
--

INSERT INTO `mec_fac_attorg` (`id`, `sid`, `ayear`, `attcategory1`, `atttitle1`, `attdays1`, `attfrom1`, `attto1`, `attdate1`, `attorg1`, `attplace1`, `attlevel1`, `attcer1`, `attkey`, `orgcategory1`, `orgtitle1`, `orgfun1`, `orgdays1`, `orgfrom1`, `orgto1`, `orgdate1`, `orgres1`, `orgpar1`, `orglevel1`, `orgcer1`, `orgkey`) VALUES
(1, 'S14MEC024', '2015-2016', 'workshop', 'AUTOMOTIVE IC ENGINES AND FUTURE TECHNOLOGIES', 2, '0000-00-00', '0000-00-00', '0000-00-00', 'ADHIYAMAAN COLLEGE OF ENGINEERING', 'HOSUR', 'national', '23517-tech-garrage.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(2, 'S14MEC024', '2017-2018', 'workshop', 'DESIGN AND DOVELOPEMENT OF EXHAUST SYSTEM, EURO AN', 2, '0000-00-00', '0000-00-00', '0000-00-00', 'ADHIYAMAAN COLLEGE OF ENGINEERING', 'HOSUR', 'national', '55900-new-doc-2019-04-08-10.18.45_4.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(3, 'S14MEC013', '2016-2017', 'fdp', 'ME 6504- METROLOGY AND MEASUREMENTS', 7, '2017-05-17', '2017-05-23', '0000-00-00', 'CENTRE FOR FACULTY DEVELOPMENT, ANNA UNIVERSITY, C', 'GOVERNMENT COLLEGE OF ENGINEERING, BARGUR', 'state', '4487-fdp.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(4, 'S14MEC013', '2017-2018', 'workshop', 'MOTORSPORTS ENGINEERING', 1, '0000-00-00', '0000-00-00', '2017-08-07', 'ARA INSTITUTE OF CANTERBURY, NEWZEALAND AND THE FE', 'KUMARAGURU COLLEGE OF TECHNOLOGY, COIMBATORE', 'international', '49950-workshop.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mec_fac_bkjrn`
--

CREATE TABLE `mec_fac_bkjrn` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `bk1` varchar(20) DEFAULT NULL,
  `bkcha1` varchar(50) DEFAULT NULL,
  `bkissn1` varchar(20) DEFAULT NULL,
  `bkmy1` varchar(7) DEFAULT NULL,
  `bkpub1` varchar(50) DEFAULT NULL,
  `bktype1` varchar(50) DEFAULT NULL,
  `bkkey` int(1) DEFAULT NULL,
  `jrntitle1` varchar(100) DEFAULT NULL,
  `jrnname1` varchar(50) DEFAULT NULL,
  `jrnvol1` varchar(20) DEFAULT NULL,
  `jrnissue1` varchar(20) DEFAULT NULL,
  `jrnissn1` varchar(20) DEFAULT NULL,
  `jrncategory1` varchar(20) DEFAULT NULL,
  `jrnlink1` varchar(100) DEFAULT NULL,
  `jrncit1` varchar(30) DEFAULT NULL,
  `jrnpdf1` varchar(100) DEFAULT NULL,
  `jrnimpact1` int(10) DEFAULT NULL,
  `jrnkey` int(1) DEFAULT NULL,
  `gl` varchar(50) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mec_fac_bkjrn`
--

INSERT INTO `mec_fac_bkjrn` (`id`, `sid`, `ayear`, `bk1`, `bkcha1`, `bkissn1`, `bkmy1`, `bkpub1`, `bktype1`, `bkkey`, `jrntitle1`, `jrnname1`, `jrnvol1`, `jrnissue1`, `jrnissn1`, `jrncategory1`, `jrnlink1`, `jrncit1`, `jrnpdf1`, `jrnimpact1`, `jrnkey`, `gl`, `glkey`) VALUES
(1, 'S14MEC013', '2014-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Effect of Temperature and Reinforcement Volume Fraction on Impact Energy of Hybrid Polypropylene Mat', 'International Journal of ChemTech Research', '8', '4', '0974-4290', 'scopus', 'https://www.researchgate.net/publication/282845371_Effect_of_temperature_and_reinforcement_volume_fr', 'NIL', '31557-journal.pdf', 0, 1, NULL, NULL),
(2, 'S13MEC005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://scholar.google.co.in/citations?user=z9_IwL', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mec_fac_edu`
--

CREATE TABLE `mec_fac_edu` (
  `sid` varchar(30) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `sboard` varchar(10) DEFAULT NULL,
  `syear` int(4) DEFAULT NULL,
  `spercentage` int(4) DEFAULT NULL,
  `scertificate` varchar(100) DEFAULT NULL,
  `skey` int(1) DEFAULT NULL,
  `s2name` varchar(50) DEFAULT NULL,
  `s2board` varchar(10) DEFAULT NULL,
  `s2branch` varchar(50) DEFAULT NULL,
  `s2year` int(4) DEFAULT NULL,
  `s2percentage` int(4) DEFAULT NULL,
  `s2certificate` varchar(100) DEFAULT NULL,
  `s2key` int(1) DEFAULT NULL,
  `dname` varchar(50) DEFAULT NULL,
  `dboard` varchar(10) DEFAULT NULL,
  `ddegree` varchar(50) DEFAULT NULL,
  `dmode` varchar(10) DEFAULT NULL,
  `dyear` int(4) DEFAULT NULL,
  `dpercentage` int(4) DEFAULT NULL,
  `dcertificate` varchar(100) DEFAULT NULL,
  `dkey` int(1) DEFAULT NULL,
  `d1name` varchar(50) DEFAULT NULL,
  `d1board` varchar(10) DEFAULT NULL,
  `d1degree` varchar(50) DEFAULT NULL,
  `d1mode` varchar(10) DEFAULT NULL,
  `d1year` int(4) DEFAULT NULL,
  `d1percentage` int(4) DEFAULT NULL,
  `d1certificate` varchar(100) DEFAULT NULL,
  `d1key` int(1) DEFAULT NULL,
  `d2name` varchar(50) DEFAULT NULL,
  `d2board` varchar(10) DEFAULT NULL,
  `d2degree` varchar(50) DEFAULT NULL,
  `d2mode` varchar(10) DEFAULT NULL,
  `d2year` int(4) DEFAULT NULL,
  `d2percentage` int(4) DEFAULT NULL,
  `d2certificate` varchar(100) DEFAULT NULL,
  `d2key` int(1) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `uuniversity` varchar(50) DEFAULT NULL,
  `udegree` varchar(50) DEFAULT NULL,
  `ubranch` varchar(50) DEFAULT NULL,
  `umode` varchar(10) DEFAULT NULL,
  `uyear` int(4) DEFAULT NULL,
  `upercentage` int(4) DEFAULT NULL,
  `ucertificate` varchar(100) DEFAULT NULL,
  `ukey` int(1) DEFAULT NULL,
  `u1name` varchar(50) DEFAULT NULL,
  `u1university` varchar(50) DEFAULT NULL,
  `u1degree` varchar(50) DEFAULT NULL,
  `u1branch` varchar(50) DEFAULT NULL,
  `u1mode` varchar(10) DEFAULT NULL,
  `u1year` int(4) DEFAULT NULL,
  `u1percentage` int(4) DEFAULT NULL,
  `u1certificate` varchar(100) DEFAULT NULL,
  `u1key` int(1) DEFAULT NULL,
  `u2name` varchar(50) DEFAULT NULL,
  `u2university` varchar(50) DEFAULT NULL,
  `u2degree` varchar(50) DEFAULT NULL,
  `u2branch` varchar(50) DEFAULT NULL,
  `u2mode` varchar(10) DEFAULT NULL,
  `u2year` int(4) DEFAULT NULL,
  `u2percentage` int(4) DEFAULT NULL,
  `u2certificate` varchar(100) DEFAULT NULL,
  `u2key` int(1) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `puniversity` varchar(50) DEFAULT NULL,
  `pdegree` varchar(50) DEFAULT NULL,
  `pbranch` varchar(50) DEFAULT NULL,
  `pmode` varchar(10) DEFAULT NULL,
  `pyear` int(4) DEFAULT NULL,
  `ppercentage` int(4) DEFAULT NULL,
  `pcertificate` varchar(100) DEFAULT NULL,
  `pkey` int(1) DEFAULT NULL,
  `p1name` varchar(50) DEFAULT NULL,
  `p1university` varchar(50) DEFAULT NULL,
  `p1degree` varchar(50) DEFAULT NULL,
  `p1branch` varchar(50) DEFAULT NULL,
  `p1mode` varchar(10) DEFAULT NULL,
  `p1year` int(4) DEFAULT NULL,
  `p1percentage` int(4) DEFAULT NULL,
  `p1certificate` varchar(100) DEFAULT NULL,
  `p1key` int(1) DEFAULT NULL,
  `p2name` varchar(50) DEFAULT NULL,
  `p2university` varchar(50) DEFAULT NULL,
  `p2degree` varchar(50) DEFAULT NULL,
  `p2branch` varchar(50) DEFAULT NULL,
  `p2mode` varchar(10) DEFAULT NULL,
  `p2year` int(4) DEFAULT NULL,
  `p2percentage` int(4) DEFAULT NULL,
  `p2certificate` varchar(100) DEFAULT NULL,
  `p2key` int(1) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `muniversity` varchar(50) DEFAULT NULL,
  `mspec` varchar(50) DEFAULT NULL,
  `mbranch` varchar(50) DEFAULT NULL,
  `mmode` varchar(10) DEFAULT NULL,
  `myear` int(4) DEFAULT NULL,
  `mpercentage` int(4) DEFAULT NULL,
  `mthesis` varchar(50) DEFAULT NULL,
  `mguide` varchar(30) DEFAULT NULL,
  `mcertificate` varchar(100) DEFAULT NULL,
  `mkey` int(1) DEFAULT NULL,
  `phname` varchar(50) DEFAULT NULL,
  `phuniversity` varchar(50) DEFAULT NULL,
  `phspec` varchar(50) DEFAULT NULL,
  `phbranch` varchar(50) DEFAULT NULL,
  `phmode` varchar(10) DEFAULT NULL,
  `phyreg` varchar(7) DEFAULT NULL,
  `phyear` varchar(7) DEFAULT NULL,
  `phthesis` varchar(100) DEFAULT NULL,
  `phguide` varchar(30) DEFAULT NULL,
  `phcertificate` varchar(100) DEFAULT NULL,
  `phkey` int(1) DEFAULT NULL,
  `ph1name` varchar(50) DEFAULT NULL,
  `ph1university` varchar(50) DEFAULT NULL,
  `ph1spec` varchar(50) DEFAULT NULL,
  `ph1branch` varchar(50) DEFAULT NULL,
  `ph1mode` varchar(10) DEFAULT NULL,
  `ph1yreg` varchar(7) DEFAULT NULL,
  `ph1year` varchar(7) DEFAULT NULL,
  `ph1thesis` varchar(100) DEFAULT NULL,
  `ph1guide` varchar(30) DEFAULT NULL,
  `ph1certificate` varchar(100) DEFAULT NULL,
  `ph1key` int(1) DEFAULT NULL,
  `ph2name` varchar(50) DEFAULT NULL,
  `ph2university` varchar(50) DEFAULT NULL,
  `ph2spec` varchar(50) DEFAULT NULL,
  `ph2branch` varchar(50) DEFAULT NULL,
  `ph2mode` varchar(10) DEFAULT NULL,
  `ph2yreg` varchar(7) DEFAULT NULL,
  `ph2year` varchar(7) DEFAULT NULL,
  `ph2thesis` varchar(100) DEFAULT NULL,
  `ph2guide` varchar(30) DEFAULT NULL,
  `ph2certificate` varchar(100) DEFAULT NULL,
  `ph2key` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mec_fac_edu`
--

INSERT INTO `mec_fac_edu` (`sid`, `sname`, `sboard`, `syear`, `spercentage`, `scertificate`, `skey`, `s2name`, `s2board`, `s2branch`, `s2year`, `s2percentage`, `s2certificate`, `s2key`, `dname`, `dboard`, `ddegree`, `dmode`, `dyear`, `dpercentage`, `dcertificate`, `dkey`, `d1name`, `d1board`, `d1degree`, `d1mode`, `d1year`, `d1percentage`, `d1certificate`, `d1key`, `d2name`, `d2board`, `d2degree`, `d2mode`, `d2year`, `d2percentage`, `d2certificate`, `d2key`, `uname`, `uuniversity`, `udegree`, `ubranch`, `umode`, `uyear`, `upercentage`, `ucertificate`, `ukey`, `u1name`, `u1university`, `u1degree`, `u1branch`, `u1mode`, `u1year`, `u1percentage`, `u1certificate`, `u1key`, `u2name`, `u2university`, `u2degree`, `u2branch`, `u2mode`, `u2year`, `u2percentage`, `u2certificate`, `u2key`, `pname`, `puniversity`, `pdegree`, `pbranch`, `pmode`, `pyear`, `ppercentage`, `pcertificate`, `pkey`, `p1name`, `p1university`, `p1degree`, `p1branch`, `p1mode`, `p1year`, `p1percentage`, `p1certificate`, `p1key`, `p2name`, `p2university`, `p2degree`, `p2branch`, `p2mode`, `p2year`, `p2percentage`, `p2certificate`, `p2key`, `mname`, `muniversity`, `mspec`, `mbranch`, `mmode`, `myear`, `mpercentage`, `mthesis`, `mguide`, `mcertificate`, `mkey`, `phname`, `phuniversity`, `phspec`, `phbranch`, `phmode`, `phyreg`, `phyear`, `phthesis`, `phguide`, `phcertificate`, `phkey`, `ph1name`, `ph1university`, `ph1spec`, `ph1branch`, `ph1mode`, `ph1yreg`, `ph1year`, `ph1thesis`, `ph1guide`, `ph1certificate`, `ph1key`, `ph2name`, `ph2university`, `ph2spec`, `ph2branch`, `ph2mode`, `ph2yreg`, `ph2year`, `ph2thesis`, `ph2guide`, `ph2certificate`, `ph2key`) VALUES
('S07MEC007', 'THE LITTLE FLOWER HIGHER SECONDARY SCHOOL', 'state', 1999, 81, '98654-10th-marksheet.pdf', 1, 'THE LITTLE FLOWER HIGHER SECONDARY SCHOOL', 'state', 'MATHS, COMPUTER SCIENCE', 2001, 86, '6803-12th-marksheet.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TAMILNADU COLLEGE OF ENGINEERING', 'ANNA UNIVERSITY', 'B.E', 'MECHANICAL ENGINEERING', 'regular', 2005, 74, '70077-ug-degree.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SONA COLLEGE OF TECHNOLOGY', 'ANNA UNIVERSITY', 'M.E', 'ENGINEERING DESIGN', 'regular', 2007, 75, '94883-pg-degree.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S11MEC010', 'ST.ANTONYS HIGHER SECONDARY SCHOOL', 'state', 2001, 90, '50784-sslc.pdf', 1, 'ST.ANTONYS HIGHER SECONDARY SCHOOL', 'state', 'MATHS, PHYSICS, CHEMISTRY, BIOLOGY', 2003, 83, '94652-hsc.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PRIYADARSHINI ENGINEERING COLLEGE', 'ANNA UNIVERSITY CHENNAI', 'B.E.,', 'MECHANICAL ENGINEERING', 'regular', 2007, 75, '42748-b.e.,-degree.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'COLLEGE OF ENGINEERING GUINDY', 'ANNA UNIVERSITY', 'M.E.,', 'MANUFACTURING SYSTEMS AND MANAGEMENT', 'regular', 2010, 8, '87181-m.e.,-degree.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S12MEC023', 'Gnanodaya English Medium High School', 'state', 2003, 62, '49633-ssc-pdf.pdf', 1, 'Sri Varadaraja swamy junior college ', 'state', 'MPC (Board of intermediate Andhra Pradesh)', 2005, 64, '84003-inter-pdf.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sri Venkateshwara college of engineering and techn', 'JNTU Anantapur', 'B.TECH', 'Mechanical Engineering', 'regular', 2009, 58, '43191-ug-degree-pdf.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bannari Amman Institute of Technology', 'Anna university Chennai', 'M.E', 'Engineering Design', 'regular', 2012, 8, '33365-pg-pdf.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Adhiyamaan college of Engineering', 'Anna university chennai', 'material science', 'mechanical Engineering', 'parttime', '2014-06', NULL, 'Superconducting effect of A2 tool steel on machining in wire electrical discharge machine', 'Dr G Ranganath', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S13MEC005', 'GOVT BOYS HIGHER SECONDARY SCHOOL ', 'state', 2004, 52, '28608-10th-marksheet.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Er Perumal Manimekalai Polytechnic College', 'DoTE', 'DME (TOOL&DIE)', 'regular', 2007, 77, '74282-diploma.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Thiruvalluvar College of Engineering and Technolog', 'Anna University ', 'B.E ', 'MECHANICAL ENGINEERING ', 'regular', 2011, 70, '53522-be-degree-certificate.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Adhiyamaan College of Engineering', 'Anna University ', 'M.E', 'COMPUTER AIDED DESIGN ', 'regular', 2013, 9, '71161-me-degree-certificate.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S14MEC013', 'DONBOSCO MATRICULATION HIGHER SECONDARY SCHOOL', 'state', 2006, 89, '62740-10th.pdf', 1, 'DONBOSCO MATRICULATION HIGHER SECONDARY SCHOOL', 'state', 'MATHS- COMPUTER SCIENCE', 2008, 85, '99897-12th.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TAMILNADU COLLEGE OF ENGINEERING', 'ANNA UNIVERSITY CHENNAI', 'BE', 'AUTOMOBILE ENGINEERING', 'regular', 2012, 9, '13762-ug.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADHIYAMAAN COLLEGE OF ENGINEERING', 'ANNA UNIVERSITY CHENNAI', 'ME', 'ENGINEERING DESIGN', 'regular', 2014, 9, '98086-pg.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S14MEC024', 'ST JOHNS ENGLISH MEDIUM SCHOOL', 'state', 2002, 60, '5869-sslc-convert-jpg-to-pdf.net_2019-04-08_06-18-16.pdf', 1, 'NEHRU ARTS SCIENCE AND COMMERCE PUC COLLEGE', 'state', 'SCIENCE', 2004, 42, '69319-puc-convert-jpg-to-pdf.net_2019-04-08_06-21-09.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RURAL ENGINEERING COLLEGE', 'VTU', 'BE', 'AUTOMOBILE', 'regular', 2009, 68, '6990-be-convert-jpg-to-pdf.net_2019-04-08_06-26-09.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SDM COLLEGE OF ENGINEETING AND TECHNOLOGY', 'VTU', 'M.TECH', 'ENGINEERING ANALYSIS AND DESIGN', 'regular', 2013, 70, '98824-mtech-new-doc-2019-02-25-18.21.06_1.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S15MEC003', 'ST MARY MAGDALENE MS HOSUR', 'state', 2007, 86, '37847-10th.pdf', 1, 'SRI VIJAY VID M HSS HOSUR', 'state', 'MATHS, PHYSICS, CHEMISTRY, COMPUTER SCIENCE', 2009, 95, '69458-12th.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A.C.COLLEGE OF ENGINEERING AND TECHNOLOGY, KARAIKU', 'ANNA UNIVERSITY CHENNAI', 'B.E.', 'MECHANICAL ENGINEERING', 'regular', 2013, 8, '28516-be-degree.pdf', 1, 'A.C.COLLEGE OF ENGINEERING AND TECHNOLOGY,KARAIKUD', 'ANNA UNIVERSITY, CHENNAI', 'B.E.', 'MECHANICAL ENGINEERING', 'regular', 2013, 8, '81560-be-degree.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADHIYAMAAN COLLEGE OF ENGINEERING, HOSUR', 'ANNA UNIVERSITY, CHENNAI', 'M.E.', 'ENGINEERING DESIGN', 'regular', 2015, 10, '60509-me-degree.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S17MEC015', 'MAHATMA GANDHI ENGLISH MEDIUM HIGH SCHOOL', 'state', 2008, 84, '94499-sslc.pdf', 1, 'VIDYAVAHINI PU COLLEGE', 'state', 'MATHS, PHYSICS, CHEMISTRY, COMPUTER SCIENCE', 2010, 52, '21890-pu.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'R.L.JALAPPA INSTITUTE OF TECHNOLOGY', 'VISVESVARAYA TECHNOLOGICAL UNIVERSITY, BELGAUM', 'B.E.', 'MECHANICAL ENGINEERING', 'regular', 2014, 64, '9206-be.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADICHUNCHUCHANAGIRI INSTITUTE OF TECHNOLOGY ', 'VISVESVARAYA TECHNOLOGICAL UNIVERSITY, BELAGAVI', 'M.TECH', 'THERMAL POWER ENGINEERING', 'regular', 2016, 76, '88544-m.tech.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S17MEC025', 'BALAMANDIR MATRIC. HIGHER SECONDARY SCHOOL', 'state', 2009, 80, '2052-10th.pdf', 1, 'JEEVA VELU RESIDENTIAL HIGHER SECONDARY SCHOOL', 'state', 'BIO MATHS', 2011, 84, '6268-12th.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SKP ENGINEERING COLLEGE', 'ANNA UNIVERSITY , CHENNAI', 'BE ', 'AERONAUTICAL ENGINEERING', 'regular', 2015, 80, '43113-aero--certificates.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ARUNAI ENGINEERING COLLEGE ', 'ANNA UNIVERSITY, CHENNAI', 'ME', 'THERMAL ENGINEERING', 'regular', 2017, 85, '75676-thermal-engg.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S18MEC026', 'GOVERNMENT HIGHER SECONDARY SCHOOL', 'state', 2007, 74, '38538-10th-mark-sheet.pdf', 1, 'GOVERNMENT HIGHER SECONDARY SCHOOL', 'state', 'MATHS, PHYSICS, CHEMISTRY, BIOLOGY', 2009, 84, '86084-12th-mark-sheet.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UNIVERSITY COLLEGE OF ENGINEERING,ARNI', 'ANNA UNIVERSITY CHENNAI', 'B.E.,', 'MECHANICAL ENGINEERING', 'regular', 2013, 7, '1450-b.e-degree-certificate.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RAJALAKSHMI ENGINEERING COLLEGE', 'ANNA UNIVERSITY', 'M.E.,', 'ENGINEERING DESIGN', 'regular', 2015, 8, '66360-m.e-[degree-certificate].pdf.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S99MEC019', 'A P RESIDENTIAL SCHOOL FOR BOYS', 'state', 1989, 83, '13918-tenth-certificate.pdf', 1, 'GOVERNMENT JUNIOR COLLEGE', 'state', 'MATHEMATICS PHYSICS CHEMISTRY', 1991, 61, '98561-plus-two-certificate.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'G PULLA REDDY ENGINEERING COLLEGE', 'SRI KRISHNADEVARAYA UNIVERSITY', 'BACHELOR OF ENGINEERING', 'MECHANICAL ENGINEERING', 'regular', 1996, 64, '48323-b.e.degree-certificate.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KUMARAGURU COLLEGE OF TECHNOLOGY', 'BHARATHIAR UNIVERSITY', 'MASTER OF ENGINEERING', 'INDUSTRIAL ENGINEERING', 'regular', 1999, 70, '96038-m.e.degree-certificate.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JAWAHARLAL NEHRU TECHNOLOGICAL UNIVERSITY ANANTAPU', 'JAWAHARLAL NEHRU TECHNOLOGICAL UNIVERSITY ANANTAPU', 'RELIABILITY ENGINEERING', 'MECHANICAL ENGINEERING', 'parttime', '2007-09', '2013-07', 'OPTIMIZATION OF REDUNDANCY ALLOCATION FOR SERIES PARALLEL SYSTEMS WITH MULTIPLE CONSTRAINTS AND SENS', 'DR D.MAHESWAR AND DR G.RANGANA', '12344-ph.d-convocation-certificate.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mec_fac_exp`
--

CREATE TABLE `mec_fac_exp` (
  `sid` varchar(30) NOT NULL,
  `clg1` varchar(50) DEFAULT NULL,
  `clgdesg1` varchar(30) DEFAULT NULL,
  `clgdoj1` date DEFAULT NULL,
  `clgdor1` date DEFAULT NULL,
  `clgreason1` varchar(100) DEFAULT NULL,
  `clgcir1` varchar(100) DEFAULT NULL,
  `clgkey` int(1) DEFAULT NULL,
  `pol1` varchar(50) DEFAULT NULL,
  `poldesg1` varchar(30) DEFAULT NULL,
  `poldoj1` date DEFAULT NULL,
  `poldor1` date DEFAULT NULL,
  `polreason1` varchar(100) DEFAULT NULL,
  `polcir1` varchar(100) DEFAULT NULL,
  `polkey` int(1) DEFAULT NULL,
  `sch1` varchar(50) DEFAULT NULL,
  `schdesg1` varchar(30) DEFAULT NULL,
  `schdoj1` date DEFAULT NULL,
  `schdor1` date DEFAULT NULL,
  `schreason1` varchar(100) DEFAULT NULL,
  `schcir1` varchar(100) DEFAULT NULL,
  `schkey` int(1) DEFAULT NULL,
  `ind1` varchar(50) DEFAULT NULL,
  `inddesg1` varchar(30) DEFAULT NULL,
  `indnature1` varchar(30) DEFAULT NULL,
  `inddoj1` date DEFAULT NULL,
  `inddor1` date DEFAULT NULL,
  `indreason1` varchar(100) DEFAULT NULL,
  `indcir1` varchar(100) DEFAULT NULL,
  `indkey` int(1) DEFAULT NULL,
  `ot1` varchar(50) DEFAULT NULL,
  `otdesg1` varchar(30) DEFAULT NULL,
  `otnature1` varchar(30) DEFAULT NULL,
  `otdoj1` date DEFAULT NULL,
  `otdor1` date DEFAULT NULL,
  `otreason1` varchar(100) DEFAULT NULL,
  `otcir1` varchar(100) DEFAULT NULL,
  `otkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mec_fac_funpat`
--

CREATE TABLE `mec_fac_funpat` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `titleofpro1` varchar(50) DEFAULT NULL,
  `duration1` varchar(30) DEFAULT NULL,
  `amountsan1` varchar(20) DEFAULT NULL,
  `agency1` varchar(20) DEFAULT NULL,
  `startdate1` date DEFAULT NULL,
  `copiname1` varchar(20) DEFAULT NULL,
  `year1` varchar(7) DEFAULT NULL,
  `order1` varchar(200) DEFAULT NULL,
  `uc1` varchar(200) DEFAULT NULL,
  `funkey` int(1) DEFAULT NULL,
  `nameofpat1` varchar(50) DEFAULT NULL,
  `title1` varchar(30) DEFAULT NULL,
  `fileno1` varchar(20) DEFAULT NULL,
  `pat_cer1` varchar(200) DEFAULT NULL,
  `patkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mec_fac_glc`
--

CREATE TABLE `mec_fac_glc` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `gltitle1` varchar(50) DEFAULT NULL,
  `gldays1` int(3) DEFAULT NULL,
  `glfrom1` date NOT NULL,
  `glto1` date NOT NULL,
  `gldate1` date NOT NULL,
  `gltopic1` varchar(50) DEFAULT NULL,
  `glorg1` varchar(50) DEFAULT NULL,
  `glplace1` varchar(50) DEFAULT NULL,
  `glpic1` varchar(100) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL,
  `conname1` varchar(30) DEFAULT NULL,
  `contitle1` varchar(50) DEFAULT NULL,
  `conorg1` varchar(50) DEFAULT NULL,
  `condays1` int(3) DEFAULT NULL,
  `confrom1` date NOT NULL,
  `conto1` date NOT NULL,
  `condate1` date NOT NULL,
  `conlevel1` varchar(20) DEFAULT NULL,
  `conpdf1` varchar(100) DEFAULT NULL,
  `concer1` varchar(100) DEFAULT NULL,
  `conkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mec_fac_glc`
--

INSERT INTO `mec_fac_glc` (`id`, `sid`, `ayear`, `gltitle1`, `gldays1`, `glfrom1`, `glto1`, `gldate1`, `gltopic1`, `glorg1`, `glplace1`, `glpic1`, `glkey`, `conname1`, `contitle1`, `conorg1`, `condays1`, `confrom1`, `conto1`, `condate1`, `conlevel1`, `conpdf1`, `concer1`, `conkey`) VALUES
(1, 'S14MEC013', '2013-2014', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'DISENO 2K14', 'STUDY OF DYNAMIC MECHANICAL PROPERTIES OF HYBRID P', 'ADHIYAMAAN COLLEGE OF ENGINEERING, HOSUR', 3, '2014-02-26', '2014-03-27', '0000-00-00', 'national', NULL, '68649-diseno.pdf', 1),
(2, 'S14MEC013', '2013-2014', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'RESEARCH & ADVANCES IN MECHANI', 'IMPACT DAMAGE CHARACTERISATION OF HYBRID POLYPROPY', 'PSR ENGINEERING COLLEGE, VIRUDHUNAGAR', 2, '2014-03-28', '2014-03-29', '0000-00-00', 'national', NULL, '49077-psr.pdf', 1),
(3, 'S14MEC013', '2013-2014', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'FUTURISTICS TRENDS IN MECHANIC', 'INVESTIGATION OF IMPACT PROPERTIES OF POLYPROPYLEN', 'THIRUVALLUVAR COLLEGE OF ENGINEERING AND TECHNOLOG', 2, '2014-03-01', '2014-03-02', '0000-00-00', 'international', NULL, '10732-int-conf.pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mec_fac_member`
--

CREATE TABLE `mec_fac_member` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `memberid1` varchar(30) DEFAULT NULL,
  `validity1` varchar(20) DEFAULT NULL,
  `pic1` varchar(100) DEFAULT NULL,
  `memkey` int(1) DEFAULT NULL,
  `res1` varchar(50) DEFAULT NULL,
  `level1` varchar(20) DEFAULT NULL,
  `res2` varchar(50) NOT NULL,
  `level2` varchar(20) NOT NULL,
  `reskey` int(1) DEFAULT NULL,
  `aname1` varchar(50) DEFAULT NULL,
  `aissue1` varchar(10) DEFAULT NULL,
  `amy1` varchar(7) DEFAULT NULL,
  `acer1` varchar(100) DEFAULT NULL,
  `awakey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mec_fac_member`
--

INSERT INTO `mec_fac_member` (`id`, `sid`, `ayear`, `name1`, `memberid1`, `validity1`, `pic1`, `memkey`, `res1`, `level1`, `res2`, `level2`, `reskey`, `aname1`, `aissue1`, `amy1`, `acer1`, `awakey`) VALUES
(1, 'S14MEC024', '2017-2018', NULL, NULL, NULL, NULL, NULL, 'TUTOR', 'department', '', '', 1, NULL, NULL, NULL, NULL, NULL),
(2, 'S14MEC024', '2016-2017', NULL, NULL, NULL, NULL, NULL, 'TUTOR', 'department', '', '', 1, NULL, NULL, NULL, NULL, NULL),
(3, 'S14MEC024', '2015-2016', NULL, NULL, NULL, NULL, NULL, 'TUTOR', 'department', '', '', 1, NULL, NULL, NULL, NULL, NULL),
(4, 'S14MEC024', '2014-2015', NULL, NULL, NULL, NULL, NULL, 'TUTOR', 'department', '', '', 1, NULL, NULL, NULL, NULL, NULL),
(5, 'S14MEC024', '1987-1988', 'IEI', 'AM1589434', 'LIFE TIME', '9744-enrol_000am1589434_0icc_00173_20150605143402.pdf', 1, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'S14MEC013', '2015-2016', 'THE INSTITUTION OF ENGINEERS(INDIA)', 'AM 159214-1', 'LIFELONG', '39070-ie-id.pdf', 1, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'S99MEC019', '1987-1988', 'INSTITUTION OF ENGINEERS', 'F-119798-5', 'LIFE TIME', '73121-iei-membership_svsb.pdf', 1, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'S99MEC019', '2018-2019', NULL, NULL, NULL, NULL, NULL, 'I Year Coordinator', 'department', '', '', 1, NULL, NULL, NULL, NULL, NULL),
(9, 'S17MEC015', '2018-2019', NULL, NULL, NULL, NULL, NULL, 'TUTOR', 'department', 'TUTOR', 'department', 2, NULL, NULL, NULL, NULL, NULL),
(10, 'S11MEC010', '2011-2012', NULL, NULL, NULL, NULL, NULL, 'TUTOR', 'department', '', '', 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mec_fac_ot_qual`
--

CREATE TABLE `mec_fac_ot_qual` (
  `id` int(5) NOT NULL,
  `intake1` int(5) DEFAULT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `name_qual` varchar(100) DEFAULT NULL,
  `year_com` int(10) DEFAULT NULL,
  `cer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mec_fac_resg`
--

CREATE TABLE `mec_fac_resg` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `supid` varchar(20) DEFAULT NULL,
  `numsch` int(2) NOT NULL,
  `reg` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` varchar(10) NOT NULL,
  `cyear` varchar(20) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `tit` varchar(100) NOT NULL,
  `j_sup` varchar(50) DEFAULT NULL
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
-- Table structure for table `phy_fac`
--

CREATE TABLE `phy_fac` (
  `sid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `age` int(4) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob1` bigint(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `mstatus` varchar(5) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `relegion` varchar(30) NOT NULL,
  `comunity` varchar(10) NOT NULL,
  `place` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `aadharno` bigint(12) NOT NULL,
  `panno` varchar(10) NOT NULL,
  `passport` varchar(20) DEFAULT NULL,
  `blood` varchar(5) NOT NULL,
  `doj` date NOT NULL,
  `designation` varchar(50) NOT NULL,
  `mob2` bigint(10) DEFAULT NULL,
  `dept` varchar(50) NOT NULL,
  `uploadpic` varchar(100) NOT NULL,
  `aadharpic` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `dor` date DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `app_order` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phy_fac`
--

INSERT INTO `phy_fac` (`sid`, `name`, `dob`, `age`, `gender`, `email`, `mob1`, `fname`, `mname`, `mstatus`, `sname`, `relegion`, `comunity`, `place`, `city`, `district`, `state`, `country`, `pincode`, `address`, `paddress`, `aadharno`, `panno`, `passport`, `blood`, `doj`, `designation`, `mob2`, `dept`, `uploadpic`, `aadharpic`, `password`, `status`, `dor`, `reason`, `app_order`) VALUES
('S08PHY003', 'A. GEETHA', '1983-05-22', 36, 'female', 'geethuphy@gmail.com', 9486388323, 'C. ARUMUGAM', 'A. SAVITHIRI', 'n', '', 'Hindu', 'MBC', 'VIRUDHACHALAM', 'VIRUDHACHALAM', 'CUDDALORE', 'Tamil Nadu', 'India', '606001', '	NO: 18, JAYAPRIYA NAGAR, JUNCTION ROAD, VIRUDHACHALAM - 606001   ', '	NO: 18, JAYAPRIYA NAGAR, JUNCTION ROAD, VIRUDHACHALAM - 606001   ', 349908802540, 'AQLPG6987B', '', 'ab+', '2008-07-02', 'Assistant Professor', 0, 'PHY', '71793-geetha.-a.jpg', '65009-geetha-eaadhaar_1110940190067320141208124550_21012015181616_850372.pdf', '2540', NULL, NULL, NULL, NULL),
('S13PHY001', 'Dr. R. Mariappan', '1983-06-15', 36, 'male', 'marijpr@gmail.com', 9841396779, 'C. Ramasamy', 'R. Saroja', 'y', '', 'Hindu', 'MBC', 'Jalipudur', 'Dharmapuri', 'Dharmapuri', 'Tamil Nadu', 'India', '635301', 'Jalipudur,\r\nRegadahalli (Po),\r\nPappireddipatti (Tk),\r\nDharmapuri (Dt),\r\nPin Code-635301	   ', 'Jalipudur,\r\nRegadahalli (Po),\r\nPappireddipatti (Tk),\r\nDharmapuri (Dt),\r\nPin Code-635301	   ', 933505523977, 'CGWPR3524E', '', 'A1+', '2013-06-10', 'Assistant Professor', 0, 'PHY', '18120-mariappan.-r(1).jpg', '99374-aadhaar.pdf', '3977', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `phy_fac_attorg`
--

CREATE TABLE `phy_fac_attorg` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `attcategory1` varchar(20) DEFAULT NULL,
  `atttitle1` varchar(50) DEFAULT NULL,
  `attdays1` int(3) DEFAULT NULL,
  `attfrom1` date NOT NULL,
  `attto1` date NOT NULL,
  `attdate1` date NOT NULL,
  `attorg1` varchar(50) DEFAULT NULL,
  `attplace1` varchar(50) DEFAULT NULL,
  `attlevel1` varchar(20) DEFAULT NULL,
  `attcer1` varchar(100) DEFAULT NULL,
  `attkey` int(1) DEFAULT NULL,
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
-- Table structure for table `phy_fac_bkjrn`
--

CREATE TABLE `phy_fac_bkjrn` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `bk1` varchar(20) DEFAULT NULL,
  `bkcha1` varchar(50) DEFAULT NULL,
  `bkissn1` varchar(20) DEFAULT NULL,
  `bkmy1` varchar(7) DEFAULT NULL,
  `bkpub1` varchar(50) DEFAULT NULL,
  `bktype1` varchar(50) DEFAULT NULL,
  `bkkey` int(1) DEFAULT NULL,
  `jrntitle1` varchar(100) DEFAULT NULL,
  `jrnname1` varchar(50) DEFAULT NULL,
  `jrnvol1` varchar(20) DEFAULT NULL,
  `jrnissue1` varchar(20) DEFAULT NULL,
  `jrnissn1` varchar(20) DEFAULT NULL,
  `jrncategory1` varchar(20) DEFAULT NULL,
  `jrnlink1` varchar(100) DEFAULT NULL,
  `jrncit1` varchar(30) DEFAULT NULL,
  `jrnpdf1` varchar(100) DEFAULT NULL,
  `jrnimpact1` int(10) DEFAULT NULL,
  `jrnkey` int(1) DEFAULT NULL,
  `gl` varchar(50) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phy_fac_edu`
--

CREATE TABLE `phy_fac_edu` (
  `sid` varchar(30) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `sboard` varchar(10) DEFAULT NULL,
  `syear` int(4) DEFAULT NULL,
  `spercentage` int(4) DEFAULT NULL,
  `scertificate` varchar(100) DEFAULT NULL,
  `skey` int(1) DEFAULT NULL,
  `s2name` varchar(50) DEFAULT NULL,
  `s2board` varchar(10) DEFAULT NULL,
  `s2branch` varchar(50) DEFAULT NULL,
  `s2year` int(4) DEFAULT NULL,
  `s2percentage` int(4) DEFAULT NULL,
  `s2certificate` varchar(100) DEFAULT NULL,
  `s2key` int(1) DEFAULT NULL,
  `dname` varchar(50) DEFAULT NULL,
  `dboard` varchar(10) DEFAULT NULL,
  `ddegree` varchar(50) DEFAULT NULL,
  `dmode` varchar(10) DEFAULT NULL,
  `dyear` int(4) DEFAULT NULL,
  `dpercentage` int(4) DEFAULT NULL,
  `dcertificate` varchar(100) DEFAULT NULL,
  `dkey` int(1) DEFAULT NULL,
  `d1name` varchar(50) DEFAULT NULL,
  `d1board` varchar(10) DEFAULT NULL,
  `d1degree` varchar(50) DEFAULT NULL,
  `d1mode` varchar(10) DEFAULT NULL,
  `d1year` int(4) DEFAULT NULL,
  `d1percentage` int(4) DEFAULT NULL,
  `d1certificate` varchar(100) DEFAULT NULL,
  `d1key` int(1) DEFAULT NULL,
  `d2name` varchar(50) DEFAULT NULL,
  `d2board` varchar(10) DEFAULT NULL,
  `d2degree` varchar(50) DEFAULT NULL,
  `d2mode` varchar(10) DEFAULT NULL,
  `d2year` int(4) DEFAULT NULL,
  `d2percentage` int(4) DEFAULT NULL,
  `d2certificate` varchar(100) DEFAULT NULL,
  `d2key` int(1) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `uuniversity` varchar(50) DEFAULT NULL,
  `udegree` varchar(50) DEFAULT NULL,
  `ubranch` varchar(50) DEFAULT NULL,
  `umode` varchar(10) DEFAULT NULL,
  `uyear` int(4) DEFAULT NULL,
  `upercentage` int(4) DEFAULT NULL,
  `ucertificate` varchar(100) DEFAULT NULL,
  `ukey` int(1) DEFAULT NULL,
  `u1name` varchar(50) DEFAULT NULL,
  `u1university` varchar(50) DEFAULT NULL,
  `u1degree` varchar(50) DEFAULT NULL,
  `u1branch` varchar(50) DEFAULT NULL,
  `u1mode` varchar(10) DEFAULT NULL,
  `u1year` int(4) DEFAULT NULL,
  `u1percentage` int(4) DEFAULT NULL,
  `u1certificate` varchar(100) DEFAULT NULL,
  `u1key` int(1) DEFAULT NULL,
  `u2name` varchar(50) DEFAULT NULL,
  `u2university` varchar(50) DEFAULT NULL,
  `u2degree` varchar(50) DEFAULT NULL,
  `u2branch` varchar(50) DEFAULT NULL,
  `u2mode` varchar(10) DEFAULT NULL,
  `u2year` int(4) DEFAULT NULL,
  `u2percentage` int(4) DEFAULT NULL,
  `u2certificate` varchar(100) DEFAULT NULL,
  `u2key` int(1) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `puniversity` varchar(50) DEFAULT NULL,
  `pdegree` varchar(50) DEFAULT NULL,
  `pbranch` varchar(50) DEFAULT NULL,
  `pmode` varchar(10) DEFAULT NULL,
  `pyear` int(4) DEFAULT NULL,
  `ppercentage` int(4) DEFAULT NULL,
  `pcertificate` varchar(100) DEFAULT NULL,
  `pkey` int(1) DEFAULT NULL,
  `p1name` varchar(50) DEFAULT NULL,
  `p1university` varchar(50) DEFAULT NULL,
  `p1degree` varchar(50) DEFAULT NULL,
  `p1branch` varchar(50) DEFAULT NULL,
  `p1mode` varchar(10) DEFAULT NULL,
  `p1year` int(4) DEFAULT NULL,
  `p1percentage` int(4) DEFAULT NULL,
  `p1certificate` varchar(100) DEFAULT NULL,
  `p1key` int(1) DEFAULT NULL,
  `p2name` varchar(50) DEFAULT NULL,
  `p2university` varchar(50) DEFAULT NULL,
  `p2degree` varchar(50) DEFAULT NULL,
  `p2branch` varchar(50) DEFAULT NULL,
  `p2mode` varchar(10) DEFAULT NULL,
  `p2year` int(4) DEFAULT NULL,
  `p2percentage` int(4) DEFAULT NULL,
  `p2certificate` varchar(100) DEFAULT NULL,
  `p2key` int(1) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `muniversity` varchar(50) DEFAULT NULL,
  `mspec` varchar(50) DEFAULT NULL,
  `mbranch` varchar(50) DEFAULT NULL,
  `mmode` varchar(10) DEFAULT NULL,
  `myear` int(4) DEFAULT NULL,
  `mpercentage` int(4) DEFAULT NULL,
  `mthesis` varchar(50) DEFAULT NULL,
  `mguide` varchar(30) DEFAULT NULL,
  `mcertificate` varchar(100) DEFAULT NULL,
  `mkey` int(1) DEFAULT NULL,
  `phname` varchar(50) DEFAULT NULL,
  `phuniversity` varchar(50) DEFAULT NULL,
  `phspec` varchar(50) DEFAULT NULL,
  `phbranch` varchar(50) DEFAULT NULL,
  `phmode` varchar(10) DEFAULT NULL,
  `phyreg` varchar(7) DEFAULT NULL,
  `phyear` varchar(7) DEFAULT NULL,
  `phthesis` varchar(100) DEFAULT NULL,
  `phguide` varchar(30) DEFAULT NULL,
  `phcertificate` varchar(100) DEFAULT NULL,
  `phkey` int(1) DEFAULT NULL,
  `ph1name` varchar(50) DEFAULT NULL,
  `ph1university` varchar(50) DEFAULT NULL,
  `ph1spec` varchar(50) DEFAULT NULL,
  `ph1branch` varchar(50) DEFAULT NULL,
  `ph1mode` varchar(10) DEFAULT NULL,
  `ph1yreg` varchar(7) DEFAULT NULL,
  `ph1year` varchar(7) DEFAULT NULL,
  `ph1thesis` varchar(100) DEFAULT NULL,
  `ph1guide` varchar(30) DEFAULT NULL,
  `ph1certificate` varchar(100) DEFAULT NULL,
  `ph1key` int(1) DEFAULT NULL,
  `ph2name` varchar(50) DEFAULT NULL,
  `ph2university` varchar(50) DEFAULT NULL,
  `ph2spec` varchar(50) DEFAULT NULL,
  `ph2branch` varchar(50) DEFAULT NULL,
  `ph2mode` varchar(10) DEFAULT NULL,
  `ph2yreg` varchar(7) DEFAULT NULL,
  `ph2year` varchar(7) DEFAULT NULL,
  `ph2thesis` varchar(100) DEFAULT NULL,
  `ph2guide` varchar(30) DEFAULT NULL,
  `ph2certificate` varchar(100) DEFAULT NULL,
  `ph2key` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phy_fac_exp`
--

CREATE TABLE `phy_fac_exp` (
  `sid` varchar(30) NOT NULL,
  `clg1` varchar(50) DEFAULT NULL,
  `clgdesg1` varchar(30) DEFAULT NULL,
  `clgdoj1` date DEFAULT NULL,
  `clgdor1` date DEFAULT NULL,
  `clgreason1` varchar(100) DEFAULT NULL,
  `clgcir1` varchar(100) DEFAULT NULL,
  `clgkey` int(1) DEFAULT NULL,
  `pol1` varchar(50) DEFAULT NULL,
  `poldesg1` varchar(30) DEFAULT NULL,
  `poldoj1` date DEFAULT NULL,
  `poldor1` date DEFAULT NULL,
  `polreason1` varchar(100) DEFAULT NULL,
  `polcir1` varchar(100) DEFAULT NULL,
  `polkey` int(1) DEFAULT NULL,
  `sch1` varchar(50) DEFAULT NULL,
  `schdesg1` varchar(30) DEFAULT NULL,
  `schdoj1` date DEFAULT NULL,
  `schdor1` date DEFAULT NULL,
  `schreason1` varchar(100) DEFAULT NULL,
  `schcir1` varchar(100) DEFAULT NULL,
  `schkey` int(1) DEFAULT NULL,
  `ind1` varchar(50) DEFAULT NULL,
  `inddesg1` varchar(30) DEFAULT NULL,
  `indnature1` varchar(30) DEFAULT NULL,
  `inddoj1` date DEFAULT NULL,
  `inddor1` date DEFAULT NULL,
  `indreason1` varchar(100) DEFAULT NULL,
  `indcir1` varchar(100) DEFAULT NULL,
  `indkey` int(1) DEFAULT NULL,
  `ot1` varchar(50) DEFAULT NULL,
  `otdesg1` varchar(30) DEFAULT NULL,
  `otnature1` varchar(30) DEFAULT NULL,
  `otdoj1` date DEFAULT NULL,
  `otdor1` date DEFAULT NULL,
  `otreason1` varchar(100) DEFAULT NULL,
  `otcir1` varchar(100) DEFAULT NULL,
  `otkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phy_fac_funpat`
--

CREATE TABLE `phy_fac_funpat` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `titleofpro1` varchar(50) DEFAULT NULL,
  `duration1` varchar(30) DEFAULT NULL,
  `amountsan1` varchar(20) DEFAULT NULL,
  `agency1` varchar(20) DEFAULT NULL,
  `startdate1` date DEFAULT NULL,
  `copiname1` varchar(20) DEFAULT NULL,
  `year1` varchar(7) DEFAULT NULL,
  `order1` varchar(200) DEFAULT NULL,
  `uc1` varchar(200) DEFAULT NULL,
  `funkey` int(1) DEFAULT NULL,
  `nameofpat1` varchar(50) DEFAULT NULL,
  `title1` varchar(30) DEFAULT NULL,
  `fileno1` varchar(20) DEFAULT NULL,
  `pat_cer` varchar(200) DEFAULT NULL,
  `patkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phy_fac_glc`
--

CREATE TABLE `phy_fac_glc` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `gltitle1` varchar(50) DEFAULT NULL,
  `gldays1` int(3) DEFAULT NULL,
  `glfrom1` date NOT NULL,
  `glto1` date NOT NULL,
  `gldate1` date NOT NULL,
  `gltopic1` varchar(50) DEFAULT NULL,
  `glorg1` varchar(50) DEFAULT NULL,
  `glplace1` varchar(50) DEFAULT NULL,
  `glpic1` varchar(100) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL,
  `conname1` varchar(30) DEFAULT NULL,
  `contitle1` varchar(50) DEFAULT NULL,
  `conorg1` varchar(50) DEFAULT NULL,
  `condays1` int(3) DEFAULT NULL,
  `confrom1` date NOT NULL,
  `conto1` date NOT NULL,
  `condate1` date NOT NULL,
  `conlevel1` varchar(20) DEFAULT NULL,
  `conpdf1` varchar(100) DEFAULT NULL,
  `concer1` varchar(100) DEFAULT NULL,
  `conkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phy_fac_member`
--

CREATE TABLE `phy_fac_member` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `memberid1` varchar(30) DEFAULT NULL,
  `validity1` varchar(20) DEFAULT NULL,
  `pic1` varchar(100) DEFAULT NULL,
  `memkey` int(1) DEFAULT NULL,
  `res1` varchar(50) DEFAULT NULL,
  `level1` varchar(20) DEFAULT NULL,
  `reskey` int(1) DEFAULT NULL,
  `aname1` varchar(50) DEFAULT NULL,
  `aissue1` varchar(10) DEFAULT NULL,
  `amy1` varchar(7) DEFAULT NULL,
  `acer1` varchar(100) DEFAULT NULL,
  `awakey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phy_fac_ot_qual`
--

CREATE TABLE `phy_fac_ot_qual` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) NOT NULL,
  `name_qual` varchar(50) NOT NULL,
  `year_com` int(10) NOT NULL,
  `cer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phy_fac_resg`
--

CREATE TABLE `phy_fac_resg` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `supid` varchar(20) DEFAULT NULL,
  `numsch` int(2) NOT NULL,
  `reg` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` varchar(10) NOT NULL,
  `cyear` varchar(20) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `tit` varchar(100) NOT NULL,
  `j_sup` varchar(50) DEFAULT NULL
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
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(2) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`) VALUES
(1, 'iadmin', '8642', 'ramki2696@gmail.com');

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

-- --------------------------------------------------------

--
-- Table structure for table `vmc_fac`
--

CREATE TABLE `vmc_fac` (
  `sid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `age` int(4) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob1` bigint(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `mstatus` varchar(5) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `relegion` varchar(30) NOT NULL,
  `comunity` varchar(10) NOT NULL,
  `place` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `aadharno` bigint(12) NOT NULL,
  `panno` varchar(10) NOT NULL,
  `passport` varchar(20) DEFAULT NULL,
  `blood` varchar(5) NOT NULL,
  `doj` date NOT NULL,
  `designation` varchar(50) NOT NULL,
  `mob2` bigint(10) DEFAULT NULL,
  `dept` varchar(50) NOT NULL,
  `uploadpic` varchar(100) NOT NULL,
  `aadharpic` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `dor` date DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `app_order` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vmc_fac`
--

INSERT INTO `vmc_fac` (`sid`, `name`, `dob`, `age`, `gender`, `email`, `mob1`, `fname`, `mname`, `mstatus`, `sname`, `relegion`, `comunity`, `place`, `city`, `district`, `state`, `country`, `pincode`, `address`, `paddress`, `aadharno`, `panno`, `passport`, `blood`, `doj`, `designation`, `mob2`, `dept`, `uploadpic`, `aadharpic`, `password`, `status`, `dor`, `reason`, `app_order`) VALUES
('S17vMC001', 'thir', '1990-02-10', 29, 'male', 'vijoad661@gmail.com', 9874561230, 'ramesh', 'rani', 'n', '', 'Hindu', 'kandhikupp', 'MGR NAGAR', 'Hosur', 'Kgiri', 'Tasmania', 'Australia', '635126', '123,the', '123,the', 987456127890, 'AXDPS2309G', '8794561230', 'b+ve', '2017-02-05', 'Prof', 7894585230, 'vMC', '35126-download.jpeg', '71451-76706-10th.pdf', '7890', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vmc_fac_attorg`
--

CREATE TABLE `vmc_fac_attorg` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `attcategory1` varchar(20) DEFAULT NULL,
  `atttitle1` varchar(50) DEFAULT NULL,
  `attdays1` int(3) DEFAULT NULL,
  `attfrom1` date NOT NULL,
  `attto1` date NOT NULL,
  `attdate1` date NOT NULL,
  `attorg1` varchar(50) DEFAULT NULL,
  `attplace1` varchar(50) DEFAULT NULL,
  `attlevel1` varchar(20) DEFAULT NULL,
  `attcer1` varchar(100) DEFAULT NULL,
  `attkey` int(1) DEFAULT NULL,
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
-- Table structure for table `vmc_fac_bkjrn`
--

CREATE TABLE `vmc_fac_bkjrn` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `bk1` varchar(20) DEFAULT NULL,
  `bkcha1` varchar(50) DEFAULT NULL,
  `bkissn1` varchar(20) DEFAULT NULL,
  `bkmy1` varchar(7) DEFAULT NULL,
  `bkpub1` varchar(50) DEFAULT NULL,
  `bktype1` varchar(50) DEFAULT NULL,
  `bkkey` int(1) DEFAULT NULL,
  `jrntitle1` varchar(100) DEFAULT NULL,
  `jrnname1` varchar(50) DEFAULT NULL,
  `jrnvol1` varchar(20) DEFAULT NULL,
  `jrnissue1` varchar(20) DEFAULT NULL,
  `jrnissn1` varchar(20) DEFAULT NULL,
  `jrncategory1` varchar(20) DEFAULT NULL,
  `jrnlink1` varchar(100) DEFAULT NULL,
  `jrncit1` varchar(30) DEFAULT NULL,
  `jrnpdf1` varchar(100) DEFAULT NULL,
  `jrnimpact1` int(10) DEFAULT NULL,
  `jrnkey` int(1) DEFAULT NULL,
  `gl` varchar(50) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vmc_fac_edu`
--

CREATE TABLE `vmc_fac_edu` (
  `sid` varchar(30) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `sboard` varchar(10) DEFAULT NULL,
  `syear` int(4) DEFAULT NULL,
  `spercentage` int(4) DEFAULT NULL,
  `scertificate` varchar(100) DEFAULT NULL,
  `skey` int(1) DEFAULT NULL,
  `s2name` varchar(50) DEFAULT NULL,
  `s2board` varchar(10) DEFAULT NULL,
  `s2branch` varchar(50) DEFAULT NULL,
  `s2year` int(4) DEFAULT NULL,
  `s2percentage` int(4) DEFAULT NULL,
  `s2certificate` varchar(100) DEFAULT NULL,
  `s2key` int(1) DEFAULT NULL,
  `dname` varchar(50) DEFAULT NULL,
  `dboard` varchar(10) DEFAULT NULL,
  `ddegree` varchar(50) DEFAULT NULL,
  `dmode` varchar(10) DEFAULT NULL,
  `dyear` int(4) DEFAULT NULL,
  `dpercentage` int(4) DEFAULT NULL,
  `dcertificate` varchar(100) DEFAULT NULL,
  `dkey` int(1) DEFAULT NULL,
  `d1name` varchar(50) DEFAULT NULL,
  `d1board` varchar(10) DEFAULT NULL,
  `d1degree` varchar(50) DEFAULT NULL,
  `d1mode` varchar(10) DEFAULT NULL,
  `d1year` int(4) DEFAULT NULL,
  `d1percentage` int(4) DEFAULT NULL,
  `d1certificate` varchar(100) DEFAULT NULL,
  `d1key` int(1) DEFAULT NULL,
  `d2name` varchar(50) DEFAULT NULL,
  `d2board` varchar(10) DEFAULT NULL,
  `d2degree` varchar(50) DEFAULT NULL,
  `d2mode` varchar(10) DEFAULT NULL,
  `d2year` int(4) DEFAULT NULL,
  `d2percentage` int(4) DEFAULT NULL,
  `d2certificate` varchar(100) DEFAULT NULL,
  `d2key` int(1) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `uuniversity` varchar(50) DEFAULT NULL,
  `udegree` varchar(50) DEFAULT NULL,
  `ubranch` varchar(50) DEFAULT NULL,
  `umode` varchar(10) DEFAULT NULL,
  `uyear` int(4) DEFAULT NULL,
  `upercentage` int(4) DEFAULT NULL,
  `ucertificate` varchar(100) DEFAULT NULL,
  `ukey` int(1) DEFAULT NULL,
  `u1name` varchar(50) DEFAULT NULL,
  `u1university` varchar(50) DEFAULT NULL,
  `u1degree` varchar(50) DEFAULT NULL,
  `u1branch` varchar(50) DEFAULT NULL,
  `u1mode` varchar(10) DEFAULT NULL,
  `u1year` int(4) DEFAULT NULL,
  `u1percentage` int(4) DEFAULT NULL,
  `u1certificate` varchar(100) DEFAULT NULL,
  `u1key` int(1) DEFAULT NULL,
  `u2name` varchar(50) DEFAULT NULL,
  `u2university` varchar(50) DEFAULT NULL,
  `u2degree` varchar(50) DEFAULT NULL,
  `u2branch` varchar(50) DEFAULT NULL,
  `u2mode` varchar(10) DEFAULT NULL,
  `u2year` int(4) DEFAULT NULL,
  `u2percentage` int(4) DEFAULT NULL,
  `u2certificate` varchar(100) DEFAULT NULL,
  `u2key` int(1) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `puniversity` varchar(50) DEFAULT NULL,
  `pdegree` varchar(50) DEFAULT NULL,
  `pbranch` varchar(50) DEFAULT NULL,
  `pmode` varchar(10) DEFAULT NULL,
  `pyear` int(4) DEFAULT NULL,
  `ppercentage` int(4) DEFAULT NULL,
  `pcertificate` varchar(100) DEFAULT NULL,
  `pkey` int(1) DEFAULT NULL,
  `p1name` varchar(50) DEFAULT NULL,
  `p1university` varchar(50) DEFAULT NULL,
  `p1degree` varchar(50) DEFAULT NULL,
  `p1branch` varchar(50) DEFAULT NULL,
  `p1mode` varchar(10) DEFAULT NULL,
  `p1year` int(4) DEFAULT NULL,
  `p1percentage` int(4) DEFAULT NULL,
  `p1certificate` varchar(100) DEFAULT NULL,
  `p1key` int(1) DEFAULT NULL,
  `p2name` varchar(50) DEFAULT NULL,
  `p2university` varchar(50) DEFAULT NULL,
  `p2degree` varchar(50) DEFAULT NULL,
  `p2branch` varchar(50) DEFAULT NULL,
  `p2mode` varchar(10) DEFAULT NULL,
  `p2year` int(4) DEFAULT NULL,
  `p2percentage` int(4) DEFAULT NULL,
  `p2certificate` varchar(100) DEFAULT NULL,
  `p2key` int(1) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `muniversity` varchar(50) DEFAULT NULL,
  `mspec` varchar(50) DEFAULT NULL,
  `mbranch` varchar(50) DEFAULT NULL,
  `mmode` varchar(10) DEFAULT NULL,
  `myear` int(4) DEFAULT NULL,
  `mpercentage` int(4) DEFAULT NULL,
  `mthesis` varchar(50) DEFAULT NULL,
  `mguide` varchar(30) DEFAULT NULL,
  `mcertificate` varchar(100) DEFAULT NULL,
  `mkey` int(1) DEFAULT NULL,
  `phname` varchar(50) DEFAULT NULL,
  `phuniversity` varchar(50) DEFAULT NULL,
  `phspec` varchar(50) DEFAULT NULL,
  `phbranch` varchar(50) DEFAULT NULL,
  `phmode` varchar(10) DEFAULT NULL,
  `phyreg` varchar(7) DEFAULT NULL,
  `phyear` varchar(7) DEFAULT NULL,
  `phthesis` varchar(100) DEFAULT NULL,
  `phguide` varchar(30) DEFAULT NULL,
  `phcertificate` varchar(100) DEFAULT NULL,
  `phkey` int(1) DEFAULT NULL,
  `ph1name` varchar(50) DEFAULT NULL,
  `ph1university` varchar(50) DEFAULT NULL,
  `ph1spec` varchar(50) DEFAULT NULL,
  `ph1branch` varchar(50) DEFAULT NULL,
  `ph1mode` varchar(10) DEFAULT NULL,
  `ph1yreg` varchar(7) DEFAULT NULL,
  `ph1year` varchar(7) DEFAULT NULL,
  `ph1thesis` varchar(100) DEFAULT NULL,
  `ph1guide` varchar(30) DEFAULT NULL,
  `ph1certificate` varchar(100) DEFAULT NULL,
  `ph1key` int(1) DEFAULT NULL,
  `ph2name` varchar(50) DEFAULT NULL,
  `ph2university` varchar(50) DEFAULT NULL,
  `ph2spec` varchar(50) DEFAULT NULL,
  `ph2branch` varchar(50) DEFAULT NULL,
  `ph2mode` varchar(10) DEFAULT NULL,
  `ph2yreg` varchar(7) DEFAULT NULL,
  `ph2year` varchar(7) DEFAULT NULL,
  `ph2thesis` varchar(100) DEFAULT NULL,
  `ph2guide` varchar(30) DEFAULT NULL,
  `ph2certificate` varchar(100) DEFAULT NULL,
  `ph2key` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vmc_fac_exp`
--

CREATE TABLE `vmc_fac_exp` (
  `sid` varchar(30) NOT NULL,
  `clg1` varchar(50) DEFAULT NULL,
  `clgdesg1` varchar(30) DEFAULT NULL,
  `clgdoj1` date DEFAULT NULL,
  `clgdor1` date DEFAULT NULL,
  `clgreason1` varchar(100) DEFAULT NULL,
  `clgcir1` varchar(100) DEFAULT NULL,
  `clgkey` int(1) DEFAULT NULL,
  `pol1` varchar(50) DEFAULT NULL,
  `poldesg1` varchar(30) DEFAULT NULL,
  `poldoj1` date DEFAULT NULL,
  `poldor1` date DEFAULT NULL,
  `polreason1` varchar(100) DEFAULT NULL,
  `polcir1` varchar(100) DEFAULT NULL,
  `polkey` int(1) DEFAULT NULL,
  `sch1` varchar(50) DEFAULT NULL,
  `schdesg1` varchar(30) DEFAULT NULL,
  `schdoj1` date DEFAULT NULL,
  `schdor1` date DEFAULT NULL,
  `schreason1` varchar(100) DEFAULT NULL,
  `schcir1` varchar(100) DEFAULT NULL,
  `schkey` int(1) DEFAULT NULL,
  `ind1` varchar(50) DEFAULT NULL,
  `inddesg1` varchar(30) DEFAULT NULL,
  `indnature1` varchar(30) DEFAULT NULL,
  `inddoj1` date DEFAULT NULL,
  `inddor1` date DEFAULT NULL,
  `indreason1` varchar(100) DEFAULT NULL,
  `indcir1` varchar(100) DEFAULT NULL,
  `indkey` int(1) DEFAULT NULL,
  `ot1` varchar(50) DEFAULT NULL,
  `otdesg1` varchar(30) DEFAULT NULL,
  `otnature1` varchar(30) DEFAULT NULL,
  `otdoj1` date DEFAULT NULL,
  `otdor1` date DEFAULT NULL,
  `otreason1` varchar(100) DEFAULT NULL,
  `otcir1` varchar(100) DEFAULT NULL,
  `otkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vmc_fac_funpat`
--

CREATE TABLE `vmc_fac_funpat` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `titleofpro1` varchar(50) DEFAULT NULL,
  `duration1` varchar(30) DEFAULT NULL,
  `amountsan1` varchar(20) DEFAULT NULL,
  `agency1` varchar(20) DEFAULT NULL,
  `startdate1` date DEFAULT NULL,
  `copiname1` varchar(20) DEFAULT NULL,
  `year1` varchar(7) DEFAULT NULL,
  `order1` varchar(200) NOT NULL,
  `uc1` varchar(200) NOT NULL,
  `funkey` int(1) DEFAULT NULL,
  `nameofpat1` varchar(50) DEFAULT NULL,
  `title1` varchar(30) DEFAULT NULL,
  `fileno1` varchar(20) DEFAULT NULL,
  `pat_cer` varchar(200) DEFAULT NULL,
  `patkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vmc_fac_funpat`
--

INSERT INTO `vmc_fac_funpat` (`id`, `sid`, `ayear`, `titleofpro1`, `duration1`, `amountsan1`, `agency1`, `startdate1`, `copiname1`, `year1`, `order1`, `uc1`, `funkey`, `nameofpat1`, `title1`, `fileno1`, `pat_cer`, `patkey`) VALUES
(1, 'S17vMC001', '2003-2004', 'Big data', '5 years', '50000', 'CSI 2', '2019-03-01', 'Hello', '2019', '10486-76706-10th.pdf', '0', 1, NULL, NULL, NULL, NULL, NULL),
(2, 'S17vMC001', '1995-1996', 'Big data', '5 years', '50000', 'CSI 2', '2019-03-02', 'Hello', '2019-03', '24198-76706-10th.pdf', '0', 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vmc_fac_glc`
--

CREATE TABLE `vmc_fac_glc` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `gltitle1` varchar(50) DEFAULT NULL,
  `gldays1` int(3) DEFAULT NULL,
  `glfrom1` date NOT NULL,
  `glto1` date NOT NULL,
  `gldate1` date NOT NULL,
  `gltopic1` varchar(50) DEFAULT NULL,
  `glorg1` varchar(50) DEFAULT NULL,
  `glplace1` varchar(50) DEFAULT NULL,
  `glpic1` varchar(100) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL,
  `conname1` varchar(30) DEFAULT NULL,
  `contitle1` varchar(50) DEFAULT NULL,
  `conorg1` varchar(50) DEFAULT NULL,
  `condays1` int(3) DEFAULT NULL,
  `confrom1` date NOT NULL,
  `conto1` date NOT NULL,
  `condate1` date NOT NULL,
  `conlevel1` varchar(20) DEFAULT NULL,
  `conpdf1` varchar(100) DEFAULT NULL,
  `concer1` varchar(100) DEFAULT NULL,
  `conkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vmc_fac_member`
--

CREATE TABLE `vmc_fac_member` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `memberid1` varchar(30) DEFAULT NULL,
  `validity1` varchar(20) DEFAULT NULL,
  `pic1` varchar(100) DEFAULT NULL,
  `memkey` int(1) DEFAULT NULL,
  `res1` varchar(50) DEFAULT NULL,
  `level1` varchar(20) DEFAULT NULL,
  `reskey` int(1) DEFAULT NULL,
  `aname1` varchar(50) DEFAULT NULL,
  `aissue1` varchar(10) DEFAULT NULL,
  `amy1` varchar(7) DEFAULT NULL,
  `acer1` varchar(100) DEFAULT NULL,
  `awakey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vmc_fac_resg`
--

CREATE TABLE `vmc_fac_resg` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `supid` varchar(20) DEFAULT NULL,
  `numsch` int(2) NOT NULL,
  `reg` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` varchar(10) NOT NULL,
  `cyear` varchar(20) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `tit` varchar(100) NOT NULL,
  `j_sup` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vmc_fac_resg`
--

INSERT INTO `vmc_fac_resg` (`id`, `sid`, `uname`, `supid`, `numsch`, `reg`, `name`, `year`, `cyear`, `spec`, `tit`, `j_sup`) VALUES
(1, 'S17vMC001', 'Anna', '4578', 0, '4561', 'ghjf', '2015', '2018', 'dgfthngjnx', 'seryhthjdtyhai', NULL);

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
(1, '1987-1988', 55, 'anna', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '1993-1994', 54, 'anna', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '1992-1993', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vv_fac`
--

CREATE TABLE `vv_fac` (
  `sid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `age` int(4) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob1` bigint(10) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `mstatus` varchar(5) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `relegion` varchar(30) NOT NULL,
  `comunity` varchar(10) NOT NULL,
  `place` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `aadharno` bigint(12) NOT NULL,
  `panno` varchar(10) NOT NULL,
  `passport` varchar(20) DEFAULT NULL,
  `blood` varchar(5) NOT NULL,
  `doj` date NOT NULL,
  `designation` varchar(50) NOT NULL,
  `mob2` bigint(10) DEFAULT NULL,
  `dept` varchar(50) NOT NULL,
  `uploadpic` varchar(100) NOT NULL,
  `aadharpic` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `dor` date DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `app_order` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vv_fac`
--

INSERT INTO `vv_fac` (`sid`, `name`, `dob`, `age`, `gender`, `email`, `mob1`, `fname`, `mname`, `mstatus`, `sname`, `relegion`, `comunity`, `place`, `city`, `district`, `state`, `country`, `pincode`, `address`, `paddress`, `aadharno`, `panno`, `passport`, `blood`, `doj`, `designation`, `mob2`, `dept`, `uploadpic`, `aadharpic`, `password`, `status`, `dor`, `reason`, `app_order`) VALUES
('S02vv008', 'ramki', '1996-06-25', 23, 'male', 'lilly_swamy@yahoo.co.in', 9874561230, 'jayaraman', 'bagiya lakhsmi', 'n', '', 'Hindu', 'bc', 'Aachamangalam', 'Bargur', 'krishnagiri', 'Tamil Nadu', 'India', '635104', 's/o albart amman theru 2nd cross,kandhikuppam.', 's/o albart amman theru 2nd cross,kandhikuppam.', 656478349890, 'ABSPL4660L', '8794561230', 'O+ve', '2002-02-22', 'Prof', 9487819140, 'vv', '53126-pizigani_1367_chart_1mb.jpeg', '11938-76706-10th.pdf', '9890', NULL, NULL, NULL, '22895-76706-10th.pdf'),
('S14vv005', 'Ram', '2012-02-21', 7, 'male', 'vijoad661@gmail.com', 9874561230, 'ramesh', 'rani', 'n', '', 'Hindu', 'Bargur', 'MGR NAGAR', 'Hosur', 'Kgiri', '', 'Aruba', '635126', '123,the', '123,the', 987456128521, 'OIYUP8564L', '8794561230', 'b+ve', '2014-12-02', 'Prof', 8056865990, 'vv', '5094-pizigani_1367_chart_1mb.jpeg', '57955-76706-10th.pdf', '8521', NULL, NULL, NULL, '19185-76706-10th.pdf'),
('S14vv006', 'Ram', '1991-05-08', 28, 'male', 'vijoad661@gmail.com', 9874561230, 'ramesh', 'rani', 'y', '', 'Hindu', 'Hosur', 'Amman street', 'Hosur', 'krishnagiri', 'Oberoesterreich', 'Austria', '635126', '123,the', '123,the', 987456128521, 'OIYUP8584L', '8794561230', 'b+ve', '2014-10-05', 'Prof', 7894585230, 'vv', '17923-download.jpeg', '56417-76706-10th.pdf', '8521', NULL, NULL, NULL, NULL),
('S19vv011', 'Ram', '2019-02-06', 0, 'male', 'vijoad661@gmail.com', 9487819140, 'ramesh', 'rani', 'n', '', 'Hindu', 'Hosur', 'New ASTC Hudco', 'kandhikuppam', 'Kgiri', 'New South Wales', 'Australia', '635104', 's/o albart amman theru 2nd cross,kandhikuppam.', 's/o albart amman theru 2nd cross,kandhikuppam.', 987456128521, 'OIYUP8564L', '8794561230', 'b+ve', '2019-01-30', 'Prof', 7894561230, 'vv', '70998-02-512.png', '34524-download.jpeg', '8521', NULL, NULL, NULL, ''),
('S95vv009', 'CSI', '1995-07-08', 24, 'male', 'vijoad661@gmail.com', 9874561230, 'ramesh', 'rani', 'n', '', 'Hindu', 'bc', 'MGR NAGAR', 'Hosur', 'Kgiri', 'Bilasuvar Rayonu', 'Azerbaijan', '635126', '123,the', '123,the', 656478349777, 'OIYUP8564L', '8794561230', 'b+ve', '1995-04-05', 'Prof', 8056865990, 'vv', '69652-pizigani_1367_chart_1mb.jpeg', '50542-02-512.png', '9777', NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `vv_fac_attorg`
--

CREATE TABLE `vv_fac_attorg` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `attcategory1` varchar(20) DEFAULT NULL,
  `atttitle1` varchar(50) DEFAULT NULL,
  `attdays1` int(3) DEFAULT NULL,
  `attfrom1` date NOT NULL,
  `attto1` date NOT NULL,
  `attdate1` date NOT NULL,
  `attorg1` varchar(50) DEFAULT NULL,
  `attplace1` varchar(50) DEFAULT NULL,
  `attlevel1` varchar(20) DEFAULT NULL,
  `attcer1` varchar(100) DEFAULT NULL,
  `attkey` int(1) DEFAULT NULL,
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
-- Dumping data for table `vv_fac_attorg`
--

INSERT INTO `vv_fac_attorg` (`id`, `sid`, `ayear`, `attcategory1`, `atttitle1`, `attdays1`, `attfrom1`, `attto1`, `attdate1`, `attorg1`, `attplace1`, `attlevel1`, `attcer1`, `attkey`, `orgcategory1`, `orgtitle1`, `orgfun1`, `orgdays1`, `orgfrom1`, `orgto1`, `orgdate1`, `orgres1`, `orgpar1`, `orglevel1`, `orgcer1`, `orgkey`) VALUES
(1, 'S02vv008', '2004-2005', 'sdp', 'sooftware disigine', 1, '0000-00-00', '0000-00-00', '2005-05-12', 'infosys', 'bengalore', 'state', '15137-img2.jpg', 1, 'fdp', 'web development', 'csi', 1, '0000-00-00', '0000-00-00', '2005-02-12', 'Shiva', 50, 'state', '41660-img2.jpg', 1),
(2, 'S02vv008', '2003-2004', 'sdp', 'sooftware disigine', 1, '0000-00-00', '0000-00-00', '2004-05-12', 'infosys', 'bengalore', 'state', '78908-img2.jpg', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(3, 'S14vv005', '1997-1998', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'seminar', 'web development', 'csi', 1, '0000-00-00', '0000-00-00', '1998-04-05', 'Shiva', 50, 'national', '45440-img2.jpg', 1),
(4, 'S14vv005', '1990-1991', 'workshop', 'sooftware disigine', 1, '0000-00-00', '0000-00-00', '1991-05-04', 'infosys', 'bengalore', 'national', '34727-img2.jpg', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(5, 'S02vv008', '2001-2002', 'fdp', 'sooftware disigine', 1, '0000-00-00', '0000-00-00', '2002-05-12', 'infosys', 'bengalore', 'district', '56423-img1.jpg', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(6, 'S02vv008', '1982-1983', 'training', 'sooftware disigine', 1, '0000-00-00', '0000-00-00', '1983-03-23', 'infosys', 'bengalore', 'national', '59894-76706-10th.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(7, 'S02vv008', '1991-1992', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'workshop', 'web development', 'csi', 2, '1991-08-06', '1991-08-07', '0000-00-00', 'Shiva', 50, 'national', '47127-76706-10th.pdf', 1),
(8, 'S95vv009', '2017-2018', 'seminar', 'sooftware disigine', 1, '0000-00-00', '0000-00-00', '2018-04-03', 'infosys', 'bengalore', 'state', '55549-11938-76706-10th.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(9, 'S02vv008', '2011-2012', 'seminar', 'sooftware disigine', 1, '0000-00-00', '0000-00-00', '2011-08-05', 'infosys', 'bengalore', 'state', '87366-57731-76706-10th.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(10, 'S02vv008', '2011-2012', 'seminar', 'sooftware disigine', 1, '0000-00-00', '0000-00-00', '2012-05-04', 'infosys', 'bengalore', 'national', '87153-57731-76706-10th.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(11, 'S02vv008', '2011-2012', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'fdp', 'web development', 'csi', 1, '0000-00-00', '0000-00-00', '2011-10-08', 'Shiva', 50, 'state', '65874-9135-aer.jpg', 1),
(12, 'S02vv008', '2011-2012', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'fdp', 'web development', 'csi', 1, '0000-00-00', '0000-00-00', '2012-05-08', 'Shiva', 50, 'state', '91331-9135-aer.jpg', 1),
(13, 'S14vv005', '1987-1988', 'seminar', 'sooftware disigine', 1, '0000-00-00', '0000-00-00', '1987-08-05', 'infosys', 'bengalore', 'district', '11128-76706-10th.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(14, 'S14vv005', '1975-1976', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'fdp', 'web development', 'csi', 1, '0000-00-00', '0000-00-00', '1975-08-05', 'Shiva', 50, 'state', '77964-download.jpeg', 1),
(15, 'S14vv005', '2018-2019', 'fdp', 'sooftware disigine', 2, '2018-06-05', '2018-06-07', '0000-00-00', 'infosys', 'bengalore', 'state', '20095-76706-10th.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(16, 'S14vv005', '2018-2019', 'fdp', 'sooftware disigine', 1, '0000-00-00', '0000-00-00', '2018-06-06', 'infosys', 'bengalore', 'national', '54094-76706-10th.pdf', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(17, 'S14vv005', '2018-2019', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'fdp', 'web development', 'csi', 2, '2018-06-05', '2018-06-07', '0000-00-00', 'Shiva', 50, 'state', '89999-download.jpeg', 1),
(18, 'S14vv005', '2018-2019', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'fdp', 'web development', 'csi', 1, '0000-00-00', '0000-00-00', '2018-06-05', 'Shiva', 50, 'state', '87181-download.jpeg', 1),
(19, 'S02vv008', '2012-2013', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'conference', 'web development', 'self', 1, '0000-00-00', '0000-00-00', '2012-12-12', 'Shiva', 50, 'national', '50376-250px-czech_passport_2006_mrz_data.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vv_fac_bkjrn`
--

CREATE TABLE `vv_fac_bkjrn` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `bk1` varchar(20) DEFAULT NULL,
  `bkcha1` varchar(50) DEFAULT NULL,
  `bkissn1` varchar(20) DEFAULT NULL,
  `bkmy1` varchar(7) DEFAULT NULL,
  `bkpub1` varchar(50) DEFAULT NULL,
  `bktype1` varchar(50) DEFAULT NULL,
  `bkkey` int(1) DEFAULT NULL,
  `jrntitle1` varchar(100) DEFAULT NULL,
  `jrnname1` varchar(50) DEFAULT NULL,
  `jrnvol1` varchar(20) DEFAULT NULL,
  `jrnissue1` varchar(20) DEFAULT NULL,
  `jrnissn1` varchar(20) DEFAULT NULL,
  `jrncategory1` varchar(20) DEFAULT NULL,
  `jrnlink1` varchar(100) DEFAULT NULL,
  `jrncit1` varchar(30) DEFAULT NULL,
  `jrnpdf1` varchar(100) DEFAULT NULL,
  `jrnimpact1` int(10) DEFAULT NULL,
  `jrnkey` int(1) DEFAULT NULL,
  `gl` varchar(200) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vv_fac_bkjrn`
--

INSERT INTO `vv_fac_bkjrn` (`id`, `sid`, `ayear`, `bk1`, `bkcha1`, `bkissn1`, `bkmy1`, `bkpub1`, `bktype1`, `bkkey`, `jrntitle1`, `jrnname1`, `jrnvol1`, `jrnissue1`, `jrnissn1`, `jrncategory1`, `jrnlink1`, `jrncit1`, `jrnpdf1`, `jrnimpact1`, `jrnkey`, `gl`, `glkey`) VALUES
(1, 'S02vv008', '2000-2001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Web Technology', '2', '3', '23415678', 'ugc', 'fdhdfghjxghx', '34', '48068-hello.pdf', 35436, 1, 'tyyjutdyjudt', 0),
(2, 'S95vv009', '2003-2004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ABC', 'Web Technology', '2', '3', '23415678', 'ugc', 'fdhdfghjxghx', '34', '22148-76706-10th.pdf', 35436, 1, NULL, 0),
(3, 'S95vv009', '2002-2003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'wer', 'Web Technology', '2', '3', '23415678', 'ugc', 'fdhdfghjxghx', '34', '7551-76706-10th.pdf', 35436, 1, NULL, 0),
(4, 'S02vv008', '2011-2012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ABC', 'Web Technology', '2', '3', '3565', 'ugc', 'fdhdfghjxghx', '34', '77437-15234-76706-10th.pdf', 35436, 1, 'ydtrytsdytsd', 0),
(5, 'S14vv005', '1997-1998', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ABC', 'Web Technology', '2', '3', '3565', 'ugc', 'fdhdfghjxghx', '34', '25220-76706-10th.pdf', 35436, 1, NULL, 0),
(7, 'S14vv005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'www.my google link.in', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vv_fac_edu`
--

CREATE TABLE `vv_fac_edu` (
  `sid` varchar(30) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `sboard` varchar(10) DEFAULT NULL,
  `syear` int(4) DEFAULT NULL,
  `spercentage` int(4) DEFAULT NULL,
  `scertificate` varchar(100) DEFAULT NULL,
  `skey` int(1) DEFAULT NULL,
  `s2name` varchar(50) DEFAULT NULL,
  `s2board` varchar(10) DEFAULT NULL,
  `s2branch` varchar(50) DEFAULT NULL,
  `s2year` int(4) DEFAULT NULL,
  `s2percentage` int(4) DEFAULT NULL,
  `s2certificate` varchar(100) DEFAULT NULL,
  `s2key` int(1) DEFAULT NULL,
  `dname` varchar(50) DEFAULT NULL,
  `dboard` varchar(10) DEFAULT NULL,
  `ddegree` varchar(50) DEFAULT NULL,
  `dmode` varchar(10) DEFAULT NULL,
  `dyear` int(4) DEFAULT NULL,
  `dpercentage` int(4) DEFAULT NULL,
  `dcertificate` varchar(100) DEFAULT NULL,
  `dkey` int(1) DEFAULT NULL,
  `d1name` varchar(50) DEFAULT NULL,
  `d1board` varchar(10) DEFAULT NULL,
  `d1degree` varchar(50) DEFAULT NULL,
  `d1mode` varchar(10) DEFAULT NULL,
  `d1year` int(4) DEFAULT NULL,
  `d1percentage` int(4) DEFAULT NULL,
  `d1certificate` varchar(100) DEFAULT NULL,
  `d1key` int(1) DEFAULT NULL,
  `d2name` varchar(50) DEFAULT NULL,
  `d2board` varchar(10) DEFAULT NULL,
  `d2degree` varchar(50) DEFAULT NULL,
  `d2mode` varchar(10) DEFAULT NULL,
  `d2year` int(4) DEFAULT NULL,
  `d2percentage` int(4) DEFAULT NULL,
  `d2certificate` varchar(100) DEFAULT NULL,
  `d2key` int(1) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `uuniversity` varchar(50) DEFAULT NULL,
  `udegree` varchar(50) DEFAULT NULL,
  `ubranch` varchar(50) DEFAULT NULL,
  `umode` varchar(10) DEFAULT NULL,
  `uyear` int(4) DEFAULT NULL,
  `upercentage` int(4) DEFAULT NULL,
  `ucertificate` varchar(100) DEFAULT NULL,
  `ukey` int(1) DEFAULT NULL,
  `u1name` varchar(50) DEFAULT NULL,
  `u1university` varchar(50) DEFAULT NULL,
  `u1degree` varchar(50) DEFAULT NULL,
  `u1branch` varchar(50) DEFAULT NULL,
  `u1mode` varchar(10) DEFAULT NULL,
  `u1year` int(4) DEFAULT NULL,
  `u1percentage` int(4) DEFAULT NULL,
  `u1certificate` varchar(100) DEFAULT NULL,
  `u1key` int(1) DEFAULT NULL,
  `u2name` varchar(50) DEFAULT NULL,
  `u2university` varchar(50) DEFAULT NULL,
  `u2degree` varchar(50) DEFAULT NULL,
  `u2branch` varchar(50) DEFAULT NULL,
  `u2mode` varchar(10) DEFAULT NULL,
  `u2year` int(4) DEFAULT NULL,
  `u2percentage` int(4) DEFAULT NULL,
  `u2certificate` varchar(100) DEFAULT NULL,
  `u2key` int(1) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `puniversity` varchar(50) DEFAULT NULL,
  `pdegree` varchar(50) DEFAULT NULL,
  `pbranch` varchar(50) DEFAULT NULL,
  `pmode` varchar(10) DEFAULT NULL,
  `pyear` int(4) DEFAULT NULL,
  `ppercentage` int(4) DEFAULT NULL,
  `pcertificate` varchar(100) DEFAULT NULL,
  `pkey` int(1) DEFAULT NULL,
  `p1name` varchar(50) DEFAULT NULL,
  `p1university` varchar(50) DEFAULT NULL,
  `p1degree` varchar(50) DEFAULT NULL,
  `p1branch` varchar(50) DEFAULT NULL,
  `p1mode` varchar(10) DEFAULT NULL,
  `p1year` int(4) DEFAULT NULL,
  `p1percentage` int(4) DEFAULT NULL,
  `p1certificate` varchar(100) DEFAULT NULL,
  `p1key` int(1) DEFAULT NULL,
  `p2name` varchar(50) DEFAULT NULL,
  `p2university` varchar(50) DEFAULT NULL,
  `p2degree` varchar(50) DEFAULT NULL,
  `p2branch` varchar(50) DEFAULT NULL,
  `p2mode` varchar(10) DEFAULT NULL,
  `p2year` int(4) DEFAULT NULL,
  `p2percentage` int(4) DEFAULT NULL,
  `p2certificate` varchar(100) DEFAULT NULL,
  `p2key` int(1) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `muniversity` varchar(50) DEFAULT NULL,
  `mspec` varchar(50) DEFAULT NULL,
  `mbranch` varchar(50) DEFAULT NULL,
  `mmode` varchar(10) DEFAULT NULL,
  `myear` int(4) DEFAULT NULL,
  `mpercentage` int(4) DEFAULT NULL,
  `mthesis` varchar(50) DEFAULT NULL,
  `mguide` varchar(30) DEFAULT NULL,
  `mcertificate` varchar(100) DEFAULT NULL,
  `mkey` int(1) DEFAULT NULL,
  `phname` varchar(50) DEFAULT NULL,
  `phuniversity` varchar(50) DEFAULT NULL,
  `phspec` varchar(50) DEFAULT NULL,
  `phbranch` varchar(50) DEFAULT NULL,
  `phmode` varchar(10) DEFAULT NULL,
  `phyreg` varchar(7) DEFAULT NULL,
  `phyear` varchar(7) DEFAULT NULL,
  `phthesis` varchar(100) DEFAULT NULL,
  `phguide` varchar(30) DEFAULT NULL,
  `phcertificate` varchar(100) DEFAULT NULL,
  `phkey` int(1) DEFAULT NULL,
  `ph1name` varchar(50) DEFAULT NULL,
  `ph1university` varchar(50) DEFAULT NULL,
  `ph1spec` varchar(50) DEFAULT NULL,
  `ph1branch` varchar(50) DEFAULT NULL,
  `ph1mode` varchar(10) DEFAULT NULL,
  `ph1yreg` varchar(7) DEFAULT NULL,
  `ph1year` varchar(7) DEFAULT NULL,
  `ph1thesis` varchar(100) DEFAULT NULL,
  `ph1guide` varchar(30) DEFAULT NULL,
  `ph1certificate` varchar(100) DEFAULT NULL,
  `ph1key` int(1) DEFAULT NULL,
  `ph2name` varchar(50) DEFAULT NULL,
  `ph2university` varchar(50) DEFAULT NULL,
  `ph2spec` varchar(50) DEFAULT NULL,
  `ph2branch` varchar(50) DEFAULT NULL,
  `ph2mode` varchar(10) DEFAULT NULL,
  `ph2yreg` varchar(7) DEFAULT NULL,
  `ph2year` varchar(7) DEFAULT NULL,
  `ph2thesis` varchar(100) DEFAULT NULL,
  `ph2guide` varchar(30) DEFAULT NULL,
  `ph2certificate` varchar(100) DEFAULT NULL,
  `ph2key` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vv_fac_edu`
--

INSERT INTO `vv_fac_edu` (`sid`, `sname`, `sboard`, `syear`, `spercentage`, `scertificate`, `skey`, `s2name`, `s2board`, `s2branch`, `s2year`, `s2percentage`, `s2certificate`, `s2key`, `dname`, `dboard`, `ddegree`, `dmode`, `dyear`, `dpercentage`, `dcertificate`, `dkey`, `d1name`, `d1board`, `d1degree`, `d1mode`, `d1year`, `d1percentage`, `d1certificate`, `d1key`, `d2name`, `d2board`, `d2degree`, `d2mode`, `d2year`, `d2percentage`, `d2certificate`, `d2key`, `uname`, `uuniversity`, `udegree`, `ubranch`, `umode`, `uyear`, `upercentage`, `ucertificate`, `ukey`, `u1name`, `u1university`, `u1degree`, `u1branch`, `u1mode`, `u1year`, `u1percentage`, `u1certificate`, `u1key`, `u2name`, `u2university`, `u2degree`, `u2branch`, `u2mode`, `u2year`, `u2percentage`, `u2certificate`, `u2key`, `pname`, `puniversity`, `pdegree`, `pbranch`, `pmode`, `pyear`, `ppercentage`, `pcertificate`, `pkey`, `p1name`, `p1university`, `p1degree`, `p1branch`, `p1mode`, `p1year`, `p1percentage`, `p1certificate`, `p1key`, `p2name`, `p2university`, `p2degree`, `p2branch`, `p2mode`, `p2year`, `p2percentage`, `p2certificate`, `p2key`, `mname`, `muniversity`, `mspec`, `mbranch`, `mmode`, `myear`, `mpercentage`, `mthesis`, `mguide`, `mcertificate`, `mkey`, `phname`, `phuniversity`, `phspec`, `phbranch`, `phmode`, `phyreg`, `phyear`, `phthesis`, `phguide`, `phcertificate`, `phkey`, `ph1name`, `ph1university`, `ph1spec`, `ph1branch`, `ph1mode`, `ph1yreg`, `ph1year`, `ph1thesis`, `ph1guide`, `ph1certificate`, `ph1key`, `ph2name`, `ph2university`, `ph2spec`, `ph2branch`, `ph2mode`, `ph2yreg`, `ph2year`, `ph2thesis`, `ph2guide`, `ph2certificate`, `ph2key`) VALUES
('', '', 'state', 2000, 60, '9135-aer.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S02vv008', 'NATIONAL HIGHER SECONDARY SCHOOL', 'icbsc', 2000, 60, '15234-76706-10th.pdf', 1, 'vallalar higher sec school', 'icbsc', 'maths', 2002, 89, '33749-76706-10th.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 'Thiruvalluvar University', 'B.Sc', 'Computer Science', 'regular', 2004, 75, '39287-76706-10th.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ACE', 'Anna University', 'MCA', 'Computer Science', 'regular', 2007, 75, '84757-76706-10th.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('S95vv009', 'NATIONAL HIGHER SECONDARY SCHOOL', 'state', 2000, 60, '57731-76706-10th.pdf', 1, 'vallalar higher sec school', 'state', 'maths', 2002, 62, '98687-76706-10th.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 'Thiruvalluvar University', 'B.Sc', 'Computer Science', 'regular', 2005, 75, '68123-76706-10th.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ACE', 'Anna University', 'MCA', 'Computer Science', 'regular', 2007, 75, '82632-76706-10th.pdf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vv_fac_exp`
--

CREATE TABLE `vv_fac_exp` (
  `sid` varchar(30) NOT NULL,
  `clg1` varchar(50) DEFAULT NULL,
  `clgdesg1` varchar(30) DEFAULT NULL,
  `clgdoj1` date DEFAULT NULL,
  `clgdor1` date DEFAULT NULL,
  `clgreason1` varchar(100) DEFAULT NULL,
  `clgcir1` varchar(100) DEFAULT NULL,
  `clgkey` int(1) DEFAULT NULL,
  `pol1` varchar(50) DEFAULT NULL,
  `poldesg1` varchar(30) DEFAULT NULL,
  `poldoj1` date DEFAULT NULL,
  `poldor1` date DEFAULT NULL,
  `polreason1` varchar(100) DEFAULT NULL,
  `pol2` varchar(50) NOT NULL,
  `poldesg2` varchar(50) NOT NULL,
  `poldoj2` date NOT NULL,
  `polcir2` date NOT NULL,
  `poldor2` date NOT NULL,
  `polreason2` varchar(100) NOT NULL,
  `pol3` varchar(50) NOT NULL,
  `poldesg3` varchar(50) NOT NULL,
  `poldoj3` date NOT NULL,
  `polcir3` date NOT NULL,
  `poldor3` date NOT NULL,
  `polreason3` varchar(100) NOT NULL,
  `pol4` varchar(50) NOT NULL,
  `poldesg4` varchar(50) NOT NULL,
  `poldoj4` date NOT NULL,
  `polcir4` date NOT NULL,
  `poldor4` date NOT NULL,
  `polreason4` varchar(100) NOT NULL,
  `polcir1` varchar(100) DEFAULT NULL,
  `polkey` int(1) DEFAULT NULL,
  `sch1` varchar(50) DEFAULT NULL,
  `schdesg1` varchar(30) DEFAULT NULL,
  `schdoj1` date DEFAULT NULL,
  `schdor1` date DEFAULT NULL,
  `schreason1` varchar(100) DEFAULT NULL,
  `schcir1` varchar(100) DEFAULT NULL,
  `schkey` int(1) DEFAULT NULL,
  `ind1` varchar(50) DEFAULT NULL,
  `inddesg1` varchar(30) DEFAULT NULL,
  `indnature1` varchar(30) DEFAULT NULL,
  `inddoj1` date DEFAULT NULL,
  `inddor1` date DEFAULT NULL,
  `indreason1` varchar(100) DEFAULT NULL,
  `indcir1` varchar(100) DEFAULT NULL,
  `indkey` int(1) DEFAULT NULL,
  `ot1` varchar(50) DEFAULT NULL,
  `otdesg1` varchar(30) DEFAULT NULL,
  `otnature1` varchar(30) DEFAULT NULL,
  `otdoj1` date DEFAULT NULL,
  `otdor1` date DEFAULT NULL,
  `otreason1` varchar(100) DEFAULT NULL,
  `ot2` varchar(50) NOT NULL,
  `otdesg2` varchar(50) NOT NULL,
  `otnature2` varchar(50) NOT NULL,
  `otdoj2` date NOT NULL,
  `otdor2` date NOT NULL,
  `otreason2` varchar(100) NOT NULL,
  `otcir2` date NOT NULL,
  `otcir1` varchar(100) DEFAULT NULL,
  `otkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vv_fac_exp`
--

INSERT INTO `vv_fac_exp` (`sid`, `clg1`, `clgdesg1`, `clgdoj1`, `clgdor1`, `clgreason1`, `clgcir1`, `clgkey`, `pol1`, `poldesg1`, `poldoj1`, `poldor1`, `polreason1`, `pol2`, `poldesg2`, `poldoj2`, `polcir2`, `poldor2`, `polreason2`, `pol3`, `poldesg3`, `poldoj3`, `polcir3`, `poldor3`, `polreason3`, `pol4`, `poldesg4`, `poldoj4`, `polcir4`, `poldor4`, `polreason4`, `polcir1`, `polkey`, `sch1`, `schdesg1`, `schdoj1`, `schdor1`, `schreason1`, `schcir1`, `schkey`, `ind1`, `inddesg1`, `indnature1`, `inddoj1`, `inddor1`, `indreason1`, `indcir1`, `indkey`, `ot1`, `otdesg1`, `otnature1`, `otdoj1`, `otdor1`, `otreason1`, `ot2`, `otdesg2`, `otnature2`, `otdoj2`, `otdor2`, `otreason2`, `otcir2`, `otcir1`, `otkey`) VALUES
('S02vv008', 'PSG', 'Prof', '2012-03-12', '2013-03-12', 'I dont Care', '0', 1, 'IRT', 'Prof', '1996-06-26', '1995-06-26', 'I dont Care', 'IRT', 'Prof', '1996-06-26', '0000-00-00', '1997-06-26', 'I dont Care', 'IRT', 'Prof', '1995-08-07', '0000-00-00', '1996-05-04', 'I dont Care', 'IRT', 'Prof', '1999-08-04', '0000-00-00', '2000-05-04', 'I dont Care', '29135-76706-10th.pdf', 4, 'gbhhs', 'Prof', '2012-06-26', '2013-06-26', 'TRAINING PERIOD', '78640-download.jpeg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rdgw', 'ewgfv', 'efv', '2013-03-12', '2014-03-12', 'TRAINING PERIOD', 'rdgw', 'Prof', 'code', '2013-04-04', '2015-04-04', 'TRAINING PERIOD', '0000-00-00', '26584-it.png', 2);

-- --------------------------------------------------------

--
-- Table structure for table `vv_fac_funpat`
--

CREATE TABLE `vv_fac_funpat` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `titleofpro1` varchar(50) DEFAULT NULL,
  `duration1` varchar(30) DEFAULT NULL,
  `amountsan1` varchar(20) DEFAULT NULL,
  `agency1` varchar(20) DEFAULT NULL,
  `startdate1` date DEFAULT NULL,
  `copiname1` varchar(20) DEFAULT NULL,
  `year1` varchar(7) DEFAULT NULL,
  `order1` varchar(200) NOT NULL,
  `uc1` varchar(200) NOT NULL,
  `funkey` int(1) DEFAULT NULL,
  `nameofpat1` varchar(50) DEFAULT NULL,
  `title1` varchar(30) DEFAULT NULL,
  `fileno1` varchar(20) DEFAULT NULL,
  `pat_cer` varchar(200) DEFAULT NULL,
  `patkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vv_fac_funpat`
--

INSERT INTO `vv_fac_funpat` (`id`, `sid`, `ayear`, `titleofpro1`, `duration1`, `amountsan1`, `agency1`, `startdate1`, `copiname1`, `year1`, `order1`, `uc1`, `funkey`, `nameofpat1`, `title1`, `fileno1`, `pat_cer`, `patkey`) VALUES
(1, 'S05vv004', '2003-2004', 'Big data', '5 years', '50000', 'CSI', '2004-02-22', 'Hello', '2010-04', '0', '0', 1, NULL, NULL, NULL, NULL, NULL),
(2, 'S02vv008', '1990-1991', 'Big data', '5 years', '50000', 'CSI', '1990-02-11', 'Hello HRU', '2019', '92182-download.jpeg', '0', 1, NULL, NULL, NULL, NULL, NULL),
(3, 'S02vv008', '1999-2000', 'Big data', '5 years', '50000', 'CSI', '1999-02-05', 'Hello HRU', '2001-05', '90099-69654-adimg.jpg', '75197-69654-adimg.jpg', 1, 'New Tech', 'Big Data', '18759462AD', NULL, 1),
(4, 'S02vv008', '2003-2004', 'Big data', '5 years', '5000', 'CSI 2', '2005-06-05', 'Hello', '0', '67614-69654-adimg.jpg', '0', 1, NULL, NULL, NULL, NULL, NULL),
(5, 'S02vv008', '2002-2003', 'Big data', '5 years', '50000', 'CSI', '2006-05-06', 'Hello', '0', '9056-69654-adimg.jpg', '0', 1, NULL, NULL, NULL, NULL, NULL),
(6, 'S02vv008', '2004-2005', 'Big data', '5 years', '50000', 'CSI 2', '1996-05-31', 'Hello', '0', '19884-69654-adimg.jpg', '0', 1, NULL, NULL, NULL, NULL, NULL),
(7, 'S02vv008', '2005-2006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, 'New Tech', 'Big Data1', '18759462AD', NULL, 1),
(8, 'S02vv008', '2001-2002', 'Big data', '5 years', '50000', 'CSI', '2001-06-05', 'Hello', '0', '70849-76706-10th.pdf', '0', 1, NULL, NULL, NULL, NULL, NULL),
(9, 'S02vv008', '2000-2001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, 'New Tech', 'Big Data', '18759462AD', NULL, 1),
(10, 'S02vv008', '2011-2012', 'Big data', '5 years', '50000', 'CSI 2', '2011-06-05', 'Hello', '2019', '86438-15234-76706-10th.pdf', '13709-57731-76706-10th.pdf', 1, NULL, NULL, NULL, NULL, NULL),
(11, 'S02vv008', '2011-2012', 'Big data', '5 years', '50000', 'IEEE', '2012-09-06', 'Hello', '2015', '70813-57731-76706-10th.pdf', '80295-57731-76706-10th.pdf', 1, NULL, NULL, NULL, NULL, NULL),
(12, 'S02vv008', '2011-2012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, 'New Tech', 'Big Data', '18759462AD', NULL, 1),
(13, 'S02vv008', '2011-2012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, 'New Tech', 'Big Data', '18759462AD', NULL, 1),
(14, 'S02vv008', '2011-2012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, 'New Tech', 'Big Data', '18759462AD', 'final_file', 1),
(15, 'S02vv008', '2011-2012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, 'New Tech', 'Big Data', '18759462AD', '31048-57731-76706-10th.pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vv_fac_glc`
--

CREATE TABLE `vv_fac_glc` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `gltitle1` varchar(50) DEFAULT NULL,
  `gldays1` int(3) DEFAULT NULL,
  `glfrom1` date NOT NULL,
  `glto1` date NOT NULL,
  `gldate1` date NOT NULL,
  `gltopic1` varchar(50) DEFAULT NULL,
  `glorg1` varchar(50) DEFAULT NULL,
  `glplace1` varchar(50) DEFAULT NULL,
  `glpic1` varchar(100) DEFAULT NULL,
  `glkey` int(1) DEFAULT NULL,
  `conname1` varchar(30) DEFAULT NULL,
  `contitle1` varchar(50) DEFAULT NULL,
  `conorg1` varchar(50) DEFAULT NULL,
  `condays1` int(3) DEFAULT NULL,
  `confrom1` date NOT NULL,
  `conto1` date NOT NULL,
  `condate1` date NOT NULL,
  `conlevel1` varchar(20) DEFAULT NULL,
  `conpdf1` varchar(100) DEFAULT NULL,
  `concer1` varchar(100) DEFAULT NULL,
  `conname2` varchar(20) NOT NULL,
  `contitle2` varchar(50) NOT NULL,
  `conorg2` varchar(50) NOT NULL,
  `condays2` int(3) NOT NULL,
  `confrom2` date NOT NULL,
  `conto2` date NOT NULL,
  `condate2` date NOT NULL,
  `conlevel2` varchar(20) NOT NULL,
  `concer2` varchar(100) NOT NULL,
  `conkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vv_fac_glc`
--

INSERT INTO `vv_fac_glc` (`id`, `sid`, `ayear`, `gltitle1`, `gldays1`, `glfrom1`, `glto1`, `gldate1`, `gltopic1`, `glorg1`, `glplace1`, `glpic1`, `glkey`, `conname1`, `contitle1`, `conorg1`, `condays1`, `confrom1`, `conto1`, `condate1`, `conlevel1`, `conpdf1`, `concer1`, `conname2`, `contitle2`, `conorg2`, `condays2`, `confrom2`, `conto2`, `condate2`, `conlevel2`, `concer2`, `conkey`) VALUES
(1, 'S02vv008', '2003-2004', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'gbgj', ' bhj', ' ghjbu', 2, '2004-02-12', '2004-02-13', '0000-00-00', 'state', NULL, '48641-img1.jpg', '', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 1),
(2, 'S02vv008', '1987-1988', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'gbgj', ' bhj', ' ghjbu', 1, '0000-00-00', '0000-00-00', '1988-02-12', 'international', NULL, '2522-img3.jpg', '', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 1),
(3, 'S02vv008', '1996-1997', 'weqrtwerytuiv wertwertb ert', 1, '0000-00-00', '0000-00-00', '1997-04-02', 'QMK.;', 'XCVHNCVGN', 'DFHDFGH', '0', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, '', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', NULL),
(4, 'S02vv008', '1991-1992', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'gbgj', ' bhj', ' ghjbu', 1, '0000-00-00', '0000-00-00', '1991-06-05', 'national', NULL, '68438-biomed.png', '', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 1),
(5, 'S02vv008', '2002-2003', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'gbgj', ' bhj', ' ghjbu', 1, '0000-00-00', '0000-00-00', '2003-05-12', 'international', NULL, '26563-76706-10th.pdf', '', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 1),
(6, 'S02vv008', '1999-2000', 'weqrtwerytuiv wertwertb ert', 2, '2000-03-02', '2000-03-03', '0000-00-00', 'QMK.;', 'XCVHNCVGN', 'DFHDFGH', '0', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, '', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', NULL),
(7, 'S95vv009', '1987-1988', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'gbgj', ' bhj', ' ghjbu', 2, '1988-03-23', '1988-03-25', '0000-00-00', 'district', NULL, '33291-10926-76706-10th.pdf', '', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 1),
(8, 'S02vv008', '2011-2012', 'weqrtwerytuiv wertwertb ert', 1, '0000-00-00', '0000-00-00', '2012-05-25', 'QMK.;', 'XCVHNCVGN', 'DFHDFGH', '0', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, '', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', NULL),
(9, 'S02vv008', '2011-2012', 'weqrtwerytuiv wertwertb ert', 1, '0000-00-00', '0000-00-00', '2012-03-06', 'QMK.;', 'XCVHNCVGN', 'DFHDFGH', '0', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, '', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', NULL),
(10, 'S02vv008', '2011-2012', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'gbgj', ' bhj', ' ghjbu', 1, '0000-00-00', '0000-00-00', '2011-12-05', 'state', NULL, '59640-15234-76706-10th.pdf', '', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 1),
(11, 'S02vv008', '2011-2012', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'gbgj', ' bhj', ' ghjbu', 1, '0000-00-00', '0000-00-00', '2011-12-05', 'national', NULL, '77970-15234-76706-10th.pdf', '', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 1),
(12, 'S14vv005', '1987-1988', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'gbgj', ' bhj', ' ghjbu', 1, '0000-00-00', '0000-00-00', '1988-05-25', 'international', NULL, '97068-beece.png', '', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 1),
(13, 'S14vv005', '1987-1988', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'gbgj', ' bhj', ' ghjbu', 1, '0000-00-00', '0000-00-00', '1988-05-05', 'district', NULL, '76909-76706-10th.pdf', '', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 1),
(14, 'S14vv005', '1990-1991', 'weqrtwerytuiv wertwertb ert', 1, '0000-00-00', '0000-00-00', '1990-08-05', 'QMK.;', 'XCVHNCVGN', 'DFHDFGH', '0', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, '', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', NULL),
(15, 'S14vv005', '1991-1992', 'weqrtwerytuiv wertwertb ert', 1, '0000-00-00', '0000-00-00', '1991-09-19', 'QMK.;', 'XCVHNCVGN', 'DFHDFGH', '0', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, '', '', '', 0, '0000-00-00', '0000-00-00', '0000-00-00', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vv_fac_member`
--

CREATE TABLE `vv_fac_member` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) NOT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `memberid1` varchar(30) DEFAULT NULL,
  `validity1` varchar(20) DEFAULT NULL,
  `pic1` varchar(100) DEFAULT NULL,
  `memkey` int(1) DEFAULT NULL,
  `res1` varchar(50) DEFAULT NULL,
  `level1` varchar(20) DEFAULT NULL,
  `reskey` int(1) DEFAULT NULL,
  `aname1` varchar(50) DEFAULT NULL,
  `aissue1` varchar(10) DEFAULT NULL,
  `amy1` varchar(7) DEFAULT NULL,
  `aname2` varchar(50) NOT NULL,
  `acer2` varchar(30) NOT NULL,
  `aissue2` varchar(30) NOT NULL,
  `amy2` varchar(20) NOT NULL,
  `acer1` varchar(100) DEFAULT NULL,
  `awakey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vv_fac_member`
--

INSERT INTO `vv_fac_member` (`id`, `sid`, `ayear`, `name1`, `memberid1`, `validity1`, `pic1`, `memkey`, `res1`, `level1`, `reskey`, `aname1`, `aissue1`, `amy1`, `aname2`, `acer2`, `aissue2`, `amy2`, `acer1`, `awakey`) VALUES
(1, 'S05vv004', '1987-1988', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'csi', 'csi', '2012-04', '', '', '', '', '0', 1),
(2, 'S05vv004', '2001-2002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'csi', 'csi', '2012-08', 'csi', '58902-pizigani_1367_chart_1mb.', 'csi', '2012-07', '0', 2),
(3, 'S05vv004', '2000-2001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'csi', 'csi', '2001-05', '', '', '', '', '84666-pizigani_1367_chart_1mb.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vv_fac_ot_qual`
--

CREATE TABLE `vv_fac_ot_qual` (
  `sid` varchar(10) NOT NULL,
  `name_qual` varchar(50) NOT NULL,
  `year_com` int(10) NOT NULL,
  `cer` varchar(100) NOT NULL,
  `id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vv_fac_ot_qual`
--

INSERT INTO `vv_fac_ot_qual` (`sid`, `name_qual`, `year_com`, `cer`, `id`) VALUES
('S14vv005', 'NET', 2015, '73173-76706-10th.pdf', 1),
('S14vv005', 'Ram', 2019, '52391-76706-10th.pdf', 2);

-- --------------------------------------------------------

--
-- Table structure for table `vv_fac_resg`
--

CREATE TABLE `vv_fac_resg` (
  `id` int(5) NOT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `supid` varchar(20) DEFAULT NULL,
  `numsch` int(2) NOT NULL,
  `reg` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` varchar(10) NOT NULL,
  `cyear` varchar(20) DEFAULT NULL,
  `spec` varchar(50) NOT NULL,
  `tit` varchar(100) NOT NULL,
  `j_sup` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vv_fac_resg`
--

INSERT INTO `vv_fac_resg` (`id`, `sid`, `uname`, `supid`, `numsch`, `reg`, `name`, `year`, `cyear`, `spec`, `tit`, `j_sup`) VALUES
(1, 'S05vv004', 'Anna', '4578', 0, '4561', 'ghjf', '2015', '2018', 'dgfthngjnx', 'dzxgrfvbd', NULL),
(2, 'S05vv004', 'periyar', '45789', 0, '4561', 'ghjf', '2015', 'discontinued', 'dgfthngjnx', 'dzxgrfvbd', NULL),
(3, 'S05vv004', 'Anna', '4578', 0, '3456', 'sam', '2019', 'ongoing', 'drsygtrh', 'seryhthjdty', NULL),
(4, 'S02vv008', 'periyar', '45785', 0, '4561', 'ghjf', '2015', '2018', 'dgfthngjnx', 'dzxgrfvbd', NULL),
(5, 'S02vv008', 'periyar', '45785', 0, '3456', 'Ram', '2019', 'discontinued', 'drsygtrh', 'seryhthjdty', NULL),
(6, 'S02vv008', 'periyar', '45iu', 0, '4561', 'ghjf', '2015', '2018', 'dgfthngjnx', 'dzxgrfvbd', NULL),
(7, 'S14vv005', 'Anna', '45789', 0, '4561', 'Latha', '2012', '2014', 'Software Realibility', 'dzxgrfvbd', NULL),
(8, 'S14vv005', 'periyar', '45', 0, '4561', 'Dhina', '2014', 'ongoing', 'Cloud', 'Cloud', NULL),
(9, 'S02vv008', 'dffgdfg', '565', 0, '3453', 'rte', '2013', '2019', 'dsfsd', 'ghfh', NULL),
(10, 'S02vv008', 'dffgdfg', '565', 0, '234', 'dfsd', '2014', 'ongoing', 'fgdf', 'fgfd', NULL),
(11, 'S14vv005', 'periyar', '45', 0, '3456', 'CSI1', 'IV', 'ongoing', 'drsygtrh', 'seryhthjdty', 'ram');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `aer_dept`
--
ALTER TABLE `aer_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aer_fac`
--
ALTER TABLE `aer_fac`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `aer_fac_attorg`
--
ALTER TABLE `aer_fac_attorg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aer_fac_bkjrn`
--
ALTER TABLE `aer_fac_bkjrn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aer_fac_edu`
--
ALTER TABLE `aer_fac_edu`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `aer_fac_exp`
--
ALTER TABLE `aer_fac_exp`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `aer_fac_funpat`
--
ALTER TABLE `aer_fac_funpat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aer_fac_glc`
--
ALTER TABLE `aer_fac_glc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aer_fac_member`
--
ALTER TABLE `aer_fac_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aer_fac_ot_qual`
--
ALTER TABLE `aer_fac_ot_qual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aer_fac_resg`
--
ALTER TABLE `aer_fac_resg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aer_org`
--
ALTER TABLE `aer_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arc_dept`
--
ALTER TABLE `arc_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arc_fac`
--
ALTER TABLE `arc_fac`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `arc_fac_attorg`
--
ALTER TABLE `arc_fac_attorg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arc_fac_bkjrn`
--
ALTER TABLE `arc_fac_bkjrn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arc_fac_edu`
--
ALTER TABLE `arc_fac_edu`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `arc_fac_exp`
--
ALTER TABLE `arc_fac_exp`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `arc_fac_funpat`
--
ALTER TABLE `arc_fac_funpat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arc_fac_glc`
--
ALTER TABLE `arc_fac_glc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arc_fac_member`
--
ALTER TABLE `arc_fac_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arc_fac_ot_qual`
--
ALTER TABLE `arc_fac_ot_qual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arc_fac_resg`
--
ALTER TABLE `arc_fac_resg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arc_org`
--
ALTER TABLE `arc_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bio_dept`
--
ALTER TABLE `bio_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bio_fac`
--
ALTER TABLE `bio_fac`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `bio_fac_attorg`
--
ALTER TABLE `bio_fac_attorg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bio_fac_bkjrn`
--
ALTER TABLE `bio_fac_bkjrn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bio_fac_edu`
--
ALTER TABLE `bio_fac_edu`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `bio_fac_exp`
--
ALTER TABLE `bio_fac_exp`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `bio_fac_funpat`
--
ALTER TABLE `bio_fac_funpat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bio_fac_glc`
--
ALTER TABLE `bio_fac_glc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bio_fac_member`
--
ALTER TABLE `bio_fac_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bio_fac_ot_qual`
--
ALTER TABLE `bio_fac_ot_qual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bio_fac_resg`
--
ALTER TABLE `bio_fac_resg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bio_org`
--
ALTER TABLE `bio_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_dept`
--
ALTER TABLE `bit_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_fac`
--
ALTER TABLE `bit_fac`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `bit_fac_attorg`
--
ALTER TABLE `bit_fac_attorg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_fac_bkjrn`
--
ALTER TABLE `bit_fac_bkjrn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_fac_edu`
--
ALTER TABLE `bit_fac_edu`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `bit_fac_exp`
--
ALTER TABLE `bit_fac_exp`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `bit_fac_funpat`
--
ALTER TABLE `bit_fac_funpat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_fac_glc`
--
ALTER TABLE `bit_fac_glc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_fac_member`
--
ALTER TABLE `bit_fac_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_fac_ot_qual`
--
ALTER TABLE `bit_fac_ot_qual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_fac_resg`
--
ALTER TABLE `bit_fac_resg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bit_org`
--
ALTER TABLE `bit_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bme_dept`
--
ALTER TABLE `bme_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bme_fac`
--
ALTER TABLE `bme_fac`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `bme_fac_attorg`
--
ALTER TABLE `bme_fac_attorg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bme_fac_bkjrn`
--
ALTER TABLE `bme_fac_bkjrn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bme_fac_edu`
--
ALTER TABLE `bme_fac_edu`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `bme_fac_exp`
--
ALTER TABLE `bme_fac_exp`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `bme_fac_funpat`
--
ALTER TABLE `bme_fac_funpat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bme_fac_glc`
--
ALTER TABLE `bme_fac_glc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bme_fac_member`
--
ALTER TABLE `bme_fac_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bme_fac_ot_qual`
--
ALTER TABLE `bme_fac_ot_qual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bme_fac_resg`
--
ALTER TABLE `bme_fac_resg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bme_org`
--
ALTER TABLE `bme_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `che_dept`
--
ALTER TABLE `che_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `che_fac`
--
ALTER TABLE `che_fac`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `che_fac_attorg`
--
ALTER TABLE `che_fac_attorg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `che_fac_bkjrn`
--
ALTER TABLE `che_fac_bkjrn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `che_fac_edu`
--
ALTER TABLE `che_fac_edu`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `che_fac_exp`
--
ALTER TABLE `che_fac_exp`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `che_fac_funpat`
--
ALTER TABLE `che_fac_funpat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `che_fac_glc`
--
ALTER TABLE `che_fac_glc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `che_fac_member`
--
ALTER TABLE `che_fac_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `che_fac_ot_qual`
--
ALTER TABLE `che_fac_ot_qual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `che_fac_resg`
--
ALTER TABLE `che_fac_resg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `che_org`
--
ALTER TABLE `che_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chm_dept`
--
ALTER TABLE `chm_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chm_fac`
--
ALTER TABLE `chm_fac`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `chm_fac_attorg`
--
ALTER TABLE `chm_fac_attorg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chm_fac_bkjrn`
--
ALTER TABLE `chm_fac_bkjrn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chm_fac_edu`
--
ALTER TABLE `chm_fac_edu`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `chm_fac_exp`
--
ALTER TABLE `chm_fac_exp`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `chm_fac_funpat`
--
ALTER TABLE `chm_fac_funpat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chm_fac_glc`
--
ALTER TABLE `chm_fac_glc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chm_fac_member`
--
ALTER TABLE `chm_fac_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chm_fac_ot_qual`
--
ALTER TABLE `chm_fac_ot_qual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chm_fac_resg`
--
ALTER TABLE `chm_fac_resg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chm_org`
--
ALTER TABLE `chm_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civ_dept`
--
ALTER TABLE `civ_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civ_fac`
--
ALTER TABLE `civ_fac`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `civ_fac_attorg`
--
ALTER TABLE `civ_fac_attorg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civ_fac_bkjrn`
--
ALTER TABLE `civ_fac_bkjrn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civ_fac_edu`
--
ALTER TABLE `civ_fac_edu`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `civ_fac_exp`
--
ALTER TABLE `civ_fac_exp`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `civ_fac_funpat`
--
ALTER TABLE `civ_fac_funpat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civ_fac_glc`
--
ALTER TABLE `civ_fac_glc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civ_fac_member`
--
ALTER TABLE `civ_fac_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civ_fac_ot_qual`
--
ALTER TABLE `civ_fac_ot_qual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civ_fac_resg`
--
ALTER TABLE `civ_fac_resg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civ_org`
--
ALTER TABLE `civ_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cse_dept`
--
ALTER TABLE `cse_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cse_fac`
--
ALTER TABLE `cse_fac`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `cse_fac_attorg`
--
ALTER TABLE `cse_fac_attorg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cse_fac_bkjrn`
--
ALTER TABLE `cse_fac_bkjrn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cse_fac_edu`
--
ALTER TABLE `cse_fac_edu`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `cse_fac_exp`
--
ALTER TABLE `cse_fac_exp`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `cse_fac_funpat`
--
ALTER TABLE `cse_fac_funpat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cse_fac_glc`
--
ALTER TABLE `cse_fac_glc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cse_fac_member`
--
ALTER TABLE `cse_fac_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cse_fac_ot_qual`
--
ALTER TABLE `cse_fac_ot_qual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cse_fac_resg`
--
ALTER TABLE `cse_fac_resg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cse_org`
--
ALTER TABLE `cse_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dept_info`
--
ALTER TABLE `dept_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dup_fac`
--
ALTER TABLE `dup_fac`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `dup_fac_attorg`
--
ALTER TABLE `dup_fac_attorg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dup_fac_bkjrn`
--
ALTER TABLE `dup_fac_bkjrn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dup_fac_edu`
--
ALTER TABLE `dup_fac_edu`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `dup_fac_exp`
--
ALTER TABLE `dup_fac_exp`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `dup_fac_funpat`
--
ALTER TABLE `dup_fac_funpat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dup_fac_glc`
--
ALTER TABLE `dup_fac_glc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dup_fac_member`
--
ALTER TABLE `dup_fac_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dup_fac_ot_qual`
--
ALTER TABLE `dup_fac_ot_qual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dup_fac_resg`
--
ALTER TABLE `dup_fac_resg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dup_org`
--
ALTER TABLE `dup_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ece_dept`
--
ALTER TABLE `ece_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ece_fac`
--
ALTER TABLE `ece_fac`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `ece_fac_attorg`
--
ALTER TABLE `ece_fac_attorg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ece_fac_bkjrn`
--
ALTER TABLE `ece_fac_bkjrn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ece_fac_edu`
--
ALTER TABLE `ece_fac_edu`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `ece_fac_exp`
--
ALTER TABLE `ece_fac_exp`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `ece_fac_funpat`
--
ALTER TABLE `ece_fac_funpat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ece_fac_glc`
--
ALTER TABLE `ece_fac_glc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ece_fac_member`
--
ALTER TABLE `ece_fac_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ece_fac_ot_qual`
--
ALTER TABLE `ece_fac_ot_qual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ece_fac_resg`
--
ALTER TABLE `ece_fac_resg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ece_org`
--
ALTER TABLE `ece_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eee_dept`
--
ALTER TABLE `eee_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eee_fac`
--
ALTER TABLE `eee_fac`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `eee_fac_attorg`
--
ALTER TABLE `eee_fac_attorg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eee_fac_bkjrn`
--
ALTER TABLE `eee_fac_bkjrn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eee_fac_edu`
--
ALTER TABLE `eee_fac_edu`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `eee_fac_exp`
--
ALTER TABLE `eee_fac_exp`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `eee_fac_funpat`
--
ALTER TABLE `eee_fac_funpat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eee_fac_glc`
--
ALTER TABLE `eee_fac_glc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eee_fac_member`
--
ALTER TABLE `eee_fac_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eee_fac_ot_qual`
--
ALTER TABLE `eee_fac_ot_qual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eee_fac_resg`
--
ALTER TABLE `eee_fac_resg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eee_org`
--
ALTER TABLE `eee_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eie_dept`
--
ALTER TABLE `eie_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eie_fac`
--
ALTER TABLE `eie_fac`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `eie_fac_attorg`
--
ALTER TABLE `eie_fac_attorg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eie_fac_bkjrn`
--
ALTER TABLE `eie_fac_bkjrn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eie_fac_edu`
--
ALTER TABLE `eie_fac_edu`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `eie_fac_exp`
--
ALTER TABLE `eie_fac_exp`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `eie_fac_funpat`
--
ALTER TABLE `eie_fac_funpat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eie_fac_glc`
--
ALTER TABLE `eie_fac_glc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eie_fac_member`
--
ALTER TABLE `eie_fac_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eie_fac_ot_qual`
--
ALTER TABLE `eie_fac_ot_qual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eie_fac_resg`
--
ALTER TABLE `eie_fac_resg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eie_org`
--
ALTER TABLE `eie_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eng_dept`
--
ALTER TABLE `eng_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eng_fac`
--
ALTER TABLE `eng_fac`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `eng_fac_attorg`
--
ALTER TABLE `eng_fac_attorg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eng_fac_bkjrn`
--
ALTER TABLE `eng_fac_bkjrn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eng_fac_edu`
--
ALTER TABLE `eng_fac_edu`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `eng_fac_exp`
--
ALTER TABLE `eng_fac_exp`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `eng_fac_funpat`
--
ALTER TABLE `eng_fac_funpat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eng_fac_glc`
--
ALTER TABLE `eng_fac_glc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eng_fac_member`
--
ALTER TABLE `eng_fac_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eng_fac_ot_qual`
--
ALTER TABLE `eng_fac_ot_qual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eng_fac_resg`
--
ALTER TABLE `eng_fac_resg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eng_org`
--
ALTER TABLE `eng_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_dept`
--
ALTER TABLE `mat_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_fac`
--
ALTER TABLE `mat_fac`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `mat_fac_attorg`
--
ALTER TABLE `mat_fac_attorg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_fac_bkjrn`
--
ALTER TABLE `mat_fac_bkjrn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_fac_edu`
--
ALTER TABLE `mat_fac_edu`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `mat_fac_exp`
--
ALTER TABLE `mat_fac_exp`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `mat_fac_funpat`
--
ALTER TABLE `mat_fac_funpat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_fac_glc`
--
ALTER TABLE `mat_fac_glc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_fac_member`
--
ALTER TABLE `mat_fac_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_fac_ot_qual`
--
ALTER TABLE `mat_fac_ot_qual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_fac_resg`
--
ALTER TABLE `mat_fac_resg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_org`
--
ALTER TABLE `mat_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mba_fac`
--
ALTER TABLE `mba_fac`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `mba_fac_attorg`
--
ALTER TABLE `mba_fac_attorg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mba_fac_bkjrn`
--
ALTER TABLE `mba_fac_bkjrn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mba_fac_edu`
--
ALTER TABLE `mba_fac_edu`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `mba_fac_exp`
--
ALTER TABLE `mba_fac_exp`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `mba_fac_funpat`
--
ALTER TABLE `mba_fac_funpat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mba_fac_glc`
--
ALTER TABLE `mba_fac_glc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mba_fac_member`
--
ALTER TABLE `mba_fac_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mba_fac_ot_qual`
--
ALTER TABLE `mba_fac_ot_qual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mba_fac_resg`
--
ALTER TABLE `mba_fac_resg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mba_org`
--
ALTER TABLE `mba_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mca_dept`
--
ALTER TABLE `mca_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mca_fac`
--
ALTER TABLE `mca_fac`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `mca_fac_attorg`
--
ALTER TABLE `mca_fac_attorg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mca_fac_bkjrn`
--
ALTER TABLE `mca_fac_bkjrn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mca_fac_edu`
--
ALTER TABLE `mca_fac_edu`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `mca_fac_exp`
--
ALTER TABLE `mca_fac_exp`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `mca_fac_funpat`
--
ALTER TABLE `mca_fac_funpat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mca_fac_glc`
--
ALTER TABLE `mca_fac_glc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mca_fac_member`
--
ALTER TABLE `mca_fac_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mca_fac_ot_qual`
--
ALTER TABLE `mca_fac_ot_qual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mca_fac_resg`
--
ALTER TABLE `mca_fac_resg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mca_org`
--
ALTER TABLE `mca_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mec_dept`
--
ALTER TABLE `mec_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mec_fac`
--
ALTER TABLE `mec_fac`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `mec_fac_attorg`
--
ALTER TABLE `mec_fac_attorg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mec_fac_bkjrn`
--
ALTER TABLE `mec_fac_bkjrn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mec_fac_edu`
--
ALTER TABLE `mec_fac_edu`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `mec_fac_exp`
--
ALTER TABLE `mec_fac_exp`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `mec_fac_funpat`
--
ALTER TABLE `mec_fac_funpat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mec_fac_glc`
--
ALTER TABLE `mec_fac_glc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mec_fac_member`
--
ALTER TABLE `mec_fac_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mec_fac_ot_qual`
--
ALTER TABLE `mec_fac_ot_qual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mec_fac_resg`
--
ALTER TABLE `mec_fac_resg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mec_org`
--
ALTER TABLE `mec_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phy_dept`
--
ALTER TABLE `phy_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phy_fac`
--
ALTER TABLE `phy_fac`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `phy_fac_attorg`
--
ALTER TABLE `phy_fac_attorg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phy_fac_bkjrn`
--
ALTER TABLE `phy_fac_bkjrn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phy_fac_edu`
--
ALTER TABLE `phy_fac_edu`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `phy_fac_exp`
--
ALTER TABLE `phy_fac_exp`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `phy_fac_funpat`
--
ALTER TABLE `phy_fac_funpat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phy_fac_glc`
--
ALTER TABLE `phy_fac_glc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phy_fac_member`
--
ALTER TABLE `phy_fac_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phy_fac_ot_qual`
--
ALTER TABLE `phy_fac_ot_qual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phy_fac_resg`
--
ALTER TABLE `phy_fac_resg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phy_org`
--
ALTER TABLE `phy_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vmc_dept`
--
ALTER TABLE `vmc_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vmc_fac`
--
ALTER TABLE `vmc_fac`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `vmc_fac_attorg`
--
ALTER TABLE `vmc_fac_attorg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vmc_fac_bkjrn`
--
ALTER TABLE `vmc_fac_bkjrn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vmc_fac_edu`
--
ALTER TABLE `vmc_fac_edu`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `vmc_fac_exp`
--
ALTER TABLE `vmc_fac_exp`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `vmc_fac_funpat`
--
ALTER TABLE `vmc_fac_funpat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vmc_fac_glc`
--
ALTER TABLE `vmc_fac_glc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vmc_fac_member`
--
ALTER TABLE `vmc_fac_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vmc_fac_resg`
--
ALTER TABLE `vmc_fac_resg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vmc_org`
--
ALTER TABLE `vmc_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vv_dept`
--
ALTER TABLE `vv_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vv_fac`
--
ALTER TABLE `vv_fac`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `vv_fac_attorg`
--
ALTER TABLE `vv_fac_attorg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vv_fac_bkjrn`
--
ALTER TABLE `vv_fac_bkjrn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vv_fac_edu`
--
ALTER TABLE `vv_fac_edu`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `vv_fac_exp`
--
ALTER TABLE `vv_fac_exp`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `vv_fac_funpat`
--
ALTER TABLE `vv_fac_funpat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vv_fac_glc`
--
ALTER TABLE `vv_fac_glc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vv_fac_member`
--
ALTER TABLE `vv_fac_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vv_fac_ot_qual`
--
ALTER TABLE `vv_fac_ot_qual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vv_fac_resg`
--
ALTER TABLE `vv_fac_resg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vv_org`
--
ALTER TABLE `vv_org`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aer_dept`
--
ALTER TABLE `aer_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aer_fac_attorg`
--
ALTER TABLE `aer_fac_attorg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aer_fac_bkjrn`
--
ALTER TABLE `aer_fac_bkjrn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aer_fac_funpat`
--
ALTER TABLE `aer_fac_funpat`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aer_fac_glc`
--
ALTER TABLE `aer_fac_glc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aer_fac_member`
--
ALTER TABLE `aer_fac_member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aer_fac_ot_qual`
--
ALTER TABLE `aer_fac_ot_qual`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aer_fac_resg`
--
ALTER TABLE `aer_fac_resg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aer_org`
--
ALTER TABLE `aer_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arc_dept`
--
ALTER TABLE `arc_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arc_fac_attorg`
--
ALTER TABLE `arc_fac_attorg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arc_fac_bkjrn`
--
ALTER TABLE `arc_fac_bkjrn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arc_fac_funpat`
--
ALTER TABLE `arc_fac_funpat`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arc_fac_glc`
--
ALTER TABLE `arc_fac_glc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arc_fac_member`
--
ALTER TABLE `arc_fac_member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `arc_fac_ot_qual`
--
ALTER TABLE `arc_fac_ot_qual`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arc_fac_resg`
--
ALTER TABLE `arc_fac_resg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arc_org`
--
ALTER TABLE `arc_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bio_dept`
--
ALTER TABLE `bio_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bio_fac_attorg`
--
ALTER TABLE `bio_fac_attorg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bio_fac_bkjrn`
--
ALTER TABLE `bio_fac_bkjrn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `bio_fac_funpat`
--
ALTER TABLE `bio_fac_funpat`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bio_fac_glc`
--
ALTER TABLE `bio_fac_glc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bio_fac_member`
--
ALTER TABLE `bio_fac_member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bio_fac_ot_qual`
--
ALTER TABLE `bio_fac_ot_qual`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bio_fac_resg`
--
ALTER TABLE `bio_fac_resg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bio_org`
--
ALTER TABLE `bio_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bit_dept`
--
ALTER TABLE `bit_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bit_fac_attorg`
--
ALTER TABLE `bit_fac_attorg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `bit_fac_bkjrn`
--
ALTER TABLE `bit_fac_bkjrn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bit_fac_funpat`
--
ALTER TABLE `bit_fac_funpat`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bit_fac_glc`
--
ALTER TABLE `bit_fac_glc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bit_fac_member`
--
ALTER TABLE `bit_fac_member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `bit_fac_ot_qual`
--
ALTER TABLE `bit_fac_ot_qual`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bit_fac_resg`
--
ALTER TABLE `bit_fac_resg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bit_org`
--
ALTER TABLE `bit_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bme_dept`
--
ALTER TABLE `bme_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bme_fac_attorg`
--
ALTER TABLE `bme_fac_attorg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bme_fac_bkjrn`
--
ALTER TABLE `bme_fac_bkjrn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bme_fac_funpat`
--
ALTER TABLE `bme_fac_funpat`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bme_fac_glc`
--
ALTER TABLE `bme_fac_glc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bme_fac_member`
--
ALTER TABLE `bme_fac_member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bme_fac_ot_qual`
--
ALTER TABLE `bme_fac_ot_qual`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bme_fac_resg`
--
ALTER TABLE `bme_fac_resg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bme_org`
--
ALTER TABLE `bme_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `che_dept`
--
ALTER TABLE `che_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `che_fac_attorg`
--
ALTER TABLE `che_fac_attorg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `che_fac_bkjrn`
--
ALTER TABLE `che_fac_bkjrn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `che_fac_funpat`
--
ALTER TABLE `che_fac_funpat`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `che_fac_glc`
--
ALTER TABLE `che_fac_glc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `che_fac_member`
--
ALTER TABLE `che_fac_member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `che_fac_ot_qual`
--
ALTER TABLE `che_fac_ot_qual`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `che_fac_resg`
--
ALTER TABLE `che_fac_resg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `che_org`
--
ALTER TABLE `che_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chm_dept`
--
ALTER TABLE `chm_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chm_fac_attorg`
--
ALTER TABLE `chm_fac_attorg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chm_fac_bkjrn`
--
ALTER TABLE `chm_fac_bkjrn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chm_fac_funpat`
--
ALTER TABLE `chm_fac_funpat`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chm_fac_glc`
--
ALTER TABLE `chm_fac_glc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chm_fac_member`
--
ALTER TABLE `chm_fac_member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chm_fac_ot_qual`
--
ALTER TABLE `chm_fac_ot_qual`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chm_fac_resg`
--
ALTER TABLE `chm_fac_resg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chm_org`
--
ALTER TABLE `chm_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `civ_dept`
--
ALTER TABLE `civ_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `civ_fac_attorg`
--
ALTER TABLE `civ_fac_attorg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `civ_fac_bkjrn`
--
ALTER TABLE `civ_fac_bkjrn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `civ_fac_funpat`
--
ALTER TABLE `civ_fac_funpat`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `civ_fac_glc`
--
ALTER TABLE `civ_fac_glc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `civ_fac_member`
--
ALTER TABLE `civ_fac_member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `civ_fac_ot_qual`
--
ALTER TABLE `civ_fac_ot_qual`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `civ_fac_resg`
--
ALTER TABLE `civ_fac_resg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `civ_org`
--
ALTER TABLE `civ_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cse_dept`
--
ALTER TABLE `cse_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cse_fac_attorg`
--
ALTER TABLE `cse_fac_attorg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cse_fac_bkjrn`
--
ALTER TABLE `cse_fac_bkjrn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cse_fac_funpat`
--
ALTER TABLE `cse_fac_funpat`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cse_fac_glc`
--
ALTER TABLE `cse_fac_glc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cse_fac_member`
--
ALTER TABLE `cse_fac_member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cse_fac_ot_qual`
--
ALTER TABLE `cse_fac_ot_qual`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cse_fac_resg`
--
ALTER TABLE `cse_fac_resg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cse_org`
--
ALTER TABLE `cse_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dept`
--
ALTER TABLE `dept`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `dept_info`
--
ALTER TABLE `dept_info`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dup_fac_attorg`
--
ALTER TABLE `dup_fac_attorg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dup_fac_bkjrn`
--
ALTER TABLE `dup_fac_bkjrn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dup_fac_funpat`
--
ALTER TABLE `dup_fac_funpat`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dup_fac_glc`
--
ALTER TABLE `dup_fac_glc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dup_fac_member`
--
ALTER TABLE `dup_fac_member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dup_fac_ot_qual`
--
ALTER TABLE `dup_fac_ot_qual`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dup_fac_resg`
--
ALTER TABLE `dup_fac_resg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dup_org`
--
ALTER TABLE `dup_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ece_dept`
--
ALTER TABLE `ece_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ece_fac_attorg`
--
ALTER TABLE `ece_fac_attorg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ece_fac_bkjrn`
--
ALTER TABLE `ece_fac_bkjrn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `ece_fac_funpat`
--
ALTER TABLE `ece_fac_funpat`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ece_fac_glc`
--
ALTER TABLE `ece_fac_glc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `ece_fac_member`
--
ALTER TABLE `ece_fac_member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `ece_fac_ot_qual`
--
ALTER TABLE `ece_fac_ot_qual`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ece_fac_resg`
--
ALTER TABLE `ece_fac_resg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ece_org`
--
ALTER TABLE `ece_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eee_dept`
--
ALTER TABLE `eee_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eee_fac_attorg`
--
ALTER TABLE `eee_fac_attorg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `eee_fac_bkjrn`
--
ALTER TABLE `eee_fac_bkjrn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `eee_fac_funpat`
--
ALTER TABLE `eee_fac_funpat`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eee_fac_glc`
--
ALTER TABLE `eee_fac_glc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `eee_fac_member`
--
ALTER TABLE `eee_fac_member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `eee_fac_ot_qual`
--
ALTER TABLE `eee_fac_ot_qual`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eee_fac_resg`
--
ALTER TABLE `eee_fac_resg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eee_org`
--
ALTER TABLE `eee_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eie_dept`
--
ALTER TABLE `eie_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eie_fac_attorg`
--
ALTER TABLE `eie_fac_attorg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `eie_fac_bkjrn`
--
ALTER TABLE `eie_fac_bkjrn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `eie_fac_funpat`
--
ALTER TABLE `eie_fac_funpat`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `eie_fac_glc`
--
ALTER TABLE `eie_fac_glc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `eie_fac_member`
--
ALTER TABLE `eie_fac_member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `eie_fac_ot_qual`
--
ALTER TABLE `eie_fac_ot_qual`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eie_fac_resg`
--
ALTER TABLE `eie_fac_resg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eie_org`
--
ALTER TABLE `eie_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eng_dept`
--
ALTER TABLE `eng_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eng_fac_attorg`
--
ALTER TABLE `eng_fac_attorg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eng_fac_bkjrn`
--
ALTER TABLE `eng_fac_bkjrn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eng_fac_funpat`
--
ALTER TABLE `eng_fac_funpat`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eng_fac_glc`
--
ALTER TABLE `eng_fac_glc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eng_fac_member`
--
ALTER TABLE `eng_fac_member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eng_fac_ot_qual`
--
ALTER TABLE `eng_fac_ot_qual`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eng_fac_resg`
--
ALTER TABLE `eng_fac_resg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eng_org`
--
ALTER TABLE `eng_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mat_dept`
--
ALTER TABLE `mat_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mat_fac_attorg`
--
ALTER TABLE `mat_fac_attorg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mat_fac_bkjrn`
--
ALTER TABLE `mat_fac_bkjrn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mat_fac_funpat`
--
ALTER TABLE `mat_fac_funpat`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mat_fac_glc`
--
ALTER TABLE `mat_fac_glc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mat_fac_member`
--
ALTER TABLE `mat_fac_member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mat_fac_ot_qual`
--
ALTER TABLE `mat_fac_ot_qual`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mat_fac_resg`
--
ALTER TABLE `mat_fac_resg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mat_org`
--
ALTER TABLE `mat_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mba_fac_attorg`
--
ALTER TABLE `mba_fac_attorg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mba_fac_bkjrn`
--
ALTER TABLE `mba_fac_bkjrn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mba_fac_funpat`
--
ALTER TABLE `mba_fac_funpat`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mba_fac_glc`
--
ALTER TABLE `mba_fac_glc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mba_fac_member`
--
ALTER TABLE `mba_fac_member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mba_fac_ot_qual`
--
ALTER TABLE `mba_fac_ot_qual`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mba_fac_resg`
--
ALTER TABLE `mba_fac_resg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mba_org`
--
ALTER TABLE `mba_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mca_dept`
--
ALTER TABLE `mca_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mca_fac_attorg`
--
ALTER TABLE `mca_fac_attorg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `mca_fac_bkjrn`
--
ALTER TABLE `mca_fac_bkjrn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mca_fac_funpat`
--
ALTER TABLE `mca_fac_funpat`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mca_fac_glc`
--
ALTER TABLE `mca_fac_glc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mca_fac_member`
--
ALTER TABLE `mca_fac_member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mca_fac_ot_qual`
--
ALTER TABLE `mca_fac_ot_qual`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mca_fac_resg`
--
ALTER TABLE `mca_fac_resg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mca_org`
--
ALTER TABLE `mca_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mec_dept`
--
ALTER TABLE `mec_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mec_fac_attorg`
--
ALTER TABLE `mec_fac_attorg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mec_fac_bkjrn`
--
ALTER TABLE `mec_fac_bkjrn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mec_fac_funpat`
--
ALTER TABLE `mec_fac_funpat`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mec_fac_glc`
--
ALTER TABLE `mec_fac_glc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mec_fac_member`
--
ALTER TABLE `mec_fac_member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mec_fac_ot_qual`
--
ALTER TABLE `mec_fac_ot_qual`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mec_fac_resg`
--
ALTER TABLE `mec_fac_resg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mec_org`
--
ALTER TABLE `mec_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phy_dept`
--
ALTER TABLE `phy_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phy_fac_attorg`
--
ALTER TABLE `phy_fac_attorg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phy_fac_bkjrn`
--
ALTER TABLE `phy_fac_bkjrn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phy_fac_funpat`
--
ALTER TABLE `phy_fac_funpat`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phy_fac_glc`
--
ALTER TABLE `phy_fac_glc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phy_fac_member`
--
ALTER TABLE `phy_fac_member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phy_fac_ot_qual`
--
ALTER TABLE `phy_fac_ot_qual`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phy_fac_resg`
--
ALTER TABLE `phy_fac_resg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phy_org`
--
ALTER TABLE `phy_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vmc_dept`
--
ALTER TABLE `vmc_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vmc_fac_attorg`
--
ALTER TABLE `vmc_fac_attorg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vmc_fac_bkjrn`
--
ALTER TABLE `vmc_fac_bkjrn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vmc_fac_funpat`
--
ALTER TABLE `vmc_fac_funpat`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vmc_fac_glc`
--
ALTER TABLE `vmc_fac_glc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vmc_fac_member`
--
ALTER TABLE `vmc_fac_member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vmc_fac_resg`
--
ALTER TABLE `vmc_fac_resg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vmc_org`
--
ALTER TABLE `vmc_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vv_dept`
--
ALTER TABLE `vv_dept`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vv_fac_attorg`
--
ALTER TABLE `vv_fac_attorg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `vv_fac_bkjrn`
--
ALTER TABLE `vv_fac_bkjrn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vv_fac_funpat`
--
ALTER TABLE `vv_fac_funpat`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vv_fac_glc`
--
ALTER TABLE `vv_fac_glc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vv_fac_member`
--
ALTER TABLE `vv_fac_member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vv_fac_ot_qual`
--
ALTER TABLE `vv_fac_ot_qual`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vv_fac_resg`
--
ALTER TABLE `vv_fac_resg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vv_org`
--
ALTER TABLE `vv_org`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
