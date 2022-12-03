

CREATE TABLE `aer_bos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `aer_bos_mem` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `aer_dept` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `nba_cer3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `aer_faci` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `aer_org` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `aer_stud` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `stud_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `arc_bos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `arc_bos_mem` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `arc_dept` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `nba_cer3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `arc_faci` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `arc_org` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `arc_stud` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `stud_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `bio_bos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `bio_bos_mem` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `bio_dept` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `nba_cer3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `bio_faci` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `bio_org` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `bio_stud` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `stud_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `bit_bos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO bit_bos VALUES("1","20","2018-2019","2018-10-29","2304-bos.jpg");
INSERT INTO bit_bos VALUES("2","18","2017-2018","2017-11-04","58859-18-bos-photo.jpg");
INSERT INTO bit_bos VALUES("3","19","2017-2018","2018-04-07","42121-photo.jpg");
INSERT INTO bit_bos VALUES("4","17","2016-2017","2017-04-04","39420-2.jpg");
INSERT INTO bit_bos VALUES("5","16","2016-2017","2016-10-25","95437-2.jpg");
INSERT INTO bit_bos VALUES("6","15","2015-2016","2016-04-13","98866-1.1.jpg");
INSERT INTO bit_bos VALUES("7","14","2015-2016","2015-10-01","31831-dscn4790.jpg");
INSERT INTO bit_bos VALUES("8","11","2013-2014","2014-04-19","73385-bos1.jpg");
INSERT INTO bit_bos VALUES("9","10","2013-2014","2013-09-28","34952-dscn3712.jpg");
INSERT INTO bit_bos VALUES("10","12","2014-2015","2014-10-30","91195-1.jpg");
INSERT INTO bit_bos VALUES("11","13","2014-2015","2015-04-08","59212-dscn4794.jpg");
INSERT INTO bit_bos VALUES("12","9","2012-2013","2013-04-20","36750-dscn3422.jpg");





CREATE TABLE `bit_bos_mem` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=latin1;

INSERT INTO bit_bos_mem VALUES("1","1","Dr. D.Thilagavathy","Professor","Adhiyamaan College of Engineering","Chairman");
INSERT INTO bit_bos_mem VALUES("2","1","Dr. K.Kulothungan","Assistant Professor (Sr.Gr)","Department of Information Science and Technology -	CEG Campus 
Anna University -Chennai
","University Nominee");
INSERT INTO bit_bos_mem VALUES("3","1","Dr.S.Neelavathy Pari","Assistant Professor","Department of Computer Technology
MIT Campus-Chennai
","Academic Council Nominee");
INSERT INTO bit_bos_mem VALUES("4","1","Dr.R.Manikandan","Assistant Professor","Department of Computer Science and Engineering
Government College of Engineering-Dharmapuri
","Academic Council Nominee");
INSERT INTO bit_bos_mem VALUES("5","1","Mr.K.C Rohit","Project Lead","Tata Consultancy Services - Bangalore","Industry Expert");
INSERT INTO bit_bos_mem VALUES("6","1","Mr.Krishnamoorthy","Technical Team Lead","Hewlett Packard-Bangalore","Alumni");
INSERT INTO bit_bos_mem VALUES("7","1","Dr.G.Fathima","Professor ","Department of Computer Science and Engineering
Adhiyamaan College of Engineering
","Interdisciplinary member");
INSERT INTO bit_bos_mem VALUES("8","1","Dr.D.Geetha","Assistant Professor","Dept. of Computer Science and Engineering,
Adhiyamaan College of Engineering
","Interdisciplinary member");
INSERT INTO bit_bos_mem VALUES("9","1","Dr.S.Sumathi","Proessor & Head","Dept. of Electronics and Communication Enginering,
Adhiyamaan College of Engineering,
","Interdisciplinary member");
INSERT INTO bit_bos_mem VALUES("10","1","V.Siva Kumar","Assistant Professor","ADept. of Information Technology
Adhiyamaan College of Engineering
","Senior Faculty of the Department");
INSERT INTO bit_bos_mem VALUES("11","1","S.Sivanandham ","Assistant Professor","Dept. of Information Technology
Adhiyamaan College of Engineering
","Senior Faculty of the Department");
INSERT INTO bit_bos_mem VALUES("12","1","R.Regin","Assistant Professor","Dept. of Information Technology
Adhiyamaan College of Engineering
","Senior Faculty of the Department");
INSERT INTO bit_bos_mem VALUES("13","2","Dr.G.Fathima","Professor","Adhiyamaan College of Engineering","Chairman");
INSERT INTO bit_bos_mem VALUES("14","2","Dr.T.Revathi","Professor and Head ","Department of IT,Mepco Schlenk College of Engg.,
Sivakasi –","University Nominee");
INSERT INTO bit_bos_mem VALUES("15","2","Dr.A.M Kalpana","Assistant Professor","HOD/CSE,
Government College of Engineering","Academic Council Nominee");
INSERT INTO bit_bos_mem VALUES("16","2","Dr.G.Varaprasad","Associate Professor","B.M.S College of Engineering,
Bangalore ","Academic Council Nominee");
INSERT INTO bit_bos_mem VALUES("17","2","Mrs.K.Sangeetha","Database Architect","Robert Bosch, Bangalore.
","Industry Expert");
INSERT INTO bit_bos_mem VALUES("18","2","Mr.Sandesh Nag Kotha, ","Associate Consultant,  ","TCS, Bangalore","Alumnus");
INSERT INTO bit_bos_mem VALUES("19","2","Dr.S.Sumathi","Professor and Head","Department of ECE,Adhiyamaan College of Engineering","Inter Disciplinary Expert");
INSERT INTO bit_bos_mem VALUES("20","2","Dr. D.Thilagavathy","Professor and Head","Department of CSE,Adhiyamaan College of Engineering","Inter Disciplinary Expert");
INSERT INTO bit_bos_mem VALUES("21","2","Dr.M.Prabu","Professor","Department of CSE,Adhiyamaan College of Engineering","Inter Disciplinary Expert");
INSERT INTO bit_bos_mem VALUES("22","2","Dr.P.Kavitha","Assistant Professor","Department of IT,Adhiyamaan College of Engineering","Internal Member");
INSERT INTO bit_bos_mem VALUES("23","2","V.Siva Kumar","Assistant Professor","Department of IT,Adhiyamaan College of Engineering","Internal Member");
INSERT INTO bit_bos_mem VALUES("24","3","Dr.G.FATHIMA","Professor & Head","Department of Information Technology,
Adhiyamaan College of Engineering, 
Hosur-635109.
","CHAIRMAN");
INSERT INTO bit_bos_mem VALUES("25","3","Dr.T.REVATHI ","Prof.& Head","Department of Information Technology,
Mepco Schlenk College of Engg.,
Sivakasi – 626 005
","UNIVERSITY NOMINEE");
INSERT INTO bit_bos_mem VALUES("26","3","Dr.A.M. KALPANA","Head of the Department"," Department of CSE, Government College of Engineering, Salem - 636 011.","ACADEMIC COUNCIL NOMINEE");
INSERT INTO bit_bos_mem VALUES("27","3","Dr. G. VARAPRASAD ","Associate Professor,","B.M.S College of Engineering,
Bangalore – 560019.
","ACADEMIC COUNCIL NOMINEE");
INSERT INTO bit_bos_mem VALUES("28","3","Ms. K.SANGEETHA","Database Architect","Robert Bosch,
Bangalore.
","INDUSTRY EXPERT");
INSERT INTO bit_bos_mem VALUES("29","3","Mr.SANDESH NAG KOTHA","Associate Consultant","TCS, Bangalore","REPRESENTATIVE FROM ALUMNI ");
INSERT INTO bit_bos_mem VALUES("30","3","Dr.S.SUMATHI","Professor & Head","Department of Electronics & Communication Engineering, 
Adhiyamaan College of Engineering, 
Hosur-635109.
","INTER DISCIPLINARY  EXPERT");
INSERT INTO bit_bos_mem VALUES("31","3","Dr.D.THILAGAVATHY","Professor & Head","Department of  Computer Science and Engineering,
Adhiyamaan College of Engineering, 
Hosur-635109.
","INTER DISCIPLINARY  EXPERT");
INSERT INTO bit_bos_mem VALUES("32","3","Dr.M.PRABU","Professor","Department of  Computer Science and Engineering,
Adhiyamaan College of Engineering,
Hosur-635109.
","SR. FACULTY REPRESENTATIVE");
INSERT INTO bit_bos_mem VALUES("33","3","Dr .P.KAVITHA","Associate Professor","Department of Information Technology,
Adhiyamaan College of Engineering,
Hosur-635109.
","FACULTY REPRESENTATIVE");
INSERT INTO bit_bos_mem VALUES("34","3","Prof.V.SIVAKUMAR","Assistant Professor","Department of Information Technology,
Adhiyamaan College of Engineering,
Hosur-635109.
","FACULTY REPRESENTATIVE");
INSERT INTO bit_bos_mem VALUES("35","4","Dr.G.FATHIMA","Professor & Head","Department of Information Technology,
Adhiyamaan College of Engineering, 
Hosur-635109.
","CHAIRMAN-BOS");
INSERT INTO bit_bos_mem VALUES("36","4","Dr.T.REVATHI ","Prof.& Head","Department of Information Technology,
Mepco Schlenk College of Engg.,
Sivakasi – 626 005
","UNIVERSITY NOMINEE");
INSERT INTO bit_bos_mem VALUES("37","4","Dr.A.M. KALPANA","Head of the Department","Department of CSE,
Government College of Engineering,
Salem - 636 011.
","ACADEMIC COUNCIL NOMINEE");
INSERT INTO bit_bos_mem VALUES("38","4","Dr. G. VARAPRASAD ","Associate Professor","B.M.S College of Engineering,
Bangalore – 560019.
","ACADEMIC COUNCIL NOMINEE");
INSERT INTO bit_bos_mem VALUES("39","4","Ms. K.SANGEETHA","Database Architect","Robert Bosch,
Bangalore.
","INDUSTRY EXPERT");
INSERT INTO bit_bos_mem VALUES("40","4","Mr.SANDESH NAG KOTHA ","Associate Consultant","TCS, Bangalore","REPRESENTATIVE FROM ALUMNI ");
INSERT INTO bit_bos_mem VALUES("41","4","Dr.S.SUMATHI","Professor & Head","Department of Electronics & Communication Engineering, 
Adhiyamaan College of Engineering, 
Hosur-635109.
","INTER DISCIPLINARY  EXPERT");
INSERT INTO bit_bos_mem VALUES("42","4","Dr.D.THILAGAVATHY","Professor & Head","Department of  Computer Science and Engineering,
Adhiyamaan College of Engineering, 
Hosur-635109.
","INTER DISCIPLINARY  EXPERT");
INSERT INTO bit_bos_mem VALUES("43","4","Dr.M.PRABU","Professor","Department of  Computer Science and Engineering,
Adhiyamaan College of Engineering,
Hosur-635109.
","SR. FACULTY REPRESENTATIVE");
INSERT INTO bit_bos_mem VALUES("44","4","Dr .P.KAVITHA","Associate Professor","Department of Information Technology,
Adhiyamaan College of Engineering,
Hosur-635109.
","FACULTY REPRESENTATIVE");
INSERT INTO bit_bos_mem VALUES("45","4","Prof.V.SIVAKUMAR","Assistant Professor","Department of Information Technology,
Adhiyamaan College of Engineering,
Hosur-635109.
","FACULTY REPRESENTATIVE");
INSERT INTO bit_bos_mem VALUES("46","5","Dr.G.FATHIMA","Professor & Head","Department of Information Technology,
Adhiyamaan College of Engineering, 
Hosur-635109.
","CHAIRMAN-BOS");
INSERT INTO bit_bos_mem VALUES("47","5","Dr.T.REVATHI ","Prof.& Head","Department of Information Technology,
Mepco Schlenk College of Engg.,
Sivakasi – 626 005
","UNIVERSITY NOMINEE");
INSERT INTO bit_bos_mem VALUES("48","5","Dr.A.M. KALPANA","Head of the Department","Department of CSE,
Government College of Engineering,
Salem - 636 011.
","ACADEMIC COUNCIL NOMINEE");
INSERT INTO bit_bos_mem VALUES("49","5","Dr. G. VARAPRASAD ","Associate Professor","B.M.S College of Engineering,
Bangalore – 560019.
","ACADEMIC COUNCIL NOMINEE");
INSERT INTO bit_bos_mem VALUES("50","5","Ms. K.SANGEETHA","Database Architect","Robert Bosch,
Bangalore.
","INDUSTRY EXPERT");
INSERT INTO bit_bos_mem VALUES("51","5","Mr.SANDESH NAG KOTHA ","Associate Consultant"," TCS, Bangalore","REPRESENTATIVE FROM ALUMNI ");
INSERT INTO bit_bos_mem VALUES("52","5","Dr.S.Sumathi	","Professor & Head","Department of Electronics & Communication Engineering, 
Adhiyamaan College of Engineering, 
Hosur-635109.
","INTER DISCIPLINARY  EXPERT");
INSERT INTO bit_bos_mem VALUES("53","5","Dr.D.Thilagavathy","Professor & Head","Department of  Computer Science and Engineering,
Adhiyamaan College of Engineering, 
Hosur-635109.
","INTER DISCIPLINARY  EXPERT");
INSERT INTO bit_bos_mem VALUES("54","5","Dr.M.Sakthivel ","Associate Professor","Department of Information Technology, 
Adhiyamaan College of Engineering,
Hosur-635109
","FACULTY REPRESENTATIVE");
INSERT INTO bit_bos_mem VALUES("55","5","Prof.P.Kavitha","Associate Professor","Department of Information Technology,
Adhiyamaan College of Engineering,
Hosur-635109
","FACULTY REPRESENTATIVE");
INSERT INTO bit_bos_mem VALUES("56","5","Prof.V.Sivakumar","Assistant Professor","Department of Information Technology,
Adhiyamaan College of Engineering,
Hosur-635109.
","FACULTY REPRESENTATIVE");
INSERT INTO bit_bos_mem VALUES("57","6","Dr.G.Fathima","Professor & Head","Department of Information Technology,
Adhiyamaan College of Engineering, 
Hosur-635109.
","CHAIRMAN");
INSERT INTO bit_bos_mem VALUES("58","6","Dr.M.R.Sumalatha","Associate Professor","Department of Information Technology,
MIT Campus,
Anna University, Chennai - 44.
","UNIVERSITY NOMINEE");
INSERT INTO bit_bos_mem VALUES("59","6","Dr.Siddaraju","Professor & Head","Dept. of CSE.,
Dr.Ambedkar Institute of Technology,
Bangalore -560056
","ACADEMIC COUNCIL NOMINEE");
INSERT INTO bit_bos_mem VALUES("60","6","Dr.J. Senthil Kumar ","Professor","Department of Information Technology,
Sona College of  Technology,
Salem- 636 011.
","ACADEMIC COUNCIL NOMINEE");
INSERT INTO bit_bos_mem VALUES("61","6","Dr.V.Vijayaraghavan","Senior Research Scientist","Infosys Limited                     44 Electronics City, Hosur Road,
Bangalore – 560 100.
","INDUSTRY EXPERT");
INSERT INTO bit_bos_mem VALUES("62","6","Mr.R.Udayakumar ","Project Manager","IBM India Pvt. Ltd.,
Bangalore -560017.
","REPRESENTATIVE FROM ALUMNI ");
INSERT INTO bit_bos_mem VALUES("63","6","Dr.S.Sumathi","Professor & Head","Department of Electronics & Communication Engineering, 
Adhiyamaan College of Engineering, 
Hosur-635109.
","INTER DISCIPLINARY  EXPERT");
INSERT INTO bit_bos_mem VALUES("64","6","Dr.D.Thilagavathy","Professor & Head","Department of  Computer Science and Engineering,
Adhiyamaan College of Engineering, 
Hosur-635109.
","INTER DISCIPLINARY  EXPERT");
INSERT INTO bit_bos_mem VALUES("65","6","Prof.P.Kavitha","Associate Professor","Department of Information Technology, 
Adhiyamaan College of Engineering,
Hosur-635109
","FACULTY REPRESENTATIVE");
INSERT INTO bit_bos_mem VALUES("66","6","Prof.M.Sakthivel ","Associate Professor","Department of Information Technology,
Adhiyamaan College of Engineering,
Hosur-635109.
","FACULTY REPRESENTATIVE");
INSERT INTO bit_bos_mem VALUES("67","7","Dr.G.Fathima","Professor & Head","Department of Information Technology,
Adhiyamaan College of Engineering, 
Hosur-635109.
","CHAIRMAN");
INSERT INTO bit_bos_mem VALUES("68","7","Dr.M.R.Sumalatha","Associate Professor","Department of Information Technology,
MIT Campus,
Anna University, Chennai - 44.
","UNIVERSITY NOMINEE");
INSERT INTO bit_bos_mem VALUES("69","7","Dr.Siddaraju","Professor & Head","Dept. of CSE.,
Dr.Ambedkar Institute of Technology,
Bangalore -560056
","ACADEMIC COUNCIL NOMINEE");
INSERT INTO bit_bos_mem VALUES("70","7","Dr.J. Senthil Kumar ","Professor","Department of Information Technology,
Sona College of  Technology,
Salem- 636 011.
","ACADEMIC COUNCIL NOMINEE");
INSERT INTO bit_bos_mem VALUES("71","7","Dr.V.Vijayaragavan","Senior Research Scientist","Infosys Limited,
44 Electronics City, Hosur Road,
Bangalore – 560 100.
","INDUSTRY EXPERT");
INSERT INTO bit_bos_mem VALUES("72","7","Mr.R.Udayakumar ","Project Manager","IBM India Pvt. Ltd.,
Bangalore -560017.
","REPRESENTATIVE FROM ALUMNI ");
INSERT INTO bit_bos_mem VALUES("73","7","Dr.S.Sumathi","Professor & Head","Department of Electronics & Communication Engineering, 
Adhiyamaan College of Engineering, 
Hosur-635109.
","INTER DISCIPLINARY  EXPERT");
INSERT INTO bit_bos_mem VALUES("74","7","Dr.D.Thilagavathy","Professor & Head","Department of  Computer Science and Engineering,
Adhiyamaan College of Engineering, 
Hosur-635109.
","INTER DISCIPLINARY  EXPERT");
INSERT INTO bit_bos_mem VALUES("75","7","Prof.P.Kavitha","Associate Professor","Department of Information Technology, 
Adhiyamaan College of Engineering,
Hosur-635109.
","FACULTY REPRESENTATIVE");
INSERT INTO bit_bos_mem VALUES("76","7","Prof.M.Sakthivel ","Associate Professor","Department of Information Technology,
Adhiyamaan College of Engineering,
Hosur-635109.
","FACULTY REPRESENTATIVE");
INSERT INTO bit_bos_mem VALUES("78","8","Prof.P.Kavitha","Associate Professor","Department of Information Technology,
Adhiyamaan College of Engineering, 
Hosur-635109.
","Member");
INSERT INTO bit_bos_mem VALUES("79","8","Prof.M.Sakthivel","Associate Professor"," Department of Information Technology,","Member");
INSERT INTO bit_bos_mem VALUES("81","8","Prof.M. Daya Kanimozhi Rani ","Associate Professor"," Department of Information Technology,","Member");
INSERT INTO bit_bos_mem VALUES("82","8","Dr.S.Sumathi","Professor & Head","Department of Electronics & Communication Engineering, 
Adhiyamaan College of Engineering, 
Hosur-635109.
"," INTER DISCIPLINARY  EXPERT");
INSERT INTO bit_bos_mem VALUES("83","8","Dr.G.Fathima","Professor & Head","Department of Information Technology,
Adhiyamaan College of Engineering, 
Hosur-635109.
  ","CHAIRMAN");
INSERT INTO bit_bos_mem VALUES("84","8","Mrs.Nafeesa Begum","Asst.Professor (Sr.Grade) CSE","Govt. College of Engg. 
Bargur- 635 104
Cell:9486254133
","Academic Council Nominee");
INSERT INTO bit_bos_mem VALUES("85","8","Dr.Prakash","Professor & Head-ISE","Banglore Institute of Technology,
K.R.Road,V.V.Puram
Banglore-560004
","Academic Council Nominee");
INSERT INTO bit_bos_mem VALUES("86","8","Dr.Tholkapiarasu","PrincipaL","AVS Engineering College
Ammapet,Salem – 636003
","University Nominee");
INSERT INTO bit_bos_mem VALUES("87","8","Dr.A.Kannan","Professor","Dept.of Information Science & Tech,
College of Engg, Guindy,
Anna University,Chennai-25
","University Nominee");
INSERT INTO bit_bos_mem VALUES("88","8","Mrs.S.Leena Devakumar","Chief Architect","I2I Tele Solutions  & Tele Medicine, 
Bangalore – 560037
","Industry Representative");
INSERT INTO bit_bos_mem VALUES("89","8","Mr.C.Anand","Sr. Software Engineer","Infosys Technologies,
Bangalore - 560100 
","Alumni ");
INSERT INTO bit_bos_mem VALUES("90","9","Dr.G.Fathima","Professor & Head","Department of Information Technology,
Adhiyamaan College of Engineering, 
Hosur-635109.
","CHAIRMAN");
INSERT INTO bit_bos_mem VALUES("91","9","Prof.P.Kavitha","Associate Professor"," Department of Information Technology,","FACULTY REPRESENTATIVE");
INSERT INTO bit_bos_mem VALUES("92","9","Prof.M.Sakthivel","Associate Professor"," Department of Information Technology,","FACULTY REPRESENTATIVE");
INSERT INTO bit_bos_mem VALUES("93","9","Prof.M. Daya Kanimozhi Rani ","Associate Professor","Department of Information Technology,
Adhiyamaan College of Engineering, 
Hosur-635109.
  ","FACULTY REPRESENTATIVE");
INSERT INTO bit_bos_mem VALUES("94","9","Dr.S.Sumathi","Professor & Head","Department of Electronics & Communication Engineering, 
Adhiyamaan College of Engineering, 
Hosur-635109.
","INTER DISCIPLINARY  EXPERT");
INSERT INTO bit_bos_mem VALUES("95","9","Mrs.Nafeesa Begum","Asst.Professor (Sr.Grade) CSE","Govt. College of Engg. 
Bargur- 635 104
","Academic Council Nominee");
INSERT INTO bit_bos_mem VALUES("96","9","Dr.Prakash","Professor & Head-ISE","Banglore Institute of Technology,
K.R.Road,V.V.Puram
Banglore-560004
","Academic Council Nominee");
INSERT INTO bit_bos_mem VALUES("97","9","Dr.Tholkapiarasu","Principal","AVS Engineering College
Ammapet,Salem – 636003
","University Nominee");
INSERT INTO bit_bos_mem VALUES("98","9","Dr.A.Kannan","Professor","Dept.of Information Science & Tech,
College of Engg, Guindy,
Anna University,Chennai-25
","University Nominee");
INSERT INTO bit_bos_mem VALUES("99","9","Mrs.S.Leena Devakumar","Chief Architect","I2I Tele Solutions  & Tele Medicine, 
Bangalore – 560037
","Industry Representative");
INSERT INTO bit_bos_mem VALUES("100","9","Mr.C.Anand","Sr. Software Engineer","Infosys Technologies,
Bangalore - 560100 
","Alumni ");
INSERT INTO bit_bos_mem VALUES("101","10","Dr.G.Fathima","Professor & Head","Department of Information Technology,
Adhiyamaan College of Engineering, 
Hosur-635109
","CHAIRMAN");
INSERT INTO bit_bos_mem VALUES("102","10","Dr.M.R Sumalatha","Associate Professor","Department of Information Technology,
MIT Campus,
Anna University, Chennai - 44.
","UNIVERSITY NOMINEE");
INSERT INTO bit_bos_mem VALUES("103","10","Dr.Siddaraju","Professor & Head","Dept. of CSE.,
Dr.Ambedkar Institute of Technology,
Bangalore -560056
","ACADEMIC COUNCIL NOMINEE");
INSERT INTO bit_bos_mem VALUES("104","10","Dr. J. Senthil Kumar ","Associate Professor /I.T","Sona College of  Technology,
Salem- 636 011.
","ACADEMIC COUNCIL NOMINEE");
INSERT INTO bit_bos_mem VALUES("105","10","Dr. V.Vijayaragavan","Senior Research Scientist","Infosys Limited,
44 Electronics City, Hosur Road,
Bangalore – 560 100.
","INDUSTRY EXPERT");
INSERT INTO bit_bos_mem VALUES("106","10","Mr.R.Udayakumar ","Project Manager","IBM India Pvt. Ltd.,
Bangalore -560017.
","REPRESENTATIVE FROM ALUMNI ");
INSERT INTO bit_bos_mem VALUES("107","10","Dr.S.Sumathi","Professor & Head","Department of Electronics & Communication Engineering, 
Adhiyamaan College of Engineering, 
Hosur-635109.
","INTER DISCIPLINARY  EXPERT");
INSERT INTO bit_bos_mem VALUES("108","10","Dr.D.Thilagavathi","Professor & Head","Department of  Computer Science and Engineering,
Adhiyamaan College of Engineering, 
Hosur-635109.
","INTER DISCIPLINARY  EXPERT");
INSERT INTO bit_bos_mem VALUES("109","10","Dr. D Swamydoss","Professor & Head","Department of MCA,
Adhiyamaan College of Engineering,
Hosur.
","FACULTY REPRESENTATIVE");
INSERT INTO bit_bos_mem VALUES("110","10","Prof.P.Kavitha","Associate Professor","Department of Information Technology, 
Adhiyamaan College of Engineering,
Hosur-635109.
","FACULTY REPRESENTATIVE");
INSERT INTO bit_bos_mem VALUES("111","10","Prof.M.Sakthivel ","Associate Professor","Department of Information Technology,
Adhiyamaan College of Engineering,
Hosur-635109.
","FACULTY REPRESENTATIVE");
INSERT INTO bit_bos_mem VALUES("112","10","Prof.M. Daya Kanimozhi Rani ","Associate Professor","Department of Information Technology, 
Adhiyamaan College of Engineering,
Hosur-635109.
","FACULTY REPRESENTATIVE");
INSERT INTO bit_bos_mem VALUES("113","11","Dr.G.Fathima","Professor & Head","Department of Information Technology,
Adhiyamaan College of Engineering, 
Hosur-635109.
","CHAIRMAN");
INSERT INTO bit_bos_mem VALUES("114","11","Dr.M.R.Sumalatha","Associate Professor","Department of Information Technology,
MIT Campus,
Anna University, Chennai - 44.
","UNIVERSITY NOMINEE");
INSERT INTO bit_bos_mem VALUES("115","11","Dr.Siddaraju","Professor & Head","Dept. of CSE.,
Dr.Ambedkar Institute of Technology,
Bangalore -560056
","ACADEMIC COUNCIL NOMINEE");
INSERT INTO bit_bos_mem VALUES("116","11","Dr.J. Senthil Kumar ","Professor","Department of Information Technology,Sona College of  Technology,
Salem- 636 011.
","ACADEMIC COUNCIL NOMINEE");
INSERT INTO bit_bos_mem VALUES("117","11","Dr.V.Vijayaragavan","Senior Research Scientist","Infosys Limited,
44 Electronics City, Hosur Road,
Bangalore – 560 100.
 ","INDUSTRY EXPERT");
INSERT INTO bit_bos_mem VALUES("118","11","Mr.R.Udayakumar ","Project Manager","IBM India Pvt. Ltd.,
Bangalore -560017.
","REPRESENTATIVE FROM ALUMNI ");
INSERT INTO bit_bos_mem VALUES("119","11","Dr.S.Sumathi","Professor & Head","Department of Electronics & Communication Engineering, 
Adhiyamaan College of Engineering, 
Hosur-635109.
","INTER DISCIPLINARY  EXPERT");
INSERT INTO bit_bos_mem VALUES("120","11","Dr.D.Thilagavathy","Professor & Head","Department of  Computer Science and Engineering,
Adhiyamaan College of Engineering, 
Hosur-635109.
","INTER DISCIPLINARY  EXPERT");
INSERT INTO bit_bos_mem VALUES("121","11","Prof.P.Kavitha","Associate Professor","Department of Information Technology, 
Adhiyamaan College of Engineering,
Hosur-635109.
","FACULTY REPRESENTATIVE");
INSERT INTO bit_bos_mem VALUES("122","11","Prof.M.Sakthivel ","Associate Professor","Department of Information Technology,
Adhiyamaan College of Engineering,
Hosur-635109.
","FACULTY REPRESENTATIVE");
INSERT INTO bit_bos_mem VALUES("123","11","Prof.M. Daya Kanimozhi Rani","Associate Professor","Department of Information Technology, 
Adhiyamaan College of Engineering,
Hosur-635109.
","FACULTY REPRESENTATIVE");
INSERT INTO bit_bos_mem VALUES("124","12","Dr.G.Fathima","Professor & Head","Department of Information Technology,
Adhiyamaan College of Engineering, 
Hosur-635109.
","CHAIRMAN");
INSERT INTO bit_bos_mem VALUES("125","12","Prof.P.Kavitha","Associate Professor","Department of Information Technology, 
Adhiyamaan College of Engineering,
Hosur-635109.
","FACULTY REPRESENTATIVE");
INSERT INTO bit_bos_mem VALUES("126","12","Prof.M.Sakthivel","Associate Professor /I.T","Department of Information Technology,
Adhiyamaan College of Engineering, 
Hosur-635109.
  ","FACULTY REPRESENTATIVE");
INSERT INTO bit_bos_mem VALUES("127","12","Prof.M. Daya Kanimozhi Rani ","Associate Professor","Department of Information Technology,
Adhiyamaan College of Engineering, 
Hosur-635109.
  ","FACULTY REPRESENTATIVE");
INSERT INTO bit_bos_mem VALUES("128","12","Dr.S.Sumathi","Professor & Head","Department of Electronics & Communication Engineering, 
Adhiyamaan College of Engineering, 
Hosur-635109.
","INTER DISCIPLINARY  EXPERT");
INSERT INTO bit_bos_mem VALUES("129","12","Mrs.Nafeesa Begum","Asst.Professor (Sr.Grade) CSE","Govt. College of Engg. 
Bargur- 635 104
","ACADEMIC COUNCIL NOMINEE");
INSERT INTO bit_bos_mem VALUES("130","12","Dr.Prakash","Professor & Head-ISE","Banglore Institute of Technology,
K.R.Road,V.V.Puram
Banglore-560004
","ACADEMIC COUNCIL NOMINEE");
INSERT INTO bit_bos_mem VALUES("131","12","Dr.Tholkapiarasu","Principal","AVS Engineering College
Ammapet,Salem – 636003
","University Nominee");
INSERT INTO bit_bos_mem VALUES("132","12","Dr.A.Kannan","Professor","Dept.of Information Science & Tech,
College of Engg, Guindy,
Anna University,Chennai-25
","University Nominee");
INSERT INTO bit_bos_mem VALUES("133","12","Mrs.S.Leena Devakumar","Chief Architect","I2I Tele Solutions  & Tele Medicine, 
Bangalore – 560037
","Industry Representative");
INSERT INTO bit_bos_mem VALUES("134","12","Mr.C.Anand","Sr. Software Engineer","Infosys Technologies,
Bangalore - 560100 
","Alumni ");





CREATE TABLE `bit_dept` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `nba_cer3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO bit_dept VALUES("1","2001-2002","40","Anna University","50910-affiation-02-03(40-60).pdf","","","","","","","","","");
INSERT INTO bit_dept VALUES("2","2002-2003","60","Anna Univerisity","78949-affiation-02-03(40-60).pdf","","","","","","","","","");
INSERT INTO bit_dept VALUES("3","2006-2007","120","Anna University","72451-affiation-02-03(40-60).pdf","","","","","","","","","");
INSERT INTO bit_dept VALUES("4","2018-2019","60","Anna University","","","","","","","","","","");





CREATE TABLE `bit_faci` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `bit_org` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

INSERT INTO bit_org VALUES("1","2017-2018","workshop","Web Application Development","Self","2","2017-08-21","2017-08-22","0000-00-00","Dr.LillyFlorance, Professor, D","80","national","9736-web.jpg","1");
INSERT INTO bit_org VALUES("2","2018-2019","workshop","Mobile Application Development","SELF","2","2018-09-06","2018-09-07","0000-00-00","Arun David Johnson. R","60","national","41940-mobile-app-development.jpg","1");
INSERT INTO bit_org VALUES("3","2018-2019","symposium","Accendo2K18","SELF","2","2018-09-19","2018-09-20","0000-00-00","Dr.G. Ranganath","350","national","85721-accendo2k18-min.jpg","1");
INSERT INTO bit_org VALUES("4","2016-2017","guest_l","IoT","SELF","1","0000-00-00","0000-00-00","2016-06-24","Mr.Manjunath","200","national","68326-iot-guest-lecture.jpg","1");
INSERT INTO bit_org VALUES("5","2016-2017","seminar","Cloud Computing","SELF","1","0000-00-00","0000-00-00","2016-07-15","Mr. P.AshwinGowtham","100","national","32045-cloud-seminar.jpg","1");
INSERT INTO bit_org VALUES("6","2016-2017","guest_l","Introduction to Virtualization","SELF","1","0000-00-00","0000-00-00","2016-07-21","Mr. Ruban Ebenezer","150","national","8715-virtulization.jpg","1");
INSERT INTO bit_org VALUES("7","2016-2017","seminar","Employability Skills for the Future","SELF","1","0000-00-00","0000-00-00","2016-07-30","Mr. Eregamani","150","national","37968-employability.jpg","1");
INSERT INTO bit_org VALUES("8","2016-2017","workshop","Internet of Things (IoT)","SELF","2","2016-08-18","2016-08-19","0000-00-00","Mr.Manjunath","60","national","31627-iot-work.jpg","1");
INSERT INTO bit_org VALUES("9","2016-2017","workshop","Photoshop and Animation","SELF","1","0000-00-00","0000-00-00","2016-08-22","Ms. Karthika","70","district","90580-photoshop-ani-work.jpg","1");
INSERT INTO bit_org VALUES("10","2016-2017","sdp","EXPO 2k16","SELF","2","2016-09-07","2016-09-08","0000-00-00","Dr. G.Ranganath","200","national","45793-expo2k16.jpg","1");
INSERT INTO bit_org VALUES("11","2016-2017","fdp","Mobile Application Development","SELF","2","2016-09-26","2016-09-27","0000-00-00","Benhar Charles V","50","national","13993-fdp.jpg","1");
INSERT INTO bit_org VALUES("12","2016-2017","guest_l","Animation Photography and Multimedia","SELF","1","0000-00-00","0000-00-00","2017-02-27","Mr.Ujwal","50","national","80029-20170227_114659-min.jpg","1");
INSERT INTO bit_org VALUES("13","2016-2017","fdp","Introduction to R Programming","SELF","2","2017-04-20","2017-04-21","0000-00-00","Mr.Jagadesan","45","national","25345-img20170420152821-min.jpg","1");
INSERT INTO bit_org VALUES("14","2017-2018","workshop","Digital Marketing","ACE","1","0000-00-00","0000-00-00","2018-03-22","Mr.T.Kodeeswaran, Analyzer in ","60","national","12750-digital.png","1");
INSERT INTO bit_org VALUES("15","2017-2018","training","ITA Anniversary","ACE","2","2018-03-15","2018-03-16","0000-00-00","Mr. R. Krishnan, Fonder, Smaar","100","national","25103-anniver.jpg","1");
INSERT INTO bit_org VALUES("16","2017-2018","workshop","Sales force Business Administration Specialists","ACE","5","2018-01-29","2018-02-02","0000-00-00","Mr. Piyush Gupta,  Sales Force","60","national","95046-sales.jpg","1");
INSERT INTO bit_org VALUES("17","2017-2018","workshop","Web Application Development","ACE","2","2017-08-21","2017-08-22","0000-00-00","Dr.LillyFlorance, Professor, D","60","national","74520-web.jpg","1");
INSERT INTO bit_org VALUES("18","2017-2018","guest_l","Artificial Intelligence and Machine Lerning","ACE","1","0000-00-00","0000-00-00","2017-08-05","Mr.Kamaraj, Trainer, Intel, Ba","60","national","82723-artificial.jpg","1");
INSERT INTO bit_org VALUES("19","2017-2018","guest_l","Data Science & Big Data Analytics","ACE","1","0000-00-00","0000-00-00","2017-07-19","Mr. Laksminarayanan, Regional ","60","state","45770-bigdata.jpg","1");
INSERT INTO bit_org VALUES("20","2015-2016","training","IT Anniversary","ACER","1","0000-00-00","0000-00-00","2016-03-30","Mr. Sridharan Seshadri, Engine","250","national","87300-anniversary.jpg","1");
INSERT INTO bit_org VALUES("21","2015-2016","workshop","PHP and Python Programming","ACE","2","2016-03-15","2016-03-16","0000-00-00","Mr.  H. Karthikeyan AP / IT, A","60","national","2890-php.jpg","1");
INSERT INTO bit_org VALUES("22","2015-2016","workshop","Web Designing & Development","ACE","2","2016-02-18","2016-02-19","0000-00-00","Mr. R. Mohankumar, Chief Execu","60","national","85491-web-esigning.jpg","1");
INSERT INTO bit_org VALUES("23","2015-2016","workshop","Android Application  Development","ACE","2","2016-02-15","2016-02-16","0000-00-00","Mr. S. Vinoth Co- Founder & Ch","60","national","11403-android-app.jpg","1");
INSERT INTO bit_org VALUES("24","2015-2016","guest_l","Entrepreneurship","ACE","1","0000-00-00","0000-00-00","2016-02-11","Mr. S. Sundarpaul, Director, A","60","national","69218-enterprounrship.jpg","1");
INSERT INTO bit_org VALUES("25","2015-2016","seminar","Employability Skills","ICT academy of Tamilnadu","1","0000-00-00","0000-00-00","2016-01-30","Mr. G. Subramanian, HR Leader,","100","national","51968-employee-jan.jpg","1");
INSERT INTO bit_org VALUES("26","2015-2016","0","How To Think","ACE","1","0000-00-00","0000-00-00","2016-01-25","Mr. Arjjun Sellamuthu CEO, Inf","60","national","71426-how-to-think.jpg","1");
INSERT INTO bit_org VALUES("27","2015-2016","workshop","C# & .NET Programming","ACE","3","2016-01-11","2016-01-13","0000-00-00","Mr. S. Vinoth Co- Founder & Ch","60","national","4126-c#-and-.net.jpg","1");
INSERT INTO bit_org VALUES("28","2015-2016","seminar","BIG DATA","ACE","1","0000-00-00","0000-00-00","2016-01-09","Mr. S. Shanmugavel, Deputy Man","200","national","24588-bigdata.jpg","1");
INSERT INTO bit_org VALUES("29","2015-2016","guest_l","IBM Blue Mix","ACE","1","0000-00-00","0000-00-00","2016-01-06","Mr. N. Balaji, Project Trainee","200","national","86944-ibm.jpg","1");
INSERT INTO bit_org VALUES("30","2015-2016","seminar","Seminar on Gate Exam","ACE","1","0000-00-00","0000-00-00","2015-12-16","Srinivasa. M Executive, GATE F","200","national","29702-gate.jpg","1");
INSERT INTO bit_org VALUES("31","2015-2016","training","Intra College Fest","ACE","1","0000-00-00","0000-00-00","2015-08-20","Dr. G. Fathima HOD / IT","200","state","49075-intra.jpg","1");
INSERT INTO bit_org VALUES("32","2015-2016","conference","Exploration of Computation and Information Technol","Dept of IT  & Dept of MCA","2","2015-09-11","2015-09-12","0000-00-00","Dr. Satheesha Chandra shenoi D","350","international","46405-confereence.jpg","1");
INSERT INTO bit_org VALUES("33","2015-2016","training","Project Expo-2k15","Dept of IT & CSI Student Branch","2","2015-09-08","2015-09-09","0000-00-00","Dr.G.Ranganath Principal, ACE","300","national","37185-expo.jpg","1");
INSERT INTO bit_org VALUES("34","2015-2016","seminar","Road Show ","ACE","1","0000-00-00","0000-00-00","2015-09-01","Ms. Shana Kumaraswamy, Infosys","200","national","9614-roadshow.jpg","1");
INSERT INTO bit_org VALUES("35","2015-2016","symposium","Accendo-2K15","ACE","2","2015-08-13","2015-08-14","0000-00-00","Mr. Vincent Xavier Vice Presid","300","national","6403-accendo_2k15__1555049158_12599.jpg","1");
INSERT INTO bit_org VALUES("36","2015-2016","sdp","Alumini-2015","ACE","1","0000-00-00","0000-00-00","2015-08-08","Dr.G.Ranganath Principal, ACE","300","state","10677-alumni.jpg","1");
INSERT INTO bit_org VALUES("37","2015-2016","seminar","Power Seminar on Employability Skills","ICT academy of Tamilnadu","1","0000-00-00","0000-00-00","2015-07-25","Mr.Divyanshu Verma Head-Virtua","200","national","12641-employee-july.jpg","1");
INSERT INTO bit_org VALUES("38","2015-2016","guest_l","Employment Skill Development","ACE","1","0000-00-00","0000-00-00","2015-07-04","G. Joel Paul Williams Mr.Haris","60","national","66349-guest-lec-employe.jpg","1");
INSERT INTO bit_org VALUES("39","2015-2016","seminar","Career Readiness Programme STENCIL","ACE","1","0000-00-00","0000-00-00","2015-06-18","Ms.Saskhi Jain EMC2, Bangalore","100","national","34212-scentil__1555049540_38400.jpg","1");
INSERT INTO bit_org VALUES("40","2014-2015","workshop","Mobile Application development- Appdhoom15","ACE","1","0000-00-00","0000-00-00","2015-02-25","Mr.S.Trithiviraj Mr.A.DineshKu","60","national","33392-mobile-appdhomm-15.jpg","1");
INSERT INTO bit_org VALUES("41","2014-2015","workshop","Website Designing and Hosting in Real Time","ACE","2","2015-02-19","2015-02-20","0000-00-00","Mr.S.Praveen Kumar Director of","60","national","12745-hosting_in_real_time__1555051160_23508.jpg","1");
INSERT INTO bit_org VALUES("42","2014-2015","workshop","Android Application development","ACE","2","2015-02-09","2015-02-10","0000-00-00","Ms. H. Bhuvaneswari, Head- tra","60","national","62916-android_application___2___1555051250_62716.jpg","1");
INSERT INTO bit_org VALUES("43","2014-2015","guest_l","High Performance Computing","ACE","1","0000-00-00","0000-00-00","2015-01-07","Mr. Godfrey J. Lawrence, Senio","100","national","15823-high-performance.jpg","1");





CREATE TABLE `bit_stud` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
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
  `stud_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO bit_stud VALUES("1","2015-2016","I","1","A","ug","2015-2019","0","0","0","0","0","0","48","29","0","40","10","1","22","0","","4","0","","","","","","77","0","BIT-2015-2019-I-1-A-NEW-2015-2019 IT 1st Sem.csv");
INSERT INTO bit_stud VALUES("2","2015-2016","I","2","A","ug","2015-2019","0","2","1","1","0","0","46","29","0","38","10","1","22","0","","4","0","","","","","","75","0","BIT-2015-2019-I-2-A-NEW-2015-2019 IT 2nd Sem.csv");
INSERT INTO bit_stud VALUES("3","2018-2019","I","1","A","ug","2018-2022","0","0","0","0","0","0","36","24","0","29","6","2","16","1","","6","0","","","","","","60","0","BIT-2018-2022-I-1-A-NEW-2018-2022-FIRST.csv");
INSERT INTO bit_stud VALUES("4","2018-2019","I","2","A","ug","2018-2022","0","1","1","0","0","0","36","23","0","29","6","2","15","1","","6","0","","","","","","59","0","BIT-2018-2022-I-2-A-NEW-2018-2022-II.csv");
INSERT INTO bit_stud VALUES("5","2017-2018","I","1","A","ug","2017-2021","78","3","0","3","0","0","54","24","0","29","6","1","38","1","","3","0","","","","","","78","0","BIT-2017-2021-I-1-A-NEW-sample_file(1).csv");





CREATE TABLE `bme_bos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

INSERT INTO bme_bos VALUES("1","1","2007-2008","2007-08-22","24326-1-bos.jpg");
INSERT INTO bme_bos VALUES("2","2","2008-2009","2008-06-30","64459-2-bos.jpg");
INSERT INTO bme_bos VALUES("3","3","2008-2009","2009-04-18","1783-3-bos.jpg");
INSERT INTO bme_bos VALUES("4","4","2009-2010","2010-01-30","9673-4-bos.jpg");
INSERT INTO bme_bos VALUES("5","5","2010-2011","2011-02-05","24774-5-bos.jpg");
INSERT INTO bme_bos VALUES("6","6","2011-2012","2011-11-05","46476-6-bos.jpg");
INSERT INTO bme_bos VALUES("7","7","2011-2012","2012-03-31","39471-7-bos.jpg");
INSERT INTO bme_bos VALUES("8","8","2012-2013","2012-10-20","9043-8-bos.jpg");
INSERT INTO bme_bos VALUES("9","9","2012-2013","2013-03-30","58189-9-bos.jpg");
INSERT INTO bme_bos VALUES("10","10","2013-2014","2013-10-05","20928-10-bos.jpg");
INSERT INTO bme_bos VALUES("11","11","2013-2014","2014-04-05","76928-bos_11.jpg");
INSERT INTO bme_bos VALUES("12","12","2014-2015","2014-11-01","65685-bos-12-.jpg");
INSERT INTO bme_bos VALUES("13","12","2014-2015","2014-11-01","21581-bos-12-.jpg");
INSERT INTO bme_bos VALUES("14","13","2014-2015","2015-03-14","89637-bos-13_2.jpg");
INSERT INTO bme_bos VALUES("15","14","2015-2016","2015-09-12","3266-bos-14.jpg");
INSERT INTO bme_bos VALUES("16","15","2015-2016","2016-04-02","74904-bos-15.jpg");
INSERT INTO bme_bos VALUES("17","16","2016-2017","2016-10-15","7065-bos-16.jpg");
INSERT INTO bme_bos VALUES("18","17","2016-2017","2017-04-01","96772-bos-17.jpg");
INSERT INTO bme_bos VALUES("19","19","2017-2018","2018-04-21","76946-bos-19_2.jpg");
INSERT INTO bme_bos VALUES("20","18","2017-2018","2017-10-28","60423-bos-18.jpg");
INSERT INTO bme_bos VALUES("21","20","2018-2019","2018-10-27","9796-bos-20.jpg");
INSERT INTO bme_bos VALUES("22","21","2018-2019","2019-04-27","38363-bos-21_2.jpg");





CREATE TABLE `bme_bos_mem` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=latin1;

INSERT INTO bme_bos_mem VALUES("3","1","Dr.S.Siddagangaiah ","Prof & Head, ","Department of BME, Adhiyamaan college of Engg.
Hosur
","Chairman");
INSERT INTO bme_bos_mem VALUES("4","1","Mrs.Seema Padmanaban","Assistant Professor","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("5","1","Ms.S.Sivagowri ","Lecturer","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("6","1","Mr.R.Premkumar","Lecturer","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("7","1","Mr.M.C.Jobin Christ ","Lecturer","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("8","1","Mr.G.Jagan","Lecturer","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("9","1","Dr.M.Madheswaran ","Principal","Muthayammal Engineering  College 
Rasipuram-637408
Namakkal (DT), Tamil Nadu
","Academic Council Nominee");
INSERT INTO bme_bos_mem VALUES("10","1","Dr.V.Udayashankarara ","Professor","Department of Instrumentation technology
SJCE, Mysore.Karnataka.
","Academic Council Nominee");
INSERT INTO bme_bos_mem VALUES("11","1","Dr.Gayathri Subbiah","Assistant Professor"," Department of Biomedical Engineering
St.Peters Engineering College, Avadi
","University Nominee");
INSERT INTO bme_bos_mem VALUES("12","2","Dr.S.Siddagangaiah ","Prof & Head","Department of BME, Adhiyamaan college of Engg.
Hosur
","Chairman");
INSERT INTO bme_bos_mem VALUES("13","2","Mrs.Seema Padmanaban","Assistant Professor","Department of BME, 
Adhiyamaan college of Engg.
Hosur
","Department Faculty");
INSERT INTO bme_bos_mem VALUES("14","2","Ms.S.Sivagowri ","Lecturer","Department of BME, 
Adhiyamaan college of Engg.
Hosur
","Department Faculty");
INSERT INTO bme_bos_mem VALUES("15","2","Mr.M.C.Jobin Christ ","Lecturer","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("16","2","Mr.G.Jagan","Lecturer","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("17","2","Mrs.T.S.Udhaya Suriya ","Lecturer","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("18","2","Dr.M.Madheswaran ","Principal","Muthayammal Engineering  College 
Rasipuram-637408
Namakkal (DT), Tamil Nadu
","Academic Council Nominee");
INSERT INTO bme_bos_mem VALUES("19","2","Dr.Gayathri Subbiah","Assistant Professor","Department of Biomedical Engineering
St.Peters Engineering College, Avadi
","University Nominee");
INSERT INTO bme_bos_mem VALUES("20","2","Dr.K.A.Mohamed Junaid","Professor & Head","Department of EIE
RMK Engineerinmg College
Chennai
","University Nominee");
INSERT INTO bme_bos_mem VALUES("21","3","Dr.S.Siddagangaiah ","Prof & Head, ","Department of BME, Adhiyamaan college of Engg.
Hosur
","Chairman");
INSERT INTO bme_bos_mem VALUES("22","3","Mrs.Seema Padmanaban","Assistant Professor","Department of BME, 
Adhiyamaan college of Engg.
Hosur
","Department Faculty");
INSERT INTO bme_bos_mem VALUES("23","3","Ms.S.Sivagowri ","Lecturer","Department of BME, 
Adhiyamaan college of Engg.
Hosur
","Department Faculty");
INSERT INTO bme_bos_mem VALUES("24","3","Mr.M.C.Jobin Christ ","Lecturer"," Department of BME, Adhiyamaan college of Engg.
Hosurn ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("25","3","Mr.K.Sasikumar","Lecturer"," Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("26","3","Mrs.A.N.Nithyaa","Lecturer","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("27","3","Dr.M.Madheswaran ","Principal","Muthayammal Engineering  College 
Rasipuram-637408
Namakkal (DT), Tamil Nadu
","Academic Council Nominee");
INSERT INTO bme_bos_mem VALUES("28","3","Dr.V.Udayashankarara ","Professor","Department of Instrumentation technology
SJCE, Mysore.Karnataka
","Academic Council Nominee");
INSERT INTO bme_bos_mem VALUES("29","3","Ms.C.Dhivya","Program Analyst","CTS BANGALORE","Academic Council Nominee - Alumni");
INSERT INTO bme_bos_mem VALUES("30","4","Dr.S.Siddagangaiah ","Prof & Head","Department of BME, Adhiyamaan college of Engg.
Hosur
","Chairman");
INSERT INTO bme_bos_mem VALUES("31","4","Ms.S.Sivagowri ","Senior Lecturer","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("32","4","Mr.M.C.Jobin Christ ","Lecturer","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("33","4","Mr.K.Sasikumar","Lecturer","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("34","4","Mrs.T.S.Udhaya Suriya ","Lecturer"," Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("35","4","Ms.V.Mythily","Lecturer","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("36","4","Mr.V.Sampath kumar","Assistant Professor","Dept of EIE
Dr.Mahalingam College of Engineering
Pollachi
","University Nominee");
INSERT INTO bme_bos_mem VALUES("37","4","Mr. R.Prem Kumar","Senior Lecturer","Dept of BME
Rajalakshmi Engineering College
Chennai
","University Nominee");
INSERT INTO bme_bos_mem VALUES("38","4","Mr.V.Praghadeeswaran ","Chief Executive","ARIES BIOMED
Coimbatore
","Academic Council Nominee -  Industry");
INSERT INTO bme_bos_mem VALUES("39","4","Ms.C.Dhivya","Program Analyst","CTS BANGALORE","Academic Council Nominee - Alumni");
INSERT INTO bme_bos_mem VALUES("40","5","Dr.S.Siddagangaiah ","Prof & Head","Department of BME, Adhiyamaan college of Engg.
Hosur
","Chairman");
INSERT INTO bme_bos_mem VALUES("41","5","Ms.S.Sivagowri ","Lecturer","Department of BME, 
Adhiyamaan college of Engg.
Hosur
","Department Faculty");
INSERT INTO bme_bos_mem VALUES("42","5","Mr.M.C.Jobin Christ ","Lecturer","Department of BME, 
Adhiyamaan college of Engg.
Hosur
","Department Faculty");
INSERT INTO bme_bos_mem VALUES("43","5","Mrs.T.S.Udhaya Suriya ","Lecturer","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("44","5","Mr. Solaiappan Solasubbu","Lecturer","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("45","5","Ms.Neelam Shobha Nirala","Lecturer","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("46","5","Dr.V.Udayashankarara ","Professor","Department of Instrumentation technology
SJCE, Mysore.Karnataka.
","Academic Council Nominee");
INSERT INTO bme_bos_mem VALUES("47","5","Mr.V.Praghadeeswaran ","Chief Executive","ARIES BIOMED
Coimbatore
","Industrial Representative ");
INSERT INTO bme_bos_mem VALUES("48","5","Ms.S.J.G.Sunderson","Software Engineer","Software Engineer
Mphasis, Chennai
","Alumnae Representative");
INSERT INTO bme_bos_mem VALUES("49","6","Dr.S.Siddagangaiah ","Prof & Head","Department of BME, Adhiyamaan college of Engg.
Hosur
","Chairman");
INSERT INTO bme_bos_mem VALUES("50","6","Ms.S.Sivagowri ","Assistant Professor","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("51","6","Mr.M.C.Jobin Christ ","Assistant Professor","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("52","6","Mrs.T.S.Udhaya Suriya ","Assistant Professor","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("53","6","Mr. Solaiappan Solasubbu","Assistant Professor","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("54","6","Ms.Neelam Shobha Nirala","Assistant Professor","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("55","6","Dr.V.Udayashankarara ","Professor","Department of Instrumentation technology
SJCE, Mysore.Karnataka.
","Department Faculty");
INSERT INTO bme_bos_mem VALUES("56","6","Dr.S.Poonguzhali","Assistant Professor","Assistant Professor
ECE, College of Engineering Guindy, Chennai
","Academic Council Nominee");
INSERT INTO bme_bos_mem VALUES("57","6","Mr.V.Praghadeeswaran ","Chief Executive","ARIES BIOMED
Coimbatore
","Industrial Representative ");
INSERT INTO bme_bos_mem VALUES("58","6","Mr.S.J.G.Sunderson","Software Engineer","Software Engineer
Mphasis, Chennai
","Academic Council Nominee - Alumni");
INSERT INTO bme_bos_mem VALUES("59","7","Dr.S.Siddagangaiah ","Prof & Head, ","Department of BME, Adhiyamaan college of Engg.
Hosur
","Chairman");
INSERT INTO bme_bos_mem VALUES("60","7","Ms.S.Sivagowri ","Assistant Professor"," Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("61","7","Mr.M.C.Jobin Christ ","Assistant Professor","Department of BME, 
Adhiyamaan college of Engg.
Hosur
","Department Faculty");
INSERT INTO bme_bos_mem VALUES("62","7","Mrs.T.S.Udhaya Suriya ","Assistant Professor","Department of BME, 
Adhiyamaan college of Engg.
Hosur
","Department Faculty");
INSERT INTO bme_bos_mem VALUES("63","7","Mr. Solaiappan Solasubbu","Assistant Professor"," Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("64","7","Ms.Neelam Shobha Nirala","Assistant Professor"," Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("66","7","Dr.M.Madheswaran ","Principal","Muthayammal Engineering  College 
Rasipuram-637408
Namakkal (DT), Tamil Nadu
","University Nominee");
INSERT INTO bme_bos_mem VALUES("67","7","Dr.V.Udayashankarara ","Professor","Department of Instrumentation technology
SJCE, Mysore.Karnataka.
","Member Nominated by Academic Council");
INSERT INTO bme_bos_mem VALUES("68","7","Mr.V.Praghadeeswaran ","Chief Executive","ARIES BIOMED
Coimbatore
","Industrial Expert");
INSERT INTO bme_bos_mem VALUES("69","7","Mr.S.J.G.Sunderson","Software Engineer","Mphasis, Chennai","Representative from Alumni");
INSERT INTO bme_bos_mem VALUES("70","8","Dr.S.Siddagangaiah ","Prof & Head, ","Department of BME, Adhiyamaan college of Engg.
Hosur
","Chairman");
INSERT INTO bme_bos_mem VALUES("71","8","Mrs.S.Sivagowri ","Assistant Professor","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("72","8","Mr.M.C.Jobin Christ ","Assistant Professor","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("73","8","Mrs.T.S.Udhaya Suriya ","Assistant Professor"," Department of BME, Adhiyamaan college of Engg.
Hosur
    ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("74","8","Mr. Solaiappan Solasubbu","Assistant Professor"," Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("75","8","Mr.Kumar Kandukuri","Assistant Professor","Department of BME, Adhiyamaan college of Engg.
Hosur
    ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("76","8","Dr.M.Madheswaran ","Principal","Muthayammal Engineering  College 
Rasipuram-637408
Namakkal (DT), Tamil Nadu
","University Nominee");
INSERT INTO bme_bos_mem VALUES("77","8","Dr.V.Udayashankarara ","Professor","Department of Instrumentation technology
SJCE, Mysore.Karnataka.
","Member Nominated by Academic Council");
INSERT INTO bme_bos_mem VALUES("78","8","Dr.S.Poonguzhali","Assistant Professor","ECE, College of Engineering Guindy.","Member Nominated by Academic Council");
INSERT INTO bme_bos_mem VALUES("79","8","Mr.V.Praghadeeswaran ","Chief Executive","ARIES BIOMED
Coimbatore
","Industrial Expert ");
INSERT INTO bme_bos_mem VALUES("80","8","Mr.S.J.G.Sunderson","Software Engineer","Mphasis, Chennai","Representative from Alumni");
INSERT INTO bme_bos_mem VALUES("81","9","Dr.S.Siddagangaiah ","Prof & Head","Department of BME, Adhiyamaan college of Engg.
Hosur
","Chairman");
INSERT INTO bme_bos_mem VALUES("82","9","Mrs.S.Sivagowri ","Assistant Professor","Department of BME, 
Adhiyamaan college of Engg.
Hosur
","Department Faculty");
INSERT INTO bme_bos_mem VALUES("83","9","Mr.M.C.Jobin Christ ","Assistant Professor","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("84","9","Mr. Solaiappan Solasubbu","Assistant Professor"," Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("85","9","Mr.Kumar Kandukuri","Assistant Professor","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("86","9","Dr.V.Udayashankarara ","Professor","Department of Instrumentation technology
SJCE, Mysore.Karnataka.
","Member Nominated by Academic Council");
INSERT INTO bme_bos_mem VALUES("87","9","Dr.S.Poonguzhali","Assistant Professor","ECE, College of Engineering Guindy.","Department Faculty");
INSERT INTO bme_bos_mem VALUES("88","9","Mr.V.Praghadeeswaran ","Chief Executive","ARIES BIOMED
Coimbatore
","Industrial Expert ");
INSERT INTO bme_bos_mem VALUES("89","9","Mr.S.J.G.Sunderson","Software Engineer","Mphasis, Chennai","Representative from Alumni");
INSERT INTO bme_bos_mem VALUES("90","10","Dr.S.Siddagangaiah ","Prof & Head, ","Department of BME, Adhiyamaan college of Engg.
Hosur
","Chairman");
INSERT INTO bme_bos_mem VALUES("91","10","Ms.S.Sivagowri ","Assistant Professor","Department of BME, 
Adhiyamaan college of Engg.
Hosur
","Department Faculty");
INSERT INTO bme_bos_mem VALUES("92","10","Mr.M.C.Jobin Christ ","Assistant Professor","Department of BME, 
Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("93","10","Mrs.T.S.Udhaya Suriya ","Assistant Professor","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("94","10","Mr. Solaiappan Solasubbu","Assistant Professor"," Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("95","10","Mr.Kumar Kandukuri","Assistant Professor","Department of BME, Adhiyamaan college of Engg.
Hosur","Department Faculty");
INSERT INTO bme_bos_mem VALUES("96","10","Dr.M.Madheswaran ","Principal","Muthayammal Engineering  College 
Rasipuram-637408
Namakkal (DT), Tamil Nadu
","University Nominee");
INSERT INTO bme_bos_mem VALUES("97","10","Mr.V.Praghadeeswaran ","Chief Executive","ARIES BIOMED
Coimbatore
","Industrial Expert ");
INSERT INTO bme_bos_mem VALUES("98","10","Mr.S.J.G.Sunderson","Software Engineer","Mphasis, Chennai","Representative from Alumni");
INSERT INTO bme_bos_mem VALUES("99","11","Dr.S.Siddagangaiah ","Prof & Head","Department of BME, Adhiyamaan college of Engg.
Hosur
","Chairman");
INSERT INTO bme_bos_mem VALUES("100","11","Dr. jobin christ","professor","Department of BME, 
Adhiyamaan college of Engg.
Hosur
","Department Faculty");
INSERT INTO bme_bos_mem VALUES("101","11","Mrs.T.S.Udhaya Suriya ","Assistant professor"," Department of BME, Adhiyamaan ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("102","11","Mr.P.Ganesh Babu","Assistant professor","Department of BME, Adhiyamaan college of Engg.
Hosur
  ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("103","11","Mr. Solaiappan Solasubbu","Assistant professor"," Department of BME, Adhiyamaan ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("104","11","Mr.Kumar Kandukuri","Assistant professor","Department of BME, Adhiyamaan ","Department Faculty");
INSERT INTO bme_bos_mem VALUES("105","11","Mr. K.R. Radhakrishnan","Dean-Academic","Rajalakshmi Engineering College
Chennai
","University Nominee");
INSERT INTO bme_bos_mem VALUES("106","11","Dr.S.Poonguzhali","Assistant professor","ECE, College of Engineering Guindy","Member Nominated by Academic Council");
INSERT INTO bme_bos_mem VALUES("107","11","Mr.V.Praghadeeswaran ","Chief Executive","ARIES BIOMED
Coimbatore
","Industrial Expert ");
INSERT INTO bme_bos_mem VALUES("108","12","Dr.M.C.Jobin Christ ","Prof & Head","Department of BME, Adhiyamaan college of Engg.
Hosur 
","Chairman");
INSERT INTO bme_bos_mem VALUES("110","12","T.S.Udhaya Suriya ","Associate professor","Department of BME, Adhiyamaan ","Department faculty");
INSERT INTO bme_bos_mem VALUES("111","12","P.Ganesh Babu","Assistant professor","Department of BME, Adhiyamaan ","Department faculty");
INSERT INTO bme_bos_mem VALUES("112","12","Mr. S. Solasubbu ","Assistant professor"," college of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("113","12","Kumar Kandukuri","Assistant professor"," Department of BME, Adhiyamaan ","Department faculty");
INSERT INTO bme_bos_mem VALUES("114","12","Mr. C.Sathish Kumar","Assistant professor","  college of Engg.
Hosur 
    ","Department faculty");
INSERT INTO bme_bos_mem VALUES("115","12","Dr.N.Meenakshi Sundaram","Associate Professor","Department of Biomedical Engineering
PSG College of Technology
Coimbatore– 641 004
","University Nominee");
INSERT INTO bme_bos_mem VALUES("116","12","Dr.S.Mohamed Yacin","Professor & Head ","Dept of Biomedical Engineering
Rajalakshmi Engineering College, Chennai 
","Member Nominated by Academic Council");
INSERT INTO bme_bos_mem VALUES("117","12","Dr.R.M.G.Sumithra","Professor","Dept of  Electronics and Communication Engineering,
Bannari Amman Institute of Technology, Sathy.
","Member Nominated by Academic Council");
INSERT INTO bme_bos_mem VALUES("118","12","Mr.K.Mohanavelu","Scientist & Group Head","Biomedical Instrumentation
Defence Bioengineering & Electro-medical Lab
DRDO,Ministry of Defence,Bangalore.
","Industrial Expert");
INSERT INTO bme_bos_mem VALUES("119","12","Mr.S.G.Jayaraj","Senior Executive ","Service
Siemens Ltd.
Health Care Sector
Bangalore. 
","Representative from Alumni");
INSERT INTO bme_bos_mem VALUES("120","12","Dr.S.Sujatha","Professor & Head","Department of Electronics & Instrumentation Engineering
Adhiyamaan College of Engineering
Hosur
","Inter Disciplinary Expert");
INSERT INTO bme_bos_mem VALUES("125","14","Dr.M.C.Jobin Christ ","Prof & Head, ","Department of BME, Adhiyamaan college of Engg.
Hosur 
","Chairman");
INSERT INTO bme_bos_mem VALUES("126","14","T.S.Udhaya Suriya ","Associate Prof","epartment of BME, Adhiyamaan college of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("127","14","P.Ganesh Babu","Assistant professor","Department of BME, Adhiyamaan college of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("128","14","S. Solasubbu ","Assistant professor"," Department of BME, Adhiyamaan college of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("129","14","Kumar Kandukuri","Assistant professor","Department of BME, Adhiyamaan college of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("130","14","C.Sathish Kumar","Assistant professor","Department of BME, Adhiyamaan college of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("131","14","Dr.N.Meenakshi Sundaram","Associate Professor","Department of Biomedical Engineering
PSG College of Technology
Coimbatore– 641 004
","University Nominee");
INSERT INTO bme_bos_mem VALUES("132","14","Dr.S.Mohamed Yacin","Professor & Head ","Dept of Biomedical Engineering
Rajalakshmi Engineering College, Chennai 
","Member Nominated by Academic Council");
INSERT INTO bme_bos_mem VALUES("133","14","Dr.R.M.G.Sumithra","Professor","Dept of  Electronics and Communication Engineering,
Bannari Amman Institute of Technology, Sathy.
","Member Nominated by Academic Council");
INSERT INTO bme_bos_mem VALUES("134","14","K.Mohanavelu","Scientist & Group Head","Biomedical Instrumentation
Defence Bioengineering & Electro-medical Lab
DRDO,Ministry of Defence,Bangalore.
","Industrial Expert");
INSERT INTO bme_bos_mem VALUES("135","14","S.G.Jayaraj","Senior Executive ","Service
Siemens Ltd.
Health Care Sector
Bangalore. 
","Representative from Alumni");
INSERT INTO bme_bos_mem VALUES("136","14","Dr.S.Sujatha","Professor & Head","Department of Electronics & Instrumentation Engineering
Adhiyamaan College of Engineering
Hosur.
 
","Inter Disciplinary Expert");
INSERT INTO bme_bos_mem VALUES("137","15","Dr.M.C.Jobin Christ ","Prof & Head, ","Department of BME, Adhiyamaan college of Engg.
Hosur 
","Chairman");
INSERT INTO bme_bos_mem VALUES("138","15","T.S.Udhaya Suriya ","Associate Professor"," Department of BME, Adhiyamaan college of Engg.
Hosur","Department faculty");
INSERT INTO bme_bos_mem VALUES("139","15","P.Ganesh Babu","Assistant professor","Department of BME, Adhiyamaan college of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("140","15","S. Solasubbu ","Assistant professor","Department of BME, Adhiyamaan college of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("141","15","Kumar Kandukuri","Assistant professor","Department of BME, Adhiyamaan college of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("142","15","C.Sathish Kumar","Assistant professor","epartment of BME, Adhiyamaan college of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("143","15","Dr.N.Meenakshi Sundaram","Associate Professor","Department of Biomedical Engineering
PSG College of Technology
Coimbatore– 641 004
","University Nominee");
INSERT INTO bme_bos_mem VALUES("144","15","Dr.S.Mohamed Yacin","Professor & Head ","Dept of Biomedical Engineering
Rajalakshmi Engineering College, Chennai 
","Member Nominated by Academic Council");
INSERT INTO bme_bos_mem VALUES("145","15","Dr.R.M.G.Sumithra","Professor","Dept of  Electronics and Communication Engineering,
Bannari Amman Institute of Technology, Sathy.
","Member Nominated by Academic Council");
INSERT INTO bme_bos_mem VALUES("146","15","K.Mohanavelu","Scientist & Group Head","Biomedical Instrumentation
Defence Bioengineering & Electro-medical Lab
DRDO,Ministry of Defence,Bangalore.
","Industrial Expert");
INSERT INTO bme_bos_mem VALUES("147","15","L.Prathaab","Executive Engineer ","Siemens Ltd.
Health Care Sector
Bangalore. 
","Representative from Alumni");
INSERT INTO bme_bos_mem VALUES("148","15","Dr.S.Sujatha","Professor & Head","Department of Electronics & Instrumentation Engineering
Adhiyamaan College of Engineering
Hosur.
","Inter Disciplinary Expert");
INSERT INTO bme_bos_mem VALUES("149","16","Dr.M.C.Jobin Christ ","Prof & Head, ","Department of BME, Adhiyamaan college of Engg.
Hosur 
","Chairman");
INSERT INTO bme_bos_mem VALUES("150","16","T.S.Udhaya Suriya ","Associate Professor","Department of BME, Adhiyamaan college of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("151","16","P.Ganesh Babu","Assistant professor"," Department of BME, Adhiyamaan college of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("152","16","S. Solasubbu ","Assistant professor"," Department of BME, Adhiyamaan college of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("153","16","Kumar Kandukuri","Assistant professor","Department of BME, Adhiyamaan college of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("154","16","C.Sathish Kumar","Assistant professor","Department of BME, Adhiyamaan college of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("155","16","Dr.N.Meenakshi Sundaram","Associate Professor","Department of Biomedical Engineering
PSG College of Technology
Coimbatore– 641 004
","University Nominee");
INSERT INTO bme_bos_mem VALUES("156","16","Dr.S.Mohamed Yacin","Professor & Head ","Dept of Biomedical Engineering
Rajalakshmi Engineering College, Chennai 
","Member Nominated by Academic Council");
INSERT INTO bme_bos_mem VALUES("157","16","Dr.R.M.G.Sumithra","Professor","Dept of  Electronics and Communication Engineering,
Bannari Amman Institute of Technology, Sathy.
","Member Nominated by Academic Council");
INSERT INTO bme_bos_mem VALUES("158","16","K.Mohanavelu","Scientist & Group Head","Biomedical Instrumentation
Defence Bioengineering & Electro-medical Lab
DRDO,Ministry of Defence,Bangalore.
","Industrial Expert");
INSERT INTO bme_bos_mem VALUES("159","16","L.Prathaab","Executive Engineer ","Siemens Ltd.
Health Care Sector
Bangalore. 
","Representative from Alumni");
INSERT INTO bme_bos_mem VALUES("160","16","Dr.S.Sujatha","Professor & Head","Department of Electronics & Instrumentation Engineering
Adhiyamaan College of Engineering
Hosur.
","Inter Disciplinary Expert");
INSERT INTO bme_bos_mem VALUES("161","17","Dr.M.C.Jobin Christ ","Prof & Head, ","Department of BME, Adhiyamaan college of Engg.
Hosur 
","Chairman");
INSERT INTO bme_bos_mem VALUES("162","17","T.S.Udhaya Suriya ","Associate Professor"," Department of BME, Adhiyamaan college of Engg.
Hosur ","Department faculty");
INSERT INTO bme_bos_mem VALUES("163","17","P.Ganesh Babu","Assistant professor","Department of BME, Adhiyamaan college of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("164","17","Kumar Kandukuri","Assistant professor","Department of BME, Adhiyamaan college of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("165","17","C.Sathish Kumar","Assistant professor","Department of BME, Adhiyamaan college of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("166","17","Dr.A.Mahabub Baasha","Professor ","Department of Electronics & Instrumentation Engineering
KSR College of Engineering
Tiruchengode – 637 215
","University Nominee");
INSERT INTO bme_bos_mem VALUES("167","17","Dr.S.Poonguzhali","Assistant Professor ","Department of Electronics & Instrumentation Engineering
College of Engineering
Anna University, Chennai
","Member Nominated by Academic Council");
INSERT INTO bme_bos_mem VALUES("168","17","Dr.R.M.G.Sumithra","Professor","Dept of  Electronics and Communication Engineering,
Bannari Amman Institute of Technology, Sathy.
","Member Nominated by Academic Council");
INSERT INTO bme_bos_mem VALUES("169","17",".K.Mohanavelu","Scientist & Group Head","Biomedical Instrumentation
Defence Bioengineering & Electro-medical Lab
DRDO,Ministry of Defence,Bangalore.
","Industrial Expert");
INSERT INTO bme_bos_mem VALUES("170","17",".L.Prathaab","Executive Engineer ","Siemens Ltd.
Health Care Sector
Bangalore. 
","Representative from Alumni");
INSERT INTO bme_bos_mem VALUES("171","17","Dr.S.Sujatha","Professor & Head","Department of Electronics & Instrumentation Engineering
Adhiyamaan College of Engineering
Hosur.
","Inter Disciplinary Expert");
INSERT INTO bme_bos_mem VALUES("172","17","Dr.S.Sumathi","Professor & Head","Department of Electronics & Communication Engineering
Adhiyamaan College of Engineering
Hosur.
","Inter Disciplinary Expert");
INSERT INTO bme_bos_mem VALUES("173","18","Dr.M.C.Jobin Christ ","Prof & Head, ","Department of BME, Adhiyamaan College of Engg.
Hosur 
","Chairman");
INSERT INTO bme_bos_mem VALUES("174","18","Dr.T.S.Udhaya Suriya ","Associate Professor,","Department of BME, 
Adhiyamaan College of Engg.
Hosur
","Department faculty");
INSERT INTO bme_bos_mem VALUES("175","18","P.Ganesh Babu","Assistant professor","Department of BME, Adhiyamaan College of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("176","18","Kumar Kandukuri","Assistant professor","Department of BME, Adhiyamaan College of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("177","18","C.Sathish Kumar","Assistant professor","Department of BME, Adhiyamaan College of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("178","18","Dr.A.Mahabub Baasha","Professor ","Department of Electronics & Instrumentation Engineering
KSR College of Engineering
Tiruchengode – 637 215
","University Nominee");
INSERT INTO bme_bos_mem VALUES("179","18","Dr.S.Poonguzhali","Associate Professor ","Department of Electronics & Instrumentation Engineering
College of Engineering
Anna University, Chennai
","Member Nominated by Academic Council");
INSERT INTO bme_bos_mem VALUES("180","18","Dr.R.M.G.Sumithra","Scientist & Group Head,","Biomedical Instrumentation,
Defence Bioengineering & Electro-medical Lab
DRDO,Ministry of Defence,Bangalore.
","Industrial Expert");
INSERT INTO bme_bos_mem VALUES("181","18","L.Prathaab","Executive Engineer ","Siemens Ltd.
Health Care Sector
Bangalore
","Representative from Alumni");
INSERT INTO bme_bos_mem VALUES("182","18","Dr.S.Sujatha","Professor & Head","Department of Electronics & Instrumentation Engineering
Adhiyamaan College of Engineering
Hosur.
","Inter Disciplinary Expert");
INSERT INTO bme_bos_mem VALUES("183","18","Dr.S.Sumathi","Professor & Head","Department of Electronics & Communication Engineering
Adhiyamaan College of Engineering
Hosur.
","Inter Disciplinary Expert");
INSERT INTO bme_bos_mem VALUES("184","19","Dr.T.S.Udhaya Suriya ","Prof & Head, ","Department of BME, Adhiyamaan College of Engg.
Hosur 
","Chairman");
INSERT INTO bme_bos_mem VALUES("185","19","P.Ganesh Babu","Assistant  Professor,","Department of BME, 
Adhiyamaan College of Engg.
Hosur
","Department faculty");
INSERT INTO bme_bos_mem VALUES("186","19","Kumar Kandukuri","Assistant professor","Department of BME, Adhiyamaan College of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("187","19","C.Sathish Kumar","Assistant professor","Department of BME, Adhiyamaan College of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("188","19","V.P.Krishnammal","Associate Professor,","Department of BME, Adhiyamaan College of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("189","19","Dr.A.Mahabub Baasha","Professor ","Department of Electronics & Instrumentation Engineering
KSR College of Engineering
Tiruchengode – 637 215
","University Nominee");
INSERT INTO bme_bos_mem VALUES("190","19","Dr.S.Poonguzhali","Associate Professor ","Department of Electronics & Instrumentation Engineering
College of Engineering
Anna University, Chennai
","Member Nominated by Academic Council");
INSERT INTO bme_bos_mem VALUES("191","19","Dr.R.M.G.Sumithra","Professor & Head","Dept of  Electronics and Communication Engineering,
Bannari Amman Institute of Technology, Sathy.
","Member Nominated by Academic Council");
INSERT INTO bme_bos_mem VALUES("192","19","K.Mohanavelu","Scientist & Group Head,","Biomedical Instrumentation,
Defence Bioengineering & Electro-medical Lab
DRDO,Ministry of Defence,Bangalore.
","Industrial Expert");
INSERT INTO bme_bos_mem VALUES("193","19","B.S.Rajasekar","Biomedical Engineer ","St.John’s Medical College & Hospital,Bangalore. ","Representative from Alumni");
INSERT INTO bme_bos_mem VALUES("194","19","Dr.S.Sujatha","Professor & Head","Department of Electronics & Instrumentation Engineering
Adhiyamaan College of Engineering
Hosur.
","Inter Disciplinary Expert");
INSERT INTO bme_bos_mem VALUES("195","19","Dr.S.Sumathi","Professor & Head","Department of Electronics & Communication Engineering
Adhiyamaan College of Engineering
Hosur.
","Inter Disciplinary Expert");
INSERT INTO bme_bos_mem VALUES("196","20","Dr.T.S.Udhaya Suriya ","Prof & Head, ","Department of BME, Adhiyamaan College of Engg.
Hosur 
","Chairman");
INSERT INTO bme_bos_mem VALUES("197","20","P.Ganesh Babu","Associate Professor,","Department of BME, Adhiyamaan College of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("198","20","Kumar Kandukuri","Assistant professor","Department of BME, 
Adhiyamaan College of Engg.
Hosur
","Department faculty");
INSERT INTO bme_bos_mem VALUES("199","20","C.Sathish Kumar","Assistant professor","Department of BME, Adhiyamaan College of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("200","20","V.P.Krishnammal","Assistant Professor,","Department of BME, Adhiyamaan College of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("201","20","Dr.A.Mahabub Baasha","Professor ","Department of Electronics & Instrumentation Engineering
KSR College of Engineering
Tiruchengode – 637 215
","University Nominee");
INSERT INTO bme_bos_mem VALUES("202","20","Dr.S.Poonguzhali","Associate Professor ","Department of Electronics & Instrumentation Engineering
College of Engineering
Anna University, Chennai
","Member Nominated by Academic Council");
INSERT INTO bme_bos_mem VALUES("203","20","Dr.R.M.G.Sumithra","Professor","Dept of  Electronics and Communication Engineering,
Bannari Amman Institute of Technology, Sathy.
","Member Nominated by Academic Council");
INSERT INTO bme_bos_mem VALUES("204","20","K.Mohanavelu","Scientist & Group Head,","Biomedical Instrumentation,
Defence Bioengineering & Electro-medical Lab
DRDO,Ministry of Defence,Bangalore.
","Industrial Expert");
INSERT INTO bme_bos_mem VALUES("205","20","B.S.Rajasekar","Biomedical Engineer ","St.John’s Medical College & Hospital,Bangalore. ","Representative from Alumni");
INSERT INTO bme_bos_mem VALUES("206","20","Dr.S.Sujatha","Professor & Head","Department of Electronics & Instrumentation Engineering
Adhiyamaan College of Engineering
Hosur.
","Inter Disciplinary Expert");
INSERT INTO bme_bos_mem VALUES("207","20","Dr.S.Sumathi","Professor & Head","Department of Electronics & Communication Engineering
Adhiyamaan College of Engineering
Hosur.
","Inter Disciplinary Expert");
INSERT INTO bme_bos_mem VALUES("208","21","Dr.T.S.Udhaya Suriya ","Prof & Head, ","Department of BME, Adhiyamaan College of Engg.
Hosur 
","Chairman");
INSERT INTO bme_bos_mem VALUES("209","21","P.Ganesh Babu","Assistant  Professor,","Department of BME, Adhiyamaan College of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("210","21","Kumar Kandukuri","Assistant professor","Department of BME, Adhiyamaan College of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("211","21","C.Sathish Kumar","Assistant professor","Department of BME, Adhiyamaan College of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("212","21","V.P.Krishnammal","Associate Professor,","f BME, Adhiyamaan College of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("213","21","Dr.M.Sasikala","Associate Professor ","Department of Electronics & Communication Engineering
CEG Campus, Anna University, 
Chennai-600025
","University Nominee");
INSERT INTO bme_bos_mem VALUES("214","21","Dr.S.Rajkumar","Professor & Head","Department of Biomedical  Engineering,
Rajalakshmi Engineering College, Chennai
","Member Nominated by Academic Council");
INSERT INTO bme_bos_mem VALUES("215","21","Dr.N.Sriraam","Professor & Head","Department of  Medical Electronics,
M.S.Ramaiah Institute of Technology, Bangalore,
","Member Nominated by Academic Council");
INSERT INTO bme_bos_mem VALUES("216","21",".Rodda Koteswara","HOD","Biomedical Department,
St.John’s Medical College Hospital,
Bangalore-560034
","Industrial Expert");
INSERT INTO bme_bos_mem VALUES("217","21","Sivaraj","Senior Executive Service ","Karlstorz Ltd,
Healthcare Sector, 
Bangalore-560001
","Representative from Alumni");
INSERT INTO bme_bos_mem VALUES("218","21","Dr.S.Sujatha","Professor & Head","Department of Electronics & Instrumentation Engineering
Adhiyamaan College of Engineering
Hosur.
","Inter Disciplinary Expert");
INSERT INTO bme_bos_mem VALUES("219","21","Dr.S.Sumathi","Professor & Head","Department of Electronics & Communication Engineering
Adhiyamaan College of Engineering
Hosur.
","Inter Disciplinary Expert");
INSERT INTO bme_bos_mem VALUES("220","22","Dr.T.S.Udhaya Suriya ","Prof & Head, ","Department of BME, Adhiyamaan College of Engg.
Hosur 
","Chairman");
INSERT INTO bme_bos_mem VALUES("221","22","P.Ganesh Babu","Assistant professor","Department of BME, Adhiyamaan College of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("222","22","Kumar Kandukuri","Assistant professor","Department of BME, Adhiyamaan College of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("223","22","C.Sathish Kumar","Assistant professor","Department of BME, Adhiyamaan College of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("224","22","V.P.Krishnammal","Associate Professor,"," Department of BME, Adhiyamaan College of Engg.
Hosur 
  ","Department faculty");
INSERT INTO bme_bos_mem VALUES("225","22","Dr.M.Sasikala","Associate Professor ","Department of Electronics & Communication Engineering
CEG Campus, Anna University, 
Chennai-600025
","University Nominee");
INSERT INTO bme_bos_mem VALUES("226","22","Dr.S.Rajkumar","Professor & Head","Department of Biomedical  Engineering,
Rajalakshmi Engineering College, Chennai
","Member Nominated by Academic Council");
INSERT INTO bme_bos_mem VALUES("227","22","Dr.N.Sriraam","Professor & Head","Department of  Medical Electronics,
M.S.Ramaiah Institute of Technology, Bangalore,
Karnataka.
","Member Nominated by Academic Council");
INSERT INTO bme_bos_mem VALUES("228","22","Rodda Koteswara","HOD","Biomedical Department,
St.John’s Medical College Hospital,
Bangalore-560034
","Industrial Expert");
INSERT INTO bme_bos_mem VALUES("229","22","Sivaraj","Senior Executive Service ","Karlstorz Ltd,
Healthcare Sector, 
Bangalore-560001
","Representative from Alumni");
INSERT INTO bme_bos_mem VALUES("230","22","Dr.S.Sujatha","Professor & Head","Department of Electronics & Instrumentation Engineering
Adhiyamaan College of Engineering
Hosur.
","Inter Disciplinary Expert");
INSERT INTO bme_bos_mem VALUES("231","22","Dr.S.Sumathi","Professor & Head","epartment of Electronics & Communication Engineering
Adhiyamaan College of Engineering
Hosur.
","Inter Disciplinary Expert");





CREATE TABLE `bme_dept` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `nba_cer3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `bme_faci` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `bme_org` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `bme_stud` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `stud_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `che_bos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `che_bos_mem` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `che_dept` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `nba_cer3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `che_faci` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `che_org` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `che_stud` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `stud_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `chm_bos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `chm_bos_mem` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `chm_dept` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `nba_cer3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `chm_faci` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `chm_org` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `chm_stud` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `stud_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `civ_bos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

INSERT INTO civ_bos VALUES("1","1","2007-2008","2007-08-22","21231-1to4.jpg");
INSERT INTO civ_bos VALUES("2","2","2008-2009","2008-06-23","66671-2.jpg");
INSERT INTO civ_bos VALUES("3","3","2008-2009","2009-04-09","60132-1to4.jpg");
INSERT INTO civ_bos VALUES("4","3","2009-2010","2009-09-09","47529-1to4.jpg");
INSERT INTO civ_bos VALUES("5","4","2009-2010","2010-02-13","8065-1to4.jpg");
INSERT INTO civ_bos VALUES("6","5","2010-2011","2011-02-24","9582-5to9.jpg");
INSERT INTO civ_bos VALUES("7","6","2011-2012","2011-11-11","10745-5to9.jpg");
INSERT INTO civ_bos VALUES("8","7","2011-2012","2012-03-29","21984-5to9.jpg");
INSERT INTO civ_bos VALUES("9","8","2012-2013","2012-10-06","29311-5to9.jpg");
INSERT INTO civ_bos VALUES("10","9","2012-2013","2013-03-09","22797-5to9.jpg");
INSERT INTO civ_bos VALUES("11","10","2013-2014","2013-09-07","56040-10to15.jpg");
INSERT INTO civ_bos VALUES("12","11","2013-2014","2014-03-08","7810-10to15.jpg");
INSERT INTO civ_bos VALUES("13","12","2014-2015","2014-09-27","1814-10to15.jpg");
INSERT INTO civ_bos VALUES("14","13","2014-2015","2015-03-14","56365-10to15.jpg");
INSERT INTO civ_bos VALUES("15","14","2015-2016","2015-09-19","39808-10to15.jpg");
INSERT INTO civ_bos VALUES("16","15","2015-2016","2016-03-14","17113-10to15.jpg");
INSERT INTO civ_bos VALUES("17","16","2016-2017","2016-10-01","95154-16-bos.jpg");
INSERT INTO civ_bos VALUES("18","17","2016-2017","2017-03-11","56281-17th.jpg");
INSERT INTO civ_bos VALUES("19","18","2017-2018","2017-10-14","23681-17th.jpg");
INSERT INTO civ_bos VALUES("20","19","2017-2018","2018-04-07","46904-17th.jpg");
INSERT INTO civ_bos VALUES("21","20","2018-2019","2018-10-15","3418-20th-&-21.jpg");





CREATE TABLE `civ_bos_mem` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

INSERT INTO civ_bos_mem VALUES("1","1","A.Krishnamohana Reddy","Associate Professor","Dept. of Civil,
ACE, Hosur","Member");
INSERT INTO civ_bos_mem VALUES("2","1","V.A.Kumaresan","Professor","Dept. of Civil,
ACE, Hosur","Member");
INSERT INTO civ_bos_mem VALUES("3","1","Dr.S.Sureshbabu","Professor","Dept. of Civil,
ACE, Hosur","Chairman");
INSERT INTO civ_bos_mem VALUES("4","1","Dr.S.Kandasamy","Doctor"," ","Nominated by vice chancellor");
INSERT INTO civ_bos_mem VALUES("5","1","Dr.S.Sengupta","Professor","  ","Industry Representative ");
INSERT INTO civ_bos_mem VALUES("6","1","Dr.B.R.Niranjan","Doctor"," Professor, Civil Engineering
University Visvesvaraya College of Engineering,
Bangalore - 560 001
","Academic Expert");
INSERT INTO civ_bos_mem VALUES("7","1","N.Lakshminarasimaiah","Professor","Dept. of Civil,
","Member");
INSERT INTO civ_bos_mem VALUES("8","1","Dr.P.V.Sivapullaiah","Doctor","Professor, Department of Civil Engg.
Indian Institute of Science,
Bangalore - 560012
","Academic Expert");
INSERT INTO civ_bos_mem VALUES("9","1","S.Arunachalam","Associate Professor"," Dept. of Civil,
","Member");
INSERT INTO civ_bos_mem VALUES("10","2","Dr.B.R.Niranjan","Professor","Professor, Civil Engineering
University Visvesvaraya College of Engineering,
Bangalore - 560 001
","Academic Expert");
INSERT INTO civ_bos_mem VALUES("11","2","Dr.P.V.Sivapullaiah","Doctor","Professor, Department of Civil Engg.
Indian Institute of Science,
Bangalore - 560012
","Academic Expert");
INSERT INTO civ_bos_mem VALUES("12","2","Dr.S.Sengupta","Doctor"," ","Industry Representative ");
INSERT INTO civ_bos_mem VALUES("13","2","Dr.S.Kandasamy","Doctor"," ","Nominated by vice chancellor");
INSERT INTO civ_bos_mem VALUES("14","2","Dr.S.Sureshbabu","Professor","Dept. of Civil,
ACE, Hosur
","Chairman");
INSERT INTO civ_bos_mem VALUES("15","2","A.Krishnamohana Reddy","Associate Professor","Dept. of Civil,
ACE, Hosur
","Member");
INSERT INTO civ_bos_mem VALUES("16","2","V.A.Kumaresan","Professor","Dept. of Civil,
ACE, Hosur
","Member");
INSERT INTO civ_bos_mem VALUES("17","2","N.Lakshminarasimaiah","Professor","Dept. of Civil,
ACE, Hosur
","Member");
INSERT INTO civ_bos_mem VALUES("18","2","S.Arunachalam","Professor","Dept. of Civil,
ACE, Hosur
","Member");
INSERT INTO civ_bos_mem VALUES("19","3","Dr.S.Sureshbabu","Professor","Dept. of Civil,
ACE, Hosur
","Chairman");
INSERT INTO civ_bos_mem VALUES("20","3","V.A.Kumaresan","Professor","Dept. of Civil,
ACE, Hosur
","Member");
INSERT INTO civ_bos_mem VALUES("21","3","A.Krishnamohana Reddy","Associate Professor","Dept. of Civil,
ACE, Hosur
","Member");
INSERT INTO civ_bos_mem VALUES("22","3","S.Arunachalam","Professor","Dept. of Civil,
ACE, Hosur
","Member");
INSERT INTO civ_bos_mem VALUES("23","3","N.Lakshminarasimaiah","Professor","Dept. of Civil,
ACE, Hosur
","Member");
INSERT INTO civ_bos_mem VALUES("24","3","Dr.B.R.Niranjan","Doctor","Professor, Civil Engineering
University Visvesvaraya College of Engineering,
Bangalore - 560 001
","Academic Expert");
INSERT INTO civ_bos_mem VALUES("25","3","Dr.S.Sengupta","Professor"," ","Industry Representative ");
INSERT INTO civ_bos_mem VALUES("26","3","Dr.S.Kandasamy","Professor"," ","Nominated by vice chancellor");
INSERT INTO civ_bos_mem VALUES("27","5","Dr.B.R.Niranjan","Doctor"," ","Academic Expert");
INSERT INTO civ_bos_mem VALUES("28","5","Dr.S.Sengupta","Doctor"," ","Industry Representative ");
INSERT INTO civ_bos_mem VALUES("29","5","Dr.S.Kandasamy","Doctor","  ","Nominated by vice chancellor");
INSERT INTO civ_bos_mem VALUES("30","5","Dr.P.V.Sivapullaiah","Doctor","Professor, Department of Civil Engg.
Indian Institute of Science,
Bangalore - 560012
","Academic Expert");
INSERT INTO civ_bos_mem VALUES("31","5","A.Krishnamohana Reddy","Associate Professor","Dept. of Civil,
ACE, Hosur
","Member");
INSERT INTO civ_bos_mem VALUES("32","5","Dr.S.Sureshbabu","Professor","Dept. of Civil,
ACE, Hosur
","Chairman");
INSERT INTO civ_bos_mem VALUES("34","5","N.Lakshminarasimaiah","Professor","Dept. of Civil,
ACE, Hosur
","Member");
INSERT INTO civ_bos_mem VALUES("35","5","S.Arunachalam","Professor","Dept. of Civil,
ACE, Hosur
","Member");
INSERT INTO civ_bos_mem VALUES("36","5","V.A.Kumaresan","Professor","Dept. of Civil,
ACE, Hosur
","Member");
INSERT INTO civ_bos_mem VALUES("37","6","Dr.S.Sureshbabu","Professor","Dept. of Civil,
ACE, Hosur
","Chairman");
INSERT INTO civ_bos_mem VALUES("38","6","J.Sathish"," ","M/s. AIMIL LIMITED,
# 88/1, Naimex House,
Outer Ring Road, 
Nagavara,
Bengaluru - 560045.
","Industry Representative ");
INSERT INTO civ_bos_mem VALUES("39","6","Dr.P.V.Sivapullaiah","Doctor","Former Professor
Civil Engineering                   Indian Institute of Science , Bangalore
","member -Nominated by Academic Council");
INSERT INTO civ_bos_mem VALUES("40","6","Dr.R.Rameshbabu","Doctor","Central Power Research Institute
P.B.No. 8066, Prof. Sir C.V. Raman Road,
Bangalore - 560 080.
","Nominated by vice chancellor");
INSERT INTO civ_bos_mem VALUES("41","6","N.Lakshminarasimaiah","Professor"," Dept. of Civil,
","Member");
INSERT INTO civ_bos_mem VALUES("42","6","A.Krishnamohana Reddy","Associate Professor"," Dept. of Civil,
","Member");
INSERT INTO civ_bos_mem VALUES("43","6","S.Ambika","Alumni"," Dept. of Civil,
","alumni");
INSERT INTO civ_bos_mem VALUES("44","6","S.Arunachalam","Professor",". of Civil,
ACE, Hosur
  ","Member");
INSERT INTO civ_bos_mem VALUES("45","6","N.S.MADHU","Associate Professor",". of Civil,
ACE, Hosur
  ","Member");
INSERT INTO civ_bos_mem VALUES("46","6","H.Karibasappa","Professor",". of Civil,
ACE, Hosur
  ","Member");
INSERT INTO civ_bos_mem VALUES("47","6","V.A.Kumaresan","Professor",". of Civil,
ACE, Hosur
  ","Member");
INSERT INTO civ_bos_mem VALUES("48","7","S.Arunachalam","Professor",". of Civil,
ACE, Hosur
  ","Member");
INSERT INTO civ_bos_mem VALUES("49","7","V.A.Kumaresan","Professor",". of Civil,
ACE, Hosur
  ","Member");
INSERT INTO civ_bos_mem VALUES("50","7","A.Krishnamohana Reddy","Associate Professor",". of Civil,
ACE, Hosur
  ","Member");
INSERT INTO civ_bos_mem VALUES("51","7","Dr.S.Sureshbabu","Professor",". of Civil,
ACE, Hosur
  ","Chairman");
INSERT INTO civ_bos_mem VALUES("52","7","N.Lakshminarasimaiah","Professor",". of Civil,
ACE, Hosur
  ","Member");
INSERT INTO civ_bos_mem VALUES("53","7","S.Ambika","Alumni",". of Civil,
ACE, Hosur
  ","alumni");
INSERT INTO civ_bos_mem VALUES("54","7","N.S.MADHU","Associate Professor",". of Civil,
ACE, Hosur
  ","Member");
INSERT INTO civ_bos_mem VALUES("55","7","Dr.P.V.Sivapullaiah","Professor","Professor, Department of Civil Engg.
Indian Institute of Science,
Bangalore - 560012
","member -Nominated by Academic Council");
INSERT INTO civ_bos_mem VALUES("56","7","J.Sathish"," ","M/s. AIMIL Limited,
Naimex house, No: 88/1, 
Outer Ring Road, Nagawara,
Bangalore - 560045
","Industry Representative ");
INSERT INTO civ_bos_mem VALUES("58","7","Dr.R.Rameshbabu","Doctor","Central Power Research Institute
P.B.No. 8066, Prof. Sir C.V. Raman Road,
Bangalore - 560 080.
","Nominated by vice chancellor");
INSERT INTO civ_bos_mem VALUES("59","7","H.Karibasappa","Professor"," . of Civil,
ACE, Hosur
   ","Member");





CREATE TABLE `civ_dept` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `nba_cer3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO civ_dept VALUES("1","1993-1994","18","Madras university","99917-anna-university-affilin---2013---2014.pdf","","","","","","","","","");
INSERT INTO civ_dept VALUES("2","2013-2014","240","ANNA UNIVERSITY","52131-anna-university-affilin---2013---2014.pdf","","","","","","","","","");
INSERT INTO civ_dept VALUES("3","2014-2015","","","","","18","ANNA UNIVERSITY","8346-anna-university-affilin---2014---2015.pdf","","","","","");





CREATE TABLE `civ_faci` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

INSERT INTO civ_faci VALUES("1","lab1","SURVEY LAB","Abney Level","N.A","1995","N.A","2","");
INSERT INTO civ_faci VALUES("2","lab1","SURVEY LAB","Aerial Photograph","N.A","2004","N.A","4","");
INSERT INTO civ_faci VALUES("3","lab1","SURVEY LAB","Auto focusing level –Pentex","AFL 320","2007","N.A","2","");
INSERT INTO civ_faci VALUES("4","lab1","SURVEY LAB","Auto level","DSG 320","2010","N.A","20","");
INSERT INTO civ_faci VALUES("5","lab1","SURVEY LAB","Aluminium Levelling Staff","N.A","1994","N.A","37","");
INSERT INTO civ_faci VALUES("6","lab1","SURVEY LAB","Aneriod Barometer","N.A","1995","N.A","1","");
INSERT INTO civ_faci VALUES("7","lab1","SURVEY LAB","Box Sextant in case","N.A","1995","N.A","2","");
INSERT INTO civ_faci VALUES("8","lab1","SURVEY LAB","Chain","30MTRS & 20 MTRS","1992","N.A","76","");
INSERT INTO civ_faci VALUES("9","lab1","SURVEY LAB","Cross staff with iron pole","N.A","1994","N.A","6","");
INSERT INTO civ_faci VALUES("10","lab1","SURVEY LAB","Dumpy level","N.A","1992","N.A","15","");
INSERT INTO civ_faci VALUES("11","lab1","SURVEY LAB","Hand held GPS","Etrex vista","2007","N.A","1","");
INSERT INTO civ_faci VALUES("12","lab1","SURVEY LAB","HP Business Desktop","HP 1GB RAM","2008","N.A","1","");
INSERT INTO civ_faci VALUES("13","lab1","SURVEY LAB","Lynx Mirror Stereoscope","N.A","2007","N.A","1","");
INSERT INTO civ_faci VALUES("14","lab1","SURVEY LAB","Nautical Sextant","N.A","1997","N.A","1","");
INSERT INTO civ_faci VALUES("15","lab1","SURVEY LAB","Prism Square","N.A","1994","N.A","6","");
INSERT INTO civ_faci VALUES("16","lab1","SURVEY LAB","Prismatic compass","N.A","1994","N.A","40","");
INSERT INTO civ_faci VALUES("17","lab1","SURVEY LAB","Planimeter -28”","28\"","1992","N.A","4","");
INSERT INTO civ_faci VALUES("18","lab1","SURVEY LAB","Plane table","N.A","1992","N.A","10","");
INSERT INTO civ_faci VALUES("19","lab1","SURVEY LAB","Optical square","N.A","2004","N.A","4","");
INSERT INTO civ_faci VALUES("20","lab1","SURVEY LAB","Pocket stereoscope","N.A","2004","N.A","4","");
INSERT INTO civ_faci VALUES("21","lab1","SURVEY LAB","Parallax Bar","N.A","2004","N.A","4","");
INSERT INTO civ_faci VALUES("22","lab1","SURVEY LAB","Quick setting level","N.A","1994","N.A","1","");
INSERT INTO civ_faci VALUES("23","lab1","SURVEY LAB","Ranging Rod","N.A","2010","N.A","254","");
INSERT INTO civ_faci VALUES("24","lab1","SURVEY LAB","Theodolite","Vernier theodolite 20”-175mm","2010","N.A","26","");
INSERT INTO civ_faci VALUES("25","lab1","SURVEY LAB","Teak wood levelling","N.A","1994","N.A","3","");
INSERT INTO civ_faci VALUES("26","lab1","SURVEY LAB","Total station – 5”","TKS -202","2011","N.A","4","");
INSERT INTO civ_faci VALUES("27","lab1","SURVEY LAB","Substense Bar","N.A","1994","N.A","1","");
INSERT INTO civ_faci VALUES("28","lab1","SURVEY LAB","Surveyor compass","N.A","2010","N.A","6","");
INSERT INTO civ_faci VALUES("29","lab1","SURVEY LAB","Spare Arrows","N.A","1994","N.A","70","");
INSERT INTO civ_faci VALUES("30","lab1","SURVEY LAB","Measuring Tape","Steel tape, fibre tape ","2010","N.A","83","");
INSERT INTO civ_faci VALUES("31","lab1","SURVEY LAB","Pantograph","N.A","1994","N.A","1","");
INSERT INTO civ_faci VALUES("32","lab1","SURVEY LAB","Binocular","N.A","N.A","N.A","1","");
INSERT INTO civ_faci VALUES("33","lab1","SURVEY LAB","Survey Umberlla","N.A","N.A","N.A","1","");
INSERT INTO civ_faci VALUES("34","lab1","SURVEY LAB","Way Level","N.A","N.A","N.A","1","");
INSERT INTO civ_faci VALUES("35","lab1","SURVEY LAB","Clinometer Compass","N.A","N.A","N.A","1","");
INSERT INTO civ_faci VALUES("36","lab1","SURVEY LAB","3”- Total Station","3” ","2013","22,14,000","2","");
INSERT INTO civ_faci VALUES("37","lab1","SURVEY LAB","5” – Total Station","DTM 322-5”","2013","72,90,000","9","");
INSERT INTO civ_faci VALUES("38","","","","","","","","");
INSERT INTO civ_faci VALUES("39","lab2","IMAGE PROCESSING LAB","ARC VIEW 10 LAB KIT","NA","01-12-2011","11,00,000.00","31","");
INSERT INTO civ_faci VALUES("40","lab2","IMAGE PROCESSING LAB","AUTO PLOTTER 8","NA","01-12-2011","4,30,000","6","");
INSERT INTO civ_faci VALUES("41","lab2","IMAGE PROCESSING LAB","P.G.STREAMER","NA","16.05.2011","11,54,000","10","");
INSERT INTO civ_faci VALUES("42","lab2","IMAGE PROCESSING LAB","ERDAS IMAGE GEOSPATIAL IMAGE PROCESSING","NA","21.9.2012","NA","5","");
INSERT INTO civ_faci VALUES("43","lab2","IMAGE PROCESSING LAB","TERRA EXPLORER PRO SOFTWARE","NA","11.10.2010","5,05440","1","");
INSERT INTO civ_faci VALUES("44","lab2","IMAGE PROCESSING LAB","OPS GIS SOFTWARE","NA","3.10.2009","7,50,000","5","");
INSERT INTO civ_faci VALUES("45","lab2","IMAGE PROCESSING LAB","SATELLITE DATA FROM NRSE DATA CENTRE LISS IV  L4FX","NA","12.12.2012","12,000","1","");
INSERT INTO civ_faci VALUES("46","lab2","IMAGE PROCESSING LAB","CARTOGRAPHY & MEMBRANE DEVELOPMENT SET COMPLETE","NA","01.12.2011","8,50,000","1","");
INSERT INTO civ_faci VALUES("47","lab2","IMAGE PROCESSING LAB","DELL SYSTEMS","DELL INTEL CORE i3","26.9.2012","NA","36","");
INSERT INTO civ_faci VALUES("48","lab3","PHOTOGRAMMETRY LAB","IMPHO PHOTOGRAMMETRY","NA","13.9.2010","6,08,400","1","");
INSERT INTO civ_faci VALUES("49","lab3","PHOTOGRAMMETRY LAB","DELL COMPUTERS","DELL INTEL CORE i3 2120 CPU","26.9.2012","NA","10","");
INSERT INTO civ_faci VALUES("50","lab3","PHOTOGRAMMETRY LAB","HP COMPUTERS","INTEL CORE TM2","26.9.2012","NA","18","");
INSERT INTO civ_faci VALUES("51","lab3","PHOTOGRAMMETRY LAB","DATA EM s/w 6.7","NA","18.1.2013","NA","1","");
INSERT INTO civ_faci VALUES("52","lab3","PHOTOGRAMMETRY LAB","CLARITY MINI BOARD","NA","NA","NA","1","");
INSERT INTO civ_faci VALUES("53","lab3","PHOTOGRAMMETRY LAB","SATELLITE DATA","NA","30.7.2013","72,000","6","");
INSERT INTO civ_faci VALUES("54","lab3","PHOTOGRAMMETRY LAB","SATELLITE DATA LISS IV","NA","22.1.2014","48,000","4","");
INSERT INTO civ_faci VALUES("55","lab3","PHOTOGRAMMETRY LAB","SATELLITE DATA CD","NA","07.03.2014","36,000","3","");
INSERT INTO civ_faci VALUES("56","","","","","","","","");
INSERT INTO civ_faci VALUES("57","","","","","","","","");
INSERT INTO civ_faci VALUES("58","","","","","","","","");
INSERT INTO civ_faci VALUES("59","","","","","","","","");
INSERT INTO civ_faci VALUES("60","","","","","","","","");
INSERT INTO civ_faci VALUES("61","","","","","","","","");
INSERT INTO civ_faci VALUES("62","","","","","","","","");
INSERT INTO civ_faci VALUES("63","lab5","Integrated Survey Lab","Digital Planimeter","NA","15-12-2011","850500","10","");
INSERT INTO civ_faci VALUES("64","lab5","Integrated Survey Lab","Digital Curvimeter","NA","04-01-2012","425250","10","");
INSERT INTO civ_faci VALUES("65","lab5","Integrated Survey Lab","Trimble R3/R6 GPS receiver with Tripod and accessories","Trimble","09-12-2011","3477075","4","");
INSERT INTO civ_faci VALUES("66","lab5","Integrated Survey Lab","Echo Sounder","GPS Map 421","23-01-2012","463475","2","");
INSERT INTO civ_faci VALUES("67","lab5","Integrated Survey Lab","Hand held GPS","NA","18-09-2013","1144800","12","");
INSERT INTO civ_faci VALUES("68","lab5","Integrated Survey Lab","Juno Mapper","NA","15-12-2011","850500","5","");
INSERT INTO civ_faci VALUES("69","lab5","Integrated Survey Lab","Mobile GIS unit","NA","03-01-2012","612360","4","");





CREATE TABLE `civ_org` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `civ_stud` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `stud_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

INSERT INTO civ_stud VALUES("1","2018-2019","I","1","A","pg","2018-2020","17","0","0","0","17","0","9","8","0","8","0","1","7","0","","1","0","","","","","","17","0","CIV-2018-2020-I-1-A-NEW-sample_file (1).csv");
INSERT INTO civ_stud VALUES("2","2018-2019","I","2","A","pg","2018-2020","0","0","0","0","0","0","9","8","0","8","0","1","7","0","","1","0","","","","","","17","0","CIV-2018-2020-I-2-A-NEW-sample_file (1).csv");
INSERT INTO civ_stud VALUES("3","2017-2018","I","1","A","pg","2017-2019","15","0","0","0","15","0","7","8","0","8","3","2","2","0","","0","0","","","","","","15","0","CIV-2017-2019-I-1-A-NEW-sample_file 2.csv");
INSERT INTO civ_stud VALUES("4","2017-2018","I","2","A","pg","2017-2019","0","0","0","0","0","0","7","8","0","8","3","2","2","0","","0","0","","","","","","15","0","CIV-2017-2019-I-2-A-NEW-sample_file 2.csv");
INSERT INTO civ_stud VALUES("5","2016-2017","I","1","A","pg","2016-2018","18","0","0","0","0","0","14","4","0","9","1","0","5","0","","3","0","","","","","","18","0","CIV-2016-2018-I-1-A-NEW-sample_file 3.csv");
INSERT INTO civ_stud VALUES("6","2016-2017","I","2","A","pg","2016-2018","0","0","0","0","0","0","14","4","0","9","1","0","5","0","","3","0","","","","","","18","0","CIV-2016-2018-I-2-A-NEW-sample_file 3.csv");
INSERT INTO civ_stud VALUES("7","2015-2016","I","1","A","pg","2015-2017","18","0","0","0","0","0","15","3","0","8","0","0","8","0","","1","1","","","","","","18","0","CIV-2015-2017-I-1-A-NEW-sample_file 4.csv");
INSERT INTO civ_stud VALUES("8","2015-2016","I","2","A","pg","2015-2017","0","0","0","0","0","0","15","3","0","8","0","0","8","0","","1","1","","","","","","18","0","CIV-2015-2017-I-2-A-NEW-sample_file 4.csv");
INSERT INTO civ_stud VALUES("9","2014-2015","I","1","A","pg","2014-2016","18","0","0","0","0","0","11","7","0","8","1","1","6","0","","2","0","","","","","","18","0","CIV-2014-2016-I-1-A-NEW-sample_file 5.csv");
INSERT INTO civ_stud VALUES("10","2014-2015","I","2","A","pg","2014-2016","0","0","0","0","0","0","11","7","0","8","1","1","6","0","","2","0","","","","","","18","0","CIV-2014-2016-I-2-A-NEW-sample_file 5.csv");
INSERT INTO civ_stud VALUES("11","2016-2017","I","1","A","ug","2016-2020","95","0","0","0","0","0","84","11","0","39","5","6","35","2","","8","0","","","","","","95","0","CIV-2016-2020-I-1-A-NEW-sample_file (4).csv");
INSERT INTO civ_stud VALUES("12","2016-2017","I","2","A","ug","2016-2020","0","2","1","1","0","0","83","10","0","38","5","6","35","2","","7","0","","","","","","93","CIV-2016-2020-I-2-A-DROP-","CIV-2016-2020-I-2-A-NEW-sample_file (16).csv");
INSERT INTO civ_stud VALUES("15","2017-2018","II","3","A","ug","2016-2020","18","2","1","1","0","0","98","11","0","45","7","6","40","1","","10","0","","","","","","109","CIV-2016-2020-II-3-A-DROP-","CIV-2016-2020-II-3-A-NEW-sample II sem.csv");
INSERT INTO civ_stud VALUES("16","2017-2018","II","4","A","ug","2016-2020","0","0","0","0","0","0","97","12","0","45","7","6","40","1","","10","0","","","","","","109","0","CIV-2016-2020-II-4-A-NEW-sample II sem.csv");
INSERT INTO civ_stud VALUES("18","2018-2019","III","5","A","ug","2016-2020","0","2","0","0","1","1","95","12","0","45","7","6","39","2","","8","0","","","","","","107","CIV-2016-2020-III-5-A-DROP-","CIV-2016-2020-III-5-A-NEW-sample II sem.csv");
INSERT INTO civ_stud VALUES("19","2018-2019","III","6","A","ug","2016-2020","1","11","0","0","0","11","84","13","0","42","6","3","36","2","","8","0","","","","","","97","CIV-2016-2020-III-6-A-DROP-","CIV-2016-2020-III-6-A-NEW-sample II sem.csv");
INSERT INTO civ_stud VALUES("20","2010-2011","I","1","A","ug","2010-2014","114","0","0","0","0","0","95","19","0","59","10","2","29","1","","12","1","","","","","","114","0","CIV-2010-2014-I-1-A-NEW-sample_file I.csv");
INSERT INTO civ_stud VALUES("21","2010-2011","I","2","A","ug","2010-2014","0","4","4","0","0","0","91","19","0","57","10","2","28","1","","11","1","","","","","","110","CIV-2010-2014-I-2-A-DROP-","CIV-2010-2014-I-2-A-NEW-sample_file II.csv");
INSERT INTO civ_stud VALUES("22","2011-2012","II","3","A","ug","2010-2014","30","4","4","0","0","0","112","24","0","68","11","2","41","1","","12","1","","","","","","136","CIV-2010-2014-II-3-A-DROP-","CIV-2010-2014-II-3-A-NEW-sample_file III.csv");
INSERT INTO civ_stud VALUES("23","2011-2012","II","4","A","ug","2010-2014","2","3","3","0","0","0","111","24","0","69","11","2","40","1","","11","1","","","","","","135","CIV-2010-2014-II-4-A-DROP-","CIV-2010-2014-II-4-A-NEW-sample_file IV, V, VI.csv");
INSERT INTO civ_stud VALUES("24","2012-2013","III","5","A","ug","2010-2014","0","0","0","0","0","0","111","24","0","69","11","2","40","1","","11","1","","","","","","135","0","CIV-2010-2014-III-5-A-NEW-sample_file IV, V, VI.csv");
INSERT INTO civ_stud VALUES("25","2012-2013","III","6","A","ug","2010-2014","0","0","0","0","0","0","111","24","0","69","11","2","40","1","","11","1","","","","","","135","0","CIV-2010-2014-III-6-A-NEW-sample_file IV, V, VI.csv");
INSERT INTO civ_stud VALUES("26","2013-2014","IV","7","A","ug","2010-2014","1","1","1","0","0","0","112","23","0","69","11","2","40","1","","11","1","","","","","","135","CIV-2010-2014-IV-7-A-DROP-","CIV-2010-2014-IV-7-A-NEW-sample_file VII.csv");
INSERT INTO civ_stud VALUES("27","2013-2014","IV","8","A","ug","2010-2014","0","1","0","1","0","0","111","23","0","69","10","2","40","1","","11","1","","","","","","134","CIV-2010-2014-IV-8-A-DROP-","CIV-2010-2014-IV-8-A-NEW-sample_file VIII.csv");





CREATE TABLE `cse_bos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

INSERT INTO cse_bos VALUES("1","1","2007-2008","2007-08-22","22971-1.jpg");
INSERT INTO cse_bos VALUES("2","20","2018-2019","2018-11-09","81372-20.jpg");
INSERT INTO cse_bos VALUES("3","19","2017-2018","2018-04-17","46816-19.jpg");
INSERT INTO cse_bos VALUES("4","18","2017-2018","2017-10-24","16254-18.jpg");
INSERT INTO cse_bos VALUES("5","17","2016-2017","2017-04-21","30565-17.jpg");
INSERT INTO cse_bos VALUES("6","16","2016-2017","2016-10-21","8158-16.jpg");
INSERT INTO cse_bos VALUES("7","15","2015-2016","2016-04-22","95663-15.jpg");
INSERT INTO cse_bos VALUES("8","14","2015-2016","2015-10-09","90389-14.jpg");
INSERT INTO cse_bos VALUES("9","13","2014-2015","2015-04-11","91065-13.jpg");
INSERT INTO cse_bos VALUES("10","12","2014-2015","2014-10-30","90678-12.jpg");
INSERT INTO cse_bos VALUES("11","11","2013-2014","2014-04-19","80192-11vv.jpg");
INSERT INTO cse_bos VALUES("12","10","2013-2014","2013-09-28","45239-10.jpg");
INSERT INTO cse_bos VALUES("13","9","2012-2013","2013-04-20","59507-9.jpg");
INSERT INTO cse_bos VALUES("14","8","2012-2013","2012-10-30","69217-8.jpg");
INSERT INTO cse_bos VALUES("15","7","2011-2012","2012-03-30","14361-7.jpg");
INSERT INTO cse_bos VALUES("16","6","2011-2012","2011-11-15","45501-6.jpg");
INSERT INTO cse_bos VALUES("17","5","2010-2011","2011-02-09","57756-5.jpg");
INSERT INTO cse_bos VALUES("18","4","2009-2010","2010-02-06","21454-4.jpg");
INSERT INTO cse_bos VALUES("19","3","2008-2009","2009-04-16","92177-3.jpg");
INSERT INTO cse_bos VALUES("20","2","2008-2009","2008-06-28","21132-1.jpg");
INSERT INTO cse_bos VALUES("21","21","2018-2019","2019-04-13","52435-21.jpg");





CREATE TABLE `cse_bos_mem` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=latin1;

INSERT INTO cse_bos_mem VALUES("1","1","Dr. M V S Perisastry ","Chairman","ACE","HOD");
INSERT INTO cse_bos_mem VALUES("2","1","K Balamurugan","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("3","1","D Thilagavathy","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("4","1","K Raja","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("5","1","R RajBarath","Member","Ace","Faculty Member");
INSERT INTO cse_bos_mem VALUES("6","1","P D R Vijay Kumar","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("7","1","K Duraisamy","Member","KSR College of Technology Thiruchengode","Academic council member");
INSERT INTO cse_bos_mem VALUES("8","1","Dr.G.Tholkapiarasu","Member","Jayam College of Engineering, Dharmapuri","Academic council member");
INSERT INTO cse_bos_mem VALUES("9","1","Dr.ML Valarmathy","Member","Govt College of Tech , Coimbatore","Vice Chancellor");
INSERT INTO cse_bos_mem VALUES("10","1","Dr.A.Sarathy","Member","IRTT Erode","Vice Chancellor");
INSERT INTO cse_bos_mem VALUES("11","1","Mr S.Appan","Member","Alliance Business Academy, Bangalore","Industrial Representative");
INSERT INTO cse_bos_mem VALUES("12","1","Mr.Amuthan","Member","Honey well Tech Ltd, Bangalore","Alumini");
INSERT INTO cse_bos_mem VALUES("13","2","Dr.G.Fathima","Chairman","ACE","HOD");
INSERT INTO cse_bos_mem VALUES("14","2","Dr.R.Baskaran","Member","Anna University, Chennai","University Nominee");
INSERT INTO cse_bos_mem VALUES("15","2","Dr.S.MuthurajKumar","Member","MIT,Chennai","Academic council member");
INSERT INTO cse_bos_mem VALUES("16","2","Dr.G.Varaprasad","Member","BMS colg of Engg, Bangalore","Academic council member");
INSERT INTO cse_bos_mem VALUES("17","2","Mr.C.Kesavan","Member","CTS Bangalore","Industrial Representative");
INSERT INTO cse_bos_mem VALUES("18","2","Dr.S.Sumathi","Member","ACE","Inter Disciplinary Expert");
INSERT INTO cse_bos_mem VALUES("19","2","Dr.D.Thilagavathy","Member","ACE","Inter Disciplinary Expert");
INSERT INTO cse_bos_mem VALUES("20","2","Dr.D.Geetha","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("21","2","Dr.V.Janani","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("22","2","Dr.W.Gracy Theresa","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("23","3","Dr.D.Thilagavathy","Chairman","ACE","HOD");
INSERT INTO cse_bos_mem VALUES("24","3","Dr.B.Paramasivam","Member","NationaL Engg COlg, Kovilpatti","University Nominee");
INSERT INTO cse_bos_mem VALUES("26","3","Dr.Pabitha","Member","MIT, Chennai","Academic council member");
INSERT INTO cse_bos_mem VALUES("27","3","Dr.R.Rakesh","Member","Accenture","Alumini");
INSERT INTO cse_bos_mem VALUES("28","3","Dr.G.Fathima","Member","ACE","Inter Disciplinary Expert");
INSERT INTO cse_bos_mem VALUES("29","3","Dr.P.Kavitha","Member","Ace","Inter Disciplinary Expert");
INSERT INTO cse_bos_mem VALUES("30","3","Dr.M.Prabhu","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("31","3","Dr.E.Saravana Kumar","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("32","3","B.Gopinathan","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("33","3","V.Janani","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("34","4","Dr.D.Thilagavathy","Chairman","ACE","HOD");
INSERT INTO cse_bos_mem VALUES("35","4","Dr.B.Paramasivam","Member","National Engg Colg, Kovilpatti","University Nominee");
INSERT INTO cse_bos_mem VALUES("36","4","Dr.Pabitha","Member","MIT, Chennai","Academic council member");
INSERT INTO cse_bos_mem VALUES("37","4","Dr.G.Fathima","Member","ACE","Inter Disciplinary Expert");
INSERT INTO cse_bos_mem VALUES("38","4","Dr.P.Kavitha","Member","ACE","Inter Disciplinary Expert");
INSERT INTO cse_bos_mem VALUES("39","4","Mr.Rakesh","Member","Accenture, Bangalore","Alumini");
INSERT INTO cse_bos_mem VALUES("40","4","Dr.M.Prabhu","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("41","4","Dr.E.Saravana Kumar","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("42","4","B.Gopinathan","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("43","4","V.Janani","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("44","5","Dr.D.Thilagavathy","Chairman","ACE","HOD");
INSERT INTO cse_bos_mem VALUES("45","5","Dr.B.Paramasivam","Member","National Engg Colg, Kovilpatti","University Nominee");
INSERT INTO cse_bos_mem VALUES("46","5","Dr.K.Kumar","Member","Govt Colg of Tech, Coimbatore","Academic council member");
INSERT INTO cse_bos_mem VALUES("47","5","Dr.Pabitha","Member","MIT,Chennai","Academic council member");
INSERT INTO cse_bos_mem VALUES("48","5","Mr.Rakesh","Member","Accenture, Bangslore","Alumini");
INSERT INTO cse_bos_mem VALUES("49","5","Dr.G.Fathima","Member","ACE","Inter Disciplinary Expert");
INSERT INTO cse_bos_mem VALUES("50","5","Dr.P.Kavitha","Member","ACE","Inter Disciplinary Expert");
INSERT INTO cse_bos_mem VALUES("51","5","Dr.Prabhu","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("52","5","Dr.E.Saravana Kumar","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("53","5","B.Gopinathan","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("54","5","V.Janani","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("55","6","Dr.D.Thilagavathy","Chairman","ACE","HOD");
INSERT INTO cse_bos_mem VALUES("56","6","Dr.B.Paramasivam","Member","National Colg Of Engg, Kovilpatti","University Nominee");
INSERT INTO cse_bos_mem VALUES("57","6","Dr.Pabitha","Member","MIT,Chennai","Academic council member");
INSERT INTO cse_bos_mem VALUES("58","6","Mr.Azad Mohammaed","Member","CTS,Bangalore","Industrial Representative");
INSERT INTO cse_bos_mem VALUES("59","6","Dr.M.Prabhu","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("60","6","Dr.E.Saravana Kumar","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("61","6","Dr.S.Suresh","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("62","6","Mr.B.Gopinathan","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("63","6","V.Janani","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("64","7","Dr.D.Thilagavathy","Chairman","ACE","HOD");
INSERT INTO cse_bos_mem VALUES("65","7","Dr.R.Manavalan","Member","PSG Coimbatore","University Nominee");
INSERT INTO cse_bos_mem VALUES("66","7","Dr.C.Rani","Member","Govt colg of Engg, Salem","Academic council member");
INSERT INTO cse_bos_mem VALUES("67","7","Dr.Nafeesa Begum","Member","Govt Colg Of Engg, Bargur","Academic council member");
INSERT INTO cse_bos_mem VALUES("68","7","Mr.N.Jayaprakash","Member","Wipro, Chennai","Industrial Representative");
INSERT INTO cse_bos_mem VALUES("69","7","Mr.C.Saravana Kumar","Member","HP, Bangalore","Alumini");
INSERT INTO cse_bos_mem VALUES("70","7","Dr.G.Fathima","Member","ACE","Inter Disciplinary Expert");
INSERT INTO cse_bos_mem VALUES("71","7","Dr.M.Prabhu","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("72","7","Dr.E.Saravana Kumar","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("73","7","Dr.D.Ramya Dorai","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("74","8","Dr.D.Thilagavathy","Chairman","ACE","HOD");
INSERT INTO cse_bos_mem VALUES("75","8","Dr.R.Manavalan","Member","PSG COlg of Tech, Coimbatore","University Nominee");
INSERT INTO cse_bos_mem VALUES("76","8","Dr.C.Rani","Member","Govt COlg of Engg, Salem","Academic council member");
INSERT INTO cse_bos_mem VALUES("77","8","Dr.J.Nafeesa Begum","Member","Govt Colg of Engg, Salem","Academic council member");
INSERT INTO cse_bos_mem VALUES("78","8","Mr.N.Jayaprakash","Member","Wipro Technologies, Chennai","Industrial Representative");
INSERT INTO cse_bos_mem VALUES("79","8","Mr.C.Saravana Kumar","Member","HP,Bangalore","Alumini");
INSERT INTO cse_bos_mem VALUES("80","8","Dr.M.Prabhu","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("81","8","Dr.P.Srinivasa Babu","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("82","8","Dr.E.Saravana Kumar","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("83","8","D.Ramya Dorai","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("84","8","B.Gopinathan","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("85","8","Dr.G.Fathima","Member","ACE","Inter Disciplinary Expert");
INSERT INTO cse_bos_mem VALUES("86","9","Dr.D.Thilagavathy","Chairman","ACE","HOD");
INSERT INTO cse_bos_mem VALUES("87","9","Dr.G.Fathima","Member","ACE","Inter Disciplinary Expert");
INSERT INTO cse_bos_mem VALUES("88","9","Dr.R.Manavalan","Member","PSG COlg of Tech","University Nominee");
INSERT INTO cse_bos_mem VALUES("89","9","Dr.C.Rani","Member","Govt of Colg Engg, Salem","Academic council member");
INSERT INTO cse_bos_mem VALUES("90","9","Dr.J.Nafeesa Begum","Member","Govt Colg of Engg, Salem","Academic council member");
INSERT INTO cse_bos_mem VALUES("91","9","Mr.C.Saravana Kumar","Member","HP,Bangalore","Alumini");
INSERT INTO cse_bos_mem VALUES("92","9","Mr.N.Jayaprakash","Member","Wipro Technologies, Chennai","Industrial Representative");
INSERT INTO cse_bos_mem VALUES("93","9","Dr.M.Prabhu","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("94","9","Dr.P.Srinivasa Babu","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("95","9","Dr.E.Saravana Kumar","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("96","9","D.Ramya Dorai","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("97","9","B.Gopinathan","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("98","10","Dr.D.Thilagavathy","Chairman","ACE","HOD");
INSERT INTO cse_bos_mem VALUES("99","10","Dr.G.Fathima","Member","ACE","Inter Disciplinary Expert");
INSERT INTO cse_bos_mem VALUES("100","10","Dr.R.Manavalan","Member","PSG Colg of Tech, Coimbatore","University Nominee");
INSERT INTO cse_bos_mem VALUES("101","10","Dr.C.Rani","Member","Govt colg Engg, Salem","Academic council member");
INSERT INTO cse_bos_mem VALUES("103","10","Mr.N.Jayaprakash","Member","Wipro Tech, Chennai","Industrial Representative");
INSERT INTO cse_bos_mem VALUES("104","10","Mr.C.Saravana Kumar","Member","HP,Banagalore","Alumini");
INSERT INTO cse_bos_mem VALUES("105","10","Dr.M.Prabhu","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("106","10","Dr.P.Srinivasa Babu","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("107","10","Dr.E.Saravana Kumar","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("108","10","Dr.D.Ramya Dorai","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("109","10","B.Gopinathan","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("110","11","Dr.D.Thilagavathy","Chairman","ACE","HOD");
INSERT INTO cse_bos_mem VALUES("111","11","Dr.Manjula","Member","Anna University, Chennai","University Nominee");
INSERT INTO cse_bos_mem VALUES("112","11","Dr.G.Tholkapiarasu","Member","AVS Colg Engg, Salem","University Nominee");
INSERT INTO cse_bos_mem VALUES("113","11","Dr.J.Nafeesa Begum","Member","GCE,Burgur","Academic council member");
INSERT INTO cse_bos_mem VALUES("114","11","K Balamurugan","Member","St.Peters University, Chennai","Academic council member");
INSERT INTO cse_bos_mem VALUES("115","11","Mr.Appan","Member","Alliance Business Academy, Bangalore","Industrial Representative");
INSERT INTO cse_bos_mem VALUES("116","11","Mr.C.Saravana Kumar","Member","HP, Bangalore","Alumini");
INSERT INTO cse_bos_mem VALUES("117","11","Dr.L.Mohana Priya","Member","ACE","Inter Disciplinary Expert");
INSERT INTO cse_bos_mem VALUES("118","11","Dr.P.Srinivasa Babu","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("119","11","Dr.E.Saravana Kumar","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("120","11","Dr.D.Ramya Dorai","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("121","11","B.Gopinathan","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("122","12","Prof.D.Thilagavathy","Chairman","ACE","HOD");
INSERT INTO cse_bos_mem VALUES("123","12","Mrs.Nafeesa Begum","Member","GCE,Burgur","University Nominee");
INSERT INTO cse_bos_mem VALUES("124","12","Mr.Appan","Member","Alliance business Academy, Bangalore","Industrial Representative");
INSERT INTO cse_bos_mem VALUES("125","12","Mr.C.Saravana Kumar","Member","HP,Bangalore","Alumini");
INSERT INTO cse_bos_mem VALUES("126","12","Dr.L.Mohana Priya","Member","ACE","Inter Disciplinary Expert");
INSERT INTO cse_bos_mem VALUES("127","12","Dr.P.Srinivasa Babu","Member","
ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("128","12","Mr.E.SaravanaKumar","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("129","12","Ms.D.Ramya Dorai","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("130","12","B.Gopinathan","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("131","13","Prof.D.Thilagavathy","Chairman","ACE","HOD");
INSERT INTO cse_bos_mem VALUES("132","13","Mrs.Nafeesa Begum","Member","GCE,Burgur","Academic council member");
INSERT INTO cse_bos_mem VALUES("133","13","Dr.D.Manjula","Member","ANNA University, Chennai","University Nominee");
INSERT INTO cse_bos_mem VALUES("134","13","Mr.Appan","Member","Alliance Business Academic,Bangalore","Industrial Representative");
INSERT INTO cse_bos_mem VALUES("135","13","Mr.C.Saravana Kumar","Member","HP,Bangalore","Alumini");
INSERT INTO cse_bos_mem VALUES("136","13","Dr.L.Mohana Priya","Member","ACE","Inter Disciplinary Expert");
INSERT INTO cse_bos_mem VALUES("137","13","Mr.E.SaravanaKumar","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("138","13","Dr.D.Ramya Dorai","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("139","13","B.Gopinathan","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("140","14","Prof.D.Thilagavathy","Chairman","ACE","HOD");
INSERT INTO cse_bos_mem VALUES("141","14","Mrs.Nafeesa Begum","Member","GCE,Burgur","Academic council member");
INSERT INTO cse_bos_mem VALUES("142","14","Mr.Appan","Member","Alliance Business Academic Bangalore","Industrial Representative");
INSERT INTO cse_bos_mem VALUES("143","14","Dr.L.Mohana Priya","Member","ACE","Inter Disciplinary Expert");
INSERT INTO cse_bos_mem VALUES("144","14","Mr.E.SaravanaKumar","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("145","14","D.Ramya Dorai","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("146","14","B.Gopinathan","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("147","15","Prof.D.Thilagavathy","Chairman","ACE","HOD");
INSERT INTO cse_bos_mem VALUES("148","15","Dr.G.Tholkapiarasu","Member","Jayam Colg Of Engg, dharmapuri","University Nominee");
INSERT INTO cse_bos_mem VALUES("149","15","Mrs.Nafeesa Begum","Member","GCE,Burgur","Academic council member");
INSERT INTO cse_bos_mem VALUES("150","15","Mr.S.Appan","Member","Alliance Business Academy Bangalore ","Industrial Representative");
INSERT INTO cse_bos_mem VALUES("151","15","Mr.C.Saravana Kumar","Member","HP.Bangalore","Alumini");
INSERT INTO cse_bos_mem VALUES("152","15","Dr.L.Mohana Priya","Member","ACE","Inter Disciplinary Expert");
INSERT INTO cse_bos_mem VALUES("153","15","Mr.Raja","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("154","15","Mr.E.SaravanaKumar","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("155","15","D.Ramya Dorai","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("156","16","Prof.D.Thilagavathy","Chairman","ACE","HOD");
INSERT INTO cse_bos_mem VALUES("157","16","Dr.G.Tholkapiarasu","Member","Jaya Colg of Engg, Dharmapuri","University Nominee");
INSERT INTO cse_bos_mem VALUES("158","16","Mrs.Nafeesa Begum","Member","GCE,Burgur","Academic council member");
INSERT INTO cse_bos_mem VALUES("159","16","Mr.Raja","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("160","16","Mr.E.SaravanaKumar","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("161","16","D.Ramya Dorai","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("162","16","Dr.T.R.Mahesh","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("163","17","Prof.D.Thilagavathy","Chairman","ACE","HOD");
INSERT INTO cse_bos_mem VALUES("164","17","Dr.G.Tholkapiarasu","Member","JCET,Dharmapui","Academic council member");
INSERT INTO cse_bos_mem VALUES("165","17","Mr.Appan","Member","Alliance business Academy , Banagalore","Industrial Representative");
INSERT INTO cse_bos_mem VALUES("166","17","Dr.B.G.Geetha","Member","KSRCT, Thirunchengode","University Nominee");
INSERT INTO cse_bos_mem VALUES("167","17","Mrs.Nafeesa Begum","Member","GCE,Burgur","University Nominee");
INSERT INTO cse_bos_mem VALUES("168","17","Mr.Raja","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("169","17","Mr.E.SaravanaKumar","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("170","17","Dr.T.R.Mahesh","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("171","17","D.Ramya Dorai","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("172","18","Prof.D.Thilagavathy","Chairman","ACE","HOD");
INSERT INTO cse_bos_mem VALUES("173","18","Dr.G.Tholkapiarasu","Member","JCET,Dharmapuri","Academic council member");
INSERT INTO cse_bos_mem VALUES("174","18","Dr.B.G.Geetha","Member","KSRCT, Thirunchengode","University Nominee");
INSERT INTO cse_bos_mem VALUES("175","18","Mrs.Nafeesa Begum","Member","GCE,BURGUR","University Nominee");
INSERT INTO cse_bos_mem VALUES("176","18","K Raja","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("177","18","Mr.E.SaravanaKumar","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("178","18","D.Ramya Dorai","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("179","18","Mr.C.Saravana Kumar","Member","HP,Bangalore","Alumini");
INSERT INTO cse_bos_mem VALUES("180","19","Prof.D.Thilagavathy","Chairman","ACE","HOD");
INSERT INTO cse_bos_mem VALUES("181","19","Dr.G.Tholkapiarasu","Member","JCET,Dhamrmapuri","Academic council member");
INSERT INTO cse_bos_mem VALUES("182","19","K.Balamurugan","Member","St.Peters, Chennai","Academic council member");
INSERT INTO cse_bos_mem VALUES("183","19","Mr.Appan","Member","Alliance Business Academy, Bangalore","Industrial Representative");
INSERT INTO cse_bos_mem VALUES("184","19","R RajBarath","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("185","19","Prof.S.Sakthi","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("186","19","K Raja","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("187","19","Mr.E.SaravanaKumar","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("188","20","K Balamurugan","Chairman","ACE","HOD");
INSERT INTO cse_bos_mem VALUES("189","20","Prof.D.Thilagavathy","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("190","20","Dr.G.Tholkapiarasu","Member","JCET,Dharmapuri","University Nominee");
INSERT INTO cse_bos_mem VALUES("191","20","Mr.Appan","Member","Alliance Business academy, Bangalore","Industrial Representative");
INSERT INTO cse_bos_mem VALUES("192","20","Mr.E.SaravanaKumar","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("193","20","Mr.K.Raja","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("194","21","Dr.G.Fathima","Chairman","ACE","HOD");
INSERT INTO cse_bos_mem VALUES("195","21","Dr.R.Baskaran","Member","Anna University, Chennai","University Nominee");
INSERT INTO cse_bos_mem VALUES("196","21","Dr.S.MuthurajKumar","Member","MIT,Chennai","Academic council member");
INSERT INTO cse_bos_mem VALUES("197","21","Mr.C.Kesavan","Member","CTS,Bangalore","Industrial Representative");
INSERT INTO cse_bos_mem VALUES("198","21","Dr.S.Sumathi","Member","
ACE","Inter Disciplinary Expert");
INSERT INTO cse_bos_mem VALUES("199","21","Dr.D.Thilagavathy","Member","ACE","Inter Disciplinary Expert");
INSERT INTO cse_bos_mem VALUES("200","21","Dr.M.Lilly Florence","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("201","21","Dr.D.Geetha","Member","ACE","Faculty Member");
INSERT INTO cse_bos_mem VALUES("202","21","Dr.V.Janani","Member","ace","Faculty Member");
INSERT INTO cse_bos_mem VALUES("203","21","Dr.W.Gracy Theresa","Member","ACE","Faculty Member");





CREATE TABLE `cse_dept` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `nba_cer3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO cse_dept VALUES("2","1998-1999","75","University of Madras, Chennai","","","","","","","","","","");
INSERT INTO cse_dept VALUES("3","2005-2006","120","Anna University, Chennai","79047-aicte-2005-2006.pdf","","18","Anna University, Chennai","2010-aicte-2005-2006.pdf","","","","","");
INSERT INTO cse_dept VALUES("4","1987-1988","","","","","","","","","","","","");
INSERT INTO cse_dept VALUES("5","2012-2013","","","","","24","Anna University, Coimbatore","66578-aicte-2012-2013-compressed.pdf","","","","","");
INSERT INTO cse_dept VALUES("6","2004-2005","","","","","","","","","","","","");
INSERT INTO cse_dept VALUES("7","2007-2008","","","","","","","","","","","","");
INSERT INTO cse_dept VALUES("8","2017-2018","","","","","","","","","","","","");
INSERT INTO cse_dept VALUES("9","1991-1992","60","University of Madras, Madras","79697-aicte-1990-1992-compressed.pdf","","","","","","","","","");
INSERT INTO cse_dept VALUES("10","2015-2016","","","","","","","","","0","Anna UNiversity, Chennai","73663-research-phd.pdf","");





CREATE TABLE `cse_faci` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

INSERT INTO cse_faci VALUES("1","gen","","Air conditioners","Voltas 1.5 Ton","1993","127086","3","");
INSERT INTO cse_faci VALUES("2","gen","","Air conditioners","Voltas 1.5 Ton","1989","34250","2","");
INSERT INTO cse_faci VALUES("3","gen","","Air conditioners","Voltas 1 Ton","1989","15000","1","");
INSERT INTO cse_faci VALUES("4","gen","","Air conditioners","Voltas 20 Ton","1989","1025000","1","");
INSERT INTO cse_faci VALUES("5","gen","","LCD projector","HCL TDP T95 ","2004","184434","1","");
INSERT INTO cse_faci VALUES("6","gen","","LCD projector","BENQ 515","2011","21469","1","87834-projector.pdf");
INSERT INTO cse_faci VALUES("7","gen","","LCD projector Screen ","stand type","2011","4725","1","");
INSERT INTO cse_faci VALUES("8","gen","","System","HP pentium-4","2006","3575000","150","79469-system.pdf");
INSERT INTO cse_faci VALUES("9","gen","","Server ","IBM","2006","258000","3","34641-server.pdf");
INSERT INTO cse_faci VALUES("10","gen","","Printer","Laserjet 1010","2004","21300","2","69896-doc628.pdf");
INSERT INTO cse_faci VALUES("11","gen","","Printer","HP Laserjet Pro M202","2016","13700","1","73616-doc629.pdf");
INSERT INTO cse_faci VALUES("12","gen","","Printer","DotMatrix HD745","2016","48900","2","72532-doc629.pdf");
INSERT INTO cse_faci VALUES("13","gen","","Printer","TVS HD245 Gold","2010","13000","1","63583-doc630.pdf");
INSERT INTO cse_faci VALUES("14","gen","","Printer","HP Laserjet M1005","2012","11600","1","88593-doc631.pdf");
INSERT INTO cse_faci VALUES("15","gen","","Printer","TVS MSP 245 Star","2011","46000","4","74287-doc633.pdf");
INSERT INTO cse_faci VALUES("16","gen","","Printer","HP Laserjet 1022n","2016","28000","1","");
INSERT INTO cse_faci VALUES("17","gen","","UPS","AArgee Company 5KVA","2006","87750","1","27865-ups5kva.pdf");
INSERT INTO cse_faci VALUES("18","gen","","UPS","AArgee Company 10KVA","2004","50000","1","97373-ups10kva.pdf");
INSERT INTO cse_faci VALUES("19","gen","","UPS","AArgee Company 15KVA","2007","135000","1","62947-ups15kva.pdf");
INSERT INTO cse_faci VALUES("20","gen","","UPS","AArgee Company 25KVA","2003","867000","1","95535-ups25kva.pdf");
INSERT INTO cse_faci VALUES("21","gen","","LCD projector","Dell 1220","2015","25320","1","29226-dell-lcd.pdf");
INSERT INTO cse_faci VALUES("22","gen","","Air conditioners","4.0Ton Ductable","2010","355500","5","94170-4-ton-ac.pdf");
INSERT INTO cse_faci VALUES("23","gen","","Printer","Laserjet P1566","2010","18600","2","45579-hp-laserjet.pdf");
INSERT INTO cse_faci VALUES("24","gen","","Server","HP Ml150G6","2010","200000","2","73194-server2010.pdf");
INSERT INTO cse_faci VALUES("25","gen","","System","HP DC5800","2010","2665384.92","132","62479-system2010.pdf");
INSERT INTO cse_faci VALUES("26","gen","","Printer","TVS MSP 245 Star","2014","51062","4","61357-tvs-printer-2014.pdf");
INSERT INTO cse_faci VALUES("27","gen","","Printer","TVS MSP 245 Star","2010","44100","4","35265-tvs-printer.pdf");
INSERT INTO cse_faci VALUES("28","gen","","UPS","AArgee Company 25KVA","2010","619800","2","19608-ups-2sets.pdf");





CREATE TABLE `cse_org` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO cse_org VALUES("1","2018-2019","seminar","Power Seminar on Employability Skills for the Futu","CSE","1","0000-00-00","0000-00-00","2018-07-21","Mr.Lakshmananarayanan,  Relati","150","0","45586-1.jpg","1");
INSERT INTO cse_org VALUES("2","2018-2019","workshop","Mobile Application Development","CSE","2","2018-08-01","2018-08-02","0000-00-00","Ms.G.PreethiIshwarya,  Ms.M.Mu","80","0","89214-2.jpg","1");
INSERT INTO cse_org VALUES("3","2018-2019","workshop","Photoshop","CSE","1","0000-00-00","0000-00-00","2018-08-28","Mr.V.Rajaramanan AP/CSE, Adhiy","60","0","49836-3.jpg","1");
INSERT INTO cse_org VALUES("4","2018-2019","fdp","Big Data Anlalytics","CSE","2","2018-09-03","2018-09-04","0000-00-00","Mr. E. Hariprasath, Trainer, I","25","0","7642-4.jpg","1");
INSERT INTO cse_org VALUES("5","2018-2019","symposium","Crypto 2K18","CSE","2","2018-09-25","2018-09-26","0000-00-00","Ms. TamilarasiKrishnasamy, Sen","150","0","43067-5.jpg","1");
INSERT INTO cse_org VALUES("6","2018-2019","training","Cloud Literacy Day","ICTACT","1","0000-00-00","0000-00-00","2018-10-31","Mr.Lakshmananarayanan, Relatio","140","0","4661-6.jpg","1");
INSERT INTO cse_org VALUES("7","2018-2019","workshop","FOSS - Ubuntu","CSE","1","0000-00-00","0000-00-00","2018-11-01","Mr.S.Baskar, CEO, Linuxpert Sy","60","0","7261-7.jpg","1");
INSERT INTO cse_org VALUES("8","2018-2019","workshop","Web Application for online Marketing","CSE","2","2019-02-05","2019-02-06","0000-00-00","Mr.T.Kodeeswaran, V.K Academy ","61","0","49435-8.jpg","1");





CREATE TABLE `cse_stud` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `stud_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO cse_stud VALUES("1","2017-2018","I","1","C","ug","2017-2021","33","0","0","0","0","0","23","10","0","24","5","1","0","0","","3","0","","","","","","33","0","CSE-2017-2021-I-1-C-NEW-SEM I.csv");
INSERT INTO cse_stud VALUES("2","2017-2018","I","2","C","ug","2017-2021","0","0","0","0","0","0","23","10","0","24","5","1","0","0","","3","0","","","","","","33","0","CSE-2017-2021-I-2-C-NEW-SEM 2.csv");
INSERT INTO cse_stud VALUES("3","2018-2019","II","3","C","ug","2017-2021","7","0","0","0","0","0","28","12","0","31","5","1","0","0","","3","0","","","","","","40","0","CSE-2017-2021-II-3-C-NEW-SEM 3.csv");
INSERT INTO cse_stud VALUES("4","2018-2019","II","4","C","ug","2017-2021","0","0","0","0","0","0","28","12","0","31","5","1","0","0","","3","0","","","","","","40","0","CSE-2017-2021-II-4-C-NEW-SEM 4.csv");
INSERT INTO cse_stud VALUES("5","2013-2014","I","1","A","ug","2013-2017","51","0","0","0","0","0","20","31","0","23","10","2","9","1","","5","1","","","","","","51","0","CSE-2013-2017-I-1-A-NEW-1.csv");
INSERT INTO cse_stud VALUES("6","2013-2014","I","2","A","ug","2013-2017","0","1","1","0","0","0","31","19","0","22","10","2","9","1","","5","1","","","","","","50","CSE-2013-2017-I-2-A-DROP-2-DO.csv","CSE-2013-2017-I-2-A-NEW-2.csv");
INSERT INTO cse_stud VALUES("7","2014-2015","II","3","A","ug","2013-2017","7","1","0","1","0","0","22","34","0","26","10","2","10","1","","6","1","","","","","","56","CSE-2013-2017-II-3-A-DROP-3-DO.csv","CSE-2013-2017-II-3-A-NEW-3.csv");
INSERT INTO cse_stud VALUES("8","2014-2015","II","4","A","ug","2013-2017","0","3","3","0","0","0","19","34","0","24","10","2","10","1","","5","1","","","","","","53","CSE-2013-2017-II-4-A-DROP-4-DO.csv","CSE-2013-2017-II-4-A-NEW-4.csv");
INSERT INTO cse_stud VALUES("9","2015-2016","III","5","A","ug","2013-2017","0","0","0","0","0","0","19","34","0","24","10","2","10","1","","5","1","","","","","","53","0","CSE-2013-2017-III-5-A-NEW-5.csv");
INSERT INTO cse_stud VALUES("10","2015-2016","III","6","A","ug","2013-2017","1","1","1","0","0","0","18","35","0","24","10","2","10","1","","5","1","","","","","","53","CSE-2013-2017-III-6-A-DROP-6-DO.csv","CSE-2013-2017-III-6-A-NEW-6.csv");
INSERT INTO cse_stud VALUES("11","2016-2017","IV","7","A","ug","2013-2017","0","1","1","0","0","0","18","34","0","23","10","2","10","1","","5","1","","","","","","52","CSE-2013-2017-IV-7-A-DROP-7-DO.csv","CSE-2013-2017-IV-7-A-NEW-7.csv");
INSERT INTO cse_stud VALUES("12","2016-2017","IV","8","A","ug","2013-2017","0","0","0","0","0","0","18","34","0","23","10","2","10","1","","5","1","","","","","","52","0","CSE-2013-2017-IV-8-A-NEW-8.csv");





CREATE TABLE `dept_info` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
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
  `lab` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO dept_info VALUES("2","MCA","","","","1995-1996","MCA","MCA","","","","6","3");
INSERT INTO dept_info VALUES("4","vv","1993-1994","Ram","arc","2004-2005","ME","CSE","2009-2010","PHD","CSE","5","1");
INSERT INTO dept_info VALUES("5","vmc","1995-1996","BE","vmca","","","","","","","4","2");
INSERT INTO dept_info VALUES("6","EIE","2007-2008","BE","EIE","","","","","","","6","5");
INSERT INTO dept_info VALUES("7","BIT","2001-2002","B.Tech","Information Technology","","","","","","","6","2");
INSERT INTO dept_info VALUES("8","ECE","1987-1988","BE","ECE","2005-2006","Communication System","ECE","2006-2007","Information and Comm","ECE","16","11");
INSERT INTO dept_info VALUES("9","MEC","1991-1992","B.E","MECHANICAL ENGINEERING ","","","","","","","","");
INSERT INTO dept_info VALUES("10","MBA","","","","","","","","","","3","1");
INSERT INTO dept_info VALUES("11","CIV","1993-1994","B.E.","CIVIL ENGINEERING","2014-2015","M.E","STRUCTURAL ENGINEERING","","","","11","9");
INSERT INTO dept_info VALUES("12","CSE","1987-1988","B.E. ","Computer Science & Engineering","2005-2006","M.E","CSE","1987-1988","PhD","CSE","10","3");
INSERT INTO dept_info VALUES("13","","","","","","","","","","","0","12");





CREATE TABLE `dup_bos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `pic` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `dup_bos_mem` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `bid` int(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `desig` varchar(100) DEFAULT NULL,
  `adde` varchar(200) DEFAULT NULL,
  `cat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `dup_dept` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `nba_cer3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `dup_faci` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `dup_org` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `dup_stud` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `stud_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `ece_bos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

INSERT INTO ece_bos VALUES("1","2","2011-2012","2011-11-12","11992-7th-bos-photo.jpg");
INSERT INTO ece_bos VALUES("2","1","2011-2012","2012-03-31","15835-7th-bos-photo.jpg");
INSERT INTO ece_bos VALUES("3","1","2012-2013","2012-10-20","38691-8th-bos.jpg");
INSERT INTO ece_bos VALUES("4","9","2012-2013","2013-04-06","26754-9th-bos.jpg");
INSERT INTO ece_bos VALUES("5","10","2013-2014","2013-09-28","65479-10th-bos.jpg");
INSERT INTO ece_bos VALUES("6","11","2013-2014","2014-04-05","5934-11th-bos-photo.jpg");
INSERT INTO ece_bos VALUES("7","12","2014-2015","2014-11-01","98573-12th-bos-photo.jpg");
INSERT INTO ece_bos VALUES("8","13","2014-2015","2015-03-14","23074-13th-bos-photo.jpg");
INSERT INTO ece_bos VALUES("9","14","2015-2016","2015-10-10","56297-14th-bos-photo.jpg");
INSERT INTO ece_bos VALUES("10","15","2015-2016","2016-04-02","93841-15th-bos-photo.jpg");
INSERT INTO ece_bos VALUES("11","16","2016-2017","2016-10-22","23319-16th-bos-photo.jpg");
INSERT INTO ece_bos VALUES("12","17","2016-2017","2017-04-01","72407-17th-bos-photo.jpg");
INSERT INTO ece_bos VALUES("13","18","2017-2018","2017-10-28","72666-18th-bos-photo.jpg");
INSERT INTO ece_bos VALUES("14","19","2017-2018","2018-04-21","2216-19th-bos-photo.jpg");
INSERT INTO ece_bos VALUES("15","20","2018-2019","2018-10-27","88951-20th-bos.jpg");
INSERT INTO ece_bos VALUES("16","1","2007-2008","2007-08-22","26625-1st-bos.jpg");
INSERT INTO ece_bos VALUES("17","2","2008-2009","2008-06-30","29925-2nd-bos.jpg");
INSERT INTO ece_bos VALUES("18","3","2008-2009","2009-04-16","25483-3rd-bos.jpg");
INSERT INTO ece_bos VALUES("19","4","2009-2010","2010-02-05","28820-4th-bos.jpg");
INSERT INTO ece_bos VALUES("20","5","2010-2011","2011-02-12","85998-5th-bos.jpg");





CREATE TABLE `ece_bos_mem` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=latin1;

INSERT INTO ece_bos_mem VALUES("2","1","K.A.Dattatreya","Professor"," Adhiyamaan college of engineering, Electronics and Communication engineering, hosur  ","Member");
INSERT INTO ece_bos_mem VALUES("3","1","Dr.S.Sumathi","Professor"," Adhiyamaan college of engineering, Electronics and Communication engineering, hosur  ","Member");
INSERT INTO ece_bos_mem VALUES("4","1","A.Grace","Asst.Professor"," Adhiyamaan college of engineering, Electronics and Communication engineering, hosur  ","Member");
INSERT INTO ece_bos_mem VALUES("8","1","C.Sriramakrishnan","Asst.Professor"," Adhiyamaan college of engineering, Electronics and Communication engineering, hosur  ","Member");
INSERT INTO ece_bos_mem VALUES("17","1","K.M.Rajashekharan","Asst.Professor"," Adhiyamaan college of engineering, Electronics and Communication engineering, hosur  ","Member");
INSERT INTO ece_bos_mem VALUES("18","1","Dr.Sabeenian","Professor","Sona college of Technology, Salem","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("19","1","Dr.Sundara Rajan","Principal","Paavai college of Engineering, Namakkal","University Nominee");
INSERT INTO ece_bos_mem VALUES("20","1","Prof.Ganesan","Professor","King college of Technology, Namakkal","University Nominee");
INSERT INTO ece_bos_mem VALUES("21","1","T.Menakadevi","Professor","  Adhiyamaan college of engineering, Electronics and Communication engineering, hosur    ","Member");
INSERT INTO ece_bos_mem VALUES("22","1","Sri.Nagaraj Rao","Managing Director","Digitronix measuring, Bangalore","Industry Representative");
INSERT INTO ece_bos_mem VALUES("23","1","N.C.Shiva Prakash","Principal","IISC,Dept. of Electronics and Instrumentation,Bangalore","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("24","1","K.V.N.Kavitha","Asst.Professor","VIT University,Vellore","Alumnus Member");
INSERT INTO ece_bos_mem VALUES("25","2","Dr.S.V.Raghavan","Professor","  Adhiyamaan college of engineering, Electronics and Communication engineering, hosur    ","Chairman");
INSERT INTO ece_bos_mem VALUES("26","2","K.A.Dattatreya","Professor","  Adhiyamaan college of engineering, Electronics and Communication engineering, hosur    ","Internal member");
INSERT INTO ece_bos_mem VALUES("27","2","Dr.S.Sumathi","Professor &Head","  Adhiyamaan college of engineering, Electronics and Communication engineering, hosur    ","Internal member");
INSERT INTO ece_bos_mem VALUES("28","2","T.Menakadevi","Professor","  Adhiyamaan college of engineering, Electronics and Communication engineering, hosur    ","Internal member");
INSERT INTO ece_bos_mem VALUES("29","2","C.Sriramakrishnan","Asso.Professor","  Adhiyamaan college of engineering, Electronics and Communication engineering, hosur    ","Internal member");
INSERT INTO ece_bos_mem VALUES("30","2","K.M.Rajashekharan","Asso.Professor","  Adhiyamaan college of engineering, Electronics and Communication engineering, hosur    ","Internal member");
INSERT INTO ece_bos_mem VALUES("31","2","Dr.Sundara Rajan","Principal","Paavai college of engineering, Namakkal","University Nominee");
INSERT INTO ece_bos_mem VALUES("32","2","Prof.Ganesan","Professor","King college of engineering, Namakkal","University Nominee");
INSERT INTO ece_bos_mem VALUES("33","2","Dr.N.C.Shiva Prakash","Principal","IISC,Bangalore","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("34","2","Dr.Sabeenian","Professor","Sona college of technology,Salem","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("35","2","shri.Nagaraja Rao","Managing Director","Digitronix measuring instruments, Bangalore","Industry Representative");
INSERT INTO ece_bos_mem VALUES("36","2","Prof.K.V.N.Kavitha","Asst.Professor","VIT university,Vellore","Alumnus Member");
INSERT INTO ece_bos_mem VALUES("37","3","Dr.S.Sumathi","Professor &Head","Adhiyamaan college of engineering, hosur","Chairman");
INSERT INTO ece_bos_mem VALUES("38","3","Dr.S.V.Raghavan","Professor"," Adhiyamaan college of engineering, hosur  ","Internal member");
INSERT INTO ece_bos_mem VALUES("39","3","K.A.Dattatreya","Professor"," Adhiyamaan college of engineering, hosur  ","Internal member");
INSERT INTO ece_bos_mem VALUES("40","3","T.Menakadevi","Professor"," Adhiyamaan college of engineering, hosur  ","Internal member");
INSERT INTO ece_bos_mem VALUES("41","3","C.Sriramakrishnan","Asst.Professor"," Adhiyamaan college of engineering, hosur  ","Internal member");
INSERT INTO ece_bos_mem VALUES("42","3","K.M.Rajashekharan","Asst.Professor"," Adhiyamaan college of engineering, hosur  ","Internal member");
INSERT INTO ece_bos_mem VALUES("43","3","M.Sivakumar","Asst.Professor"," Adhiyamaan college of engineering, hosur  ","Internal member");
INSERT INTO ece_bos_mem VALUES("44","3","Dr.Sundara Rajan","Principal","Paavai college of engineering, Namakkal","University Nominee");
INSERT INTO ece_bos_mem VALUES("45","3","Prof.Ganesan","Professor","King college of engineering, Namakkal","University Nominee");
INSERT INTO ece_bos_mem VALUES("46","3","Dr.N.C.Shiva Prakash","Principal","IISC,Bangalore","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("47","3","Dr.Sabeenian","Professor","Sona college of Technology","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("48","3","shri.Nagaraja Rao","Managing Director","Digitronix measuring instruments, Bangalore","Industry Representative");
INSERT INTO ece_bos_mem VALUES("49","3","Prof.K.V.N.Kavitha","Asst.Professor","VIT University,Vellore","Alumnus Member");
INSERT INTO ece_bos_mem VALUES("50","1","Dr.S.V.Raghavan","Professor &Head"," Adhiyamaan college of engineering, Electronics and Communication engineering, hosur    ","Chairman");
INSERT INTO ece_bos_mem VALUES("51","4","Dr.S.Sumathi","Professor &Head"," Adhiyamaan college of engineering, Electronics and Communication engineering, hosur    ","Chairman");
INSERT INTO ece_bos_mem VALUES("52","4","K.A.Dattatreya","Professor"," Adhiyamaan college of engineering, Electronics and Communication engineering, hosur    ","Internal member");
INSERT INTO ece_bos_mem VALUES("53","4","T.Menakadevi","Professor"," Adhiyamaan college of engineering, Electronics and Communication engineering, hosur    ","Internal member");
INSERT INTO ece_bos_mem VALUES("54","4","K.M.Rajashekharan","Asst.Professor"," Adhiyamaan college of engineering, Electronics and Communication engineering, hosur    ","Internal member");
INSERT INTO ece_bos_mem VALUES("55","4","M.Sivakumar","Asst.Professor"," Adhiyamaan college of engineering, Electronics and Communication engineering, hosur    ","Internal member");
INSERT INTO ece_bos_mem VALUES("56","4","S.chidambaram","Asst.Professor"," Adhiyamaan college of engineering, Electronics and Communication engineering, hosur    ","Internal member");
INSERT INTO ece_bos_mem VALUES("57","4","Dr.Sundara Rajan","Principal","paavai college of engineering,namakkal","University Nominee");
INSERT INTO ece_bos_mem VALUES("58","4","Prof.Ganesan","Principal","VPMM ENGINEERING COLLEGE FOR WOMEN,VIRUDHUNAGAR","University Nominee");
INSERT INTO ece_bos_mem VALUES("59","4","Dr.N.C.Shiva Prakash","Principal","IISC,BANGALORE","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("60","4","Dr.Sabeenian","Professor","SONA COLLEGE OF TECHNOLOGY,SALEM","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("61","4","Sri.Nagaraj Rao","Managing Director","DIGITRONIX  MEASURING INSTRUMENTS, BANGALORE","Industry Representative");
INSERT INTO ece_bos_mem VALUES("62","4","Prof.K.V.N.Kavitha","Asst.Professor","VIT UNIVERSITY VELLORE","Alumnus Member");
INSERT INTO ece_bos_mem VALUES("63","5","Dr.S.Sumathi","Professor &Head","adhiyamaan college of engineering hosur","Chairman");
INSERT INTO ece_bos_mem VALUES("64","5","K.A.Dattatreya","Professor","adhiyamaan college of engineering hosur","Internal member");
INSERT INTO ece_bos_mem VALUES("65","5","T.Menakadevi","Professor","adhiyamaan college of engineering hosur","Internal member");
INSERT INTO ece_bos_mem VALUES("66","5","M.Sivakumar","Asst.Professor","adhiyamaan college of engineering hosur","Internal member");
INSERT INTO ece_bos_mem VALUES("67","5","S.chidambaram","Asst.Professor","adhiyamaan college of engineering hosur","Internal member");
INSERT INTO ece_bos_mem VALUES("68","5","J.madhavan","Asst.Professor","adhiyamaan college of engineering hosur","Internal member");
INSERT INTO ece_bos_mem VALUES("69","5","Dr.Sundara Rajan","Principal","paavai college of engineering, namakkal","University Nominee");
INSERT INTO ece_bos_mem VALUES("70","5","Prof.Ganesan","Principal","VPMMM ENGINEERING COLLEGE FOR WOMEN, VIRUDHU NAGAR","University Nominee");
INSERT INTO ece_bos_mem VALUES("71","5","Dr.N.C.Shiva Prakash","Principal","IISC ,BANGALORE","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("72","5","Dr.Sabeenian","Professor","SONA COLLEGE OF TECHNOLOGY,SALEM","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("73","5","Sri.Nagaraj Rao","Managing Director","DIGITRONIX MEASURING INSTRUMENTS, BANGALORE","Industry Representative");
INSERT INTO ece_bos_mem VALUES("74","5","Prof.K.V.N.Kavitha","Asst.Professor","VIT UNIVERSITY,VELLORE","Alumnus Member");
INSERT INTO ece_bos_mem VALUES("75","6","Dr. S. Sumathi","Professor &Head","Dept. of  ECE, ACE, Hosur. ","Chairman");
INSERT INTO ece_bos_mem VALUES("76","6","K.A.Dattatreya","Professor","Dept. of  ECE, ACE, Hosur.   ","Internal member");
INSERT INTO ece_bos_mem VALUES("77","6","T.Menakadevi","Professor","Dept. of  ECE, ACE, Hosur.   ","Internal member");
INSERT INTO ece_bos_mem VALUES("78","6","M.Sivakumar","Asst.Professor","Dept. of  ECE, ACE, Hosur.   ","Internal member");
INSERT INTO ece_bos_mem VALUES("79","6","S.chidambaram","Asst.Professor","Dept. of  ECE, ACE, Hosur.   ","Internal member");
INSERT INTO ece_bos_mem VALUES("80","6","J.madhavan","Asst.Professor","Dept. of  ECE, ACE, Hosur.   ","Internal member");
INSERT INTO ece_bos_mem VALUES("81","6","Dr.Sundara Rajan","Principal","Paavai College of Engineering ,Pachal
Namakkal-637 108.
","University Nominee");
INSERT INTO ece_bos_mem VALUES("82","6","Prof.Ganesan","Director","King College of Technology
Namakkal(Dt)
","University Nominee");
INSERT INTO ece_bos_mem VALUES("83","6","Dr.N.C.Shiva Prakash","Principal Research Scientist","IISc. ,  Bangalore-12","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("84","6","Dr.Sabeenian","Professor","Sona College of Technology
Salem-636005.
","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("85","6","Sri.Nagaraj Rao","Managing Director","Digitronix MeasuringInstruments
No.347/5,Ist Cross,Sharadamba Nagar
Jalahalli Village,Bangalore 560 013.
","Industry Representative");
INSERT INTO ece_bos_mem VALUES("86","6","K.V.N.Kavitha","Asst.Professor","VIT University, Vellore.","Alumnus Member");
INSERT INTO ece_bos_mem VALUES("87","7","Dr.S.Sumathi","Professor &Head","Dept. of  ECE, ACE, Hosur. ","Chairman");
INSERT INTO ece_bos_mem VALUES("88","7","K.A.Dattatreya","Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("89","7","T.Menakadevi","Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("90","7","M.Sivakumar","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("91","7","S.chidambaram","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("92","7","J.madhavan","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("93","7","Dr.M.C.Jobin Christ ","Professor &Head","Department of BME , ACE , Hosur.","Internal member");
INSERT INTO ece_bos_mem VALUES("94","7","Prof.Dr.G.Geetha","Asso.Professor","Department of ECE
CEG Campus
Anna University,Chennai-25
","University Nominee");
INSERT INTO ece_bos_mem VALUES("95","7","Dr.N.C.Shiva Prakash","Principal Research Scientist","IISc. ,  Bangalore-12. ","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("96","7","Dr.Sabeenian","Professor","Sona College of Technology
Salem-636005.
","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("97","7","Shri.Sunil.T.Shambhatnavar","Business Development Manager","Advanced Electronics Systems
Bangalore.
","Industry Representative");
INSERT INTO ece_bos_mem VALUES("98","7","Shri.N.Thandayuthapani","Senior Software Engineer","Robert-Bosch Engineering Business Solutions
Bangalore
","Alumnus Member");
INSERT INTO ece_bos_mem VALUES("99","8","Dr.S.Sumathi","Professor &Head","Dept. of  ECE, ACE, Hosur. ","Chairman");
INSERT INTO ece_bos_mem VALUES("100","8","K.A.Dattatreya","Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("101","8","T.Menakadevi","Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("102","8","M.Sivakumar","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("103","8","S.chidambaram","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("104","8","J.madhavan","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("105","8","Dr.M.C.Jobin Christ ","Professor &Head","Department of BME , ACE , Hosur.","Internal member");
INSERT INTO ece_bos_mem VALUES("106","8","Prof.Dr.G.Geetha","Asso.Professor","Department of ECE
CEG Campus
Anna University,Chennai-25
","University Nominee");
INSERT INTO ece_bos_mem VALUES("107","8","Dr.N.C.Shiva Prakash","Principal Research Scientist","Dept. of Electronics & Instrumentation 
IISc. ,  Bangalore-12. 
","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("108","8","Dr.Sabeenian","Professor","Sona College of Technology
Salem-636005.
","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("109","8","Shri.Sunil.T.Shambhatnavar","Business Development Manager(MD)","Advanced Electronics Systems
Bangalore.
","Industry Representative");
INSERT INTO ece_bos_mem VALUES("110","8","Shri.N.Thandayuthapani","Senior Software Engineer","Robert-Bosch Engineering Business Solutions
Bangalore
","Alumnus Member");
INSERT INTO ece_bos_mem VALUES("111","9","Dr.S.Sumathi","Professor &Head","Dept. of  ECE, ACE, Hosur. ","Chairman");
INSERT INTO ece_bos_mem VALUES("112","9","K.A.Dattatreya","Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("113","9","T.Menakadevi","Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("114","9","M.Sivakumar","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("115","9","S.chidambaram","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("116","9","J.madhavan","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("117","9","Dr.M.C.Jobin Christ ","Professor &Head","Department of BME, ACE, Hosur.","Interdisciplinary Member");
INSERT INTO ece_bos_mem VALUES("118","9","Prof.Dr.G.Geetha","Asso.Professor","Department of ECE
CEG Campus
Anna University,Chennai-25
","University Nominee");
INSERT INTO ece_bos_mem VALUES("119","9","Dr.N.C.Shiva Prakash","Principal Research Scientist","Dept. of Electronics & Instrumentation 
IISc. , Bangalore-12. 
","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("120","9","Dr.Sabeenian","Professor","Sona College of Technology
Salem-636005.
","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("121","9","Shri.Sunil.T.Shambhatnavar","Business Development Manager(MD)","Advanced Electronics Systems
Bangalore.
","Industry Representative");
INSERT INTO ece_bos_mem VALUES("122","9","Shri.N.Thandayuthapani","Senior Software Engineer","Robert-Bosch Engineering Business Solutions
Bangalore.
","Alumnus Member");
INSERT INTO ece_bos_mem VALUES("123","10","Dr.S.Sumathi","Professor &Head","Dept. of  ECE, ACE, Hosur. ","Chairman");
INSERT INTO ece_bos_mem VALUES("124","10","K.A.Dattatreya","Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("125","10","T.Menakadevi","Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("126","10","M.Sivakumar","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("127","10","S.chidambaram","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("128","10","J.madhavan","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("129","10","Dr.M.C.Jobin Christ ","Professor &Head","Department of BME, ACE, Hosur.","Interdisciplinary Member");
INSERT INTO ece_bos_mem VALUES("130","10","Prof.Dr.G.Geetha","Asso.Professor","Department of ECE
CEG Campus
Anna University,Chennai-25
","University Nominee");
INSERT INTO ece_bos_mem VALUES("131","10","Dr.N.C.Shiva Prakash","Principal Research Scientist","Dept. of Electronics & Instrumentation 
IISc. , Bangalore-12. 
","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("132","10","Dr.Sabeenian","Professor","Sona College of Technology
Salem-636005.
","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("133","10","Shri.Sunil.T.Shambhatnavar","Business Development Manager(MD)","Advanced Electronics Systems
Bangalore.
","Industry Representative");
INSERT INTO ece_bos_mem VALUES("134","10","Shri.N.Thandayuthapani","Senior Software Engineer","Robert-Bosch Engineering Business Solutions
Bangalore.
","Alumnus Member");
INSERT INTO ece_bos_mem VALUES("135","11","Dr.S.Sumathi","Professor &Head","Dept. of  ECE, ACE, Hosur. ","Chairman");
INSERT INTO ece_bos_mem VALUES("136","11","K.A.Dattatreya","Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("137","11","T.Menakadevi","Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("138","11","M.Sivakumar","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("139","11","S.chidambaram","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("140","11","J.madhavan","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("141","11","Dr.M.C.Jobin Christ ","Professor &Head","Department of BME, ACE, Hosur.","Interdisciplinary Member");
INSERT INTO ece_bos_mem VALUES("142","11","Prof.Dr.L.Ganesan","Professor &Head","Department of CSE
Alagappa Chettiar College of Engineering and Technology	Karaikudi – 630 004.
","University Nominee");
INSERT INTO ece_bos_mem VALUES("143","11","Prof.Dr.G.Geetha","Asso.Professor","Department of ECE
CEG Campus
Anna University,Chennai-25
","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("144","11","Prof.Dr.K.J.Shanthi","Professor  & Head ","Department of Medical Electronics
Dr. Ambedkar Institute of Technology
Maratahalli, Bangalore – 56
","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("145","11","Shri.J.Ravi Kumar","Proprietor","Technilab Instrument
Bangalore – 560033 
","Industry Representative");
INSERT INTO ece_bos_mem VALUES("146","11","Shri.N.Thandayuthapani","Senior Software Engineer","Robert-Bosch Engineering Business Solutions
Bangalore.
","Alumnus Member");
INSERT INTO ece_bos_mem VALUES("147","12","Dr.S.Sumathi","Professor &Head","Dept. of  ECE, ACE, Hosur. ","Chairman");
INSERT INTO ece_bos_mem VALUES("148","12","K.A.Dattatreya","Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("149","12","T.Menakadevi","Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("150","12","M.Sivakumar","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("151","12","S.chidambaram","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("152","12","J.madhavan","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("153","12","Dr.M.C.Jobin Christ ","Professor &Head","Department of BME, ACE, Hosur.","Interdisciplinary Member");
INSERT INTO ece_bos_mem VALUES("154","12","Prof.Dr.L.Ganesan","Professor &Head","Department of CSE
Alagappa Chettiar College of Engineering and Technology,Karaikudi – 630 004.
","University Nominee");
INSERT INTO ece_bos_mem VALUES("155","12","Prof.Dr.G.Geetha","Asso.Professor","Department of ECE
CEG Campus
Anna University,Chennai-25
","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("156","12","Prof.Dr.K.J.Shanthi","Professor &Head","Department of Medical Electronics
Dr. Ambedkar Institute of Technology
Mallathalli, Bangalore – 56
","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("157","12","Shri.J.Ravi Kumar","Proprietor","Technilab Instrument
Bangalore – 560033 
","Industry Representative");
INSERT INTO ece_bos_mem VALUES("158","12","Shri.N.Thandayuthapani","Senior Software Engineer","Robert-Bosch Engineering Business Solutions
Bangalore.
","Alumnus Member");
INSERT INTO ece_bos_mem VALUES("159","13","Dr.S.Sumathi","Professor &Head","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("160","13","T.Menakadevi","Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("161","13","K.A.Dattatreya","Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("162","13","Dr.S.Sathish","Asso.Professor","Dept. of ECE, ACE, Hosur.  ","Internal member");
INSERT INTO ece_bos_mem VALUES("163","13","M.Sivakumar","Asst.Professor","Dept. of ECE, ACE, Hosur.  ","Internal member");
INSERT INTO ece_bos_mem VALUES("164","13","S.chidambaram","Asst.Professor","Dept. of ECE, ACE, Hosur.  ","Internal member");
INSERT INTO ece_bos_mem VALUES("165","13","Dr.T.S.Udhaya Suriya ","Professor &Head","Department of BME, ACE, Hosur.","Interdisciplinary Member");
INSERT INTO ece_bos_mem VALUES("166","13","Prof.Dr.L.Ganesan","Professor &Head","Department of CSE
Alagappa Chettiar College of Engineering and Technology	Karaikudi – 630 004.
","University Nominee");
INSERT INTO ece_bos_mem VALUES("167","13","Prof.Dr.G.Geetha","Asso.Professor","Department of ECE
CEG Campus
Anna University,Chennai-25
","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("168","13","Prof.Dr.K.J.Shanthi","Professor &Head","Department of Medical Electronics
Dr. Ambedkar Institute of Technology
Mallathalli, Bangalore – 56
","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("169","13","Shri.J.Ravi Kumar","Proprietor","Technilab Instrument
Bangalore – 560033 
","Industry Representative");
INSERT INTO ece_bos_mem VALUES("170","13","Shri.N.Thandayuthapani","Senior Software Engineer","Robert-Bosch Engineering Business Solutions
Bangalore.
","Alumnus Member");
INSERT INTO ece_bos_mem VALUES("171","14","Dr.S.Sumathi","Professor &Head","Dept. of  ECE, ACE, Hosur. ","Chairman");
INSERT INTO ece_bos_mem VALUES("172","14","K.A.Dattatreya","Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("173","14","T.Menakadevi","Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("174","14","M.Sivakumar","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("175","14","S.chidambaram","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("176","14","Dr.T.S.Udhaya Suriya ","Professor &Head","Department of BME, ACE, Hosur.","Interdisciplinary Member");
INSERT INTO ece_bos_mem VALUES("177","14","Dr.E.Saravankumar","Asst.Professor","Dept. of CSE, ACE, Hosur.  ","Interdisciplinary Member");
INSERT INTO ece_bos_mem VALUES("178","14","Prof.Dr.L.Ganesan","Professor &Head","Department of CSE
Alagappa Chettiar College of Engineering and Technology,
Karaikudi – 630 004.
","University Nominee");
INSERT INTO ece_bos_mem VALUES("179","14","Prof.Dr.G.Geetha","Asso.Professor","Department of ECE
CEG Campus
Anna University,Chennai-25
","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("180","14","Prof.Dr.K.J.Shanthi","Professor &Head","Department of Medical Electronics
Dr. Ambedkar Institute of Technology
Mallathalli, Bangalore – 56
","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("181","14","Shri.J.Ravi Kumar","Proprietor","Technilab Instrument
Bangalore – 560033 
","Industry Representative");
INSERT INTO ece_bos_mem VALUES("182","14","Shri.N.Thandayuthapani","Senior Software Engineer","Robert-Bosch Engineering Business Solutions
Bangalore.
","Alumnus Member");
INSERT INTO ece_bos_mem VALUES("183","15","Dr.S.Sumathi","Professor &Head","Dept. of  ECE, ACE, Hosur. ","Chairman");
INSERT INTO ece_bos_mem VALUES("184","15","K.A.Dattatreya","Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("185","15","T.Menakadevi","Professor ","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("186","15","M.Sivakumar","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("187","15","Mr.R.Poovendran","Asst.Professor","Dept. of  ECE, ACE, Hosur.   ","Internal member");
INSERT INTO ece_bos_mem VALUES("188","15","Dr.T.S.Udhaya Suriya ","Professor &Head","
Department of BME, ACE, Hosur.
","Interdisciplinary Member");
INSERT INTO ece_bos_mem VALUES("189","15","Dr.S.Jayakumar","Asst.Professor","Dept. of  Chemical Engineering,
Adhiyamaan College of Engineering, Hosur.
","Interdisciplinary Member");
INSERT INTO ece_bos_mem VALUES("190","15","Prof.Dr.N.Ramadass","Associate Professor","CEG Campus,Anna University, Chennai.","University Nominee");
INSERT INTO ece_bos_mem VALUES("191","15","Prof.Dr. D. Seshachalam","Professor &Head","BMS college of Engineering, Bangalore.","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("192","15","Prof.Dr.G.Kavitha","Asst.Professor","Dept. of  ECE,
Government College of Engineering, Salem.
","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("193","15","Smt.N.Dhivya","Technical Lead","HCL technologies,
Jigani, Bangalore.
","Industry Representative");
INSERT INTO ece_bos_mem VALUES("194","15","Shri..R.Chandrashekar,","HR","QAD Department
TVS- Hosur
","Alumnus Member");
INSERT INTO ece_bos_mem VALUES("195","16","Dr.S.V.Raghavan","Professor &Head","Dept. of  ECE, ACE, Hosur. ","Chairman");
INSERT INTO ece_bos_mem VALUES("196","16","K.A.Dattatreya","Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("197","16","S.Sumathi","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("198","16","T.Menakadevi","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("199","16","U.SRIVIDHYA","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("200","16","C.Sriramakrishnan","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("201","16","Dr.vasudevan","Professor &Head","St.Peters engineering College,chennai","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("202","16","Dr.N.C.Shiva Prakash","Principal Research Scientist","IISC,BANGALORE","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("204","16","Dr.Ebenezer","Professor","Sri krishna college of engineering technology,coimbatore","nominated by vice chancellor");
INSERT INTO ece_bos_mem VALUES("205","16","ajeetha kumari","Managing Director","Contemporary verification consultant pvt.ltd,bangalore","Industry Representative");
INSERT INTO ece_bos_mem VALUES("206","16","K.V.N.Kavitha","Lecturer","VIT UNIVERSITY ,VELLORE","Alumnus Member");
INSERT INTO ece_bos_mem VALUES("207","16","M.CHANDRASEKARAN","Professor","GOVT COLLEGE OF ENGINEERING ,SALEM","nominated by vice chancellor");
INSERT INTO ece_bos_mem VALUES("208","17","Dr.S.V.Raghavan","Professor &Head","Dept. of  ECE, ACE, Hosur. ","Chairman");
INSERT INTO ece_bos_mem VALUES("209","17","K.A.Dattatreya","Professor ","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("210","17","S.Sumathi","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("211","17","T.Menakadevi","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("212","17","U.SRIVIDHYA","Lecturer","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("213","17","C.Sriramakrishnan","Lecturer","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("214","17","Dr.vasudevan","Professor &Head","St.Peters engg.college","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("215","17","Dr.N.C.Shiva Prakash","Principal Research Scientist","IISC BANGALORE","University Nominee");
INSERT INTO ece_bos_mem VALUES("216","17","M.CHANDRASEKARAN","Professor ","GOVT COLLEGE OF TECHNOLOGY,SALEM","University Nominee");
INSERT INTO ece_bos_mem VALUES("217","17","Dr.Ebenezer","Professor","Sri krishna college of engineering and technology","University Nominee");
INSERT INTO ece_bos_mem VALUES("218","17","ajeetha kumari","Managing Director","Contemporary verification consultancy pvt ltd, bangalore","Industry Representative");
INSERT INTO ece_bos_mem VALUES("219","17","K.V.N.Kavitha","Lecturer","VIT UNIVRESITY","Alumnus Member");
INSERT INTO ece_bos_mem VALUES("220","18","Dr.S.V.Raghavan","Professor &Head","Dept. of  ECE, ACE, Hosur. ","Chairman");
INSERT INTO ece_bos_mem VALUES("221","18","K.A.Dattatreya","Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("222","18","Dr.S.Sumathi","Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("223","18","T.Menakadevi","Asst.Professor","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("224","18","A.Grace","Lecturer","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("225","18","C.Sriramakrishnan","Lecturer","Dept. of  ECE, ACE, Hosur. ","Internal member");
INSERT INTO ece_bos_mem VALUES("226","18","Prof.Vijayaraj","Professor &Head","Govt College of engineering,Bargur","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("227","18","Dr.N.C.Shiva Prakash","Principal Research Scientist","IISC,BANGALORE","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("228","18","M.CHANDRASEKARAN","Professor"," Govt College of engineering,SALEM","University Nominee");
INSERT INTO ece_bos_mem VALUES("229","18","Dr.Ebenezer","Professor","SRI KRISHNA COLLEGE OF ENGINEERING AND TECHNOLOGY","University Nominee");
INSERT INTO ece_bos_mem VALUES("230","18","ajeetha kumari","Managing Director","CONTEMPORARY,VERIFICATION CONSULTANT PVT LTD.,BANGALORE","Industry Representative");
INSERT INTO ece_bos_mem VALUES("231","18","K.V.N.Kavitha","SR.Lecturer","VIT UNIVERSITY","Alumnus Member");
INSERT INTO ece_bos_mem VALUES("232","19","Dr.S.V.Raghavan","Professor &Head",", Dept. of ECE, ACE, Hosur","Chairman");
INSERT INTO ece_bos_mem VALUES("233","19","K.A.Dattatreya","Professor",", Dept. of ECE, ACE, Hosur","Internal member");
INSERT INTO ece_bos_mem VALUES("234","19","Dr.S.Sumathi","Professor",", Dept. of ECE, ACE, Hosur","Internal member");
INSERT INTO ece_bos_mem VALUES("235","19","T.Menakadevi","Professor",", Dept. of ECE, ACE, Hosur","Internal member");
INSERT INTO ece_bos_mem VALUES("236","19","A.Grace","Asst.Professor",", Dept. of ECE, ACE, Hosur","Internal member");
INSERT INTO ece_bos_mem VALUES("237","19","C.Sriramakrishnan","Asst.Professor",", Dept. of ECE, ACE, Hosur","Internal member");
INSERT INTO ece_bos_mem VALUES("238","19","Dr.N.C.Shiva Prakash","Principal Research Scientist","IISC,Bangalore","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("239","19","Prof.Vijayaraj","Professor &Head","Govt college of engineering, Bargur","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("240","19","M.CHANDRASEKARAN","Professor","Govt college of engineering, Salem","University Nominee");
INSERT INTO ece_bos_mem VALUES("241","19","Prof.Vinod kumar","Asst.Professor","Sona college of technology, salem","University Nominee");
INSERT INTO ece_bos_mem VALUES("242","19","Sri.Nagaraj Rao","Managing Director","Digitronix measuring instrument pvt ltd, bangalore","Industry Representative");
INSERT INTO ece_bos_mem VALUES("243","19","K.V.N.Kavitha","Asst.Professor","VIT university,Vellore","Alumnus Member");
INSERT INTO ece_bos_mem VALUES("244","20","Dr.S.V.Raghavan","Professor &Head",", Dept. of ECE, ACE, Hosur","Chairman");
INSERT INTO ece_bos_mem VALUES("245","20","K.A.Dattatreya","Professor",", Dept. of ECE, ACE, Hosur","Internal member");
INSERT INTO ece_bos_mem VALUES("246","20","Dr.S.Sumathi","Professor",", Dept. of ECE, ACE, Hosur","Internal member");
INSERT INTO ece_bos_mem VALUES("247","20","T.Menakadevi","Professor",", Dept. of ECE, ACE, Hosur","Internal member");
INSERT INTO ece_bos_mem VALUES("248","20","A.Grace","Asst.Professor",", Dept. of ECE, ACE, Hosur","Internal member");
INSERT INTO ece_bos_mem VALUES("249","20","C.Sriramakrishnan","Asst.Professor",", Dept. of ECE, ACE, Hosur","Internal member");
INSERT INTO ece_bos_mem VALUES("250","20","Dr.N.C.Shiva Prakash","Principal Research Scientist","IISC,Bangalore","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("251","20","Prof.Vijayaraj","Professor &Head","Govt college of engineering, Bargur","Academic council nominee");
INSERT INTO ece_bos_mem VALUES("252","20","M.CHANDRASEKARAN","Professor","Govt college of engineering,Salem","University Nominee");
INSERT INTO ece_bos_mem VALUES("253","20","Prof.Vinod kumar","Asst.Professor","Sona college of technology,Salem","University Nominee");
INSERT INTO ece_bos_mem VALUES("254","20","shri.Nagaraja Rao","Managing Director","Digitronix measuring instrument private limited, bangalore","Industry Representative");
INSERT INTO ece_bos_mem VALUES("255","20","K.V.N.Kavitha","Asst.Professor","VIT university,Vellore","Alumnus Member");





CREATE TABLE `ece_dept` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `nba_cer3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

INSERT INTO ece_dept VALUES("1","1988-1989","","","","","","","","","","","","");
INSERT INTO ece_dept VALUES("2","1987-1988","","","","","","","","","","","","");
INSERT INTO ece_dept VALUES("3","1991-1992","60","AICTE","22231-1991-aicte-approval.pdf","","","","","","","","","");
INSERT INTO ece_dept VALUES("4","1992-1993","60","AICTE","87618-1992-aicte-approval.pdf","","","","","","","","","");
INSERT INTO ece_dept VALUES("5","1998-1999","60","AICTE","2803-1998-aicte-approval.pdf","","","","","","","","","");
INSERT INTO ece_dept VALUES("6","2003-2004","90","AICTE","25896-2003-aicte-approval.pdf","68916-2004-nba.pdf","","","","","","","","");
INSERT INTO ece_dept VALUES("7","2004-2005","120","AICTE","85180-2004-aicte-approval.pdf","","","","","","","","","");
INSERT INTO ece_dept VALUES("8","2005-2006","120","AICTE","68912-2005-aicte-approval.pdf","","18","AICTE","2275-2005-pg.pdf","","","","","");
INSERT INTO ece_dept VALUES("9","2007-2008","120","AICTE","90183-2007-aicte-approval.pdf","42104-2007-nba.pdf","","","","","","","","");
INSERT INTO ece_dept VALUES("10","2011-2012","180","AICTE","10808-2011-aicte-approval.pdf","","","","","","","","","");
INSERT INTO ece_dept VALUES("11","2012-2013","180","Anna university","90111-2012-13-anna-approval.pdf","98580-2012-nba.pdf","","","","","","","","");
INSERT INTO ece_dept VALUES("12","2013-2014","240","AICTE","40975-2013-14-aicte-approval.pdf","","24","AICTE","96831-2013-pg-2.pdf","","","","","");
INSERT INTO ece_dept VALUES("13","2014-2015","240","Anna university","74136-2014-15-anna-approval.pdf","","24","AICTE","17843-2014-pg1.pdf","","","","","");
INSERT INTO ece_dept VALUES("14","2015-2016","240","AICTE","","46568-2015-nba.pdf","","","","","","","","");
INSERT INTO ece_dept VALUES("15","2017-2018","240","AICTE","","30727-2018-nba.pdf","","","","","","","","");





CREATE TABLE `ece_faci` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

INSERT INTO ece_faci VALUES("1","lab3","Linear integrated circuits","scientific oscilloscope","HM 203","1995","84000","5","63803-new-doc-2019-04-24-14.36.48.pdf");
INSERT INTO ece_faci VALUES("2","lab3","Linear integrated circuits","scientific funtion generator"," HM 5030-2","1995","6412","1","11219-new-doc-2019-04-24-14.36.48.pdf");
INSERT INTO ece_faci VALUES("3","","","","","","","","");
INSERT INTO ece_faci VALUES("4","","","","","","","","");
INSERT INTO ece_faci VALUES("5","lab3","Linear integrated circuits","power supply","ST 4073","2007","67320","20","8682-power-supply.pdf");
INSERT INTO ece_faci VALUES("6","lab3","Linear integrated circuits","dual power supply","ST 4075","2007","5432","15","16048-dual-power-supply.pdf");
INSERT INTO ece_faci VALUES("7","lab7","NETWORKS LAB","LAN TRAINER KIT","LT01","2007","340000","5","80403-network-lab-invoice.pdf");
INSERT INTO ece_faci VALUES("8","lab7","NETWORKS LAB","Netsim software","Simulation","2007","140000","20","41597-network-lab-invoice.pdf");
INSERT INTO ece_faci VALUES("9","lab1","Digital lab","digital IC trainer kit","trainer kit","2015","258000","30","10125-technilab-23.3.15.pdf");
INSERT INTO ece_faci VALUES("10","lab1","Digital lab","digital IC trainer kit","trainer kit","2007","20440","20","54330-uday-5.11.2007.pdf");
INSERT INTO ece_faci VALUES("11","lab1","Digital lab","digital IC trainer kit","UDT-4003","2011","128000","20","47460-uday-28.3.2011.pdf");
INSERT INTO ece_faci VALUES("12","lab1","Digital lab","IC tester","UT-20","2013","18500","1","26032-universal-22.1.13.pdf");
INSERT INTO ece_faci VALUES("13","lab8","Analog and digital communication Systems","AM,FM,PCM,DM,Sampling theorem","Kit","2015","109000","2","50976-technilab-23.3.15.pdf");
INSERT INTO ece_faci VALUES("14","lab8","Analog and digital communication Systems","ASK,FSK,PSK,Line coding,QPSK,QAM","Kit","2015","82865","1","40923-technilab-23.3.15.pdf");
INSERT INTO ece_faci VALUES("15","lab8","Analog and digital communication Systems","Oscilloscope","HM 203","1995","84000","5","40801-new-doc-2019-04-24-14.36.48.pdf");
INSERT INTO ece_faci VALUES("16","lab8","Analog and digital communication Systems","function generator","HM 5030-2","1995","6412","1","16329-new-doc-2019-04-24-14.36.48.pdf");
INSERT INTO ece_faci VALUES("17","lab2","ANALOG ELCTRONICS I & II LABORATORY","DC VOLTMETER","0-30V","2012","21000","40","75783-dc-voltm.pdf");
INSERT INTO ece_faci VALUES("18","lab2","ANALOG ELCTRONICS I & II LABORATORY","DC VOLTMETER","0-10V","2012","21000","40","9341-dc-voltm.pdf");
INSERT INTO ece_faci VALUES("19","lab2","ANALOG ELCTRONICS I & II LABORATORY","DC VOLTMETER","0-1V","2012","21000","40","44553-dc-voltm.pdf");
INSERT INTO ece_faci VALUES("20","lab2","ANALOG ELCTRONICS I & II LABORATORY","DC AMMETER","0-100mA","2012","21000","40","57826-dc-voltm.pdf");
INSERT INTO ece_faci VALUES("21","lab2","ANALOG ELCTRONICS I & II LABORATORY","DC AMMETER","0-50mA","2012","21000","40","42529-dc-voltm.pdf");
INSERT INTO ece_faci VALUES("22","lab2","ANALOG ELCTRONICS I & II LABORATORY","DC AMMETER","0-30mA","2012","21000","40","81465-dc-voltm.pdf");
INSERT INTO ece_faci VALUES("23","lab2","ANALOG ELCTRONICS I & II LABORATORY","DC AMMETER","0-500 MICRO AMPERES","2012","21000","40","7686-dc-voltm.pdf");
INSERT INTO ece_faci VALUES("24","lab2","ANALOG ELCTRONICS I & II LABORATORY","DC REGULATED SINGLE POWER SUPPLY","0-30V, 1A","2012","59250","15","24635-dc-voltm.pdf");
INSERT INTO ece_faci VALUES("25","lab2","ANALOG ELCTRONICS I & II LABORATORY","SIGNAL GENERATOR","TM300-3MHZ","2012","170000","20","31782-dc-voltm.pdf");
INSERT INTO ece_faci VALUES("26","lab2","ANALOG ELCTRONICS I & II LABORATORY","DUAL TRACE CATHODE RAY OSCILLOSCOPE","SM410","2012","355215","20","43969-cro_1.pdf");
INSERT INTO ece_faci VALUES("27","lab2","ANALOG ELCTRONICS I & II LABORATORY","DUAL POWER SUPPLY","0-30V,2A","2012","103500","15","33718-cro_2.pdf");
INSERT INTO ece_faci VALUES("28","lab2","ANALOG ELCTRONICS I & II LABORATORY","DIGITAL MULTIMETER","DIGITAL","2012","25000","20","36225-cro_2.pdf");
INSERT INTO ece_faci VALUES("29","lab2","ANALOG ELCTRONICS I & II LABORATORY","DECADE RESISTANCE BOX","ALL STANDARS","2012","45000","20","92468-cro_2.pdf");
INSERT INTO ece_faci VALUES("30","lab2","ANALOG ELCTRONICS I & II LABORATORY","DECADE CAPACITANCE BOX","ALL STANDARS","2012","45000","20","93905-cro_2.pdf");
INSERT INTO ece_faci VALUES("31","lab2","ANALOG ELCTRONICS I & II LABORATORY","DECADE INDUCTANCE BOX","ALL STANDARS","2012","45000","20","61250-cro_2.pdf");
INSERT INTO ece_faci VALUES("32","lab4","ANALOG ELCTRONICS I & II LABORATORY","DC VOLTMETER","0-30V","2012","21000","40","41569-dc-voltm.pdf");
INSERT INTO ece_faci VALUES("33","lab4","ANALOG ELCTRONICS I & II LABORATORY","DC VOLTMETER","0-10V","2012","21000","40","65557-dc-voltm.pdf");
INSERT INTO ece_faci VALUES("34","lab4","ANALOG ELCTRONICS I & II LABORATORY","DC VOLTMETER","0-1V","2012","21000","40","63107-dc-voltm.pdf");
INSERT INTO ece_faci VALUES("35","lab4","ANALOG ELCTRONICS I & II LABORATORY","DC AMMETER","0-100mA","2012","21000","40","53561-dc-voltm.pdf");
INSERT INTO ece_faci VALUES("36","lab4","ANALOG ELCTRONICS I & II LABORATORY","DC AMMETER","0-50mA","2012","21000","40","61708-dc-voltm.pdf");
INSERT INTO ece_faci VALUES("37","lab4","ANALOG ELCTRONICS I & II LABORATORY","DC AMMETER","0-30mA","2012","21000","40","9337-dc-voltm.pdf");
INSERT INTO ece_faci VALUES("38","lab4","ANALOG ELCTRONICS I & II LABORATORY","DC AMMETER","0-500 MICRO AMPERES","2012","21000","40","36606-dc-voltm.pdf");
INSERT INTO ece_faci VALUES("39","lab4","ANALOG ELCTRONICS I & II LABORATORY","DC REGULATED SINGLE POWER SUPPLY","0-30V, 1A","2012","59250","15","97463-dc-voltm.pdf");
INSERT INTO ece_faci VALUES("40","lab4","ANALOG ELCTRONICS I & II LABORATORY","SIGNAL GENERATOR","TM300-3MHZ","2012","170000","20","96670-dc-voltm.pdf");
INSERT INTO ece_faci VALUES("41","lab4","ANALOG ELCTRONICS I & II LABORATORY","DUAL TRACE CATHODE RAY OSCILLOSCOPE","SM410","2012","355215","20","81794-cro_1.pdf");
INSERT INTO ece_faci VALUES("42","lab4","ANALOG ELCTRONICS I & II LABORATORY","DUAL POWER SUPPLY","0-30V,2A","2012","103500","15","84635-cro_2.pdf");
INSERT INTO ece_faci VALUES("43","lab4","ANALOG ELCTRONICS I & II LABORATORY","DIGITAL MULTIMETER","DIGITAL","2012","25000","20","34405-cro_2.pdf");
INSERT INTO ece_faci VALUES("44","lab4","ANALOG ELCTRONICS I & II LABORATORY","DECADE RESISTANCE BOX","ALL STANDARS","2012","45000","20","85552-cro_2.pdf");
INSERT INTO ece_faci VALUES("45","lab4","ANALOG ELCTRONICS I & II LABORATORY","DECADE CAPACITANCE BOX","ALL STANDARS","2012","45000","20","66926-cro_2.pdf");
INSERT INTO ece_faci VALUES("46","lab4","ANALOG ELCTRONICS I & II LABORATORY","DECADE INDUCTANCE BOX","ALL STANDARS","2012","45000","20","70354-cro_2.pdf");
INSERT INTO ece_faci VALUES("47","lab5","DIGITAL SIGNAL PROCESSING LAB","RAM","2169D34A10PIII64MB","2001","3111000","100","85012-dsp.pdf");
INSERT INTO ece_faci VALUES("48","lab5","DIGITAL SIGNAL PROCESSING LAB","COLOR MONITOR","633102E54IBPC","2001","918000","100","45743-dsp.pdf");
INSERT INTO ece_faci VALUES("49","lab5","DIGITAL SIGNAL PROCESSING LAB","X SERIES 200","IPBC 3732","2001","69360","1","24690-new-doc-2019-04-27-09.29.58_1.pdf");
INSERT INTO ece_faci VALUES("50","lab5","DIGITAL SIGNAL PROCESSING LAB","COLOR MONITOR","IPBC 1714","2001","9180","1","3379-new-doc-2019-04-27-09.29.58_1.pdf");
INSERT INTO ece_faci VALUES("51","lab5","DIGITAL SIGNAL PROCESSING LAB","RAM","IPBC 0072","2001","1244400","40","74609-new-doc-2019-04-27-09.29.58_1.pdf");
INSERT INTO ece_faci VALUES("52","lab9","VLSI LAB","UNIFITED TECHNOLOGY LEARNING PLATFORM","ULK","2014","30000","20","54249-vlsi-doc.pdf");
INSERT INTO ece_faci VALUES("53","lab6","MICROPROCESSOR AND MICROCONTROLLERS LAB","MICROPROCESSOR TRAINER KIT WITH POWER SUPPLY","ALS-SDA-85ME","2013","162360","36","56685-img_20190429_160051.jpg");
INSERT INTO ece_faci VALUES("54","lab6","MICROPROCESSOR AND MICROCONTROLLERS LAB","MICROPROCESSOR TRAINER KIT WITH POWER SUPPLY","ALS-SDA-86MEL","2013","240300","36","85682-img_20190429_160051.jpg");
INSERT INTO ece_faci VALUES("55","lab6","MICROPROCESSOR AND MICROCONTROLLERS LAB","MICROPROCESSOR TRAINER KIT WITH POWER SUPPLY","ALS-SDA-51ME","2013","176220","36","24793-img_20190429_160051.jpg");
INSERT INTO ece_faci VALUES("56","lab6","MICROPROCESSOR AND MICROCONTROLLERS LAB","DUAL DAC INTERFACE","ALS-NIFC-06A","2013","8100","12","74324-img_20190429_160051.jpg");
INSERT INTO ece_faci VALUES("57","lab6","MICROPROCESSOR AND MICROCONTROLLERS LAB","8-BIT ADC INTERFACE","ALS-NIFC-07A","2013","8760","12","71217-img_20190429_160051.jpg");
INSERT INTO ece_faci VALUES("58","lab6","MICROPROCESSOR AND MICROCONTROLLERS LAB","8251-A/8253 STUDY CARD","ALS-NIFC-21","2013","18000","12","34416-img_20190429_160051.jpg");
INSERT INTO ece_faci VALUES("59","lab6","MICROPROCESSOR AND MICROCONTROLLERS LAB","STEPPER MOTOR INTERFACE","ALS-NIFC-01A","2013","24600","12","14670-img_20190429_160051.jpg");
INSERT INTO ece_faci VALUES("60","lab6","MICROPROCESSOR AND MICROCONTROLLERS LAB","TRAFFIC LIGHT INTERFACE","ALS-NIFC-11","2013","7200","12","17592-img_20190429_160051.jpg");
INSERT INTO ece_faci VALUES("61","lab6","MICROPROCESSOR AND MICROCONTROLLERS LAB","8279 STUDY CARD ","ALS-NIFC-24","2013","19200","12","96267-img_20190429_160051.jpg");
INSERT INTO ece_faci VALUES("62","lab6","MICROPROCESSOR AND MICROCONTROLLERS LAB","SCIENTIFIC MAKE 30MHz DUAL TRACE OSCILLOSCOPE","SM203-G","2013","123300","6","48058-img_20190429_160102.jpg");





CREATE TABLE `ece_org` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

INSERT INTO ece_org VALUES("1","2012-2013","conference","1st National conference on frontiers in communicat","self","1","0000-00-00","0000-00-00","2013-03-18","Shri.T.Satyanarayana","180","national","33251-invitation-copy.jpg","1");
INSERT INTO ece_org VALUES("2","2014-2015","conference","3rd National conference on frontiers in communicat","self","2","2015-03-12","2015-03-13","0000-00-00","Shri.H.Lokesha,Senior scientis","184","national","86464-conference15.jpg","1");
INSERT INTO ece_org VALUES("3","2015-2016","conference","4th National conference on frontiers in communicat","self","2","2016-03-10","2016-03-11","0000-00-00","Shri.B.N.Lokesha,Scientist F,D","192","national","18874-conference-16.jpg","1");
INSERT INTO ece_org VALUES("4","2013-2014","conference","2nd National conference on frontiers in communicat","self","2","2014-03-10","2014-03-11","0000-00-00","Shri.H.Lokesha,Senior scientis","187","national","50233-dsc04606.jpg","1");
INSERT INTO ece_org VALUES("5","2016-2017","conference","5th National conference on frontiers in communicat","self","2","2017-03-13","2017-03-14","0000-00-00","shri .Durga prasad,scientist G","188","national","78839-conf17.jpg","1");
INSERT INTO ece_org VALUES("6","2018-2019","conference","7th National conference on frontiers in communicat","self","2","2019-03-19","2019-03-20","0000-00-00","shri.Hemant paranjape,Scientis","187","national","55793-19.jpg","1");
INSERT INTO ece_org VALUES("7","2012-2013","workshop","Digital image processing using matlab","self","2","2012-07-18","2012-07-19","0000-00-00","Prof.G.Gopi,Hod/ECE,Sona colle","60","national","13163-workshop-jul2012.jpg","1");
INSERT INTO ece_org VALUES("8","2012-2013","workshop","CMOS layout design flow using microwind","self","1","0000-00-00","0000-00-00","2012-08-23","Mr.Saravanan,Anna university,C","67","national","93648-workshop-aug2012.jpg","1");
INSERT INTO ece_org VALUES("9","2008-2009","workshop","VLSI design and its applications","self","2","2009-03-31","2009-04-01","0000-00-00","Dr.Thirunavukkarasu,Institutio","69","national","78854-workshop2009.jpg","1");
INSERT INTO ece_org VALUES("10","2011-2012","workshop","Engineering graduates to employable engineers","self","2","2011-08-22","2011-08-23","0000-00-00","Mr.N.Gurubaran,AGM,Carborundum","90","national","43212-workshop2011.jpg","1");
INSERT INTO ece_org VALUES("11","2013-2014","workshop","ISENSOBOTZ ON ARDUINO","self","2","2013-07-29","2013-07-30","0000-00-00","M.Jignesh vaghela,Mr.A.Ghonthi","79","national","98761-1.jpeg","1");
INSERT INTO ece_org VALUES("12","2014-2015","workshop","MATLAB programming concepts in signal and image pr","self","2","2014-08-25","2014-08-26","0000-00-00","Mr.Ravikiran, deisgn engineer,","45","national","73679-workshopaug2014.jpg","1");
INSERT INTO ece_org VALUES("13","2014-2015","workshop","PCB design using eagle CAD","self","2","2014-12-22","2014-12-23","0000-00-00","Mr.Vaithyanathan, R.R Circuits","46","national","33529-workshopdec2014.jpg","1");
INSERT INTO ece_org VALUES("14","2018-2019","workshop","Internet of Things","self","2","2019-02-07","2019-02-08","0000-00-00","Mr.Shamir, Robokart in associa","53","national","61560-workshop2015.jpg","1");
INSERT INTO ece_org VALUES("15","2017-2018","workshop","Wireless robotics","self","2","2017-12-05","2017-12-06","0000-00-00","Prof. Rajasree.B , Prof.Sonali","57","national","29446-20141222_091912.jpg","1");
INSERT INTO ece_org VALUES("16","2017-2018","workshop","GSM and GPS","self","2","2018-02-06","2018-02-07","0000-00-00","prof.Abdul,prof.Amirul,steeven","78","national","90169-20141222_091803.jpg","1");
INSERT INTO ece_org VALUES("17","2013-2014","guest_l","Industry Oriented Real time Embedded Systems and P","self","1","0000-00-00","0000-00-00","2013-12-13","Mr.J.Kasinathan, Mr.Sunil, Mr.","117","district","90081-1st.jpg","1");
INSERT INTO ece_org VALUES("18","2013-2014","guest_l","Embedded System Technology","self","1","0000-00-00","0000-00-00","2013-12-03","Mr.JigneshVaghela, Mr.A.Ghonth","124","district","62889-20140307_104450.jpg","1");
INSERT INTO ece_org VALUES("19","2013-2014","guest_l","Recent Developments in Signal Processing","self","1","0000-00-00","0000-00-00","2014-03-10","Mr. Lokesh Kumar, Senior Scien","112","district","99527-20150710_120550.jpg","1");
INSERT INTO ece_org VALUES("20","2012-2013","guest_l","Base Band Digital Data Transmission","self","1","0000-00-00","0000-00-00","2013-02-07","Mr.PrakashRoi Director RKGIT, ","111","district","54441-img_0521.jpg","1");
INSERT INTO ece_org VALUES("21","2012-2013","guest_l","Satellite Communication","self","2","2012-09-10","2012-09-11","0000-00-00","Ranganath S Ekkundi Scientist ","123","district","97386-100_0171.jpg","1");
INSERT INTO ece_org VALUES("22","2012-2013","guest_l","GSM Security","self","1","0000-00-00","0000-00-00","2012-08-16","Mr.V.K.Arya, EX-DDG,ALTTC, Del","112","district","90413-100_0172.jpg","1");
INSERT INTO ece_org VALUES("23","2013-2014","guest_l","Embedded System Design Using Texas Instruments SOC","self","1","0000-00-00","0000-00-00","2014-03-07","Mr.Gurujeethsingh, Mr.G.L.Kart","121","district","88237-100_0168.jpg","1");
INSERT INTO ece_org VALUES("24","2010-2011","guest_l","Synthesis and Simulation Tools","self","1","0000-00-00","0000-00-00","2010-08-12"," Mr. C.Sundhar, Project Leade","112","district","21368-20140307_104450.jpg","1");
INSERT INTO ece_org VALUES("25","2011-2012","guest_l","Signal Processing","self","1","0000-00-00","0000-00-00","2012-03-04","Prof.Sundararajan, Principal, ","112","district","77182-dsc00556.jpg","1");
INSERT INTO ece_org VALUES("26","2011-2012","guest_l","Electronics System design","self","1","0000-00-00","0000-00-00","2011-09-05","Mr.Saravanan ,        Design E","123","district","88728-1.jpeg","1");
INSERT INTO ece_org VALUES("27","2015-2016","guest_l","New Trends in  Speech Signal Processing”","self","1","0000-00-00","0000-00-00","2015-06-15","Mr.Vinodkumar, WIPRO Limited ,","112","district","52392-img_0521.jpg","1");
INSERT INTO ece_org VALUES("28","2015-2016","guest_l","Microwave Integrated Circuits","self","1","0000-00-00","0000-00-00","2015-07-24","Mr.S.Sathishkumar, Mindtree Li","123","district","13104-dsc00556.jpg","1");
INSERT INTO ece_org VALUES("29","2015-2016","guest_l","Inter personal skills of the Emerging engineers","self","1","0000-00-00","0000-00-00","2015-09-28","Shri.LavanamAmbulla GlobalCamp","117","district","92372-100_0171.jpg","1");
INSERT INTO ece_org VALUES("30","2015-2016","guest_l","PLC and its Applications","self","1","0000-00-00","0000-00-00","2016-02-26","Mr.P.Rathnavel, Sairam College","112","district","44931-1.jpeg","1");
INSERT INTO ece_org VALUES("31","2015-2016","guest_l","Avionics and Cockpits in Fighter Jets","self","1","0000-00-00","0000-00-00","2016-03-10","Shri.B.N.Lokesha Scientist ‘","112","district","25417-100_0172.jpg","1");
INSERT INTO ece_org VALUES("32","2016-2017","guest_l","“India’s next target is to build fifth generat","self","1","0000-00-00","0000-00-00","2016-09-19","Shri.Ch.Durga Prasad, Scientis","123","district","93965-20141222_091803.jpg","1");
INSERT INTO ece_org VALUES("33","2016-2017","guest_l","“Developing PCB Schematic using \"ORCAD\" Capture ","self","1","0000-00-00","0000-00-00","2016-06-25","S RAVI EDA – Engineer, LIVEW","123","district","33710-dsc00556.jpg","1");
INSERT INTO ece_org VALUES("34","2017-2018","guest_l","Recent trends & Technology - Unmanned Aerial Vehic","self","1","0000-00-00","0000-00-00","2017-09-18","Shri. P.Suresh Kumar scientist","123","district","58584-20140307_104450.jpg","1");
INSERT INTO ece_org VALUES("35","2017-2018","guest_l","Developments in Atomic, Molecular, Optical and Nan","self","1","0000-00-00","0000-00-00","2018-03-13","Shri.S.S.Patil Scientist’E�","124","district","11903-100_0171.jpg","1");
INSERT INTO ece_org VALUES("36","2017-2018","guest_l","Software Defined Network","self","1","0000-00-00","0000-00-00","2017-09-18","Mr.V.Ramkumar, Engineering gro","113","district","94748-100_0172.jpg","1");
INSERT INTO ece_org VALUES("37","2017-2018","guest_l","on Field Programmable Gate Array and Direct Digita","self","1","0000-00-00","0000-00-00","2018-02-12","Ms.M.Tara, Application Enginee","114","district","92879-dsc00556.jpg","1");
INSERT INTO ece_org VALUES("38","2017-2018","conference","6th National conference on frontiers in communicat","self","2","2018-03-13","2018-03-14","0000-00-00","Shri.H.Lokesha,Senior scientis","190","national","6022-20141222_091803.jpg","1");
INSERT INTO ece_org VALUES("39","2016-2017","seminar","Developing PCB Schematic using \"ORCAD\" Capture and","self","1","0000-00-00","0000-00-00","2016-06-25","S RAVI EDA – Engineer, LIVEW","123","district","60415-1.jpeg","1");
INSERT INTO ece_org VALUES("40","2017-2018","seminar","Avionics in the Development of Aircraft and Spacec","self","1","0000-00-00","0000-00-00","2017-09-18","Shri. P.Suresh Kumar scientist","123","state","53973-dsc00556.jpg","1");
INSERT INTO ece_org VALUES("41","2012-2013","seminar","Network Simulator","self","1","0000-00-00","0000-00-00","2013-02-07","Prof.G.Usha Devi, Associate Pr","124","state","21714-20141222_091803.jpg","1");
INSERT INTO ece_org VALUES("42","2011-2012","seminar","Wireless security","self","1","0000-00-00","0000-00-00","2011-08-26","Mr.Jabeer Ahmed, Project Lead,","134","state","54270-100_0171.jpg","1");
INSERT INTO ece_org VALUES("43","2011-2012","fdp","VLSI Design and SOC ","self","14","2011-08-08","2011-08-21","0000-00-00","Mr.Sitharamaiah,  General Mana","15","national","96223-fdp.jpg","1");
INSERT INTO ece_org VALUES("44","2015-2016","symposium","Cynosure-12th National level technical symposium","self","2","2015-09-28","2015-09-29","0000-00-00","Shri.Lavanamambulla  Global Ca","178","national","47322-2015.jpg","1");
INSERT INTO ece_org VALUES("45","2016-2017","symposium","Cynosure-13th National level technical symposium","self","2","2016-09-19","2016-09-20","0000-00-00","Shri.Ch.Durga Prasad,  Scienti","176","national","41016-2016.jpg","1");
INSERT INTO ece_org VALUES("46","2017-2018","symposium","Cynosure-14th National level technical symposium","self","2","2017-09-18","2017-09-19","0000-00-00","Shri. P.Suresh Kumar scientist","182","national","49701-2017.jpg","1");
INSERT INTO ece_org VALUES("47","2018-2019","symposium","Cynosure-15th National level technical symposium","self","2","2018-09-27","2018-09-28","0000-00-00","Shri.J.Senthil Rengarajan","187","national","15775-2018.jpg","1");
INSERT INTO ece_org VALUES("48","2014-2015","symposium","Cynosure-11th National level technical symposium","self","2","2014-09-22","2014-09-23","0000-00-00","Shri. K.Sadananda Upadhya ,Sci","179","national","87363-2014.jpg","1");
INSERT INTO ece_org VALUES("49","2013-2014","symposium","Cynosure-10th National level technical symposium","self","2","2013-09-05","2013-09-06","0000-00-00","Shri.H.Lokesha,Senior scientis","183","national","24480-2013.jpg","1");
INSERT INTO ece_org VALUES("50","2012-2013","symposium","Cynosure-9th National level technical symposium","self","2","2012-09-10","2012-09-11","0000-00-00","Mr. Lokesh Kumar, Senior Scien","179","national","98887-2012.jpg","1");
INSERT INTO ece_org VALUES("51","2011-2012","symposium","Cynosure-8th National level technical symposium","self","2","2011-09-19","2011-09-20","0000-00-00","Shri. P.Suresh Kumar scientist","183","national","76465-2011.jpg","1");
INSERT INTO ece_org VALUES("52","2010-2011","symposium","Cynosure-7th National level technical symposium","self","2","2010-09-28","2010-09-29","0000-00-00","Shri s.Patil,Scientist E,DRDO,","179","national","12761-2010.jpg","1");
INSERT INTO ece_org VALUES("53","2009-2010","symposium","Cynosure-6th National level technical symposium","self","2","2009-09-16","2009-09-17","0000-00-00","shri .Durga prasad,scientist G","176","national","27242-2009.jpg","1");
INSERT INTO ece_org VALUES("54","2008-2009","symposium","Cynosure-5th National level technical symposium","self","2","2008-09-21","2008-09-22","0000-00-00","Shri. K.Sadananda Upadhya ,Sci","181","national","82684-dsc01795.jpg","1");
INSERT INTO ece_org VALUES("55","2011-2012","sdp","VLSI Design and System on Chip","self","14","2011-08-08","2011-08-22","0000-00-00","Dr.Kashwan,  Dean, Sona Colleg","14","national","25227-sdp.jpg","1");
INSERT INTO ece_org VALUES("56","2008-2009","fdp","on VLSI Design and Its Applications","self","6","2008-06-06","2008-06-11","0000-00-00","Dr.Palanisamy, Registrar, Anna","13","national","61852-fdp.jpg","1");
INSERT INTO ece_org VALUES("57","2009-2010","fdp","Logic & Synthesis","self","8","2009-09-02","2009-09-09","0000-00-00","Dr.Radhakrishnan, SC’E’,LR","12","national","17813-sdp.jpg","1");
INSERT INTO ece_org VALUES("58","2007-2008","symposium","Cynosure-4th National level technical symposium","self","2","2007-09-19","2007-09-20","0000-00-00","Shri.H.Lokesha,Senior scientis","167","national","29995-2007.jpg","1");





CREATE TABLE `ece_stud` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
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
  `stud_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

INSERT INTO ece_stud VALUES("1","2014-2015","I","1","C","ug","2014-2018","0","0","0","0","0","0","25","35","0","26","10","2","19","0","","3","0","","","","","","60","0","ECE-2014-2018-I-1-C-NEW-I ECE C.csv");
INSERT INTO ece_stud VALUES("2","2014-2015","I","2","C","ug","2014-2018","0","0","0","0","0","0","25","35","0","26","10","2","19","0","","3","0","","","","","","60","0","ECE-2014-2018-I-2-C-NEW-I ECE C.csv");
INSERT INTO ece_stud VALUES("3","2015-2016","II","3","C","ug","2014-2018","0","0","0","0","0","0","25","35","0","26","10","2","19","0","","3","0","","","","","","60","0","ECE-2014-2018-II-3-C-NEW-I ECE C.csv");
INSERT INTO ece_stud VALUES("4","2015-2016","II","4","C","ug","2014-2018","0","0","0","0","0","0","25","35","0","26","10","2","19","0","","3","0","","","","","","60","0","ECE-2014-2018-II-4-C-NEW-I ECE C.csv");
INSERT INTO ece_stud VALUES("5","2016-2017","III","5","C","ug","2014-2018","0","0","0","0","0","0","25","35","0","26","10","2","19","0","","3","0","","","","","","60","0","ECE-2014-2018-III-5-C-NEW-I ECE C.csv");
INSERT INTO ece_stud VALUES("6","2016-2017","III","6","C","ug","2014-2018","0","0","0","0","0","0","25","35","0","26","10","2","19","0","","3","0","","","","","","60","0","ECE-2014-2018-III-6-C-NEW-I ECE C.csv");
INSERT INTO ece_stud VALUES("7","2017-2018","IV","7","C","ug","2014-2018","0","0","0","0","0","0","25","35","0","26","10","2","19","0","","3","0","","","","","","60","0","ECE-2014-2018-IV-7-C-NEW-I ECE C.csv");
INSERT INTO ece_stud VALUES("8","2017-2018","IV","8","C","ug","2014-2018","0","0","0","0","0","0","25","35","0","26","10","2","19","0","","3","0","","","","","","60","0","ECE-2014-2018-IV-8-C-NEW-I ECE C.csv");
INSERT INTO ece_stud VALUES("9","2015-2016","I","1","C","ug","2015-2019","63","1","0","1","0","0","30","33","0","32","9","2","14","1","","5","0","","","","","","63","0","ECE-2015-2019-I-1-C-NEW-sample_file (1).csv");
INSERT INTO ece_stud VALUES("10","2015-2016","I","2","C","ug","2015-2019","0","1","1","0","0","0","30","32","0","31","9","2","14","1","","5","0","","","","","","62","0","ECE-2015-2019-I-2-C-NEW-sample_file (5).csv");
INSERT INTO ece_stud VALUES("11","2016-2017","II","3","C","ug","2015-2019","7","0","0","0","0","0","34","35","0","34","11","2","16","1","","5","0","","","","","","69","0","ECE-2015-2019-II-3-C-NEW-sample_file (5).csv");
INSERT INTO ece_stud VALUES("12","2016-2017","II","4","C","ug","2015-2019","0","0","0","0","0","0","34","35","0","34","11","2","16","1","","5","0","","","","","","69","0","ECE-2015-2019-II-4-C-NEW-sample_file (5).csv");
INSERT INTO ece_stud VALUES("13","2017-2018","III","5","C","ug","2015-2019","0","0","0","0","0","0","34","35","0","34","11","2","16","1","","5","0","","","","","","69","0","ECE-2015-2019-III-5-C-NEW-sample_file (5).csv");
INSERT INTO ece_stud VALUES("14","2015-2016","I","1","B","ug","2015-2019","61","0","0","0","0","0","30","31","0","31","4","2","21","0","","3","0","","","","","","61","0","ECE-2015-2019-I-1-B-NEW-sample_file (1).csv");
INSERT INTO ece_stud VALUES("15","2015-2016","I","2","B","ug","2015-2019","0","0","0","0","0","0","30","31","0","31","4","2","21","0","","3","0","","","","","","61","0","ECE-2015-2019-I-2-B-NEW-sample_file (1).csv");
INSERT INTO ece_stud VALUES("16","1987-1988","II","3","B","ug","2015-2019","7","0","0","0","0","0","36","32","0","35","5","2","23","0","","3","0","","","","","","68","0","ECE-2015-2019-II-3-B-NEW-sample_file (1).csv");
INSERT INTO ece_stud VALUES("17","2016-2017","II","4","B","ug","2015-2019","0","1","1","0","0","0","35","32","0","34","5","2","23","0","","3","0","","","","","","67","0","ECE-2015-2019-II-4-B-NEW-sample_file (1).csv");
INSERT INTO ece_stud VALUES("18","2017-2018","III","5","B","ug","2015-2019","0","0","0","0","0","0","35","32","0","34","5","2","23","0","","3","0","","","","","","67","0","ECE-2015-2019-III-5-B-NEW-sample_file (1).csv");
INSERT INTO ece_stud VALUES("19","2017-2018","III","6","B","ug","2015-2019","0","0","0","0","0","0","35","32","0","34","5","2","23","0","","3","0","","","","","","67","0","ECE-2015-2019-III-6-B-NEW-sample_file (1).csv");
INSERT INTO ece_stud VALUES("20","2018-2019","IV","7","B","ug","2015-2019","0","2","2","0","0","0","33","32","0","33","5","2","23","0","","2","0","","","","","","65","0","ECE-2015-2019-IV-7-B-NEW-sample_file (1).csv");
INSERT INTO ece_stud VALUES("21","2018-2019","IV","8","B","ug","2015-2019","0","0","0","0","0","0","33","32","0","33","5","2","23","0","","2","0","","","","","","65","0","ECE-2015-2019-IV-8-B-NEW-sample_file (1).csv");
INSERT INTO ece_stud VALUES("22","2016-2017","II","3","B","ug","2015-2019","7","0","0","0","0","0","36","32","0","35","5","2","23","0","","3","0","","","","","","68","0","ECE-2015-2019-II-3-B-NEW-sample_file (1).csv");
INSERT INTO ece_stud VALUES("23","2017-2018","I","1","B","ug","2017-2021","65","0","0","0","0","0","37","28","0","32","3","3","23","1","","3","0","","","","","","65","0","ECE-2017-2021-I-1-B-NEW-sample_file  2 B FIRST SEM.csv");
INSERT INTO ece_stud VALUES("24","2017-2018","I","2","B","ug","2017-2021","0","0","0","0","0","0","37","28","0","32","3","3","23","1","","3","0","","","","","","65","0","ECE-2017-2021-I-2-B-NEW-sample_file  2 B FIRST SEM.csv");
INSERT INTO ece_stud VALUES("25","2018-2019","II","3","B","ug","2017-2021","2","0","0","0","0","0","38","29","0","33","3","4","23","1","","3","0","","","","","","67","0","ECE-2017-2021-II-3-B-NEW-sample_file  2 B THIRD SEM.csv");
INSERT INTO ece_stud VALUES("26","1987-1988","II","4","B","ug","2017-2021","0","0","0","0","0","0","38","29","0","33","3","4","23","1","","3","0","","","","","","67","0","ECE-2017-2021-II-4-B-NEW-sample_file  2 B THIRD SEM.csv");
INSERT INTO ece_stud VALUES("27","2016-2017","I","1","A","ug","2016-2020","66","0","0","0","0","0","44","22","0","32","5","9","18","1","","1","0","","","","","","66","0","ECE-2016-2020-I-1-A-NEW-sample_file  2 B THIRD SEM.csv");
INSERT INTO ece_stud VALUES("28","2016-2017","I","2","A","ug","2016-2020","0","0","0","0","0","0","44","22","0","32","5","9","18","1","","1","0","","","","","","66","0","ECE-2016-2020-I-2-A-NEW-sample_file  2 B THIRD SEM.csv");
INSERT INTO ece_stud VALUES("29","2017-2018","II","3","A","ug","2016-2020","5","1","1","0","0","0","46","24","0","32","7","10","18","1","","2","0","","","","","","70","0","ECE-2016-2020-II-3-A-NEW-sample_file  2 B THIRD SEM.csv");
INSERT INTO ece_stud VALUES("30","2017-2018","II","4","A","ug","2016-2020","0","0","0","0","0","0","46","24","0","32","7","10","18","1","","2","0","","","","","","70","0","ECE-2016-2020-II-4-A-NEW-sample_file  2 B THIRD SEM.csv");
INSERT INTO ece_stud VALUES("31","2018-2019","III","5","A","ug","2016-2020","0","0","0","0","0","0","46","24","0","32","7","10","18","1","","2","0","","","","","","70","0","ECE-2016-2020-III-5-A-NEW-sample_file  2 B THIRD SEM.csv");
INSERT INTO ece_stud VALUES("32","2018-2019","III","6","A","ug","2016-2020","0","2","2","0","0","0","44","24","0","30","7","10","18","1","","2","0","","","","","","68","0","ECE-2016-2020-III-6-A-NEW-sample_file  2 B THIRD SEM.csv");
INSERT INTO ece_stud VALUES("33","2017-2018","III","6","C","ug","2015-2019","0","1","1","0","0","0","34","34","0","33","11","2","16","1","","5","0","","","","","","68","0","ECE-2015-2019-III-6-C-NEW-sample_file (5).csv");
INSERT INTO ece_stud VALUES("34","2018-2019","IV","7","C","ug","2015-2019","0","0","0","0","0","0","34","34","0","33","11","2","16","1","","5","0","","","","","","68","0","ECE-2015-2019-IV-7-C-NEW-sample_file (5).csv");
INSERT INTO ece_stud VALUES("35","2018-2019","IV","8","C","ug","2015-2019","0","0","0","0","0","0","34","34","0","33","11","2","16","1","","5","0","","","","","","68","0","ECE-2015-2019-IV-8-C-NEW-sample_file (5).csv");
INSERT INTO ece_stud VALUES("36","2014-2015","I","1","B","ug","2014-2018","59","0","0","0","0","0","20","39","0","35","2","0","16","0","","6","0","","","","","","59","0","ECE-2014-2018-I-1-B-NEW-sample_file 1.csv");
INSERT INTO ece_stud VALUES("37","2014-2015","I","2","B","ug","2014-2018","0","1","1","0","0","0","19","39","0","34","2","0","16","0","","6","0","","","","","","58","0","ECE-2014-2018-I-2-B-NEW-sample_file 1.csv");
INSERT INTO ece_stud VALUES("38","2015-2016","II","3","B","ug","2014-2018","0","3","3","0","0","0","16","39","0","31","2","0","16","0","","6","0","","","","","","55","0","ECE-2014-2018-II-3-B-NEW-sample_file 1.csv");
INSERT INTO ece_stud VALUES("39","2015-2016","II","4","B","ug","2014-2018","0","0","0","0","0","0","16","39","0","31","2","0","16","0","","6","0","","","","","","55","0","ECE-2014-2018-II-4-B-NEW-sample_file 1.csv");
INSERT INTO ece_stud VALUES("40","2016-2017","III","5","B","ug","2014-2018","0","0","0","0","0","0","16","39","0","31","2","0","16","0","","6","0","","","","","","55","0","ECE-2014-2018-III-5-B-NEW-sample_file 1.csv");
INSERT INTO ece_stud VALUES("41","2016-2017","III","6","B","ug","2014-2018","0","0","0","0","0","0","16","39","0","31","2","0","16","0","","6","0","","","","","","55","0","ECE-2014-2018-III-6-B-NEW-sample_file 1.csv");
INSERT INTO ece_stud VALUES("42","2017-2018","IV","7","B","ug","2014-2018","0","0","0","0","0","0","16","39","0","31","2","0","16","0","","6","0","","","","","","55","0","ECE-2014-2018-IV-7-B-NEW-sample_file 1.csv");
INSERT INTO ece_stud VALUES("43","2017-2018","IV","8","B","ug","2014-2018","0","0","0","0","0","0","16","39","0","31","2","0","16","0","","6","0","","","","","","55","0","ECE-2014-2018-IV-8-B-NEW-sample_file 1.csv");
INSERT INTO ece_stud VALUES("44","2017-2018","I","1","A","ug","2017-2021","65","0","0","0","0","0","42","23","0","37","2","1","19","0","","6","0","","","","","","65","0","ECE-2017-2021-I-1-A-NEW-sample_file  venki a 1.csv");
INSERT INTO ece_stud VALUES("45","2017-2018","I","2","A","ug","2017-2021","0","1","1","0","0","0","41","23","0","36","2","1","19","0","","6","0","","","","","","64","0","ECE-2017-2021-I-2-A-NEW-sample_file  venki a 1.csv");
INSERT INTO ece_stud VALUES("46","2018-2019","II","3","A","ug","2017-2021","3","3","3","0","0","0","41","23","0","36","2","1","19","0","","6","0","","","","","","64","0","ECE-2017-2021-II-3-A-NEW-sample_file  venki a 1.csv");
INSERT INTO ece_stud VALUES("47","2018-2019","II","4","A","ug","2017-2021","0","0","0","0","0","0","41","23","0","36","2","1","19","0","","6","0","","","","","","64","0","ECE-2017-2021-II-4-A-NEW-sample_file  venki a 1.csv");





CREATE TABLE `eee_bos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `eee_bos_mem` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `eee_dept` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `nba_cer3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `eee_faci` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `eee_org` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `eee_stud` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `stud_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `eie_bos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

INSERT INTO eie_bos VALUES("1","20","2018-2019","2018-10-29","3182-20th-bos-photo.jpg");
INSERT INTO eie_bos VALUES("2","19","2017-2018","2018-04-23","73154-19th-bos-photo.jpg");
INSERT INTO eie_bos VALUES("3","18","2017-2018","2017-10-26","79291-18th-bos-photo.jpg");
INSERT INTO eie_bos VALUES("4","21","2018-2019","2019-04-11","1612-21st-bos-photo.jpg");
INSERT INTO eie_bos VALUES("5","17","2016-2017","2017-04-12","29786-17th-bos-photo.jpg");
INSERT INTO eie_bos VALUES("6","16","2016-2017","2016-10-15","34777-16-th-bos-photo.jpg");
INSERT INTO eie_bos VALUES("7","15","2015-2016","2016-04-21","72324-15-thb-bos-photo.jpg");
INSERT INTO eie_bos VALUES("8","14","2015-2016","2015-10-17","66874-14-th--bos-photo.jpg");
INSERT INTO eie_bos VALUES("9","13","2014-2015","2015-03-14","59370-13-th-bos-photo.jpg");
INSERT INTO eie_bos VALUES("10","12","2014-2015","2014-11-01","25359-11-th-bos-photo.jpg");
INSERT INTO eie_bos VALUES("11","11","2013-2014","2014-03-22","43304-11-th-bos-photo.jpg");
INSERT INTO eie_bos VALUES("12","10","2013-2014","2013-10-05","13310-10-th--bos-photo.jpg");
INSERT INTO eie_bos VALUES("13","9","2012-2013","2013-04-06","55196-9-th-bos-photo.jpg");
INSERT INTO eie_bos VALUES("14","8","2012-2013","2012-10-06","61418-8--th-bos-photo.jpg");
INSERT INTO eie_bos VALUES("15","7","2011-2012","2012-04-09","30485-7--th-bos-photo.jpg");
INSERT INTO eie_bos VALUES("16","6","2011-2012","2011-11-05","73099-6-th-bos-photo.jpg");
INSERT INTO eie_bos VALUES("17","5","2010-2011","2011-01-29","16699-5th-bos-photo-1.jpg");
INSERT INTO eie_bos VALUES("18","4","2009-2010","2010-02-13","32466-4th-bos-photo1.jpg");
INSERT INTO eie_bos VALUES("19","1","2007-2008","2007-08-22","52712-1st-bos-photo1.jpg");
INSERT INTO eie_bos VALUES("20","1","2007-2008","2007-08-22","29005-1st-bos-photo1.jpg");
INSERT INTO eie_bos VALUES("21","2","2008-2009","2008-06-28","48462-2nd-bos-photo1.jpg");
INSERT INTO eie_bos VALUES("22","3","2008-2009","2009-04-11","97117-5th-bos-photo-1.jpg");





CREATE TABLE `eie_bos_mem` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=latin1;

INSERT INTO eie_bos_mem VALUES("1","2","Dr.S.Sujatha","Prof & Head","
Department of EIE, Adhiyamaan college of Engg. Hosur.
","Chairman");
INSERT INTO eie_bos_mem VALUES("2","2","Dr. S.SivaSubramanian","Faculty","Department of EIE, Adhiyamaan college of Engg. Hosur.
  ","Member");
INSERT INTO eie_bos_mem VALUES("3","2","Dr.N.Bagyalakshmi","Faculty","Department of EIE, Adhiyamaan college of Engg. Hosur.
  ","Member");
INSERT INTO eie_bos_mem VALUES("4","2","Prof.A.Arungandhi","Faculty","Department of EIE, Adhiyamaan college of Engg. Hosur.
  ","Member");
INSERT INTO eie_bos_mem VALUES("5","2","Prof. C.Stalin Jose","Faculty","Department of EIE, Adhiyamaan college of Engg. Hosur.
  ","Member");
INSERT INTO eie_bos_mem VALUES("6","2","Prof. P.Gurusasmy","Faculty","Department of EIE, Adhiyamaan college of Engg. Hosur.
  ","Member");
INSERT INTO eie_bos_mem VALUES("7","2","Dr. Narayanappa","Prof & Head","Department of EEE, Adhiyamaan college of Engg. Hosur.
  ","Interdisciplinary Member");
INSERT INTO eie_bos_mem VALUES("8","2","Dr. T.Thyagarajan","Professor","Department of Instrumentation Engineering,
MIT Campus, Anna University, Chennai-600044  
","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("9","2","Dr S.Srinivasan","Associate Professor","Department of Electronics and Instrumentation Engg,
Annamalai University, Chidambaram
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("10","2","Dr. K.B.Ramesh","Professor and Head","Electronics and Instrumentation Engineering,
R.V.College of Engineering, Bengaluru
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("11","2","Mr. S. Deepak kirupakaran","Project Manager","Cognizant Technology Solutions, Coimbatore","Academic Council Nominee - Alumni");
INSERT INTO eie_bos_mem VALUES("12","2","Arul J Kirubakaran","Engineering & Technical Leader- C&I","IPL-GE Oil & Gas, GE India Technology Center PVT. Ltd,
 John F. Welch Technology center,122, EPIP, 
Whitefield Road, Bangalore 560066.
","Academic Council Nominee - Industry");
INSERT INTO eie_bos_mem VALUES("13","3","Dr.S.Sujatha","Prof & Head","Department of EIE, Adhiyamaan college of Engg. Hosur.","Chairman");
INSERT INTO eie_bos_mem VALUES("14","3","Prof. S.SivaSubramanian","Faculty","Department of EIE, Adhiyamaan college of Engg. Hosur.  ","Member");
INSERT INTO eie_bos_mem VALUES("15","3","Prof.N.Bagyalakshmi","Faculty","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("16","3","Prof.A.Arungandhi","Faculty","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("17","3","Prof. S. Jayakumar","Faculty","Department of EIE, Adhiyamaan college of Engg. Hosur.  ","Member");
INSERT INTO eie_bos_mem VALUES("18","3","Prof. V. P. Krishnammal","Faculty","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("19","3","Dr. Narayanappa","Prof & Head","Department of EIE, Adhiyamaan college of Engg. Hosur.  ","Interdisciplinary Member");
INSERT INTO eie_bos_mem VALUES("20","3","Dr. T.Thyagarajan","Professor","Department of Instrumentation Engineering,
MIT Campus, Anna University, Chennai-600044  
","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("21","3","Dr S.Srinivasan","Associate Professor","Department of Electronics and Instrumentation Engg,
Annamalai University, Chidambaram
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("22","3","Dr. K.B.Ramesh","Prof & Head","Electronics and Instrumentation Engineering,
R.V.College of Engineering, Bengaluru
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("23","3","Mr. S. Deepak kirupakaran     ","Project Manager","Cognizant Technology Solutions, Coimbatore","Academic Council Nominee - Alumni");
INSERT INTO eie_bos_mem VALUES("24","3","Arul J Kirubakaran","Engineering & Technical Leader- C&I","IPL-GE Oil & Gas, GE India Technology Center PVT. Ltd,
 John F. Welch Technology center,122, EPIP, 
Whitefield Road, Bangalore 560066.
","Academic Council Nominee - Industry");
INSERT INTO eie_bos_mem VALUES("25","1","Dr.S.Sujatha","Prof & Head","Department of EIE, Adhiyamaan college of Engg. Hosur","Chairman");
INSERT INTO eie_bos_mem VALUES("26","1","Dr.N.Bagyalakshmi","Associate Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("27","1","Prof.A.Arungandhi","Associate Professor"," Department of EIE, Adhiyamaan college of Engg. Hosur  ","Member");
INSERT INTO eie_bos_mem VALUES("28","1","Prof. C.Stalin Jose","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur  ","Member");
INSERT INTO eie_bos_mem VALUES("29","1","Prof. P.Gurusasmy","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur  ","Member");
INSERT INTO eie_bos_mem VALUES("30","1","Prof.M.Gowrishankar","Assistant Professor"," Department of EIE, Adhiyamaan college of Engg. Hosur  ","Member");
INSERT INTO eie_bos_mem VALUES("31","1","Dr. Narayanappa","Prof & Head","Department of EEE, Adhiyamaan college of Engg. Hosur","Interdisciplinary Member");
INSERT INTO eie_bos_mem VALUES("32","1","Dr. S.Srinivasan","Associate Professor","Department of Instrumentation Engineering,
MIT Campus, Anna University, Chennai-600044  
","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("33","1","Dr. M.N Mamatha","Professor & Head","Electronics and Instrumentation Engineering, 
BMS College of Engineering, Bangalore.
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("34","1","Dr.V.Gopalakrishnan,","Professor and Head","Electronics and Instrumentation Engineering, 
 Government College of Technology, Coimbatore
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("35","1","Mr. M.Marirajan","Managing Director","Marigan Engineers & Constructors Private Limited, Chennai","Academic Council Nominee - Alumni");
INSERT INTO eie_bos_mem VALUES("36","1","Mr.N.Srivathsan","Executive Manager","Yokogawa India Ltd, 
Bangalore-560100
","Academic Council Nominee - Industry");
INSERT INTO eie_bos_mem VALUES("37","4","Dr.S.Sujatha","Prof & Head","Department of EIE, Adhiyamaan college of Engg. Hosur","Chairman");
INSERT INTO eie_bos_mem VALUES("38","4","Dr.N.Bagyalakshmi","Associate Professor"," Department of EIE, Adhiyamaan college of Engg. Hosur ","Member");
INSERT INTO eie_bos_mem VALUES("39","4","Prof. C.Stalin Jose","Assistant Professor"," Department of EIE, Adhiyamaan college of Engg. Hosur  ","Member");
INSERT INTO eie_bos_mem VALUES("40","4","Prof. P.Gurusasmy","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur ","Member");
INSERT INTO eie_bos_mem VALUES("41","4","Prof.M.Gowrishankar","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur ","Member");
INSERT INTO eie_bos_mem VALUES("42","4","Prof.M.Anbarasan","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur ","Member");
INSERT INTO eie_bos_mem VALUES("43","4","Dr. Narayanappa","Prof & Head","Department of EEE, Adhiyamaan college of Engg. Hosur ","Interdisciplinary Member");
INSERT INTO eie_bos_mem VALUES("44","4","Dr S.Srinivasan","Associate Professor","Department of Instrumentation Engineering,
MIT Campus, Anna University, Chennai-600044  
","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("45","4","Dr. M.N Mamatha","Prof & Head","Electronics and Instrumentation Engineering, 
BMS College of Engineering, Bangalore.
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("46","4","Dr.V.Gopalakrishnan,","Prof & Head","Electronics and Instrumentation Engineering, 
 Government College of Technology, Coimbatore
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("47","4","Mr. M.Marirajan","Managing Director","Marigan Engineers & Constructors Private Limited, Chennai.","Academic Council Nominee - Alumni");
INSERT INTO eie_bos_mem VALUES("48","4","Mr.N.Srivathsan","Executive Manager","Yokogawa India Ltd, 
Bangalore-560100
","Academic Council Nominee - Industry");
INSERT INTO eie_bos_mem VALUES("49","5","Dr.S.Sujatha","Prof & Head","Department of EIE, Adhiyamaan college of Engg. Hosur.","Chairman");
INSERT INTO eie_bos_mem VALUES("50","5","Prof. S.SivaSubramanian","Associate Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("51","5","Prof.N.Bagyalakshmi","Associate Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("52","5","Prof.A.Arungandhi","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("53","5","Prof.S.Jayakumar","Assistant Professor"," Department of EIE, Adhiyamaan college of Engg. Hosur.  ","Member");
INSERT INTO eie_bos_mem VALUES("54","5","Prof.V.P.Krishnammal","Assistant Professor"," Department of EIE, Adhiyamaan college of Engg. Hosur.  ","Member");
INSERT INTO eie_bos_mem VALUES("55","5","Dr. Narayanappa","Prof & Head"," Department of EEE, Adhiyamaan college of Engg. Hosur.  ","Interdisciplinary Member");
INSERT INTO eie_bos_mem VALUES("56","5","Dr. T.Thyagarajan","Professor","Department of Instrumentation Engineering,
MIT Campus, Anna University, Chennai-600044  
","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("57","5","Dr. K.B.Ramesh","Prof & Head","Electronics and Instrumentation Engineering,
R.V.College of Engineering, Bengaluru
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("58","5","Dr S.Srinivasan","Associate Professor","Department of Electronics and Instrumentation Engg,
Annamalai University, Chidambaram
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("59","5","Mr. S. Deepak kirupakaran     ","Senior Associate","Cognizant Technology Solutions, Coimbatore","Academic Council Nominee - Alumni");
INSERT INTO eie_bos_mem VALUES("60","5","Arul J Kirubakaran","Engineering & Technical Leader- C&I","IPL-GE Oil & Gas, GE India Technology Center PVT. Ltd,
 John F. Welch Technology center,122, EPIP, 
Whitefield Road, Bangalore 560066.
","Academic Council Nominee - Industry");
INSERT INTO eie_bos_mem VALUES("61","6","Dr.S.Sujatha","Prof & Head","Department of EIE, Adhiyamaan college of Engg. Hosur.","Chairman");
INSERT INTO eie_bos_mem VALUES("62","6","Prof. S.SivaSubramanian","Associate Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("63","6","Prof.N.Bagyalakshmi","Associate Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("64","6","Prof.A.Arungandhi","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("65","6","Prof.S.Jayakumar","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("66","6","Prof.V.P.Krishnammal","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("67","6","Dr. Narayanappa","Prof & Head","Department of EEE, Adhiyamaan college of Engg. Hosur.","Interdisciplinary Member");
INSERT INTO eie_bos_mem VALUES("68","6","Dr. T.Thyagarajan","Professor","Department of Instrumentation Engineering,
MIT Campus, Anna University, Chennai-600044  
","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("69","6","Dr. K.B.Ramesh","Prof & Head","Electronics and Instrumentation Engineering,
R.V.College of Engineering, Bengaluru
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("70","6","Dr S.Srinivasan","Associate Professor","Department of Electronics and Instrumentation Engg,
Annamalai University, Chidambaram
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("71","6","Mr. S. Deepak kirupakaran     ","Senior Associate","Cognizant Technology Solutions, Coimbatore.","Academic Council Nominee - Alumni");
INSERT INTO eie_bos_mem VALUES("72","6","Arul J Kirubakaran","Engineering & Technical Leader- C&I"," IPL-GE Oil & Gas, GE India Technology Center PVT. Ltd,
 John F. Welch Technology center,122, EPIP, 
Whitefield Road, Bangalore 560066.
","Academic Council Nominee - Industry");
INSERT INTO eie_bos_mem VALUES("73","7","Dr.S.Sujatha","Prof & Head","Department of EIE, Adhiyamaan college of Engg. Hosur","Chairman");
INSERT INTO eie_bos_mem VALUES("74","7","Prof. S.SivaSubramanian","Associate Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("75","7","Prof.N.Bagyalakshmi","Associate Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("76","7","Prof.A.Arungandhi","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("77","7","Prof.S.Jayakumar","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("78","7","Prof.V.P.Krishnammal","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("79","7","Dr.S.Sumathi","Prof & Head","Department of ECE, Adhiyamaan college of Engg. Hosur","Interdisciplinary Member");
INSERT INTO eie_bos_mem VALUES("80","7","Dr.S.Esakkirajan","Associate Professor","Department of Instrumentation and Control System,
PSG College of Technology, Coimbatore-641004
","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("81","7","Dr.M. Meenakshi","Prof & Head","	Dept. of Instrumentation  Tech.,
Dr.Ambedkar Institute of Tech., Bangalore.
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("82","7","Dr A.Kavitha","Associate Professor","CEG Campus, Anna University, Chennai- 25.","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("83","7","Mr. S. Deepak kirupakaran     ","Senior Associate","Cognizant Technology Solutions, Coimbatore","Academic Council Nominee - Alumni");
INSERT INTO eie_bos_mem VALUES("84","7","Dr. P.Packiam","Lead","Solar Divison  - R&D, 
Schneider Electric India Pvt Ltd, 
Bangalore-560067
","Academic Council Nominee - Industry");
INSERT INTO eie_bos_mem VALUES("85","8","Dr.S.Sujatha","Prof & Head","
Department of EIE, Adhiyamaan college of Engg. Hosur.","Chairman");
INSERT INTO eie_bos_mem VALUES("86","8","Prof. S.SivaSubramanian","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("87","8","Prof.N.Bagyalakshmi","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("88","8","Prof.A.Arungandhi","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("89","8","Prof.S.Jayakumar","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("90","8","Prof.V.P.Krishnammal","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("91","8","Dr.S.Sumathi","Prof & Head","Department of ECE, Adhiyamaan college of Engg. Hosur.","Interdisciplinary Member");
INSERT INTO eie_bos_mem VALUES("92","8","Dr.S.Esakkirajan","Associate Professor","Department of Instrumentation and Control System,
PSG College of Technology, Coimbatore-641004
","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("93","8","Dr.M. Meenakshi","Prof & Head","Dept. of Instrumentation  Tech.,
Dr.Ambedkar Institute of Tech., Bangalore
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("94","8","Dr A.Kavitha","Associate Professor","CEG Campus, Anna University, Chennai- 25","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("95","8","Mr. S. Deepak kirupakaran     ","Senior Associate","Cognizant Technology Solutions, Coimbatore","Academic Council Nominee - Alumni");
INSERT INTO eie_bos_mem VALUES("96","8","Dr.P.Packiam","Lead","Solar Divison  - R&D, 
Schneider Electric India Pvt Ltd, 
Bangalore-560067
","Academic Council Nominee - Industry");
INSERT INTO eie_bos_mem VALUES("97","9","Dr.S.Sujatha","Prof & Head","Department of EIE, Adhiyamaan college of Engg. Hosur","Chairman");
INSERT INTO eie_bos_mem VALUES("98","9","Prof. S.SivaSubramanian","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("99","9","Prof.N.Bagyalakshmi","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("100","9","Prof.A.Arungandhi","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("101","9","Prof.S.Jayakumar","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("102","9","Prof.V.P.Krishnammal","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("103","9","Dr.S.Sumathi","Prof & Head","Department of ECE, Adhiyamaan college of Engg. Hosur","Interdisciplinary Member");
INSERT INTO eie_bos_mem VALUES("104","9","Dr.S.Esakkirajan","Associate Professor","Department of Instrumentation and Control System
PSG College of Technology, Coimbatore-641004   
","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("105","9","Dr.M. Meenakshi","Prof & Head","Dept. of Instrumentation  Tech.,
Dr.Ambedkar Institute of Tech., Bangalore
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("106","9","Dr A.Kavitha","Associate Professor","Department of EEE
CEG Campus, Anna University, Chennai- 25.
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("107","9","Mr. S. Deepak kirupakaran     ","Senior Associate","Cognizant Technology Solutions, Coimbatore","Academic Council Nominee - Alumni");
INSERT INTO eie_bos_mem VALUES("108","9","Dr.P.Packiam","Associate Lead","Schneider Electric India Pvt Ltd, 
Solar Divison  - R&D, 
Bangalore-560067
","Academic Council Nominee - Industry");
INSERT INTO eie_bos_mem VALUES("109","10","Dr.S.Sujatha","Prof & Head","Department of EIE, Adhiyamaan college of Engg. Hosur","Chairman");
INSERT INTO eie_bos_mem VALUES("110","10","Prof. S.SivaSubramanian","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("111","10","Prof.N.Bagyalakshmi","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("112","10","Prof.A.Arungandhi","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("113","10","Prof.S.Jayakumar","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("114","10","Prof.V.P.Krishnammal","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("115","10","Dr.S.Sumathi","Prof & Head","Department of ECE, Adhiyamaan college of Engg. Hosur","Interdisciplinary Member");
INSERT INTO eie_bos_mem VALUES("116","10","Dr.S.Esakkirajan","Associate Professor","Department of Instrumentation and Control System
PSG College of Technology, Coimbatore-641004   
","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("117","10","Dr.M. Meenakshi","Prof & Head","Dept. of Instrumentation  Tech.,
Dr.Ambedkar Institute of Tech., Bangalore
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("118","10","Dr A.Kavitha","Associate Professor","Department of EEE
CEG Campus, Anna University, Chennai- 25.
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("119","10","Mr. S. Deepak kirupakaran     ","Senior Associate","Cognizant Technology Solutions, Coimbatore","Academic Council Nominee - Alumni");
INSERT INTO eie_bos_mem VALUES("120","10","Dr.P.Packiam","Associate Lead","Schneider Electric India Pvt Ltd, 
Solar Divison  - R&D, 
Bangalore-560067
","Academic Council Nominee - Industry");
INSERT INTO eie_bos_mem VALUES("121","11","Dr.S.Sujatha","Prof & Head","Department of EIE, Adhiyamaan college of Engg. Hosur","Chairman");
INSERT INTO eie_bos_mem VALUES("122","11","Prof. S.SivaSubramanian","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("123","11","Prof.P.Hosanna Princye","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("124","11","Prof.N.Bagyalakshmi","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("125","11","Prof.A.Arungandhi","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("126","11","Prof.R.Deepa","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("127","11","Dr.N.Bharathi","Professor and Vice Principal","Department of EIE,
Velammal Engineering College,
Chennai.
","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("128","11","Dr. R. Saravana kumar","Professor","Division Chair – Robotics & Control system 
School of Electrical Engineering
VIT University, Vellore
","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("129","11","Dr. S. Vijayachitra","Professor","Department of  EIE,
Kongu Engineering College,
 Perundurai, Erode
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("130","11","Dr.N.Siva Kumaran","Associate Professor","Department of ICE,
NIT, Trichy
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("131","11","Mr.B.Manigandan","Hardware Engineer","CISCO Development India PVT Ltd, Bangalore","Academic Council Nominee - Alumni");
INSERT INTO eie_bos_mem VALUES("132","11","Mr. T. Sivaguru","Hardware Engineer","CISCO Development India PVT Ltd, Bangalore.","Academic Council Nominee - Industry");
INSERT INTO eie_bos_mem VALUES("133","12","Dr.S.Sujatha","Prof & Head","Department of EIE, Adhiyamaan college of Engg. Hosur","Chairman");
INSERT INTO eie_bos_mem VALUES("134","12","Prof. S.SivaSubramanian","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("135","12","Prof.P.Hosanna Princye","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("136","12","Prof.S.Jayakumar","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("137","12","Prof.N.Bagyalakshmi","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("138","12","Prof.A.Arungandhi","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("139","12","Dr.N.Bharathi","Professor and Vice Principal","Department of EIE,
Velammal Engineering College,
Chennai.
","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("140","12","Dr.R.Saravanakumar","Professor","Division Chair – Robotics & Control system 
School of Electrical Engineering
VIT University, Vellore.
","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("141","12","Dr.N.Siva Kumaran","Associate Professor","Department of ICE,
NIT, Trichy
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("142","12","Dr. S. Vijayachitra","Professor","Department of  EIE,
Kongu Engineering College,
 Perundurai, Erode
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("143","12","Mr.B.Manigandan","Hardware Engineer","CISCO Development India PVT Ltd, Bangalore.","Academic Council Nominee - Alumni");
INSERT INTO eie_bos_mem VALUES("144","12","Mr. T. Sivaguru","Hardware Engineer","CISCO Development India PVT Ltd, Bangalore.","Academic Council Nominee - Industry");
INSERT INTO eie_bos_mem VALUES("145","13","Dr.S.Sujatha","Prof & Head","Department of EIE, Adhiyamaan college of Engg. Hosur.","Chairman");
INSERT INTO eie_bos_mem VALUES("146","13","Prof. S.SivaSubramanian","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("147","13","Prof.P.Hosanna Princye","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("149","13","Prof.S.Jayakumar","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("150","13","Prof.D.Vijayanandh","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("151","13","Prof.V.P.Krishnammal","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("152","13","Dr.N.Bharathi","Prof & Head","Department of EIE,
Velammal Engineering College,
Chennai.
","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("153","13","Dr.R.Saravanakumar","Professor","Division Chair – Robotics & Control system 
School of Electrical Engineering
VIT University, Vellore.
","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("154","13","Dr.N.Siva Kumaran","Associate Professor","Department of ICE,
NIT, Trichy
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("155","13","Dr. S. Vijayachitra","Professor","Department of  EIE,
Kongu Engineering College,
 Perundurai, Erode
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("156","13","Mr.B.Manigandan","Hardware Engineer","CISCO Development India PVT Ltd, Bangalore.","Academic Council Nominee - Alumni");
INSERT INTO eie_bos_mem VALUES("157","13","Mr. T. Sivaguru","Hardware Engineer","CISCO Development India PVT Ltd, Bangalore.","Academic Council Nominee - Industry");
INSERT INTO eie_bos_mem VALUES("158","14","Prof.S.Sujatha","Prof & Head","Department of EIE, Adhiyamaan college of Engg. Hosur","Chairman");
INSERT INTO eie_bos_mem VALUES("159","14","Prof. S.SivaSubramanian","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("160","14","Prof.P.Hosanna Princye","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("161","14","Prof.D.Vijayanandh","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("162","14","Prof.V.P.Krishnammal","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("163","14","Prof.S.Jayakumar","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("164","14","Dr.N.Bharathi","Prof & Head","Department of EIE,
Velammal Engineering College,
Chennai.
","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("165","14","Dr.R.Saravanakumar","Professor","Division Leader – Control system 
School of Electrical Engineering
VIT University
Vellore.
","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("166","14","Dr.N.Siva Kumaran","Associate Professor","Department of ICE,
NIT, Trichy
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("167","14","Dr. S. Vijayachitra","Professor","Department of  EIE,
Kongu Engineering College,
 Perundurai, Erode
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("168","14","Mr.B.Manigandan","Hardware Engineer","CISCO Development India PVT Ltd, Bangalore","Academic Council Nominee - Alumni");
INSERT INTO eie_bos_mem VALUES("169","14","Mr. T. Sivaguru","Hardware Engineer","CISCO Development India PVT Ltd, Bangalore","Academic Council Nominee - Industry");
INSERT INTO eie_bos_mem VALUES("170","15","Prof.S.Sujatha","Prof & Head","Department of EIE, Adhiyamaan college of Engg. Hosur","Chairman");
INSERT INTO eie_bos_mem VALUES("171","15","Prof. S.SivaSubramanian","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("172","15","Prof.P.Hosanna Princye","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("173","15","Prof.K.Mohan","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("174","15","Prof.D.Vijayanandh","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("175","15","Prof.P.Karunakaran","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("176","15","Dr.N.Bharathi","Prof & Head","Department of EIE,
Velammal Engineering College,
Chennai.
","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("177","15","Dr.R.Saravanakumar","Professor","Division Leader – Control system 
School of Electrical Engineering
VIT University
Vellore.
","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("178","15","Dr.N.Siva Kumaran","Associate Professor","Department of ICE,
NIT, Trichy
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("179","15","Dr. S. Vijayachitra","Professor","Department of  EIE,
Kongu Engineering College,
 Perundurai, Erode.
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("180","15","Mr.B.Manigandan","Hardware Engineer","CISCO Development India PVT Ltd, Bangalore","Academic Council Nominee - Alumni");
INSERT INTO eie_bos_mem VALUES("181","15","Mr. T. Sivaguru","Hardware Engineer","CISCO Development India PVT Ltd, Bangalore","Academic Council Nominee - Industry");
INSERT INTO eie_bos_mem VALUES("182","16","Prof.S.Sujatha","Prof & Head","Department of EIE, Adhiyamaan college of Engg. Hosur","Chairman");
INSERT INTO eie_bos_mem VALUES("183","16","Prof. S.SivaSubramanian","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("184","16","Prof.P.Hosanna Princye","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("185","16","Prof.K.Mohan","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("186","16","Prof.P.Mohammed Sajid","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("187","16","Prof.D.Vijayanandh","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("188","16","Dr.N.Bharathi","Prof & Head","Department of EIE,
Velammal Engineering College,
Chennai.
","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("189","16","Dr.R.Saravanakumar","Professor","Division Leader – Control system 
School of Electrical Engineering
VIT University
Vellore.
","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("190","16","Dr.N.Siva Kumaran","Associate Professor","Department of ICE,
NIT, Trichy
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("191","16","Dr.S.Vijayachitra","Professor","Department of  EIE,
Kongu Engineering College,
 Perundurai, Erode.
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("192","16","Mr.B.Manigandan","Hardware Engineer","CISCO Development India PVT Ltd, Bangalore","Academic Council Nominee - Alumni");
INSERT INTO eie_bos_mem VALUES("193","16","Mr. T. Sivaguru","Hardware Engineer","CISCO Development India PVT Ltd, Bangalore","Academic Council Nominee - Industry");
INSERT INTO eie_bos_mem VALUES("194","17","Prof.S.Sujatha","Prof & Head","Department of EIE, Adhiyamaan college of Engg. Hosur.","Chairman");
INSERT INTO eie_bos_mem VALUES("195","17","Prof. S.SivaSubramanian","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("196","17","Prof.P.Hosanna Princye","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("197","17","Prof.K.Mohan","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("198","17","Prof.P.Mohammed Sajid","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("199","17","Prof.D.Vijayanandh","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("200","17","Dr.N.Siva Kumaran","Associate Professor","Department of ICE,
NIT, Trichy
","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("201","17","Prof.Senguttuvan","Professor","Department of EEE,
KSR Engineering College,
Tiruchengode","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("202","17","Dr.N.Pappa","Associate Professor","Department of Instrumentation Engg,
MIT,Anna University, chennai","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("203","17","Dr.N.Bharathi","Prof & Head","Department of EIE,
Velammal Engineering College,
Chennai.
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("204","17","Mr. T. Sivaguru","Hardware Engineer","CISCO Development India PVT Ltd, Bangalore.","Academic Council Nominee - Alumni");
INSERT INTO eie_bos_mem VALUES("205","17","Mr.B.Manigandan","Hardware Engineer","CISCO Development India PVT Ltd, Bangalore.","Academic Council Nominee - Industry");
INSERT INTO eie_bos_mem VALUES("206","18","Prof.S.Sujatha","Prof & Head","Department of EIE, Adhiyamaan college of Engg. Hosur","Chairman");
INSERT INTO eie_bos_mem VALUES("207","18","Prof. S.SivaSubramanian","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("208","18","Prof.P.Hosanna Princye","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("209","18","Prof.K.Mohan","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("210","18","Prof.P.Mohammed Sajid","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("211","18","Prof.D.Vijayanandh","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur","Member");
INSERT INTO eie_bos_mem VALUES("212","18","Dr.N.Siva Kumaran","Associate Professor","Department of ICE,
NIT, Trichy
","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("213","18","Prof.Senguttuvan","Professor","Department of EEE, KSR Engg College,
Tirunchengode","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("214","18","Dr.N.Pappa","Associate Professor","Department of Instrumentation,
MIT,Anna University","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("215","18","Dr.N.Bharathi","Prof & Head","Department of EIE,
Velammal Engineering College,
Chennai.
","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("216","18","Mr. T. Sivaguru","Hardware Engineer","CISCO Development India PVT Ltd, Bangalore.","Academic Council Nominee - Alumni");
INSERT INTO eie_bos_mem VALUES("217","18","Mr.B.Manigandan","Technical Manager","MRO TEK, Bangalore.","Academic Council Nominee - Industry");
INSERT INTO eie_bos_mem VALUES("218","19","Prof.S.Sujatha","Prof & Head","Department of EIE, Adhiyamaan college of Engg. Hosur.","Chairman");
INSERT INTO eie_bos_mem VALUES("219","19","Prof.P.M.Arivananthi","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("220","19","Prof. S.SivaSubramanian","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("221","19","Prof.V.Dineshkumar","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("222","19","Prof.P.Hosanna Princye","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.","Member");
INSERT INTO eie_bos_mem VALUES("223","19","Prof.K.Mohan","Assistant Professor","Department of EIE, Adhiyamaan college of Engg. Hosur.  ","Member");
INSERT INTO eie_bos_mem VALUES("224","19","Dr.N.Pappa","Associate Professor","Department of Instrumentation,
M.I.T,Anna university, chennai","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("225","19","Dr.M.Umapathy","Associate Professor","Department of ICE,
NIT,Trichy","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("226","19","Dr.A.Vimala Juliet","Prof & Head","Department of ICE,SRM University, Chennai","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("227","19","Dr.Umamaheswari","Prof & Head","Department of EEE,CEG campus,Anna University, Chennai","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("228","19","Mr.LJayaraj","Principal Engineer","ACS-HPS-APC. Honeywell Technology Solutions Lab,
Bangalore","Academic Council Nominee - Industry");
INSERT INTO eie_bos_mem VALUES("229","19","Mr.B.Manigandan","Hardware Engineer","MRO TECH, Bangalore","Academic Council Nominee - Alumni");
INSERT INTO eie_bos_mem VALUES("230","21","Prof.S.Sujatha","Prof & Head","Department of EIE,
Adhiyamaan College of Engineering, Hosur","Chairman");
INSERT INTO eie_bos_mem VALUES("231","21","Prof. S.SivaSubramanian","Assistant Professor"," Department of EIE,
Adhiyamaan College of Engineering, Hosur  ","Member");
INSERT INTO eie_bos_mem VALUES("232","21","Prof.P.Hosanna Princye","Assistant Professor"," Department of EIE,
Adhiyamaan College of Engineering, Hosur  ","Member");
INSERT INTO eie_bos_mem VALUES("233","21","Prof.K.Mohan","Assistant Professor"," Department of EIE,
Adhiyamaan College of Engineering, Hosur  ","Member");
INSERT INTO eie_bos_mem VALUES("234","21","Prof.P.Mohammed Sajid","Assistant Professor"," Department of EIE,
Adhiyamaan College of Engineering, Hosur  ","Member");
INSERT INTO eie_bos_mem VALUES("235","21","Prof.P.Karunakaran","Assistant Professor"," Department of EIE,
Adhiyamaan College of Engineering, Hosur  ","Member");
INSERT INTO eie_bos_mem VALUES("236","21","Dr.N.Pappa","Associate Professor","Department of Instrumentation,
MIT,Anna University, Chennai","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("237","21","Dr.M.Umapathy","Associate Professor","Department of ICE,
NIT, Trichy ","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("238","21","Dr.A.Vimala Juliet","Prof & Head","Department of ICE,
SRM University,
Chennai","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("239","21","Dr.Umamaheswari","Prof & Head","Department of EEE,CEG Campus, Anna university, Chennai","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("240","21","Mr.LJayaraj","Principal Engineer","Honeywell Technology Colutions lab, Bangalore","Academic Council Nominee - Industry");
INSERT INTO eie_bos_mem VALUES("241","21","Mr.B.Manigandan","Hardware Engineer","MRO TEK, Bangalore ","Academic Council Nominee - Alumni");
INSERT INTO eie_bos_mem VALUES("242","22","Prof.S.Sujatha","Prof & Head"," Department of EIE,
Adhiyamaan College of Engineering, Hosur  ","Chairman");
INSERT INTO eie_bos_mem VALUES("243","22","Prof. S.SivaSubramanian","Assistant Professor"," Department of EIE,
Adhiyamaan College of Engineering, Hosur  ","Member");
INSERT INTO eie_bos_mem VALUES("244","22","Prof.P.Hosanna Princye","Assistant Professor"," Department of EIE,
Adhiyamaan College of Engineering, Hosur  ","Member");
INSERT INTO eie_bos_mem VALUES("245","22","Prof.K.Mohan","Assistant Professor"," Department of EIE,
Adhiyamaan College of Engineering, Hosur  ","Member");
INSERT INTO eie_bos_mem VALUES("246","22","Prof.P.Mohammed Sajid","Assistant Professor"," Department of EIE,
Adhiyamaan College of Engineering, Hosur  ","Member");
INSERT INTO eie_bos_mem VALUES("247","22","Prof.P.Karunakaran","Assistant Professor"," Department of EIE,
Adhiyamaan College of Engineering, Hosur  ","Member");
INSERT INTO eie_bos_mem VALUES("248","22","Dr.N.Pappa","Associate Professor","Department of Instrumentation,
MIT,Anna University, Chennai","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("249","22","Dr.M.Umapathy","Associate Professor","Department of ICE,NIT,Trichy","Academic Council Nominee");
INSERT INTO eie_bos_mem VALUES("250","22","Dr.A.Vimala Juliet","Prof & Head","Department of ICE,SRM University, Chennai","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("251","22","Dr.Umamaheswari","Prof & Head","Department of EEE,
CEG Campus, Anna university, chennai","University Nominee      ");
INSERT INTO eie_bos_mem VALUES("252","22","Mr.LJayaraj","Principal Engineer","Honeywell technologies, Bangalore","Academic Council Nominee - Industry");
INSERT INTO eie_bos_mem VALUES("253","22","Mr.B.Manigandan","Hardware Engineer","MRO TEK ,Bangalore","Academic Council Nominee - Alumni");





CREATE TABLE `eie_dept` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `nba_cer3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO eie_dept VALUES("1","2007-2008","60","ANNA UNIVERSITY","","","","","","","","","","");
INSERT INTO eie_dept VALUES("2","2009-2010","120","ANNA UNIVERSITY","","","","","","","","","","");
INSERT INTO eie_dept VALUES("3","2015-2016","120","ANNA UNIVERSITY","","28092-nba-certificate.pdf","","","","","","","","");
INSERT INTO eie_dept VALUES("4","2018-2019","60","ANNA UNIVERSITY","","","","","","","","","","");





CREATE TABLE `eie_faci` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

INSERT INTO eie_faci VALUES("1","lab1","Integrated Circuits Lab","Digital IC Trainer Kit with Bread Board","-","2004","35,420.94","6","");
INSERT INTO eie_faci VALUES("2","lab1","Integrated Circuits Lab","Digital IC Tester","-","2004","14,888.18","1","");
INSERT INTO eie_faci VALUES("3","lab1","Integrated Circuits Lab","Dual Output Power Supply","-","2004","20,599.72","4","");
INSERT INTO eie_faci VALUES("4","","","","","","","","");
INSERT INTO eie_faci VALUES("5","lab1","Integrated Circuits Lab","Digital IC Trainer Kit","UDT-4003","2011","1,13,318.00","20","");
INSERT INTO eie_faci VALUES("6","lab1","Integrated Circuits Lab","CRO","ST251","2004","1,02,534.30","5","");
INSERT INTO eie_faci VALUES("7","","","","","","","","");
INSERT INTO eie_faci VALUES("8","lab2","Virtual Instrumentation Lab"," Desktop PC","HP Compaq  E7500","2010","7,35,000","35","");
INSERT INTO eie_faci VALUES("9","lab2","Virtual Instrumentation Lab","NI ELVIS-II Basic Bundle Software","-","2009","2,55,000","1","");
INSERT INTO eie_faci VALUES("10","lab2","Virtual Instrumentation Lab","UPS","-","2011","69,250","1","");
INSERT INTO eie_faci VALUES("11","lab2","Virtual Instrumentation Lab","Data Acquisition Hardware","779675-01 NI USB-6210","2011","1,69,848","4","");
INSERT INTO eie_faci VALUES("12","lab2","Virtual Instrumentation Lab","Data Acquisition Hardware","779351-01 NI USB-9401","2011","36,288","1","");
INSERT INTO eie_faci VALUES("13","lab2","Virtual Instrumentation Lab","Data Acquisition Hardware","779781-01 NI 9219","2011","86,940","1","");
INSERT INTO eie_faci VALUES("14","lab2","Virtual Instrumentation Lab","Data Acquisition Hardware","781398-01 NI 9223","2011","1,04,076","1","");
INSERT INTO eie_faci VALUES("15","lab2","Virtual Instrumentation Lab","Data Acquisition Hardware","779680-01 NI USB-9234","2011","1,34,694","1","");
INSERT INTO eie_faci VALUES("16","lab3","Computer Control of Processes","Programmable Logic Controller Trainer","VPLCT 03","2004","52,357.50","1","");
INSERT INTO eie_faci VALUES("17","lab3","Computer Control of Processes","PLC Real Time Application","VPAT 01","2004","14,443.69","1","");
INSERT INTO eie_faci VALUES("18","lab3","Computer Control of Processes","PLC Real Time Application Bottle Filling Level 1","VPRT 04","2004","22,468.35","1","");
INSERT INTO eie_faci VALUES("19","lab4","Transducer Lab","Angular Potentiometer -Transducer","-","1995","9,404","2","");
INSERT INTO eie_faci VALUES("20","","","","","","","","");
INSERT INTO eie_faci VALUES("21","lab4","Transducer Lab","Capacitive Sensor Module","-","1995","8,360","2","");
INSERT INTO eie_faci VALUES("22","lab4","Transducer Lab","Cantilever Beam with Strain Gauge","-","1995","7,210","1","");
INSERT INTO eie_faci VALUES("23","lab4","Transducer Lab","LVDT Experiment Module","-","1995","14,610","2","");
INSERT INTO eie_faci VALUES("24","lab4","Transducer Lab","Load Cell Experiment Module","-","1995","17,574","2","");
INSERT INTO eie_faci VALUES("25","lab4","Transducer Lab","Piezo Electric Transducer Experiment Module","-","1995","5,842","1","");
INSERT INTO eie_faci VALUES("26","lab4","Transducer Lab","Temperature Sensor Kit","-","1995","9,404","2","");
INSERT INTO eie_faci VALUES("27","lab4","Transducer Lab","Thermocouple Circuit","-","1995","5,890","2","");
INSERT INTO eie_faci VALUES("28","lab4","Transducer Lab","Hall Effect Transducer","-","2004","5,455","1","");
INSERT INTO eie_faci VALUES("29","lab4","Transducer Lab","Transducer Trainer: Capacitive","-","2014","16,500","1","");
INSERT INTO eie_faci VALUES("30","lab4","Transducer Lab","Transducer trainer: Pressure","-","2014","43,500","1","");
INSERT INTO eie_faci VALUES("31","lab3","Process Control Lab","Control Valve Testing Setup","-","1996","73,150","1","");
INSERT INTO eie_faci VALUES("32","lab3","Process Control Lab","Flow Control loop Trainer with 486 PC","-","1996","1,80,375","1","");
INSERT INTO eie_faci VALUES("33","lab3","Process Control Lab","Level Control system Trainer with 486 PC","-","1996","1,71,125","1","");
INSERT INTO eie_faci VALUES("34","lab3","Process Control Lab","Multiprocess Trainer ","-","2010","1,55,000","1","");
INSERT INTO eie_faci VALUES("35","lab3","Process Control Lab","Interacting and Non Interacting system","-","2010","18,000","1","");
INSERT INTO eie_faci VALUES("36","lab3","Process Control Lab","Pressure Control loop Trainer","-","1996","1,70,662","1","");
INSERT INTO eie_faci VALUES("37","lab3","Process Control Lab","Pressure Control Trainer","-","2010","57,371","1","");
INSERT INTO eie_faci VALUES("38","lab3","Process Control Lab","Temperature Control Loop setup with 486 PC","-","1996","1,85,925","1","");
INSERT INTO eie_faci VALUES("39","lab3","Process Control Lab","Temperature Control Trainer","-","2010","36,951","1","");
INSERT INTO eie_faci VALUES("40","lab4","Electrical and Electronics Measurement Lab","Scientific Oscilloscope","-","1995","1,03,145","6","");
INSERT INTO eie_faci VALUES("41","lab4","Electrical and Electronics Measurement Lab","Dual Regulated Power Supply","-","1995","31,800","6","");
INSERT INTO eie_faci VALUES("42","lab4","Electrical and Electronics Measurement Lab","Scientific Digital Storage Oscilloscope","-","1996","1,07,179","2","");
INSERT INTO eie_faci VALUES("43","lab4","Electrical and Electronics Measurement Lab","Wheatstone Bridge with inbuilt battery & galvanometer","-","1995","3,600","1","");
INSERT INTO eie_faci VALUES("44","lab4","Electrical and Electronics Measurement Lab","Schering Bridge","-","2013","3,500","1","");
INSERT INTO eie_faci VALUES("45","lab4","Electrical and Electronics Measurement Lab","Spectrum Analyser","HmM 5006","2013","83,657","1","");
INSERT INTO eie_faci VALUES("46","lab4","Electrical and Electronics Measurement Lab","LVDT Characteristic Kit","-","2013","9,500","1","");





CREATE TABLE `eie_org` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `eie_stud` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `stud_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `eng_bos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `eng_bos_mem` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `eng_dept` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `nba_cer3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `eng_faci` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `eng_org` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `eng_stud` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `stud_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `ins_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `meet` varchar(100) NOT NULL,
  `dis` varchar(1500) NOT NULL,
  `pic` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO ins_info VALUES("1","1987-1988","1998-02-05","sports day","This is to give the dis of the sports day","69058-img1.jpg");
INSERT INTO ins_info VALUES("2","1987-1988","1987-04-23","sports day","dgdgrbhtrhbwhwgtg","2191-aer.jpg");
INSERT INTO ins_info VALUES("7","1992-1993","1992-08-09","College Day","wergytrehyt","98731-arc.jpg");
INSERT INTO ins_info VALUES("8","2005-2006","2005-08-06","HOD Meeting","This the meeting to have the discussion of the content regarding the hod","3712-aer.jpg");
INSERT INTO ins_info VALUES("9","1987-1988","1988-04-30","College Day","This is the meeting for the college day","70547-aer.jpg");
INSERT INTO ins_info VALUES("10","1987-1988","1988-05-31","College Day","treyje56ye56yd","31362-aer.jpg");
INSERT INTO ins_info VALUES("11","1987-1988","1988-02-04","College Day","tfghjfryjf","90120-beeee.png");





CREATE TABLE `mat_bos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mat_bos_mem` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mat_dept` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `nba_cer3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mat_faci` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mat_org` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mat_stud` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `stud_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mba_bos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `pic` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mba_bos_mem` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `bid` int(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `desig` varchar(100) DEFAULT NULL,
  `adde` varchar(200) DEFAULT NULL,
  `cat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mba_dept` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `nba_cer3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mba_faci` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mba_org` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mba_stud` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `stud_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mca_bos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `n_bos` int(10) NOT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO mca_bos VALUES("1","1","2007-2008","2007-08-22","60391-mca_bos_1.jpg");
INSERT INTO mca_bos VALUES("2","2","2008-2009","2008-06-28","56205-mca_bos_2.jpg");
INSERT INTO mca_bos VALUES("3","3","2008-2009","2009-04-21","62135-mca_bos_3.jpg");





CREATE TABLE `mca_bos_mem` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

INSERT INTO mca_bos_mem VALUES("1","1","Prof. D Swamydoss","Professor","Professor & Head,
Department of MCA,
Adhiyamaan College of Engineering,
Hosur","Chairman");
INSERT INTO mca_bos_mem VALUES("2","1","Prof. M Lilly Florence ","Asst. Prof.","Department of MCA,
Adhiyamaan College of Engineering,
Hosur  ","Internal Member");
INSERT INTO mca_bos_mem VALUES("3","1","Mr. S Saravanan","Lecturer","Department of MCA,
Adhiyamaan College of Engineering,
Hosur  ","Internal Member");
INSERT INTO mca_bos_mem VALUES("4","1","Mr. N Sakthivel","Lecturer","Department of MCA,
Adhiyamaan College of Engineering,
Hosur  ","Internal Member");
INSERT INTO mca_bos_mem VALUES("5","1","Ms. V Sathya","Lecturer","Department of MCA,
Adhiyamaan College of Engineering,
Hosur  ","Internal Member");
INSERT INTO mca_bos_mem VALUES("6","1","Mr. V Alanthuraiyan ","Lecturer","Department of MCA,
Adhiyamaan College of Engineering,
Hosur  ","Internal Member");
INSERT INTO mca_bos_mem VALUES("7","1","Dr. Wahidha Banu","Professor","Prof. & Head,
Department of ECE,
Govt. College of Engineering,
Salem","Academic Council Nominee");
INSERT INTO mca_bos_mem VALUES("8","1","Dr. A Santha Kumaran","Professor","Prof. & Head,
Department of Statistic,
Salem Sowdeswari College,
Salem.","Academic Council Nominee");
INSERT INTO mca_bos_mem VALUES("9","1","Dr. K Thangavelu","Professor","Professor & Head,
Department of CS,
Periyar University,
Salem.","University Nominee");
INSERT INTO mca_bos_mem VALUES("10","1","Prof. Krishna Kumar","Professor","Professor & Head,
Sona College of Technology,
Salem","University Nominee");
INSERT INTO mca_bos_mem VALUES("13","2","Prof. D Swamydoss","Professor","Professor & Head,
Department of MCA,
Adhiyamaan College of Engineering,
Hosur","Chairman");
INSERT INTO mca_bos_mem VALUES("14","2","Prof. M Lilly Florence","Asst. Prof.","Department of MCA,
Adhiyamaan College of Engineering,
Hosur  ","Internal Member");
INSERT INTO mca_bos_mem VALUES("15","2","Mr. S Saravanan","Lecturer","Department of MCA,
Adhiyamaan College of Engineering,
Hosur  ","Internal Member");
INSERT INTO mca_bos_mem VALUES("16","2","Mr. N Sakthivel","Lecturer","Department of MCA,
Adhiyamaan College of Engineering,
Hosur  ","Internal Member");
INSERT INTO mca_bos_mem VALUES("17","2","Ms. V Sathya","Lecturer","Department of MCA,
Adhiyamaan College of Engineering,
Hosur  ","Internal Member");
INSERT INTO mca_bos_mem VALUES("18","2","Mr. V Alanthuraiyan","Lecturer","Department of MCA,
Adhiyamaan College of Engineering,
Hosur  ","Internal Member");
INSERT INTO mca_bos_mem VALUES("19","2","Dr. Wahidha Banu R S D","Professor","Professor & Head,
Department of ECE,
Government College of Engineering,
Salem","Academic Council Nominee");
INSERT INTO mca_bos_mem VALUES("20","2","Dr. A Santha Kumaran","Professor","Prof. & Head,
Department of Statistic,
Salem Sowdeswari College,
Salem.  ","Academic Council Nominee");
INSERT INTO mca_bos_mem VALUES("22","2","Prof. Krishna Kumar","Professor","Professor & Head,
Sona College of Technology,
Salem ","University Nominee");
INSERT INTO mca_bos_mem VALUES("23","2","Mr. P Ilavarasu","Lead Engineer","Fair Isacc,
Bangalore","Industry Representative");
INSERT INTO mca_bos_mem VALUES("24","3","Prof. D Swamydoss","Professor","Professor & Head,
Department of MCA,
Adhiyamaan College of Engineering,
Hosur","Chairman");
INSERT INTO mca_bos_mem VALUES("25","3","Prof. M Lilly Florence","Asst. Prof.","
Department of MCA,
Adhiyamaan College of Engineering,
Hosur  ","Internal Member");
INSERT INTO mca_bos_mem VALUES("26","3","Mr. S Saravanan","Lecturer","Department of MCA,
Adhiyamaan College of Engineering,
Hosur    ","Internal Member");
INSERT INTO mca_bos_mem VALUES("27","3","Mr. N Sakthivel","Lecturer","Department of MCA,
Adhiyamaan College of Engineering,
Hosur    ","Internal Member");
INSERT INTO mca_bos_mem VALUES("28","3","Ms. V Sathya","Lecturer","Department of MCA,
Adhiyamaan College of Engineering,
Hosur    ","Internal Member");
INSERT INTO mca_bos_mem VALUES("29","3","Mr. V Alanthuraiyan","Lecturer","Department of MCA,
Adhiyamaan College of Engineering,
Hosur    ","Internal Member");
INSERT INTO mca_bos_mem VALUES("30","3","Prof. Krishna Kumar","Dean","Department of MCA,
Sona College of Technology,
Salem","University Nominee");
INSERT INTO mca_bos_mem VALUES("31","3","Ms. G Vijayalakshmi","Software Engineer","Wipro GE,
Bangalore","Alumni Representative");





CREATE TABLE `mca_dept` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `nba_cer3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO mca_dept VALUES("1","1995-1996","","","","","60","University of Madras","","","","","","");
INSERT INTO mca_dept VALUES("2","1996-1997","","","","","60","Periyar Univesity","","","","","","");





CREATE TABLE `mca_faci` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mca_org` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mca_stud` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `stud_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mec_bos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mec_bos_mem` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mec_dept` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `nba_cer3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO mec_dept VALUES("1","1991-1992","60","AICTE","","","","","","","","","","");





CREATE TABLE `mec_faci` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mec_org` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mec_stud` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
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
  `stud_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

INSERT INTO mec_stud VALUES("1","2014-2015","I","1","B","ug","2014-2018","0","3","0","0","0","0","61","0","0","32","1","3","19","0","","6","0","","","","","","63","0","MEC-2014-2018-I-1-B-NEW-2014-2015.csv");
INSERT INTO mec_stud VALUES("2","1991-1992","II","1","B","ug","2015-2016","0","3","0","0","0","0","61","0","0","32","1","3","19","0","","6","0","","","","","","63","0","MEC-2015-2016-II-1-B-NEW-2015-2016.csv");
INSERT INTO mec_stud VALUES("3","2014-2015","I","2","B","ug","2014-2018","0","3","0","0","0","0","61","0","0","32","1","3","19","0","","6","0","","","","","","63","0","MEC-2014-2018-I-2-B-NEW-2014-2015.csv");
INSERT INTO mec_stud VALUES("4","2015-2016","II","3","B","ug","2014-2018","0","3","0","0","0","0","61","0","0","32","1","3","19","0","","6","0","","","","","","63","0","MEC-2014-2018-II-3-B-NEW-2014-2015.csv");
INSERT INTO mec_stud VALUES("5","2015-2016","II","4","B","ug","2014-2018","0","3","0","1","0","0","61","0","0","32","1","3","19","0","","6","0","","","","","","63","0","MEC-2014-2018-II-4-B-NEW-2015-2016.csv");
INSERT INTO mec_stud VALUES("6","2016-2017","III","5","B","ug","2014-2018","0","3","0","0","0","0","61","0","0","32","1","3","19","0","","6","0","","","","","","63","0","MEC-2014-2018-III-5-B-NEW-2015-2016.csv");
INSERT INTO mec_stud VALUES("7","2016-2017","III","6","B","ug","2014-2018","0","3","0","1","0","0","61","0","0","32","1","3","19","0","","6","0","","","","","","63","0","MEC-2014-2018-III-6-B-NEW-2016-2017.csv");
INSERT INTO mec_stud VALUES("8","2017-2018","IV","7","B","ug","2014-2018","0","3","0","0","0","0","61","0","0","32","1","3","19","0","","6","0","","","","","","63","0","MEC-2014-2018-IV-7-B-NEW-2017-2018.csv");
INSERT INTO mec_stud VALUES("9","2017-2018","IV","8","B","ug","2014-2018","0","3","0","0","0","0","61","0","0","32","1","3","19","0","","6","0","","","","","","63","0","MEC-2014-2018-IV-8-B-NEW-2017-2018.csv");
INSERT INTO mec_stud VALUES("10","2017-2018","I","1","A","ug","2017-2021","0","3","0","0","0","0","61","0","0","32","1","3","19","0","","6","0","","","","","","58","0","MEC-2017-2021-I-1-A-NEW-2016-2017.csv");
INSERT INTO mec_stud VALUES("11","2017-2018","I","2","A","ug","2017-2021","0","3","2","0","0","0","61","0","0","32","1","3","19","0","","6","0","","","","","","58","0","MEC-2017-2021-I-2-A-NEW-2017-2018.csv");
INSERT INTO mec_stud VALUES("13","2018-2019","II","3","A","ug","2017-2021","0","3","0","0","0","0","61","0","0","32","1","3","19","0","","6","0","","","","","","63","0","MEC-2017-2021-II-3-A-NEW-2017-2018 1SEM.csv");
INSERT INTO mec_stud VALUES("14","2018-2019","II","4","A","ug","2017-2021","0","3","0","0","0","0","61","0","0","32","1","3","19","0","","6","0","","","","","","63","0","MEC-2017-2021-II-4-A-NEW-2017-2018 1SEM.csv");
INSERT INTO mec_stud VALUES("15","2017-2018","I","1","C","ug","2017-2021","0","3","0","0","0","0","61","0","0","32","1","3","19","0","","6","0","","","","","","63","0","MEC-2017-2021-I-1-C-NEW-2017-2018 1SEM.csv");
INSERT INTO mec_stud VALUES("16","2017-2018","I","2","C","ug","2017-2021","0","3","0","0","0","0","61","0","0","32","1","3","19","0","","6","0","","","","","","63","0","MEC-2017-2021-I-2-C-NEW-2017-2018 1SEM.csv");
INSERT INTO mec_stud VALUES("17","2018-2019","II","3","C","ug","2017-2021","0","3","0","0","0","0","61","0","0","32","1","3","19","0","","6","0","","","","","","63","0","MEC-2017-2021-II-3-C-NEW-2017-2018 1SEM12.csv");
INSERT INTO mec_stud VALUES("18","2018-2019","IV","4","C","ug","2017-2021","0","3","0","0","0","0","61","0","0","32","1","3","19","0","","6","0","","","","","","63","0","MEC-2017-2021-IV-4-C-NEW-2017-2018 1SEM12.csv");
INSERT INTO mec_stud VALUES("19","2018-2019","II","4","C","ug","2017-2021","0","3","0","0","0","0","61","0","0","32","1","3","19","0","","6","0","","","","","","63","0","MEC-2017-2021-II-4-C-NEW-2017-2018 1SEM12.csv");
INSERT INTO mec_stud VALUES("20","2017-2018","I","1","B","ug","2017-2021","0","3","0","0","0","0","61","0","0","32","1","3","19","0","","6","0","","","","","","63","0","MEC-2017-2021-I-1-B-NEW-2017-18 B SEC.csv");
INSERT INTO mec_stud VALUES("21","2017-2018","I","2","B","ug","2017-2021","0","3","0","0","0","0","61","0","0","32","1","3","19","0","","6","0","","","","","","63","0","MEC-2017-2021-I-2-B-NEW-2017-18 B SEC.csv");
INSERT INTO mec_stud VALUES("22","2018-2019","II","3","B","ug","2017-2021","0","3","0","0","0","0","61","0","0","32","1","3","19","0","","6","0","","","","","","63","0","MEC-2017-2021-II-3-B-NEW-2017-18 B SEC.csv");
INSERT INTO mec_stud VALUES("23","2015-2016","I","1","A","ug","2015-2019","0","3","0","0","0","0","61","0","0","32","1","3","19","0","","6","0","","","","","","63","0","MEC-2015-2019-I-1-A-NEW-15-16 (1).csv");
INSERT INTO mec_stud VALUES("24","2015-2016","I","1","C","ug","2015-2019","65","0","0","0","0","0","65","0","0","28","4","2","23","0","","8","0","","","","","","65","0","MEC-2015-2019-I-1-C-NEW-sample_file 2015-2019.csv");
INSERT INTO mec_stud VALUES("25","2016-2017","I","1","A","ug","2016-2020","68","0","0","0","0","0","63","5","0","33","2","2","23","0","","8","0","","","","","","68","0","MEC-2016-2020-I-1-A-NEW-i name list.csv");
INSERT INTO mec_stud VALUES("26","2016-2017","I","2","A","ug","2016-2020","0","0","0","0","0","0","63","5","0","33","2","2","23","0","","8","0","","","","","","68","0","MEC-2016-2020-I-2-A-NEW-i name list.csv");
INSERT INTO mec_stud VALUES("27","2018-2019","I","1","B","ug","2019-2023","26","0","0","0","0","0","24","2","0","10","5","0","10","0","","1","0","","","","","","26","0","MEC-2019-2023-I-1-B-NEW-sample_file 2019-2023.csv");
INSERT INTO mec_stud VALUES("28","2018-2019","I","2","B","ug","2019-2023","0","0","0","0","0","0","24","2","0","10","5","0","10","0","","1","0","","","","","","26","0","MEC-2019-2023-I-2-B-NEW-sample_file 2019-2023.csv");
INSERT INTO mec_stud VALUES("29","2017-2018","II","3","A","ug","2016-2020","0","0","0","0","0","0","63","5","0","33","2","2","23","0","","8","0","","","","","","68","0","MEC-2016-2020-II-3-A-NEW-i name list.csv");
INSERT INTO mec_stud VALUES("30","2016-2017","I","1","C","ug","2016-2020","68","0","0","0","0","0","68","0","0","36","2","3","19","1","","7","0","","","","","","68","0","MEC-2016-2020-I-1-C-NEW-sample_file 2016-2017.csv");





CREATE TABLE `phy_bos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `phy_bos_mem` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `phy_dept` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `nba_cer3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `phy_faci` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `phy_org` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `phy_stud` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `stud_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `prof_soci` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name_sci` varchar(100) NOT NULL,
  `reg` varchar(50) NOT NULL,
  `val` varchar(20) NOT NULL,
  `name_in` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `u_name` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `cer` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO prof_soci VALUES("1","SIMPLY","3456","5 Years","Vijo","vijoad661@gmail.com","9952268249","vijo","1234","94507-paper-details.pdf");
INSERT INTO prof_soci VALUES("3","hello","1234","5 Years","ram","vijoad661@gmail.com","7894561230","hello","1234","0");
INSERT INTO prof_soci VALUES("4","CSI","I000158","June 2019","Dr. M. Lilly Florence","lilly_swamy@yahoo.co.in","9487819149","lilly_csi","csi123","0");
INSERT INTO prof_soci VALUES("5","hello","3456","5 Years","hello","vijoad661@gmail.com","9952268249","hellov","1234","7435-29008-adhar-card.pdf");





CREATE TABLE `soci_org` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `name_sci` varchar(200) DEFAULT NULL,
  `orgkey` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO soci_org VALUES("2","2013-2014","guest_l","web development","csi","1","0000-00-00","0000-00-00","2013-08-09","Mohan","50","state","52716-bg1.jpg","SIMPLY","1");
INSERT INTO soci_org VALUES("3","2010-2011","workshop","web development","csi","2","2010-10-21","2010-10-23","0000-00-00","Shiva","50","district","67175-bg1.jpg","SIMPLY","1");
INSERT INTO soci_org VALUES("4","2018-2019","seminar","IOT","csi","1","0000-00-00","0000-00-00","2019-04-20","Shiva","20","state","41931-bg.jpg","SIMPLY","1");
INSERT INTO soci_org VALUES("5","2018-2019","seminar","web development","csi","1","0000-00-00","0000-00-00","2019-04-18","Shiva","50","state","7806-bg1.jpg","SIMPLY","1");





CREATE TABLE `vmc_bos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

INSERT INTO vmc_bos VALUES("12","1","1987-1988","1988-09-05","17882-img1.jpg");
INSERT INTO vmc_bos VALUES("13","2","1990-1991","1990-04-05","62507-img1.jpg");
INSERT INTO vmc_bos VALUES("14","3","1989-1990","1990-08-05","46210-img1.jpg");
INSERT INTO vmc_bos VALUES("15","4","1995-1996","1995-10-28","36384-img1.jpg");
INSERT INTO vmc_bos VALUES("16","5","1992-1993","1992-02-05","16607-img2.jpg");
INSERT INTO vmc_bos VALUES("17","6","1991-1992","1998-04-05","20640-img1.jpg");
INSERT INTO vmc_bos VALUES("18","7","1995-1996","1989-05-08","73689-img1.jpg");
INSERT INTO vmc_bos VALUES("19","8","1991-1992","1991-04-05","43890-img1.jpg");
INSERT INTO vmc_bos VALUES("20","9","2002-2003","2002-02-05","3322-img1.jpg");
INSERT INTO vmc_bos VALUES("21","10","1996-1997","1996-09-05","27090-img1.jpg");
INSERT INTO vmc_bos VALUES("22","11","1995-1996","1995-09-08","3326-img1.jpg");
INSERT INTO vmc_bos VALUES("23","12","1991-1992","0000-00-00","84097-img1.jpg");
INSERT INTO vmc_bos VALUES("24","13","1993-1994","1999-08-05","54555-img1.jpg");
INSERT INTO vmc_bos VALUES("25","14","1992-1993","1999-05-05","94313-img1.jpg");
INSERT INTO vmc_bos VALUES("26","15","1991-1992","1991-08-05","92851-img1.jpg");
INSERT INTO vmc_bos VALUES("27","16","1987-1988","1995-02-05","53427-1096-512.png");
INSERT INTO vmc_bos VALUES("28","17","1987-1988","1999-06-09","39858-img1.jpg");
INSERT INTO vmc_bos VALUES("29","18","1987-1988","1999-08-05","35249-code.png");
INSERT INTO vmc_bos VALUES("30","19","1988-1989","1999-09-08","4162-code.png");
INSERT INTO vmc_bos VALUES("31","20","1990-1991","1999-06-05","56758-code.png");
INSERT INTO vmc_bos VALUES("32","21","1993-1994","1993-09-06","11803-code.png");
INSERT INTO vmc_bos VALUES("33","22","1987-1988","1987-09-08","64711-download.jpeg");
INSERT INTO vmc_bos VALUES("34","23","2007-2008","2007-10-02","87001-download.jpeg");





CREATE TABLE `vmc_bos_mem` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

INSERT INTO vmc_bos_mem VALUES("1","12","Ram","HOD","Add","Staff");
INSERT INTO vmc_bos_mem VALUES("2","13","Ram","HOD","Add","Staff");
INSERT INTO vmc_bos_mem VALUES("3","15","Ram","HOD","Add","Staff");
INSERT INTO vmc_bos_mem VALUES("4","15","sam","Faculty","Add","Staff");
INSERT INTO vmc_bos_mem VALUES("5","15","ramki","Faculty","Add","Staff");
INSERT INTO vmc_bos_mem VALUES("7","16","Ram","HOD","Add","Staff");
INSERT INTO vmc_bos_mem VALUES("8","17","Ram","HOD","Add","Staff");
INSERT INTO vmc_bos_mem VALUES("9","18","Ram","HOD","Add","Staff");
INSERT INTO vmc_bos_mem VALUES("10","19","Ram","HOD","","Staff");
INSERT INTO vmc_bos_mem VALUES("11","20","Ram","HOD","M1/42,New ASTC HUDCO, Hosur","Staff");
INSERT INTO vmc_bos_mem VALUES("12","21","Ram","HOD","HIG 352,TNHB,PHASE VII,THENDRAL NAGAR, HOSUR","Staff");
INSERT INTO vmc_bos_mem VALUES("13","22","Vjo","Faculty","M1/42,New ASTC HUDCO, Hosur","Staff");
INSERT INTO vmc_bos_mem VALUES("14","23","siva","HOD","2/612-30,MGR NAGAR, HOSUR","Staff");
INSERT INTO vmc_bos_mem VALUES("16","25","Ram","HOD","M1/42,New ASTC HUDCO, Hosur","Staff");
INSERT INTO vmc_bos_mem VALUES("17","15","Vjo","Faculty","M1/42,New ASTC HUDCO, Hosur","Staff");
INSERT INTO vmc_bos_mem VALUES("18","26","siva","HOD","2/612-30,MGR NAGAR, HOSUR","Staff");
INSERT INTO vmc_bos_mem VALUES("19","34","Ram","HOD","HIG 352,TNHB,PHASE VII,THENDRAL NAGAR, HOSUR","Staff");
INSERT INTO vmc_bos_mem VALUES("20","34","ramki","Faculty","123,the","Staff");
INSERT INTO vmc_bos_mem VALUES("21","13","ramki","Faculty","HIG 352,TNHB,PHASE VII,THENDRAL NAGAR, HOSUR","Staff");
INSERT INTO vmc_bos_mem VALUES("22","13","siva","Faculty","M1/42,New ASTC HUDCO, Hosur","Staff");
INSERT INTO vmc_bos_mem VALUES("23","13","sam","Faculty","2/612-30,MGR NAGAR, HOSUR","Staff");
INSERT INTO vmc_bos_mem VALUES("24","13","CSI","Faculty","s/o albart amman theru 2nd cross,kandhikuppam.","Staff");





CREATE TABLE `vmc_dept` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `nba_cer3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO vmc_dept VALUES("1","1995-1996","55","anna","","","","","","","","","","");





CREATE TABLE `vmc_faci` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO vmc_faci VALUES("1","","","","","","","","");
INSERT INTO vmc_faci VALUES("2","","","","","","","","");
INSERT INTO vmc_faci VALUES("3","","","","","","","","");
INSERT INTO vmc_faci VALUES("4","","","","","","","","");
INSERT INTO vmc_faci VALUES("5","lab1","Computer center 1","pc","hp","2015","10000","10","");
INSERT INTO vmc_faci VALUES("6","","","","","","","","");





CREATE TABLE `vmc_org` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO vmc_org VALUES("1","1975-1976","sdp","web development","csi","1","0000-00-00","0000-00-00","1975-10-12","Shiva","20","district","3886-76706-10th.pdf","1");
INSERT INTO vmc_org VALUES("2","1975-1976","sdp","web development","csi","1","0000-00-00","0000-00-00","1975-10-14","Shiva","50","national","45948-76706-10th.pdf","1");





CREATE TABLE `vmc_stud` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `stud_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `vv_bos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;






CREATE TABLE `vv_bos_mem` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;






CREATE TABLE `vv_dept` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `nba_cer3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO vv_dept VALUES("1","1996-1997","","","","","","","","","","","","");
INSERT INTO vv_dept VALUES("2","2006-2007","55","anna","76362-full-document-cources-completeionsystem-converted.pdf","","54","anna","36524-full-document-cources-completeionsystem-converted.pdf","14131-junior-co-operative-inspector-28-09-2013.pdf","","","","");
INSERT INTO vv_dept VALUES("3","1993-1994","","","","","","","","","","","","");
INSERT INTO vv_dept VALUES("4","2004-2005","55","Anna University","","","55","Anna University","","","","","","");
INSERT INTO vv_dept VALUES("5","2017-2018","","","","","","","","","","","","");
INSERT INTO vv_dept VALUES("6","2007-2008","54","Anna University","","","","","","","","","","");
INSERT INTO vv_dept VALUES("7","20011-2012","","","","","","","","","55","anna","97438-full-document-cources-completeionsystem-converted.pdf","");
INSERT INTO vv_dept VALUES("8","2010-2011","","","","","","","","","","","","");





CREATE TABLE `vv_faci` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `l_name` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO vv_faci VALUES("1","","","","","","","","");
INSERT INTO vv_faci VALUES("2","","","","","","","","");
INSERT INTO vv_faci VALUES("3","","","","","","","","");
INSERT INTO vv_faci VALUES("4","","","","","","","","");
INSERT INTO vv_faci VALUES("5","","","","","","","","");
INSERT INTO vv_faci VALUES("6","","","","","","","","");





CREATE TABLE `vv_org` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO vv_org VALUES("1","1991-1992","training","web development","csi","2","1992-05-05","1992-05-06","0000-00-00","Shiva","50","state","15312-1.jpg","1");
INSERT INTO vv_org VALUES("2","2006-2007","seminar","Online Marketing","Self","2","2006-10-06","2006-10-08","0000-00-00","Mr. Koteeswaran, Chennai","50","national","49687-lilly.jpg","1");
INSERT INTO vv_org VALUES("3","2016-2017","workshop","Photoshop","Self","5","2017-02-10","2017-02-11","0000-00-00","Mr. rajaraman","25","state","12974-sign-lilly1.jpg","1");
INSERT INTO vv_org VALUES("4","2018-2019","guest_l","web development","self","1","0000-00-00","0000-00-00","2019-01-12","Shiva","50","national","87661-250px-czech_passport_2006_mrz_data.jpg","1");
INSERT INTO vv_org VALUES("5","2017-2018","conference","web development","csi","1","0000-00-00","0000-00-00","2017-12-12","Shiva","50","national","82193-250px-czech_passport_2006_mrz_data.jpg","1");
INSERT INTO vv_org VALUES("6","2015-2016","guest_l","web development","csi","1","0000-00-00","0000-00-00","2015-12-12","Shiva","50","national","80979-250px-czech_passport_2006_mrz_data.jpg","1");
INSERT INTO vv_org VALUES("7","2014-2015","workshop","IOT","csi","1","0000-00-00","0000-00-00","2014-12-12","Mohan","12","national","46586-250px-czech_passport_2006_mrz_data.jpg","1");





CREATE TABLE `vv_stud` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `stud_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

INSERT INTO vv_stud VALUES("3","1992-1993","II","3","A","ug","1990-1994","2","1","1","0","0","0","10","11","0","10","5","","","","5","1","0","0","10","10","1","0","21","53559-72668-exported_file.csv","53559-72668-exported_file.csv");
INSERT INTO vv_stud VALUES("6","1995-1996","III","6","A","ug","1990-1994","2","2","0","2","0","0","10","10","0","10","5","","","","5","0","0","0","10","10","0","0","20","","52188-81541-contacts.csv");
INSERT INTO vv_stud VALUES("7","1996-1997","IV","7","A","ug","1990-1994","2","2","1","1","0","0","10","10","0","10","0","","","","5","5","0","0","10","10","0","0","20","15437-72668-exported_file.csv","15437-72668-exported_file.csv");
INSERT INTO vv_stud VALUES("8","1991-1992","IV","2","A","ug","1990-1994","2","2","2","0","0","0","10","10","0","10","5","","","","5","0","0","0","10","10","0","0","20","25999-81541-contacts.csv","23272-72668-exported_file.csv");
INSERT INTO vv_stud VALUES("9","1992-1993","IV","4","A","ug","1990-1994","1","2","1","1","0","0","10","10","0","5","5","","","","5","5","0","0","10","10","0","0","20","30721-81541-contacts.csv","88818-72668-exported_file.csv");
INSERT INTO vv_stud VALUES("10","1991-1992","IV","5","A","ug","1990-1994","1","1","1","0","0","0","10","10","0","5","5","","","","5","5","0","0","10","10","0","0","20","10719-81541-contacts.csv","43159-72668-exported_file.csv");
INSERT INTO vv_stud VALUES("12","2015-2016","I","1","A","ug","2015-2019","0","0","0","0","0","0","10","10","0","5","5","","","","5","5","0","0","10","5","5","0","20","0","54437-sample.csv");
INSERT INTO vv_stud VALUES("13","2015-2016","I","2","A","ug","2015-2019","2","2","0","1","0","1","10","10","0","5","5","5","5","0","","0","0","","","","","","20","74135-sample_file.csv","76328-sample_file-(14).csv");
INSERT INTO vv_stud VALUES("16","2016-2017","II","3","A","ug","2015-2019","2","2","0","0","1","1","10","10","0","5","0","5","5","0","","5","0","","","","","","20","28618-sample_file.csv","22242-sample_file-(14).csv");
INSERT INTO vv_stud VALUES("18","2007-2008","I","1","A","ug","2007-2011","0","0","0","0","0","0","10","10","0","5","5","5","5","0","","0","0","","","","","","20","0","vv-2007-2011-I-1-A-NEW-sample_file (15).csv");
INSERT INTO vv_stud VALUES("19","2007-2008","I","2","A","ug","2007-2011","0","2","1","1","0","0","9","9","0","6","6","6","0","0","","0","0","","","","","","18","vv-2007-2011-I-2-A-DROP-","vv-2007-2011-I-2-A-NEW-sample_file (14).csv");
INSERT INTO vv_stud VALUES("20","2013-2014","I","1","A","ug","2013-2017","0","0","0","0","0","0","10","10","0","5","5","5","5","0","","0","0","","","","","","20","0","vv-2013-2017-I-1-A-NEW-ss.csv");
INSERT INTO vv_stud VALUES("22","2006-2007","I","2","A","ug","2006-2010","2","4","1","1","1","1","9","9","0","5","5","5","3","0","","0","0","","","","","","18","vv-2006-2010-I-2-A-DROP-","vv-2006-2010-I-2-A-NEW-sample_file (15).csv");
INSERT INTO vv_stud VALUES("23","2006-2007","I","1","A","ug","2006-2010","22","2","1","1","0","0","10","10","0","5","5","4","4","1","","1","0","","","","","","20","vv-2006-2010-I-1-A-DROP-","vv-2006-2010-I-1-A-NEW-sample_file (15).csv");
INSERT INTO vv_stud VALUES("24","1993-1994","I","1","A","ug","1993-1997","20","2","1","1","0","0","9","9","0","9","9","0","0","0","","0","0","","","","","","18","vv-1993-1997-I-1-A-DROP-","vv-1993-1997-I-1-A-NEW-sample_file.csv");
INSERT INTO vv_stud VALUES("25","2017-2018","I","1","A","ug","2017-2021","61","0","0","0","0","0","61","0","0","10","10","10","10","10","","10","1","","","","","","61","0","vv-2017-2021-I-1-A-NEW-sample_file (7).csv");
INSERT INTO vv_stud VALUES("26","2017-2018","I","2","A","ug","2017-2021","1","3","1","1","1","0","58","1","0","10","10","10","10","8","","10","0","","","","","","59","vv-2017-2021-I-2-A-DROP-","vv-2017-2021-I-2-A-NEW-sample_file (12).csv");
INSERT INTO vv_stud VALUES("27","2018-2019","II","3","A","ug","2017-2021","0","1","1","0","0","0","28","30","0","10","10","10","10","8","","10","0","","","","","","58","vv-2017-2021-II-3-A-DROP-sample_file (14).csv","vv-2017-2021-II-3-A-NEW-sample_file (15).csv");



