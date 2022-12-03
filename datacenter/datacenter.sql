-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2019 at 11:22 AM
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
  `reason` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aer_fac`
--

INSERT INTO `aer_fac` (`sid`, `name`, `dob`, `age`, `gender`, `email`, `mob1`, `fname`, `mname`, `mstatus`, `sname`, `relegion`, `comunity`, `place`, `city`, `district`, `state`, `country`, `pincode`, `address`, `paddress`, `aadharno`, `panno`, `passport`, `blood`, `doj`, `designation`, `mob2`, `dept`, `uploadpic`, `aadharpic`, `password`, `status`, `dor`, `reason`) VALUES
('S13AER001', 'Ram', '1982-06-22', 37, 'male', 'ramki2696@gmail.com', 9943320479, 'ramesh', 'bagiya lakhsmi', 'n', '', 'Hindu', 'BC', 'kandhikuppam', 'kandhikuppam', 'krishnagiri', 'Tamil Nadu', 'India', '635104', 's/o albart amman theru 2nd cross,kandhikuppam.', 's/o albart amman theru 2nd cross,kandhikuppam.', 987456127890, 'OIYUP8584L', '8794561230', 'O+ve', '2013-02-07', 'Prof', 9874561230, 'AER', '77912-1096-512.png', '33925-code.png', '7890', NULL, NULL, NULL);

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

--
-- Dumping data for table `aer_fac_attorg`
--

INSERT INTO `aer_fac_attorg` (`id`, `sid`, `ayear`, `attcategory1`, `atttitle1`, `attdays1`, `attfrom1`, `attto1`, `attdate1`, `attorg1`, `attplace1`, `attlevel1`, `attcer1`, `attkey`, `orgcategory1`, `orgtitle1`, `orgfun1`, `orgdays1`, `orgfrom1`, `orgto1`, `orgdate1`, `orgres1`, `orgpar1`, `orglevel1`, `orgcer1`, `orgkey`) VALUES
(1, 'S13AER001', '2008-2009', 'sdp', 'sooftware disigine', 2, '2008-06-10', '2008-06-12', '0000-00-00', 'infosys', 'bengalore', 'national', '12085-250px-czech_passport_2006_mrz_data.jpg', 1, 'fdp', 'web development', 'csi', 2, '2008-06-06', '2008-06-08', '0000-00-00', 'Shiva', 50, 'international', '60181-250px-czech_passport_2006_mrz_data.jpg', 1),
(2, 'S13AER001', '2007-2008', 'seminar', 'sooftware disigine', 1, '0000-00-00', '0000-00-00', '2007-06-12', 'infosys', 'bengalore', 'international', '7534-250px-czech_passport_2006_mrz_data.jpg', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL);

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
  `bk2` varchar(20) NOT NULL,
  `bkcha2` varchar(50) NOT NULL,
  `bkissn2` varchar(50) NOT NULL,
  `bkmy2` varchar(7) NOT NULL,
  `bkpub2` date NOT NULL,
  `bktype2` varchar(100) NOT NULL,
  `bkkey` int(1) DEFAULT NULL,
  `jrnname1` varchar(50) DEFAULT NULL,
  `jrnvol1` varchar(20) DEFAULT NULL,
  `jrnissue1` varchar(20) DEFAULT NULL,
  `jrnissn1` varchar(20) DEFAULT NULL,
  `jrncategory1` varchar(20) DEFAULT NULL,
  `jrnlink1` varchar(100) DEFAULT NULL,
  `jrncit1` varchar(30) DEFAULT NULL,
  `jrnimpact1` int(10) DEFAULT NULL,
  `jrnkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aer_fac_bkjrn`
--

INSERT INTO `aer_fac_bkjrn` (`id`, `sid`, `ayear`, `bk1`, `bkcha1`, `bkissn1`, `bkmy1`, `bkpub1`, `bktype1`, `bk2`, `bkcha2`, `bkissn2`, `bkmy2`, `bkpub2`, `bktype2`, `bkkey`, `jrnname1`, `jrnvol1`, `jrnissue1`, `jrnissn1`, `jrncategory1`, `jrnlink1`, `jrncit1`, `jrnimpact1`, `jrnkey`) VALUES
(1, 'S13AER001', '2007-2008', 'htgd', 'hdhj', '345', '2008-06', 'ram', 'erdfgvh', 'htgd', 'hdhj', '345', '2007-04', '0000-00-00', 'erdfgvh', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'S13AER001', '2006-2007', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '0000-00-00', '', NULL, 'Web Technology', '2', '3', '23415678', 'ugc', 'fdhdfghjxghx', '34', 35436, 1);

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

--
-- Dumping data for table `aer_fac_edu`
--

INSERT INTO `aer_fac_edu` (`sid`, `sname`, `sboard`, `syear`, `spercentage`, `scertificate`, `skey`, `s2name`, `s2board`, `s2branch`, `s2year`, `s2percentage`, `s2certificate`, `s2key`, `dname`, `dboard`, `ddegree`, `dmode`, `dyear`, `dpercentage`, `dcertificate`, `dkey`, `d1name`, `d1board`, `d1degree`, `d1mode`, `d1year`, `d1percentage`, `d1certificate`, `d1key`, `d2name`, `d2board`, `d2degree`, `d2mode`, `d2year`, `d2percentage`, `d2certificate`, `d2key`, `uname`, `uuniversity`, `udegree`, `ubranch`, `umode`, `uyear`, `upercentage`, `ucertificate`, `ukey`, `u1name`, `u1university`, `u1degree`, `u1branch`, `u1mode`, `u1year`, `u1percentage`, `u1certificate`, `u1key`, `u2name`, `u2university`, `u2degree`, `u2branch`, `u2mode`, `u2year`, `u2percentage`, `u2certificate`, `u2key`, `pname`, `puniversity`, `pdegree`, `pbranch`, `pmode`, `pyear`, `ppercentage`, `pcertificate`, `pkey`, `p1name`, `p1university`, `p1degree`, `p1branch`, `p1mode`, `p1year`, `p1percentage`, `p1certificate`, `p1key`, `p2name`, `p2university`, `p2degree`, `p2branch`, `p2mode`, `p2year`, `p2percentage`, `p2certificate`, `p2key`, `mname`, `muniversity`, `mspec`, `mbranch`, `mmode`, `myear`, `mpercentage`, `mthesis`, `mguide`, `mcertificate`, `mkey`, `phname`, `phuniversity`, `phspec`, `phbranch`, `phmode`, `phyreg`, `phyear`, `phthesis`, `phguide`, `phcertificate`, `phkey`, `ph1name`, `ph1university`, `ph1spec`, `ph1branch`, `ph1mode`, `ph1yreg`, `ph1year`, `ph1thesis`, `ph1guide`, `ph1certificate`, `ph1key`, `ph2name`, `ph2university`, `ph2spec`, `ph2branch`, `ph2mode`, `ph2yreg`, `ph2year`, `ph2thesis`, `ph2guide`, `ph2certificate`, `ph2key`) VALUES
('S13AER001', 'NATIONAL HIGHER SECONDARY SCHOOL', 'state', 1989, 60, '35463-1096-512.png', 1, 'vallalar higher sec school', 'state', 'maths', 1992, 89, '4061-1096-512.png', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SHC', 'Thiruvalluvar University', 'B.Sc', 'Computer Science', 'regular', 2005, 75, '10049-1096-512.png', 1, 'DBC', 'Thiruvalluvar University', 'B.Sc', 'Computer Science', 'regular', 2010, 75, '53909-code.png', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ACE', 'Anna University', 'MCA', 'Computer Science', 'regular', 2013, 9, '87501-script_code-512.png', 1, 'pmc', 'Anna University', 'MTECH', 'Computer Science', 'regular', 2015, 75, '62082-img3.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ACE', 'Anna University', 'Big Data', 'Computer Science', 'regular', 2008, 60, 'Big Data with SQL', 'Rajaesh', '11294-250px-czech_passport_2006_mrz_data.jpg', 1, 'ACE', 'Anna University', 'Big Data', 'Computer Science', 'regular', '2000-02', '2005-03', 'Data Analyse', 'Mahesh', '87879-30s-style-wedding-invitations-border-designs-for-invitation-design-download.jpg', 1, 'ACE', 'Anna University', 'Big Data', 'Computer Science', 'parttime', '2009-04', '2012-05', 'Data Analyse', 'Mahesh', '62870-img3.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
  `clgkey` int(1) DEFAULT NULL,
  `pol1` varchar(50) DEFAULT NULL,
  `poldesg1` varchar(30) DEFAULT NULL,
  `poldoj1` date DEFAULT NULL,
  `poldor1` date DEFAULT NULL,
  `polreason1` varchar(100) DEFAULT NULL,
  `polkey` int(1) DEFAULT NULL,
  `sch1` varchar(50) DEFAULT NULL,
  `schdesg1` varchar(30) DEFAULT NULL,
  `schdoj1` date DEFAULT NULL,
  `schdor1` date DEFAULT NULL,
  `schreason1` varchar(100) DEFAULT NULL,
  `schkey` int(1) DEFAULT NULL,
  `ind1` varchar(50) DEFAULT NULL,
  `inddesg1` varchar(30) DEFAULT NULL,
  `indnature1` varchar(30) DEFAULT NULL,
  `inddoj1` date DEFAULT NULL,
  `inddor1` date DEFAULT NULL,
  `indreason1` varchar(100) DEFAULT NULL,
  `indkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aer_fac_exp`
--

INSERT INTO `aer_fac_exp` (`sid`, `clg1`, `clgdesg1`, `clgdoj1`, `clgdor1`, `clgreason1`, `clgkey`, `pol1`, `poldesg1`, `poldoj1`, `poldor1`, `polreason1`, `polkey`, `sch1`, `schdesg1`, `schdoj1`, `schdor1`, `schreason1`, `schkey`, `ind1`, `inddesg1`, `indnature1`, `inddoj1`, `inddor1`, `indreason1`, `indkey`) VALUES
('S13AER001', 'PSG', 'Prof', '2000-07-13', '2002-02-13', 'I dont Care', 1, 'IRT', 'Prof', '2003-03-13', '2005-02-09', 'TRAINING PERIOD', 1, 'gbhhs', 'teacher', '2005-02-09', '2007-10-24', 'I dont Care', 1, '2/612-30,MGR NAGAR, HOSUR', 'Prof', 'code', '2007-02-07', '2010-03-19', 'I dont Care', 1);

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
  `funkey` int(1) DEFAULT NULL,
  `nameofpat1` varchar(50) DEFAULT NULL,
  `title1` varchar(30) DEFAULT NULL,
  `fileno1` varchar(20) DEFAULT NULL,
  `patkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aer_fac_funpat`
--

INSERT INTO `aer_fac_funpat` (`id`, `sid`, `ayear`, `titleofpro1`, `duration1`, `amountsan1`, `agency1`, `startdate1`, `copiname1`, `year1`, `funkey`, `nameofpat1`, `title1`, `fileno1`, `patkey`) VALUES
(1, 'S13AER001', '2006-2007', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'New Tech', 'Big Data', '18759462AD', 1);

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
  `glkey` int(1) DEFAULT NULL,
  `conname1` varchar(30) DEFAULT NULL,
  `contitle1` varchar(50) DEFAULT NULL,
  `conorg1` varchar(50) DEFAULT NULL,
  `condays1` int(3) DEFAULT NULL,
  `confrom1` date NOT NULL,
  `conto1` date NOT NULL,
  `condate1` date NOT NULL,
  `conlevel1` varchar(20) DEFAULT NULL,
  `concer1` varchar(100) DEFAULT NULL,
  `conkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aer_fac_glc`
--

INSERT INTO `aer_fac_glc` (`id`, `sid`, `ayear`, `gltitle1`, `gldays1`, `glfrom1`, `glto1`, `gldate1`, `gltopic1`, `glorg1`, `glplace1`, `glkey`, `conname1`, `contitle1`, `conorg1`, `condays1`, `confrom1`, `conto1`, `condate1`, `conlevel1`, `concer1`, `conkey`) VALUES
(1, 'S13AER001', '2006-2007', 'weqrtwerytuiv wertwertb ert', 1, '0000-00-00', '0000-00-00', '2007-05-20', 'QMK.;', 'XCVHNCVGN', 'DFHDFGH', 1, 'gbgj', ' bhj', ' ghjbu', 1, '0000-00-00', '0000-00-00', '2006-06-06', 'international', '40473-250px-czech_passport_2006_mrz_data.jpg', 1);

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
  `memkey` int(1) DEFAULT NULL,
  `res1` varchar(50) DEFAULT NULL,
  `level1` varchar(20) DEFAULT NULL,
  `reskey` int(1) DEFAULT NULL,
  `aname1` varchar(50) DEFAULT NULL,
  `aissue1` varchar(10) DEFAULT NULL,
  `amy1` varchar(7) DEFAULT NULL,
  `awakey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aer_fac_member`
--

INSERT INTO `aer_fac_member` (`id`, `sid`, `ayear`, `name1`, `memberid1`, `validity1`, `memkey`, `res1`, `level1`, `reskey`, `aname1`, `aissue1`, `amy1`, `awakey`) VALUES
(1, 'S13AER001', '2006-2007', 'Ram', '1452E698', '2 Year', 1, 'HOD', 'department', 1, NULL, NULL, NULL, NULL),
(2, 'S13AER001', '2010-2011', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'csi', 'csi', '2011-05', 1);

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
  `reg1` varchar(30) NOT NULL,
  `name1` varchar(30) NOT NULL,
  `year1` varchar(10) NOT NULL,
  `spec1` varchar(50) NOT NULL,
  `tit1` varchar(100) NOT NULL,
  `reg2` varchar(30) NOT NULL,
  `name2` varchar(30) NOT NULL,
  `year2` varchar(10) NOT NULL,
  `spec2` varchar(50) NOT NULL,
  `tit2` varchar(100) NOT NULL,
  `reg3` varchar(30) NOT NULL,
  `name3` varchar(30) NOT NULL,
  `year3` varchar(10) NOT NULL,
  `spec3` varchar(50) NOT NULL,
  `tit3` varchar(100) NOT NULL,
  `reg4` varchar(30) NOT NULL,
  `name4` varchar(30) NOT NULL,
  `year4` varchar(10) NOT NULL,
  `spec4` varchar(50) NOT NULL,
  `tit4` varchar(100) NOT NULL,
  `reg5` varchar(30) NOT NULL,
  `name5` varchar(30) NOT NULL,
  `year5` varchar(10) NOT NULL,
  `spec5` varchar(50) NOT NULL,
  `tit5` varchar(100) NOT NULL,
  `reg6` varchar(30) NOT NULL,
  `name6` varchar(30) NOT NULL,
  `year6` varchar(10) NOT NULL,
  `spec6` varchar(50) NOT NULL,
  `tit6` varchar(100) NOT NULL,
  `reg7` varchar(30) NOT NULL,
  `name7` varchar(30) NOT NULL,
  `year7` varchar(10) NOT NULL,
  `spec7` varchar(50) NOT NULL,
  `tit7` varchar(100) NOT NULL,
  `reg8` varchar(30) NOT NULL,
  `name8` varchar(30) NOT NULL,
  `year8` varchar(10) NOT NULL,
  `spec8` varchar(50) NOT NULL,
  `tit8` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aer_fac_resg`
--

INSERT INTO `aer_fac_resg` (`id`, `sid`, `uname`, `supid`, `numsch`, `reg1`, `name1`, `year1`, `spec1`, `tit1`, `reg2`, `name2`, `year2`, `spec2`, `tit2`, `reg3`, `name3`, `year3`, `spec3`, `tit3`, `reg4`, `name4`, `year4`, `spec4`, `tit4`, `reg5`, `name5`, `year5`, `spec5`, `tit5`, `reg6`, `name6`, `year6`, `spec6`, `tit6`, `reg7`, `name7`, `year7`, `spec7`, `tit7`, `reg8`, `name8`, `year8`, `spec8`, `tit8`) VALUES
(1, 'S13AER001', 'Anna', '4578', 3, '4561', 'ghjf', '2015', 'dgfthngjnx', 'dzxgrfvbd', '7895', 'aweferg', '2016', 'dfgsdtfh', 'fghjndgyjnty', '89745', 'dsgahtg', '2017', 'sdF', 'Adfewergqer', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

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
  `reason` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cse_fac`
--

INSERT INTO `cse_fac` (`sid`, `name`, `dob`, `age`, `gender`, `email`, `mob1`, `fname`, `mname`, `mstatus`, `sname`, `relegion`, `comunity`, `place`, `city`, `district`, `state`, `country`, `pincode`, `address`, `paddress`, `aadharno`, `panno`, `passport`, `blood`, `doj`, `designation`, `mob2`, `dept`, `uploadpic`, `aadharpic`, `password`, `status`, `dor`, `reason`) VALUES
('S14CSE004', 'siva', '1995-12-29', 23, 'male', 'vijoad661@gmail.com', 9874561230, 'ramesh', 'Mini', 'n', '', 'Hindu', 'MBC', 'MGR NAGAR', 'Hosur', 'krishnagiri', 'Tamil Nadu', 'India', '635109', 'HIG 352,TNHB,PHASE VII,THENDRAL NAGAR, HOSUR', 'HIG 352,TNHB,PHASE VII,THENDRAL NAGAR, HOSUR', 656478349777, 'OIYUP8564L', '8794561230', 'O+ve', '2014-01-01', 'Prof', 7010539123, 'CSE', '2188-img1.jpg', '38786-img3.jpg', '9777', 'relive', '2018-08-08', 'TRAINING PERIOD'),
('S15CSE001', 'purusoth', '1996-06-26', 22, 'male', 'vijoad661@gmail.com', 9874561230, 'jayaraman', 'bagiya lakhsmi', 'n', '', 'Hindu', 'BC', 'kandhikuppam', 'Hosur', 'krishnagiri', 'Tamil Nadu', 'India', '635109', 'HIG 352,TNHB,PHASE VII,THENDRAL NAGAR, HOSUR', 'HIG 352,TNHB,PHASE VII,THENDRAL NAGAR, HOSUR', 987456128521, 'OIYUP8564L', '8794561230', 'b+ve', '2015-06-07', 'Prof', 7894561230, 'CSE', '59949-bg.jpg', '23427-bg1.jpg', '8521', NULL, NULL, NULL),
('S18CSE003', 'Ram', '1987-05-19', 31, 'male', 'ramki2696@gmail.com', 9874561230, 'ramesh', 'rani', 'n', '', 'Hindu', 'bc', 'Amman street', 'kandhikuppam', 'krishnagiri', 'Tamil Nadu', 'India', '635104', 's/o albart amman theru 2nd cross,kandhikuppam.', 's/o albart amman theru 2nd cross,kandhikuppam.', 987456128521, 'OIYUP8564L', '8794561230', 'b+ve', '2018-09-19', 'Prof', 7894585230, 'CSE', '56184-bg.jpg', '10161-admin.png', '8521', NULL, NULL, NULL);

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
  `bkmy1` date DEFAULT NULL,
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
  `jrnimpact1` int(10) DEFAULT NULL,
  `jrnkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `phyreg` int(4) DEFAULT NULL,
  `phyear` int(4) DEFAULT NULL,
  `phthesis` varchar(50) DEFAULT NULL,
  `phguide` varchar(30) DEFAULT NULL,
  `phcertificate` varchar(100) DEFAULT NULL,
  `phkey` int(1) DEFAULT NULL,
  `ph1name` varchar(50) DEFAULT NULL,
  `ph1university` varchar(50) DEFAULT NULL,
  `ph1spec` varchar(50) DEFAULT NULL,
  `ph1branch` varchar(50) DEFAULT NULL,
  `ph1mode` varchar(10) DEFAULT NULL,
  `ph1yreg` int(4) DEFAULT NULL,
  `ph1year` int(4) DEFAULT NULL,
  `ph1thesis` varchar(50) DEFAULT NULL,
  `ph1guide` varchar(30) DEFAULT NULL,
  `ph1certificate` varchar(100) DEFAULT NULL,
  `ph1key` int(1) DEFAULT NULL,
  `ph2name` varchar(50) DEFAULT NULL,
  `ph2university` varchar(50) DEFAULT NULL,
  `ph2spec` varchar(50) DEFAULT NULL,
  `ph2branch` varchar(50) DEFAULT NULL,
  `ph2mode` varchar(10) DEFAULT NULL,
  `ph2yreg` int(4) DEFAULT NULL,
  `ph2year` int(4) DEFAULT NULL,
  `ph2thesis` varchar(50) DEFAULT NULL,
  `ph2guide` varchar(30) DEFAULT NULL,
  `ph2certificate` varchar(100) DEFAULT NULL,
  `ph2key` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cse_fac_edu`
--

INSERT INTO `cse_fac_edu` (`sid`, `sname`, `sboard`, `syear`, `spercentage`, `scertificate`, `skey`, `s2name`, `s2board`, `s2branch`, `s2year`, `s2percentage`, `s2certificate`, `s2key`, `dname`, `dboard`, `ddegree`, `dmode`, `dyear`, `dpercentage`, `dcertificate`, `dkey`, `d1name`, `d1board`, `d1degree`, `d1mode`, `d1year`, `d1percentage`, `d1certificate`, `d1key`, `d2name`, `d2board`, `d2degree`, `d2mode`, `d2year`, `d2percentage`, `d2certificate`, `d2key`, `uname`, `uuniversity`, `udegree`, `ubranch`, `umode`, `uyear`, `upercentage`, `ucertificate`, `ukey`, `u1name`, `u1university`, `u1degree`, `u1branch`, `u1mode`, `u1year`, `u1percentage`, `u1certificate`, `u1key`, `u2name`, `u2university`, `u2degree`, `u2branch`, `u2mode`, `u2year`, `u2percentage`, `u2certificate`, `u2key`, `pname`, `puniversity`, `pdegree`, `pbranch`, `pmode`, `pyear`, `ppercentage`, `pcertificate`, `pkey`, `p1name`, `p1university`, `p1degree`, `p1branch`, `p1mode`, `p1year`, `p1percentage`, `p1certificate`, `p1key`, `p2name`, `p2university`, `p2degree`, `p2branch`, `p2mode`, `p2year`, `p2percentage`, `p2certificate`, `p2key`, `mname`, `muniversity`, `mspec`, `mbranch`, `mmode`, `myear`, `mpercentage`, `mthesis`, `mguide`, `mcertificate`, `mkey`, `phname`, `phuniversity`, `phspec`, `phbranch`, `phmode`, `phyreg`, `phyear`, `phthesis`, `phguide`, `phcertificate`, `phkey`, `ph1name`, `ph1university`, `ph1spec`, `ph1branch`, `ph1mode`, `ph1yreg`, `ph1year`, `ph1thesis`, `ph1guide`, `ph1certificate`, `ph1key`, `ph2name`, `ph2university`, `ph2spec`, `ph2branch`, `ph2mode`, `ph2yreg`, `ph2year`, `ph2thesis`, `ph2guide`, `ph2certificate`, `ph2key`) VALUES
('S15CSE001', 'NATIONAL HIGHER SECONDARY SCHOOL', 'state', 2000, 68, '21066-module_table_bottom.png', 1, 'vallalar higher sec school', 'state', 'maths', 2002, 62, '53294-module_table_top.png', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 'Thiruvalluvar University', 'B.Sc', 'Computer Science', 'regular', 2005, 75, '37528-module_table_top.png', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ACE', 'Anna University', 'MCA', 'Computer Science', 'regular', 2007, 75, '48778-module_table_top.png', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ACE', 'Anna University', 'Big Data', 'Computer Science', '', 2004, 2007, 'Data Analyse', 'DR.N.PAPPA', '81648-img1.jpg', 1, 'ACE', 'Anna University', 'Big Data', 'FACULTY OF ELECTRICAL', 'regular', 2012, NULL, 'Data Analyse', 'Mahesh', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
  `clgkey` int(1) DEFAULT NULL,
  `pol1` varchar(50) DEFAULT NULL,
  `poldesg1` varchar(30) DEFAULT NULL,
  `poldoj1` date DEFAULT NULL,
  `poldor1` date DEFAULT NULL,
  `polreason1` varchar(100) DEFAULT NULL,
  `polkey` int(1) DEFAULT NULL,
  `sch1` varchar(50) DEFAULT NULL,
  `schdesg1` varchar(30) DEFAULT NULL,
  `schdoj1` date DEFAULT NULL,
  `schdor1` date DEFAULT NULL,
  `schreason1` varchar(100) DEFAULT NULL,
  `schkey` int(1) DEFAULT NULL,
  `ind1` varchar(50) DEFAULT NULL,
  `inddesg1` varchar(30) DEFAULT NULL,
  `indnature1` varchar(30) DEFAULT NULL,
  `inddoj1` date DEFAULT NULL,
  `inddor1` date DEFAULT NULL,
  `indreason1` varchar(100) DEFAULT NULL,
  `indkey` int(1) DEFAULT NULL
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
  `funkey` int(1) DEFAULT NULL,
  `nameofpat1` varchar(50) DEFAULT NULL,
  `title1` varchar(30) DEFAULT NULL,
  `fileno1` varchar(20) DEFAULT NULL,
  `patkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cse_fac_funpat`
--

INSERT INTO `cse_fac_funpat` (`id`, `sid`, `ayear`, `titleofpro1`, `duration1`, `amountsan1`, `agency1`, `startdate1`, `copiname1`, `year1`, `funkey`, `nameofpat1`, `title1`, `fileno1`, `patkey`) VALUES
(1, 'S15CSE001', '2017-2018', 'Big data', '5 years', '50000', 'CSI 2', '2018-02-16', 'Hello', NULL, 1, NULL, NULL, NULL, NULL),
(2, 'S15CSE001', '2010-2011', 'Big data', '5 years', '50000', 'CSI', '2010-08-12', 'Hello', '2015', 1, NULL, NULL, NULL, NULL),
(3, 'S15CSE001', '2011-2012', 'Big data', '5 years', '50000', 'CSI', '2012-02-09', 'Hello', '2013-02', 1, NULL, NULL, NULL, NULL);

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
  `glkey` int(1) DEFAULT NULL,
  `conname1` varchar(30) DEFAULT NULL,
  `contitle1` varchar(50) DEFAULT NULL,
  `conorg1` varchar(50) DEFAULT NULL,
  `condays1` int(3) DEFAULT NULL,
  `confrom1` date NOT NULL,
  `conto1` date NOT NULL,
  `condate1` date NOT NULL,
  `conlevel1` varchar(20) DEFAULT NULL,
  `concer1` varchar(100) DEFAULT NULL,
  `conkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `memkey` int(1) DEFAULT NULL,
  `res1` varchar(50) DEFAULT NULL,
  `level1` varchar(20) DEFAULT NULL,
  `reskey` int(1) DEFAULT NULL
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
  `reg1` varchar(30) NOT NULL,
  `name1` varchar(30) NOT NULL,
  `year1` varchar(10) NOT NULL,
  `spec1` varchar(50) NOT NULL,
  `tit1` varchar(50) NOT NULL,
  `reg2` varchar(30) NOT NULL,
  `name2` varchar(30) NOT NULL,
  `year2` varchar(10) NOT NULL,
  `spec2` varchar(50) NOT NULL,
  `tit2` varchar(50) NOT NULL,
  `reg3` varchar(30) NOT NULL,
  `name3` varchar(30) NOT NULL,
  `year3` varchar(10) NOT NULL,
  `spec3` varchar(50) NOT NULL,
  `tit3` varchar(50) NOT NULL,
  `reg4` varchar(30) NOT NULL,
  `name4` varchar(30) NOT NULL,
  `year4` varchar(10) NOT NULL,
  `spec4` varchar(50) NOT NULL,
  `tit4` varchar(50) NOT NULL,
  `reg5` varchar(30) NOT NULL,
  `name5` varchar(30) NOT NULL,
  `year5` varchar(10) NOT NULL,
  `spec5` varchar(50) NOT NULL,
  `tit5` varchar(50) NOT NULL,
  `reg6` varchar(30) NOT NULL,
  `name6` varchar(30) NOT NULL,
  `year6` varchar(10) NOT NULL,
  `spec6` varchar(50) NOT NULL,
  `tit6` varchar(50) NOT NULL,
  `reg7` varchar(30) NOT NULL,
  `name7` varchar(30) NOT NULL,
  `year7` varchar(10) NOT NULL,
  `spec7` varchar(50) NOT NULL,
  `tit7` varchar(50) NOT NULL,
  `reg8` varchar(30) NOT NULL,
  `name8` varchar(30) NOT NULL,
  `year8` varchar(10) NOT NULL,
  `spec8` varchar(50) NOT NULL,
  `tit8` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `id` int(30) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `deptid` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `about` varchar(500) NOT NULL,
  `image` varchar(100) NOT NULL,
  `memberkey` int(3) NOT NULL,
  `funprokey` int(3) NOT NULL,
  `pattkey` int(3) NOT NULL,
  `respkey` int(3) NOT NULL,
  `collegekey` int(3) NOT NULL,
  `polikey` int(3) NOT NULL,
  `schokey` int(3) NOT NULL,
  `indukey` int(3) NOT NULL,
  `attenkey` int(3) NOT NULL,
  `orgakey` int(3) NOT NULL,
  `gueskey` int(3) NOT NULL,
  `connkey` int(3) NOT NULL,
  `bookkey` int(3) NOT NULL,
  `jrnlkey` int(3) NOT NULL,
  `awakey` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`id`, `dept`, `deptid`, `email`, `username`, `password`, `about`, `image`, `memberkey`, `funprokey`, `pattkey`, `respkey`, `collegekey`, `polikey`, `schokey`, `indukey`, `attenkey`, `orgakey`, `gueskey`, `connkey`, `bookkey`, `jrnlkey`, `awakey`) VALUES
(33, 'Master Of Computer Application', 'MCA', 'ramki2696@gmail.com', 'mcahod', '8521', '', '', 1, 3, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 3, 1),
(37, 'Computer Science And Engineering', 'CSE', 'vijoad661@gmail.com', 'csehod', '8521', 'The department was started in the year 1991-92 with an intake of 60. At present the intake is 180. The department has M.E(CSE) Course with and intake of 24.The Department aims at providing high quality training to students through the latest in computer technology. In order to maintain the standard of education, the department constantly upgrades the academic syllabi so as to keep the students well trained to deal with changing trends in the field of Computer Science and Engineering The Departme', '28785-cse.png', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(38, 'Aeronautical Engineering ', 'AER', 'vijoad661@gmail.com', 'aerhod', '2696', '	 eyfwygfugsdfb efuigrtf werjgsaf iritghlse fr  ', '99743-img1.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1);

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
  `reason` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mca_fac`
--

INSERT INTO `mca_fac` (`sid`, `name`, `dob`, `age`, `gender`, `email`, `mob1`, `fname`, `mname`, `mstatus`, `sname`, `relegion`, `comunity`, `place`, `city`, `district`, `state`, `country`, `pincode`, `address`, `paddress`, `aadharno`, `panno`, `passport`, `blood`, `doj`, `designation`, `mob2`, `dept`, `uploadpic`, `aadharpic`, `password`, `status`, `dor`, `reason`) VALUES
('S01MCA001', 'Lilly Florence', '1974-03-20', 44, 'female', 'lilly_swamy@yahoo.co.in', 9487819149, 'MARIA ADAICKALAM', 'MARY', 'y', 'SWAMY DOSS', 'Christian', 'BC', 'Hosur', 'Hosur', 'krishnagiri', 'Tamil Nadu', 'India', '635126', 'M1/42,New ASTC HUDCO, Hosur', 'M1/42,New ASTC HUDCO, Hosur', 656478349777, 'ABSPL4660L', '8794561230', 'b+ve', '2001-06-01', 'Prof', 9487819140, 'MCA', '37420-img1.jpg', '21612-img3.jpg', '9777', 'relive', '2004-12-06', 'I dont Care'),
('S03MCA001', 'SUJATHA. S', '1975-06-05', 43, 'female', 'sujasakthi22@gmail.com', 9487819134, 'SUBRAMANIAN.P', 'JEGATHAMBAL.S', 'y', 'SAKTHIVEL.T', 'Hindu', 'MBC', 'Hosur', 'Hosur', 'krishnagiri', 'Tamil Nadu', 'India', '635109', 'HIG 352,TNHB,PHASE VII,THENDRAL NAGAR, HOSUR', 'HIG 352,TNHB,PHASE VII,THENDRAL NAGAR, HOSUR', 991393280148, 'AXDPS2309G', '', 'O+ve', '2003-01-02', 'PROFESSOR AND HEAD', 0, 'MCA', '11968-img1.jpg', '54385-img2.jpg', '0148', NULL, NULL, NULL),
('S15MCA001', 'Ram', '1997-02-07', 21, 'male', 'ramki2696@gmail.com', 9874561230, 'ramesh', 'rani', 'n', '', 'Hindu', 'BC', 'Aachamangalam', 'Hosur', 'krishnagiri', 'Tamil Nadu', 'India', '635126', '123,the', '123,the', 987456128521, 'OIYUP8564L', '8794561230', 'O+ve', '2015-03-14', 'Prof', 9874561230, 'MCA', '79908-img2.jpg', '85260-img3.jpg', '8521', 'relive', '2018-12-06', 'I dont care'),
('S18MCA005', 'CSI', '2009-03-05', 9, 'male', 'vijoad661@gmail.com', 9874561230, 'ramesh', 'rani', 'n', 'SWAMY DOSS', 'Hindu', 'Hosur', 'New ASTC Hudco', 'kandhikuppam', 'Kgiri', 'Niederoesterreich', 'Austria', '635104', 's/o albart amman theru 2nd cross,kandhikuppam.', 's/o albart amman theru 2nd cross,kandhikuppam.', 987456122222, 'OIYUP7884L', '8794986230', 'b+ve', '2018-04-04', 'Prof', 9874561230, 'MCA', '58898-img1.jpg', '17514-img3.jpg', '2222', NULL, NULL, NULL);

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
(1, 'S03MCA001', '2018-2019', 'fdp', 'sooftware disigine', 2, '2018-12-13', '2018-12-15', '0000-00-00', 'infosys', 'bengalore', 'district', '81945-web-development-webtenetblog.png', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(2, 'S03MCA001', '2017-2018', NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, NULL, 'fdp', 'web development', 'csi', 1, '0000-00-00', '0000-00-00', '2018-03-15', 'Shiva', 50, 'state', '4848-script_code-512.png', 1),
(3, 'S18MCA005', '2013-2014', 'fdp', 'sooftware disigine', 2, '2013-07-18', '2013-07-20', '0000-00-00', 'infosys', 'bengalore', 'state', '48356-img2.jpg', 1, 'seminar', 'web development', 'csi', 2, '2013-07-10', '2013-07-16', '0000-00-00', 'Shiva', 50, 'district', '17754-img2.jpg', 1);

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
  `jrnname1` varchar(50) DEFAULT NULL,
  `jrnvol1` varchar(20) DEFAULT NULL,
  `jrnissue1` varchar(20) DEFAULT NULL,
  `jrnissn1` varchar(20) DEFAULT NULL,
  `jrncategory1` varchar(20) DEFAULT NULL,
  `jrnlink1` varchar(100) DEFAULT NULL,
  `jrncit1` varchar(30) DEFAULT NULL,
  `jrnimpact1` int(10) DEFAULT NULL,
  `jrnname2` varchar(20) NOT NULL,
  `jrnvol2` varchar(50) NOT NULL,
  `jrnissue2` varchar(50) NOT NULL,
  `jrnissn2` varchar(50) NOT NULL,
  `jrncategory2` varchar(50) NOT NULL,
  `jrnlink2` varchar(50) NOT NULL,
  `jrncit2` varchar(50) NOT NULL,
  `jrnimpact2` int(10) NOT NULL,
  `jrnname3` varchar(20) NOT NULL,
  `jrnvol3` varchar(50) NOT NULL,
  `jrnissue3` varchar(50) NOT NULL,
  `jrnissn3` varchar(50) NOT NULL,
  `jrncategory3` varchar(50) NOT NULL,
  `jrnlink3` varchar(100) NOT NULL,
  `jrncit3` varchar(50) NOT NULL,
  `jrnimpact3` int(10) NOT NULL,
  `jrnkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mca_fac_bkjrn`
--

INSERT INTO `mca_fac_bkjrn` (`id`, `sid`, `ayear`, `bk1`, `bkcha1`, `bkissn1`, `bkmy1`, `bkpub1`, `bktype1`, `bkkey`, `jrnname1`, `jrnvol1`, `jrnissue1`, `jrnissn1`, `jrncategory1`, `jrnlink1`, `jrncit1`, `jrnimpact1`, `jrnname2`, `jrnvol2`, `jrnissue2`, `jrnissn2`, `jrncategory2`, `jrnlink2`, `jrncit2`, `jrnimpact2`, `jrnname3`, `jrnvol3`, `jrnissue3`, `jrnissn3`, `jrncategory3`, `jrnlink3`, `jrncit3`, `jrnimpact3`, `jrnkey`) VALUES
(1, 'S03MCA001', '2018-2019', 'weatg', 'edge', '234', '08/2018', 'ram', 'organization', 1, 'Big data', '2', '6', '7894562130', 'sci', 'http://localhost/datacenter/faculty/fac_details.php', '8956', 0, 'Oracle Computing', '8', '9', '9854712630', 'scopus', 'http://localhost/datacenter/faculty/fac_details.ph', '89745', 0, 'Big data', '1', '85', '8745', 'igc', 'http://localhost/datacenter/faculty/fac_details.php', '8745', 0, 3),
(2, 'S03MCA001', '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Linux', '2', '895', '874596', 'sci', 'http://localhost/datacenter/faculty/fac_details.php', '89754', 0, 'Web Technology', '2', '3', '23415678', 'ugc', 'fdhdfghjxghx', '34', 35436, '', '', '', '', '', '', '', 0, 2),
(3, 'S03MCA001', '1975-1976', 'htgd', 'hdhj', '345', '2018-12', 'ram', 'erdfgvh', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, NULL),
(4, 'S03MCA001', '2016-2017', 'htgd', 'hdhj', '345', '2017-02', 'ram', 'erdfgvh', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, NULL),
(5, 'S03MCA001', '2013-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Web Technology', '2', '5', '3565', 'ugc', 'fdhdfghjxghx', '34', 35436, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 1);

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
('S03MCA001', 'ZAMINDAR HIGHER SECONDARY SCHOOL', 'state', 1990, 88, '47052-img2.jpg', 1, 'ZAMINDAR HIGHER SECONDARY SCHOOL', 'state', 'PHYSICS,CHEMISTRY,BIOLOGY,MATHS ', 1992, 89, '60302-img2.jpg', 1, 'ACE', 'TamilNadu ', 'EEE', 'parttime', 2007, 70, '82100-code.png', 1, 'ACE', 'TamilNadu ', 'EEE', 'regular', 2010, 70, '69731-1096-512.png', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ALAGAPPA CHETTIAR COLLEGE OF ENGINEERING', 'MADURAI KAMARAJ UNIVERSITY', 'B.E', 'ELECTRICAL AND ELECTRONICS ENGG', 'regular', 1997, 73, '94159-img2.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ANNAMALAI UNIVERSITY', 'ANNAMALAI UNIVERSITY', 'M.E', 'PROCESS CONTROL AND INSTRUMENTATION', 'regular', 2002, 9, '9170-img2.jpg', 1, 'dxfgxdrg', 'dzrfghxtrdh', 'zsdrygh', 'zrtdhyrth', 'parttime', 2014, 80, '96344-bg.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ACE', 'Anna University', 'Big Data', 'Computer Science', 'parttime', '2005-04', '2012-07', 'SVM BASED MODELING AND CONTROL OF A BATCH REACTOR', 'Mahesh', '80579-img2.jpg', 1, '', 'Anna University', 'Big Data', 'Computer Science', 'parttime', '2005', '2013', 'Data Analyse', 'Mahesh', '73110-module_table_top.png', 1, 'MADRAS INSTITUTE OF TECHNOLOGY', 'Anna University', 'Big Data', 'Computer Science', 'parttime', '2010', NULL, 'Data Analyse', 'Mahesh', NULL, 1),
('S15MCA001', 'NATIONAL HIGHER SECONDARY SCHOOL', 'state', 2000, 60, '83794-img1.jpg', 1, 'vallalar higher sec school', 'state', 'maths', 2002, 62, '50609-img3.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hjm', 'Thiruvalluvar University', 'B.Sc', 'Computer Science', 'regular', 2005, 75, '10725-img3.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ACE', 'Anna University', 'MCA', 'Computer Science', 'regular', 2007, 75, '11108-img1.jpg', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rani', 'Anna University', 'Big Data', 'Computer Science', 'parttime', 2008, 60, 'Big Data with SQL', 'Rajaesh', '70826-img3.jpg', 1, 'ACE', 'Anna University', 'Big Data', 'Computer Science', 'regular', '2010-03', '2013-09', 'Data Analyse', 'Mahesh', '35313-img2.jpg', 1, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL),
('S18MCA005', 'NATIONAL HIGHER SECONDARY SCHOOL', 'state', 2000, 60, '52672-module_table_top.png', 1, 'vallalar higher sec school', 'cbse', 'maths', 2002, 89, '95315-module_table_bottom.png', 1, 'ACE', 'TamilNadu ', 'EEE', 'regular', 2007, 70, '36799-img1.jpg', 1, 'ACE', 'TamilNadu ', 'EEE', 'regular', 2010, 70, '48970-img3.jpg', 1, 'ACE', 'TamilNadu ', 'EEE', 'regular', 2013, 70, '44615-script_code-512.png', 1, 'admin', 'Thiruvalluvar University', 'B.Sc', 'Computer Science', 'parttime', 2005, 75, '51024-module_table_top.png', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ACE', 'Anna University', 'MCA', 'Computer Science', 'parttime', 2007, 75, '64752-module_table_top.png', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rani', 'Anna University', 'Big Data', 'Computer Science', 'parttime', 2008, 60, 'Big Data with SQL', 'Rajaesh', '93178-module_table_bottom.png', 1, 'ACE', 'Anna University', 'Big Data', 'Computer Science', 'parttime', '2005-09', '2013-10', 'SVM BASED MODELING AND CONTROL OF A BATCH REACTOR', 'Mahesh', '79177-module_table_top.png', 1, 'ACE', '', 'PROCESS CONTROL', 'Computer Science', 'regular', '2005', '2017', 'Data Analyse', 'DR.N.PAPPA', '10393-module_table_top.png', 1, 'ACE', 'Anna University', 'Big Data', 'Computer Science', 'parttime', '2005', '2013', 'Data Analyse', 'Mahesh', '58285-module_table_top.png', 1);

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
  `clgkey` int(1) DEFAULT NULL,
  `pol1` varchar(50) DEFAULT NULL,
  `poldesg1` varchar(30) DEFAULT NULL,
  `poldoj1` date DEFAULT NULL,
  `poldor1` date DEFAULT NULL,
  `polreason1` varchar(100) DEFAULT NULL,
  `pol2` varchar(50) NOT NULL,
  `poldesg2` varchar(50) NOT NULL,
  `poldoj2` date NOT NULL,
  `poldor2` date NOT NULL,
  `polreason2` varchar(100) NOT NULL,
  `polkey` int(1) DEFAULT NULL,
  `sch1` varchar(50) DEFAULT NULL,
  `schdesg1` varchar(30) DEFAULT NULL,
  `schdoj1` date DEFAULT NULL,
  `schdor1` date DEFAULT NULL,
  `schreason1` varchar(100) DEFAULT NULL,
  `schkey` int(1) DEFAULT NULL,
  `ind1` varchar(50) DEFAULT NULL,
  `inddesg1` varchar(30) DEFAULT NULL,
  `indnature1` varchar(30) DEFAULT NULL,
  `inddoj1` date DEFAULT NULL,
  `inddor1` date DEFAULT NULL,
  `indreason1` varchar(100) DEFAULT NULL,
  `indkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mca_fac_exp`
--

INSERT INTO `mca_fac_exp` (`sid`, `clg1`, `clgdesg1`, `clgdoj1`, `clgdor1`, `clgreason1`, `clgkey`, `pol1`, `poldesg1`, `poldoj1`, `poldor1`, `polreason1`, `pol2`, `poldesg2`, `poldoj2`, `poldor2`, `polreason2`, `polkey`, `sch1`, `schdesg1`, `schdoj1`, `schdor1`, `schreason1`, `schkey`, `ind1`, `inddesg1`, `indnature1`, `inddoj1`, `inddor1`, `indreason1`, `indkey`) VALUES
('S03MCA001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '0000-00-00', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TNEB', 'GRADUATE TRAINEE', 'TRAINEE', '1997-09-18', '1998-09-17', 'TRAINING PERIOD', 1),
('S15MCA001', 'PSG', 'Prof', '2017-02-08', '2018-12-03', 'I dont Care', 1, 'IRT', 'Prof', '2017-06-14', '2018-12-03', 'I dont Care', 'IRT', 'Prof', '2015-02-11', '2018-12-03', 'I dont Care', 2, 'gbhhs', 'teacher', '2018-01-02', '2018-12-03', 'I dont Care', 1, 'infosys', 'devaloper', 'code', '2016-06-22', '2018-12-03', 'I dont Care', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mca_fac_funpat`
--

CREATE TABLE `mca_fac_funpat` (
  `id` int(5) NOT NULL,
  `sid` varchar(30) DEFAULT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `titleofpro1` varchar(50) DEFAULT NULL,
  `duration1` varchar(30) DEFAULT NULL,
  `amountsan1` varchar(20) DEFAULT NULL,
  `agency1` varchar(20) DEFAULT NULL,
  `startdate1` date DEFAULT NULL,
  `copiname1` varchar(20) DEFAULT NULL,
  `titleofpro2` varchar(50) DEFAULT NULL,
  `duration2` varchar(30) DEFAULT NULL,
  `amountsan2` varchar(20) DEFAULT NULL,
  `agency2` varchar(50) DEFAULT NULL,
  `startdate2` varchar(30) DEFAULT NULL,
  `copiname2` varchar(20) DEFAULT NULL,
  `titleofpro3` varchar(50) DEFAULT NULL,
  `duration3` varchar(30) DEFAULT NULL,
  `amountsan3` varchar(20) DEFAULT NULL,
  `agency3` varchar(50) DEFAULT NULL,
  `startdate3` varchar(30) DEFAULT NULL,
  `copiname3` varchar(20) DEFAULT NULL,
  `year3` varchar(7) DEFAULT NULL,
  `year2` varchar(7) DEFAULT NULL,
  `year1` varchar(7) DEFAULT NULL,
  `funkey` int(1) DEFAULT NULL,
  `nameofpat1` varchar(50) DEFAULT NULL,
  `title1` varchar(30) DEFAULT NULL,
  `fileno1` varchar(20) DEFAULT NULL,
  `patkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mca_fac_funpat`
--

INSERT INTO `mca_fac_funpat` (`id`, `sid`, `ayear`, `titleofpro1`, `duration1`, `amountsan1`, `agency1`, `startdate1`, `copiname1`, `titleofpro2`, `duration2`, `amountsan2`, `agency2`, `startdate2`, `copiname2`, `titleofpro3`, `duration3`, `amountsan3`, `agency3`, `startdate3`, `copiname3`, `year3`, `year2`, `year1`, `funkey`, `nameofpat1`, `title1`, `fileno1`, `patkey`) VALUES
(1, 'S03MCA001', '2018-2019', 'Big data', '5 years', '50000', 'CSI', '2018-12-05', 'Hello HRU', 'Big data', '5 years', '50000', 'CSI', '2018-02-08', 'Hello', 'Big data', '5 years', '50000', 'CSI', '2018-12-05', 'Hello', '2019-05', '2015-08', '2019-09', 3, NULL, NULL, NULL, NULL),
(2, 'S03MCA001', '2017-2018', '4wetw4tg', 'wt4w3t', 'w4eta4et', 'w4te54ya', '2017-12-05', 'srdgerg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'New Tech', 'Big Data', '18759462AD', 1),
(3, 'S03MCA001', '2018-2019', 'Big data', '5 years', '50000', 'CSI', '2019-01-02', 'Hello HRU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);

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
  `glkey` int(1) DEFAULT NULL,
  `conname1` varchar(30) DEFAULT NULL,
  `contitle1` varchar(50) DEFAULT NULL,
  `conorg1` varchar(50) DEFAULT NULL,
  `condays1` int(3) DEFAULT NULL,
  `confrom1` date NOT NULL,
  `conto1` date NOT NULL,
  `condate1` date NOT NULL,
  `conlevel1` varchar(20) DEFAULT NULL,
  `concer1` varchar(100) DEFAULT NULL,
  `conkey` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mca_fac_glc`
--

INSERT INTO `mca_fac_glc` (`id`, `sid`, `ayear`, `gltitle1`, `gldays1`, `glfrom1`, `glto1`, `gldate1`, `gltopic1`, `glorg1`, `glplace1`, `glkey`, `conname1`, `contitle1`, `conorg1`, `condays1`, `confrom1`, `conto1`, `condate1`, `conlevel1`, `concer1`, `conkey`) VALUES
(1, 'S03MCA001', '2017-2018', 'weqrtwerytuiv wertwertb ert', 2, '2017-12-15', '2017-12-19', '0000-00-00', 'QMK.;', 'XCVHNCVGN', 'DFHDFGH', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL),
(2, 'S03MCA001', '2018-2019', NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL, NULL, 'gbgj', ' bhj', ' ghjbu', 2, '2018-12-12', '2018-12-14', '0000-00-00', 'district', '44419-1096-512.png', 1),
(3, 'S18MCA005', '2018-2019', 'weqrtwerytuiv wertwertb ert', 2, '2018-07-12', '2018-07-14', '0000-00-00', 'QMK.;', 'XCVHNCVGN', 'DFHDFGH', 1, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', '0000-00-00', NULL, NULL, NULL);

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
  `memkey` int(1) DEFAULT NULL,
  `res1` varchar(50) DEFAULT NULL,
  `level1` varchar(20) DEFAULT NULL,
  `reskey` int(1) DEFAULT NULL,
  `aname` varchar(50) DEFAULT NULL,
  `aissue` varchar(50) DEFAULT NULL,
  `amy` varchar(7) DEFAULT NULL,
  `aname1` varchar(50) DEFAULT NULL,
  `aissue1` varchar(30) DEFAULT NULL,
  `amy1` varchar(20) DEFAULT NULL,
  `awakey` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mca_fac_member`
--

INSERT INTO `mca_fac_member` (`id`, `sid`, `ayear`, `name1`, `memberid1`, `validity1`, `memkey`, `res1`, `level1`, `reskey`, `aname`, `aissue`, `amy`, `aname1`, `aissue1`, `amy1`, `awakey`) VALUES
(1, 'S03MCA001', '2018-2019', NULL, NULL, NULL, NULL, 'HOD', 'department', 1, NULL, NULL, NULL, 'csi', 'csi', '2018-08', 1),
(2, 'S03MCA001', '2017-2018', NULL, NULL, NULL, NULL, 'HOD', 'department', 1, NULL, NULL, NULL, '', '', '', NULL),
(3, 'S03MCA001', '2016-2017', NULL, NULL, NULL, NULL, 'HOD', 'department', 1, NULL, NULL, NULL, 'csi', 'csi', '2016-07', 1),
(4, 'S03MCA001', '2004-2005', 'ISTE', '12345', 'LIFE MEMBER', 1, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL);

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
  `reg1` varchar(30) NOT NULL,
  `name1` varchar(30) NOT NULL,
  `year1` varchar(10) NOT NULL,
  `spec1` varchar(50) NOT NULL,
  `tit1` varchar(100) NOT NULL,
  `reg2` varchar(30) NOT NULL,
  `name2` varchar(30) NOT NULL,
  `year2` varchar(10) NOT NULL,
  `spec2` varchar(50) NOT NULL,
  `tit2` varchar(100) NOT NULL,
  `reg3` varchar(30) NOT NULL,
  `name3` varchar(30) NOT NULL,
  `year3` varchar(10) NOT NULL,
  `spec3` varchar(50) NOT NULL,
  `tit3` varchar(100) NOT NULL,
  `reg4` varchar(30) NOT NULL,
  `name4` varchar(30) NOT NULL,
  `year4` varchar(10) NOT NULL,
  `spec4` varchar(50) NOT NULL,
  `tit4` varchar(100) NOT NULL,
  `reg5` varchar(30) NOT NULL,
  `name5` varchar(30) NOT NULL,
  `year5` varchar(10) NOT NULL,
  `spec5` varchar(50) NOT NULL,
  `tit5` varchar(100) NOT NULL,
  `reg6` varchar(30) NOT NULL,
  `name6` varchar(30) NOT NULL,
  `year6` varchar(10) NOT NULL,
  `spec6` varchar(50) NOT NULL,
  `tit6` varchar(100) NOT NULL,
  `reg7` varchar(30) NOT NULL,
  `name7` varchar(30) NOT NULL,
  `year7` varchar(10) NOT NULL,
  `spec7` varchar(50) NOT NULL,
  `tit7` varchar(100) NOT NULL,
  `reg8` varchar(30) NOT NULL,
  `name8` varchar(30) NOT NULL,
  `year8` varchar(10) NOT NULL,
  `spec8` varchar(50) NOT NULL,
  `tit8` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mca_fac_resg`
--

INSERT INTO `mca_fac_resg` (`id`, `sid`, `uname`, `supid`, `numsch`, `reg1`, `name1`, `year1`, `spec1`, `tit1`, `reg2`, `name2`, `year2`, `spec2`, `tit2`, `reg3`, `name3`, `year3`, `spec3`, `tit3`, `reg4`, `name4`, `year4`, `spec4`, `tit4`, `reg5`, `name5`, `year5`, `spec5`, `tit5`, `reg6`, `name6`, `year6`, `spec6`, `tit6`, `reg7`, `name7`, `year7`, `spec7`, `tit7`, `reg8`, `name8`, `year8`, `spec8`, `tit8`) VALUES
(1, 'S03MCA001', 'Anna', '4578', 3, '4561', 'ghjf', '2015', 'dgfthngjnx', 'dzxgrfvbd', '7895', 'aweferg', '2016', 'dfgsdtfh', 'fghjndgyjnty', '89745', 'dsgahtg', '2017', 'sdF', 'Adfewergqer', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 'S03MCA001', 'periyar', '45789', 2, '4561', 'ghjf', '2015', 'dgfthngjnx', 'dzxgrfvbd', '7895', 'aweferg', '2016', 'dfgsdtfh', 'fghjndgyjnty', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `otp_expiry`
--

CREATE TABLE `otp_expiry` (
  `id` int(11) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `is_expired` int(11) NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otp_expiry`
--

INSERT INTO `otp_expiry` (`id`, `otp`, `email`, `is_expired`, `create_at`) VALUES
(1, '403507', 'ramki2696@gmail.com', 1, '2019-01-11 12:11:47'),
(2, '221809', 'vijoad661@gmail.com', 1, '2018-12-13 12:05:26');

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

--
-- Indexes for dumped tables
--

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
-- Indexes for table `aer_fac_resg`
--
ALTER TABLE `aer_fac_resg`
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
-- Indexes for table `cse_fac_resg`
--
ALTER TABLE `cse_fac_resg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
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
-- Indexes for table `mca_fac_resg`
--
ALTER TABLE `mca_fac_resg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_expiry`
--
ALTER TABLE `otp_expiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aer_fac_attorg`
--
ALTER TABLE `aer_fac_attorg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `aer_fac_bkjrn`
--
ALTER TABLE `aer_fac_bkjrn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `aer_fac_funpat`
--
ALTER TABLE `aer_fac_funpat`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `aer_fac_glc`
--
ALTER TABLE `aer_fac_glc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `aer_fac_member`
--
ALTER TABLE `aer_fac_member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `aer_fac_resg`
--
ALTER TABLE `aer_fac_resg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cse_fac_attorg`
--
ALTER TABLE `cse_fac_attorg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cse_fac_bkjrn`
--
ALTER TABLE `cse_fac_bkjrn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cse_fac_funpat`
--
ALTER TABLE `cse_fac_funpat`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cse_fac_glc`
--
ALTER TABLE `cse_fac_glc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cse_fac_member`
--
ALTER TABLE `cse_fac_member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cse_fac_resg`
--
ALTER TABLE `cse_fac_resg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dept`
--
ALTER TABLE `dept`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `mca_fac_attorg`
--
ALTER TABLE `mca_fac_attorg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mca_fac_bkjrn`
--
ALTER TABLE `mca_fac_bkjrn`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mca_fac_funpat`
--
ALTER TABLE `mca_fac_funpat`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mca_fac_glc`
--
ALTER TABLE `mca_fac_glc`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mca_fac_member`
--
ALTER TABLE `mca_fac_member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mca_fac_resg`
--
ALTER TABLE `mca_fac_resg`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `otp_expiry`
--
ALTER TABLE `otp_expiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
