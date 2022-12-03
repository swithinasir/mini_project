

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
  `app_order` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO aer_fac VALUES("S13AER003","ANAND","1988-07-19","31","male","anand.aero@adhiyamaan.in","9786292925","THANGARAJ.M","CHANDRA KALAI SELVI","y","","HINDU","SC","NATHAM","NATHAM","DINDUGUL","Tamil Nadu","India","624401","27/17,KAMARAJ NAGAR,
NATHAM,
DINDUGUL
PIN CODE-624401   ","27/17,KAMARAJ NAGAR,
NATHAM,
DINDUGUL
PIN CODE-624401   ","750083556339","624401","","B+Ve","2013-08-07","ASSISTANT PROFESSOR","0","AER","17553-556.jpg","29008-adhar-card.pdf","6339","","","","");
INSERT INTO aer_fac VALUES("S13AER005","P.Muthu samy","1987-02-21","32","male","muthuap69@gmail.com","9566649649","Periya samy.C","Mari","y","","Hindu","MBC","Palacode","Palacode","Dharmapuri","Tamil Nadu","India","636808","2/171., P.Gollahalli Poduthampatti-(Po) 
Palacode-(Tk)
Dharmapuri-(Dt)
Pin code-636808","2/171., P.Gollahalli Poduthampatti-(Po) 
Palacode-(Tk)
Dharmapuri-(Dt)
Pin code-636808","260248978306","BNDPM6018D","","B+Ve","2013-06-07","Assistant Professor","9843050849","AER","78198-muthusamy-photo,,,,.jpg","95766-muthusamy-adhar.pdf","8306","","","","");
INSERT INTO aer_fac VALUES("S17AER001","R.PRIYANKA","1994-12-07","25","female","priyankaragunathanae@gmail.com","9790509177","RAGUNATHAN.K","LATHA.P","n","","HINDU","BC","PERAMPATTU","VELLORE","VELLORE","Tamil Nadu","India","635652","1/33 PERUMAL KOVIL STREET,
PERAMPATTU(P.O),
TIRUPATTUR(TK),
VELLORE(DT)-635652  ","1/33 PERUMAL KOVIL STREET,
PERAMPATTU(P.O),
TIRUPATTUR(TK),
VELLORE(DT)-635652  ","571115289633","CYOPP9182N","","O+Ve","2017-08-16","ASSISTANT PROFESSOR","9486161677","AER","47562-img233.jpg","58721-img410.pdf","9633","","","","22084-appointment-order.pdf");
INSERT INTO aer_fac VALUES("S99AER004","ARIVUDAINAMBI","1972-06-14","47","male","nambiresearch@gmail.com","9894445988","JEYABALAN","CHANDRA","y","","HINDU","OC","HOSUR","KRISHNAGIRI","KRISHNAGIRI","Tamil Nadu","India","635109","No.22, II CROSS, VASTHUSALA RESIDENCY","No.22, II CROSS, VASTHUSALA RESIDENCY","911506456635","AIVPA1747P","","o+ve","1999-01-04","PROFESSOR","0","AER","79527-hod-photo.pdf","37721-hod-aadhar.pdf","6635","","","","");





CREATE TABLE `aer_fac_attorg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `aer_fac_bkjrn` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `glkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
  `ph2key` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO aer_fac_edu VALUES("S13AER003","D K G HR SEC SCHOOL","state","2005","74","9087-10th.pdf","1","D K G HR SEC SCHOOL","state","BIO MATHS","2007","72","19935-10th.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","MOHAMED SATHAK ENGINEERING COLLEGE ","ANNA UNIVERSITY , CHENNAI","BE ","AERONAUTICAL ENGINEERING","regular","2011","70","28509-b.e.pdf","1","","","","","","","","","","","","","","","","","","","THIAGARAJAR COLLEGE OF ENGINEERING ","ANNA UNIVERSITY, CHENNAI","ME","INDUSTRIAL ENGINEERING ","regular","2013","70","5256-m.e.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO aer_fac_edu VALUES("S13AER005","Sacret Heart Higher Secondary School","state","2004","77","10212-sslc.pdf","1","Government Boys Higher Secondary School","state","Bio Mathematics","2007","60","20171-hsc.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Southern Academy of Maritime Studies","Anna University- Chennai","BE ","Aeronautical Engineering","regular","2011","67","96658-be.pdf","1","","","","","","","","","","","","","","","","","","","Alagappa Chettiar College of Engineering & Technol","Anna University-Chennai","ME","Computer Aided Design","regular","2013","8","40201-m.e.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","Government College of Technology-Coimbatore","Anna University-Chennai","Aircraft Structures","Mechanical Engineering","regular","2015-01","","","Dr.M.Nataraj","68058-m.e.pdf","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO aer_fac_edu VALUES("S17AER001","GOVERNMENT HIGHER SECONDARY SCHOOL","state","2009","85","20966-sslc-x-certificate_prinyanka-r---front-001jep.pdf","1","SET HIGHER SECONDARY SCHOOL","state","BIO MATHS","2011","82","45902-hsc.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","SKP ENGINEERING COLLEGE","ANNA UNIVERSITY , CHENNAI","BE ","AERONAUTICAL ENGINEERING","regular","2015","80","39778-be.pdf","1","","","","","","","","","","","","","","","","","","","ANNA UNIVERSITY REGIONAL CAMPUS,TIRUNELVELI","ANNA UNIVERSITY, CHENNAI","ME","AERONAUTICAL ENGINEERING","regular","2017","83","29113-me.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO aer_fac_edu VALUES("S99AER004","st xaviers hr sec school","state","1987","75","35643-10th.pdf","1","sengunthar hr sec school","state","BIO MATHS","1989","71","15359-10th.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","R J J UAWSHEDPUR ","RANCHI UNIVERSITY","B.Sc ENGINEERING","METRALLURGICAL","regular","1996","76","6349-b.e.pdf","1","","","","","","","","","","","","","","","","","","","NIT TRICHY ","BHARATHIDASAN ","ME","MATERIALS SCIENCE ENGINEERING","regular","1998","74","98244-b.e.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","ANNA UNIVERSITY ","ANNA UNIVERSITY CHENNAI","AIRCRAFT MATERIALS ","MECHANICAL ENGINEERING","parttime","2007-01","2014-07","SOME STUDIES AND DENSIFICATION MECHANICAL PROPERTIES OF HSLA STEELS PRODUCED THROUGH POWDER METALLUR","Dr. G.RANGANATH","15357-ph.d.pdf","1","","","","","","","","","","","","","","","","","","","","","","");





CREATE TABLE `aer_fac_exp` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
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
  `otkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `aer_fac_funpat` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `patkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `aer_fac_glc` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `conkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `aer_fac_member` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `awakey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO aer_fac_member VALUES("1","S17AER001","2018-2019","IAENG","215518","1 YEAR","60290-iaeng_membership_215518.pdf","1","","","","","","","","");
INSERT INTO aer_fac_member VALUES("2","S17AER001","1987-1988","ISRD","M4150906108","LIFETIME","28701-convert-jpg-to-pdf.net_2019-04-24_06-44-07.pdf","1","","","","","","","","");
INSERT INTO aer_fac_member VALUES("3","S17AER001","2018-2019","ISRD","M4150906108","LIFETIME","8336-convert-jpg-to-pdf.net_2019-04-24_06-44-07.pdf","1","","","","","","","","");
INSERT INTO aer_fac_member VALUES("4","S17AER001","2018-2019","","","","","","","","","BEST FACULTY ADVISOR AWARD ","IEI","2018-02","47532-convert-jpg-to-pdf.net_2019-04-24_06-59-22.pdf","1");





CREATE TABLE `aer_fac_ot_qual` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `sid` varchar(10) NOT NULL,
  `name_qual` varchar(50) NOT NULL,
  `year_com` int(10) NOT NULL,
  `cer` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `aer_fac_resg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `j_sup` varchar(50) DEFAULT NULL,
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
  `app_order` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO arc_fac VALUES("S13ARC007","M.SRIMADHI","1991-03-17","28","female","twinsister1991@rediffmail.com","9445649902","MADHAVAKUMAR.S","MANGAYARKARASI.M","n","","HINDU","BC","HOSUR","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635109","	4-1, NEELAMEGA NAGAR, HOSUR   ","	4-1, NEELAMEGA NAGAR, HOSUR   ","527114138281","FFQPS0389L","","O+ve","2013-07-01","ASSISTANT PROFESSOR","0","ARC","25727-srimadhi-photo.jpg","77005-srimadhi-aadhar.pdf","8281","","","","2279-srimadhi-appointment-order.pdf");
INSERT INTO arc_fac VALUES("S13ARC008","M.SRINIDHI","1991-03-17","28","female","twinsister1991@gmail.com","9445639902","MADHAVAKUMAR.S","MANGAYARKARASI.M","n","","HINDU","BC","HOSUR","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635109","	4-1, NEELAMEGA NAGAR, HOSUR   ","	4-1, NEELAMEGA NAGAR, HOSUR   ","593930661247","FFWPS1360R","","O+ve","2013-07-01","ASSISTANT PROFESSOR","0","ARC","4121-srinidhi-photo.jpg","39146-srinidhi-aadhar.pdf","1247","","","","34478-srinidhi-appointment-order.pdf");
INSERT INTO arc_fac VALUES("S15ARC009","RATHAN V MOORTHY","1980-11-30","39","male","rathanvmoorthy2@gmail.com","9487122398","MOORTHY P","VANAROJA MOORTHY","y","","HINDU","BC","NATHAM","TIRUPATTUR","VELLORE","Tamil Nadu","India","635654","NO 180, ESWARAN KOVIL STREET, NATHAM VILLAGE & POST, TIRUPATTUR TK, VELLORE DT 635654  ","NO 180, ESWARAN KOVIL STREET, NATHAM VILLAGE & POST, TIRUPATTUR TK, VELLORE DT 635654     ","287534036265","AKHPR8793E","","B+","2015-01-07","ASSOCIATE PROFESSOR","6383080838","ARC","82075-rathan-(1).jpg","53394-rathan-v-moorthy-aadhar-front.pdf","6265","","","","36521-rathan-ao.pdf");
INSERT INTO arc_fac VALUES("S15ARC016","DEEPANRAJ KS","1992-08-08","27","male","deapn5555slm@gmail.com","9629947877","SEKAR K","RAJAMMAL G","n","","Hindu","MBC","SALEM","SALEM","SALEM","Tamil Nadu","India","636201","5/139 MARIYAMMAN KOIL STREET
KOLINGIPATTY
NALIKKALPATTY POST 
   ","5/139 MARIYAMMAN KOIL STREET
KOLINGIPATTY
NALIKKALPATTY POST 
   ","209706918386","BJUPD5288D","","o +ve","2015-06-06","ASSISTANT PROFESSOR","0","ARC","77977-8956.jpg","20579-deepan-aadhar-front.pdf","8386","","","","");
INSERT INTO arc_fac VALUES("S16ARC004","kamalaeaswari S","1980-06-11","39","female","skamalaeswari@gmail.com","9962307746","P.SUBBIAH","S.VELLAMMAL","y","","Hindu","SC","HOSUR","TIRUPPUR","KIRISHNAGIRI","Tamil Nadu","India","641664"," C 28 GROUND FLOOR,THALLY HUDCO,THALLY ROAD,HOSUR,KRISHNAGIRI 635109","194 Elango st, B.D.O Colony,C R P Layout,Palladam,641664
Tiruppur Dt  ","342683522876","BIPPK3948B","","O+","2017-01-18","ASSOCIATE PROFESSOR","9986030073","ARC","4240-ar.kamala.jpg","10344-aadhar-1-merged.pdf","2876","","","","2853-ao-kamala.pdf");
INSERT INTO arc_fac VALUES("S16ARC006","KRUTHIKA.M","1994-04-05","25","female","kirumohan05@gmail.com","8870739372","MOHAN KUMAR.S","RENUKA.M","n","","HINDU","BC","HOSUR","HOSUR","KIRISHNAGIRI","Tamil Nadu","India","635109","	5/444, 3rd MAIN, 3rd CROSS, DWARAKA NAGAR, HOSUR   ","	5/444, 3rd MAIN, 3rd CROSS, DWARAKA NAGAR, HOSUR   ","505048568515","ERKPK2904Q","","O+ve","2016-08-01","ASSISTANT PROFESSOR","0","ARC","11929-kruthika-photo.jpg","29245-aadhar-new.pdf","8515","","","","40007-kruthika-ace-appointment-order.pdf");
INSERT INTO arc_fac VALUES("S17ARC001","Kaviya A","1994-07-28","25","female","kaviyasokan@gmail.com","9500747505","Asokan S","Vijaya A","n","","Hindu","MBC","Thiruthuraipoondi","Thiruvarur","Thiruvarur","Tamil Nadu","India","610203","	1/82, Sivan kovil Street,Kunnoor post   ","	1/82, Sivan kovil Street,Kunnoor post   ","856155614813","CQEPK3734K","","B+","2017-09-06","Assistant Professor","9514381394","ARC","79912-kaviya.jpg","12369-aadhar.pdf","4813","","","","15165-convert-jpg-to-pdf.net_2019-04-05_08-21-13(1).pdf");
INSERT INTO arc_fac VALUES("S17ARC003","Pradipa Devi S R","1994-12-04","25","female","pradiparajaggopalan@gmail.com","9629097476","Rajaggopalan R S","Sujatha R","n","","Hindu","BC","Kattur","Trichy","Trichy","Tamil Nadu","India","620019","No-13, Vedhathiri Nagar,Kattur,Ellakudi  ","No-13, Vedhathiri Nagar,Kattur,Ellakudi  ","523955780491","DHZPP8369C","","O+","2017-09-01","Assistant Professor","9488058185","ARC","40157-pradipa-devi.jpg","26593-aadhar.pdf","0491","","","","25175-pradipa.pdf");
INSERT INTO arc_fac VALUES("S17ARC015","Ar. KAVIINMOZHI V","1991-08-23","28","female","kavinmozhi8@gmail.com","9789324808","VARATHARAJAN R","ANBUMOZHI T","y","","HINDU","KULALAR","HOSUR","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635109","PLOT NO. 39, III CROSS, THIRUPATHI NAGAR, HOSUR.   ","12, THIRUNEELAKANDAR ST,
KITCHIPALAYAM,
SALEM.	   ","285260887060","EZOPK6674R","","O+","2017-06-12","ASSISTANT PROFESSOR","0","ARC","24220-1133-min.jpg","19103-eaadhaar_2043886960028320151107143039_08062016184609_300922.pdf","7060","","","","");
INSERT INTO arc_fac VALUES("S18ARC005","S Sindhu","1994-03-14","25","female","sindhuarch1403@gmail.com","9003399862","A SEKAR","S INDRANI","y","","HINDU","MBC","karur","KARUR","KARUR","Tamil Nadu","India","639002","	28,universal garden,kothai nagar,   ","	28,universal garden,kothai nagar,   ","564812704275","FGRPS8887M","","A1B+v","2018-08-06","Assistant Professor","0","ARC","4351-si-005-min.jpg","34174-aadhar-sindhu.pdf","4275","","","","5804-ap_compressed.pdf");
INSERT INTO arc_fac VALUES("S18ARC010","Thatchayani.H","1994-02-25","25","female","thatchayani25@gmail.com","9944943446","D.H.Durai","R. Vaji Durai","n","","Hindu","BC","Thokarapalli","Krishnagiri","Krishnagiri","Tamil Nadu","India","635001","	   Durai Motors, No. 13, 3rd cross co-operative colony, krishnagiri","	 No. 76, Thokarapalli, Puligunta, Krishnagiri  ","839135560894","BOPPT2169R","","B Pos","2018-10-03","Asst. Professor","9489616486","ARC","95434-3622.jpg","33259-thatchu-adhar-card-1.pdf","Ganga-07du","","","","2107-20190416_120645.pdf");
INSERT INTO arc_fac VALUES("S18ARC011","M.D. Aristotle Blaraj","1989-10-04","30","male","ar.aristotlebalraj@gmail.com","9688128821","M.Devedass","Jaya Salomi","n","","Christian","BC","Hosur","Hosur","Krishnagiri","Tamil Nadu","India","635109","18/76, Nanjundeshwar nagar
Rky road,
1st cross,
Hosur - 635109","18/76, Nanjundeshwar nagar
Rky road,
1st cross,
Hosur - 635109","536577300988","BBYPA4022L","-","b+ve ","2018-06-11","Assistant Professor","9626164641","ARC","23687-aristotle--photo.jpg","63553-aris-aadhar.pdf","0988","","","","");
INSERT INTO arc_fac VALUES("S18ARC012","GAYATHRI S","1995-04-21","24","female","gayathri26.chels@gmail.com","9994125897","SEKAR T","CHITRA S","n","","HINDU","Kannadiyar","Thiruvarur","Thiruvarur","Thiruvarur","","India","610001","	   23, Karaikattu street,Thiruvarur","	   ","453196784339","BHLPG7678B","","B+","2018-06-18","ASSISTANT PROFESSOR","0","ARC","70110-s-gayathri.jpg","52984-gayathri-aadhar.pdf","4339","","","","");
INSERT INTO arc_fac VALUES("S18ARC013","Jayashree J","1992-11-30","27","female","jayashreejnaidu@gmail.com","8880595563","Jayakumar P D","Jamuna S","y","","Hindu","Naidu","Bangalore","Bangalore","Bangalore","Karnataka","India","560010","806 4th main 2nd stage Rajajinagar	   ","806 4th main 2nd stage Rajajinagar	   ","245137319845","BUGPJ5310K","","AB+","2018-10-03","Assistant Professor","0","ARC","45916-photo_2.jpeg","56086-aadhar-card_1.pdf","9845","","","","87457-appintment-order.pdf");
INSERT INTO arc_fac VALUES("S18ARC014","Soundarya","1994-09-18","25","female","soundaryasowmii@gmail.com","9597356282","P.Selva Raj","A. Siva Packiam","n","","Hindu","BC","Hosur","Krishnagiri","Krishnagiri","Tamil Nadu","India","635109","	   101/3, Nehru nagar 2nd main opposite to railway station hosur.","	   101/3, Nehru nagar 2nd main opposite to railway station hosur.","861831021442","JTKPS1351E","","O+ve","2018-06-18","Asst. Professor","9443465442","ARC","34171-s-sowndarya.jpg","51953-aadhar-min.pdf","1442","","","","");





CREATE TABLE `arc_fac_attorg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO arc_fac_attorg VALUES("1","S15ARC009","2009-2010","training","EARTHQUAKE RESISTANT DESIGN AND CONSTRUCTION, (NAT","5","2010-03-23","2010-03-27","0000-00-00","MINISTRY OF HOME AFFAIRS, NATIONAL DISASTER MANAGE","DEPARTMENT OF ARCHITECTURE, PERIYAR MANIAMMAI UNIV","national","73345-9.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO arc_fac_attorg VALUES("2","S15ARC009","2013-2014","workshop","CONSTRUCTION PLANNING, TECHNIQUES AND MANAGEMENT- ","1","0000-00-00","0000-00-00","2013-12-10","UGC AND CIVIL ENGINEERING DEPARTMENT,","COIMBATORE INSTITUTE OF TECHNOLOGY","national","73282-12.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO arc_fac_attorg VALUES("3","S15ARC009","2011-2012","seminar","INTEGRATED DEVELOPMENT OF SMALL AND MEDIUM TOWNS- ","10","2011-06-17","2011-06-27","0000-00-00","ALL INDIA COUNCIL FOR TECHNICAL EDUCATION, NEW DEL","DEPARTMENT OF CIVIL OF ENGINEERING, ADHIYAMAAN COL","national","20943-11.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO arc_fac_attorg VALUES("4","S15ARC009","2013-2014","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","seminar","The Entrepreneurship Development Programme ","COA -NIASA AND EXCEL COLLEGE OF ARCHITECTURE AND P","2","2014-03-21","2014-03-22","0000-00-00","6","130","national","7496-report-edp.jpg","1");





CREATE TABLE `arc_fac_bkjrn` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `glkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
  `ph2key` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO arc_fac_edu VALUES("S13ARC007","ST JOSEPH MATRICULATION HIGHER SECONDARY SCHOOL","state","2006","82","3829-srima-10th.pdf","1","ST JOSEPH MATRICULATION HIGHER SECONDARY SCHOOL","state","COMPUTER SCIENCE","2008","76","68185-srima-12th.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","ADHIYAMAAN COLLEGE OF ENGINEERING","ANNA UNIVERSITY","B.ARCH","ARCHITECTURE","regular","2013","87","14778-srima-ug.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO arc_fac_edu VALUES("S13ARC008","ST JOSEPH MATRICULATION HIGHER SECONDARY SCHOOL","state","2006","83","15312-srini-10th.pdf","1","ST JOSEPH MATRICULATION HIGHER SECONDARY SCHOOL","state","COMPUTER SCIENCE","2008","78","17194-srini-12th.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","ADHIYAMAAN COLLEGE OF ENGINEERING","ANNA UNIVERSITY","B.ARCH","ARCHITECTURE","regular","2013","87","47938-srini-ug.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO arc_fac_edu VALUES("S15ARC009","GOOD SHEPERD MATIRCULATION SCHOOL ERODE","state","1997","54","28101-rathan-10-mak-sheet.pdf","1","HOLY CROSS MATRICULATION HIGHER SECONDARY SCHOOL T","state","COMPUTER SCIENCE","2000","74","46467-rathan-vm+2-mark.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","ADHIYAMAAN COLLEGE OF ENGINEERING","ANNA UNIVERSITY","B.ARCH","ARCHITECTURE","regular","2006","69","81392-ratan-v-moorthy--ug-convocation.pdf","1","","","","","","","","","","","","","","","","","","","DR M G R UNIVERSITY","DR MG R UNIVERSITY CHENNAI","M Arch","LANDSCAPE ARCHITECTURE","regular","2016","7","22175-ratan-v-moorthy--pg-convocation.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO arc_fac_edu VALUES("S16ARC004","Govt Girls Hr Sec School ","state","1995","84","85716-10th.pdf","1","Kadri mills Hr sec School","state","Biology and maths","1997","71","88756-+2.pdf","1","Govt Polytechnic for women","State boar","DCE (Arch)","regular","2000","92","51242-diploma.pdf","1","","","","","","","","","","","","","","","","","Thiagarajar college of engg","Madurai Kamaraj University","B.arch","Architecture","regular","2008","64","62983-degree.pdf","1","","","","","","","","","","","","","","","","","","","Sathyabama University","Sathyabama University","M Arch","Architecture Building management","regular","2015","8","1736-m.arch.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO arc_fac_edu VALUES("S16ARC006","SRI VIJAY VIDYALAYA HOSUR","state","2009","92","68948-10-th.pdf","1","SRI VIJAY VIDYALAYA HOSUR","state","COMPUTER SCIENCE","2011","96","40092-12th-min.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Adhiyamaan college of engineering","Anna university","B.arch","Architecture","regular","2011","81","1316-degree-certificate.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO arc_fac_edu VALUES("S17ARC001","St theresas girls higher secondary school","state","2010","92","24845-10th.pdf","1","St theresas girls higher secondary school","state","Biology","2012","78","98778-12th.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Adhiyamaan college of engineering","Anna university","B.arch","Architecture","regular","2017","78","66698-degree.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO arc_fac_edu VALUES("S17ARC003","R S Krishnan Higher Secondary School","cbse","2010","92","32486-10th.pdf","1","R S Krishnan higher secondary school","cbse","Computer Science","2012","74","95379-12th.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Periyar Maniammai University","Periyar Maniammai University","B.arch","Architecture","regular","2017","91","77576-degree.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO arc_fac_edu VALUES("S17ARC015","sri sarada mat hr sec school","state","2007","78","54922-20150726072417_00003.pdf","1","cluny mat hr sec school","state","maths and computer science","2009","80","85057-20150726072417_00001.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","ADHIYAMAAN COLLEGE OF ENGINEERING","ANNA UNIVERSITY","B.ARCH","ARCHITECTURE","regular","2014","7","92520-20150726072417_00008.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO arc_fac_edu VALUES("S18ARC005","KVBOAMHSS","state","2009","65","74983-10-min.pdf","1","PAVBHSS","state","COMPUTER SCIENCE","2011","69","82996-12_compressed.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","M.A.M.SCHOOL OF ARCHITECTURE","Anna university","B.arch","Architecture","regular","2016","7","81851-ug-sindhu_compressed.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO arc_fac_edu VALUES("S18ARC010","Holy Angels Matriculation Higher Secondary School ","state","2009","79","75773-10th-mark-sheet-1.pdf","1","Holy Angels Matriculation School Salem","state","Computer Science","2011","76","45397-12th-mark-sheet-1.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Adhiyamaan College Of Engineering Hosur","Anna University Chennai","B.Arch","Architecture","regular","2016","8","57505-degree-certificate-ca_2017_82613.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO arc_fac_edu VALUES("S18ARC011","DonBosco Matriculation Higher secondary School Tir","state","2006","60","97323-10.pdf","1","Don Bosco Matriculation higher secondary school Ti","state","Computer Science","2008","55","10890-12.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Adhiyamaan college of engineering","Anna university","B.ARCH","ARCHITECTURE","regular","2014","64","25280-ugarchdeg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO arc_fac_edu VALUES("S18ARC012","Sri G R M Girls Hr sec school","state","2010","81","34311-10-th.pdf","1","Sri G R M Girls Hr Sec School","state","COMPUTER SCIENCE","2012","73","46182-12-th.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Prime college of architecture and planning","ANNA UNIVERSITY","B.ARCH","ARCHITECTURE","regular","2017","8","75589-gayathri-ug.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO arc_fac_edu VALUES("S18ARC013","SRI VANI GIRLS HIGH SCHOOL","state","2009","88","89980-marks-card-10.pdf","1","VVS PU COLLEGE FOR WOMEN","state","COMPUTER SCIENCE","2011","74","97289-marks-card-2-pu.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","M S RAMAIAH INSTITUTE OF TECHNOLOGY","VISVESVARAYA TECHNOLOGICAL UNIVERSITY","BACHELOR OF ARCHITECTURE","ARCHITECTURE","regular","2016","9","85144-marks-card-ug.pdf","1","","","","","","","","","","","","","","","","","","","RAMAIAH INSTITUTE OF TECHNOLOGY","RAMAIAH INSTITUTE OF TECHNOLOGY","MASTER OF ARCHITECTURE","LANDSCAPE ARCHITECTURE","regular","2018","8","68216-marks-card-pg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO arc_fac_edu VALUES("S18ARC014","Parimalam Matric Higher Secondary School","state","2010","91","15851-10-(1)-min.pdf","1","Sri Vijay Vidyalaya Matric Higher Secondary School","state","Computer Science","2012","92","67530-12-(1)-min.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Sona College Of Technology","Anna University Chennai","B.E Civil","Civil Engineering","regular","2016","8","8262-ug-min.pdf.pdf","1","","","","","","","","","","","","","","","","","","","Adhiyamaan College Of Technology","Anna University","Masters Of Structural Engineering","Structural Engineering","regular","2018","9","35479-course-pg-min.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");





CREATE TABLE `arc_fac_exp` (
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
  `otkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO arc_fac_exp VALUES("S15ARC009","SKANDHA  COLLEGE OF ARCHITECTURE","ASSO.PROF CUM HEAD","2012-06-29","2013-07-10","PERSONAL","EXCEL COLLEGE OF ARCHITECTURE AND PLANNING","ASS.PROF CUM HEAD","2013-07-29","2015-05-08","PERSONAL","ADHIYAMAAN COLLEGE OF ENGINEERING","ASST.PROFESSOR","2007-09-13","2012-05-21","PERSONAL","0000-00-00","0000-00-00","19325-2.pdf","3","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");





CREATE TABLE `arc_fac_funpat` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `patkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `arc_fac_glc` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `conkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `arc_fac_member` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `awakey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

INSERT INTO arc_fac_member VALUES("1","S16ARC004","2010-2011","Council of Architecture","CA/2010/46990","31.12.2021","43706-coa.pdf","1","","","","","","","","");
INSERT INTO arc_fac_member VALUES("3","S16ARC004","2017-2018","","","","","","CLASS TUTOR","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("4","S16ARC004","2018-2019","","","","","","CLASS TUTOR","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("5","S16ARC006","2016-2017","COUNCIL OF ARCHITECTURE","CA/2016/78639","31.12.2028","51944-kruthika-coa-resistration-certificate.pdf","1","CLASS TUTOR","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("6","S16ARC006","2017-2018","","","","","","CLASS TUTOR","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("7","S16ARC006","2018-2019","INDIAN INSTITUTE OF ARCHITECTS","A22911","05.04.2020","59850-kruthika-iia.pdf","1","CLASS TUTOR","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("8","S18ARC005","2017-2018","INDIAN INSTITUTE OF ARCHITECTS","22387","1 year","31338-new-doc-2019-04-08_2.pdf","1","","","","","","","","");
INSERT INTO arc_fac_member VALUES("9","S18ARC005","1987-1988","Council of Architecture","CA/2016/79898","1 year","10671-si-002_compressed.pdf","1","","","","","","","","");
INSERT INTO arc_fac_member VALUES("10","S13ARC008","2013-2014","","","","","","CLASS TUTOR","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("11","S13ARC008","2013-2014","","","","","","CAD LAB INCHARGE","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("12","S13ARC008","2014-2015","","","","","","CLASS TUTOR","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("13","S13ARC008","2014-2015","","","","","","CLIMATOLOGY LAB INCHARGE","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("14","S13ARC008","2015-2016","","","","","","CLASS TUTOR","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("15","S13ARC008","2016-2017","","","","","","CLASS TUTOR","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("16","S13ARC008","2017-2018","","","","","","CLASS TUTOR","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("17","S13ARC008","2018-2019","","","","","","CLASS TUTOR","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("18","S13ARC008","2013-2014","","","","","","CLIMATOLOGY LAB INCHARGE","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("19","S13ARC007","2013-2014","","","","","","CLASS TUTOR","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("20","S13ARC007","2013-2014","","","","","","CLIMATOLOGY LAB INCHARGE","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("21","S13ARC007","2014-2015","","","","","","CLASS TUTOR","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("22","S13ARC007","2014-2015","","","","","","CAD LAB INCHARGE","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("23","S13ARC007","2015-2016","","","","","","CLASS TUTOR","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("24","S13ARC007","2016-2017","","","","","","CLASS TUTOR","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("25","S13ARC007","2017-2018","","","","","","CLASS TUTOR","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("26","S13ARC007","2018-2019","","","","","","CLASS TUTOR","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("27","S18ARC005","2017-2018","","","","","","CLASS TUTOR","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("28","S18ARC005","2018-2019","","","","","","CLASS TUTOR","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("29","S18ARC005","2018-2019","","","","","","CAD LAB INCHARGE","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("30","S15ARC009","2007-2008","COUNCIL OF ARCHITECTURE","CA/2007/39389","2019","50116-rathan-v-moorthy-coa.pdf","1","","","","","","","","");
INSERT INTO arc_fac_member VALUES("31","S18ARC010","2018-2019","","","","","","Material Museum","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("32","S18ARC010","2018-2019","","","","","","Construction Yard","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("33","S18ARC010","2017-2018","Council Of Architecture","CA/2017/82613","31/12/2028","67571-img-20190416-wa0017.pdf","1","","","","","","","","");
INSERT INTO arc_fac_member VALUES("34","S18ARC010","2018-2019","Indian Institute Of Architects","22913","31/12/2019","70351-img-20190416-wa0015.pdf","1","","","","","","","","");
INSERT INTO arc_fac_member VALUES("35","S18ARC013","2018-2019","COUNCIL OF ARCHITECTURE","CA/2018/97412","DECEMBER 2019","48402-coa.pdf","1","","","","","","","","");
INSERT INTO arc_fac_member VALUES("36","S13ARC008","2018-2019","THE INDIAN INSTITUTE OF ARCHITECTS","22915","05.04.2020","21430-srinidhi.m-converted.pdf","1","","","","","","","","");
INSERT INTO arc_fac_member VALUES("37","S13ARC007","2018-2019","THE INDIAN INSTITUTE OF ARCHITECTS","22918","05.04.2020","19103-srimadhi.m-converted.pdf","1","","","","","","","","");
INSERT INTO arc_fac_member VALUES("38","S17ARC015","2017-2018","","","","","","CLASS TUTOR, ","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("39","S17ARC015","2018-2019","","","","","","CLASS TUTOR","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("40","S17ARC015","2018-2019","","","","","","disciplinary committee","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("41","S15ARC009","2013-2014","","","","","","","","","MERITS CERTIFICATE","EXCEL COLL","2014-04","10726-13.pdf","1");
INSERT INTO arc_fac_member VALUES("42","S15ARC009","2014-2015","","","","","","","",""," CERTIFICATE OF APPRECIATION","EXCEL COLL","2015-04","95756-14.pdf","1");
INSERT INTO arc_fac_member VALUES("43","S15ARC009","2018-2019","","","","","","DISCIPLINE COMMITTEE/ CLASS ADVISER","institute","1","","","","","");
INSERT INTO arc_fac_member VALUES("44","S15ARC009","2017-2018","","","","","","DISCIPLINE COMMITTEE/ CLASS ADVISER","department","1","","","","","");
INSERT INTO arc_fac_member VALUES("45","S15ARC009","2016-2017","","","","","","CLASS TUTOR","department","1","","","","","");





CREATE TABLE `arc_fac_ot_qual` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `intake1` int(5) DEFAULT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `name_qual` varchar(100) DEFAULT NULL,
  `year_com` int(10) DEFAULT NULL,
  `cer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `arc_fac_resg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `j_sup` varchar(50) DEFAULT NULL,
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
  `app_order` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO bio_fac VALUES("S05BIO004","N.SARAVANAN","1981-07-11","38","male","natarajsaravanan@gmail.com","9486931081","S.M.NATARAJAN","N.VASANTHA","y","","HINDHU","VANNIYAR","Hosur","Hosur","KRISHNAGIRI","Tamil Nadu","India","635109","Plot No:8, Alnazeem Manzil, Eswar Naga	   ","Plot No:8, Alnazeem Manzil, Eswar Naga	   ","4705","BEYPS4105R","","A1+VE","2005-12-06","ASSOCIATE PROFESSOR","0","BIO","46049-n.-saravanan.jpg","2952-adhar-ns.pdf","2 2672","","","","");
INSERT INTO bio_fac VALUES("S05BIO008","N.G.RAMESH BABU","1960-05-05","59","male","hod_bt@adhiyamaan.ac.in","9487819135","N.R. Govinda Setty","N.R. G Setty","y","","HINDHU","OC","61, 6th Cross, Paj Layout, Hulimavu, Bannerghatta ","Bengaluru","Bengaluru","Karnataka","India","560076","61, 6th Cross, Paj Layout, Hulimavu, Bannerghatta Road	   ","61, 6th Cross, Paj Layout, Hulimavu, Bannerghatta Road	   ","8166","ABGPR1635M","","O+VE","2005-07-01","PROFESSOR","9845697770","BIO","83453-dr.-n.-g.-ramesh-babu.jpg","87124-ng-a0001.pdf","5 6576","","","","");
INSERT INTO bio_fac VALUES("S06BIO003","V MANIVASAGAN","1982-03-07","36","male","manivasaganv@gmail.com","9865373358","N. Veerasamy","V.VASANTHA","y","","HINDHU","MBC","Udayarpalayam","Ariyalur","Ariyalur","Tamil Nadu","India","621806","Nallasiriyar Illam, West Elaiyur	   ","Nallasiriyar Illam, West Elaiyur	   ","3470","ASVPM2420M","","O+ve","2006-06-07","PROFESSOR","8300880591","BIO","57903-v.-manivasagan.jpg","52458-dr-manivasagan-aathar-card.pdf","2 2517","","","","");
INSERT INTO bio_fac VALUES("S17BIO005","K.SARANYA","1986-01-03","33","female","ksaranya31@gmail.com","9894455091","A.V.KRISHNAMOORTHY","R.SUMATHI","y","","HINDHU","MBC","Ambattur O.T","Chennai","Chennai","Tamil Nadu","India","600053","	  No.7, Pinto Street, Ram Nagar ","	  No.7, Pinto Street, Ram Nagar ","5878","DAZPS2707G","","B+VE","2017-08-16","ASSOCIATE PROFESSOR","0","BIO","5340-k.-saranya.jpg","17053-aadhaar--saranya.pdf","4 2712","","","","");
INSERT INTO bio_fac VALUES("S18BIO001","S.KAVITHA","1991-12-12","28","male","kavitha.biotechnology@gmail.com","7845355761","C.SAMPATH","R.SUNDARI","n","","HINDHU","VANNIYAR","BARUGUR","KRISHNAGIRI","KRISHNAGIRI","Tamil Nadu","India","635104","	60/30, SANJEEVI CHETTI STREET   ","	60/30, SANJEEVI CHETTI STREET   ","319167389946","FNRPS5470P","","O+ve","2018-12-06","ASSISTANT PROFESSOR","0","BIO","69940-3706.jpg","59361-aadhar.pdf","1234","","","","74681-appointment-order-adhiyaman.pdf");
INSERT INTO bio_fac VALUES("S18BIO006","N.NANDAKUMAR","1991-02-17","28","male","mavericknandy@gmail.com","7845659621","S.ARUMUGAM","A.PREMALATHA","n","","HINDHU","MBC","Virupatchipuram","Vellore","Vellore","Tamil Nadu","India","632002","No.267, Gandhi Nagar, 15th Street	   ","No.267, Gandhi Nagar, 15th Street	   ","9872","AYUPN9739P","","O+VE","2018-07-02","ASSISTANT PROFESSOR","0","BIO","93327-a.nandakumar.jpg","63319-nandakumar.pdf","1 8340","","","","");
INSERT INTO bio_fac VALUES("S18BIO007","D.KUBENDRAN","1992-06-07","27","male","deva.kubedad@gmail.com","8124681954","K.DEVARAJ","D.VEDIYAMMAL","n","","HINDHU","VANNIYAR","Pappiredipatti","Dharmapuri","Dharmapuri","Tamil Nadu","India","636905","	1/149, Adhikarapatti (P.O.)   ","	1/149, Adhikarapatti (P.O.)   ","9785","HIEPK2948J","","B+VE","2018-06-18","ASSISTANT PROFESSOR","0","BIO","13607-d.-kubendran.jpeg","28015-kubendran.pdf","6 9850","","","","");
INSERT INTO bio_fac VALUES("S18BIO009","KUBENDRAN","1992-06-07","27","male","devakubendran@gmail.com","8124681954","DEVARAJ","VEDIYAMMAL","n","","Hindu","MBC","Adhikarapatti","DHARMAPURI","Dharmapuri","Tamil Nadu","India","636905","1/149, adhikarapatti
pappiredipatti
dharmapuri	   ","	   ","978544869850","HIEPK2948J","","B+ve","2018-07-08","ASSISTANT PROFESSOR","0","BIO","12064-4099.jpeg","2307-convert-jpg-to-pdf.net_2019-04-05_06-27-28.pdf","9850","","","","72884-appoinment.pdf");





CREATE TABLE `bio_fac_attorg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO bio_fac_attorg VALUES("1","S05BIO004","2013-2014","fdp","CORPORATE INFORMATION SECURTY AND POLICIES FOR CHE","5","2013-12-17","2013-12-21","0000-00-00","COIMBATORE INSTITUTE OF TECHNOLOGY","COIMBATORE","national","71444-skm_554e19030817282.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bio_fac_attorg VALUES("2","S05BIO004","2015-2016","fdp","separation process in environemntal applications","3","2015-06-24","2015-06-26","0000-00-00","SSN College of Engineering","chennai","national","30799-skm_554e19030817284.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bio_fac_attorg VALUES("3","S05BIO004","2016-2017","fdp","Modern separation process in environmental applica","8","2016-12-12","2016-12-19","0000-00-00","SSN College of Engineering","chennai","national","79804-skm_554e19030817291.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bio_fac_attorg VALUES("4","S05BIO004","2013-2014","workshop","Role of intellectual property rights in Biotechnol","2","2014-01-10","2014-01-11","0000-00-00","Arunai Engineering college","Thiruvannamalai","national","89575-skm_554e19030817280.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");





CREATE TABLE `bio_fac_bkjrn` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `glkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

INSERT INTO bio_fac_bkjrn VALUES("1","S05BIO004","","","","","","","","","","","","","","","","","","","","https://scholar.google.co.in/citations?user=i6wEaL","1");
INSERT INTO bio_fac_bkjrn VALUES("2","S05BIO004","2007-2008","","","","","","","","1.	“Biodegradation of Phenol and toluene using Bacillus sp., Pseudomonas sp., Staphylococcus sp., ","Advanced Biotech"," "," ","0973-0109","others"," "," ","31100-1.-34-biodegradation.pdf","0","1","","");
INSERT INTO bio_fac_bkjrn VALUES("3","S05BIO004","2011-2012","","","","","","","","1.	“Development of new method for diagnosis of Group B Coxsackie genome by reverse transcription l","Indian Journal of Medical Microbiology","29","2","0255-0857","others"," "," ","13792-1.-indianjmedmicrobiol292110-8168408_224124.pdf","0","1","","");
INSERT INTO bio_fac_bkjrn VALUES("4","S05BIO004","2012-2013","","","","","","","","1.	“Biosorption of Nickel on Biobeads and Biofilm using Immobilized Escherichia coli”","European Journal of Scientific Research","81","2","1450202X"," "," "," ","98554-1.-ejsr_81_2_10.pdf","0","1","","");
INSERT INTO bio_fac_bkjrn VALUES("5","S05BIO004","2013-2014","","","","","","","","“Molecular docking study ON NS5B polymerase of hepatitis c virus by screening of volatile compound","International Journal of Pharmacy & Life Sciences","4"," "," 0975 - 1491","others"," "," ","39280-1.-balavignesh.pdf","0","1","","");
INSERT INTO bio_fac_bkjrn VALUES("6","S05BIO004","2013-2014","","","","","","","","2.	‘Biosorption of textile dye using immobilized bacterial (Pseudomonas aeruginosa) And fungal (Ph","American Journal of Environmental Science","9","4","1553-345X","others"," "," ","94101-2.-pdf_ajessp.2013.377.387.pdf","0","1","","");
INSERT INTO bio_fac_bkjrn VALUES("7","S05BIO004","2013-2014","","","","","","","","3.	“A Study of Production and Partial Purification of Lipase Enzyme from Milk”","International Journal of Engineering Research & Te","3","4","0974 –3154","others"," "," ","37011-3.-v3i4-ijertv3is040033.pdf","0","1","","");
INSERT INTO bio_fac_bkjrn VALUES("8","S05BIO004","2013-2014","","","","","","","","4.	“Production, Optimization and Characterization of Nattokinase from Bacillus subtilis REVS12 Iso","International Journal of Scientific & Engineering ","5","4","2229-5518","others"," "," ","7449-4.-production-optimization-and-characterization-of-nattokinase.pdf","0","1","","");
INSERT INTO bio_fac_bkjrn VALUES("9","S05BIO004","2015-2016","","","","","","","","1.	“Chemical analysis of agro-pollutant coir pith- a byproduct of coir industry”","International Journal of Environmental & Agricultu","2","11","2454-1850","others"," "," ","64902-1.-ijoear-oct-2016-15.pdf","0","1","","");
INSERT INTO bio_fac_bkjrn VALUES("10","S05BIO004","2016-2017","","","","","","","","1.	“Biodegradation of nicotine obtained from tobacco powder using Pseudomonas aeruginosa sp.”","International Engineering Research and Management","4","1"," 2349-  2058","others"," "," ","95207-1.-ijerm0401036.pdf","0","1","","");
INSERT INTO bio_fac_bkjrn VALUES("11","S05BIO004","2016-2017","","","","","","","","2.	Biosynthesis of tamoxifen coated chitosan biopolymer, its characterization, DNA damage study and ","International Journal of Advanced Research in Biol","4","2","2348-8069","others"," "," ","93082-2.-ijarbs21.pdf","0","1","","");
INSERT INTO bio_fac_bkjrn VALUES("12","S05BIO004","2016-2017","","","","","","","","Molecular study on Multidrug Resistant (MDR) pathogen Pseudomonas sp. strain ts_397 isolated from eg","World journal of pharmacy and pharmaceutical scien","6","3","2278-4357","others"," "," ","21333-3.-article_wjpps_1488628303.pdf","0","1","","");
INSERT INTO bio_fac_bkjrn VALUES("13","S05BIO004","2016-2017","","","","","","","","4.	“Biosynthesis of zinc oxide nanoparticles from Glycyrrhiza glabra Linn for antimicrobial, antic","World journal of pharmacy and pharmaceutical scien","6","4","2278-4357","others"," "," ","83203-4.-article_wjpps_1490958602.pdf","0","1","","");
INSERT INTO bio_fac_bkjrn VALUES("14","S05BIO004","2016-2017","","","","","","","","5.	“Treatment of hyperpigmentation using Terminalia Catappa with zebrafish as a model” ","World journal of pharmacy and pharmaceutical scien","6","3","2278-4357","others"," "," ","61623-5.-article_wjpps_1490959750.pdf","0","1","","");
INSERT INTO bio_fac_bkjrn VALUES("15","S05BIO004","2017-2018","","","","","","","","1.	“Outer Membrane Protein of Vibrio Species Isolated from Marine Fishes” ","International Research Journal of Engineering and ","4","11","2395-0072","others"," "," ","63240-1.-irjet-v4i11199.pdf","0","1","","");
INSERT INTO bio_fac_bkjrn VALUES("16","S05BIO004","2017-2018","","","","","","","","“Study of anti-diabetic activity of Artesunate as an agonist to GLP-1 by molecular docking and in-",", International Journal of current research","10","3","0975-833x","others"," "," ","97730-2.-29045.pdf","0","1","","");
INSERT INTO bio_fac_bkjrn VALUES("17","S05BIO004","2017-2018","","","","","","","","Identification of multi drug resistant gene in E.coli","World journal of pharmacy and pharmaceutical scien","7","12","2278-4357","others"," "," ","19770-3.-article_wjpps_1543907513.pdf","0","1","","");
INSERT INTO bio_fac_bkjrn VALUES("18","S05BIO004","2018-2019","","","","","","","","1.	“Comparative study on pharmacological activities of essential oils of selected aroma plants","World journal of pharmacy and pharmaceutical scien","8","1","2278-4357","others"," "," ","30118-1.-article_wjpps_1546241190.pdf","0","1","","");
INSERT INTO bio_fac_bkjrn VALUES("19","S05BIO004","2018-2019","","","","","","","","2.	“In vitro phytochemical and antioxidant activity of Solanum muricatum in hydro alcohol extract�","World journal of pharmacy and pharmaceutical scien","8","1","2278-4357","others"," "," ","21047-2.-article_wjpps_1546241248.pdf","0","1","","");
INSERT INTO bio_fac_bkjrn VALUES("20","S05BIO004","2018-2019","","","","","","","","A study on synthesis of silver nanoparticles and antibacterial activity of Acalypha hispida”","World journal of pharmacy and pharmaceutical scien","8","1","2278-4357","others"," "," ","56855-3.-article_wjpps_1546241525.pdf","0","1","","");
INSERT INTO bio_fac_bkjrn VALUES("21","S18BIO009","1987-1988","Journal of Cleaner P","Study on Effectiveness of Activated Calcium Oxide ","https://doi.org/10.1","2019-03","Elsevier","Journal, Research Article","1","","","","","","","","","","","","","");
INSERT INTO bio_fac_bkjrn VALUES("22","S18BIO009","","","","","","","","","","","","","","","","","","","","https://scholar.google.com/citations?user=2fyXXawA","1");
INSERT INTO bio_fac_bkjrn VALUES("23","S17BIO005","2018-2019","","","","","","","","Phytochemical Screening And Antimicrobial Activity Of Fresh And Shade Dried Leaves Of Azadirachta In","International Journal of Innovations in Engineerin","11","3","2319-1058","thomson reuters","http://dx.doi.org/10.21172/ijiet.113.05","0","71022-paper-publication.pdf","1","1","","");
INSERT INTO bio_fac_bkjrn VALUES("24","S17BIO005","2018-2019","bio energy, Environm","extraction, optimization and invitro antidiabetic ","9788192642567","2019-01","Anna Research foundation","book  chapter","1","","","","","","","","","","","","","");
INSERT INTO bio_fac_bkjrn VALUES("25","S06BIO003","2018-2019","IEI Technical Volume","genetic diversity analysis of staphylococcus aureu","9788193840498","2018-12","IE india","iei","1","","","","","","","","","","","","","");
INSERT INTO bio_fac_bkjrn VALUES("26","S18BIO001","2016-2017","","","","","","","","Statistical Optimization of Cellulase Production from Cassava Stem by Cellulomonas Fimi MTCC24 using","Journal of Pharmaceutical, Chemical and Biological","4","3","2348-7658","ugc","https://www.jpcbs.info/2016_4_3_07_Kavitha.pdf","1","36446-2016_4_3_07_kavitha.pdf","1","1","","");
INSERT INTO bio_fac_bkjrn VALUES("27","S18BIO001","2017-2018","","","","","","","","Optimization of Process Parameters for Efficient Bioconversion of Thermo-chemo Pretreated Manihot es","Waste and Biomass Valorization","4","3","1877-2641","sci","https://doi.org/10.1007/s12649-018-0244-7","03","26062-selvakumar_et_al-2018-waste_and_biomass_valorization.pdf","2","1","","");
INSERT INTO bio_fac_bkjrn VALUES("28","S18BIO001","","","","","","","","","","","","","","","","","","","","https://scholar.google.co.in/citations?hl=en&user=","1");
INSERT INTO bio_fac_bkjrn VALUES("29","S18BIO001","2018-2019","Approaches to Enhanc","An Insight into Fungal Cellulases and Their Indust","978-3-030-14726-6","2019-04","Springer Nature Switzerland AG 2019","Fungal Biology","1","","","","","","","","","","","","","");
INSERT INTO bio_fac_bkjrn VALUES("30","S05BIO008","1987-1988","","","","","","","","Prevalence of rinderpest antibodies in sheep and goats in southern India.","Veterinary Record (U.K)","123","23","2042-7670","ugc","https://www.ncbi.nlm.nih.gov/pubmed/3212917","6","16548-1.pdf","2","1","","");
INSERT INTO bio_fac_bkjrn VALUES("31","S05BIO008","1987-1988","","","","","","","","Avidin Biotin micro ELISA for the estimation of rinderpest antibodies in sheep","Indian Journal of Comparative Microbiology, Immuno","9","1","0974-0147","naas","http://medind.nic.in/imvw/imvw20950.html","6","34141-2.pdf","6","1","","");





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
  `ph2key` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO bio_fac_edu VALUES("S05BIO004","ST. MARYS MARTICULATION SCHOOL","state","1997","67","1754-10.pdf","1","JKK RANGAMMAL MATRIC HR SEC SCHOOL","state","MATHS - COMPUTER","1999","86","89605-12.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","SCHOOL OF ENGINEERING & TECHNOLOGY","BHARATHIDASAN UNIVERSITY","B.TECH","BIOTECHNOLOGY","regular","2003","69","86389-ug.pdf","1","","","","","","","","","","","","","","","","","","","FACULTY OF ENGINEERING AND TECHNOLOGY","ANNAMALAI UNIVERSITY","M.TECH","INDUSTRIAL BIOTECHNOLOGY","regular","2005","8","33476-pg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","COIMBATORE OF INSTITUTE OF TECHNOLOGY","ANNA UNIVERSITY CHENNAI","BIOTECHNOLOGY","TECHNOLOGY","parttime","2008","2014","INVESTIGATION OF INTEGRATION OF BIO AND PHYSICOCHEMICAL PROCESSES FOR THE TREATMENT OF EFFLUENT CONT","DR. T. KANNADASAN","13098-ph-d.pdf","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO bio_fac_edu VALUES("S17BIO005","VDS Jain HSS School","state","2001","78","37818-10th.pdf","1","Ethiraj HSS School","state","Maths,Physiscs, Chemisry, Biology","2003","70","16193-12th.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","GGR College of Engineering","ANNA UNIVERSITY","B.Tech","Industrial Biotechnology","regular","2007","81","35848-b.tech-degree.pdf","1","","","","","","","","","","","","","","","","","","","Rajalakshmi Engineering College","ANNA UNIVERSITY","M.Tech","Biotechnology","regular","2009","85","35171-m.tech-degree.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","Coimbatore Institute of Technology","ANNA UNIVERSITY","Technology","Biochemical Engineering","regular","2013-06","2016-01","Reducation of Cr(VI) to Cr(III) in industrial effluent using immobilized cells, enzyme, monocotyledo","Dr. M.Thirumarimurugan","93291-phd.pdf","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO bio_fac_edu VALUES("S18BIO001","St Antonys HSS","state","2007","91","14260-sslc_compressed.pdf","1","St Antonys HSS","state","Maths Biology","2009","86","5066-hsc_compressed.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Vivekanandha College of Engineering for Women","Anna University","B.Tech","Biotechnology","regular","2013","8","28650-b.tech-degree_compressed.pdf","1","","","","","","","","","","","","","","","","","","","Kumaraguru College of Technology","Anna University","M.Tech","Biotechnology","regular","2015","8","39971-m.tech-degree_compressed.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO bio_fac_edu VALUES("S18BIO009","Govt her. sec school,","state","2007","80","71348-10th.pdf","1","Sri vijay vidhayalaya metric her sec school","state","Maths biology","2009","92","28440-12th.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Vel Tech High Tech","Anna University","B.Tech","Biotechnology","regular","2013","78","56040-ug.pdf","1","","","","","","","","","","","","","","","","","","","AC Tech","Anna University","M.Tech","Environmental Science and Technology","regular","2015","81","13727-pg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");





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
  `clg3` varchar(50) NOT NULL,
  `clgdesg3` varchar(50) NOT NULL,
  `clgdoj3` date NOT NULL,
  `clgdor3` date NOT NULL,
  `clgreason3` varchar(100) NOT NULL,
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
  `otkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO bio_fac_exp VALUES("S05BIO008","R.V. College of Engineering","Assistant Professor","2003-11-03","2005-07-15","Got offer in ACE as Professor and Head","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","0000-00-00","0000-00-00","15636-new-doc-63_2.pdf","1","","","","","","","","","","","","","","","Institute of Animal Health and Veterinary Biologic","Scientist 3","Vaccine production","1989-09-29","2003-10-31","Health issues","35805-new-doc-63_1.pdf","1","","","","","","","","");
INSERT INTO bio_fac_exp VALUES("S18BIO001","VIVEKANANDHA COLLEGE OF ENGINEERING FOR WOMEN","ASSISTANT PROFESSOR","2016-06-17","2017-12-06","HEALTH ISSUE","SELVAM COLLEGE OF TECHNOLOGY","ASSISTANT PROFESSOR","2016-01-18","2016-05-31","HEALTH ISSUE","VIVEKANANDHA COLLEGE OF ENGINEERING FOR WOMEN","ASSISTANT PROFESSOR","2016-06-17","2017-06-14","HEALTH ISSUE","0000-00-00","0000-00-00","51719-experience-certificate-vcew.pdf","3","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");





CREATE TABLE `bio_fac_funpat` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `patkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `bio_fac_glc` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `conkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO bio_fac_glc VALUES("1","S05BIO004","2010-2011","","","0000-00-00","0000-00-00","0000-00-00","","","","","","GREEN TECHNOLOGIES FOR THE BEN"," “Biodegradation  of waste water  containing  hy","Universiti Sains Malaysia","3","2010-12-13","2010-12-15","0000-00-00","international","","47396-skm_554e19030817290.pdf","1");
INSERT INTO bio_fac_glc VALUES("2","S05BIO004","2017-2018","","","0000-00-00","0000-00-00","0000-00-00","","","","","","EMERGING CHALLENGES IN BIOTECH"," ","MGR COLLEGE","2","2018-01-31","2018-02-01","0000-00-00","national","","68667-skm_554e19030817283.pdf","1");





CREATE TABLE `bio_fac_member` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `awakey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

INSERT INTO bio_fac_member VALUES("1","S05BIO004","2009-2010","","","","","","","","","","DCOE","institute","1","","","","","");
INSERT INTO bio_fac_member VALUES("2","S05BIO004","2010-2011","","","","","","","","","","DCOE","institute","1","","","","","");
INSERT INTO bio_fac_member VALUES("3","S05BIO004","2011-2012","","","","","","","","","","DCOE","institute","1","","","","","");
INSERT INTO bio_fac_member VALUES("4","S05BIO004","2012-2013","","","","","","","","","","DCOE","institute","1","","","","","");
INSERT INTO bio_fac_member VALUES("5","S05BIO004","2013-2014","","","","","","","","","","DCOE","institute","1","","","","","");
INSERT INTO bio_fac_member VALUES("6","S05BIO004","2014-2015","Asia-Pacific  Chemical,  Biological&  Environmenta","200224","LIFE","","","","","18232-_member-200224.pdf","1","DCOE","institute","1","","","","","");
INSERT INTO bio_fac_member VALUES("7","S05BIO004","2015-2016","IE","M-151552-1","LIFE","IAENG","38400-iaeng_membership_151647.","151647","LIFE","58003-mie.pdf","2","DCOE","institute","1","","","","","");
INSERT INTO bio_fac_member VALUES("8","S05BIO004","2016-2017","","","","","","","","","","DCOE","institute","1","","","","","");
INSERT INTO bio_fac_member VALUES("9","S05BIO004","2017-2018","","","","","","","","","","DCOE","institute","1","","","","","");
INSERT INTO bio_fac_member VALUES("10","S05BIO004","2018-2019","","","","","","","","","","DCOE","institute","1","","","","","");
INSERT INTO bio_fac_member VALUES("11","S05BIO004","2007-2008","ISTE","LM57667","LIFE","","","","","99437-iste.pdf","1","","","","","","","","");
INSERT INTO bio_fac_member VALUES("12","S18BIO009","2018-2019","","","","","","","","","","Tutor","department","1","","","","","");
INSERT INTO bio_fac_member VALUES("13","S17BIO005","2018-2019","","","","","","","","","","","","","Best women faculty award","Nature Sci","2019-02","64370-new-doc-2019-02-11-10.47.59_2.pdf","1");
INSERT INTO bio_fac_member VALUES("14","S17BIO005","2017-2018","","","","","","","","","","tutor ","department","1","","","","","");





CREATE TABLE `bio_fac_ot_qual` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `intake1` int(5) DEFAULT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `name_qual` varchar(100) DEFAULT NULL,
  `year_com` int(10) DEFAULT NULL,
  `cer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `bio_fac_resg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `j_sup` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO bio_fac_resg VALUES("1","S17BIO005","ANNA UNIVERSITY","3050008","0","19235691105","Ms. S.Kavitha","2019","ongoing","Technology","","");
INSERT INTO bio_fac_resg VALUES("2","S17BIO005","ANNA UNIVERSITY","3050008","0","19245691117","Ms. S. Jeevitha","2019","ongoing","Technology","","");





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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
  `app_order` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO bit_fac VALUES("S04BIT008","Dr.D.THILAGAVATHY","1976-06-07","43","female","thilagakarthick@yahoo.co.in","9487819100","S.K.DORAIRAJ","D.SANTHA KUMARI","y","","Hindu","BC","Hosur","Hosur","Krishnagiri","Tamil Nadu","India","635109","	Plot.No.51,Swagath Residencies
Moranapalli(V)
Hosur   ","	Plot.No.51,Swagath Residencies
Moranapalli(V)
Hosur   ","598731137776","AFFPT9357K","","O+","2004-06-21","Professor and Head","9443824660","BIT","92102-thilaga-new.jpg","96676-thilagaaa.pdf","7776","","","","65591-d.thilagavathy---appointment-order.pdf");
INSERT INTO bit_fac VALUES("S10BIT006","SIVAKUMAR.V","1984-04-03","35","male","sivcse45@gmail.com","9994886632","S.VENU","V.KAMATCHI","y","","Hindu","BC","GUDIYATHAM","GUDIYATHAM","VELLORE","Tamil Nadu","India","632602","NO: 1A-3, 2ND ANDIYAPPA MUDALI STREET, KAMATCHIAMMAN PET, NEAR BOSE PET, GUDIYATHAM-632602, VELLORE ","	   ","512277592404","CYWPS2782P","","O+","2010-11-06","Assistant Professor","0","BIT","87038-sivakumar-photo.jpg","20579-sivakumar-aadhaar.jpg","2404","","","","");
INSERT INTO bit_fac VALUES("S11BIT005","sivanantham","1987-11-03","32","male","sivanantham17@gmail.com","9791714881","sivakumar","valli","y","","Hindu","BC","Hosur","Hosur","Krishnagiri","Tamil Nadu","India","635109","3/302-1, 5th cross, Narasamma Colony, Hosur","3/302-1, 5th cross, Narasamma Colony, Hosur","313564744634","DQPPS6111C","","O Neg","2011-06-13","Assistant Professor","0","BIT","12207-dsc_0535.jpg","59244-aadhar-1-ilovepdf-compressed.pdf","siva1987","","","","");
INSERT INTO bit_fac VALUES("S12BIT005","R REGIN","1985-01-01","34","male","regin.it@adhiyamaan.in","9600632341","T N RAJAN","J SHEELA RAJAN","y","","Christian","Nadar","Nagercoil","Nagercoil","Kanyakumari","Tamil Nadu","India","629003","	   127/39 B Parama Shakthi Street ,Pallivilai,Vetturnimadam[Post],Nagercoil-629003","	   127/39 B Parama Shakthi Street ,Pallivilai,Vetturnimadam[Post],Nagercoil-629003","736549876160","BJPPR7685R","","O pos","2012-06-18","Assistant Professor","0","BIT","70541-reginphoto1.jpg","46184-regin-aadharcard.jpg","6160","","","","");
INSERT INTO bit_fac VALUES("S12BIT007","SATHISHKUMAR S","1983-02-23","36","male","sathis.aeri@gmail.com","7373048485","SUBRAMANIAM G","BALAMANI S","n","","HINDU","BC","KandianKoil","Tiruppur","Tiruppur","Tamil Nadu","India","641665","Deputy Warden, 
Room No: G215,
Cauvery Hostel, 
Adhiyamaan College of Engg,
Hosur	   ","	2/461-AalanGarden, KandianKoil(Post) P.K.Palayam (Via), Tiruppur 641665   ","798809998628","DZVPS7558N","","O pos","2012-06-18","Assistant Professor","8489468485","BIT","14252-sathishkumar_photo.jpg","94256-sathis_adharcard.pdf","8628","","","","");
INSERT INTO bit_fac VALUES("S13BIT007","R. RAGHU","1985-07-10","34","male","raghuace85@gmail.com","9597174618","N. RAMA MOORTHY","R. PARVATHAMMA","y","","HINDHU","Kamma Naid","HOSUR","Hosur","KRISHNAGIRI","Tamil Nadu","India","635109","D. No: 1/278 1(2), Bairamangalam(Village & Post),
Denkanokota(Taluk),
Ksrishnagiri (Dist),
Tamiln","D. No: 1/278 1(2), Bairamangalam(Village & Post),
Denkanokota(Taluk),
Ksrishnagiri (Dist),
Tamiln","373435133716","AUEPR7775D","","B +VE","2013-06-07","Assistant Professor","0","BIT","47875-r.raghu.jpg","44561-adar.pdf","3716","","","","87417-appointment-letter.pdf");
INSERT INTO bit_fac VALUES("S13BIT009","KARTHIKA K","1987-12-06","32","female","karthikainfoscience@gmail.com","7708258586","KUMARAVEL K P","REVATHI C","n","","hindu","BC","hosur","HOSUR","krishnagiri","Tamil Nadu","India","635109","no 126 f/48 A,therpet   ","no 126 f/48 A,therpet   ","771277133591","BZLPK7199D","","O+","2013-06-07","ASSISTANT PROFESSOR","9790225439","BIT","25915-edited.jpg","22088-ilovepdf_jpg_to_pdf.pdf","3591","","","","64265-20190410_102655.pdf");
INSERT INTO bit_fac VALUES("S18BIT003","Gowtham Raj M","1994-09-30","25","male","gowthamglitters@gmail.com","8903573745","Mohan Raj AR","Bhuvaneshwari M","n","","Hindu","BC","Kaveripattinam","Krishnagiri","Krishnagiri","Tamil Nadu","India","635112","#1/14 Thomson Pettai, Achari Street,
Kaveripattinam,
Krishnagiri(DT)
pin-635112","#1/14 Thomson Pettai, Achari Street,
Kaveripattinam,
Krishnagiri(DT)
pin-635112","860888526057","BGEPG7601Q","","O+","2018-08-01","Assistant Professor","9445273745","BIT","55767-8461-gowtham.jpg","1706-new-doc-2019-01-24-18.42.59_2.jpg","1945","","","","52549-new-doc-2018-09-29-10.28.45_1.pdf");





CREATE TABLE `bit_fac_attorg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

INSERT INTO bit_fac_attorg VALUES("1","S18BIT003","2018-2019","fdp","INTRODUCTION TO BIG DATA ANALYTICS","2","2018-09-03","2018-09-04","0000-00-00","ICT ACADEMY","ADHIYAMAAN ENGINEERING COLLEGE, HOSUR","district","89647-new-doc-2019-01-30-13.03.33.jpg","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("2","S10BIT006","2018-2019","fdp","Introduction to Big Data Analytics","2","2018-09-03","2018-09-04","0000-00-00","ICTACT","Adhiyamaan College of Engineering","state","9726-2018-bigdata-ictact.jpg","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("3","S10BIT006","2018-2019","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","0","National Level Technical Symposium Accendo 2K18","-","2","2018-09-19","2018-09-20","0000-00-00","nil","100","national","60365-a2k18-coordinator-award.jpeg","1");
INSERT INTO bit_fac_attorg VALUES("4","S10BIT006","2017-2018","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","0","Intra College level Project Innovation Contest “","-","2","2018-03-15","2018-03-16","0000-00-00","nil","80","national","96540-pic-18-coordinator.jpeg","1");
INSERT INTO bit_fac_attorg VALUES("5","S13BIT007","2016-2017","training","% th National Conference on Frontiers in communica","2","2017-03-13","2017-03-14","0000-00-00","Dept of ECE","ACE, Hosur","national","86459-2017.1.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("6","S13BIT007","2016-2017","training","5 th National Conference on Frontiers in communica","2","2017-03-13","2017-03-14","0000-00-00","Dept of ECE  ","ACE, Hosur  ","national","38529-2017.2.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("7","S13BIT007","2016-2017","fdp","Introduction to R Programming  ","2","2017-04-20","2017-04-21","0000-00-00","ICT Academy of Tamilnadu ","ACE, Hosur  ","international","45151-2017.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("8","S13BIT007","2017-2018","fdp","Adaptation of Computational Intelligence in Wirele","14","2017-12-04","2017-12-17","0000-00-00","AICTE ","ACE, Hosur  ","international","82464-2018.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("9","S13BIT007","2016-2017","seminar","Employability Skills for the Future","1","0000-00-00","0000-00-00","2016-07-30","ICT Academy of Tamilnadu ","ACE, Hosur   ","national","25013-2016.1.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("10","S13BIT007","2016-2017","fdp","Internet of Things ","2","2016-08-18","2016-08-19","0000-00-00","Dept of IT ","ACE, Hosur   ","national","53450-2016.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("11","S13BIT007","2016-2017","fdp","Introduction to Mobile APP Development ","2","2016-09-26","2016-09-27","0000-00-00","ICT Academy of Tamilnadu   ","ACE, Hosur  ","national","96979-2016.3.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("12","S13BIT007","2015-2016","fdp","Mission 10X","2","2015-06-02","2015-06-04","0000-00-00","WIPRO & ACE","ACE, Hosur   ","international","57877-2015.1.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("13","S13BIT007","2015-2016","workshop","C# and .NET Programming","3","2016-01-11","2016-01-13","0000-00-00","Dept of IT ","ACE, Hosur     ","national","19016-2016.2.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("14","S13BIT007","2015-2016","fdp","Entrepreneurship Development","14","2016-02-01","2016-02-13","0000-00-00","DST & ACE","ACE, Hosur   ","national","2641-2016.3.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("15","S13BIT007","2014-2015","fdp","Introduction to PHP & MySQL","2","2015-01-08","2015-01-09","0000-00-00","ICT Academy of Tamilnadu  ","EXCEL Engg College, Namakkal","national","47400-2015.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("16","S13BIT007","2014-2015","fdp","Decision Making Skills","2","2015-04-20","2015-04-21","0000-00-00","ICT Academy of Tamilnadu   ","ACE, Hosur    ","national","1679-2015.2.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("17","S13BIT007","2013-2014","fdp","LateX","2","2013-06-28","2013-06-29","0000-00-00","Dept of IT & EIE ","ACE, Hosur     ","national","83906-2013.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("18","S13BIT007","2013-2014","workshop","Network Simulator 2","1","0000-00-00","0000-00-00","2013-07-22","Dept of IT  ","ACE, Hosur      ","national","27691-2013.1.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("19","S13BIT007","2013-2014","fdp","MANETs -Opportunities and Challenges ","7","2014-05-19","2014-05-25","0000-00-00","Dept of CSE, GCE, Bargur","Bargur","national","25267-2014.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("20","S13BIT007","2011-2012","seminar","Wireless Security","1","0000-00-00","0000-00-00","2011-08-26","IE(I)& CSE","ACE, Hosur      ","national","46132-2011.3.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("21","S13BIT007","2011-2012","workshop","Cloud Computing and virtualization ","2","2012-02-08","2012-02-09","0000-00-00","World Innovation Center & CSE","ACE, Hosur   ","national","41254-2012.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("22","S13BIT007","2010-2011","seminar","Grid and Cloud Computing","1","0000-00-00","0000-00-00","2010-09-08","IE(I)& IT","ACE, Hosur      ","national","28456-2010.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("23","S13BIT007","2010-2011","workshop","Advanced Java Programming","1","0000-00-00","0000-00-00","2011-03-12","Dept of IT  ","ACE, Hosur     ","national","37795-2011.1.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("24","S13BIT007","2010-2011","workshop","Nuances of Database Design and Handling","1","0000-00-00","0000-00-00","2011-03-18","Dept of IT ","ACE, Hosur ","national","63524-2011.2.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("25","S13BIT007","2010-2011","workshop","Dynamic web designing","1","0000-00-00","0000-00-00","2011-03-19","Dept of IT  ","ACE, Hosur       ","national","88781-2011.3.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("26","S13BIT007","2008-2009","workshop","Strategies of Software Engineering and Testing","2","2009-02-13","2009-02-14","0000-00-00","IE(I)& IT ","ACE, Hosur ","national","63578-2009.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("27","S13BIT007","2006-2007","workshop","Advanced Image Processing and Data Mining Applicat","1","0000-00-00","0000-00-00","2006-08-19","Dept of IT   ","ACE, Hosur       ","national","25289-2006.1.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("28","S13BIT007","2005-2006","workshop","Recent Trends in Wireless Technologies","1","0000-00-00","0000-00-00","2006-04-07","Dept of IT   ","ACE, Hosur      ","national","24832-2006.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("29","S13BIT007","2005-2006","training","Soft skills management ","4","2005-09-26","2005-09-29","0000-00-00","ACE, HOSUR","ACE, Hosur       ","national","68743-2005.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bit_fac_attorg VALUES("30","S13BIT007","2017-2018","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","seminar","Career Opportunities in IT/ITES Sector- Industry E","ICT academy of Tamilnadu","1","0000-00-00","0000-00-00","2017-07-29","Mr. Shanmugam,Senior HR, CTS, ","300","national","4794-to-up__1554975207_210.212.246.129.jpg","1");
INSERT INTO bit_fac_attorg VALUES("31","S13BIT007","2017-2018","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","0","Sales force Business Administration Specialists","ACE","5","2018-01-29","2018-02-02","0000-00-00","Mr. Piyush Gupta,  Sales Force","100","national","58270-to-up__1554975207_210.212.246.129.jpg","1");
INSERT INTO bit_fac_attorg VALUES("32","S13BIT007","2017-2018","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","workshop","Testing Automation Using Selenium Tool","ACE","1","0000-00-00","0000-00-00","2018-02-08","Mr.S. Karthikeyan,  Tech Mahin","100","national","54488-to-up__1554975207_210.212.246.129.jpg","1");
INSERT INTO bit_fac_attorg VALUES("33","S13BIT007","2016-2017","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","seminar","Employability Skill for the Future”","ICT academy of Tamilnadu","1","0000-00-00","0000-00-00","2016-07-30","Mr. Eregamani, AGM & Head- TQM","150","national","51024-to-up__1554975207_210.212.246.129-min.jpg","1");
INSERT INTO bit_fac_attorg VALUES("34","S13BIT007","2016-2017","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","sdp","Accendo2K16","ACE","2","2016-08-29","2016-08-30","0000-00-00","Mr.Kannappan Ravi,   Vice Pres","350","national","60074-image-compress1.jpg","1");
INSERT INTO bit_fac_attorg VALUES("35","S13BIT007","2015-2016","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","seminar","Employability Skills","ICT academy of Tamilnadu","1","0000-00-00","0000-00-00","2016-01-30","Mr. Viswanathan Easwarran,  Sr","200","national","1969-new+doc+2019-04-11+13.17.59-8_page-0001-min-min.jpg","1");
INSERT INTO bit_fac_attorg VALUES("36","S13BIT007","2015-2016","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","workshop","C# & .NET Programming","ACE","3","2016-01-11","2016-01-13","0000-00-00","Mr. S. Vinoth Co- Founder & Ch","80","national","55166-new+doc+2019-04-11+13.17.59-15_page-0001-min-min.jpg","1");
INSERT INTO bit_fac_attorg VALUES("37","S13BIT007","2015-2016","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","workshop","PHP and Python Programming","ACE","2","2016-03-15","2016-03-16","0000-00-00"," Mr. V. Sivakumar  AP / IT, AC","80","national","19153-new+doc+2019-04-11+13.17.59-16_page-0001-min-min.jpg","1");
INSERT INTO bit_fac_attorg VALUES("38","S13BIT009","2013-2014","0","Manets opportunities and challenges","6","2014-05-19","2014-05-25","0000-00-00","TEQIP  II ","Bargur","state","20682-fdp-1-week-teqip.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");





CREATE TABLE `bit_fac_bkjrn` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `glkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO bit_fac_bkjrn VALUES("1","S10BIT006","","","","","","","","","","","","","","","","","","","","https://scholar.google.co.in/citations?hl=en&user=","1");
INSERT INTO bit_fac_bkjrn VALUES("2","S13BIT007","2018-2019","","","","","","","","ORIGIN BASED ASSURANCE PATTERN FOR DELAY TOLERANT NETWORKS","JASC: Journal of Applied Science and Computations","Volume VI","Issue III","1076-5131","ugc","http://j-asc.com/VOLUME-6-ISSUE-3-MARCH-2019-11/","-","59337-go-jasc-journal-certificate-213.pdf","0","1","","");
INSERT INTO bit_fac_bkjrn VALUES("3","S13BIT007","2017-2018","","","","","","","","Efficient Dead Reckoning Approach for Localization Prediction in VANETs","JASC: Journal of Applied Science and Computations","Volume VI","Issue III","1076-5131","ugc","http://j-asc.com/VOLUME-6-ISSUE-3-MARCH-2019-11/","-","97726-269-march-2239.pdf","6","1","","");





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
  `ph2key` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO bit_fac_edu VALUES("S04BIT008","St.Joseph Matriculation Higher Secondary School","state","1991","79","21026-10.pdf","1","St.Joseph Matriculation Higher Secondary School","state","Plus Two","1993","87","66585-10.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Tamil Nadu College of Engineering","Bharathiyar University","B.E","Computer Science and Engineering","regular","1997","59","97289-b.e.pdf","1","","","","","","","","","","","","","","","","","","","Sona College of Technology","Anna University","M.E","Computer Science and Engineering","regular","2004","71","69502-d.thilagavathy-convocation-pg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","Anna University","Anna University","Network Security","Information and Communication Engineering","parttime","2007-01","2011-10","Resilient Interval Based Contributory Re-key Agreement with Efficient Authentication","Dr.M.Rajaram","72901-phd.pdf","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO bit_fac_edu VALUES("S10BIT006","Vallalar High School","state","2000","88","97457-10std_3.jpg","1","National Higher Secondary School","state","Maths & Biology","2002","87","92390-12th.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Priyadarshini Engineering College","Anna University, Chennai","B.E.","Computer Science & Engineering","regular","2006","78","8811-be.pdf","1","","","","","","","","","","","","","","","","","","","Anna University of Technology, Coimbatore","Anna University of Technology, Coimbatore","M.E.","Computer Science & Engineering","regular","2010","9","38921-siva-me.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO bit_fac_edu VALUES("S12BIT005","E D W M SDA MHSS VETTURNIMADAM","state","2000","58","17339-x-pdf.pdf","1","MODERATOR GNANADASON POLYTECHNIC COLLEGE","state","Computer Technology","2004","79","76114-diploma-degree-cert.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","CSI INSTITUTE OF TECHNOLOGY","ANNA UNIVERSITY","BE","Computer SCIENCE ","regular","2007","67","49656-be-pdf.pdf","1","","","","","","","","","","","","","","","","","","","ANNAMALAI UNIVERSITY","ANNAMALAI UNIVERSITY","ME","Computer Science","regular","2011","7","86161-regin-me-degree.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","Adhiyamaan College of Engineering","Anna University","Vanet","ICE","parttime","2015-07","","","Dr T.MENAKADEVI","41054-reginph.d-fee.pdf","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO bit_fac_edu VALUES("S13BIT007","Govt HS BAIRAMANGALAM","state","2000","74","83928-10th-raghu.pdf","1","R.V.G.B.Hr Sec School, HOSUR","state","MPCB","2003","69","49550-12.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","ADHIYAMAAN COLLEGE OF ENGINEERING","ANNA UNIVERSITY","B.TECH","INFORMATION TECHNOLOGY","regular","2007","68","48538-new-doc-2019-04-10-07.35.24-3.pdf","1","","","","","","","","","","","","","","","","","","","Adhiyamaan College of Engineering","Anna University","M.E","Computer science and Engineering","regular","2013","9","93904-raghu-3.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","Adhiyamaan College of Engineering","Anna University","Faculty of Information and Communication Enginneri","Computer Science- VANETs","regular","2016-01","","","Dr. T. Menakadevi","73525-new-doc-2019-04-10-07.35.24-1.pdf","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO bit_fac_edu VALUES("S13BIT009","kingston matric higher secondary school","state","2003","76","97508-new-doc-2017-06-24-1-2.pdf","1","Government Girls Higher Secondary School Hosur","state","maths physics chemistry biology","2005","73","45361-new-doc-2017-06-24-3-4.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Lord Venkateshwara Engineering College kanchepuram","Anna University","B TECH","INFORMATION TECHNOLOGY","regular","2009","83","66720-new-doc-2017-06-24-10-11.pdf","1","","","","","","","","","","","","","","","","","","","COLLEGE OF ENGINEERING GUINDY CAMPUS","ANNA UNIVERSITY ","ME","MULTIMEDIA TECHNOLOGY","regular","2013","9","4521-new-doc-2017-06-24-12-13.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO bit_fac_edu VALUES("S18BIT003","TES HIGHER SECONDARY SCHOOL, KATHALAMEDU","state","2009","54","79008-new-doc-2019-01-31-11.34.49_1.jpg","1","","","","","","","","LAKSHMI NARAYANA POLYTECHNIC COLLEGE, DHARMAPURI","STATE BOAR","COMPUTER ENGINEERING","regular","2012","90","55982-new-doc-2019-01-31-11.45.05.jpg","1","","","","","","","","","","","","","","","","","VELAMMAL ENGINEERING COLLEGE, CHENNAI","ANNA UNIVERSITY","B.E","COMPUTER SCIENCE AND ENGINEERING","regular","2015","7","30421-new-doc-2019-01-31-11.59.18.jpg","1","","","","","","","","","","","","","","","","","","","COLLEGE OF ENGINEERING GUINDY CAMPUS","ANNA UNIVERSITY","ME","SOFTWARE ENGINEERING","regular","2018","8","44370-new-doc-2019-04-10-12.49.50.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");





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
  `otkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO bit_fac_exp VALUES("S13BIT009","AVS ENGINEERING COLLEGE ","LECTURER","2010-07-16","2011-07-25","for continuing higher studies","AVS ENGINEERING COLLEGE","LECTURER","2010-07-16","2011-07-25","FOR CONTINUING HIGHER STUDIES","0000-00-00","94298-new-doc-2017-06-24-21.pdf","2","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");





CREATE TABLE `bit_fac_funpat` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `patkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `bit_fac_glc` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `conkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO bit_fac_glc VALUES("1","S10BIT006","2016-2017","Dynamic Web design with PHP and MySQL","2","2017-02-21","2017-02-22","0000-00-00","PHP and MySQL","Adhiymaan College of Engineering (Autonomous)","Hosur","0","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","");
INSERT INTO bit_fac_glc VALUES("2","S13BIT007","2017-2018","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Trends in Advanced Computing a","Online news paper ordering and bill payment","CSI student Branch & ACE","2","2018-03-14","2018-03-15","0000-00-00","national","","43418-new-doc-2019-04-11-13.17.59-1.pdf","1");
INSERT INTO bit_fac_glc VALUES("3","S13BIT007","2015-2016","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Trends in Advanced Computing a","Smart web search with personalization and privacy ","CSI student Branch & ACE","2","2016-03-18","2016-03-19","0000-00-00","national","","82133-new-doc-2019-04-11-13.17.59-9.pdf","1");
INSERT INTO bit_fac_glc VALUES("4","S13BIT007","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Computing, Communication and M","Improvement in Quality of service in WSN by avoidi","PMC tech Hosur","1","0000-00-00","0000-00-00","2015-03-12","national","","77842-new-doc-2019-04-11-13.17.59-10.pdf","1");
INSERT INTO bit_fac_glc VALUES("5","S13BIT007","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Trends in Advanced Computing a","Atomatic bus prediction system based on google map","CSI student Branch & ACE","2","2015-03-19","2015-03-20","0000-00-00","national","","87127-new-doc-2019-04-11-13.17.59-5.pdf","1");
INSERT INTO bit_fac_glc VALUES("6","S13BIT007","2013-2014","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Conference on Engineering and ","Statistical Source anonymity in sensor networks","S.R.I. college of engineering and technology","3","2014-03-05","2014-03-07","0000-00-00","international","","97947-new-doc-2019-04-11-13.17.59-11.pdf","1");
INSERT INTO bit_fac_glc VALUES("7","S13BIT007","2017-2018","Adaptation of Computational intelligence in wirele","1","0000-00-00","0000-00-00","2017-12-12","Overview of VANETS and its Routing schemes","ACE","Hosur","0","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","");





CREATE TABLE `bit_fac_member` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `awakey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

INSERT INTO bit_fac_member VALUES("1","S18BIT003","2018-2019","","","","","","CLASS TUTOR","department","1","","","","","");
INSERT INTO bit_fac_member VALUES("2","S10BIT006","2016-2017","","","","","","Tutor, Unit Test Incharge, IETE incharge","department","1","Facilitator Workshop on PHP & MySQL","Department","2017-04","0","1");
INSERT INTO bit_fac_member VALUES("3","S10BIT006","2017-2018","","","","","","Autonomous Semester Exams Duty Allotment","department","3","Silver Faculty","Infosys Ca","2018-09","0","2");
INSERT INTO bit_fac_member VALUES("4","S10BIT006","2018-2019","","","","","","Tutor, Unit Test Incharge, IETE incharge","department","3","Silver Faculty","Infosys Ca","2018-06","0","2");
INSERT INTO bit_fac_member VALUES("5","S04BIT008","2008-2009","ISTE","LM61437","LIFE TIME","21239-iste.pdf","1","HOD","department","1","","","","","");
INSERT INTO bit_fac_member VALUES("6","S04BIT008","2009-2010","","","","","","HOD","department","1","","","","","");
INSERT INTO bit_fac_member VALUES("7","S04BIT008","2010-2011","","","","","","HOD","department","1","","","","","");
INSERT INTO bit_fac_member VALUES("8","S04BIT008","2011-2012","","","","","","HOD","department","1","","","","","");
INSERT INTO bit_fac_member VALUES("9","S04BIT008","2012-2013","","","","","","HOD","department","1","","","","","");
INSERT INTO bit_fac_member VALUES("10","S04BIT008","2013-2014","","","","","","HOD","department","1","PARTERS IN SUCCESS -BRONZE","INFOSYS","2014-03","25502-bronze-2014.pdf","1");
INSERT INTO bit_fac_member VALUES("11","S04BIT008","2014-2015","","","","","","HOD","department","1","","","","","");
INSERT INTO bit_fac_member VALUES("12","S04BIT008","2015-2016","","","","","","HOD","department","1","BEST ENGINEER AWARD","IE(I)","2016-09","97125-best-engg.pdf","3");
INSERT INTO bit_fac_member VALUES("13","S04BIT008","2016-2017","CSI","N1012769","LIFE TIME","10895-csi.pdf","1","HOD","department","1","Appreciation","Adhiyamaan","2016-09","14784-c16.pdf","1");
INSERT INTO bit_fac_member VALUES("14","S04BIT008","2017-2018","","","","","","HOD","department","1","Appreciation","Tiruvalluv","2018-03","55105-appre.pdf","3");
INSERT INTO bit_fac_member VALUES("15","S04BIT008","2018-2019","","","","","","HOD","","1","","","","","");
INSERT INTO bit_fac_member VALUES("16","S13BIT009","2013-2014","","","","","","TUTOR","department","1","","","","","");
INSERT INTO bit_fac_member VALUES("17","S13BIT009","2014-2015","The Institution of Engineers","AM158863-2","LIFE TIME","35494-member-ie.pdf","1","TUTOR, STOCK INCHARGE","department","1","","","","","");
INSERT INTO bit_fac_member VALUES("18","S13BIT009","2015-2016","","","","","","TUTOR, STOCK INCHARGE","department","1","","","","","");
INSERT INTO bit_fac_member VALUES("19","S13BIT009","2016-2017","","","","","","TUTOR,STOCK INCHARGE","department","1","","","","","");
INSERT INTO bit_fac_member VALUES("20","S13BIT009","2017-2018","","","","","","TUTOR - BATCH(2017-21),sTOCK INCHARGE,DEPARTMENT L","department","1","","","","","");
INSERT INTO bit_fac_member VALUES("21","S10BIT006","2011-2012","","","","","","Unit Test Incharge","department","1","","","","","");
INSERT INTO bit_fac_member VALUES("22","S10BIT006","2012-2013","","","","","","Examination in-charge (Autonomous Semester & Unit ","department","1","","","","","");
INSERT INTO bit_fac_member VALUES("23","S10BIT006","2013-2014","","","","","","Autonomous Semester Exams Duty Allotment","department","1","","","","","");
INSERT INTO bit_fac_member VALUES("24","S10BIT006","2014-2015","","","","","","IETE Coordinator, Unit Test Exam Incharge","department","1","","","","","");
INSERT INTO bit_fac_member VALUES("25","S10BIT006","2015-2016","","","","","","IIT Spoken Tutorial Project Coordinator,Unit Test ","department","1","","","","","");
INSERT INTO bit_fac_member VALUES("26","S13BIT007","2008-2009","","","","","","Tutor","","1","","","","","");
INSERT INTO bit_fac_member VALUES("27","S13BIT007","2009-2010","","","","","","Class Tutor, ISO File incharge, Events Coordinator","department","2","","","","","");
INSERT INTO bit_fac_member VALUES("28","S13BIT007","2010-2011","","","","","","Class Tutor,Events Coordinator, Lab In charge (VI)","department","1","","","","","");
INSERT INTO bit_fac_member VALUES("29","S13BIT007","2013-2014","","","","","","Tutor,Events Coordinator,External Valuator, Worksh","","1","","","","","");
INSERT INTO bit_fac_member VALUES("30","S13BIT007","2014-2015","","","","",""," Tutor,Events Coordinator,External & Internal Exam","department","2","","","","","");
INSERT INTO bit_fac_member VALUES("31","S13BIT007","2015-2016","","","","","","IE(I) staff Coordinator, Tutor,Lab In charge (IV),","department","2","","","","","");
INSERT INTO bit_fac_member VALUES("32","S13BIT007","2016-2017","","","","","","Tutor,Lab In charge (IV),IE(I) staff Coordinator, ","department","2","","","","","");
INSERT INTO bit_fac_member VALUES("33","S13BIT007","2017-2018","","","","","","Tutor,Lab In charge (IV),IE(I) staff Coordinator, ","department","2","","","","","");
INSERT INTO bit_fac_member VALUES("34","S13BIT007","2018-2019","ISTE","67455","Life Long","68261-new-doc-2019-04-11-13.17.59-23.pdf","2","Lab In charge (IV),Tutor,IE(I) staff Coordinator, ","department","1","","","","","");
INSERT INTO bit_fac_member VALUES("35","S12BIT005","2011-2012","","","","","","Tutor","department","5","","","","","");
INSERT INTO bit_fac_member VALUES("36","S12BIT005","2012-2013","","","","","","Tutor,Event Coordinator,,Internal Valuator,","department","2","","","","","");
INSERT INTO bit_fac_member VALUES("37","S12BIT005","2013-2014","","","","","","Tutor,Event Coordinator,,Internal Valuator,CSI STU","institute","2","","","","","");
INSERT INTO bit_fac_member VALUES("38","S12BIT005","2014-2015","","","","","","Tutor,Event Coordinator,,Internal Valuator,CSI STU","department","3","","","","","");
INSERT INTO bit_fac_member VALUES("39","S12BIT005","2015-2016","","","","","","Tutor,Event Coordinator,,Internal Valuator,CSI STU","department","3","","","","","");
INSERT INTO bit_fac_member VALUES("40","S12BIT005","2016-2017","","","","","","Tutor,Event Coordinator,,Internal Valuator,CSI STU","department","3","","","","","");
INSERT INTO bit_fac_member VALUES("41","S12BIT005","2017-2018","","","","","","Tutor,Event Coordinator,,Internal Valuator,CSI STU","department","3","","","","","");
INSERT INTO bit_fac_member VALUES("42","S12BIT005","2018-2019","","","","","","Tutor,Event Coordinator,,Internal Valuator,CSI STU","department","3","","","","","");
INSERT INTO bit_fac_member VALUES("43","S12BIT005","1987-1988","","","","","","Feedback Committee","institute","1","","","","","");
INSERT INTO bit_fac_member VALUES("44","S04BIT008","2015-2016","","","","","","","","","BEST PROJECT AWARD","IE(I)","2016-03","","1");
INSERT INTO bit_fac_member VALUES("45","S04BIT008","2015-2016","","","","","","","","","BEST PROJECT AWARD","IE(I)","2016-03","84331-best-project.pdf","1");
INSERT INTO bit_fac_member VALUES("46","","","","","","","","","","","","","","","");
INSERT INTO bit_fac_member VALUES("47","S12BIT005","2016-2017","","","","","","Feedback Committe","institute","1","","","","","");
INSERT INTO bit_fac_member VALUES("48","S12BIT005","2017-2018","","","","","","Feedback Committe","institute","1","","","","","");
INSERT INTO bit_fac_member VALUES("49","S12BIT005","2017-2018","","","","","","Bos Member","department","1","","","","","");
INSERT INTO bit_fac_member VALUES("50","S12BIT005","2018-2019","","","","","","Bos Member,Tutor,Event Coordinator,Internal Valuat","department","1","","","","","");
INSERT INTO bit_fac_member VALUES("51","S12BIT005","2018-2019","","","","","","Feedback Committee","institute","1","","","","","");
INSERT INTO bit_fac_member VALUES("52","S12BIT005","2016-2017","","","","","","i-Spark-School Program organizer","out","1","","","","","");
INSERT INTO bit_fac_member VALUES("53","S12BIT005","2015-2016","","","","","","i-Spark-School Program organizer","out","1","","","","","");





CREATE TABLE `bit_fac_ot_qual` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `sid` varchar(10) NOT NULL,
  `name_qual` varchar(50) NOT NULL,
  `year_com` int(10) NOT NULL,
  `cer` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `bit_fac_resg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `j_sup` varchar(50) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
  `app_order` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO bme_fac VALUES("S07BME001","Dr.T.S.Udhaya Suriya","1977-06-06","42","female","tsu.suriya@gmail.com","9894171294","Mr.P. Thankappan","Mrs.C.Saraswathi","y","","Hindu","BC","Surya Nagar","HOSUR","Krishnagiri","Tamil Nadu","India","635126","3/335C, Surya Nagar 6th Cross, Arasanetty
Mookandapalli Post
Hosur-635126	   ","3/335C, Surya Nagar 6th Cross, Arasanetty
Mookandapalli Post
Hosur-635126	   ","601210193399","ABEPU5499A","","B+ive","2007-02-05","Prof& Head","0","BME","87367-us-photo.jpg","67402-udahya-suriya_aadhar.pdf","3399","","","","");
INSERT INTO bme_fac VALUES("S10BME003","V.P.Krishnammal","1983-05-14","36","female","krishna_vp2002@yahoo.com","9994609270","A.Velappan","S.Ponnammal","y","","Hindu","MBC","HOSUR","HOSUR","Krishnagiri","","India","635109","Plot No:56,
Venkatehwara
Nagar,
Krishna Nagar Extn, 
Dharga,Hosur	   ","556a, Annastreet,
MKP Nagar,
Palayamkottai,	
Tirunelveli   ","8146","BDOPK5877K","-","O+","2010-12-01","Assistant Professor","8248488641","BME","64728-scan-image-new.jpg","83970-krishnammal.pdf","7 0767","","","","53342-app-1.pdf");
INSERT INTO bme_fac VALUES("S10BME005","P GANESH BABU ","1984-09-15","35","male","ganeshbabu15@gmail.com","9894152562","S.PARAMASIVAN","P.SELVA VELAMMAL","n","","Hindu","Senaithala","Ambasamudram","Tirunelveli","Tirunelveli","Tamil Nadu","India","627428","3/123,Amaravathi st,Agasthiyarpatti,
Tirunelveli Dt.","3/123,Amaravathi st,Agasthiyarpatti,
Tirunelveli Dt.","725710007572","ATFPG8201K","","B+ve","2010-06-11","Assistant professor","0","BME","44348-photo1.jpg","89335-ganesh-babu_aadhar.pdf","7572","","","","66468-app.pdf");
INSERT INTO bme_fac VALUES("S10BME007","KUMAR KANDUKURI","1985-06-20","34","male","kumarbme2014@gmail.com","9894983941","K DEVAIAH","SANTHOSHA","y","","HINDU","SC","SANGAREDDY","HYDERABAD","SANGAREDDY","Andhra Pradesh","India","502295","	HOUSE NO:18
GREEN GARDEN
THIRUMALAI NAGER BASTHI
HOSUR
KRISHNAGIRI DISTRICT
635130   ","HOUSE NO:1-54
MALKAPUR
KONDAPUR MANDAL
SANGAREDDY DISTRICT
TELANGANA	   ","447968749904","BYFPK9331N","","A+ve","2010-06-11","ASSISTANT PROFESSOR","0","BME","89813-kumar.jpg","36051-aadhar.pdf","9904","","","","");
INSERT INTO bme_fac VALUES("S11BME006","C.SATHISH KUMAR","1988-05-15","31","male","csathishkumar08@gmail.com","9629453297","T.CHANDRAN","C.DEVAKI","y","","HINDU","YADAVA","JITTIGANUR","BARGUR","KRISHNAGIRI","Tamil Nadu","India","635104","2/158A, JITTIGANUR, VENKATASAMUDHRAM (PO), BARGUR (T.K), KRISHNAGIRI-635104 ","2/158A, JITTIGANUR, VENKATASAMUDHRAM (PO), BARGUR (T.K), KRISHNAGIRI-635104 ","794073200792","DUQPS7781P","","B+ve","2011-06-15","ASSISTANT PROFESSOR","0","BME","51511-sathish.jpg","53876-doc1.pdf","0792","","","","");
INSERT INTO bme_fac VALUES("S16BME004","S. Archana","1993-02-03","26","female","archusiva.s@gmail.com","7639107134","V. Sadhasivam","S. Adistalakshmi","n","","Hindu","Senaithala","Uthangarai","Uthangarai","Krishnagiri","Tamil Nadu","India","635207","94/58 c, kamaraj Nagar,Uthangarai, krishnagiri (DT)	   ","94/58 c, kamaraj Nagar,Uthangarai, krishnagiri (DT)	   ","627727126450","BWIPA4998J","","B+ive","2016-07-04","Assistant professor","7010638358","BME","18630-archana-photo.jpg","48583-aadhar-archana.pdf","6450","","","","28552-app-as.pdf");





CREATE TABLE `bme_fac_attorg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO bme_fac_attorg VALUES("1","S07BME001","2006-2007","training","Quality Improvement Programme on “Recent Trends ","7","2006-11-15","2006-11-21","0000-00-00","Indian Institute of Technology Madras","Chennai","international","51630-iit.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bme_fac_attorg VALUES("2","S07BME001","2006-2007","fdp","Anna university sponsored FDP on Solid State Drive","15","2006-12-01","2006-12-14","0000-00-00","St. Xavier’s Catholic College of Engineering"," Chunkankadai, Kanyakumari Dist","national","17398-st.-xavier.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bme_fac_attorg VALUES("3","S07BME001","2007-2008","fdp","VLSI Design","15","2007-11-26","2007-12-10","0000-00-00","Noorul Islam College of Engineering","Kumaracoil, Kanyakumari District","state","6283-nice-vlsi.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bme_fac_attorg VALUES("4","S07BME001","2008-2009","sdp","Recent Applications of SCADA in Power Systems usin","12","2008-07-21","2008-08-01","0000-00-00","Adhiyamaan College of Engineering","Hosur","national","85028-scada.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bme_fac_attorg VALUES("5","S07BME001","2011-2012","sdp","VLSI Design and System on Chip","15","2011-08-08","2011-08-22","0000-00-00","Adhiyamaan College of Engineering","Hosur","national","75099-vlsi-ace.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bme_fac_attorg VALUES("6","S07BME001","2011-2012","sdp","Applications of Digital Image Processing and Neura","6","2012-03-12","2012-03-17","0000-00-00","Adhiyamaan College of Engineering","Hosur","national","52320-dip-ace.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bme_fac_attorg VALUES("7","S07BME001","2013-2014","fdp","LaTeX","2","2013-06-28","2013-06-29","0000-00-00","Adhiyamaan College of Engineering","Hosur","0","48825-latex.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bme_fac_attorg VALUES("8","S07BME001","2013-2014","fdp","Low Power Design Techniques For ASIC/SoC Chip Deve","14","2013-11-27","2013-12-10","0000-00-00","R.M.D. Engg. College","Chennai","national","32352-rmd.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bme_fac_attorg VALUES("9","S07BME001","2015-2016","fdp","MISSION 10X","3","2015-06-02","2015-06-04","0000-00-00","Adhiyamaan College of Engineering","Hosur","national","5340-mission-10x.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bme_fac_attorg VALUES("10","S07BME001","2015-2016","workshop","Research Methodology ","1","0000-00-00","0000-00-00","2015-09-12","Anna University","Chennai","state","5182-research-methodology.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO bme_fac_attorg VALUES("11","S07BME001","2017-2018","fdp","Adaptation of Computational Intelligence in Wirele","15","2017-12-04","2017-12-17","0000-00-00","Adhiyamaan College of Engineering"," Hosur","national","82307-network-security.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");





CREATE TABLE `bme_fac_bkjrn` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `glkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO bme_fac_bkjrn VALUES("1","S10BME003","2014-2015","","","","","","","","design and implementation of FFT processor using Vedic multiplier","International Journal of Applied Engineering Resea","Volume 10","Number 18 (2015)","ISSN 0973-4562","scopus","http://www.ripublication.com","SCOPUS(2010-2017), EBSCOhost, ","9635-fft-paper-ijaer.pdf","0","1","","");
INSERT INTO bme_fac_bkjrn VALUES("2","S10BME003","2015-2016","","","","","","","","Performance Analysis of Anurupye Vedic Multiplier in FFT Processor","AUSTRALIAN JOURNAL OF BASIC AND APPLIED SCIENCES","Volume 10","2016 march","ISSN:1991-8178","sci","www.ajbasweb.com","43","38228-579-585.pdf","3","1","","");





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
  `ph2key` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO bme_fac_edu VALUES("S07BME001","GOVT GIRLS HS ERANIEL","state","1992","87","53625-sslc-us.pdf","1","LMS  G HSS NEYYOOR","state","Maths,Physics,Chemistry, Biology","1994","79","6252-hsc-us.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","NOORUL ISLAM COLLEGE OF ENGG THUCKALAY","MANONMANIAM SUNDARANAR UNIVERSITY","BE","ELECTRICAL AND ELECTRONICS","regular","1999","69","18107-ug-us.pdf","1","","","","","","","","","","","","","","","","","","","HINDUSTAN COLLEGE OF ENGG CHENNAI","MADRAS UNIVERSITY","ME","APPLIED ELECTRONICS","regular","2001","73","60026-me-us.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","ANNA UNIVERSITY CHENNAI","ANNA UNIVERSITY CHENNAI","BIOMEDICAL ENGINEERING","INFORMATION AND COMMUNICATION ENGINEERING","regular","2010-07","2017-02","AN IMPROVED FUSION TECHNIQUE FOR MEDICAL IMAGES USING  DISCRETE WAVELET TRANSFORM.","Dr.P.RANGARAJAN","9474-phd.pdf","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO bme_fac_edu VALUES("S10BME003","GOVERNMENT  GIRLS HIGHER SECONDARY SCHOOL","state","0","87","53080-sslc.pdf","1","BAPUJI MEMORIAL HSS ,mANAVALAKURICHY","state","Maths,Physics,Chemistry, Biology","0","89","35868-hsc.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","THIAGARAJAR COLLEGE OF ENGINEERING,MADURAI","MADURAI KAMARAJ UNIVERSITY","BE","ECE","regular","0","70","19628-ug-degree.pdf","1","","","","","","","","","","","","","","","","","","","GOVERNMENT COLLEGE OF TECHNOLOGY,COIMBATORE","ANNA UNIVERSITY","ME","VLSI DESIGN","regular","0","87","90076-pg-degree.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO bme_fac_edu VALUES("S10BME005","AVRmV Matricultaion School","state","2000","67","10830-sslc.pdf","1","AVRmV Higher Secondary School","state","Maths,Physics,Chemistry","2002","80","80007-10th-12th-marksheet.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Adhiyamaan College of Engineering","Anna University","BE","EEE","regular","2006","59","75957-d1.pdf","1","","","","","","","","","","","","","","","","","","","PSG Tech","Anna University, Coimbatore","ME","Applied Electronics","regular","2010","7","30428-d2.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO bme_fac_edu VALUES("S10BME007","A P R SCHOOL BOYS LINGAMPALLY","state","2001","75","78151-sslc.pdf","1","SRI AUROBINDO JUNIOR COLLEGE HYDERABAD","state","MATHS, PHYSICS, CHEMISTRY","2003","75","12552-hsc.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","university college of engineering(A) Osmania Unive","Osmania University Hyderabad","B.E","Biomedical Engineering","regular","2007","57","94345-ug.pdf","1","","","","","","","","","","","","","","","","","","","Institute of Technology (B.H.U) VARANASI","BANARAS HINDU UNIVERSITY VARANASI","M.TECH","Biomedical Engineering","regular","2009","9","99760-pg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO bme_fac_edu VALUES("S11BME006","GOVT HIGHER SECONDARY SCHOOL, KAPPALVADI","state","2003","82","15464-sslc.pdf","1","SRI MAHABHARATHI HIGHER SECONDARY SCHOOL","state","MATHS BIOLOGY ","2005","78","97372-hsc-certificate.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","ADHIYAMAAN COLLEGE OF ENGINEERING","ANNA UNIVERSITY","B.E.","BIOMEDICAL ENGINEERING","regular","2009","67","99271-sathish-degree.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO bme_fac_edu VALUES("S16BME004","GOVT GIRLS HIGHER SECONDARY SCHOOL","state","2008","92","61517-sslc.pdf","1","SRI VIJAY VIDYALAYA MATRIC HIGHER SECONDARY SCHOOL","state","MATHS BIOLOGY ","2010","85","56908-hsc-archana.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","SMK FOMRA INSTITUTE OF TECHNOLOGY","ANNA UNIVERSITY","BE","BIOMEDICAL ENGINEERING","regular","2014","8","64996-deg-ac.pdf","1","","","","","","","","","","","","","","","","","","","RAJALAKSHMI ENGINEERING COLLEGE","ANNA UNIVERSITY","ME","MEDICAL ELECTRONICS","regular","2016","9","33494-degree-pg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");





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
  `otkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO bme_fac_exp VALUES("S07BME001","HINDUSTAN COLLEGE OF ENGG CHENNAI","LECTURER","2001-07-26","2001-12-08","PERSONAL","JAYAMATHA ENGINEERING COLLEGE","LECTURER","2002-01-27","2004-09-22","PERSONAL","Er.PERUMAL MANIMEKALAI COLLEGE OF ENGINEERING","LECTURER","2004-09-23","2007-02-02","PERSONAL","ADHIYAMAAN COLLEGE OF ENGG HOSUR","LECTURER","2007-02-01","2008-10-31","PERSONAL","ADHIYAMAAN COLLEGE OF ENGG HOSURS","ASSISTANT  PROFESSOR","2009-06-22","2011-06-30","PERSONAL","ADHIYAMAAN COLLEGE OF ENGG HOSUR","ASSOCIATE PROFESSOR","2011-07-01","2017-06-21","PERSONAL","0000-00-00","0000-00-00","0000-00-00","0000-00-00","0000-00-00","11601-hind-exp.pdf","6","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");





CREATE TABLE `bme_fac_funpat` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `patkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `bme_fac_glc` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `conkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO bme_fac_glc VALUES("1","S07BME001","2011-2012","","","0000-00-00","0000-00-00","0000-00-00","","","","","","2nd National Conference on Rec","Qualitative Evaluation of ICA Based Algorithms for","Hindustan Institute of Technology, Coimbatore","1","0000-00-00","0000-00-00","2012-03-07","national","","75966-hindustan.pdf","1");
INSERT INTO bme_fac_glc VALUES("2","S07BME001","2011-2012","","","0000-00-00","0000-00-00","0000-00-00","","","","","","1st National Conference on BIO","Brain Computer Interface Architecture to Command a","Udaya School of Engineering,Kanyakumari","1","0000-00-00","0000-00-00","2012-03-16","national","","98841-udaya.pdf","1");
INSERT INTO bme_fac_glc VALUES("3","S07BME001","2011-2012","","","0000-00-00","0000-00-00","0000-00-00","","","","","","DRDO sponsored National Confer","A Fast Parallel Multiplier Accumulator Using the M","Adhiyamaan College of Engineering, Hosur","2","2012-03-21","2012-03-22","0000-00-00","national","","13756-drdo.pdf","1");
INSERT INTO bme_fac_glc VALUES("4","S07BME001","2013-2014","","","0000-00-00","0000-00-00","0000-00-00","","","","","","4th IEEE International Confere","Low Power Analysis of MAC using Modified Booth Alg","Vivekanandha College of Engineering for Women, Tir","3","2013-07-04","2013-07-06","0000-00-00","international","","65901-vivekanda.pdf","1");
INSERT INTO bme_fac_glc VALUES("5","S07BME001","2013-2014","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Third International Conference","Analysis of Signal Transition Activity in FIR Filt","Vel Tech Dr. RR & Dr. Sr Technical University, Che","2","2014-03-07","2014-03-08","0000-00-00","international","","59931-vel-tech.pdf","1");
INSERT INTO bme_fac_glc VALUES("6","S07BME001","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","National Conference on “Inno","Medical Image Fusion using Discrete Wavelet Transf","Adhiyamaan College of Engineering, Hosur","2","2015-03-23","2015-03-24","0000-00-00","national","","16018-ieibct.pdf","1");
INSERT INTO bme_fac_glc VALUES("7","S07BME001","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Springer International Confere","Medical Image Fusion using Discrete Wavelet Transf","Noorul Islam University, Kanyakumari","2","2015-04-20","2015-04-21","0000-00-00","international","","83488-ni.pdf","1");





CREATE TABLE `bme_fac_member` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `awakey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO bme_fac_member VALUES("1","S07BME001","2014-2015","The Institution of Engineers (India)","M-151445-2","LIFE MEMBER","84277-ie-membership.pdf","1","","","","","","","","");
INSERT INTO bme_fac_member VALUES("2","S07BME001","2014-2015","","","","","","","","","Best Project Award","IEI - Tami","2015-03","16268-best-project-2015.pdf","1");





CREATE TABLE `bme_fac_ot_qual` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `sid` varchar(10) NOT NULL,
  `name_qual` varchar(50) NOT NULL,
  `year_com` int(10) NOT NULL,
  `cer` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `bme_fac_resg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `j_sup` varchar(50) DEFAULT NULL,
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
  `app_order` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO che_fac VALUES("S08CHE003","DR. S. ANTHUVAN BABU","1983-01-20","36","male","anthuvanb@gmail.com","9003667688","STANTLEY M","FATHIMA","y","","CHIRISTIAN - RC","BC - KALLA","NALLAVANNIYAN KUDIKADU","THANJAVUR","THANJAVUR","Tamil Nadu","India","613502","	2/322, SOUTH STREET,
NALLAVANNIYAN KUDIKADU & POST,
POONDI (VIA),
PAPANASAM (TK),
THANJAVUR - 6","	2/322, SOUTH STREET,
NALLAVANNIYAN KUDIKADU & POST,
POONDI (VIA),
PAPANASAM (TK),
THANJAVUR - 6","426518762517","ANGPA6618K","","O+ve","2008-08-18","AP","7010260789","CHE","98161-photo.jpg","91097-aadhar.pdf","2517","","","","");
INSERT INTO che_fac VALUES("S10CHE001","DR. K. SIVAKUMAR","1982-10-17","37","male","siva1782@gmai.com","9791916258","KULANTHAIVEL P","VENNILA P","y","","HINDU","VANNIYAR","OMALUR","SALEM","SALEM","Tamil Nadu","India","636304","HOD CHEMISTRY, 
ADHIYAMAAN COLLEGE OF ENGINEERING, 
HOSUR  ","MALLAGOUNDANOOR,
CHELLAPILLAIKUTTAI (PO)
OMALUR (TK)
SALEM (DT)   ","5023","DDXPS0384E","-","AB+","2010-07-07","ASSOCIATE PROFESSOR","0","CHE","44935-dr.sivakumar.png","61620-eaadhaar_502386258038_13112017113753_807303.pdf","8038","","","","");
INSERT INTO che_fac VALUES("S97CHE004","INIGO BABU I","1970-05-31","49","male","inigobabu@yahoo.co.in","9894801849","IGNASI SAMY","SEENIMMAL","y","","RC ","BC","HOSUR","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635109","5/704, 165A 36TH STREET
KCC NAGAR
HOSUR   ","5/704, 165A 36TH STREET
KCC NAGAR
HOSUR   ","388954341484","AALPI1462R","","O +ve","1997-06-16","ASSOCIATE PROFESSOR","0","CHE","1044-i.inigobabu.jpg","76219-inigo-babu.pdf","1484","","","","");





CREATE TABLE `che_fac_attorg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `che_fac_bkjrn` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `glkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
  `ph2key` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
  `otkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `che_fac_funpat` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `patkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `che_fac_glc` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `conkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `che_fac_member` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `awakey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `che_fac_ot_qual` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `sid` varchar(10) NOT NULL,
  `name_qual` varchar(50) NOT NULL,
  `year_com` int(10) NOT NULL,
  `cer` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `che_fac_resg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `j_sup` varchar(50) DEFAULT NULL,
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
  `app_order` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO chm_fac VALUES("S12CHM006","AJAY KUMAR KONGA","1986-05-04","33","male","ajay.4586@gmail.com","9741400280","GATTAIAH","RAJESHWARI","y","","HINDU","OBC","CHOPPADANDI","KARIMNAGAR","KARIMNAGAR","","India","505415","1-260	   ","1-260	   ","848628505934","AXQPK4366C","","o+ve","2012-09-05","ASSISTANT PROFESSOR","0","CHM","40769-aj.jpg","24747-aadhaar.pdf","5934","","","","65810-10.ajay-kumar-konga.pdf");
INSERT INTO chm_fac VALUES("S13CHM001","yuvanashree","1990-08-29","29","female","yuvanashreedeepan@gmail.com","9976933022","Esawaramoorthi","Andal","y","","Hinduism","Gavara Nai","avaniyapuram","madurai","madurai","Tamil Nadu","India","625012","No5, CMK APPARTMENT,
ADHIYAMAAN STREET,NEHRU NAGAR, HOSUR   ","CHOKKU PILLAI NAGAR,
SRIRAM NAGAR,
AVANIYAPURAM,
MADURAI ","873432299995","ADRPY0498A","","A-ve","2013-06-07","ASSISTANT PROFESSOR","0","CHM","81596-mrs.yuvanashree-e.jpg","21650-eaadhaar_2192502010411120161104125802_14112016131648_864377.pdf","9995","","","","60901-yuvanashree-appointment-order.pdf");
INSERT INTO chm_fac VALUES("S14CHM007","Dr.S.Jayakumar","1982-10-31","37","male","jayakmr1982@gmail.com","9894167354","R, SATTANATHAN","S.Anandavalli","y","","Hindu","Vellan che","hosur","Hosur","Krishnagiri District","Tamil Nadu","India","635109","L-187, New ASTC Hudco,
Avvai Nagar, Hour, 635109	   ","L-187, New ASTC Hudco,
Avvai Nagar, Hour, 635109	   ","770579544303","AJLPJ9485A","","B+ve","2014-02-24","Assistant Professor","9894262572","CHM","13210-pass-port.jpg","98526-scan0022.pdf","4303","","","","");
INSERT INTO chm_fac VALUES("S18CHM003","LAKSHMIPRIYA J","1993-05-21","26","female","priyachemical12@gmail.com","9003707114","S JAYARAMAN","J NAGAMANI","y","","Hindhu","BC","A KARISALKULAM","SANKARANKOVIL","TIRUNELVELI","Tamil Nadu","India","627719","NO.8, MAIN STREET, GREEN GARDEN, BHARATHIYAR NAGAR, BASTHI, HOSUR.  ","	1/106A, NORTH STREET, A. KARISALKULAM, THIRUVENGADAM (TK), TIRUNELVELI - 627719   ","755681709039","AJSPL7502R","","O+ve","2018-06-04","ASSISTANT PROFESSOR","0","CHM","93595-photo.jpg","58656-aadhar-card.pdf","9039","","","","1408-app-order.pdf");
INSERT INTO chm_fac VALUES("S18CHM004","FETCIA JACKULIN C","1992-10-19","27","female","fetcia.c@gmail.com","9445123010","A. CHRISTOPHER","C. ROSE EVANGELIN","n","","CHRISTIAN","BC","AVADI","AMBATTUR","THIRUVALLUR","Tamil Nadu","India","600055","179 A, THIRUVALLUVAR STREET, VEERAPURAM, ANNA NAGAR, MORAI- 600055	   ","179 A, THIRUVALLUVAR STREET, VEERAPURAM, ANNA NAGAR, MORAI- 600055	   ","642294011586","ACIPF2317F","","B+ve","2018-06-25","ASSISTANT PROFESSOR","9003246798","CHM","33271-fetci-photo.jpg","3258-aadhar-converted.pdf","1586","","","","66446-adhiyamaan-appointment-order.pdf");
INSERT INTO chm_fac VALUES("S18CHM005","S.YUVARAJ","1990-05-12","29","male","yuvachem08@gmail.com","9626651594","M.SANTHANAM","S.MAHESHWARI","y","","Hindhu","BC","KARUR","KARUR","KARUR","Tamil Nadu","India","639114","	7/57,EAST STREET,VEDICHIPALAYAM(PO),KARUR   ","	7/57,EAST STREET,VEDICHIPALAYAM(PO),KARUR   ","396850212557","AGHPY4090M","","O+ve","2018-06-13","ASSISTANT PROFESSOR","0","CHM","48856-yuvaraj.jpeg.jpg","12597-aadhar.pdf","2557","","","","82262-appointment-letter.pdf");
INSERT INTO chm_fac VALUES("S18CHM008","JENNIFER CHARLES","1987-10-01","32","female","cjenni1987@gmail.com","8248084680","CHARLES AROKIARAJ A","JOSEPHINE CHARLES","y","","CHRISTIAN","BC","HOSUR","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635109","5A, BHARATHIDASAN NAGAR 7TH CROSS, HOSUR	   ","60,South street, 
Nallavannian Kudikadu post, Thanjavur-614409   ","330995222443","ARDPJ4868R","","A+ve","2018-01-22","ASSISTANT PROFESSOR","0","CHM","37685-jenni-babu-pp002.jpg","58677-in.gov.uidai-adhar-330995222443.pdf","2443","","","","");
INSERT INTO chm_fac VALUES("S18CHM009","V. VENKATESHAM","1959-04-07","60","male","vuppala595@gmail.com","8073153712","V. BHAGAVAN","V. SARASWATHI","y","","HINDU","General - ","BANGALORE","BANGALORE","BANGALORE","Karnataka","India","560054","#A-206, Balaji Eternal Bliss, 2nd Cross road, Vijay Nagar, Whitefield, Bangalore - 560066	   ","#33, 9th Main road, Bandappa Garden, Muthyala Nagar, 
Bangalore – 560054   ","684503312103","ACDPV4067B","","O +ve","2018-07-16","PROFESSOR","9844031335","CHM","51073-vv-id-photo.jpg","85456-vvaadhar.pdf","2103","","","","");
INSERT INTO chm_fac VALUES("S18CHM010","Dr.Mitali Das","1976-12-12","43","female","mitali.dinesh@gmail.com","9845895180","Murari Mohan Das","Late Jharna Das","y","","Hinduism","SC","Bangalore","Bangalore","BANGALORE","Karnataka","India","560078","Flat No. 304, Block C, Mahaveer Gardenia, 32nd cross, Kumaraswamy Layout, Bangalore - 560078","Flat No. 304, Block C, Mahaveer Gardenia, 32nd cross, Kumaraswamy Layout, Bangalore - 560078","678035630379","ALQPD2734D","","A+ve","2018-06-18","Associate Professor","0","CHM","99566-mitali_das.jpg","95387-mitali-das-aadhar_001.pdf","0379","","","","");





CREATE TABLE `chm_fac_attorg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO chm_fac_attorg VALUES("1","S13CHM001","2018-2019","seminar","BIOENERGY, ENVIRONMENT AND SUSTAINABLE TECHNOLOGIE","1","0000-00-00","0000-00-00","2019-01-28","ARUNAI ENGINEERING COLLEGE","THIRUVANAMALAI","international","75743-arunai.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO chm_fac_attorg VALUES("2","S18CHM003","2015-2016","training","CFD USING ANSYS FLUENT","15","2015-06-12","2015-06-25","0000-00-00","AU-FRG INSTITUTE FOR CAD/CAM, ANNA UNIVERSITY, CHE","CHENNAI","district","9908-c-4.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO chm_fac_attorg VALUES("3","S18CHM003","2014-2015","seminar","CHENNAI WATER SUMMIT 2015","1","0000-00-00","0000-00-00","2015-03-28","ENGINEERS WITHOUT BORDERS - CHENNAI","ANNA UNIVERSITY , CHENNAI","state","19656-c-3.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO chm_fac_attorg VALUES("4","S18CHM003","2014-2015","seminar","NATIONAL CONFERENCE ON \"EMERGING TRENDS IN CHEMICA","2","2015-03-10","2015-03-11","0000-00-00","ANNA UNIVERSITY (BIT CAMPUS) - TIRUCHIRAPALLI","ANNA UNIVERSITY (BIT CAMPUS) - TIRUCHIRAPALLI","national","89987-c-5.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO chm_fac_attorg VALUES("5","S12CHM006","2016-2017","fdp","Discrete Mathematics, Modelling & Computational Te","6","2017-01-16","2017-01-21","0000-00-00","Department of Mathematics, MSRIT","Bangalore","national","39834-msrit.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO chm_fac_attorg VALUES("6","S12CHM006","2015-2016","workshop","Engineering Faculty Workshop","3","2015-06-02","2015-06-04","0000-00-00","Mission10X – Wipro ","Adhiyamaan College of Engineering","state","69968-mission-10x.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO chm_fac_attorg VALUES("7","S12CHM006","2017-2018","fdp","Application of ASPEN PLUS in Process Industries","6","2017-11-13","2017-12-18","0000-00-00","Department of Chemical Engineering, Anurag Group o","Hyderabad","national","85349-fdp-aspen-anurag-ajay.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO chm_fac_attorg VALUES("8","S12CHM006","2016-2017","workshop","Challenges and Opportunities in Modelling/Developi","1","0000-00-00","0000-00-00","2017-05-05","Department of Chemical Engineering, IISc, Bangalor","Bangalore","national","72902-iisc-workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");





CREATE TABLE `chm_fac_bkjrn` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `glkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO chm_fac_bkjrn VALUES("1","S13CHM001","2014-2015","Journal of chemical ","National Conference on Green Engineering and Techn","0974-2115","dec 201","journal of chemical and pharmaceutical sciences","special","1","","","","","","","","","","","","","");
INSERT INTO chm_fac_bkjrn VALUES("2","S13CHM001","2015-2016","","","","","","","","Acid dye degradation using electrochemical batch recirculation flow reactor","journal of Chemical and Pharmaceutical Sciences","9","1","0974-2115","scopus","www.jchps.com","1","68516-jchps-9(1)-71-selvakumar-308-312.pdf","1","1","","");
INSERT INTO chm_fac_bkjrn VALUES("3","S12CHM006","2016-2017","","","","","","","","Soxhlet extraction of Spirogyra sp. algae: an alternative fuel","BIOFUELS","8","1","1759-7277","scopus","https://www.tandfonline.com/doi/full/10.1080/17597269.2016.1196328","3","28732-tbfu_a_1196328_o-1.pdf","1","1","","");
INSERT INTO chm_fac_bkjrn VALUES("4","S12CHM006","2013-2014","","","","","","","","Continuous Column Study of Chromium (VI) Adsorption by Ion Exchange Resin","Emerging Trends in Chemical Engineering","1","2","2349-4786","ugc","http://stmjournals.com/tech/index.php?journal=TCE&page=article&op=view&path%5B%5D=131","0","57101-continuous_column_study_of_chromium__vi__131-371-1-sm_ponnaiah.pdf","0","1","","");
INSERT INTO chm_fac_bkjrn VALUES("5","S12CHM006","2014-2015","","","","","","","","STUDIES ON REMOVAL OF CU2+ FROM EFFLUENT WATER BY USING RICE HUSK","Asian Journal of Microbiology, Biotechnology & Env","17","1","0972-3005","sci","http://www.envirobiotechjournals.com/article_abstract.php?aid=5692&iid=183&jid=1","1","51242-aj---16.pdf","0","1","","");
INSERT INTO chm_fac_bkjrn VALUES("6","S14CHM007","2018-2019","High-Performance FIR","High-Performance FIR Filter Implementation Using A","978-613-9-94432-3","2018","Lambert Academic Publishing","RESEARCH","1","","","","","","","","","","","","","");
INSERT INTO chm_fac_bkjrn VALUES("7","S14CHM007","2016-2017","","","","","","","","High-Performance FIR Filter Implementation Using Anurupye Vedic Multiplier","Circuits and Systems","7","11","2153-1285","others","file.scirp.org/pdf/CS_2016091616095833.pdf","1","35889-cs_2016091616095833.pdf","1","1","","");
INSERT INTO chm_fac_bkjrn VALUES("8","S14CHM007","2016-2017","","","","","","","","Design and Implementation of Cryptographic Shared Processor using FPGA","Asian Journal of Research in Social Sciences and H","6","9","Design and Implement","others","http://www.indianjournals.com/ijor.aspx?target=ijor:ajrssh&volume=6&issue=9&article=109","0","1990-design-and-implementaion-of-cryptographic-shared-processor.pdf","0","1","","");
INSERT INTO chm_fac_bkjrn VALUES("9","S14CHM007","1987-1988","","","","","","","","Area Efficiency And High Speed Implementation of Cryptography Using Hash Function and RSA Algorithm","Advances in Natural and Applied Sciences","11","6","1995-0772","others","www.aensiweb.net/AENSIWEB/anas/anas/2017/Special%202/30-36.pdf","0","84185-30-36.pdf","0","1","","");
INSERT INTO chm_fac_bkjrn VALUES("10","S14CHM007","2016-2017","","","","","","","","Health Monitoring System For Elderly People Using Iot","Advances in Natural and Applied Sciences","11","6","1995-0772","others","www.aensiweb.net/AENSIWEB/anas/anas/2017/Special%202/26-29.pdf","0","33836-26-29.pdf","0","1","","");
INSERT INTO chm_fac_bkjrn VALUES("11","S14CHM007","","","","","","","","","","","","","","","","","","","","https://scholar.google.co.in/citations?user=zO3Z_k","1");





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
  `ph2key` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO chm_fac_edu VALUES("S12CHM006","GEETHA VIDYALAYAM HIGH SCHOOL","state","2001","83","63030-ssc.pdf","1","MILLENNIUM JUNIOR COLLEGE","state","MATHS PHYSICS CHEMISTRY","2003","85","88138-inter.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","CHAITANYA BHARATHI INSTITUTE OF TECHNOLOGY","OSMANIA UNIVERSITY","B TECH","CHEMICAL ENGINEERING","regular","2008","60","21565-b-tech-fi.pdf","1","","","","","","","","","","","","","","","","","","","AC COLLEGE OF TECHNOLOGY","ANNA UNIVERSITY","M TECH","PETROLEUM REFINING AND PETROCHEMICALS","regular","2011","7","63853-m-tech.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO chm_fac_edu VALUES("S13CHM001","PA Vidhyabhavan Hr Sec School","state","2005","96","7365-ssc-compressed.pdf","1","PA VIDYA BAVAN HR SEC SCHOOL","state","BIOLOGY MATHEMATICS","2007","83","49956-12(1)(1)_compressed.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","ANNA UINVERSITY","ANNA UNIVERSITY","B TECH","PETROCHEMICAL ENGINEERING","regular","2011","83","74968-ug.pdf","1","","","","","","","","","","","","","","","","","","","ALLAGAPPA COLLEGE OF ENGINEERING","ANNA UNIVERSITY","M TECH","PETROLEUM REFINING AND PETROCHEMICALS","regular","2013","9","82089-pg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO chm_fac_edu VALUES("S14CHM007","St. Joseph MHSS","state","1999","80","85781-sslc.pdf","1","St. Joseph MHSS","state","Mathematics, Physics, Chemistry, Computer Science","2001","78","59672-hsc.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Annamalai  University, Chidambaram","Annamalai  University, Chidambaram","B E ","Electronics & Instrumentation Engineering","regular","2005","7","91894-b-e.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO chm_fac_edu VALUES("S18CHM003","GOVERNMENT HIGH SCHOOL, ALAMANAICKERPATTI","state","2008","95","75639-10th.pdf","1","K M T G HSS, VENKATACHALAPURAM","state","MATHS - COMPUTER SCIENCE","2010","91","73199-12th.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","ERODE SENGUNTHAR ENGINEERING COLLEGE","ANNA UNIVERSITY, CHENNAI","B.Tech","CHEMICAL ENGINEERING","regular","2014","91","27491-ug.pdf","1","","","","","","","","","","","","","","","","","","","ALAGAPPA COLLEGE OF TECHNOLOGY, CHENNAI","ANNA UNIVERSITY, CHENNAI","M.Tech","PETROLEUM REFINING AND PETROCHEMICALS","regular","2016","91","84130-pg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO chm_fac_edu VALUES("S18CHM004","ST MARYS GIRLS HIGHER SECONDARY SCHOOL","state","2008","93","81008-10th-marks-sheet.pdf","1","ST MARYS GIRLS HIGHER SECONDARY SCHOOL","state","MATHS - COMPUTER SCIENCE","2010","84","66614-12th-mark-sheet.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","ERODE SENGUNTHAR ENGINEERING COLLEGE","ANNA UNIVERSITY, CHENNAI","B.Tech","CHEMICAL ENGINEERING","regular","2014","9","46542-ug-degree-certificate.pdf","1","","","","","","","","","","","","","","","","","","","SRI VENKATESWARA COLLEGE OF ENGINEERING","ANNA UNIVERSITY, CHENNAI","M. TECH","CHEMICAL ENGINEERING","regular","2016","9","6925-pg-degree-certificate.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO chm_fac_edu VALUES("S18CHM005","GURUDEVAR MATRIC HR SEC SCHOOL","state","2006","87","96474-x.pdf","1","CHERAN MATRIC HIGHER SEC SCHOOL","state","MATHS - COMPUTER SCIENCE","2008","92","65090-xii.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","KONGU ENGINEERING COLLEGE","ANNA UNIVERSITY, CHENNAI","B.Tech","CHEMICAL ENGINEERING","regular","2012","9","90040-ug-degree.pdf","1","","","","","","","","","","","","","","","","","","","MOHAMMED SATHAK ENGINNERING COLLEGE","ANNA UNIVERSITY, CHENNAI","M.Tech","CHEMICAL ENGINEERING","regular","2018","9","1184-provisional0001.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO chm_fac_edu VALUES("S18CHM008","INFANT JESUS MATRICULATION HIGHER SEC SCHOOL","state","2002","89","27779-sslc.pdf","1","INFANT JESUS MATRIC HIGHER SEC SCHOOL","state","PCMB","2004","89","77550-hsc.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","ANJALAI AMMAL MAHALINGAM ENGINEERING COLLEGE","ANNA UNIVERSITY","B TECH","CHEMICAL ENGINEERING","regular","2008","86","6186-ug-degree.pdf","1","","","","","","","","","","","","","","","","","","","A C COLLEGE OF ENGINEERING AND TECHNOLOGY,KARAIKUD","ANNA UNIVERSITY","M E","ENVIRONMENTAL ENGINEERING","regular","2012","88","73064-pg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO chm_fac_edu VALUES("S18CHM009","A P RESIDENTIAL SCHOOL SARVAIL","state","1974","77","63032-vv-ssc.pdf","1","College of Arts and Science KAMAREDDY 503111","state","PCM","1976","71","42062-vv-inter.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","OU COLLEGE OF TECHNOLOGY","OSMANIA UNIVERSITY","B TECH","CHEMICAL ENGINEERING","regular","1981","4","71295-vvbtech.pdf","1","","","","","","","","","","","","","","","","","","","Indian Institute of Science Bangalore","IISc Bangalore","M E","Chemical Engineering","regular","1983","6","55495-vv-me.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","J N T U College of Engineering Anantapur","JNTUA","Nanotechnology","Chemical Engineering","distance","2010","2014","Development of nano metal oxides and coupled metal oxides for heavy metal adsorption and photocataly","Dr S V Satyanarayana and Dr G ","46311-vv-phd-1.pdf","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO chm_fac_edu VALUES("S18CHM010","Hijli High School","state","1993","79","34559-mitali-das-10th-certificate.pdf","1","Hijli High School","state","Science","1995","65","7432-mitali-das-12th-certificate.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Jadavpur University","JU","BE","CHEMICAL ENGINEERING","regular","2000","75","79489-bachelors_degree-certificate.pdf","1","","","","","","","","","","","","","","","","","","","Jadavpur University","JU","ME","Chemical Engineering","regular","2002","74","94080-masters_degree-certificate.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","IIT Kharagpur","IIT Kharagpur","Fluidization Engineering","Chemical Engineering","regular","2002","2008","Hydrodynamics study of gas-solid single and mixed particle system in a circulating fluidized bed","Dr.B.C.Meikap and Dr.R.K.Saha","58681-phd.pdf","1","","","","","","","","","","","","","","","","","","","","","","");





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
  `otkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO chm_fac_exp VALUES("S18CHM003","ERODE SENGUNTHAR ENGINEERING COLLEGE","ASSISTANT PROFESSOR","2016-06-01","2018-04-17","MARRIAGE","51632-exp-cer.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO chm_fac_exp VALUES("S18CHM004","ERODE SENGUNTHAR ENGINEERING COLLEGE","ASSISTANT PROFESSOR","2016-07-01","2018-04-30","PERSONAL REASON","74871-esec-experience-and-salary-certificate.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");





CREATE TABLE `chm_fac_funpat` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `patkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `chm_fac_glc` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `conkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO chm_fac_glc VALUES("1","S12CHM006","2013-2014","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International conference on Re","Study on removal of Cr (VI) from Effluent from Eff","Department of Chemical Engineering, SSN College of","2","2014-02-27","2014-02-28","0000-00-00","international","","33643-ssn-conference.pdf","1");
INSERT INTO chm_fac_glc VALUES("2","S12CHM006","2013-2014","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International conference on Na","A Review on Carbon Dioxide Removal from Flue Gas u","Department of Biosciences, Hindustan Institute of ","2","2014-02-27","2014-02-28","0000-00-00","international","","69452-hindustan-conference.pdf","1");





CREATE TABLE `chm_fac_member` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `awakey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO chm_fac_member VALUES("1","S13CHM001","2018-2019","","","","","","DISCIPLINE COMMITEE","institute","1","","","","","");
INSERT INTO chm_fac_member VALUES("2","S18CHM003","2018-2019","","","","","","QUESTION BANK UPLOAD IN MCA DEPARTMENT","department","1","","","","","");
INSERT INTO chm_fac_member VALUES("3","S18CHM003","2018-2019","","","","","","ASSISTANT TIME TABLE COORDINATOR","department","1","","","","","");
INSERT INTO chm_fac_member VALUES("4","S18CHM005","2018-2019","","","","","","TUTOR FOR 2018-2022 BATCH ","department","1","","","","","");
INSERT INTO chm_fac_member VALUES("5","S12CHM006","2018-2019","","","","","","BoS MEMBER","department","1","","","","","");
INSERT INTO chm_fac_member VALUES("6","S12CHM006","2018-2019","","","","","","NBA, NAAC WORK","institute","1","","","","","");
INSERT INTO chm_fac_member VALUES("7","S14CHM007","2018-2019","","","","","","placement","institute","1","","","","","");
INSERT INTO chm_fac_member VALUES("8","S14CHM007","2018-2019","","","","","","tutor for 2016-2020","department","1","","","","","");
INSERT INTO chm_fac_member VALUES("9","S14CHM007","2018-2019","","","","","","NBA, NAAC","institute","1","","","","","");





CREATE TABLE `chm_fac_ot_qual` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `intake1` int(5) DEFAULT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `name_qual` varchar(100) DEFAULT NULL,
  `year_com` int(10) DEFAULT NULL,
  `cer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `chm_fac_resg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `j_sup` varchar(50) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
  `app_order` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO civ_fac VALUES("S07CIV010","SURESH BABU S","1963-03-18","56","male","SUNISURP@GMAIL.COM","9994227629","SIDDAIAH","SHANTHAMMA","y","","HINDU","OC","TUMKUR","TUMKUR","TUMKUR","Karnataka","India","572102","#109 Crystal Cove, SJR Prime Corp, Maragondanahalli
Near Govt. School, Electronic City, Phase-I 
B","SRI SIDDESHWARA KRUPA 1ST MAIN, 1ST CROSS ASHOK NAGAR, TUMKUR
Karnataka-572 102
","776704101411","AQWPS2068Q","K8801469","O+VE","2007-06-14","PROFESSOR & HEAD","0","CIV","82882-suresh-babu.jpg","75570-aadhar-converted.pdf","1411","","","","13496-salary-slip-ace.pdf");
INSERT INTO civ_fac VALUES("S11CIV008","JEGIDHA K J","1980-07-21","39","female","jegi.kj@gmail.com","9444714847","KRISHNADHAS S","JAYA KRISHNADHAS C","y","","HINDU","HINDU NADA","HOSUR","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635109","NO.106, TREND CITY,
CHITHANAPALLI,
NALLUR ROAD,
HOSUR.
   ","NO.106, TREND CITY,
CHITHANAPALLI,
NALLUR ROAD,
HOSUR.
   ","773197416392","ASNPJ7508B","","B+ve","2011-01-03","ASSISTANT PROFESSOR","0","CIV","28616-jegidha-photo.jpeg","41674-jegidha-aadhar-pdf.pdf","6392","","","","");
INSERT INTO civ_fac VALUES("S12CIV003","S.ROOPANKUMAR","1980-09-12","39","male","s.roopankumar@gmail.com","9159848444","M.SANKARAN","S.RAJESHWARI","y","","HINDU","BC","KRISHNAGIRI","DHARMAPURI","KRISHNAGIRI","Tamil Nadu","India","635111","35E, VASANTHA NAGAR,KARIMANGALAM(PO), DHARMAPURI(DT) 635111   ","35E, VASANTHA NAGAR,KARIMANGALAM(PO), DHARMAPURI(DT) 635111   ","271648492285","AMSPR8718G","NIL","B+","2012-07-18","ASSISTANT PROFESSOR","8122592195","CIV","50619-22.mr.-s.-roopan-kumar.png","83140-roopan.pdf","2285","","","","");
INSERT INTO civ_fac VALUES("S13CIV007","M.VENKOBRAO","1988-12-08","31","male","vko.civil@gmail.com","9894094466","MADEVARAO.M","RENUMATHI .M","y","","HINDU","BC","krishnagiri","KRISHNAGIRI","KRISHNAGIRI","Tamil Nadu","India","635115","	2/160 THALAVAIPALLI
SAMANTHAMALAI (POST)
 RAMAPURAM (VIA)
KRISHNAGIRI 635115   ","	2/160 THALAVAIPALLI
SAMANTHAMALAI (POST)
 RAMAPURAM (VIA)
KRISHNAGIRI 635115   ","213723649991","AUPPV5607B","N8482504","O+ve","2013-06-14","ASSISTANT PROFESSOR","0","CIV","62858-jj.jpg","55154-venkob-rao-1.pdf","9991","","","","");
INSERT INTO civ_fac VALUES("S14CIV001","SETHURAMAN                    ","1984-03-17","35","male","shanram83@gmail.com","9894523983","SHANMUGAM","MALARKODI","y","","HINDU","MBC","KRISHNAGIRI","KRISHNAGIRI","KRISHNAGIRI","Tamil Nadu","India","635001","	2/262 G KAMARAJ NAGAR PEDDALAPALLI 
        KRISHNAGIRI 635001  ","	2/262 G KAMARAJ NAGAR PEDDALAPALLI 
        KRISHNAGIRI 635001  ","255925915212","DTSPS4218G","","O+ve","2014-06-06","ASSISTANT PROFESSOR","0","CIV","88230-sethuimage.jpg","21051-adhar-card.pdf","5212","","","","");
INSERT INTO civ_fac VALUES("S14CIV009","THIRUMALAI R","1991-02-16","28","","thirumalai063@gmail.com","9444967647","RAMAKRISHNAN S","BANUMATHI R","y","","HINDU","BC","KRISHNAGIRI","KRISHNAGIRI","KRISHNAGIRI","","India","635206","C/O SREE RAMAYAYAM ELECTRICALS 
POCHAMAPALAI 
KRISHNAGIRI DT "," C/O SREE RAMAYAYAM ELECTRICALS 
POCHAMAPALAI 
KRISHNAGIRI DT ","934100529041","AOTPT7627K","NIL","B+","2014-06-06","ASSISTANT PROFESSOR","0","CIV","27035-thirumalai.jpeg","98262-malai-aadhar.pdf","civil113","","","","");
INSERT INTO civ_fac VALUES("S14CIV012","Nandini Devi","1980-04-26","39","female","gdevi80@gmail.com","8124363645","G","G","n","","HINDU","MBC","HOSUR","Hosur","Krishnagiri","Tamil Nadu","India","635109","A 305 Seven Hills Charriot Apartment
Brindhavan Nagar
Bagalur Road	   ","A 305 Seven Hills Charriot Apartment
Brindhavan Nagar
Bagalur Road	   ","214044270939","ABWPN1459M","","o +ve","2014-07-21","PROFESSOR","0","CIV","31518-nd.jpg","28989-aadhaar_my.pdf","0939","","","","22868-6_ace-hosur.pdf");
INSERT INTO civ_fac VALUES("S16CIV004","KATHIRVEL M","1992-11-14","27","male","kathirvelnaren@gmail.com","9788316897","MUNUSAMY M","KALAIVANI M","y","","HINDU","BC","KRISHNAGIRI","KRISHNAGIRI","KRISHNAGIRI","Tamil Nadu","India","635122","3/87, GANGALERI (PO & VILL),
KRISHNAGIRI (DT & TK)-635122   ","3/87, GANGALERI (PO & VILL),
KRISHNAGIRI (DT & TK)-635122   ","779223796199","DBEPK2878E","","O-VE","2016-06-13","ASSISTANT PROFESSOR","0","CIV","65650-kathir-photo.jpg","35115-kathir-aadhar.pdf","6199","","","","3573-kathir-appointment.pdf");
INSERT INTO civ_fac VALUES("S16CIV005","SRIHARI ","1990-06-16","29","male","bickolsrihari@gmail.com","9994750742","MURTHY","MALLIGA","y","","HINDU","BC","OOTY","OOTY","THE NILGIRIS","Tamil Nadu","India","643203","	8-197-2 , BICKOL VILLAGE,BALACOLA POST,OOTY   ","	   ","633054703222","EDFPS9415D","","B+","2016-06-13","ASSISTANT PROFESSOR","0","CIV","69571-photo-2---copy.jpg","86947-aadhar-p.pdf","3222","","","","56644-appointment-ace.pdf");
INSERT INTO civ_fac VALUES("S16CIV006","S DEVI","1989-12-07","30","female","sdevicivil@gmail.com","9843105501","K SUBBURAJ","S DHANALAKSHMI","y","","HINDU","BC","HOSUR","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635109","	   662/13 VOC NAGAR,
CHENNATHUR POST, SANASANDIRAM, HOSUR","	   662/13 VOC NAGAR,
CHENNATHUR POST, SANASANDIRAM, HOSUR","861238507612","CNMPD3644Q","","A1+","2016-06-13","ASSISTANT PROFESSOR","0","CIV","45711-photo.jpg","99186-adhaar-pdf.pdf","7612","","","","27676-003.pdf");
INSERT INTO civ_fac VALUES("S91CIV011","YESHODHA L","1964-07-10","55","female","yesocivil123@yahoo.co.in","9976719889","LINGA B","PARVATHI M","y","","HINDU","SC","HOSUR","BANGALORE","BANGALORE","Karnataka","India","635130","108 HIG PHASE 9 TNHB NEAR RAILWAY STATION, HOSUR	   ","108 HIG PHASE 9 TNHB NEAR RAILWAY STATION, HOSUR	   ","346261951498","ABEPL3027B","","B+VE","1991-08-09","PROFESSOR","0","CIV","94593-yeso-photo.jpeg","29364-yeso-adhar.pdf","1498","","","","11522-12.pdf");
INSERT INTO civ_fac VALUES("S94CIV013","N.S.MADHU","1966-03-26","53","male","manasa66raja@gmail.com","9448519491","N.SHIVASHANKAR RAO","N.S.LALITHA","y","","HINDU","BRAHMIN","BANGALORE","BANGALORE","BANGALORE","Karnataka","India","560083","	  NO.21 N.S.ENGLISH COUNTY
JIGANI ROAD, BANNERGHATTA 
BANGLORE-83","	  NO.21 N.S.ENGLISH COUNTY
JIGANI ROAD, BANNERGHATTA 
BANGLORE-83","266974578975","AKLPM4305K","","A+ve","1994-12-12","ASSOCIATE PROFESSOR","0","CIV","22040-7.prof.-n.s.madhu.jpeg","72707-convert-jpg-to-pdf.net_2019-04-26_08-52-09.pdf","8975","","","","");





CREATE TABLE `civ_fac_attorg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

INSERT INTO civ_fac_attorg VALUES("1","S91CIV011","2003-2004","workshop","national workshop of interlinking of rivers , conc","1","0000-00-00","0000-00-00","2003-06-04","Bangalore University","Bangalore","national","16362-15.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("2","S91CIV011","2003-2004","sdp","water conservation and watershed management","12","2004-03-01","2004-03-12","0000-00-00","school of Engineering,cochin university of science","Kerala","national","70280-17.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("3","S91CIV011","2003-2004","seminar","Natural resources management on sustainable develo","2","2004-03-12","2004-04-12","0000-00-00","Bangalore University","Bangalore","national","90044-16.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("4","S91CIV011","2003-2004","workshop","utilization of renewable source of energy in educa","1","0000-00-00","0000-00-00","2004-01-10","Adhiyamaan College of Engineering","Hosur","national","82102-18.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("5","S91CIV011","2005-2006","workshop","Recents trends in civil Engineering","2","2005-07-28","2005-07-29","0000-00-00","Adhiyamaan College of Engineering","Hosur","national","28249-19.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("6","S91CIV011","2005-2006","sdp","Remote sensing,GIS,GPS Application for modern surv","5","2006-03-20","2006-03-24","0000-00-00","Adhiyamaan College of Engineering","Hosur","national","40888-20.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("7","S91CIV011","2006-2007","workshop","Management of contemporary enivironment issues for","2","2006-09-20","2006-09-21","0000-00-00","KSR Rngasamy College of Technology","Thirchengodu","national","94687-21.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("8","S91CIV011","2006-2007","seminar","Cleaner development Mechanisum","1","0000-00-00","0000-00-00","2006-12-29","Government College of Technology","Coimbatore","national","6760-21.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("9","S91CIV011","2006-2007","sdp","Principles of RS and GIS ","6","2007-03-12","2007-03-17","0000-00-00","Indian Institute of Science","Bangalore","national","82967-23.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("10","S91CIV011","2006-2007","workshop","Integrated water resources management","2","2007-02-05","2007-02-07","0000-00-00","Karnataka Environment and Research Foundation","Bangalore","international","99688-24.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("11","S91CIV011","2008-2009","fdp","Water quality modelling and Management","6","2008-06-16","2008-06-21","0000-00-00","NIT","Warangal","national","9494-25.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("12","S91CIV011","2009-2010","training","Diasater Risk Mangement Programme","1","0000-00-00","0000-00-00","2009-12-07","Government College of Technology","Coimbatore","national","7174-26.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("13","S91CIV011","2011-2012","fdp","Small and Medium Towns , A holistic Approach using","15","2011-06-13","2011-06-27","0000-00-00","Adhiyamaan College of Engineering","Hosur","national","47819-27.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("14","S91CIV011","2012-2013","workshop","Impact of climate  on water resources ","2","2012-08-17","2012-08-18","0000-00-00","Karunya University","Coimbatore","international","58598-28-(1).pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("15","S91CIV011","2013-2014","workshop","iNTEGRATED WATER, WASTE WATER ANS ISOTOPE HYDROLOG","3","2013-07-25","2013-07-27","0000-00-00","Bangalore University","Bangalore","international","96459-29.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("16","S91CIV011","2014-2015","seminar","New intiatives -Drinking water sector","3","2014-06-17","2014-06-19","0000-00-00","Indian water works Association","Bangalore","national","56108-30.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("17","S91CIV011","2015-2016","workshop","Advanced Non destructive testing of structures","1","0000-00-00","0000-00-00","2015-09-11","Adhiyamaan College of Engineering","Hosur","national","8905-32.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("18","S91CIV011","2014-2015","seminar","Sustainable practices in Civil Engineering","3","2015-04-16","2015-04-18","0000-00-00","KPR Institute of Engineering and Technology","Coimbatore","international","47288-34.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("19","S91CIV011","2016-2017","seminar","Sustainable practices in Civil Engineering","2","2017-04-10","2017-04-11","0000-00-00","KPR Institute of Engineering and Technology","Coimbatore","international","35526-33.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("20","S91CIV011","2017-2018","seminar","Recent trends in Environmental science and Enginee","1","0000-00-00","0000-00-00","2017-12-16","APS College of Engineering","Bangalore","international","80440-36.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("21","S16CIV006","2017-2018","fdp","IMPACT OF CLIMATE CHANGE ON NATURAL ENVIRONMENT AN","14","2017-11-27","2017-12-09","0000-00-00","Adhiyamaan College of Engineering, Department of C","Hosur","national","73424-001-converted.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("22","S91CIV011","2017-2018","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","fdp","Impact of climate change on natural environment an","AICTE","14","2017-11-27","2017-12-09","0000-00-00","SPEAKERS FROM VARIOUS INSTITUI","50","national","5129-brochur.jpg","1");
INSERT INTO civ_fac_attorg VALUES("23","S91CIV011","2018-2019","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","workshop","Geophysical techniques for groundwater exploration","civil engineering department","2","2018-08-24","2018-08-25","0000-00-00","SPEAKERS FROM VARIOUS INSTITUI","42","state","68983-workshop.jpg","1");
INSERT INTO civ_fac_attorg VALUES("24","S14CIV012","2002-2003","workshop","Design of Buildings to resist earthquake loads","12","2002-07-20","2002-07-21","0000-00-00","Building Technology Center, Anna University, Chenn","Chennai","national","17046-image-(443).pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("25","S14CIV012","2002-2003","workshop","Analysis and Detailing of Seismic Resistant RC Str","1","0000-00-00","0000-00-00","2002-08-03","V.L.B. Janakiammal College of Engineering and Tech","Coimbatore","national","4251-image-(441).pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("26","S14CIV012","2003-2004","workshop","Damage, Diagnosis, Repair and Rehabilitation of Co","1","0000-00-00","0000-00-00","2003-09-26","Coimbatore Institute of Technology, Coimbatore and","Coimbatore","national","49197-image-(440).pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("27","S14CIV012","2004-2005","workshop","Construct Structures that Don’t Deteriorate – ","1","0000-00-00","0000-00-00","2004-06-28","Coimbatore Institute of Technology, Coimbatore and","Coimbatore","national","97195-image-(438).pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("28","S14CIV012","2004-2005","workshop","Earthquake Engineering and Design","2","2004-10-01","2004-10-02","0000-00-00","Kongu Engineering College, Perundurai, Erode","Erode","national","81258-image-(442).pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("29","S14CIV012","2004-2005","workshop","Design of High Strength and High Performance Concr","1","0000-00-00","0000-00-00","2005-02-01","Coimbatore Institute of Technology, Coimbatore and","Coimbatore","national","50550-image-(437).pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("30","S14CIV012","2005-2006","workshop","Dynamics and Non – Destructive Testing of Struct","1","0000-00-00","0000-00-00","2005-07-29","Coimbatore Institute of Technology, Coimbatore and","Coimbatore","national","95500-image-(439).pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("31","S14CIV012","2009-2010","workshop","Applications of Nanotechnology in Civil Engineerin","1","0000-00-00","0000-00-00","2009-09-18","Jerusalem College of Engineering","Chennai","national","32840-image-(446).pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("32","S14CIV012","2013-2014","workshop","R&D Project Proposals – Awareness, Needs and Ben","1","0000-00-00","0000-00-00","2013-06-28","Centre for Technology Development & Transfer, Anna","Chennai","national","52023-image-(445).pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("33","S14CIV012","2014-2015","fdp","Decision Making Skills","2","2015-04-20","2015-04-21","0000-00-00","ICT Academy of Tamilnadu, Chennai at Adhiyamman Co","Hosur","national","56421-image-(433).pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO civ_fac_attorg VALUES("34","S14CIV012","2017-2018","fdp","Impact of Climatic Change on Natural Environment a","12","2017-11-27","2017-12-09","0000-00-00","Adhiyamaan College of Engineering, Hosur, sponsore","Hosur","national","39673-image-(436).pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");





CREATE TABLE `civ_fac_bkjrn` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `glkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

INSERT INTO civ_fac_bkjrn VALUES("1","S14CIV001","","","","","","","","","","","","","","","","","","","","SETHURSMAN SHANMUGAM","1");
INSERT INTO civ_fac_bkjrn VALUES("2","S16CIV004","","","","","","","","","","","","","","","","","","","","https://scholar.google.co.in/citations?user=_9V6YD","1");
INSERT INTO civ_fac_bkjrn VALUES("3","S16CIV004","2018-2019","","","","","","","","SCRUTINIZING THE MECHANICAL ATTRIBUTES OF SELF-CURING CONCRETE","CIKITUSI JOURNAL FOR MULTIDISCIPLINARY RESEARCH","6","4"," 0975-6876","ugc","http://www.cikitusi.com/gallery/4-april-679.pdf","0","58721-4-april-679.pdf","6","1","","");
INSERT INTO civ_fac_bkjrn VALUES("4","S16CIV004","2018-2019","","","","","","","","Smart Sensing Techniques for Health Monitoring of Existing Bridge","International Journal of Engineering and Technique","5","2","2395-1303 ","ugc","http://www.ijetjournal.org/volume5/issue2/IJET-V5I2P21.pdf","0","3203-ijet-v5i2p21.pdf","6","1","","");
INSERT INTO civ_fac_bkjrn VALUES("5","S16CIV004","2017-2018","","","","","","","","ANALYTICAL AND EXPREMENTAL BEHAVIOUR OF COLD FORMED STEEL SIGMA AND Z SECTION PURLIN CONNECTIONS","International Journal of Technical Innovation in M","4","3"," 2455-2585","ugc","http://ijtimes.com/papers/finished_papers/150326084444.pdf","0","35432-150326084444.pdf","3","1","","");
INSERT INTO civ_fac_bkjrn VALUES("6","S16CIV004","2017-2018","","","","","","","","FLEXURAL RESPONSE OF HYBRID FRC BEAMS ","International Journal of Technical Innovation in M","4","3","2455-2585","ugc","http://ijtimes.com/papers/finished_papers/150323183407N.pdf","0","10295-150323183407n.pdf","3","1","","");
INSERT INTO civ_fac_bkjrn VALUES("7","S16CIV004","2017-2018","","","","","","","","Cause Analyses of River Water Quality Deterioration a Case Study of South Pennar River in Krishnagir","INTERNATIONAL JOURNAL OF ENGINEERING RESEARCH & TE","6","10","2278-0181","scopus,ugc","https://www.ijert.org/research/cause-analyses-of-river-water-quality-deterioration-a-case-study-of-s","0","90531-cause-analyses-of-river-water-quality-deterioration-a-case-study-of-south-pennar-river-in-kris","8","1","","");
INSERT INTO civ_fac_bkjrn VALUES("8","S16CIV004","1987-1988","","","","","","","","Behaviour of Steel Concrete Composite Columns under Lateral Load","International Journal of Advanced Structures and G","6","1","2319-5347","ugc","http://basharesearch.com/IJASGE/1060102.pdf","0","99599-1060102.pdf","3","1","","");
INSERT INTO civ_fac_bkjrn VALUES("9","S07CIV010","","","","","","","","","","","","","","","","","","","","https://scholar.google.com/citations?user=7iiM8gwA","1");
INSERT INTO civ_fac_bkjrn VALUES("10","S16CIV006","2016-2017","","","","","","","","DURABILITY OF CONCRETE BY ADDING BASALT FIBRE","International Research Journal of Engineering and ","4","9","e-ISSN: 2395-0056","others","https://www.irjet.net/volume4-issue9","14","2922-irjet-v4i9281.pdf","6","1","","");
INSERT INTO civ_fac_bkjrn VALUES("11","S16CIV006","1987-1988","","","","","","","","EXPERIMENTAL ANALYSIS OF SELF CURING CONCRETE BY USING POLYETHYLENE GLYCOL","International Research Journal of Engineering and ","4","10","e-ISSN: 2395-0056","others","https://www.irjet.net/volume4-issue10","14","29987-self-curing.pdf","6","1","","");
INSERT INTO civ_fac_bkjrn VALUES("12","S16CIV006","2016-2017","","","","","","","","STRENGTH PERFORMANCE OF MODIFIED BRICKS","International Research Journal of Engineering and ","4","10","e-ISSN: 2395-0056","others","https://www.irjet.net/volume4-issue10","14","34950-bricks.pdf","6","1","","");
INSERT INTO civ_fac_bkjrn VALUES("13","S16CIV006","2018-2019","","","","","","","","Experimental Investigation of beam with Partial replacement of Press mud.","International Journal of Engineering and Technique","5","2","ISSN: 2395-1303","others","www.ijetjournal.org/volume5/issue2/IJET-V512P27.pdf","12","33536-ijet-v5i2p27.pdf","6","1","","");
INSERT INTO civ_fac_bkjrn VALUES("14","S16CIV006","2018-2019","","","","","","","","Torsional Irregularity of Building","International Journal of Innovative Research in Sc","8","3","ISSN(Online): 2319-8","others","DOI:10.15680/IJIRSET.2019.0802112","23","63006-112_torsional.pdf","7","1","","");
INSERT INTO civ_fac_bkjrn VALUES("15","S16CIV006","2017-2018","","","","","","","","DEM OF ST. PETER’S MEDICAL COLLEGE CAMPUS","International Journal of Creative Research Thought","6","1","ISSN: 2320-2882","ugc","www.ijcrt.org/IJCRT1872257.pdf","21","36416-ijcrt1872257.pdf","6","1","","");
INSERT INTO civ_fac_bkjrn VALUES("16","S91CIV011","2010-2011","","","","","","","","MODELLING OF GROUND WATER POTENTIAL ZONES USING REMOTE SENSING AND GIS TECHNIQUE : A CASE STUDY FOR ","Journal of Environmental Research And Development ","5","1","2319-5983","sci","http://www.jerad.org/dispabstract.php?vID=524","0","16903-jeraddlid0076vol005issue001.pdf","4","1","","");
INSERT INTO civ_fac_bkjrn VALUES("17","S91CIV011","2006-2007","","","","","","","","Study of Physico-Chemical Characteristics of Groundwater for Hosur Block, Krishnagiri District, Tami","Nature Environment and Pollution Technology","8","2","0972-6268","ugc","http://www.neptjournal.com/upload-images/NL-4-34-(34)B-1301com.pdf","0","25891-nl-4-34-(34)b-1301com.pdf","0","1","","");
INSERT INTO civ_fac_bkjrn VALUES("18","S91CIV011","2015-2016","","","","","","","","Design of Storm Water Drainage System to Enhance Ground Water Level-A Case Study on Hosur Inner Ring","Bonfring International Journal of Industrial Engin","5","3","2277-5056","ugc","http://www.journal.bonfring.org/papers/iems/volume5/BIJ-8034.pdf","ICR","6965-bij-8034.pdf","1","1","","");
INSERT INTO civ_fac_bkjrn VALUES("19","S91CIV011","2017-2018","","","","","","","","Asset Mapping for Rural Development: A Case Study for Nagondapalli Panchayat, Hosur Block","International Journal for Research in Applied Scie","6","4","2321-9653;","ugc","www.ijraset.com/fileserve.php?FID=16400","45.98","73877-fileserve.pdf","60887","1","","");
INSERT INTO civ_fac_bkjrn VALUES("20","S91CIV011","2018-2019","","","","","","","","Socio-Economic Status of Kothagodapalli Panchayat, Hosur block, Krishnagiri district, Tamilnadu. (Ca","International Journal of Engineering Development a","7","1","2321-9939","ugc","ijedr.org/papers/IJEDR1901088.pdf","0","10074-ijedr1901088.pdf","6","1","","");
INSERT INTO civ_fac_bkjrn VALUES("21","S91CIV011","2015-2016","","","","","","","","Site Selection for Urban Solid Waste Disposal Using Remote Sensing and Open Source GIS In Krishnagir","International Journal for Innovative Research in S","2","10","2349-6010","sci","http://www.ijirst.org/articles/IJIRSTV2I10079.pdf","71.12","59540-ijirstv2i10079.pdf","4","1","","");
INSERT INTO civ_fac_bkjrn VALUES("22","S91CIV011","2015-2016","","","","","","","","Watershed Based Morphometric Analysis of South Pennar River Basin, Krishnagiri District, Tamil Nadu ","International Journal for Innovative Research in S","2","11","2349-6010","sci","http://www.ijirst.org/articles/IJIRSTV2I10079.pdf","71.12","99323-ijirstv2i11195.pdf","4","1","","");
INSERT INTO civ_fac_bkjrn VALUES("23","S91CIV011","2012-2013","","","","","","","","Comparative Analysis for Estimation of Groundwater Potential A-Case Study for Hosur Block, Krishnagi","International Journal for Innovative Research in S","1","5","2321-1156","ugc","http://ijirts.org/volume1issue5/IJIRTSV1I5012.pdf","71.12","65483-ijirstv2i11195.pdf","4","1","","");
INSERT INTO civ_fac_bkjrn VALUES("24","S91CIV011","2009-2010","","","","","","","","MODELLING OF GROUND WATER POTENTIAL ZONES USING REMOTE SENSING AND GIS TECHNIQUE : A CASE STUDY FOR "," Journal of Environmental Research And Development","1","5","2319-5983","nil","http://www.jerad.org/ppapers/dnload.php?vl=5&is=1&st=76","0","33962-jeraddlid0076vol005issue001.pdf","4","1","","");
INSERT INTO civ_fac_bkjrn VALUES("25","S91CIV011","2010-2011","","","","","","","","Geospatial Modelling of Groundwater Fluctuation Using Remote Sensing and GIS - A Case Study for Hosu","Nature Environment and Pollution Technology","9","3",": 0972-6268","sci","http://www.neptjournal.com/upload-images/NL-14-14-(14)B-1541com.pdf","32.64","44785-nl-14-14-(14)b-1541com.pdf","2","1","","");
INSERT INTO civ_fac_bkjrn VALUES("26","S91CIV011","2010-2011","","","","","","","","Assessment of Groundwater Potential in Hosur Union in Krishnagiri District, Tamil Nadu, India","Nature Environment and Pollution Technology","9","4",": 0972-6268 ","sci","http://www.neptjournal.com/upload-images/NL-20-6-(6)-B-1542.pdf","45.98","16596-nl-20-6-(6)-b-1542.pdf","2","1","","");
INSERT INTO civ_fac_bkjrn VALUES("27","S91CIV011","2015-2016","","","","","","","","Rainfall- Runoff Modelling Using SCS-CN Method: A Case Study of Krishnagiri District, Tamilnadu","International Journal of Science and Research (IJS","5","3","2319-7064","sci","www.ijsr.net/archive/v5i3/NOV162365.pdf","6.14","6579-nov162365.pdf","6","1","","");
INSERT INTO civ_fac_bkjrn VALUES("28","S91CIV011","1987-1988","","","","","","","","WATER QUALITY INDEX FOR HOSUR BLOCK KRISHNAGIRI DISTRICT, TAMIL NADU, INDIA","em international","30","3","0257-8050","sc0pus","http://www.envirobiotechjournals.com/article_","71.12","36623-poll-research.pdf","5","1","","");
INSERT INTO civ_fac_bkjrn VALUES("29","S11CIV008","1987-1988","","","","","","","","EXPERIMENTAL INVESTIGATION ON SELF HEALING CONCRETE BEAMS USING BACTERIA","International Research Journal of Engineering and ","6","2","2395-0056","scopus","https://www.irjet.net/"," 15, 14","46035-irjet-v6i2368-suk.pdf","7","1","","");
INSERT INTO civ_fac_bkjrn VALUES("30","S14CIV012","2017-2018","","","","","","","","Response of Concrete Beam with GFRP Rebar to Corrosion","International Journal of Emerging Trends & Technol","6","6","2278-6856","others","Thomson Reuters","o","3185-ijettcs-6.pdf","7","1","","");
INSERT INTO civ_fac_bkjrn VALUES("31","S14CIV012","2017-2018","","","","","","","","Durability Characteristics of GFRP rebar in Concrete","International Journal of Emerging Trends & Technol","6","6","2278-6856","others","Thomson Reuters","0","69169-ijettcs-5.pdf","7","1","","");
INSERT INTO civ_fac_bkjrn VALUES("32","S14CIV012","2017-2018","","","","","","","","Durability Characteristics of Reinforced Concrete Column","International Journal of Emerging Trends & Technol","6","6","2278-6856","others","Thomson Reuters","0","36443-ijettcs-4.pdf","7","1","","");
INSERT INTO civ_fac_bkjrn VALUES("33","S14CIV012","2017-2018","","","","","","","","Performance of Concrete Column with GFRP Rebar Under Axial Loading","International Journal of Emerging Trends & Technol","6","6","2278-6856","others","Thomson Reuters","0","43357-ijettcs-3.pdf","7","1","","");
INSERT INTO civ_fac_bkjrn VALUES("34","S14CIV012","2017-2018","","","","","","","","Study on Behaviour of Nano Concrete","International Journal of Emerging Trends and Techn","6","5","2278-6856","others","Thomson Reuters","0","34676-ijettcs-2.pdf","7","1","","");
INSERT INTO civ_fac_bkjrn VALUES("35","S14CIV012","2016-2017","","","","","","","","Structural Performance Of HYFRC Beam Reinforced With GFRP Rebar Under Flexure","International Journal of Application or Innovation","6","3","2319 – 4847","others","Thomson Reuters","0","21661-ijaiem-3.pdf","7","1","","");
INSERT INTO civ_fac_bkjrn VALUES("36","S14CIV012","2016-2017","","","","","","","","Experimental Study on GFRC Beam Reinforced with GFRP Rebar Under Flexure","International Journal of Emerging Trends & Technol","6","2","2278-6856","others","Thomson Reuters","0","90929-ijettcs-2.pdf","8","1","","");
INSERT INTO civ_fac_bkjrn VALUES("37","S14CIV012","2016-2017","","","","","","","","Development of High Quality No Fine Concrete","Journal of Advances in Natural Sciences","3","2","2393-9257","others","google","0","38829-development-of-high-quality-no-fine-concrete-_-devi-_-journal-of-advances-in-natural-sciences.","0","1","","");
INSERT INTO civ_fac_bkjrn VALUES("38","S14CIV012","2016-2017","","","","","","","","Study on Strength Characteristics of Hybrid Fibre Reinforced Concrete with Mineral Admixtures","Science and Engineering Applications JFIPS","1","3","2456-2793","others","google","0","95466-3-saea-issn-2456-2793-3.pdf","0","1","","");
INSERT INTO civ_fac_bkjrn VALUES("39","S14CIV012","2015-2016","","","","","","","","Seismic Demand Study Of Soft Storey Building And It’s Strengthening For Seismic Resistance","International Journal of Emerging Trends & Technol","5","2","2278-6856","others","Thomson Reuters","3","70539-ijettcs-1.pdf","6","1","","");
INSERT INTO civ_fac_bkjrn VALUES("40","S14CIV012","2015-2016","","","","","","","","Seismic Demand of Reinforced Concrete Structural Systems","International Journal of Application or Innovation","5","3","2319 – 4847","others","Thomson Reuters","0","98813-ijaiem-2.pdf","5","1","","");
INSERT INTO civ_fac_bkjrn VALUES("41","S14CIV012","2015-2016","","","","","","","","Seismic Demand of Steel Structural Systems","International Journal of Application or Innovation","5","3","2319-4847","others","google","0","76927-ijaiem-1.pdf","5","1","","");
INSERT INTO civ_fac_bkjrn VALUES("42","S14CIV012","2015-2016","","","","","","","","Seismic Demand Study on Steel Structural systems using Pushover analysis-An overview","International Journal of Advanced Information Scie","42","42","2319-2682","others","google","0","90261-seismic-demand-study-on-steel-structural-systems-using-pushover-analysis-an-overview.pdf","3","1","","");
INSERT INTO civ_fac_bkjrn VALUES("43","S14CIV012","2015-2016","","","","","","","","Seismic Demand Study on RC Structural Systems using Pushover Analysis - An Overview","International Journal of Innovative Research in Sc","4","10","2319-8753","others","google","0","22877-32_seismic.pdf","5","1","","");
INSERT INTO civ_fac_bkjrn VALUES("44","S14CIV012","2015-2016","","","","","","","","A Review on Study on Strengthening of Soft Storey Building for Seismic Resistance","International Journal of Innovative Research in Sc","4","10","2319-8753","others","google","3","90533-a_review.pdf","5","1","","");
INSERT INTO civ_fac_bkjrn VALUES("45","S14CIV012","2015-2016","","","","","","","","Flexural Behaviour of Concrete Beams Reinforced with GFRP Reinforcements","International Journal of Advanced Information Scie","39","39","2319-2682","scopus","google","0","73910-flexural-behaviour-of-concrete-beams-reinforced-with-gfrpreinforcements.pdf","3","1","","");
INSERT INTO civ_fac_bkjrn VALUES("46","S14CIV012","2015-2016","","","","","","","","Fiber Reinforced Polymer Reinforcing Bars in Concrete Structures","International Journal of Innovative Research in Sc","4","6","2319-8753","others","google","0","37989-fiber.pdf","5","1","","");
INSERT INTO civ_fac_bkjrn VALUES("47","S14CIV012","2014-2015","","","","","","","","Fiberglass Rebar (GFRP) as replacement of Steel Reinforcement in R.C Structures","International Journal for Research in Science and ","3","6","2319-2690","others","google","0","15950-ijrsat-vol3-issue6-0005.pdf","3","1","","");
INSERT INTO civ_fac_bkjrn VALUES("48","S14CIV012","2014-2015","","","","","","","","Experimental Study on Properties of Glass Fibre Reinforced Self-Compacting Concrete","International Journal of Earth Sciences and Engine","7","5","0974 5904","scopus","google","0","88347-ijee1.pdf","0","1","","");
INSERT INTO civ_fac_bkjrn VALUES("49","S14CIV012","2014-2015","","","","","","","","Comparative Analysis of Soft Storey Mechanism Using Different Codal Standards","International Journal of Current Research (IJCR)","6","9","0975-833X","others","google","0","65817-journal_paper.pdf","4","1","","");
INSERT INTO civ_fac_bkjrn VALUES("50","S14CIV012","2011-2012","","","","","","","","Experimental Investigations on Reinforced Concrete Lateral Load Resisting Systems under Lateral Load","Experimental Techniques","35","4","0732-8818","sci, scopus","google","3","92606-j.1747-1567.2010.00634.x.pdf","1","1","","");
INSERT INTO civ_fac_bkjrn VALUES("51","S11CIV008","2018-2019","","","","","","","","EXPERIMENTAL INVESTIGATION ON SELF HEALING CONCRETE BEAMS USING BACTERIA","International Research Journal of Engineering and ","6","2","ISSN: 2395-0056","scopus","https://www.irjet.net/","15,14","22066-irjet-v6i2368-suk.pdf","7","1","","");
INSERT INTO civ_fac_bkjrn VALUES("52","S11CIV008","2017-2018","","","","","","","","STRENGTHENING OF CONCRETE BEAM BY REINFORCING WITH GEOSYNTHETIC MATERIALS","International Journal of Advance Engineering and R","5","3","2348-4470 / 2348-640","scopus","http://ijaerd.com/","1","39818-journal-2018-dhana.pdf","6","1","","");
INSERT INTO civ_fac_bkjrn VALUES("53","S11CIV008","2016-2017","","","","","","","","Experimental Study on Behaviour of Steel Fiber Reinforced Concrete","nternational Journal of Engineering Science and Co","7","3","2321 3361","others","http://ijesc.org/","1","80615-experimental-study-on-behaviour-of-steel-fiber-reinforced-concrete.pdf","6","1","","");
INSERT INTO civ_fac_bkjrn VALUES("54","S11CIV008","2015-2016","","","","","","","","Review on Seismic Design of Multistoreyed RC Building using various Cod","International Journal of Innovative Science, Engin","2","10"," 2348 – 7968","scopus","www.ijiset.com","8","27381-ijiset_v2_i10_09-pame.pdf","5","1","","");
INSERT INTO civ_fac_bkjrn VALUES("55","S11CIV008","2015-2016","","","","","","","","seismic Design of Multistoreyed RC Building using various Codes","International Journal of Research in Engineering a","5","2","2319-1163 / 2321-730","others","http://www.ijret.org","-","51525-ijret20160502057-pame.pdf","2","1","","");
INSERT INTO civ_fac_bkjrn VALUES("56","S11CIV008","2015-2016","","","","","","","","Analytical Study on Seismic Performance Of Rc Frames InFilled With Masonry Walls Using E-Tabs","International Journal of Innovative Science, Engin","2","10","2348 – 7968","scopus","www.ijiset.com","1","37611-ijiset_v2_i10_18-arul.pdf","5","1","","");
INSERT INTO civ_fac_bkjrn VALUES("57","S11CIV008","2015-2016","","","","","","","","BEHAVIOUR OF 3D RC FRAMES WITH MASONRY INFILL UNDER EARTHQUAKE LOADS- AN ANALYTICAL STUDY USING E-TA","International Journal of Research in Engineering a","5","2","2319-1163 / 2321-730","others","http://www.ijret.org","-","12962-ijret20160502048-arul.pdf","2","1","","");





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
  `ph2key` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO civ_fac_edu VALUES("S07CIV010","Karnataka Secondary Education Examination Board","state","1978","64","15524-sslc-marksheet.pdf","1","Karnataka Secondary Education Examination Board","state","Science","1978","64","29844-sslc-marksheet.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Bangalore University","Bangalore University","Bachelor of Engineering","Civil","regular","1985","63","56040-be-degree.pdf","1","","","","","","","","","","","","","","","","","","","Gulbarga University","Gulbarga University","Master of Engineering","Geotechnical Engineering","regular","1991","71","98167-me-degree.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","National Institute of Technology  Karnataka, Surat","National Institute of Technology  Karnataka, Surat","Soil Structure Interaction","Civil","parttime","2002-03","2007-03","Some Studies on Foundation on Granular Beds Overlying Weak Grounds","R. Shivashankar","91502-ph.d-degree.pdf","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO civ_fac_edu VALUES("S11CIV008","DUTHI GIRLS H S S NAGERCOIL","state","1995","90","25293-sslc-front-converted.pdf","1","ST JOSEPHS CONVENT GIRLS HSS NAGERCOIL","state","MATHS WITH BIOLOGY","1997","81","22486-hsc-converted.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","THE INDIAN ENGINEERING COLLEGE VADAKKANKULAM","MANONMANIAM SUNDARANAR UNIVERESITY","B E","CIVIL ENGINEERING","regular","2001","72","13319-be-degree-front-converted.pdf","1","","","","","","","","","","","","","","","","","","","MEPCO SCHLENK COLLEGE OF ENGINEERING SIVAKASI","ANNA UNIVERSITY","M.E","STRUCTURAL ENGINEERING","regular","2006","75","6035-me-degree-front-converted.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO civ_fac_edu VALUES("S12CIV003","goverment boys hss karimangalam","state","1996","62","85676-roopan-xth-converted.pdf","1","TAGORE MATRIC HSS, DEVIYAKURCHI","state","MATHS, BIOLOGY","1998","63","11330-roopan-xiith-converted.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","ADHIYAMAAN COLLEGE OF ENGINEERING","PERIYAR","B.E","CIVIL ENGINEERING","regular","2003","58","24628-convert-jpg-to-pdf.net_2019-04-16_10-48-17.pdf","1","","","","","","","","","","","","","","","","","","","ANNAMALAI","ANNAMALAI UNIVERSITY","M.E","CONSTRUCTION ENGINEERING AND MANAGEMENT","regular","2005","71","51465-mr.-s.-roopan-kumar_3.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO civ_fac_edu VALUES("S13CIV007","DON BOSCO MATRIC HIGHER SECONDARY SCHOOL ,KRISHNAG","state","2004","75","38899-sslc-rao-converted_reduce.pdf","1","DONBOSCO MATRIC HIGHER SECONDARY SCHOOL KRISHNAGIR","state","MATHS, BIOLOGY","2006","77","31242-hsc-rao-converted_compressed.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","M.N.M JAIN ENGG COLLEGE ,CHENNAI","ANNA UNIVERSITY ","BE","CIVIL ENGINEERING ","regular","2010","78","63315-ug-rao-converted_compressed.pdf","1","","","","","","","","","","","","","","","","","","","k.s.r college of engineering ","ANNA UNIVERSITY ","ME","construction engineering and management ","regular","2013","9","91371-pg-rao--converted_compressed.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO civ_fac_edu VALUES("S14CIV001","Govt.Hr.Sec.Scl Lakkiyampatti","state","1999","82","92004-10-th.compressed.pdf","1","Govt.Hr.Sec.Scl Lakkiyampatti","state","MATHS - BIOLOGY","2001","73","53563-12-th.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","K.S.Rangasamy College of Technology, Tiruchengode","Anna University, Chennai","BE "," (Civil Engg.)","regular","2006","72","1173-ug-degree1.pdf","1","","","","","","","","","","","","","","","","","","","College of Engg, Guindy, Anna University, Chennai","Anna University, Chennai","ME ","(Environmental Engg.)","regular","2010","8","19775-pg-degree.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO civ_fac_edu VALUES("S14CIV009","PVE SCHOOL","state","2006","70","35201-10-rt.pdf","1","PVE SCHOOL","state","MATHS, COMPUTER","2008","70","78580-12-rt.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","ADHIYAMAAN COLLLEGE OF ENGINEERING","ANNA UNIVERSITY ","BE","CIVIL ENGINEERING ","regular","2012","7","77766-ug--compressed.pdf","1","","","","","","","","","","","","","","","","","","","SONA COLLEGE OF TECHNOLOGY","ANNA UNIVERSITY ","ME","STRUCTURAL ENGINEERING ","regular","2014","8","44192-pg-tr.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO civ_fac_edu VALUES("S14CIV012","krishnammal higher secondary school","state","1995","91","54700-sslc_1.pdf","1","krishnammal higher secondary school","state","MATHS, BIOLOGY","1997","83","28075-hsc_1.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Coimbatore institute of technology","Bharathiyar ","BE","CIVIL ENGINEERING ","regular","2001","88","80972-be_1.pdf","1","","","","","","","","","","","","","","","","","","","Coimbatore Institute of Technology","Bharathiyar","ME","STRUCTURAL ENGINEERING ","regular","2003","88","42980-me_1.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","Anna University","Anna ","Civil Engineering","civil Engineering","regular","2004-01","2010-02","Structural Performance of Multi-Storey Reinforced Concrete Framed Shear Wall for Seismic Resistance ","Subramanian","30670-phd_1.pdf","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO civ_fac_edu VALUES("S16CIV004","MTV MATRIC HR SEC SCHOOL","state","2008","70","64476-img060_compressed.pdf","1","CAMBRIDGE MAT HR SEC SCHOOL","state","MPCC","2010","72","55778-img058.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","JAYALAKSHMI INSTITUTE OF TECHNOLOGY","ANNA UNIVERSITY","B.E","CIVIL ENGINEERING","regular","2014","7","96819-img063_compressed.pdf","1","","","","","","","","","","","","","","","","","","","NANDHA ENGINEERING COLLEGE","ANNA UNIVERSITY","M.E","STRUCTURAL ENGINEERING","regular","2016","8","68198-kathir-pg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO civ_fac_edu VALUES("S16CIV005","KENDRIYA VIDYALAYA , OOTY","cbse","2006","87","29174-10..10th.pdf","1","BREEEKS MEMORIAL ANGLO INDIAN HIGHER SECONDARY SCH","state","MATHS WITH COMPUTER SCIENCE","2008","93","26050-9.12th.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","GOVERNMENT COLLEGE OF TECHNOLOGY,COIMBATORE","ANNA UNIVERSITY","B.E.","CIVIL ENGINEERING","regular","2012","76","54821-7.b.e-degree-cert..pdf","1","","","","","","","","","","","","","","","","","","","CSI COLLEGE OF ENGINEERING, KETTI","ANNA UNIVERSITY","M.E.","STRUCTURAL ENGINEERING","regular","2016","8","87110-m.e.-certificate.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO civ_fac_edu VALUES("S16CIV006","SEVENTH DAY ADVENTIST MATRICULATION HIGHER SECONDA","state","2006","86","62845-10-th.pdf","1","SEVENTH DAY ADVENTIST MATRICULATION HIGHER SECONDA","state","MATHS WITH BIOLOGY","2008","89","86935-12-th.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","ADHIYAMAAN COLLEGE OF ENGINEERING HOSUR","ANNA UNIVERSITY ","B.E ","CIVIL ENGINEERING","regular","2012","10","46111-be.pdf","1","","","","","","","","","","","","","","","","","","","ADHIYAMAAN COLLEGE OF ENGINEERING,HOSUR","ANNA UNIVERSITY","M.E","STRUCTURAL ENGINEERING","regular","2016","9","21632-me.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO civ_fac_edu VALUES("S91CIV011","ST.ANNES GIRLS HIGH SCHOOL","state","1983","55","28326-convert-jpg-to-pdf.net_2019-04-23_07-49-08.pdf","1","JOTHI NIVAS COLLEGE","state","MATHS WITH BIOLOGY","1982","58","9988-convert-jpg-to-pdf.net_2019-04-23_07-53-42.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","BMS COLLEGE OF ENGINEERING","BANGLORE UNIVERSITY","B.E","CIVIL ENGINEERING","regular","1988","63","62758-dr.-l.-yeshodha_2.pdf","1","","","","","","","","","","","","","","","","","","","VISVESHWARAIH COLLEGE OF ENGINEERING ","BANGLORE UNIVERSITY","M.E","WATER RESOURCE ENGINEERING","regular","1997","72","43013-dr.-l.-yeshodha_1.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","GCT, COIMBATORE","ANNA UNIVERSITY","WATER RESOURCES","","parttime","2005-03","2012-01","GROUND WATER MODELLING AND MANAGEMENT FOR HOSUR, HOSUR TALUK, KRISHNAGIRI DISTRICT, TAMILNADU","DR.T.MEENAMBAL","87702-dr.-l.-yeshodha_3.pdf","1","","","","","","","","","","","","","","","","","","","","","","");





CREATE TABLE `civ_fac_exp` (
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
  `otkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO civ_fac_exp VALUES("S07CIV010","Erode Sengunthar Engineering College, Erode.","Professor & Head of The Depart","2004-11-22","2007-05-31","Promotion","Kongu Engineering College, Perundurai, Erode.","Assistant Professor","2000-09-11","2004-05-31","Promotion as Professor & Head of The Department","VIT University, Vellore","Associate Professor","1997-12-15","1999-11-12","Due to family grounds","Anjuman Engineering College,  North Canara Dt.","Assistant Professor","1995-03-06","1997-12-14","Promotion as Associate Professor","","","0000-00-00","0000-00-00","","0000-00-00","0000-00-00","0000-00-00","0000-00-00","24157-erode-sengunthar-salary-certificate.pdf","4","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO civ_fac_exp VALUES("S14CIV012","sree sastha college of engineering and technology","Associate professor","2013-05-29","2014-07-12","personal","skp engg college","Associate professor","2010-04-01","2012-12-17","personal","arunai engg college","lecturer","2008-08-20","2010-03-18","personal","kavery engg college","lecturer","2006-10-03","2008-07-31","personal","coimbatore insitute of technology","lecturer","2003-02-11","2006-09-21","personal","0000-00-00","0000-00-00","0000-00-00","0000-00-00","52334-5_ssiet.pdf","5","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");





CREATE TABLE `civ_fac_funpat` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `patkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO civ_fac_funpat VALUES("1","S91CIV011","2013-2014","Sustainable groundwater resources management for H","2 YEARS","3,50,000/-","ugc","2014-03-17","Dr H kARIBASSAPPA","2016-03","94867-image-(12).jpg","0","1","","","","","");
INSERT INTO civ_fac_funpat VALUES("2","S91CIV011","2016-2017","Natural resources/Asset mapping using geospatial t","2 YEARS","9,00,000/-","DST","2016-10-10","B.M. Purshotham","0","57989-image-(9).jpg","0","1","","","","","");
INSERT INTO civ_fac_funpat VALUES("3","S14CIV012","2017-2018","Development of Design Guidelines  for structural c","2 years","425000","UGC","2017-11-15","NA","0","60842-sanc.pdf","0","1","","","","","");





CREATE TABLE `civ_fac_glc` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `conkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO civ_fac_glc VALUES("1","S91CIV011","2016-2017","faculty development program","1","0000-00-00","0000-00-00","2017-04-17","environmental Management for sustainable developme","Banariamman imstitute of Technology","Sathayamangalam","0","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","");





CREATE TABLE `civ_fac_member` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `awakey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;

INSERT INTO civ_fac_member VALUES("1","S14CIV001","2014-2015","","","","","","INDUSTRIAL VISIT CO ORDINATOR","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("2","S14CIV001","2015-2016","","","","","","INDUSTRIAL VISIT CO-ORDINATOR","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("3","S14CIV001","2016-2017","","","","","","INDUSTRIAL VISIT CO-ORDINATOR","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("4","S14CIV001","2017-2018","","","","","","INDUSTRIAL VISIT CO-ORDINATOR","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("5","S14CIV001","2018-2019","","","","","","INDUSTRIAL VISIT CO-ORDINATOR","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("6","S16CIV006","2017-2018","","","","","","CAD LAB IN CHARGE","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("7","S16CIV006","2018-2019","","","","","","CAD LAB IN CHARGE","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("8","S16CIV004","2016-2017","","","","","","AUDIT INCHARGE","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("9","S16CIV004","2017-2018","","","","","","AUDIT INCHARGE","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("10","S16CIV004","2018-2019","","","","","","AUDIT INCHARGE","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("11","S11CIV008","2012-2013","","","","","","STRENGTH OF MATERIALS LAB IN CHARGE","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("12","S11CIV008","2013-2014","","","","","","STRENGTH OF MATERIALS LAB IN CHARGE","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("13","S91CIV011","1991-1992","Indian Society for technical education","LM 10107","Life member","58415-13.pdf","1","","","","","","","","");
INSERT INTO civ_fac_member VALUES("14","S91CIV011","2013-2014","The institution of Engineers ( India)","F-118663-5","Life member","17546-14.pdf","1","","","","","","","","");
INSERT INTO civ_fac_member VALUES("15","S16CIV006","2015-2016","The institution of Engineers ( India)","AM-158802-0","Life member","35881-002.pdf","1","","","","","","","","");
INSERT INTO civ_fac_member VALUES("16","S91CIV011","2008-2009","","","","","","internal BOS member","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("17","S91CIV011","2009-2010","","","","","","internal BOS member","","1","","","","","");
INSERT INTO civ_fac_member VALUES("18","S91CIV011","2010-2011","","","","","","internal BOS member","","1","","","","","");
INSERT INTO civ_fac_member VALUES("19","S91CIV011","2011-2012","","","","","","internal BOS member","","1","","","","","");
INSERT INTO civ_fac_member VALUES("20","S91CIV011","2012-2013","","","","","","internal BOS member","","1","","","","","");
INSERT INTO civ_fac_member VALUES("21","S91CIV011","2013-2014","","","","","","internal BOS member","","1","","","","","");
INSERT INTO civ_fac_member VALUES("22","S91CIV011","2014-2015","","","","","","internal BOS member","","1","","","","","");
INSERT INTO civ_fac_member VALUES("23","S91CIV011","2015-2016","","","","","","internal BOS member","","1","","","","","");
INSERT INTO civ_fac_member VALUES("24","S91CIV011","2016-2017","","","","","","internal BOS member","","1","","","","","");
INSERT INTO civ_fac_member VALUES("25","S91CIV011","2017-2018","","","","","","internal BOS member","","1","","","","","");
INSERT INTO civ_fac_member VALUES("26","S91CIV011","2018-2019","","","","","","internal BOS member","","1","","","","","");
INSERT INTO civ_fac_member VALUES("27","S91CIV011","2010-2011","","","","","","Internal auditor for Academic audit Anna Universit","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("28","S91CIV011","2011-2012","","","","","","Internal auditor for Academic audit Anna Universit","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("29","S91CIV011","2012-2013","","","","","","Internal auditor for Academic audit Anna Universit","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("30","S91CIV011","2013-2014","","","","","","Internal auditor for Academic audit Anna Universit","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("31","S91CIV011","2014-2015","","","","","","Internal auditor for Academic audit Anna Universit","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("32","S91CIV011","2015-2016","","","","","","Internal auditor for Academic audit Anna Universit","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("33","S91CIV011","2016-2017","","","","","","Internal auditor for Academic audit Anna Universit","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("34","S91CIV011","2017-2018","","","","","","Internal auditor for Academic audit Anna Universit","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("35","S91CIV011","2013-2014","","","","","","Department NBA INCHARGE","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("36","S91CIV011","2016-2017","","","","","","Department NBA INCHARGE","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("37","S91CIV011","2017-2018","","","","","","Department NBA INCHARGE","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("38","S91CIV011","2010-2011","","","","","","Deoartment Alumini coordinator","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("39","S91CIV011","2011-2012","","","","","","Deoartment Alumini coordinator","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("40","S91CIV011","2012-2013","","","","","","Deoartment Alumini coordinator","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("41","S91CIV011","2013-2014","","","","","","Deoartment Alumini coordinator","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("42","S91CIV011","2014-2015","","","","","","Deoartment Alumini coordinator","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("43","S91CIV011","2015-2016","","","","","","Deoartment Alumini coordinator","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("44","S91CIV011","2016-2017","","","","","","Deoartment Alumini coordinator","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("45","S91CIV011","2016-2017","","","","","","Deoartment Alumini coordinator","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("46","S91CIV011","2017-2018","","","","","","Deoartment Alumini coordinator","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("47","S91CIV011","2018-2019","","","","","","Deoartment Alumini coordinator","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("48","S91CIV011","2010-2011","","","","","","Civil Engineering Associatio (ICAN)n Coordinator","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("49","S91CIV011","2013-2014","","","","","","Civil Engineering Associatio (ICAN)n Coordinator","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("50","S91CIV011","2014-2015","","","","","","Civil Engineering Associatio (ICAN)n Coordinator","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("51","S91CIV011","2016-2017","","","","","","Civil Engineering Association Coordinator (ICAN)","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("52","S91CIV011","2017-2018","","","","","","Civil Engineering Association Coordinator (ICAN)","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("53","S91CIV011","2014-2015","","","","","","ORGAZIED NATIONAL LEVEL TECHNICAL SYMPOSIUM ","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("54","S91CIV011","2015-2016","","","","","","Organized national level technical symposuim","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("55","S91CIV011","2016-2017","","","","","","Organized national level technical symposuim","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("56","S91CIV011","2017-2018","","","","","","Organized national level technical symposuim","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("57","S91CIV011","2018-2019","","","","","","Organized national level technical symposuim","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("58","S91CIV011","2009-2010","","","","","","Guided TNSST PROJECT  for UG student","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("59","S91CIV011","2016-2017","","","","","","External resource person for Faculty devlopment pr","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("60","S91CIV011","2000-2001","","","","","","External examiner for anna university exams","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("61","S91CIV011","2001-2002","","","","","","External examiner for anna university exams","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("62","S91CIV011","2002-2003","","","","","","External examiner for anna university exams","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("63","S91CIV011","2003-2004","","","","","","External examiner for anna university exams","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("64","S91CIV011","2004-2005","","","","","","External examiner for anna university exams","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("65","S91CIV011","2005-2006","","","","","","External examiner for anna university exams","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("66","S91CIV011","2006-2007","","","","","","External examiner for anna university exams","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("67","S91CIV011","2007-2008","","","","","","External examiner for anna university exams","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("68","S91CIV011","2008-2009","","","","","","External examiner for anna university exams","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("69","S91CIV011","2009-2010","","","","","","External examiner for anna university exams","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("70","S91CIV011","2010-2011","","","","","","External examiner for anna university exams","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("71","S91CIV011","2012-2013","","","","","","External examiner for anna university exams","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("72","S91CIV011","2013-2014","","","","","","External examiner for anna university exams","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("73","S91CIV011","2014-2015","","","","","","External examiner for anna university exams","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("74","S91CIV011","2015-2016","","","","","","External examiner for anna university exams","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("75","S91CIV011","2017-2018","","","","","","External examiner for anna university exams","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("76","S91CIV011","2015-2016","","","","","","Question paper seeting for JNTUU","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("77","S91CIV011","2016-2017","","","","","","Question paper seeting for JNTUU","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("78","S91CIV011","2017-2018","","","","","","Question paper seeting for JNTUU","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("79","S91CIV011","2017-2018","","","","","","Question paper seeting for JNTUU","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("80","S91CIV011","2018-2019","","","","","","Question paper seeting for JNTUU","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("81","S91CIV011","2014-2015","","","","","","Question paper seeting for Karunya university","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("82","S91CIV011","2015-2016","","","","","","Question paper seeting for Karunya university","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("83","S91CIV011","2016-2017","","","","","","Question paper seeting for Karunya university","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("84","S91CIV011","2013-2014","","","","","","Question paper seeting for Sona College","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("85","S91CIV011","2014-2015","","","","","","Question paper seeting for Sona College","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("86","S91CIV011","2015-2016","","","","","","Question paper seeting for Sona College","out","1","","","","","");
INSERT INTO civ_fac_member VALUES("87","S91CIV011","2016-2017","","","","","","Question paper seeting for Sona College","","1","","","","","");
INSERT INTO civ_fac_member VALUES("88","S11CIV008","2014-2015","","","","","","SRTENGTH OF MATERIALS LAB IN CHARGE","","1","","","","","");
INSERT INTO civ_fac_member VALUES("89","S11CIV008","2016-2017","","","","","","HYDRAULICS LAB IN CHARGE","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("90","S11CIV008","2017-2018","","","","","","CONCRETE MATERIALS LAB IN CHARGE","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("91","S14CIV012","2009-2010","The Indian Society for Technical Education (ISTE)","LM69819","Life","34814-image.pdf","1","","","","","","","","");
INSERT INTO civ_fac_member VALUES("92","S14CIV012","2012-2013","Institution of Engineers (IE)","M-146399-8","Life","29471-image1.pdf","1","","","","","","","","");
INSERT INTO civ_fac_member VALUES("93","S14CIV012","2014-2015","","","","","","Member BOS","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("94","S14CIV012","2015-2016","","","","","","Member BOS","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("95","S14CIV012","2016-2017","","","","","","Member BOS","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("96","S14CIV012","2017-2018","","","","","","Member BOS","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("97","S14CIV012","2018-2019","","","","","","Member BOS","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("98","S14CIV012","2015-2016","","","","","","Student Project Coordinator - PG","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("99","S14CIV012","2016-2017","","","","","","Student Project Coordinator - PG","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("100","S14CIV012","2017-2018","","","","","","Student Project Coordinator - PG","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("101","S14CIV012","2018-2019","","","","","","Student Project Coordinator - PG","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("102","S14CIV012","2016-2017","","","","","","Student Project Coordinator - UG","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("103","S14CIV012","2015-2016","","","","","","Student Project Coordinator - UG","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("104","S14CIV012","2018-2019","","","","","","NBA - Critera 3","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("105","S14CIV012","2016-2017","","","","","","NAAC - Criteria 3","institute","1","","","","","");
INSERT INTO civ_fac_member VALUES("106","S14CIV012","2016-2017","","","","","","Tutor Coordinator - UG, PG ","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("107","S14CIV012","2017-2018","","","","","","Tutor Coordinator - UG, PG","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("108","S14CIV012","2018-2019","","","","","","Tutor Coordinator - UG, PG","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("109","S13CIV007","2013-2014","","","","","","EXTENSIVE SURVEY CAMP OFFICER ","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("110","S13CIV007","2014-2015","","","","","","EXTENSIVE SURVEY CAMP OFFICER ","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("111","S13CIV007","2015-2016","","","","","","EXTENSIVE SURVEY CAMP OFFICER ","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("112","S13CIV007","2016-2017","","","","","","EXTENSIVE SURVEY CAMP OFFICER ","department","1","","","","","");
INSERT INTO civ_fac_member VALUES("113","S13CIV007","2017-2018","","","","","","EXTENSIVE SURVEY CAMP OFFICER ","department","1","","","","","");





CREATE TABLE `civ_fac_ot_qual` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `intake1` int(5) DEFAULT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `name_qual` varchar(100) DEFAULT NULL,
  `year_com` int(10) DEFAULT NULL,
  `cer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `civ_fac_resg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `j_sup` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
  `app_order` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO cse_fac VALUES("S01CSE009","Dr. M. Lilly Florence","1974-03-20","45","female","lilly_swamy@yahoo.co.in","9487819149","Maria Adaickalam","Arul Arockia Mary","y","","Christian","BC","Hosur","Hosur","Krishnagiri","Tamil Nadu","India","635109","	   M1/42, New ASTC Hudco
Hosur","	   M1/42, New ASTC Hudco
Hosur","656478349777","ABSPL4660L","","B+ve","2001-06-01","Professor","0","CSE","52094-lilly.jpg","14079-aadhar-lilly.pdf","9777","","","","3834-appoinment-order.pdf");
INSERT INTO cse_fac VALUES("S07CSE014","B. GOPINATHAN","1983-03-29","36","male","gopinathanme@gmail.com","9894245636","B. BAKKIYA NATHAN","B. RATHINAMALA","y","","Hindu","B.C","Hosur","Hosur","Krishnagiri","Tamil Nadu","India","635109","	Plot No. 15, Swagath Residencies, Sipcot - II Backside, Moranapalli, Hosur.   ","	   33/E, First Lane, Kaspa - A, Main Road, Ambur. Vellore District. Tamilnadu","652331748778","ASDPB3465B","","O+ve","2007-08-17","Assistant Professor","0","CSE","41312-gopi.jpg","10987-gopi-aadhar-652331748778.pdf","8778","","","","64889-b.gopinathan---appointment-order.pdf");
INSERT INTO cse_fac VALUES("S08CSE001","MANIKANDAN","1983-11-20","36","male","manikandanm10@gmail.com","9944352965","MUTHAIYAN","JANATHA","y","","HINDU","MBC","TINDIVANAM","TINDIVANAM","VILLUPURAM","Tamil Nadu","India","604001","	 NO:29 SWAGATH LAYOUT
MORANAPALLI  ","	NO:29 SWAGATH LAYOUT
MORANAPALLI   ","411613211570","AWKPM254OD","","B+ve","2008-07-28","ASSISTANT PROFESSOR","0","CSE","42490-manikandan.jpg","11084-manikandan.pdf","1570","","","","");
INSERT INTO cse_fac VALUES("S08CSE011","Dr. D. GEETHA ","1978-04-04","41","female","dgeetha78@yahoo.com","9047227334","DAYALAN K","KRISHNAVENI D","y","","HINDU","BC","HOSUR","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635109","	   H/26, RAINBOW GARDEN, TNHB PHASE SIX, BAGALUR ROAD, HOSUR - 635109","	   ","643575754545","ALRPG4024E","","A +ve","2008-06-06","ASSOCIATE PROFESSOR / CSE","0","CSE","35635-geetha_new1.jpg","91770-aadhaar_geetha.pdf","4545","","","","42116-appointment-order.pdf");
INSERT INTO cse_fac VALUES("S09CSE013","MALAR K","1982-12-27","37","female","malar.ks.mythreya26@gmail.com","9600846785","KARTHIKEYAN T","VALLI K","y","","HINDU","BC","Hosur","Hosur","Krishnagiri","Tamil Nadu","India","635130","Plot No-84,
Akila Gardens,
Near New Municipal Office,
Bagalur Road-635130	   ","Plot No-84,
Akila Gardens,
Near New Municipal Office,
Bagalur Road-635130	   ","419933380695","BAGPM3963R","","O+ve","2009-06-22","Assistant Professor","0","CSE","25803-malar-photo.jpg","22373-aadhar_malar.pdf","0695","","","","");
INSERT INTO cse_fac VALUES("S10CSE015","Dr.V.JANANI","1982-06-10","37","female","vajjiram.janani@gmail.com","9994204499","Mr.L.Vajjiram","Mrs.V.Valarmathy","y","","Hindu","SC","Hosur","Hosur","Krishnagiri","Tamil Nadu","India","635130","	   Plot No.44,Swagath Residencies,SIPCOT II Backside,Kumudepalli Post,Hosur","	   Plot No.44,Swagath Residencies,SIPCOT II Backside,Kumudepalli Post,Hosur","954266891740","ALVPJ4901B","","O+ve","2010-06-11","ASSOCIATE PROFESSOR","0","CSE","54847-janani_photo-for-csi.jpg","17435-janani-aadhaar-card.pdf","1740","","","","96006-appointment-order-janani.pdf");
INSERT INTO cse_fac VALUES("S10CSE017","Dr.W GRACY THERESA","1983-09-14","36","female","sunphin14@gmail.com","9600583768","T.William James","W.SanthoshMary","y","","Christian","BC","hosur","HOSUR","HOSUR","Tamil Nadu","India","635109","HIG 174, TNHB, PHASE VII, BRINDAVAN NAGAR","HIG 174, TNHB, PHASE VII, BRINDAVAN NAGAR","225291551459","ALQPT2605K","","B+ve","2010-08-02","Assistant Profeswsor","0","CSE","92411-photo2.jpg","46777-gracy-aadhar.pdf","1459","","","","26294-grace(appoint).pdf");
INSERT INTO cse_fac VALUES("S11CSE010","KARTHICK RAGHUNATH K M","1986-06-28","33","male","raguaut@gmail.com","9952445562","K. MURUGESAN","D.A.KALYANI","y","","HINDU","VANNIYAR","KAVERIPATTINAM","KRISHNAGIRI","KRISHNAGIRI","Tamil Nadu","India","635112","	 46/1,KOTTAI STREET,
KAVERIPATTINAM-PO,
KRISHNAGIRI-DT.  ","	 46/1,KOTTAI STREET,
KAVERIPATTINAM-PO,
KRISHNAGIRI-DT.  ","839543471397","BBEPK4221K","","O -ve","2011-06-08","ASSISTANT PROFESSOR","9865858596","CSE","66530-photo2.jpg","70896-karthick-raghunath-aadhar-pdf.pdf","1397","","","","");
INSERT INTO cse_fac VALUES("S11CSE016","M.RAMESHKUMAR","1988-05-30","31","male","cegramesh@gmail.com","9486142135","M.MUTHIAH","M VIMALA","y","","HINDU","SC","TENKASI","TIRUNELVELI","TIRUNELVELI","Tamil Nadu","India","627811","L 89 / 482 HOUSING BOARD
TENKASI
TIRUNELVELI DIST	   ","L 89 / 482 HOUSING BOARD
TENKASI
TIRUNELVELI DIST	   ","875531068266","BDOPR3603Q","","A+","2011-06-08","ASSISTANT PROFESSOR","0","CSE","90030-ramesh-photo-red.jpeg","20253-ramesh-aadhar.pdf","8266","","","","91437-convert-jpg-to-pdf.net_2019-05-08_10-32-38.pdf");
INSERT INTO cse_fac VALUES("S12CSE005","VIVEKANANDHAN","1986-03-25","33","male","acevivek7677@gmail.com","9345458588","C.VIJAYARANGAN","V.SHANTHI","y","","HINDU","SC","KRISHNAGIRI","KRISHNAGIRI","KRISHNAGIRI","Tamil Nadu","India","635001","4/42,DEVASAMUTHIRAM(VILL)
KRISHNAGIRI (POST)
TAMILNADU-635001
","4/42,DEVASAMUTHIRAM(VILL)
KRISHNAGIRI (POST)
TAMILNADU-635001
","205001698341","AKSPV5383M","","A+ve","2012-06-18","ASSISTANT PROFESSOR","0","CSE","10536-photo.jpg","59724-vivek.pdf","8341","","","","79133-img005.jpg");
INSERT INTO cse_fac VALUES("S12CSE007","J DHIVYA MERLIN","1984-05-03","35","female","dhivyamerlin@gmail.com","9786276273","M.JAMES","V.LILLY MARY","y","","CHRISTIAN","BC","HOSUR","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635109","	23/6B, FIRST MAIN
VASANTH NAGAR, HOSUR   ","	23/6B, FIRST MAIN
VASANTH NAGAR, HOSUR   ","727034098459","BKGPD7608Q","","A+ve","2012-06-18","ASSISTANT PROFESSOR","0","CSE","89286-divya-merlin.jpg","5721-dhivya-merlin-aadhar.pdf","8459","","","","");
INSERT INTO cse_fac VALUES("S13CSE004","KANIMOZHIVEENA E","1989-03-06","30","female","kani.veena@gmail.com","7598844600","P. ELANGO","E. JAYANTHI","y","","HINDU","BC","KRISHNAGIRI","KRISHNAGIRI","KRISHNAGIRI","Tamil Nadu","India","635001","	   167, BANGALORE ROAD,
KRISHNAGIRI - 635001","	   167, BANGALORE ROAD,
KRISHNAGIRI - 635001","383379118001","BTFPK7065L","","O+VE","2013-06-07","ASSISTANT PROFESSOR","0","CSE","84278-kani_photo.jpg","37386-kani-aadhar.pdf","8001","","","","71879-appointment-order.pdf");
INSERT INTO cse_fac VALUES("S13CSE006","INDIRA R","1988-11-04","31","female","indicse@gmail.com","9677782183","RAMACHANDRAN G","TAMILARASI R","n","","HINDU","BC","HOSUR","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635109","C 23,
THALLY HUDCO,
HOSUR - 635109	   ","C 23,
THALLY HUDCO,
HOSUR - 635109	   ","245075216398","ADRPI3034Q","","B+ve","2013-07-06","ASSISTANT PROFESSOR","0","CSE","48769-1.jpg","28845-aadhaar-new1-compressed.pdf","6398","","","","");
INSERT INTO cse_fac VALUES("S18CSE008","VENKATESH","1990-10-11","29","male","venkimahalakshmi10@gmail.com","9952722086","PALANI","LAKSHMI","n","","HINDU","AGAMUDAIYA","KRISHNAGIRI","KRISHNAGIRI","KRISHNAGIRI","Tamil Nadu","India","635001","76 A ,POOGAVANAM STREET,NEWPET,KRISHNAGIRI","	   ","438023272845","ALQPV7750H","","B+ve","2018-08-01","ASSISTANT PROFESSOR","0","CSE","91752-247-a.jpg","10598-copy-of-aadharcard.pdf","2845","","","","");
INSERT INTO cse_fac VALUES("S18CSE012","ARCHANA","1989-01-28","30","female","archu2fly@gmail.com","9789611356","MUNIRAJ","JALAJA","y","","hindu","OC","HOSUR","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635109","D.No-3/732, Thottagiri
Road, AlasanathaM, 
Hosur-635109   ","D.No-3/732, Thottagiri
Road, AlasanathaM, 
Hosur-635109   ","399965736626","BJJPA3970Q","","O+ve","2013-06-07","ASSISTANT PROFESSOR","0","CSE","85455-archu.jpg","70473-eaadhaar_archana.pdf","6626","","","","78835-new-doc-2019-05-09-14.58.31.pdf");
INSERT INTO cse_fac VALUES("S97CSE011","G Fathima","1972-11-01","47","female","fathima.ace@gmail.com","9487819132","A. Md. Ghouse","Nargis","y","","Muslim","B.C","Hosur","Hosur","Krishnagiri","Tamil Nadu","India","635126","105/F3 Gopi Garden,
Krishna Nagar,
Hosur- 635130.
","105/F3 Gopi Garden,
Krishna Nagar,
Hosur- 635130.
","219204435357","AAJPF3919Q","","B-ve","1997-06-16","Professor","0","CSE","33834-photo-fathima.jpg","42067-aadhar-card-fathima.pdf","5357","","","","");





CREATE TABLE `cse_fac_attorg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

INSERT INTO cse_fac_attorg VALUES("1","S01CSE009","2006-2007","fdp","Cryptography and Network Security","15","2006-12-04","2006-12-16","0000-00-00","Adhiyamaan College of Engineering","Hosur","state","45818-fdp_dec_2006.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("2","S01CSE009","2006-2007","fdp","Software Project Success with Effective Project Ma","3","2007-04-04","2007-04-06","0000-00-00","Infosys","Bangalore","national","20928-fdp_apr-2007.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("3","S01CSE009","2007-2008","fdp","Web Development using IBM Open Sources","2","2007-08-29","2007-08-30","0000-00-00","IBM Academic Initiative","Hosur","national","43197-fdp_aug_2007.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("4","S01CSE009","2014-2015","fdp","Introduction to ASp .Net","2","2015-01-23","2015-01-24","0000-00-00","ICT Academay of Tamilnadu","Hosur","state","62605-fdp_jan-2015.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("5","S01CSE009","2010-2011","seminar","Quantum Cryptography","2","2011-02-14","2011-02-15","0000-00-00","Kong Engineering College","Erode","national","17038-seminar_feb-2011.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("6","S01CSE009","2008-2009","seminar","Intellectual Property Rights","1","0000-00-00","0000-00-00","2009-03-31","Anna University With Adhiyamaan College of Enginee","Hosur","national","91654-seminar-mar-2009.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("7","S01CSE009","2010-2011","seminar","Impact of Matlab Tool Kit in Research Work","1","0000-00-00","0000-00-00","2010-12-03","MGR College","Hosur","national","9620-seminar_dec-2010.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("8","S01CSE009","2011-2012","fdp","Eclipse IDE, Plug ins, Tools for developing Java a","2","2012-03-29","2012-03-30","0000-00-00","CTS","Bangalore","national","33773-fdp_march-2012.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("9","S01CSE009","2005-2006","workshop","Recent Trends in Wireless Technologies","1","0000-00-00","0000-00-00","2006-04-07","Adhiyamaan College of Engineering","Hosur","national","82942-workshop_apr-2006.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("10","S01CSE009","2008-2009","workshop","Neural Networks for Image Processing","2","2009-01-30","2009-01-31","0000-00-00","Adhiyamaan College of Engineering","Hosur","national","34013-workshop_jan-2009.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("11","S01CSE009","2009-2010","workshop","High Impact Teaching Skills","2","2009-08-24","2009-08-25","0000-00-00","Wipro Technologies With Adhiyamaan College of Engi","Hosur","national","20545-workshop_august-2009.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("12","S01CSE009","2014-2015","workshop","Android Application Development","2","2014-09-05","2014-09-06","0000-00-00","Adhiyamaan College of Engineering","Hosur","national","24065-workshop_sep-2014.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("13","S01CSE009","2010-2011","training","Effective E-Teaching and Learning","120","2010-10-04","2011-01-29","0000-00-00","IIIT-B","Bangalore","international","51589-course_jan-2011.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("14","S12CSE007","2015-2016","workshop","Mission 10X","3","2015-11-19","2015-11-21","0000-00-00","wipro","-","0","99845-wipro-fdp.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("15","S12CSE007","2013-2014","fdp","Design and Analysis of Algorithm","7","2014-01-06","2014-01-12","0000-00-00","centre for faculty development anna university","-","0","87969-bargur-fdp.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("16","S12CSE007","2018-2019","fdp","introduction to big data analytics","2","2018-09-03","2018-09-04","0000-00-00","ICT Academy","-","0","58229-ictact-fdp.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("17","S08CSE011","2009-2010","workshop","Workshop for Eminent Technologies of Open Source S","1","0000-00-00","0000-00-00","2009-10-31","HCL and Dr.NGP Institute of Technology","Coimbatore","state","19787-oss-workshop-certificate-2009.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("18","S08CSE011","2018-2019","workshop","The Art of Writing Research Project Proposals","2","2019-02-16","2019-02-17","0000-00-00","Sri Venkateshwaraa College of Technology","Chennai","national","79078-research-workshop-2019.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("19","S10CSE017","2012-2013","sdp","AICTE Sponsored two week staff development program","12","2013-05-20","2013-05-30","0000-00-00","Dept of CSE – GCE Bargur ","Krishnagiri","national","92882-sdp---burgur.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("20","S10CSE017","2011-2012","workshop","DRDO Sponsored National Workshop on “Latest Tren","2","2011-12-22","2011-12-23","0000-00-00","Dept of CSE/IT - M.G.R Educational and Research In","Chennai","national","54394-workshop---mgr-colg.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("21","S10CSE017","2012-2013","fdp","TEQIP II Sponsored One Week Faculty Development Pr","7","2013-03-20","2013-03-26","0000-00-00","Dept of CSE – GCE Bargur ","Krishnagiri","national","75815-teqip-burgur-fdp.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("22","S10CSE017","2013-2014","fdp","TEQIP II Sponsored one week faculty development pr","7","2014-05-19","2014-05-25","0000-00-00","Dept of CSE – GCE Bargur ","Krishnagiri","national","73219-burgur---manet.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("23","S10CSE017","2013-2014","fdp","Two Days Faculty Development Programme on “LATEX","2","2013-06-28","2013-06-29","0000-00-00","Dept of IT and EIE ACE - HOSUR","Hosur","national","1263-latex.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("24","S10CSE017","2015-2016","workshop","Two days Workshop on Recent Research Techniques in","2","2015-12-21","2015-12-22","0000-00-00","Dept of ECE – College of Engineering  Guindy (An","Chennai","national","19509-anna-univ-cer.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("25","S13CSE004","2018-2019","workshop","RECENT TRENDS AND RESEARCH CHALLENGES IN DEEP LEAR","2","2018-08-30","2018-08-31","0000-00-00","THIAGARAJAR COLLEGE OF ENGINEERING","MADURAI","0","29757-deep-learning.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("26","S10CSE017","2018-2019","workshop","Two days Workshop on “ The Art of Writing Resear","2","2019-02-16","2019-02-17","0000-00-00","Sri Venkateshwaraa College of Technology - Sriperu","Chennai","national","34505-art-of-writing-research.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("27","S10CSE017","2018-2019","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","workshop","Photoshop","CSE","1","0000-00-00","0000-00-00","2018-09-28","Mr.RajaRam","56","national","9950-img_3006-compressed.jpg","1");
INSERT INTO cse_fac_attorg VALUES("28","S10CSE017","2018-2019","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","training","Crypto 2k18","CSE","2","2018-09-25","2018-09-26","0000-00-00","Charles","455","national","53447-crypto-2k18-compressed.jpg","1");
INSERT INTO cse_fac_attorg VALUES("29","S10CSE017","2014-2015","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","workshop","Android Aplication Development","CSE","2","2014-09-05","2014-09-06","0000-00-00","Industrial Expert","55","national","32246-bf-compressed.jpg","1");
INSERT INTO cse_fac_attorg VALUES("30","S10CSE017","2018-2019","workshop","TEQIP sponsored two days Workshop on “Recent tre","2","2018-08-30","2018-08-31","0000-00-00","Thiagarajar College of Engg, Dept of IT and Comput","Madurai","national","74351-deep-learning.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("31","S13CSE004","2011-2012","workshop","Cloud Computing and Virtualization","2","2012-02-08","2012-02-09","0000-00-00","Adhiyamaan College of Engineering","Hosur","0","85951-cloud.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("32","S13CSE004","2012-2013","workshop","Matlab based training and simulation on supervised","2","2012-12-20","2012-12-21","0000-00-00","Regional Center- Coimbatore, Anna University ","Coimbatore","0","38594-matlab.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("33","S11CSE016","2013-2014","workshop","IMPLEMENTING OPEN RESOURCE CENTRE IN ENGINEERING C","1","0000-00-00","0000-00-00","2014-05-17","DCSE","ACE HOSUR","national","40712-foss_compressed.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("34","S11CSE016","2014-2015","fdp","DECISION MAKING SKILLS","2","2015-04-20","2015-04-21","0000-00-00","ICT ACT","ACE HOSUR","state","62613-convert-jpg-to-pdf.net_2019-05-08_11-12-18.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("35","S11CSE016","2016-2017","fdp","INTRODUCTION TO PHP PROGRAMMING","2","2016-09-21","2016-09-22","0000-00-00","ICT ACT","THE KAVERY ENGINEERING COLLEGE SALEM","state","14531-convert-jpg-to-pdf.net_2019-05-08_11-16-00.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("36","S11CSE016","2016-2017","fdp","TIME AND STRESS MANAGEMENT","2","2017-03-04","2017-03-05","0000-00-00","DCSE","GCE BARGUR","state","51986-convert-jpg-to-pdf.net_2019-05-08_11-21-07_compressed.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("37","S13CSE004","2018-2019","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","workshop","Web Design for Online Marketing","Dept of CSE in association with CSI","2","2019-02-05","2019-02-06","0000-00-00","T. Kodeeswaran","61","0","49974-online-marketing.jpg","1");
INSERT INTO cse_fac_attorg VALUES("38","S12CSE005","2009-2010","Workshop","Java and .Net","1","0000-00-00","0000-00-00","2010-02-19","HCL Infosystems LTD","Adhiyamaan College of Engineering","national","70787-hcl.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("39","S12CSE005","2011-2012","Seminar","New Challenges in Knowledge Based Discovery","2","2011-09-16","2011-09-17","0000-00-00","AICTE","Vivekanandha College of Engineering for Women","international","3692-doc4.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("40","S12CSE005","2013-2014","Workshop","Web Services","1","0000-00-00","0000-00-00","2014-03-10","CSE","Adhiyamaan College of Engineering","national","82718-doc2.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("41","S12CSE005","2014-2015","FDP","Introduction to J2EE","2","2014-11-19","2014-11-20","0000-00-00","ICTACT","Knowledge Institute of Technology,Salem","national","86876-fdp3.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("42","S12CSE005","2016-2017","FDP","Introduction to Mobile App Development","2","2016-09-26","2016-09-27","0000-00-00","ICTACT","Adhiyamaan College of Engineering","national","50346-fdp.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("43","S12CSE005","2017-2018","workshop","Deep Learning","1","0000-00-00","0000-00-00","2017-07-29","Department of Information Technology","MEPCO SCHLENK Engineering College,Sivakasi","national","86913-doc1.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("44","S12CSE005","2018-2019","fdp","Introduction to BIG DATA ANALYTICS","2","2018-09-03","2018-09-04","0000-00-00","ICTACT","Adhiyamaan College of Engineering","national","45506-doc1.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO cse_fac_attorg VALUES("45","S12CSE005","2018-2019","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","workshop","Mobile Application Development","CSE","2","2018-08-01","2018-08-02","0000-00-00","Ms. M. Muthulakshmi    Ms. G. ","86","national","29242-mad-min.jpg","1");
INSERT INTO cse_fac_attorg VALUES("46","S12CSE005","2018-2019","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","workshop","FOSS-UBUNTU","CSE","1","0000-00-00","0000-00-00","2018-11-01","Mr.S.Baskar","144","national","8592-rsz_foss-min.jpg","1");
INSERT INTO cse_fac_attorg VALUES("47","S10CSE015","2018-2019","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","workshop","Web Design for Online Marketing ","csi","2","2019-02-05","2019-02-06","0000-00-00","Mr.T.Kodeeshwaran,VK Academy I","61","0","29166-img-20190206-wa0094.jpg","1");
INSERT INTO cse_fac_attorg VALUES("48","S11CSE016","2018-2019","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","sdp","PROJECT EXPO 2K19","DCSE","2","2019-03-11","2019-03-12","0000-00-00","SOUNDARRAJAN","300","state","70159-imgonline-com-ua-resize-a4hcocrxvs7in.jpeg","1");
INSERT INTO cse_fac_attorg VALUES("49","S18CSE012","2018-2019","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","workshop","WORKSHOP ON PHOTOSHOP ","CSE","1","0000-00-00","0000-00-00","2019-02-11","MR.RAJARAMAN","37","district","47416-workshop.jpg","1");





CREATE TABLE `cse_fac_bkjrn` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `glkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

INSERT INTO cse_fac_bkjrn VALUES("2","S01CSE009","","","","","","","","","","","","","","","","","","","","https://scholar.google.co.in/citations?hl=en&user=RX3s55wAAAAJ","1");
INSERT INTO cse_fac_bkjrn VALUES("3","S11CSE010","2012-2013","","","","","","","","Investigation of Faults, Errors and Failures in Wireless Sensor Network: A Systematical Survey","International Journal of Advanced Computer Researc","3","12","2277-7970","scopus","https://www.accentsjournals.org/paperInfo.php?journalPaperId=595&countPaper=709","10","61899-investigation-of-faults,-errors-and-failures-in-wireless-sensor-network.pdf","1","1","","");
INSERT INTO cse_fac_bkjrn VALUES("4","S11CSE010","2017-2018","","","","","","","","Response time optimization with enhanced fault-tolerant wireless sensor network design for on-board ","Cluster Computing: The Journal of Networks, Softwa","1","1","1573-7543","sci,scopus,ugc","https://link.springer.com/article/10.1007/s10586-017-1473-4","0","26747-response-time-optimization-with-enhanced-fault-tolerant-wireless.pdf","2","1","","");
INSERT INTO cse_fac_bkjrn VALUES("5","S11CSE010","2017-2018","","","","","","","","Evolving Optimal Response Time and Synchronized Communication on Integrating Fuzzy Logic Using Infra","SENSOR LETTERS","16","8","1546-1971","scopus","https://www.ingentaconnect.com/contentone/asp/senlet/2018/00000016/00000008/art00006","0","93716-sensor-letters.pdf","1","1","","");
INSERT INTO cse_fac_bkjrn VALUES("6","S11CSE010","","","","","","","","","","","","","","","","","","","","https://scholar.google.co.in/citations?user=njQ9zmMAAAAJ&hl=en","1");
INSERT INTO cse_fac_bkjrn VALUES("7","S11CSE010","2016-2017","","","","","","","","A Novel Fuzzy Integrated Fault-Tolerant and Energy-Efficient Routing Protocol for Wireless Sensor Ne","Asian Journal of Information Technology ","15","8","1993-5994","scopus","https://www.medwelljournals.com/abstract/?doi=ajit.2016.1289.1296","0","8919-a-novel-fuzzy-integrated-fault-tolerant-and-energy-efficient-routing-protocol-for-wireless-sens","1","1","","");
INSERT INTO cse_fac_bkjrn VALUES("8","S11CSE010","2011-2012","","","","","","","","Self Diagnosing and Fault Evacuation Framework for Ad-Hoc Network","International Journal of Engineering and Technolog","4","6","1793-8236","others","http://www.ijetch.org/show-46-370-1.html","0","9761-self-diagnosing-and-fault-evacuation-framework-for-adhoc-network.pdf","0","1","","");
INSERT INTO cse_fac_bkjrn VALUES("9","S12CSE007","1987-1988","","","","","","","","Interaction K-means Clustering for Finding Similar Interaction Patterns among Brain Regions","IJARCCE","4","9","2278-1021","sci","https://pdfs.semanticscholar.org/4fba/204bec1e039220d57eb3d2db48e1cf193d36.pdf","2","18259-ijarcce-journal.pdf","5","1","","");
INSERT INTO cse_fac_bkjrn VALUES("10","S13CSE006","1987-1988","","","","","","","","B-LoDiS Routing for LoDiS Routing for LoDiS Routing for LoDiS Routing for LoDiS Routing for Inte rmi","INTERNETWORKING INDONESIA JOURNAL","7","1","1942-9703","scopus","https://www.researchgate.net/publication/282686976_B-LoDiS_routing_for_intermittently_connected_MANE","ESCI","29229-iij_vol7_no1_b_2015_ramesh.pdf","0","1","","");
INSERT INTO cse_fac_bkjrn VALUES("11","S12CSE007","2015-2016","","","","","","","","An Interaction K-means clustering with ranking for mining interaction patterns among the brain regio","IJATES","4","1","2348-7550","sci","http://data.conferenceworld.in/SVCET/P1306-1310.pdf","2","21195-ijates.pdf","3","1","","");
INSERT INTO cse_fac_bkjrn VALUES("12","S13CSE006","2015-2016","","","","","","","","Ant Routing Protocol with Location Services in Intermittently Connected MANETs","SCIENTIFIC RESEARCH PUBLISHING","7","7","-","-","http://dx.doi.org/10.4236/cs.2016.77092","-","44538-cs_2016052714533338.pdf","1","1","","");
INSERT INTO cse_fac_bkjrn VALUES("13","S08CSE011","2016-2017","","","","","","","","Securing Multi Key Cryptography Policy based Session Authorized Access in Wireless Broad Cast Networ","Asian Journal of Research in Social Sciences and H","6","Sep 2016","2249-7315","scopus","www.aijsh.com","Indian Citation Index","25751-asian-journal.pdf","1","1","","");
INSERT INTO cse_fac_bkjrn VALUES("14","S08CSE011","2016-2017","","","","","","","","Service Orient Stream Cipher Based Key Management Scheme for Secure Data Access Control Using Ellipt","American-Eurasian Journal of Scientific Research","11","2016","1818-6785","others","www.idosi.aejsr.com","Indian Citation Index","45892-idosi_paper.pdf","1","1","","");
INSERT INTO cse_fac_bkjrn VALUES("15","S10CSE017","2014-2015","","","","","","","","Multimodel Intrusion Detection System for Cluster based Routing protocol in Battlefield Mobile Ad Ho","International Journal of Applied Engineering Resea","9","-","0973-4562 ","sci","https://www.researchgate.net/publication/290041170_Multi_model_intrusion_detection_system_for_cluste","-","20297-multimodel-ids.pdf","4","1","","");
INSERT INTO cse_fac_bkjrn VALUES("16","S10CSE017","2015-2016","","","","","","","",",‘A Survey on Clustering Techniques in MANET’","International Journal of Applied Engineering Resea","10","-","0973-4562 ","sci","https://www.ripublication.com/Volume/ijaerv10n21spl.htm","-","58726-survey-journal-in-ijaer.pdf","4","1","","");
INSERT INTO cse_fac_bkjrn VALUES("17","S10CSE017","2016-2017","","","","","","","","’Time Orient Frequency Estimation Technique Based Intrusion Detection System for Cluster Routing i","American – Eurasian Journal of Scientific Resear","1","1","1818-6785","others","https://www.idosi.org/aejsr/11(1)16/6.pdf","-","68782-tofa.pdf","3","1","","");
INSERT INTO cse_fac_bkjrn VALUES("18","S10CSE017","2015-2016","","","","","","","","Secure Onion Based routing for MANETs Adverserial Environment","International Journal of Scientific research and J","1","3","2455-2631","others","http://www.ijsdr.org/viewpaperforall.php?paper=IJSDR1603029","-","90695-archana-paper-1.pdf","2","1","","");
INSERT INTO cse_fac_bkjrn VALUES("19","S10CSE017","1987-1988","","","","","","","","Time Prient Behaviour analysis model based for intrusion detection for cluster based routing protoco","Transylvanian Review","10","1","-","others","http://transylvanianreviewjournal.org/index.php/TR/article/view/770","-","24576-translyvanian.pdf","3","1","","");
INSERT INTO cse_fac_bkjrn VALUES("20","S10CSE017","2016-2017","","","","","","","","Detecting False Point Data Attack using Hierarchical Proof Identification in Mobile Ad Hoc Network�","Asian Journal Of Research in Sicial Sciences and H","6","2","2249-73115","scopus","https://www.researchgate.net/publication/308182473_Detecting_False_Point_Data_Attacks_using_Hierarch","2","32473-asian-journal.pdf","0","1","","");
INSERT INTO cse_fac_bkjrn VALUES("21","S10CSE017","2017-2018","","","","","","","","‘Reputation Management Mechanism and Security in Federated Cloud’","International Research Journal of Latest Trends in","7","1","2455-2666","scopus","http://www.ijsdr.org/viewpaperforall.php?paper=IJSDR1603029","-","75194-thenmozhi-batch-paper.pdf","0","1","","");
INSERT INTO cse_fac_bkjrn VALUES("22","S10CSE017","2018-2019","","","","","","","","BLock chain and Fingerprint Enabled E-Voting","SSRG International journal of Computer science and","2","1","2348-8349","others","http://www.internationaljournalssrg.org/uploads/specialissuepdf/ICFTESH/2019/ECE/IJECE-ICFTESH-P103.","-","22079-block.pdf","0","1","","");
INSERT INTO cse_fac_bkjrn VALUES("23","S13CSE004","2012-2013","","","","","","","","A FRAMEWORK FOR BUILDING APPLICATIONS BASED ON HIDDEN TOPICS WITH SHORT AND SPARSE WEB DOCUMENTS","International Journal of Advanced Research in Comp","2","3","2278-1323","others","http://ijarcet.org/wp-content/uploads/IJARCET-VOL-2-ISSUE-3-984-988.pdf","0","5321-ijarcet-vol-2-issue-3-984-988.pdf","6","1","","");
INSERT INTO cse_fac_bkjrn VALUES("24","S11CSE016","2018-2019","","","","","","","","mINING fREQUENT pATTERN ON BIG DATA USING MAP REDUCE","IJRASET","7","III","2321-9653","ugc","www.ijraset.com","45.98","95842-convert-jpg-to-pdf.net_2019-05-08_12-10-44_compressed.pdf","5","1","","");
INSERT INTO cse_fac_bkjrn VALUES("25","S12CSE005","2013-2014","","","","","","","","Abstraction for Asymmetric Mobile Ad Hoc Network Using Bidirectional Routing Protocols","International Journal of Computer Science and Mobi","2","11","ISSN 2320–088X","ugc","https://www.ijcsmc.com/docs/papers/November2013/V2I11201305.pdf","-","67095-v2i11201305.pdf","6","1","","");
INSERT INTO cse_fac_bkjrn VALUES("26","S12CSE005","2013-2014","","","","","","","","EDGE-BASED JUNCTION DETECTOR OPERATOR ON CIRCUMFERENTIAL ANCHORS FOR 3D RECONSTRUCTION","International Journal of Computer Science and Mobi","2","11","ISSN 2320–088X","ugc","https://ijcsmc.com/docs/papers/November2013/V2I11201306.pdf","-","18806-v2i11201306.pdf","6","1","","");
INSERT INTO cse_fac_bkjrn VALUES("27","S12CSE005","2018-2019","","","","","","","","A Novel System to Sense the Road Traffic in Highway and Alert System for Accident in a Vehicle","International Journal for Research in Applied Scie","7","III","ISSN: 2321-9653","ugc","https://www.ijraset.com/fileserve.php?FID=20502","-","73969-journal1.pdf","7","1","","");





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
  `ph2key` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO cse_fac_edu VALUES("S01CSE009","Punitha Arulappar Hr. Sec. School","state","1989","65","97263-age_proof.jpg","1","Amali Girls Hr. Sce. School","state","Maths, Phy, Chem","1992","60","73692-age_proof.jpg","1","","","","","","","","","","","","","","","","","","","","","","","","","Thiruvalluvar College","Manonmanim Sundarnar University","B.Sc.","Mathematics","regular","1995","78","29878-lilly-florence-ug-convocation.jpg","1","","","","","","","","","","","","","","","","","","","Manonmaniam Sundarnar University","Manonmaniam Sundarnar University","MCA","MCA","regular","1998","65","73113-lilly-florence-pg-degree.jpg","1","Punjabi University","Punjabi University","M.Tech","IT","distance","2003","71","42278-m.tech.pdf","1","","","","","","","","","","","","","","","","","","","","","Mother Theresa Womens University","Mother Teresa Womens University","ANN","Ph.D.","parttime","2009","2011"," Neural Network Approach for HIV/AIDS Regimen Specification Decision Support System","Dr. P. Balasubramanie","67610-ph.d.jpg","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO cse_fac_edu VALUES("S08CSE011","Government Higher Secondary School","state","1993","83","39453-sslc.pdf","1","Government Higher Secondary School","state","PCMB","1995","79","1865-hsc-certificate.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Mahendra Engineering College","University of Madras","B.E","CSE","regular","1999","69","95184-ug-degree-front.pdf","1","","","","","","","","","","","","","","","","","","","Adhiyamaan College of Engineering","Anna University, Coimbatore","M.E","CSE","regular","2010","85","45912-pg-degree-converted-(1)-compressed.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","Adhiyamaan College of Engineering","Anna University, Chennai","Network Security","Information and Computer Science Engineering","parttime","2011-07","2017-08","Session Based Service Level Light Weight Key Management for Secure Access Control in Wireless Broadc","Dr.S. Sakthivel","83726-pg-degree-converted-(1)-compressed.pdf","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO cse_fac_edu VALUES("S10CSE015","Government higher secondary school ellakkiampatti ","state","1997","84","86747-xth-certificate.pdf","1","Seventh day metric higher secondary school dharmap","state","biology","1999","81","41892-xiith-certificate.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","sona college of technology","periyar university","B.E","Information Technology","regular","2003","80","65412-be.pdf.pdf","1","","","","","","","","","","","","","","","","","","","sona college of Technology","Anna University","M.E","Software Engineering","regular","2008","81","44373-me.pdf.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","Sona College of Engineering","Anna Univeristy","Automated Software Testing","Information and communication Engineering","parttime","2009-01","2017-12"," Evaluation of Cloud based Open Source Performance Testing Tools for Web Applications","Dr.K.Krishnamoorthy","84512-phd-degree-certificate.pdf","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO cse_fac_edu VALUES("S10CSE017","St Dominics Anglo Indian Higher Secondary School","state","1999","83","24429-copy-of-xpdf_compressed.pdf","1","Government girls Higher Secondary School- Chennai","state","Biology","2001","75","52335-copy-of-xii_compressed.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Periyar Maniammai College of Engineering for women","Anna University","B.Tech","Information Technology","regular","2005","70","7209-be-pdf.pdf","1","","","","","","","","","","","","","","","","","","","Sri Krishna College of Engineering & Technology-Ch","Anna University","BE","Computer Science","regular","2009","78","26722-me-pdf.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","Anna University","Anna University","Ad Hoc Network","Information and Communication Engineering","regular","2011-06","2017-12","Time Orient FLow With Frequency based behaviour analysis Model for Intrusion Detection In Mobile Ad ","Dr.Sakthivel, Sona Engineering","35765-phd-degree-certificate.pdf","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO cse_fac_edu VALUES("S11CSE010","CAMBRIDGE MATRICULATION HR.SEC SCHOOL, KRISHNAGIRI","state","2002","80","60888-matric.pdf","1","INDIAN MATRICULATION HR.SEC SCHOOL, HARUR","state","MATHS,BIOLOGY","2004","86","19472-hrsec.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","SRI RAM ENGINEERING COLLEGE, CHENNAI","ANNA UNIVERSITY, CHENNAI","B.TECH","INFORMATION TECHNOLOGY","regular","2008","69","47184-ug-degree-cert.pdf","1","","","","","","","","","","","","","","","","","","","ANNA UNIVERSITY, TIRUCHIRAPPALLI","ANNA UNIVERSITY, TIRUCHIRAPPALLI","M.E","PERVASIVE COMPUTING TECHNOLOGIES","regular","2011","8","92446-pg-degree-cert.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO cse_fac_edu VALUES("S11CSE016","MM HSS IDAIKAL","state","2003","93","72564-convert-jpg-to-pdf.net_2019-05-08_10-19-17.pdf","1","MM HSS IDAIKAL","state","MATHS BIOLOGY","2005","88","95626-convert-jpg-to-pdf.net_2019-05-08_10-23-23_compressed.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","GOVERNMENT COLLEGE OF ENGINEERING BARGUR","ANNA UNIVERSITY CHENNAI","B.E","CSE","regular","2009","70","69570-ds-ug.pdf","1","","","","","","","","","","","","","","","","","","","COLLEGE OF ENGINEERING GUINDY","ANNA UNIVERSITY CHENNAI","M.E","CSE","regular","2011","7","16518-convert-jpg-to-pdf.net_2019-05-08_10-29-25_compressed.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO cse_fac_edu VALUES("S12CSE005","Government Boys Higher Secondary School krishnagir","state","2001","47","46635-10th-mark-sheet.pdf","1","","","","","","","","Institute of Road Transport Polytechnic College kr","DOTE","Computer Engineering","regular","2007","90","86593-diploma.pdf","1","","","","","","","","","","","","","","","","","Adhiyamaan College of Engineering ","Anna University","B.E","Computer Science and Engineering","regular","2010","73","1274-be-deg.pdf","1","","","","","","","","","","","","","","","","","","","ANNAMALAI UNIVERSITY","ANNAMALAI UNIVERSITY","M.E"," Computer Science and Engineering","regular","2012","9","85441-me-deg1.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","Adhiyamaan College of Engineering","ANNA UNIVERSITY","Wireless Sensor Network, Deep Learning","Information and Communication Engineering","parttime","2017-01","","A Wireless Sensor Based Automatic Irrigation System for Effective Utilization of Resource and Crop G","Dr. Sakthivel S ","","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO cse_fac_edu VALUES("S12CSE007","Amali Girls Higher Secondary School","state","1999","91","17376-10-th-marksheet-compressed.pdf","1","Amali Girls Higher Secondary School","state","Maths-Biology","2001","73","13248-12th-marksheet.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","SCAD College of Engineering and Technology","Anna University","B.Tech","Information Technology","regular","2005","77","34301-b.tech-degree.pdf","1","","","","","","","","","","","","","","","","","","","Adhiyamaan College of Engineering","Anna University","M.E","Computer Science and Engineering","regular","2010","8","89408-m.e.-degree.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO cse_fac_edu VALUES("S13CSE004","VAILANKANNI MATRICULATION HIGHER SECONDARY SCHOOL","state","2004","76","46968-10th-marksheet.pdf","1","VAILANKANNI MATRICULATION HIGHER SECONDARY SCHOOL","state","BIOLOGY","2006","71","7900-12th-marksheet.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","ADHIYAMAAN COLLEGE OF ENGINEERING","ANNA UNIVERSITY","B.E","COMPUTER SCIENCE AND ENGINEERING","regular","2010","74","85594-be-dc.pdf","1","","","","","","","","","","","","","","","","","","","ADHIYAMAAN COLLEGE OF ENGINEERING","ANNA UNIVERSITY","M.E","COMPUTER SCIENCE AND ENGINEERING","regular","2013","8","41103-me-dc.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO cse_fac_edu VALUES("S13CSE006","SRI VIJAY VIDHYALAYA MATRIC HIGHER SECONDARY SCHOO","state","2004","91","39130-indira-xth.pdf","1","SRI VIJAY VIDHYALAYA MATRIC HIGHER SECONDARY SCHOO","state","MPCB","2006","84","87958-xii.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","GKM COLLEGE OF ENGINEERING AND TECHNOLOGY","ANNA UNIVERSITY CHENNAI","B.E","COMPUTER SCIENCE AND ENGINEERING","regular","2010","80","20683-ug.pdf","1","","","","","","","","","","","","","","","","","","","REGIONAL CENTRE OF ANNA UNIVERSITY MADURAI","ANNA UNIVERSITY CHENNAI","M.E","COMPUTER SCIENCE AND ENGINEERING","regular","2013","9","78061-degree-front.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO cse_fac_edu VALUES("S18CSE008","GOVERNMENT BOYS HIGHER SECONDARY SCHOOL","state","2006","70","92412-10.pdf","1","GOVERNMENT BOYS HIGHER SECONDARY SCHOOL","state","Computer Science","2008","70","41065-12.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","DR.PAULS ENGINEERING COLLEGE","Anna University","Bachelor of Engineering","Computer Science and Engineering","regular","2012","72","56967-ug.pdf","1","","","","","","","","","","","","","","","","","","","ADHIYAMAAN COLLEGE OF ENGINEERING","Anna University ","Master of Engineering","Computer Science and Engineering","regular","2015","87","28748-pg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO cse_fac_edu VALUES("S18CSE012","GOVT GIRLS HIGHER SECONDARY SCHOOL","state","2004","64","55506-10th.pdf","1","","","","","","","","APTC","DOTE","DCE","regular","2008","79","15711-diploma.pdf","1","","","","","","","","","","","","","","","","","ACE","ANNA UNIVERSITY CHENNAI","B.E","CSE","regular","2011","8","99196-b.e.pdf","1","","","","","","","","","","","","","","","","","","","ACE","ANNA UNIVERSITY CHENNAI","M.E","CSE","regular","2013","9","42198-m.e.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO cse_fac_edu VALUES("S97CSE011","Govt. Girls Higher Secondary School","state","1988","85","86084-tenth_s.pdf","1","Govt. Girls Higher Secondary School","state","Maths, Biology","1990","86","7564-twelth_s.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Thiagarajar College of Engineering","Madurai Kamaraj University","B.E","CSE","regular","1994","75","62142-b.e.-copy.pdf","1","","","","","","","","","","","","","","","","","","","Regional Engineering College","Bharathidasan University","M.E","CSE","regular","2003","8","47456-m.e-copy.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","Anna University","Anna University, Chennai","MANETs","Information and Communication Engineering","parttime","2006-01","2012-10","Performance Study and Buffer Management for Preferential Delivery in Delay Tolerant Networks","Dr. R.S.D. Wahida Banu","53582-ph.d-copy-_s.pdf","1","","","","","","","","","","","","","","","","","","","","","","");





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
  `otkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO cse_fac_exp VALUES("S10CSE017","Madha Engineering College -chennai","Lecturer","2005-09-14","2007-09-11","Master Degree Regarding","3700-experience-certificate-madha.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO cse_fac_exp VALUES("S12CSE007","","","","","","","","M.S.P.V.L. Polytechnic College","Lecturer","2005-06-04","2007-05-23","Wedding","35771-polytechnic-experience.pdf","1","","","","","","","","","","","","","","","","","","","","","","","");





CREATE TABLE `cse_fac_funpat` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `patkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO cse_fac_funpat VALUES("1","S01CSE009","2015-2016","Digital Information System for Storage and        ","2 years","8,45,000","DST-NRDMS","2016-01-06","Dr. D. Swamydoss","0","82556-proj1.pdf","0","1","","","","","");
INSERT INTO cse_fac_funpat VALUES("2","S01CSE009","2018-2019","Ontology Driven Meteorology Conceptual Data Dissem","2 years","13,06,000","ISRO","2018-06-01","Dr. D. Swamydoss","0","38349-proj2.pdf","0","1","","","","","");





CREATE TABLE `cse_fac_glc` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `conkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

INSERT INTO cse_fac_glc VALUES("1","S01CSE009","2008-2009","Computer Science Association Inaugural","1","0000-00-00","0000-00-00","2008-07-25","Operating Systems Concepts","St Joseph College","Hosur","0","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","");
INSERT INTO cse_fac_glc VALUES("2","S01CSE009","2011-2012","National Seminar on Emerging Trends in IT","1","0000-00-00","0000-00-00","2011-12-21","Trends in Computing","St Frances De Sales College","Bangalore","0","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","");
INSERT INTO cse_fac_glc VALUES("3","S01CSE009","2008-2009","Web Technology","2","2009-05-20","2009-05-21","0000-00-00","Web Technology","Jayam Engineering College","Dharmapuri","0","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","");
INSERT INTO cse_fac_glc VALUES("4","S13CSE006","2016-2017","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International Conference on Em","A Movie Recommendation System using Collaborative ","Erode Sengunthar Engineering College-Erode","2","2017-02-17","2017-02-18","0000-00-00","international","","20200-ijcse-icetsst-p117-senbag.pdf","1");
INSERT INTO cse_fac_glc VALUES("5","S08CSE011","2018-2019","","","0000-00-00","0000-00-00","0000-00-00","","","","","","5th National Conference on Res","Black Spot Alert on Mobile Phones of Travellers","St.Annes College of Engg and Technology, Panrutti","1","0000-00-00","0000-00-00","2019-02-28","national","","42312-st.annes-conference_19.pdf","1");
INSERT INTO cse_fac_glc VALUES("6","S08CSE011","2018-2019","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International Conference on El","Jamming Attack Model and Detection of Transmission","Institute of Research and Journals","1","0000-00-00","0000-00-00","2019-01-20","international","","34648-pg-conference-certificate-2019.pdf","1");
INSERT INTO cse_fac_glc VALUES("7","S13CSE004","2017-2018","","","0000-00-00","0000-00-00","0000-00-00","","","","","","5th International conference o","Analysing Road Accidents and Providing Threat Aler","ARM College of Engineering and Technology","2","2018-03-03","2018-03-04","0000-00-00","international","","56573-arm-college.pdf","1");
INSERT INTO cse_fac_glc VALUES("8","S13CSE004","2017-2018","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International Conference on Mo","Predicting Student Action Through Online Examinati","Sri Rmakrishna College of Engineering","1","0000-00-00","0000-00-00","2018-03-10","international","","70095-ramakrishnacollege.pdf","1");
INSERT INTO cse_fac_glc VALUES("9","S13CSE004","2018-2019","","","0000-00-00","0000-00-00","0000-00-00","","","","","","11th National Conference on Ne","Face Recognition using Artificial Neural Network","SNS College of Technology","1","0000-00-00","0000-00-00","2019-03-07","national","","23772-sns-college.pdf","1");
INSERT INTO cse_fac_glc VALUES("10","S13CSE004","2018-2019","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International Conference on In","Intelligent Green House Monitoring and Controlling","Selvam College of Technology","2","2019-03-07","2019-03-08","0000-00-00","international","","31103-selvam-college.pdf","1");
INSERT INTO cse_fac_glc VALUES("11","S13CSE004","2012-2013","","","0000-00-00","0000-00-00","0000-00-00","","","","","","National Conference on Network","An approach for Reducing Data Sparseness in Web Do","Sri Venkateshwara College of Engineering, Bangalor","2","2013-01-28","2013-01-29","0000-00-00","national","","22363-svce,blore.pdf","1");
INSERT INTO cse_fac_glc VALUES("12","S13CSE004","2012-2013","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International Conference on Co","Classification and Matching with Hidden Topics Tow","Chennai Institute of Technology","3","2013-03-15","2013-03-17","0000-00-00","international","","83663-cit.pdf","1");
INSERT INTO cse_fac_glc VALUES("13","S11CSE016","2011-2012","C PROGRAMMING WORKSHOP","1","0000-00-00","0000-00-00","2011-11-21","C CONCEPTS","GCE","BARGUR","0","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","");
INSERT INTO cse_fac_glc VALUES("14","S11CSE016","2012-2013","FDP ON DAA","1","0000-00-00","0000-00-00","2013-01-09","DYNAMIC PROGRAMMING","GCE","BARGUR","0","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","");
INSERT INTO cse_fac_glc VALUES("15","S11CSE016","2010-2011","","","0000-00-00","0000-00-00","0000-00-00","","","","","","NCICT","DYNAMIC GROUP KEY AGREEMENT AND GROUP COMMUNICATIO","PERIYAR MANIYAMMAI UNIVERSITY","1","0000-00-00","0000-00-00","2011-03-24","national","","3598-conf-periyar_compressed.pdf","1");
INSERT INTO cse_fac_glc VALUES("16","S11CSE016","2015-2016","","","0000-00-00","0000-00-00","0000-00-00","","","","","","ETACC","SECURING HYPER SENSITIVE DATA USING GROUP KEY AND ","GCE BARGUR","1","0000-00-00","0000-00-00","2016-03-17","national","","2947-con16-military_compressed.pdf","1");
INSERT INTO cse_fac_glc VALUES("17","S11CSE016","2015-2016","","","0000-00-00","0000-00-00","0000-00-00","","","","","","ETACC","AN ONLINE JUDGE SYSTEM USING PLAGIARISM DETECTION","GCE BARGUR","1","0000-00-00","0000-00-00","2016-03-17","national","","29856-con16-plagirism_compressed.pdf","1");
INSERT INTO cse_fac_glc VALUES("18","S11CSE016","2015-2016","","","0000-00-00","0000-00-00","0000-00-00","","","","","","ETACC","VIRTUAL DESKTOP SCREEN SHARING TO MULTIPLE CLIENTS","GCE BARGUR","1","0000-00-00","0000-00-00","2016-03-18","national","","72930-con16-virtual_compressed.pdf","1");
INSERT INTO cse_fac_glc VALUES("19","S11CSE016","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","ETACC","RTVR: A SYMMETRIC CRYPTOGRAPHIC ALGORITHM FOR SECU","GCE BARGUR","1","0000-00-00","0000-00-00","2015-03-05","national","","21843-con15-rtvr_compressed.pdf","1");
INSERT INTO cse_fac_glc VALUES("20","S11CSE016","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","NCACT","GREEN COMPUTING ENERGY EFFICIENCY IN IT COMPANIES","HINDUSTAN INSTITUTE OF TECHNOLOGY COIMBATORE","1","0000-00-00","0000-00-00","2015-03-04","national","","86667-con15-green_compressed.pdf","1");
INSERT INTO cse_fac_glc VALUES("21","S12CSE005","2011-2012","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Recent Advances and Trends in ","Abstraction for Asymmetric Mobile Ad Hoc Network U","CSE Vivekanandhan College of Engineering for Women","2","2012-03-06","2012-03-07","0000-00-00","international","","51311-ic.pdf","1");
INSERT INTO cse_fac_glc VALUES("22","S12CSE005","2013-2014","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Knowledge based Scientific Res","Mobile ID Based Sybil Attack Detection on the Mobi","CSE-K.S.R. College of Engineering","1","0000-00-00","0000-00-00","2014-03-15","national","","68038-e.pdf","1");
INSERT INTO cse_fac_glc VALUES("23","S12CSE005","2013-2014","","","0000-00-00","0000-00-00","0000-00-00","","","","","","National Conference on Xtreme ","Increasing Accountability for Data Sharing in Clou","CSE - Jayam College of Engineering and Technology","2","2014-04-04","2014-04-05","0000-00-00","national","","18287-e1.pdf","1");
INSERT INTO cse_fac_glc VALUES("24","S12CSE005","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Information and Communication ","Cost Minimization for BIG DATA Processing in Data ","IT - Bannari Amman Institute o Technology","2","2015-03-19","2015-03-20","0000-00-00","national","","97020-e11.pdf","1");
INSERT INTO cse_fac_glc VALUES("25","S12CSE005","2015-2016","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Emerging Trends in Advanced Co","Audit Free Cloud Storage Via Deniable Attribute Ba","CSE - GCE,Bargur","2","2016-03-17","2016-03-18","0000-00-00","national","","92827-e12.pdf","1");
INSERT INTO cse_fac_glc VALUES("26","S12CSE005","2017-2018","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International Conference on Re","Disease Detection and Classification on Tomato Lea","IE(Salem Local Centre) Tagore Institute of Enginee","1","0000-00-00","0000-00-00","2018-03-07","international","","19261-e3.pdf","1");
INSERT INTO cse_fac_glc VALUES("27","S12CSE005","2018-2019","","","0000-00-00","0000-00-00","0000-00-00","","","","","","National Conference on Computi","A Novel System to Sense the Road Traffic in Highwa","IT - Er.Perumal Manimekalai College of Engineering","1","0000-00-00","0000-00-00","2019-03-05","national","","70933-e4.pdf","1");
INSERT INTO cse_fac_glc VALUES("28","S12CSE005","2018-2019","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Networks Intelligence and Comp","Seclusion Aware Data Access on Encrypted Cloud Dat","IT- SNS College of Technology","1","0000-00-00","0000-00-00","2019-03-07","national","","31100-e5.pdf","1");
INSERT INTO cse_fac_glc VALUES("29","S12CSE005","2018-2019","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Networks Intelligence and Comp","Dynamic Road Traffic Visualization Using IOT","IT- SNS College of Technology","1","0000-00-00","0000-00-00","2019-03-07","national","","19876-e6.pdf","1");
INSERT INTO cse_fac_glc VALUES("30","S12CSE005","2011-2012","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Recent Trends of Computing ","Abstraction for Asymmetric Mobile Ad Hoc Network U","CSE-  Lord Venkateshwaraa Engineering College","1","0000-00-00","0000-00-00","2012-03-02","national","","79546-e7.pdf","1");
INSERT INTO cse_fac_glc VALUES("31","S18CSE012","2012-2013","","","0000-00-00","0000-00-00","0000-00-00","","","","","","international conference on ad","NOVAL DSR PROTOCOL FOR EFFICIENT ROUTING FOR MOBIL","JKKN","2","2013-03-08","2013-03-09","0000-00-00","international","","41422-jkkn.pdf","1");
INSERT INTO cse_fac_glc VALUES("32","S18CSE012","2012-2013","","","0000-00-00","0000-00-00","0000-00-00","","","","","","INTERNATIONAL CONFERENCE ON AD","EFFICIENT ROUTING PROTOCOL FOR MOBILE ADHOC NETWOR","TEJA SHAKTHI","2","2013-01-09","2013-01-10","0000-00-00","international","","93800-teja.pdf","1");
INSERT INTO cse_fac_glc VALUES("33","S18CSE012","2012-2013","","","0000-00-00","0000-00-00","0000-00-00","","","","","","NETWORKING TECHNOLOGY,MOBILITY","DISTRIBUTED REVERSE BELLMAN FORD FORR EFFICIENT RO","SVCE","2","2013-01-28","2013-01-29","0000-00-00","national","","99862-svc.pdf","1");
INSERT INTO cse_fac_glc VALUES("34","S18CSE012","2017-2018","","","0000-00-00","0000-00-00","0000-00-00","","","","","","RECENT INNOVATION IN SCIENCE ,","PV FAULT DETECTOR","TAGORE INSTITUTE","1","0000-00-00","0000-00-00","2018-03-07","international","","87272-tagore.pdf","1");
INSERT INTO cse_fac_glc VALUES("35","S11CSE016","2018-2019","","","0000-00-00","0000-00-00","0000-00-00","","","","","","NCCIS","PHISHING ATTACK BASE ON VISUAL CRYPTOGRAPHY","PMC TECH","1","0000-00-00","0000-00-00","2019-03-05","national","","98825-con-visualcrypto_compressed.pdf","1");
INSERT INTO cse_fac_glc VALUES("36","S11CSE016","2018-2019","","","0000-00-00","0000-00-00","0000-00-00","","","","","","NCCIS","MINING FREQUENT PATTERN ON BIGDATA USING MAPREDUCE","PMC TECH","1","0000-00-00","0000-00-00","2019-03-05","national","","27451-con-mapreduce_compressed.pdf","1");
INSERT INTO cse_fac_glc VALUES("37","S10CSE017","2018-2019","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International Conference on Fu","IOT based automatic accident detection and rescue ","Sri Guru Institute of technology in association wi","1","0000-00-00","0000-00-00","2019-02-22","international","","73300-iot.pdf","1");
INSERT INTO cse_fac_glc VALUES("38","S10CSE017","2018-2019","","","0000-00-00","0000-00-00","0000-00-00","","","","","","“Artificial Intelligence & C","Smart Farming System using IoT","Dept. of CSE – College of Engineering  Guindy An","3","2018-09-26","2018-09-28","0000-00-00","international","","42302-smart-farming.pdf","1");
INSERT INTO cse_fac_glc VALUES("39","S10CSE017","2018-2019","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Fourth National Conference on ","Rumor Source identification in Social Network with","dept of Electrical and Electronics Engineering in ","1","0000-00-00","0000-00-00","2019-03-12","national","","91336-rumor.pdf","1");





CREATE TABLE `cse_fac_member` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `awakey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

INSERT INTO cse_fac_member VALUES("1","S01CSE009","2007-2008","","","","","","HOD-Applied Sciences","institute","BOS Chairman-Applied Science Board","institute","BOS Member MCA Board","department","","","3","","","","","");
INSERT INTO cse_fac_member VALUES("2","S01CSE009","2008-2009","","","","","","HOD-Applied Sciences","institute","BOS Chairman-Applied Science Board","institute","BOS Member MCA Board","department","","","3","","","","","");
INSERT INTO cse_fac_member VALUES("3","S01CSE009","2009-2010","ISTE","61443","Life Member","16707-iste-pdf.pdf","1","HOD-Applied Sciences","institute","BOS Chairman-Applied Science Board","institute","BOS Member MCA Board","department","","","3","","","","","");
INSERT INTO cse_fac_member VALUES("4","S01CSE009","2010-2011","","","","","","HOD-Applied Sciences","institute","BOS Chairman-Applied Science Board","institute","","","","","2","","","","","");
INSERT INTO cse_fac_member VALUES("5","S01CSE009","2011-2012","","","","","","HOD-Applied Sciences","institute","BOS Chairman-Applied Science Board","institute","BOS Member MCA Board","department","CSI SB Counselore","institute","4","","","","","");
INSERT INTO cse_fac_member VALUES("6","S01CSE009","2018-2019","","","","","","Data Center Incharge","institute","BOS Member CSE Board","department","CSI SB Counselore","institute","","","3","","","","","");
INSERT INTO cse_fac_member VALUES("7","S01CSE009","2015-2016","CSI","I0153816","Life Time","17209-csi-member-lilly.pdf","1","Feedback Incharge","institute","CSI SB Counselore","institute","","","","","2","","","","","");
INSERT INTO cse_fac_member VALUES("8","S01CSE009","2016-2017","","","","","","Feedback Incharge","institute","CSI SB Counselore","institute","","","","","2","","","","","");
INSERT INTO cse_fac_member VALUES("9","S01CSE009","2012-2013","","","","","","CSI SB Counselore","institute","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("10","S01CSE009","2013-2014","","","","","","CSI SB Counselore","institute","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("11","S01CSE009","2014-2015","","","","","","CSI SB Counselore","institute","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("12","S01CSE009","2017-2018","","","","","","CSI SB Counselore","institute","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("13","S11CSE010","2018-2019","ACM","4742134","1","34167-acm-mem-detail.pdf","1","PLACEMENT COORDINATOR","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("14","S11CSE010","2011-2012","International Association of Engineers (IAENG) ","113210","50","87856-iaeng_membership_113210.pdf","1","","","","","","","","","","","","","","");
INSERT INTO cse_fac_member VALUES("15","S11CSE010","2014-2015","Institution of Engineers (IE)","AM 158872-1","50","43415-ie-membership.pdf","1","","","","","","","","","","","","","","");
INSERT INTO cse_fac_member VALUES("16","S13CSE006","2013-2014","","","","","","TUTOR","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("17","S13CSE006","2014-2015","","","","","","TUTOR","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("18","S13CSE006","2015-2016","","","","","","TUTOR","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("19","S13CSE006","2016-2017","","","","","","TUTOR","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("20","S13CSE006","2016-2017","","","","","","PROJECT COORDINATOR","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("21","S13CSE006","2017-2018","","","","","","TUTOR","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("22","S13CSE006","2017-2018","","","","","","TIME TABLE INCHARGE","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("23","S13CSE006","2018-2019","","","","","","TUTOR","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("24","S13CSE006","2018-2019","","","","","","TIME TABLE INCHARGE","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("25","S08CSE011","2015-2016","","","","","","Alumni Secretary","institute","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("26","S08CSE011","2017-2018","","","","","","WEC Member","institute","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("27","S08CSE011","2018-2019","","","","","","NIDHI PRAYAS MEMBER","institute","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("28","S08CSE011","2008-2009","","","","","","Tutor","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("29","S08CSE011","2012-2013","","","","","","Tutor","","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("30","S08CSE011","2016-2017","","","","","","Tutor","","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("31","S08CSE011","2018-2019","","","","","","BoS Member","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("32","S08CSE011","2018-2019","","","","","","Internal Auditor","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("33","S08CSE011","2014-2015","","","","","","Time Table In-charge","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("34","S08CSE011","2013-2014","","","","","","Coordinator for Technical Symposium","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("35","S08CSE011","2017-2018","","","","","","","","","","","","","","","Inspire Faculty Excellence Awards","Infosys Ca","2017-09","30015-infosys_content-guru.pdf","1");
INSERT INTO cse_fac_member VALUES("36","S12CSE007","2012-2013","","","","","","Tutor","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("37","S12CSE007","2015-2016","","","","","","Project Coordinator","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("38","S12CSE007","2016-2017","","","","","","Tutor","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("39","S12CSE007","2018-2019","","","","","","Time Table Incharge","","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("40","S10CSE015","2018-2019","","","","","","Discipline Committee","institute","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("41","S10CSE015","2018-2019","","","","","","News Letter Editor","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("42","S10CSE015","2018-2019","","","","","","Tutorship","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("43","S10CSE015","2018-2019","","","","","","CSI Student Branch Coordinator","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("44","S10CSE017","2018-2019","","","","","","BOS","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("45","S10CSE017","2018-2019","","","","","","Internal Audit Member","institute","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("46","S10CSE017","2018-2019","","","","","","Tutor","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("47","S11CSE016","2014-2015","IE","AM159183-8","LIFETIME","62973-convert-jpg-to-pdf.net_2019-05-08_12-03-50.pdf","1","","","","","","","","","","","","","","");
INSERT INTO cse_fac_member VALUES("48","S10CSE015","2018-2019","","","","","","BOS Member","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("49","S11CSE016","2011-2012","","","","","","TUTOR","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("50","S11CSE016","2012-2013","","","","","","TUTOR","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("51","S11CSE016","2013-2014","","","","","","TUTOR","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("52","S11CSE016","2014-2015","","","","","","PLACEMENT COORDINATOR","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("53","S11CSE016","2014-2015","","","","","","TUTOR","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("54","S11CSE016","2015-2016","","","","","","TUTOR","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("55","S11CSE016","2015-2016","","","","","","PLACEMENT COORDINATOR","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("56","S11CSE016","2016-2017","","","","","","TUTOR","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("57","S11CSE016","2018-2019","","","","","","TUTOR","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("58","S11CSE016","2017-2018","","","","","","TUTOR","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("59","S12CSE005","2014-2015","","","","","","TUTOR","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("60","S12CSE005","2015-2016","","","","","","TUTOR","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("61","S12CSE005","2016-2017","","","","","","TUTOR","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("62","S12CSE005","2017-2018","","","","","","TUTOR","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("63","S12CSE005","2017-2018","","","","","","Placement Coordinator","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("64","S12CSE005","2016-2017","","","","","","Time Table in Charge","department","","","","","","","1","","","","","");
INSERT INTO cse_fac_member VALUES("65","S12CSE005","2017-2018","","","","","","Time Table in Charge","department","","","","","","","1","","","","","");





CREATE TABLE `cse_fac_ot_qual` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `sid` varchar(10) NOT NULL,
  `name_qual` varchar(50) NOT NULL,
  `year_com` int(10) NOT NULL,
  `cer` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `cse_fac_resg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `j_sup` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO cse_fac_resg VALUES("1","S01CSE009","Anna University","3140003","0","10900132058","Latha Shanmugam","2012","2014","Software Reliability","ENHANCED ANT COLONY OPTIMIZATION ALGORITHM FOR PARAMETER ESTIMATION METHOD IN SOFTWARE RELIABILITY M","");
INSERT INTO cse_fac_resg VALUES("2","S01CSE009","Periyar University","05670","0","089","D. Santhi Jeslet","2014","discontinued","Data Mining","Recommeder System Using Data Mining Techniques","");
INSERT INTO cse_fac_resg VALUES("3","S01CSE009","Periyar University","05670","0","099","Dhina Suresh","2014","ongoing","Cloud Computing","Enhanced Secure Sharing of Personal Health Records in Cloud using Multi Authority Attribute Based En","");
INSERT INTO cse_fac_resg VALUES("4","S01CSE009","Bharathiyar University","2012","0","0230","R. Jayanthi","2012","ongoing","Software Engineering","SOFTWARE DEFECT PREDICTION USING   METRICS BASED  ON  MACHINE  LEARNING TECHNIQUES","");
INSERT INTO cse_fac_resg VALUES("5","S01CSE009","Bharathiyar University","2012","0","0236","Manjula C","2012","ongoing","Software Engineering","SOFTWARE DEFECT PREDICTION USING DEEP LEARNING TECHNIQUES","");
INSERT INTO cse_fac_resg VALUES("6","S01CSE009","Bharathiyar University","2012","0","0355","Raja K","2012","ongoing","Network Security","","");
INSERT INTO cse_fac_resg VALUES("7","S01CSE009","Bharathiyar University","2012","0","","","","discontinued","","","");





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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `dept` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

INSERT INTO dept VALUES("53","Duplicate","vMC","lilly_swamy@yahoo.co.in","vmcahod","4321","576592","2019-04-16 10:13:15","1","	  ;oigoidfgvdrioh ","53852-mca.png","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1");
INSERT INTO dept VALUES("54","Duplicate1","vv","vijoad661@gmail.com","vv","123","490990","2019-05-08 15:32:37","1","	ftyhtfcyh   ","63542-mca.png","1","2","1","1","1","4","1","1","2","1","1","1","1","1","1","1","1");
INSERT INTO dept VALUES("55","Master Of Computer Application","MCA","hod_mca@adhiyamaan.ac.in","mca","1111","831330","2019-04-08 15:04:52","1","	   This is for MCA","8506-mca.png","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1");
INSERT INTO dept VALUES("56","Computer Science And Engineering","CSE","hod_cse@adhiyamaan.ac.in","cse","1111","589155","2019-05-09 15:00:28","0","	   This is For CSE","26773-cse.png","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1");
INSERT INTO dept VALUES("57","Information Technology","BIT","hod_it@adhiyamaan.ac.in","bit","1111","897914","2019-04-26 14:42:30","1","	   This is for IT","93347-it.png","1","1","1","1","2","1","1","1","1","1","1","1","1","1","1","1","1");
INSERT INTO dept VALUES("58","Electronics and Instrumentation Engineering","EIE","hod_eie@adhiyamaan.ac.in","eie","1111","101909","2019-05-09 11:38:15","0","	   This is for EIE ","29308-beeie.png","1","1","1","1","1","1","1","1","1","2","1","1","1","1","1","1","1");
INSERT INTO dept VALUES("59","Biomedical Engineering ","BME","hod_bme@adhiyamaan.ac.in","bme","1111","319038","2019-05-08 10:40:32","1","	   This is for BME ","15792-biomed.png","1","1","1","1","6","1","1","1","1","1","1","1","1","1","1","1","1");
INSERT INTO dept VALUES("60","Aeronautical Engineering Department","AER","hod_aero@adhiyamaan.ac.in","aer","1122","","0000-00-00 00:00:00","0","	   This is  Aeronautical Engineering.....","59998-aer.jpg","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1");
INSERT INTO dept VALUES("61","Physics","PHY","hod_phy@adhiyamaan.ac.in","phy","1122","","0000-00-00 00:00:00","0","	   This is phyics Department....","25259-phyices.jpg","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1");
INSERT INTO dept VALUES("62","Chemistry","CHE","hod_che@adhiyamaan.ac.in","che","1122","719630","2019-04-10 12:26:09","1","	  This is chemistry Department....","67634-chemistry.jpg","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1");
INSERT INTO dept VALUES("63","Maths","MAT","hod_maths@adhiyamaan.ac.in","mat","1122","","0000-00-00 00:00:00","0","	   This is maths Department......","55694-maths.png","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1");
INSERT INTO dept VALUES("64","English","ENG","hod_english@adhiyamaan.ac.in","eng","1122","","0000-00-00 00:00:00","0","	   This is English Department...","70513-english.jpg","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1");
INSERT INTO dept VALUES("65","Electronics and Communication Engineering","ECE","hod_ece@adhiyamaan.ac.in","ece","1122","896089","2019-05-04 11:48:35","1","      This is Electronics and Communication Engineering Department.........","10784-beece.png","1","1","1","1","2","1","1","1","1","1","1","1","1","1","1","1","1");
INSERT INTO dept VALUES("66","Electrical and Electronics Engineering ","EEE","hod_eee@adhiyamaan.ac.in","eee","1452","","0000-00-00 00:00:00","0","	   This is Electrical and Electronics Engineering Department","83440-eee.jpg","1","1","1","1","5","1","1","1","1","1","1","1","1","1","1","1","1");
INSERT INTO dept VALUES("67","Chemical Engineering ","CHM","hod_chem@adhiyamaan.ac.in","chm","9856","","0000-00-00 00:00:00","0","	This is for Chemical Engineering Department","21671-chm.jpg","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1");
INSERT INTO dept VALUES("68","Biotechnology","BIO","hod_bt@adhiyamaan.ac.in","bio","7854","369014","2019-04-30 10:15:51","1","	   This is Biotechnology Department","65775-bio.jpg","1","1","1","1","3","1","1","1","1","1","1","1","1","1","1","1","1");
INSERT INTO dept VALUES("69","Mechanical Engineering","MEC","hod_mech@adhiyamaan.ac.in","mec","4561","877780","2019-04-29 14:51:29","1","	   This is for Mechanical Engineering Department","6825-m2.jpg","1","1","1","1","5","1","1","1","1","1","1","1","1","1","1","1","1");
INSERT INTO dept VALUES("70","Civil Engineering","CIV","hod_civil@adhiyamaan.ac.in","civ","7532","478411","2019-05-09 11:54:55","0","	 This is for Civil Engineering Department  ","74415-civ.jpg","1","1","1","1","5","1","1","1","1","1","1","1","1","1","1","1","1");
INSERT INTO dept VALUES("71","Architecture Engineering","ARC","hod_arch@adhiyamaan.ac.in","arc","4862","","0000-00-00 00:00:00","0","	 This is for Architecture Engineering Department  ","11584-arc.jpg","1","1","1","1","3","1","1","1","1","1","1","1","1","1","1","1","1");
INSERT INTO dept VALUES("73","Master of Business Administration","MBA","hod_mba@adhiyamaan.ac.in","mba","5555","613692","2019-04-23 16:47:01","1","	   This MBA Department","68375-mba.png","1","1","1","1","4","1","1","1","1","1","1","1","1","1","1","1","1");
INSERT INTO dept VALUES("74","Duplicate2","DUP","vijoad661@gmail.com","dup","123","490990","2019-05-08 15:32:37","1","	   This Duplicate HOD Profile","37519-24928-bg1.jpg","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1","1");





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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO dept_info VALUES("1","vv","1987-1988","BE","arc","1992-1993","arc","arc","2006-2007","Ph.D.","CSE");
INSERT INTO dept_info VALUES("2","MCA","","","","1995-1996","MCA","MCA","","","");





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
  `app_order` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `dup_fac_attorg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `dup_fac_bkjrn` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `glkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
  `ph2key` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
  `otkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `dup_fac_funpat` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `patkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `dup_fac_glc` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `conkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `dup_fac_member` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `awakey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `dup_fac_ot_qual` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `sid` varchar(10) DEFAULT NULL,
  `name_qual` varchar(100) DEFAULT NULL,
  `year_com` int(10) DEFAULT NULL,
  `cer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `dup_fac_resg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `j_sup` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `dup_org` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
  `app_order` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO ece_fac VALUES("S01ECE016","MENAKADEVI T","1976-03-01","43","female","menaka_sar@rediffmail.com","9629350444","P.THANGAVELU","T.MANIMEKALAI","y","","Hindu","OC","Hosur","Hosur","Krishnagiri","Tamil Nadu","India","635109","Dr MGR Nagar, Adhiyamaan College of Engineering, Hosur, Krishnagiri - Dt, Tamil nadu","Plot#29 Golden City, Tottagiri raod,
Alasanatham , Hosur","346094889030","AQJPM7196E","","B+","2001-06-22","Professor","9894445988","ECE","80968-menaka-photo.jpg","2044-menaka--adhar-new1.pdf","9030","","","","");
INSERT INTO ece_fac VALUES("S01ECE018","S SUMATHI","1973-07-31","46","female","sumathi_2005@rediffmail.com","9487819151","D APPRANCHI","G VIMALA","y","","HINDU","BC","KRISHNAGIRI","KRISNAGIRI","KRISHNAGIRI","Tamil Nadu","India","635001","2/280,MANGAI NAGAR,
			 KATTIGANAPALLI(po),
			  KEEL PUDUR,
			  KRISHNAGIRI 
   ","2/280,MANGAI NAGAR,
			 KATTIGANAPALLI(po),
			  KEEL PUDUR,
			  KRISHNAGIRI 
   ","568728350822","AZXPS4281M","","O POS","2001-06-21","PROFESSOR AND HEAD","0","ECE","35472-dr.sumathi-photo.jpeg","48564-dr.s.sumathi.pdf","0822","","","","21170-experience-ace.pdf");
INSERT INTO ece_fac VALUES("S03ECE020","Dr.K.A.Dattathreya","1967-04-09","52","male","kadatta2002@gmail.com","9487819141","K.V.ANANTHARAMAIAH","SHARADAMMA K.A","y","","HINDU","GENERAL","KRISHNAGIRI","ARSIKERE","HOSUR","Karnataka","India","573103","183, 6TH CROSS vENKATESHWARA LAYOUT, OPP DSP OFFICE, HOSUR 635109 ","Son of K.V Anantharamaiah , Advocate Lakshmipuram Extn. Arsikere 573103, Hassan District, Karnataka	","346918928204","ACGPD6663G","H728327","AB+ve","2003-08-18","Professor","9449341260","ECE","50517-datta-photo-jpeg.jpeg","56839-datta-adharcard-compress.pdf","8204","","","","92781-ao.pdf");
INSERT INTO ece_fac VALUES("S09ECE013","M ASHOKKUMAR ","1982-05-17","37","male","ashokkumar.ece@adhiyamaan.in","9488975593","B MUNIRAJ","M RANI","y","","HINDU","BC","Bodinayakkanahalli","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635116","Bodinayakkanahalli, Odiyandahalli(P.O),
Denkanikottai(T.K),
Krishnagiri(D.T)
635116.","Bodinayakkanahalli, Odiyandahalli(P.O),
Denkanikottai(T.K),
Krishnagiri(D.T)
635116.	   ","870539246066","ANXPA5474C","","B+ve","2009-07-01","ASSISTANT PROFESSOR","8695697989","ECE","88754-ashok-photo.jpg","52720-ashok-aadhar.pdf","6066","","","","");
INSERT INTO ece_fac VALUES("S09ECE015","S VIJAY MURUGAN","1983-05-16","36","male","vijaymuruganeee@gmail.com","9443242295","S SIVAGNANAM","A MAHESWARI","y","","HINDU","BC","AMMAPET COLONY","SALEM","SALEM","Tamil Nadu","India","636014","1/588 ISWARYA ILLAM
VISHNU STREET 2ND CROSS
MOOKANDAPALLI
HOSUR	   ","42/5/38, KAMARAJAR NAGAR COLONY
2ND STREET
SALEM - 636014	   ","699685842918","ALLPV3040K",""," O +v","2009-06-22","Assistant Professor","0","ECE","85871-s-vijay-murugan.jpg","39655-aadar.pdf","1431984REN","","","","92492-appointment-letter.pdf");
INSERT INTO ece_fac VALUES("S09ECE019","M.SIVAKUMAR","1974-05-20","45","male","andhimaalai@gmail.com","9698088338","S MURUGESAN","G JAYALAKSHMI","y","","HINDU","BC","HOSUR","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635126","2/919,6th Cross,Gandhi Nagar, SIPCOT (PO),Mookandapalli, Hosur-635126   ","2/919,6th Cross,Gandhi Nagar, SIPCOT (PO),Mookandapalli, Hosur-635126   ","532530743144","ASMPS4228C","","B+ve","2009-06-22","Associate professor","9442093888","ECE","70246-photo(1).jpg","18877-sivakumar-aadhaar.pdf","3144","","","","");
INSERT INTO ece_fac VALUES("S10ECE005","K RAJESH KUMAR","1987-03-10","32","male","rajeshmadesh@gmail.com","8838252760","M KALAIPANDIYAN","M KARPAGGAM","y","","HINDU","BC","KRISHNAGIRI","KRISHNAGIRI","KRISHNAGIRI","Tamil Nadu","India","635001","2/57B, PARIS NAGAR, NEAR TAMILNDU HOTEL, KRISHNAGIRI	   ","2/57B, PARIS NAGAR, NEAR TAMILNDU HOTEL, KRISHNAGIRI	   ","251621472904","AOJPR2876N","","A +ve","2010-06-15","Assistant Professor","9944372324","ECE","83465-photo-raje-1.jpg","76949-aadhar-rajesh.pdf","2904","","","","47425-ap-rk.pdf");
INSERT INTO ece_fac VALUES("S10ECE012","ShanthaLakshmi K","1976-01-15","43","female","shrobsen@gmail.com","9786980123","Krishnasamy T A","Jayalakshmi K","y","","HINDU","OBC","Dharmapuri","DHARMAPURI","DHARMAPURI","Tamil Nadu","India","636701","	225,Gandhi nagar
Fifth cross   Dharmapuri","	225,Gandhi nagar
Fifth cross   Dharmapuri","262608188798","BQKPS8155B",""," O+ve","2010-06-12","Assistant Professor","8248148489","ECE","39481-000_6708.jpg","2812-shantha-lakshmi-adharcard-.pdf.pdf","8798","","","","");
INSERT INTO ece_fac VALUES("S10ECE017","POOVENDRAN R","1981-06-12","38","male","poovendranr@gmail.com","8248149060","PS RAMAN","R THERASAMMAL","y","","HINDU","OBC","CUMBUM","THENI","THENI","Tamil Nadu","India","625521","	171/w2 Cumbum theni Dt   ","	171/w2 Cumbum theni Dt   ","451917241525","AXWPP4399N",""," O-ve","2010-06-11","Assistant Professor","0","ECE","46909-poovendran.jpg","8683-aadhar-poovendran.pdf","1525","","","","");
INSERT INTO ece_fac VALUES("S11ECE006","MARTIN JOEL RATHNAM","1986-08-09","33","male","martinjoelrathnam@gmail.com","9578025467","M SUSAI RATHINAM","JULIE PHILOMENA BARNABAS","y","","CHRISTIAN","OBC","BYATRAYANAPURA","BANGALORE","BANGALORE","Karnataka","India","560026","NO 18, 9TH CROSS GANAPATHY NAGAR, HOSEKEREHALLI MAIN ROAD BYATRAYANAPURA, BANGALORE	   ","NO 18, 9TH CROSS GANAPATHY NAGAR, HOSEKEREHALLI MAIN ROAD BYATRAYANAPURA, BANGALORE	   ","695954666270","BBYPR7213N","","B -VE","2011-12-07","Assistant Professor","0","ECE","98070-martin.jpg","20899-martin-aadhar.pdf","6270","","","","92130-ao-new.pdf");
INSERT INTO ece_fac VALUES("S11ECE007","N.NAGARAJU","1987-06-02","32","male","nnagaece@gmail.com","9003620285","NARAYANAPPA","DEVIRAMMA","n","","HINDU","BC","KOTHAGONDAPALLY","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635109","	   S/O D.NARAYANAPPA,
1/105-KOTHAGONDAPALLY(VILL AND PO)
HOSUR-635109,
KRISHNAGIRI(DIST)","	   S/O D.NARAYANAPPA,
1/105-KOTHAGONDAPALLY(VILL AND PO)
HOSUR-635109,
KRISHNAGIRI(DIST)","959521195648","ANQPN0801R","","O+ve","2011-07-04","ASSISTANT PROFESSOR","0","ECE","78281-naga-photo.jpg","77402-naga-adhar-card.pdf","5648","","","","46218-naga-appoint.pdf");
INSERT INTO ece_fac VALUES("S12ECE001","J.Subhash","1989-03-12","30","male","jsubhash12@gmail.com","9894896043","K.JAYAKUMAR","R.BIRUNTHA","n","","Hindu","BC","THIRUKOVILUR","THIRUKOVILUR","Villupuram","Tamil Nadu","India","605757","	   16/10 THEPPAKULLA STREET
","	   16/10 THEPPAKULLA STREET
","797242618910","DNAPS0526P","","A1-","2012-11-26","Assistant Professor","9486553837","ECE","88728-photo-subhash.jpg","60891-subhash-aadhar.pdf","8910","","","","");
INSERT INTO ece_fac VALUES("S12ECE008","A P NITHYAPRIYA","1989-11-03","30","female","nithyapriyadpi@gmail.com","9790761049","M PALANISAMY","V PARVATHI","n","","HINDU","OBC","DHARMAPURI","DHARMAPURI","DHARMAPURI","Tamil Nadu","India","636807","	3/99 THROUPATHI AMMAN KOVIL STREET, ADHIYAMANKOTTAI   ","	3/99 THROUPATHI AMMAN KOVIL STREET, ADHIYAMANKOTTAI   ","439517052320","ARTPN2912J","","O+ve","2012-11-26","Assistant Professor","0","ECE","12902-nithya-photo1.jpg","10889-nithya-aadhaar.pdf","2320","","","","90158-app.pdf");
INSERT INTO ece_fac VALUES("S13ECE003","P MANIVANNAN","1989-05-21","30","male","manivannanece2013@gmail.com","9597386392","M PALANIVEL","P RAJAMAL","y","","HINDU","BC","HARUR","HARUR","DHARMAPURI","Tamil Nadu","India","636903","4/244, VIJAYA NAGAR
CHINNANKUPPAM POST
HARUR TK
DHARMAPURI	   ","4/244, VIJAYA NAGAR
CHINNANKUPPAM POST
HARUR TK
DHARMAPURI	   ","479725693097","BZPPM0641G","","B+ve","2013-06-10","Assistant Professor","0","ECE","17804-rsz_dsc_5314.jpg","81285-pdfresizer.com-pdf-resize.pdf","3097","","","","");
INSERT INTO ece_fac VALUES("S13ECE011","M VENKATESAN ","1982-04-15","37","male","venkateshace82@gmail.com","8838251532","V MANICKAM","K RANI","y","","HINDU","SC","JAGADEVI","KRISHNAGIRI","KRISHNAGIRI","Tamil Nadu","India","635203","3/138,
JAGADEVI POST AND VILLAGE       
KRISHNAGIRI TK AND DT","3/138,
JAGADEVI POST AND VILLAGE       
KRISHNAGIRI TK AND DT","446918061218","AKGPV4052M","","O+ve","2013-06-07","ASSISTANT PROFESSOR","0","ECE","53909-venki-photo.jpg","95054-venki-aa-40kb.pdf","1218","","","","4658-appoinment-letter.pdf");
INSERT INTO ece_fac VALUES("S14ECE009","K DEEPA","1991-04-24","28","female","deepumuthu17@gmail.com","9600416904","K KANNAN","K BHAGYALAKSHMI","y","","HINDU","OBC","HOSUR","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635126","	3/239-5 MUTHU ILLAM, SURYA NAGAR A CROSS, ARASANATTY.   ","	3/239-5 MUTHU ILLAM, SURYA NAGAR A CROSS, ARASANATTY.   ","280304428130","CBBPD8586N","R7307524","AB+ve","2014-06-16","Assistant Professor","0","ECE","63046-j-2171-l.jpg","69467-deepa-aathaar.pdf","8130","","","","51962-appointment-letter.pdf");
INSERT INTO ece_fac VALUES("S14ECE014","R SOMASUNDARAM","1990-06-10","29","male","rk.somu@yahoo.co.in","9500366288","S. RAVI SANKAR","M.KALYANI","n","","HINDU","OC","TIRUNELVELI","TIRUNELVELI","TIRUNELVELI","Tamil Nadu","India","627011","	NO. B 74 NEW NO. 9, 17TH CROSS STREET, MAHARAJA NAGAR   ","	NO. B 74 NEW NO. 9, 17TH CROSS STREET, MAHARAJA NAGAR   ","482676053360","DYAPS4401L","","B+ve","2014-06-08","Assistant Professor","0","ECE","10438-somu-(1).jpg","88008-somu-aadhar.pdf","3360","","","","97331-appointment.pdf");
INSERT INTO ece_fac VALUES("S16ECE010","V SUNDARA JEYALAKSHMI","1987-08-06","32","female","sundarajeyalakshmi.v@gmail.com","9566783902","K VELLAI GANAPATHY","V CHANDRA","y","","HINDU","OBC","HOSUR","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635126","	PLOT NO 41, DOOR NO 3B/13,1st CROSS STREET ,KRISHNA NAGAR,NEAR SIVARANJANI HOTEL,DHARGA   ","	PLOT NO 41, DOOR NO 3B/13,1st CROSS STREET ,KRISHNA NAGAR,NEAR SIVARANJANI HOTEL,DHARGA   ","772876175170","CKKPS1204G","","B +VE","2016-08-01","Assistant Professor","0","ECE","63552-photo.jpg","60935-sjl.pdf","5170","","","","45127-adhiyamaan-appointment-2016.pdf");
INSERT INTO ece_fac VALUES("S17ECE004","DAVID WILLIAM RAJ L","1992-06-03","27","male","davidraj1311@gmail.com","9790347191","LOURDUSAMY T","RANI S","y","","CHRISTIAN","BC","KOPPAKARAI","BOMMIDI","DHARMAPURI","Tamil Nadu","India","635301","4/363,KOPPAKARAI VILLAGE,THIPPIREDDIHALLI POST,DHARMAPURI TALUK,DHARMAPURI DISTRICT	   ","4/363,KOPPAKARAI VILLAGE,THIPPIREDDIHALLI POST,DHARMAPURI TALUK,DHARMAPURI DISTRICT	   ","219225397932","BLMPD9054K","","B+ve","2017-07-17","Assistant Professor","0","ECE","81150-david-william-raj.jpg","35354-david-aadhar-100kb.pdf","7932","","","","16815-appointment-order.pdf");





CREATE TABLE `ece_fac_attorg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

INSERT INTO ece_fac_attorg VALUES("1","S09ECE015","2013-2014","workshop","LaTeX","2","2013-08-30","2013-08-31","0000-00-00","Department of Computer Science and Engineering","Salem","national","90049-sona-college---latex-august-2013.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO ece_fac_attorg VALUES("2","S09ECE015","2011-2012","training","Digital IC Design","3","2012-02-23","2012-02-25","0000-00-00","VLSI Division,School of Electronics Engineering","VIT University","national","77802-vit---hands-on-traninig.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO ece_fac_attorg VALUES("3","S14ECE009","2015-2016","workshop","MISSION 10X UTLP","4","2016-03-28","2016-03-31","0000-00-00","MISSION 10X - WIPRO TECHNOLOGIES","ADDHIYAMAAN COLLEGE OF ENGINEERING, HOSUR","district","13080-mission10x.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO ece_fac_attorg VALUES("4","S14ECE009","2015-2016","workshop","ENGINEERING FACULTY WORKSHOP","3","2015-11-19","2015-11-21","0000-00-00"," WIPRO TECHNOLOGIES","ADHIYAMAAN COLLEGE OF ENGINEERING, HOSUR","district","76495-wipro-workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO ece_fac_attorg VALUES("5","S09ECE015","2009-2010","seminar","Secure Routing and Intrusion Detection Techniques ","3","2010-03-29","2010-03-31","0000-00-00","DRDO","Kongu Engineering College","national","26869-kongu-engineering.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO ece_fac_attorg VALUES("6","S09ECE015","2011-2012","seminar","Strategies in Enhancing Research","2","2012-02-16","2012-02-17","0000-00-00","Centre for Research, Anna University","Coimbatore","national","76658-anna-university---seminor-febrary-2010.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO ece_fac_attorg VALUES("7","S01ECE018","2015-2016","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","training","Microwave Integrated Circuits","Self","1","0000-00-00","0000-00-00","2015-07-24","Mr.S.Sathishkumar, Mindtree Li","60","district","67313-first.jpeg","1");
INSERT INTO ece_fac_attorg VALUES("8","S01ECE018","2015-2016","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","training","Inter personal skills of the Emerging engineers","Self","1","0000-00-00","0000-00-00","2015-09-28","Shri.LavanamAmbulla GlobalCamp","70","district","51504-1st-min.jpeg","1");
INSERT INTO ece_fac_attorg VALUES("9","S01ECE018","2015-2016","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","training","Avionics and Cockpits in Fighter Jets","Self","1","0000-00-00","0000-00-00","2016-03-10","Shri.B.N.Lokesha Scientist ‘","80","district","70457-100_0141.jpeg","1");
INSERT INTO ece_fac_attorg VALUES("10","S01ECE018","2016-2017","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","training","India’s next target is to build fifth generation","Self","1","0000-00-00","0000-00-00","2016-09-19","Shri.Ch.Durga Prasad, Scientis","79","district","74601-first-(1).jpeg","1");
INSERT INTO ece_fac_attorg VALUES("11","S01ECE018","2017-2018","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","training","Developments in Atomic, Molecular, Optical and Nan","Self","1","0000-00-00","0000-00-00","2018-03-13","Shri.S.S.Patil Scientist’E�","75","district","79575-100_0141.jpeg","1");
INSERT INTO ece_fac_attorg VALUES("12","S01ECE018","2017-2018","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","training","Software Defined Network","Self","1","0000-00-00","0000-00-00","2017-09-18","Mr.V.Ramkumar, Engineering gro","82","district","12424-100_0141.jpeg","1");
INSERT INTO ece_fac_attorg VALUES("13","S01ECE018","2017-2018","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","training","Field Programmable Gate Array and Direct Digital S","self","1","0000-00-00","0000-00-00","2018-02-12","Ms.M.Tara, Application Enginee","79","district","67952-5.jpeg","1");
INSERT INTO ece_fac_attorg VALUES("14","S01ECE018","2016-2017","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","workshop","Internet of Things","self","2","2016-08-03","2016-08-04","0000-00-00","Shri.Ajith and Shri.Dharmesh R","68","district","78134-5.jpeg","1");
INSERT INTO ece_fac_attorg VALUES("15","S01ECE018","2017-2018","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","workshop","Wireless robotics","self","2","2017-12-05","2017-12-06","0000-00-00","Prof. Rajasree.B , Prof.Sonali","65","district","12952-6.jpeg","1");
INSERT INTO ece_fac_attorg VALUES("16","S01ECE018","2017-2018","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","workshop","Internet of Things","self","2","2018-02-14","2018-02-15","0000-00-00","Mr.Shamir, Robokart in associa","72","district","28119-4.jpeg","1");
INSERT INTO ece_fac_attorg VALUES("17","S01ECE018","2013-2014","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","workshop","PCB  Design and Fabrication","self","1","0000-00-00","0000-00-00","2014-02-17","Mr.Vaithyanathan, R.R Circuits","79","district","33198-4.jpeg","1");
INSERT INTO ece_fac_attorg VALUES("18","S01ECE018","2013-2014","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","training","Industry Oriented Real time Embedded Systems and P","self","1","0000-00-00","0000-00-00","2013-12-13","Mr.J.Kasinathan, Mr.Sunil, Mr.","79","district","9830-1st.jpg","1");
INSERT INTO ece_fac_attorg VALUES("19","S01ECE018","2013-2014","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","training","Communication Engineering","self","1","0000-00-00","0000-00-00","2013-10-09","Prof.Jayaraman, Pedagogy Syste","79","district","45944-5.jpeg","1");
INSERT INTO ece_fac_attorg VALUES("20","S01ECE018","2013-2014","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","workshop","ISENSOBOTZ ON ARDUINO","self","2","2013-07-29","2013-07-30","0000-00-00","Mr.JigneshVaghela, Mr.A.Ghonth","78","district","23704-6.jpeg","1");
INSERT INTO ece_fac_attorg VALUES("21","S01ECE018","2012-2013","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","conference","National conference on frontiers in communication ","Self","2","2013-03-18","2013-03-19","0000-00-00","Shri .Ramalingam 	ISTRAC 	Bang","180","national","9001-pamphlet--front-side.jpg","1");
INSERT INTO ece_fac_attorg VALUES("22","S01ECE018","2015-2016","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","conference","National conference on frontiers in communication ","Self","2","2016-03-10","2016-03-11","0000-00-00","Shri.B.N.Lokesha Scientist ‘","200","national","52410-1.jpg","1");
INSERT INTO ece_fac_attorg VALUES("23","S01ECE018","2014-2015","workshop","Training of evaluators / Resource persons on outco","3","2014-06-14","2014-06-16","0000-00-00","Bannari Amman Institute of Technology","Erode","national","43353-workshop-erode.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO ece_fac_attorg VALUES("24","S12ECE008","2011-2012","workshop","MIMO  Wireless Communication","4","2011-08-24","2011-08-27","0000-00-00","TIFAC-CORE","MADURAI","district","3194-workshop-thagaraja-11.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO ece_fac_attorg VALUES("25","S12ECE008","2010-2011","workshop"," Wireless Communication -LAB VIEW","1","0000-00-00","0000-00-00","2011-01-29","Dept of ECE-PSG","coimbatore","district","25515-workshop-psg-11.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO ece_fac_attorg VALUES("26","S12ECE008","2010-2011","training","NS2","2","2010-11-02","2010-11-03","0000-00-00","SAT INFOSYS","sathyamangalam","district","50394-workshop-bannari-10.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO ece_fac_attorg VALUES("27","S12ECE008","2011-2012","workshop","Digital Video Processing","1","0000-00-00","0000-00-00","2011-09-30","Dept of ECE-Anna University","coimbatore","district","70118-workshop-annauniversity-11.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO ece_fac_attorg VALUES("28","S16ECE010","2012-2013","workshop","BIO MEDICAL IMAGE PROCESSING","1","0000-00-00","0000-00-00","2013-03-02","VIT UNIVERSITY","CHENNAI","state","18088-vit-workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO ece_fac_attorg VALUES("29","S16ECE010","2011-2012","seminar","ALL ROUND DEVELOPMENTS ACHIEVED THROUGH EMBEDDEDSY","5","2011-12-19","2011-12-23","0000-00-00","VICRAM COLLEGE OF ENGINEERING","SIVAGANGAI","national","55669-vickram-seminar.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO ece_fac_attorg VALUES("30","S16ECE010","2012-2013","seminar","RECENT TRENDS INCOMMUNICATION TECHOLOGIES","1","0000-00-00","0000-00-00","2012-08-25","VELAMMAL COLLEGE OF ENGINEERING AND TECHNOLOGY","MADURAI","national","93359-velammal-seminar.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO ece_fac_attorg VALUES("31","S17ECE004","2015-2016","fdp","VLSI DESIGN","7","2015-12-11","2015-12-17","0000-00-00","Dept of ECE-Anna University","JEPPIAAR INSTITUTE OF TECHNOLOGY","state","62725-fdp.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO ece_fac_attorg VALUES("32","S17ECE004","2013-2014","workshop","WAYS AMD MEANS TO WRITE RESEARCH PAPER","1","0000-00-00","0000-00-00","2013-12-01","AVS ENGINEERING COLLEGE","SALEM","national","33731-workshop-david.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO ece_fac_attorg VALUES("33","S10ECE017","2013-2014","fdp","REAL WORLD DSP","13","2013-07-15","2013-07-27","0000-00-00","CHANNABASAVESHWARA INSTITUTE OF TECHNOLOGY","CIT GUBBY, KARNATAKA","national","48040-faculty-dev-program-chanabeswevara.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO ece_fac_attorg VALUES("34","S10ECE017","2011-2012","fdp","Research methodologies and issues in engineering","13","2011-12-12","2011-12-24","0000-00-00","THIAGARAJAR COLLEGE OF ENGINEERING","MADURAI","national","92240-faculty-developement-program-thiyagaraj.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO ece_fac_attorg VALUES("35","S10ECE017","2013-2014","training","MISSION 10X UTLP","5","2014-03-17","2014-03-21","0000-00-00","MISSION 10X - WIPRO TECHNOLOGIES","ADHIYAMAAN COLLEGE OF ENGINEERING, HOSUR","national","57271-wipro-mission-10x.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO ece_fac_attorg VALUES("36","S10ECE017","2013-2014","workshop","ENGINEERING FACULTY WORKSHOP","3","2014-02-12","2014-02-14","0000-00-00","MISSION 10X - WIPRO TECHNOLOGIES","ADHIYAMAAN COLLEGE OF ENGINEERING, HOSUR","national","81099-wipro-workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO ece_fac_attorg VALUES("37","S10ECE017","2014-2015","fdp","XILINX DESIGN FLOW","17","2014-10-20","2014-11-05","0000-00-00","ADHIYAMAAN COLLEGE OF ENGINEERING","ADHIYAMAAN COLLEGE OF ENGINEERING, HOSUR","state","94340-sponsered-fdp-xilinx-desing-20oct-to-5nov-2014.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO ece_fac_attorg VALUES("38","S10ECE017","2012-2013","fdp","ADVANCES IN MICROWAVE AND OPTICAL COMMUNICATION TE","14","2013-04-29","2013-05-12","0000-00-00","KLN COLLGE OF ENGINEERING","POTTAPALAYAM, SIVAGANGAI","national","1581-kln-clg-29apr-to-12-may-2013.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");





CREATE TABLE `ece_fac_bkjrn` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `glkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=latin1;

INSERT INTO ece_fac_bkjrn VALUES("1","S01ECE018","2007-2008","Principles of VLSI D","Principles of VLSI Design","9788183711340","2008-03","Scitech Publications( India) Pvt. Ltd.","Book","1","","","","","","","","","","","","","");
INSERT INTO ece_fac_bkjrn VALUES("2","S01ECE018","2007-2008","Intelligent Computin","Intelligent Computing","3540372717","2008-03","Springer","Chapter","1","","","","","","","","","","","","","");
INSERT INTO ece_fac_bkjrn VALUES("3","S01ECE018","","","","","","","","","","","","","","","","","","","","https://doi.org/10.1007/s10766-018-0607-5","1");
INSERT INTO ece_fac_bkjrn VALUES("4","S01ECE018","2017-2018","","","","","","","","Optimal Feature Selection for the Classification of Hyperspectral Imagery Using Adaptive Spectral–","Springer US-International Journal of Parallel Prog","41","6","0885-7458","scopus","https://doi.org/10.1007/s10766-018-0607-5","4","5839-springer-a1.pdf","1","1","","");
INSERT INTO ece_fac_bkjrn VALUES("5","S01ECE018","2016-2017","","","","","","","","Analysis of THD in Cascaded H-Bridge Multilevel Inverter with Fuzzy Logic Controller","	Journal of Electrical Engineering","17","1","	1335-3632","sci","https://www.jee.ro","3","10387-journal-of-electrical-engineering-a1.pdf","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("6","S01ECE018","2011-2012","","","","","","","","EACS Approach for Grid Workflow Scheduling in a Computational Grid","Springer-Verlag Berlin Heidelberg","250","1","0303-4216","scopus","https://openlibrary.org/publishers/Springer-Verlag_Berlin_Heidelberg","3","67644-springer-verlag-berlin-heidelberg.pdf","1","1","","");
INSERT INTO ece_fac_bkjrn VALUES("7","S01ECE018","2011-2012","","","","","","","","Handoff Mobiles with Low Latency in Heterogeneous Networks for Seamless Mobility: A Survey and Futur","European Journal of Scientific Research","81","3","1450-216X","scopus","http://www.europeanjournalofscientificresearch.com","4","9375-3.european-journal-of-scientific-research.pdf","1","1","","");
INSERT INTO ece_fac_bkjrn VALUES("8","S01ECE018","2012-2013","","","","","","","","Comparative study of two techniques of  missing value imputation in medical databases with data accu","European Journal of Scientific Research","97","3","1450-216X","scopus","http://www.europeanjournalofscientificresearch.com","3","62595-1.european-journal-of-scientific-research.pdf","1","1","","");
INSERT INTO ece_fac_bkjrn VALUES("9","S01ECE018","2012-2013","","","","","","","","A Study on Issues in Cloud Computing","European Journal of Scientific Research","102","4","1450-216X","scopus","http://www.europeanjournalofscientificresearch.com","4","40731-2.european-journal-of-scientific-research.pdf","1","1","","");
INSERT INTO ece_fac_bkjrn VALUES("10","S01ECE018","2013-2014","","","","","","","","Biologically-Inspired Vertical Mobile Handoff with Seamless Mobility","International Journal of Innovative Research in Sc","2","9","2319-8753","others","http://http://www.rroij.com","3","40582-3.international-journal-of-innovative-research-in-science.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("11","S01ECE018","2013-2014","","","","","","","","PERFORMANCE ANALYSIS OF CASCADED MULTILEVEL INVERTERS USING SHE PWM TECHNIQUE FOR THE EMERGING APPLI","European Journal of Scientific Research","103","4","1450-216X","scopus","http://www.europeanjournalofscientificresearch.com","3","2361-4.2.european-journal-of-scientific-research.pdf","1","1","","");
INSERT INTO ece_fac_bkjrn VALUES("12","S01ECE018","2013-2014","","","","","","","","Avoiding Unbeneficial Handoff and Reducing Handoff Latency in Wlans Based on Network Condition","INTERNATIONAL JOURNAL OF ENGINEERING SCIENCES & RE","2","9","2277-9655","ugc","http: // www.ijesrt.com","2","43368-5.international-journal-of-engineering-sciences-&-research.pdf","2","1","","");
INSERT INTO ece_fac_bkjrn VALUES("13","S01ECE018","2012-2013","","","","","","","","Dual Mode Mpeg Steganography Scheme For Mobile and Fixed Devices","International Journal of Engineering Research and ","6","3","2278-800X","scopus","www.ijerd.com","3","54729-6.international-journal-of-engineering-research-&-development.pdf","4","1","","");
INSERT INTO ece_fac_bkjrn VALUES("14","S01ECE018","2013-2014","","","","","","","","Location and Priority Based Vertical Handoff Approach for Seamless Mobility","International Journal of Computer Applications","11","3","0975 – 8887","ugc","http://www.ijcaonline.org","2","41614-7.international-conference-on-current-trends-in-advanced-computing.pdf","3","1","","");
INSERT INTO ece_fac_bkjrn VALUES("15","S01ECE018","2013-2014","","","","","","","","Control of Hybrid System Using Multi-Input Inverter and Maximum Power Point Tracking","International Journal of Engineering Research and ","3","4","2248-9622","ugc","http://www.ijera.com","3","66700-8.international-journal-of-engineering-research-and-applications.pdf","5","1","","");
INSERT INTO ece_fac_bkjrn VALUES("16","S01ECE018","2012-2013","","","","","","","","A comparative study on various security attacks in MANET","INTERNATIONAL JOURNAL OF ENGINEERING SCIENCES & RE","2","3","2277-9655","ugc","http: // www.ijesrt.com","2","94193-9.5.international-journal-of-engineering-sciences-&-research.pdf","5","1","","");
INSERT INTO ece_fac_bkjrn VALUES("17","S01ECE018","2013-2014","","","","","","","","Trust Based Resource Selection Policies To Optimize Aco Scheduler In Grid Environment","International Journal of Applied Engineering Resea","9","22","0973-4562","ugc","http://www.ripublication.com","3","83370-1.international-journal-of-applied-engineering-research.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("18","S01ECE018","2014-2015","","","","","","","","A Transformer Less Grid-Connected Photovoltaic System Based On The Single Stage Boost -Three Phase I","International Journal of Applied Engineering Resea","10","30","0973-4562","ugc","http://www.ripublication.com/ijaer.htm","3","88593-1.international-journal-of-applied-engineering-research.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("19","S01ECE018","2014-2015","","","","","","","","Thermo Electric Generator Modeling Based on Radiation Effects","International Journal of Applied Engineering Resea","10","30","0973-4562","ugc","http://www.ripublication.com/ijaer.htm","2","69224-2.international-journal-of-applied-engineering-research.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("20","S01ECE018","2014-2015","","","","","","","","Fuzzy Optimization of Electric Vehicle Charging Under Grid Power Consumption Constraint","International Journal of Applied Engineering Resea","10","30","0973-4562","ugc","http://www.ripublication.com/ijaer.htm","2","88792-3.international-journal-of-applied-engineering-research.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("21","S01ECE018","2014-2015","","","","","","","","An Alternate Imputation Technique of A Mean Method For Missing Values and Comparative Study With Nei","International Journal of Applied Engineering Resea","10","4","0973-4562","ugc","http://www.ripublication.com/ijaer.htm","3","2404-4.international-journal-of-applied-engineering-research.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("22","S01ECE018","2014-2015","","","","","","","","Efficient Data Storage and Retrieval in Cloud Environment Using Cuckoo Hashing and Latent Semantic S","Middle-East Journal of Scientific Research","23","6","1990-9233","scopus","http://idosi.mejsr","2","89740-5.middle-east-journal-of-scientific-research.pdf","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("23","S01ECE018","2014-2015","","","","","","","","DCSA: Data Classification based Secure Storage and Efficient Access Control in cloud","International Journal of Applied Engineering Resea","10","20","0973-4562","ugc","http://www.ripublication.com/ijaer.htm","3","43461-6.international-journal-of-applied-engineering-research.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("24","S01ECE018","2014-2015","","","","","","","","Investigation of the Effect of Dielectric Properties of the Biscuit on RF Power Uniformity using a F","Indian Journal of Science and Technology,","8","26","0974-5645","scopus","http://www.indjst.org","2","59606-7.indian-journal-of-science-and-technology.pdf","5","1","","");
INSERT INTO ece_fac_bkjrn VALUES("25","S01ECE018","2014-2015","","","","","","","","A hybrid Ant colony optimization algorithm for job scheduling in computational Grids","Indian Journal of Science and Technology","74","1","0974-6846","ugc","http://indjst.org","3","59833-8.indian-journal-of-science-and-technology.pdf","5","1","","");
INSERT INTO ece_fac_bkjrn VALUES("26","S01ECE018","2014-2015","","","","","","","","THD ANALYSIS OF SEVEN LEVEL HYBRID PV INVERTER WITH LESS NUMBER OF SWITCHES","International Journal of Applied Engineering Resea","10","9","0973-4562","ugc","http://www.ripublication.com/ijaer.htm","2","72976-10.international-journal-of-applied-engineering-research.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("27","S01ECE018","2014-2015","","","","","","","","DATA ACQUISITION SYSTEMS APPLIED TO DECENTRALIZED RENEWABLE ENERGY PLANTS USING WIRELESS SENSOR NETW","International Journal of Applied Engineering Resea","10","30","0973-4562","ugc","http://www.ripublication.com/ijaer.htm","3","59010-11.international-journal-of-applied-engineering-research.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("28","S01ECE018","2014-2015","","","","","","","","DTC of B6 Inverter Fed BLDC Motor Drives With Reduced Torque Ripple During Sector To Sector Commutat","International Journal of Applied Engineering Resea","10","30","0973-4562","ugc","http://www.ripublication.com/ijaer.htm","2","99597-12.international-journal-of-applied-engineering-research.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("29","S01ECE018","2014-2015","","","","","","","","THREE PHASE ANALYSIS OF SYMMETRICAL CASCADED H-BRIDGE MULTILEVEL INVERTER WITH PV ARRAYS","International Journal of Applied Engineering Resea","10","37","0973-4562","ugc","http://www.ripublication.com/ijaer.htm","3","19775-13.international-journal-of-applied-engineering-research.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("30","S01ECE018","2014-2015","","","","","","","","Bandwidth based vertical handoff for tightly coupled wimax/wlan overlay networks","journal of scientific and industrial research","74","1","0974-6846","ugc","http://indjst.org","3","41036-14.international-journal-of-applied-engineering-research.pdf","5","1","","");
INSERT INTO ece_fac_bkjrn VALUES("31","S01ECE018","2014-2015","","","","","","","","THD Analysis of a 13 Level Asymmetric Hybrid Cascaded Multilevel Inverter for Industrial Application","World Engineering & Applied Sciences Journal","6","2","2079-2204","scopus","http://idosi.weasj","2","16248-15.world-engineering-&-applied-sciences-journal.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("32","S01ECE018","2015-2016","","","","","","","","SEQUENTIAL ENCRYPTION FOR MULTIPLE CHUNKS OF DATA IN CLOUD ENVIRONMENT","J o u r n a l o f A d v a n c e s i n c h e m i s ","12","13","2 3 2 1 - 8 0 7 X","sci","http://w w w . c i r w o r l d . c o m","3","88669-1.j-o-u-r-n-a-l-o-f-a-d-v-a-n-c-e-s-i-n-c-h-e-m-i-s-t-r-y.pdf","1","1","","");
INSERT INTO ece_fac_bkjrn VALUES("33","S01ECE018","2015-2016","","","","","","","","Enhanced Fuzzy C-Means Clustering with Optimization of Support Vector Regression for Imputation of M","Journal of Medical Imaging and Health Informatics","6","1","2156-7018","scopus","http://www.aspbs.com","2","65459-2.journal-of-medical-imaging-and-health-informatics.pdf","1","1","","");
INSERT INTO ece_fac_bkjrn VALUES("34","S01ECE018","2016-2017","","","","","","","","Reduction of THD in Thirteen-Level Hybrid PV Inverter with Less Number of Switches","Circuits and Systems","7","1","2153-1285","scopus","http://dx.doi.org/10.4236/cs.2016.710290","3","40698-5.circuits-and-systems.pdf","1","1","","");
INSERT INTO ece_fac_bkjrn VALUES("35","S01ECE018","2016-2017","","","","","","","","Reduction of THD in Seven Level H-Bridge Inverter with Reduced Number of Switches","Asian Journal of Research in Social Sciences and H","6","8","2249-7315","ugc","http://www.aijsh.com","3","72346-6.asian-journal-of-research-in-social-sciences-and-humanities.pdf","5","1","","");
INSERT INTO ece_fac_bkjrn VALUES("36","S01ECE018","2016-2017","","","","","","","","Design and Implementation of Cryptographic Shared Processor using FPGA","Asian Journal of Research in Social Sciences and H","6","9","2249-7315","ugc","http://www.aijsh.com","2","75929-7.asian-journal-of-research-in-social-sciences-and-humanities.pdf","5","1","","");
INSERT INTO ece_fac_bkjrn VALUES("37","S01ECE018","2016-2017","","","","","","","","High-Performance FIR Filter Implementation Using Anurupye Vedic Multiplier","Circuits and Systems","7","2","2153-1293","scopus","http://www.scirp.org/journal/cs","2","57508-8.circuits-and-systems.pdf","1","1","","");
INSERT INTO ece_fac_bkjrn VALUES("38","S01ECE018","2016-2017","","","","","","","","Analysis of THD in Cascaded H-Bridge Multilevel Inverter with Fuzzy Logic Controller","journal of electrical engineering","17","14","1582-4594","sci","http://www.jee.ro","2","16116-10.journal-of-electrical-engineering.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("39","S01ECE018","2016-2017","","","","","","","","A Novel spectral signature based classification approach for Airborne and spaceborne Hyperspectral I","Asian journal of information technology","15","23","1682-3915","ugc","https://www.medwelljournals.com","2","26154-asian--chidam.pdf","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("40","S01ECE018","2017-2018","","","","","","","","Data Sensitive Level based Encryption for Protecting Data Stored in Public Cloud","Asian Journal of Research in Social Sciences and H","7","3","2249-7315","ugc","http://www.aijsh.com","2","66501-1.asian-journal-of-research-in-social-sciences-and-humanities.pdf","5","1","","");
INSERT INTO ece_fac_bkjrn VALUES("41","S01ECE018","2017-2018","","","","","","","","Area Efficiency And High Speed Implementation Of Cryptography Using Hash Function And RSA Algorithm","Advances in natural and applied sciences","11","6","1995-0772","scopus","http://www.aensiweb.com/ANAS","3","15416-4.advances-in-natural-and-applied-science.pdf","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("42","S01ECE018","2017-2018","","","","","","","","Health Monitoring System For Elderly People Using Iot","Advances in natural and applied sciences","11","6","1995-0772","scopus","http://www.aensiweb.com/ANAS","2","3734-5.advances-in-natural-and-applied-science.pdf","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("43","S01ECE018","2016-2017","","","","","","","","8-bit kogge stone adder design for FIR Filter applications","Advances in natural and applied sciences","11","6","1995-0772","scopus","http://www.aensiweb.com/ANAS","2","45853-7.advances-in-natural-and-applied-science.pdf","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("44","S14ECE009","2015-2016","","","","","","","","Witricity Transmission via Solar Power  Satellites","International Journal of Innovative Research in Sc","5","2","2319 - 8753","others","http://www.ijirset.com/upload/2016/ncfcsps/48_14_Witricity.pdf","NIL","63375-witricity.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("45","S14ECE009","2016-2017","","","","","","","","Steam Boiler Automation Using Programmable Logic Controller","International Journal of Innovative Research in Sc","6","3","2319 - 8753","others","http://www.ijirset.com/upload/2017/ncfcsps/41_50_Steam.pdf","NIL","97120-steam-boiler.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("46","S14ECE009","1987-1988","","","","","","","","Automation of Battery Testing","International Journal of Innovative Research in Sc","6","3","2319 - 8753","others","http://www.ijirset.com/upload/2017/ncfcsps/42_51_Automation.pdf","NIL","48181-automation.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("47","S14ECE009","2016-2017","","","","","","","","Automation of Battery Testing","International Journal of Innovative Research in Sc","6","3","2319 - 8753","others","http://www.ijirset.com/upload/2017/ncfcsps/42_51_Automation.pdf","NIL","85599-automation.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("48","S14ECE009","2017-2018","","","","","","","","Design and Development of Application for Pedagouge Utility Using Android","International Journal of Innovative Research in Sc","7","1"," 2319 - 8753","others","http://www.ijirset.com/upload/2018/ncfcsps/J38_Design.pdf","NIL","95368-pedagouge.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("49","S14ECE009","2017-2018","","","","","","","","Sleep Inducer through Generation of Pink Noise","International Journal of Innovative Research in Sc","7","1","2319 - 8753","others","http://www.ijirset.com/upload/2018/ncfcsps/J44_Sleep.pdf","NIL","51162-sleep-inducer.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("50","S14ECE009","2018-2019","","","","","","","","Minimizing the Eavesdroppers in Massive MIMO Relay Network using OFDM","International Journal of Innovative Research in Sc","8","1"," 2319 - 8753","others","http://www.ijirset.com/upload/2019/ncfcsps/25_Batch%2025%20main.pdf","NIL","42462-eves-dropping.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("51","S14ECE009","2018-2019","","","","","","","","Obscuring the Message in Digital Image Using Steganography","International Journal of Innovative Research in Sc","8","1","2319 - 8753","others","http://www.ijirset.com/upload/2019/ncfcsps/26_Batch%2025%20mini_NEW.pdf","NIL","59669-steganography.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("52","S14ECE009","2018-2019","","","","","","","","VoIP based Voice Interaction System for PSTN","International Journal of Innovative Research in Sc","8","1","2319 - 8753","others","http://www.ijirset.com/upload/2019/ncfcsps/28_BATCH%2027.pdf","NIL","31587-voip.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("53","S14ECE009","2013-2014","","","","","","","","Power Efficient Standby Switch Based Domino Logic Circuit ","IOSR Journal of VLSI and Signal Processing","4","2"," 2319 – 4197 ","ugc","http://www.iosrjournals.org/iosr-jvlsi/papers/vol4-issue2/Version-2/D04221722.pdf","NIL","28718-power-efficient.pdf","3","1","","");
INSERT INTO ece_fac_bkjrn VALUES("54","S09ECE015","2013-2014","","","","","","","","An Intelligent Environmental Novelty System Using Mobile Technology  For Warfields","International Journal of Engineering Research & Te","2","10","2278-0181","other"," "," ","83039-an-intelligent-environmental-novelty-system-using-mobile-technology.pdf","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("55","S09ECE015","2013-2014","","","","","","","","VIGILANCE CONTROL SYSTEM USING MCF5235 PROCESSOR","International Journal of Research in Engineering a","3","4","2319-1163","other","http://www.ijret.org  "," ","26238-vigilance-control-system-using-mcf5235-processor.pdf","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("56","S14ECE009","2013-2014","","","","","","","","Low power sleep switch based domino logic circuit with voltage regulated static keeper","International Journal of Science, Engineering and ","3","2","2278 – 7798 ","others","http://ijsetr.org/wp-content/uploads/2014/02/IJSETR-VOL-3-ISSUE-2-261-264.pdf","1","1341-low-power-sleep-switch.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("57","S09ECE015","2014-2015","","","","","","","","Two Factor Authentication for High Security Banking ATM Users","International Journal of Advances in Engineering R","9","4","2231-5152","other"," "," ","29410-two-factor-authentication-for-high-security-banking-atm-users.pdf","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("58","S14ECE009","2013-2014","","","","","","","","Comparative Analysis of Keeper Techniques for Domino Circuits","The International Journal of Science and Technoled","2","2","2321 – 919X","others","http://www.internationaljournalcorner.com/index.php/theijst/article/view/138162/97000","NIL","93695-comparative-analysis.pdf","1","1","","");
INSERT INTO ece_fac_bkjrn VALUES("59","S14ECE009","","","","","","","","","","","","","","","","","","","","https://scholar.google.co.in/citations?user=ZyE2k0","1");
INSERT INTO ece_fac_bkjrn VALUES("60","S01ECE018","2006-2007","","","","","","","","Digital Filter Design Using Evolvable Hardware Chip for Image Enhancement","Springer(LNCS)","4113","10","0302-9743","scopus","https://link.springer.com/chapter/10.1007/11816157_79","7","26253-document.pdf","1","1","","");
INSERT INTO ece_fac_bkjrn VALUES("61","S01ECE018","2012-2013","","","","","","","","Power Optimization Techniques for Multipliers” ,European Journal of Scientific Research","European Journal of Scientific Research","100","7","1450-216X","sci","http://www.europeanjournalofscientificresearch.com","2","28583-ejsr_vol_100_issue_4.pdf","1","1","","");
INSERT INTO ece_fac_bkjrn VALUES("62","S01ECE018","2017-2018","","","","","","","","THD Analysis of Cascaded H-Bridge Inverter with Fuzzy Logic Controller","Circuits and Systems","8","1","2153-1293","scopus","http://dx.doi.org/10.4236/cs.2016.710290","3","24143-8.circuits-and-systems.pdf","1","1","","");
INSERT INTO ece_fac_bkjrn VALUES("63","S01ECE018","2017-2018","","","","","","","","Dyadic product and crow lion algorithm based coefficient generation for privacy protection on cloud","The Journal of Networks, Software Tools and Applic","10","6","1386-7857 ","sci","https://www.researchgate.net/publication/329584152_1Springer_Cluster_Comp_Annexure_1","3","31552-1.springer_cluster_comp._annexure_1.pdf","2","1","","");
INSERT INTO ece_fac_bkjrn VALUES("64","S01ECE018","2015-2016","","","","","","","","Location Prediction to Reduce Hand-Off Delay for Seamless Mobility of VOIP ","International Journal of Innovative Research in Sc","5","2","2319 - 8753","others","http://www.ijirset.com/upload/2016/ncfcsps/5_Location.pdf","2","3767-5_location.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("65","S01ECE018","2015-2016","","","","","","","","Design and Analysis of Sierpinski Pentagonal Fractal Antenna for Tri-Band Applications ","International Journal of Innovative Research in Sc","5","2","2319 - 8753","others","http://www.ijirset.com/upload/2016/ncfcsps/7_Design.pdf","2","87224-7_design.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("66","S01ECE018","2015-2016","","","","","","","","High Throughput, Privacy and Security for Handover in 5g Networks Using SoftwareDefined Networking","International Journal of Innovative Research in Sc","5","2","2319 - 8753","others","http://www.ijirset.com/upload/2016/ncfcsps/32%20_corrected_.pdf","2","79358-8_journal.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("67","S01ECE018","2015-2016","","","","","","","","Performance Analysis of 4 Bit & 8 Bit Vedic Multiplier for Signal Processing","International Journal of Innovative Research in Sc","5","2","2319 - 8753","others","http://www.ijirset.com","2","23140-33_performance.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("68","S01ECE018","2011-2012","","","","","","","","Ant colony optimization approach","International  Journal of Emerging Technologies an","4","1","0974-3588","others","http://www.ijetae.com","3","39697-vol4-2011.pdf","4","1","","");
INSERT INTO ece_fac_bkjrn VALUES("69","S01ECE018","2011-2012","","","","","","","","Heuristics Based Survey on Workflow Scheduling in Computational Grids","CIIT International Journal of Networking and Commu","3","2","0974-9713","others","http://http://www.ciitresearch.org","3","23421-vol3-2011.pdf","1","1","","");
INSERT INTO ece_fac_bkjrn VALUES("70","S01ECE018","2011-2012","","","","","","","","Automatic Recognition And Analysis Of Human Faces And Facial Expression By LDA Using Wavelet Transfo","European Journal of Scientific Research","67","3","1450-216X","scopus","http://www.europeanjournalofscientificresearch.com","3","89703-vol-672012.pdf","1","1","","");
INSERT INTO ece_fac_bkjrn VALUES("71","S01ECE018","2011-2012","","","","","","","","Feature Selection and Extraction for Content-Based Image Retrieval","International Journal of Mathematics Trends and Te","3","2","2231-5373","others","http://http://www.ijmttjournal.org/","4","57732-vol-3-2012.pdf","1","1","","");
INSERT INTO ece_fac_bkjrn VALUES("72","S01ECE018","2011-2012","","","","","","","","A MPU: ACS Algorithm for grid workflow scheduling","European Journal of Scientific Research","67","4","1450-216X","scopus","http://www.europeanjournalofscientificresearch.com","3","94040-vol-672012.pdf","1","1","","");
INSERT INTO ece_fac_bkjrn VALUES("73","S01ECE018","2012-2013","","","","","","","","Performance Evaluation of Grid using Random Scheduling","International Journal of Computer Applications","55","9","0975 – 8887","ugc","http://www.ijcaonline.org","3","45078-oct-2012.pdf","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("74","S01ECE018","2013-2014","","","","","","","","Image Registration Techniques for Satellite and Medical Image:A Survey","International journal of Scientific and engineerin","4","12","2229-5518","scopus","https://www.ijser.org/","4","94338-vol4,2013.pdf","3","1","","");
INSERT INTO ece_fac_bkjrn VALUES("75","S01ECE018","2013-2014","","","","","","","","Handheld All-In-One Electronics and Communication Engineering","International Organization of Scientific Research","9","2","2278-2834","ugc","http://www.iosrjournals.org","3","36321-vol9,2014.pdf","3","1","","");
INSERT INTO ece_fac_bkjrn VALUES("76","S01ECE018","2014-2015","","","","","","","","PTS Precoding Technique for PAPR Reduction in Mobile WIMAX","International Journal of Innovative Research and G","3","1","2091-2730","others","http://www.ijirgs.org","3","99435-vol3,2015.pdf","4","1","","");
INSERT INTO ece_fac_bkjrn VALUES("77","S01ECE018","2014-2015","","","","","","","","Analysis of dimensionality reduction techniques for Hyperspectral image classification","International journal of engineering trends and te","21","2","2231-5381","ugc","http://ijettjournal.org","3","82052-vol21,2015.pdf","2","1","","");
INSERT INTO ece_fac_bkjrn VALUES("78","S01ECE018","2015-2016","","","","","","","","FPGA Implementation of DTCWT Architecture Using Distributive Arithmatic and Multiplexer Based Multip","Australian Journal of Basic and Applied Sciences","9","36","1991-8178","ugc","http://www.ajbasweb.com","2","45017-vol9,2015.pdf","4","1","","");
INSERT INTO ece_fac_bkjrn VALUES("79","S01ECE018","2016-2017","","","","","","","","A Novel Spectral Signature Based Classification Approach for Airborn and Spaceborne Hyper spectral I","Asian journal of information technology","15","23","1682-3915","ugc","http://medweljournals.com","3","73310-vol15,2016.pdf","4","1","","");
INSERT INTO ece_fac_bkjrn VALUES("80","S01ECE018","2016-2017","","","","","","","","Design and implementation of Cryptographic Shared Processor using FPGA","Asian Journal of Research in Social Sciences and H","6","9","2249-7315","ugc","http://www.aijsh.com","3","44505-vol6,2016.pdf","5","1","","");
INSERT INTO ece_fac_bkjrn VALUES("81","S01ECE018","2016-2017","","","","","","","","High-Performance FIR Filter  Implementation Using Anurupye Vedic Multiplier","Circuits and Systems","7","1","2153-1285","scopus","http://www.scirp.org/journal/cs","3","79601-vol7,2016.pdf","1","1","","");
INSERT INTO ece_fac_bkjrn VALUES("82","S01ECE018","2016-2017","","","","","","","","Reduction of THD in Seven- level H-Bridge  Inverter with Reduced Number of switches","Asian journal of Research in Social Science and Hu","6","8","2249-7315","ugc","http://www.aijsh.com","3","1845-vol6,no.8,2016.pdf","5","1","","");
INSERT INTO ece_fac_bkjrn VALUES("83","S01ECE018","2017-2018","","","","","","","","THD Analysis of Cascaded H-Bridge Inverter with Fuzzy Logic Controller","Circuits and Systems","3","1","2153-1293","scopus","http://www.scirp.org/journal/cs","3","28861-vol3,aug-2017.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("84","S01ECE018","2015-2016","","","","","","","","Personal Authentication Using the Combination of Left and Right Palmprint Images","International Journal of Innovative Research in Sc","5","2","2319-8753","ugc","http://www.ijirset.com","3","59105-vol5,mar2016.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("85","S01ECE018","2016-2017","","","","","","","","Multiplay Service Deployment Using GEPON Technology","International Journal of Innovative Research in Sc","5","2","2319-8753","ugc","http://www.ijirset.com","3","88004-vol5,no2-pg294,mar-2016.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("86","S01ECE018","2017-2018","","","","","","","","Effective Resource Sharing With Universal Base-Band Processing Technology Supporting All Mobile User","International Journal of Electronics and Communica","8","1","0976-6464","others","http://www.iaeme.com","2","64979-vol8,2017.pdf","8","1","","");
INSERT INTO ece_fac_bkjrn VALUES("87","S01ECE018","2016-2017","","","","","","","","Multi-Band Communication and Effective Sprectrum Utilization using SRAN Technology","International Journal of Innovative Research in Sc","6","3","2319-8753","ugc","http://www.ijirset.com","3","17859-vol6,issue3,2017.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("88","S01ECE018","2016-2017","","","","","","","","An Efficient Approach for Data Security in Cloud Environment using Watermarking Technique and RSA Di","International research journal of engineering and ","4","2","2395-0056","scopus","https://www.irjet.net/","2","18616-vol4,issue2,2017.pdf","5","1","","");
INSERT INTO ece_fac_bkjrn VALUES("89","S01ECE018","2016-2017","","","","","","","","Vehicular Pollution Monitoring using IoT","International Journal of Innovative Research in Sc","6","3","2319-8753","ugc","http://www.ijirset.com","3","62015-vol6,issue3,mar2017.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("90","S01ECE018","2016-2017","","","","","","","","Data Sensitive Level based Encryption for Protecting Data Stored in Public Cloud","Asian Journal of Research in Social Sciences and H","7","3","2249-7315","ugc","http://www.aijsh.com","3","70333-vol7,2017.pdf","5","1","","");
INSERT INTO ece_fac_bkjrn VALUES("91","S01ECE018","2016-2017","","","","","","","","Analysis of THD in Cascaded H-Bridge Inverter with Fuzzy Logic Controller","journal of electrical engineering","17","1","2230-7176","sci","http://www.jee.ro","3","49392-vol17,2017.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("92","S01ECE018","2016-2017","","","","","","","","Area Efficiency And High Speed Implementation Of Cryptography Using Hash Function And RSA Algorithm","Advances in natural and applied sciences","11","6","1995-0772","scopus","http://www.aensiweb.com/ANAS","2","72042-vol11,2017.pdf","2","1","","");
INSERT INTO ece_fac_bkjrn VALUES("93","S01ECE018","2016-2017","","","","","","","","A Survey about Cloud Computing and an Improved Method of Data Security using Watermarking Technique ","Asian Journal of Research in Social Sciences and H","7","5","2249-7315","ugc","http://www.aijsh.com","3","38646-vol7,issue5,2017.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("94","S01ECE018","2017-2018","","","","","","","","A Conceptual Approach to Next Generation Real Time On board Hyperspectral Image Exploration System","International Journal of Electrical, Electronics a","6","11","2348-117X","others","http://www.ijeecs.org","2","90579-vol6,issue11,2017.pdf","2","1","","");
INSERT INTO ece_fac_bkjrn VALUES("95","S01ECE018","2017-2018","","","","","","","","Size Reduction and Performance Improvement Scheme in Hybrid LUT/Mux FPGA Logic Architecture ","Asian Journal of Research in Social Sciences and H","8","1","2249-7315","ugc","http://indianjournals.com","3","15881-vol8,issue1,2018.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("96","S01ECE018","2017-2018","","","","","","","","Design and construction of wireless charging system using inductive coupling","International Journal of Innovative Research in Sc","7","1","2319-8753","ugc","http://www.ijirset.com","2","56578-vol7,2018.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("97","S01ECE018","2017-2018","","","","","","","","Real time gas leakage detection system using cloud","International Journal of Innovative Research in Sc","7","1","2319-8753","ugc","http://www.ijirset.com","2","38886-vol7,issue1,2018.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("98","S01ECE018","2017-2018","","","","","","","","Design and development of driving pattern analysis for automatic license issuing system","International Journal of Innovative Research in Sc","7","1","2319-8753","ugc","http://www.ijirset.com","2","36276-vol7,issue1,pg139,2018.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("99","S01ECE018","2017-2018","","","","","","","","Memorization based low power FPGA design using approximate computing","International Journal of Innovative Research in Sc","7","1","2319-8753","ugc","http://www.ijirset.com","2","92947-vol7,issue1,pg62,2018.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("100","S01ECE018","2010-2011","","","","","","","","Resource discovery based on Qos-A ware checkpointing arrangement in grid computing","International journal of emerging technologies and","4","1","0974-3588","others","http://www.ijeta.com","4","32825-1569656409.pdf","4","1","","");
INSERT INTO ece_fac_bkjrn VALUES("101","S01ECE018","2012-2013","","","","","","","","RF applicator design for efficient heating of materials ","CIIT","1","3","978-0-9888421-1-3","others","http://www.ciitresearch.org/","3","32336-ciit-journal,anto,2013.pdf","1","1","","");
INSERT INTO ece_fac_bkjrn VALUES("102","S01ECE018","2012-2013","","","","","","","","FPGA based implementation of SDR waveforms in digital receiver board","CIIT","1","3","978-0-9888421-1-3","others","http://www.ciitresearch.org/","3","4499-ciit-journal,sylvia,2013.pdf","1","1","","");
INSERT INTO ece_fac_bkjrn VALUES("103","S01ECE018","2013-2014","","","","","","","","Available bandwidth and packet delay estimation in Wimax networks","International Journal of Applied Engineering Resea","9","27","0973-4562","ugc","http://www.ripublication.com/ijaer.htm","4","14689-vol9,issue27,2014.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("104","S01ECE018","2013-2014","","","","","","","","Estimation of number of people in Crowded scenes using Amid and Pdc","International Organization of Scientific Research","9","1","2278-8735","ugc","http://www.iosrjournals.org","4","88647-vol9,issue1,2014.pdf","3","1","","");
INSERT INTO ece_fac_bkjrn VALUES("105","S01ECE018","2014-2015","","","","","","","","JDHC technique by using SMVQ scheme for enhancing the quality of digital image","international journal of scientific research and d","2","12","2321-0613","others","http://ijsrd.com/","3","50759-vol2,issue12,2015.pdf","4","1","","");
INSERT INTO ece_fac_bkjrn VALUES("106","S01ECE018","2016-2017","","","","","","","","A hybrid approach of dimensionality reduction and classification for hyper spectral imager","Asian Journal of Research in Social Sciences and H","6","8","2249-7315","ugc","http://www.indianjournals.com","3","58598-vol6,issue8,2016.pdf","5","1","","");
INSERT INTO ece_fac_bkjrn VALUES("107","S01ECE018","2015-2016","","","","","","","","Photodetection properties of Zno/Si heterojunction diode: A simulation study","IETE technical review","1","1","0256-4602","sci","http://http://www.iete.org","2","68980-iete-review,2016.pdf","1","1","","");
INSERT INTO ece_fac_bkjrn VALUES("108","S01ECE018","2016-2017","","","","","","","","Removing camera shake via weighted fourier burst accumulation","International Journal of Innovative Research in Sc","6","3","2319-8753","ugc","http://www.ijirset.com","3","38285-vol6,issue3,2017.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("109","S01ECE018","2018-2019","","","","","","","","An Area-Efficient FPGA Implementation of Network-on-Chip (NoC) Router Architecture for Optimized Mul","Sensor Letters - American Scientific Publishers","16","1","1546-198X","sci","http://www.aspbs.com","2","25313-16sl-3985--sl.pdf","2","1","","");
INSERT INTO ece_fac_bkjrn VALUES("110","S01ECE018","2018-2019","","","","","","","","An Low-Power Area-Efficient Routing Analysis and Optimization for a Fat Tree-Based Optical Network-o","Sensor Letters - American Scientific Publishers","16","1","1546-198X","sci","http://www.aspbs.com","2","57685-16sl-4033.pdf","2","1","","");
INSERT INTO ece_fac_bkjrn VALUES("111","S01ECE018","2018-2019","","","","","","","","An area-efficient low-power SCM topology for high performance network-on Chip (NoC) architecture usi","John wiley and sons","10","1","1532-0626","sci","http://wileyonlinelibrary.com/journal/cpe","2","16623-wiley-puplised-paper.pdf","1","1","","");
INSERT INTO ece_fac_bkjrn VALUES("112","S01ECE018","2018-2019","","","","","","","","FPGA Implementation of DTCWT Architecture Using Distributive Arithmatic and Multiplexer Based Multip","journal of microelectronics,electronic components ","9","36","0352-9045","sci","http://www.midem-drustvo.si/journal/","2","40871-journal_-midem_paper.pdf","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("113","S01ECE018","2018-2019","","","","","","","","Design and development of a prototype radio frequency applicator for post baking of biscuits","journal of electrical engineering","1","1","1582-4594","sci","http://www.jee.ro","2","56615-anto_accepted_paper.pdf","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("114","S11ECE007","2013-2014","","","","","","","","FAULT SENSING IN A REMOTE TRANSFORMER USING GSM & AUTOMATIC ON/OFF OF STREET LAMPS","International Journal of Advanced Research in Elec","2","10","2278 – 8875","others","https://www.ijareeie.com/upload/2013/october/8LFAULT.pdf","1","11972-8lfault.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("115","S11ECE007","2014-2015","","","","","","","","Auto Payment of Tolls with Tracking of Theft Vehicles & Proximity Detection for Avoiding Accidents","International Journal of Advanced Research in Elec","3","4","2278 – 8875","others","https://pdfs.semanticscholar.org/15ab/1ad8a41da839cbe6b97fd92d298dc0541ec1.pdf","1","16408-27l_autopayment.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("116","S11ECE007","2015-2016","","","","","","","","DESIGN AND ANALYSIS OF SHIFT REGISTER USING PULSE-TRIGGERED FLIP-FLOP","International Journal of Computer Informatics & Te","2","3","ISSN (Online): 2348-","others","http://www.ijcite.com/","NIL","78485-04-04-2015192ijcite-v2-e3-003.pdf","3","1","","");
INSERT INTO ece_fac_bkjrn VALUES("117","S11ECE007","2015-2016","","","","","","","","Low-Power Adder Design Using Full-Swing Gate Diffusion Input Logic","International Journal of Advanced Research in Elec","4","3","IISSN (Online): 2278","others","https://www.ijareeie.com/upload/2015/march/17_LOW-POWER.pdf","NIL","51577-17_low-power.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("118","S11ECE007","2015-2016","","","","","","","","FPGA IMPLEMENTATION OF AN  EFFICIENT VEDIC MULTIPLIER","International Journal of Emerging Technology and A","5","3","ISSN 2250-2459","others","https://pdfs.semanticscholar.org/f16e/f468db0c3703e41026e0b58d9d78909801da.pdf","NIL","1078-ijetae_0315_61.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("119","S11ECE007","2016-2017","","","","","","","","Implementation of Low Power Arithmetic Circuits Using Reversible Gates","International Journal of Advanced Research in Elec","5","4","ISSN (Online): 2278 ","others","https://www.ijareeie.com/upload/2016/april/9_Implementation.pdf","NIL","68983-9_implementation.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("120","S11ECE007","2016-2017","","","","","","","","Design and Simulation of FIR Filter","International Journal of Innovative Research in Sc","5","2","ISSN (Online) : 2319","others","http://www.ijirset.com/upload/2016/ncfcsps/41_7_Design.pdf","NIL","27962-41_7_design.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("121","S01ECE018","2016-2017","","","","","","","","Ghost-Free High Dynamic Range Imaging Using Weighted Histogram Separation and Fuzzy Fusion Method","International Journal of Innovative Research in Sc","6","3","2319 - 8753","others","http://www.ijirset.com","3","99943-66_16_ghost.pdf","6","1","","");
INSERT INTO ece_fac_bkjrn VALUES("122","S11ECE007","2016-2017","","","","","","","","Design and Implementation of LFSR in Cryptography","IJSRD - International Journal for Scientific Resea","4","9","ISSN (online): 2321-","others","http://ijsrd.com/","NIL","30708-ijsrdv4i90383.pdf","4","1","","");
INSERT INTO ece_fac_bkjrn VALUES("123","S11ECE007","2017-2018","","","","","","","","A Low Power Design of Encoder for Flash ADC Using CMOS Technology","International Journal of Innovative Research in Sc","6","3","ISSN (Online) : 2319","others","https://www.ijirset.com/upload/2017/ncfcsps/34_42_A%20Low.pdf","NIL","27008-34_42_a-low.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("124","S11ECE007","2017-2018","","","","","","","","Infant Incubator Monitoring system with Remote Access (IIMRA)","International Journal of Innovative Research in Sc","6","3","ISSN (Online) : 2319","others","https://www.ijirset.com/upload/2017/ncfcsps/45_56_Infant.pdf","NIL","5693-45_56_infant.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("125","S11ECE007","2017-2018","","","","","","","","FPGA Implementation of High Speed MAC Unit","International Journal of Innovative Research in Sc","6","3","ISSN (Online) : 2319","others","https://www.ijirset.com/upload/2017/ncfcsps/46_55_FPGA.pdf","NIL","58003-46_55_fpga.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("126","S11ECE007","2017-2018","","","","","","","","Low Power High Speed Multiplexer using CMOS Technology for Industrial Applications","IJSRD - International Journal for Scientific Resea","4","11","ISSN (online): 2321-","others","http://ijsrd.com/","NIL","17855-ijsrdv4i110181.pdf","4","1","","");
INSERT INTO ece_fac_bkjrn VALUES("127","S11ECE007","2018-2019","","","","","","","","Analysis and Design of Efficient Multipliers by Modified Adders using Various Logic","International Journal for Research in Technologica","5","2","ISSN (online): 2348-","others","http://www.ijrts.com/Downloads1.php?file=180502002","NIL","53896-180502002-2018.pdf","4","1","","");
INSERT INTO ece_fac_bkjrn VALUES("128","S11ECE007","2018-2019","","","","","","","","DESIGN AND IMPLEMENTATION OF EFFICIENT ADDER USING VARIOUS LOGIC STYLES","International Research Journal of Engineering and ","5","2","e-ISSN: 2395-0056","others","https://www.irjet.net/archives/V5/i2/IRJET-V5I262.pdf","NIL","1107-irjet-v5i262.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("129","S11ECE007","2018-2019","","","","","","","","FPGA Implementation of Cryptography Using Blowfish Algorithm","International Journal of Innovative Research in Sc","7","1","ISSN (Online) : 2319","others","https://www.ijirset.com/upload/2018/ncfcsps/J29_FPGA.pdf","NIL","88375-j29_fpga.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("130","S11ECE007","2018-2019","","","","","","","","Analysis and Design of Low Power Arithmetic Circuits","International Journal of Innovative Research in Sc","7","1","ISSN (Online) : 2319","others","https://www.ijirset.com/upload/2018/ncfcsps/J40_Analysis.pdf","NIL","11189-j40_analysis.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("131","S11ECE007","2018-2019","","","","","","","","An Efficient Implementation of Multiplier Using Modified Carry Select Adder","International Journal of Innovative Research in Sc","7","1","ISSN (Online) : 2319","others","http://www.ijirset.org/","NIL","8393-j54_an.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("132","S11ECE007","2018-2019","","","","","","","","Real Time Biometrics Based Vehicle Security Alert System with GPS and GSM Technology Using IOT","International Journal of Innovative Research in Sc","8","1","ISSN (Online) : 2319","others","https://www.ijirset.com/upload/2019/ncfcsps/20_batch%2021.pdf","NIL","11612-20_batch-21.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("133","S11ECE007","2018-2019","","","","","","","","Design and Implementation of RBSD Technique for Various Arithmetic Circuits","International Journal of Innovative Research in Sc","8","1","ISSN (Online) : 2319","others","https://www.ijirset.com/upload/2019/ncfcsps/37_Batch%2037.pdf","NIL","58176-37_batch-37.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("134","S11ECE007","2018-2019","","","","","","","","Analysis and Implementation of Multimode Interleaver for Wireless Communication","International Journal of Innovative Research in Sc","8","1","ISSN (Online) : 2319","others","https://www.ijirset.com/upload/2019/ncfcsps/42_batch%2042.pdf","NIL","58398-42_batch-42.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("135","S01ECE018","2018-2019","","","","","","","","Hospital Management System Using Beacon","International Journal of Innovative Research in Sc","8","1","2319-8753","others","http://www.ijirset.com","2","85251-43_batch-43.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("136","S01ECE018","2018-2019","","","","","","","","Scouting Robot for Wireless Border Surveillance System","International Journal of Innovative Research in Sc","8","1","2319-8753","others","http://www.ijirset.com","2","4497-45_batch-45.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("137","S01ECE018","2018-2019","","","","","","","","Smart Vehicle Monitoring System Using IOT Module for Boulders Management System","International Journal of Innovative Research in Sc","8","1","2319-8753","others","http://www.ijirset.com","2","54202-46_batch-46.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("138","S01ECE018","2018-2019","","","","","","","","Computation of Gesture Recognition and Applications in Wireless Sensor Networks","International Journal of Innovative Research in Sc","8","1","2319-8753","others","http://www.ijirset.com","2","57756-55_batch-55.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("139","S01ECE018","2018-2019","","","","","","","","Leukocyte Using FCM and AKM Based on Detection and Counting of Microscopic Images with Digital Image","International Journal of Innovative Research in Sc","8","1","2319-8753","others","http://www.ijirset.com","2","5539-56_batch-56.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("140","S09ECE015","2015-2016","","","","","","","","Simulated High Speed Fault Injection in Arithmetic Unit using Verilog HDL","International Journal of Innovative Research in Sc","5","2"," 2319 - 8753","other","www.ijirset.com "," ","33789-simulated-high-speed-fault-injection-in-arithmetic-unit-using-verilog-hdl.pdf","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("141","S09ECE015","2015-2016","","","","","","","","Design an Energy-Efficient Approximate Multiplication for Digital Signal Processing Application","International Journal of Innovative Research in Sc","5","2","2319 - 8753","other"," www.ijirset.com   "," ","57051-design-an-energy-efficient-approximate-multiplication-for-digital-signal-processing-applicatio","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("142","S09ECE015","2015-2016","","","","","","","","A Combination of Low Power TPG and LFSR with FPGA Implementation","International Journal of Innovative Research in Sc","5","2","2319 - 8753","other","www.ijirset.com "," ","24304-a-combination-of-low-power-tpg-and-lfsr-with-fpga-implementation.pdf","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("143","S09ECE015","2015-2016","","","","","","","","Test Pattern Generation by Sharing Scan Sequence in block level","International Journal of Innovative Research in Sc","5","2","2319 - 8753","other","www.ijirset.com"," ","18387-test-pattern-generation-by-sharing-scan-sequence-in-block-level.pdf","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("144","S09ECE015","2016-2017","","","","","","","","Online Fault Detection Method within SRAM Based FIFO Buffer in NOC Router","International Journal of Innovative Research in Sc","6","3","2319 - 8753","other","www.ijirset.com "," ","52827-online-fault-detection-method-within-sram-based-fifo-buffer-in-noc-router.pdf","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("145","S09ECE015","2016-2017","","","","","","","","Performance Analysis of Various Scheduling Algorithms using FPGA Platforms","International Journal of Innovative Research in Sc","6","3","2319 - 8753","other","www.ijirset.com"," ","37055-performance-analysis-of-various-scheduling-algorithms-using-fpga-platforms.pdf","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("146","S09ECE015","2016-2017","","","","","","","","Analysis of On-line and Periodic Field Fault Tolerant Test in FIFO Buffers of NOC Routers","International Journal of Emerging Technology in VL","1","1","4116 – 8986","other","ijetvsoc.com"," ","37060-analysis-of-on-line-and-periodic-field-fault-tolerant-test-in-fifo-buffers-of-noc-routers-pdf.","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("147","S09ECE015","2017-2018","","","","","","","","An Intelligent Coin Based Mobile Charging System","International Journal of Innovative Research in Sc","7","1","2319 - 8753","other","www.ijirset.com"," ","19662-an-intelligent-coin-based-mobile-charging-systems.pdf","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("148","S09ECE015","2017-2018","","","","","","","","Fault Tolerance Techniques for Combinational Circuits","International Journal of Innovative Research in Sc","7","1","2319 - 8753","other","www.ijirset.com"," ","2331-fault-tolerance-techniques-for-combinational-circuits.pdf","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("149","S09ECE015","2017-2018","","","","","","","","Analysis of Stuck on and off Faults in SRAM Based FPGA","International Journal of Innovative Research in Sc","7","1","2319 - 8753","other","www.ijirset.com"," ","21227-analysis-of-stuck-on-and-off-fault-in-sram-based-fpga.pdf","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("150","S09ECE015","2017-2018","","","","","","","","DETECTION OF STUCK OPEN AND SHORT FAULT IN SRAM BASED SYSTEM","Elsevier’s SSRN eLibrary – Journal of Informat"," "," ","1556-5068","other","https://ssrn.com/abstract=3125993"," ","84151-detection-of-stuck-open-and-short-fault-in-sram-based-system.pdf","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("151","S09ECE015","2018-2019","","","","","","","","A High Performance Scan Flip-Flop Design  for Serial and Mixed Mode Scan Test","International Journal of Innovative Research in Sc","8","1","2319 - 8753","other","www.ijirset.com"," ","45244-a-high-performance-scan-flip-flop-design-for-serial-and-mixed-mode-scan-test.pdf","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("152","S09ECE015","2018-2019","","","","","","","","Identification of Fertility and Effective  Educational Strategies influencing the  Professional Comp","International Journal of Innovative Research in Sc","8","1","2319 - 8753","other","www.ijirset.com"," ","69929-identification-of-fertility-and-effective-educational-strategies-influencing-the-professional-","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("153","S09ECE015","2018-2019","","","","","","","","Image Classification Using Android Things  through Machine Learning","International Journal of Innovative Research in Sc","8","1","2319 - 8753","other","www.ijirset.com"," ","66245-image-classification-using-android-things-through-machine-learning.pdf","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("154","S09ECE015","2018-2019","","","","","","","","Implementation of High-Tech Hard Hat & Intelligent Ideal of Motorbike","International Journal of Electronics Engineering","1","1","0973-7383","ugc","www.csjournals.com"," ","14740-implementation-of-high-tech-hard-hat-intelligent.pdf.pdf","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("155","S09ECE015","2018-2019","","","","","","","","Implementation of Automated Fuel and Oil Stock Digital Monitors for Vehicles","International Journal of Electronics Engineering","11","1","0973-7383","ugc","www.csjournals.com"," ","66091-implementation-of-automated-fuel-and-oil-.pdf.pdf","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("156","S14ECE014","2018-2019","","","","","","","","Data Monitoring and Controlling Over Cloud Computing Through VNC Viewer","International Journal of Innovative Research in Sc","8","1","2319 - 8753","others","http://www.ijirset.com/upload/2019/ncfcsps/27_Batch%2026_NEW.pdf","NIL","44333-27_batch-26_new.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("157","S16ECE010","2018-2019","","","","","","","","Controlling TV with Arduino using Joystick ","International Journal of Innovative Research in Sc","Volume 8","Special Issue 1","2319 - 8753","others","http://www.ijirset.com/upload/2019/ncfcsps/34_batch%2033.pdf","NIL","96061-34_batch-33.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("158","S14ECE014","2016-2017","","","","","","","","A New Technique for Smart Shopping Cart","International Journal of Innovative Research in Sc","6","3","2319 - 8753","others","http://www.ijirset.com/upload/2017/ncfcsps/32_40_A%20New.pdf","NIL","21930-32_40_a-new.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("159","S14ECE014","2018-2019","","","","","","","","Rescue Based Unmanned Aerial Vehicle Using Deep Learning Algorithm","International Journal of Innovative Research in Sc","8","1","2319 - 8753","others","http://www.ijirset.com/upload/2019/ncfcsps/51_batch%2051.pdf","NIL","11492-51_batch-51.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("160","S16ECE010","2017-2018","","","","","","","","Distratto: Impaired Driving Using Textile Sensors","International Journal of Innovative Research in Sc","Volume 7","Special Issue 1","2319 - 8753","others","http://www.ijirset.com/upload/2018/ncfcsps/J63_Distratto.pdf","NIL","59462-j63_distratto.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("161","S14ECE014","2016-2017","","","","","","","","Hand-Eye Coordination Equipment Testing for Trainees","International Journal of Innovative Research in Sc","6","3","2319 - 8753","others","http://www.ijirset.com/upload/2017/ncfcsps/61_11_Hand.pdf","NIL","26632-61_11_hand.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("162","S16ECE010","2017-2018","","","","","","","","Design a System to Detect Metals Using Raspberry PI and Image Processing Technique","International Journal of Innovative Research in Sc","Volume 7","Special Issue 1","2319 - 8753","others","http://www.ijirset.com/upload/2018/ncfcsps/J64_Design.pdf","NIL","61892-j64_design.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("163","S14ECE014","2017-2018","","","","","","","","4 Window Annunciator Using ST Microcontroller","International Journal of Innovative Research in Sc","7","1","2319 - 8753","others","http://www.ijirset.com/upload/2018/ncfcsps/J19_4%20Window.pdf","NIL","34764-j19_4-window.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("164","S14ECE014","2017-2018","","","","","","","","Biometric Based Ignition System Using Arduino","International Journal of Innovative Research in Sc","7","1","2319 - 8753","others","http://www.ijirset.com/upload/2018/ncfcsps/J25_Biometric.pdf","NIL","24302-j25_biometric.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("165","S14ECE014","2017-2018","","","","","","","","Cyberphysical System with Virtual Reality for Intelligent Motion Recognition and Training","International Journal of Innovative Research in Sc","7","1","2319 - 8753","others","http://www.ijirset.com/upload/2018/ncfcsps/J68_Cyberphysical.pdf","NIL","65130-j68_cyberphysical.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("166","S01ECE018","2018-2019","","","","","","","","An automation detection and counting of leukocytes using mircroscopic images with digital image proc","International journal of science and research","8","2","2319-7064","ugc","http://www.ijsr.net","2","75150-aishvarya_published_paper-2019.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("167","S17ECE004","2018-2019","","","","","","","","Ethereal Partition of Deviant Child Parts via Vision Guidance System","International Journal of Innovative Research in Sc","7","Special Issue 1","ISSN (Online) : 2319","others","http://www.ijirset.com/special-issue-ncfcsps-2019.html","NIL","68041-1.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("168","S17ECE004","2018-2019","","","","","","","","Single Phase Protection and Energy Consumption","International Journal of Innovative Research in Sc","7","Special Issue 1,","ISSN (Online) : 2319","others","http://www.ijirset.com/special-issue-ncfcsps-2019.html","NIL","81063-2.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("169","S17ECE004","2017-2018","","","","","","","","An Implementation of Full Adder Circuit using Modified Gate Diffusion Input Technique","International Journal of Innovative Research in Sc","7","Special Issue 1","ISSN (Online) : 2319","others","http://www.ijirset.com/special-issue-ncfcsps-2018.html","NIL","3389-3.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("170","S17ECE004","2017-2018","","","","","","","","Smart Real-Time Healthcare Monitoring and Tracking System using GSM/GPS Technologies","International Journal of Innovative Research in Sc","7","Special Issue 1","ISSN (Online) : 2319","others","http://www.ijirset.com/special-issue-ncfcsps-2018.html","NIL","23137-4.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("171","S17ECE004","2017-2018","","","","","","","","Enriched Visual System for Pilot by Using Head Mounted Display","International Journal of Innovative Research in Sc","7","Special Issue 1","ISSN (Online) : 2319","others","http://www.ijirset.com/special-issue-ncfcsps-2018.html","NIL","24436-5.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("172","S13ECE003","2018-2019","","","","","","","","IOT Based Smart Healthcare Kit Using Raspberry Pi","International Journal of Innovative Research in Sc","Volume 8","Special Issue 1","2319 - 8753","others","http://www.ijirset.com/upload/2019/ncfcsps/15_Batch%2015.pdf","NIL","79927-15_batch-15.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("173","S17ECE004","2018-2019","","","","","","","","Ethereal Partition of Deviant Child Parts via Vision Guidance System","International Journal of Innovative Research in Sc","8","Special Issue 1","ISSN (Online) : 2319","others","http://www.ijirset.com/special-issue-ncfcsps-2019.html","NIL","7065-1.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("174","S13ECE003","2018-2019","","","","","","","","Energy Monitoring and Consumption Using IOT","International Journal of Innovative Research in Sc","Volume 8","Special Issue 1","2319 - 8753","others","http://www.ijirset.com/upload/2019/ncfcsps/39_batch%2039.pdf","NIL","96870-39_batch-39.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("175","S17ECE004","2018-2019","","","","","","","","Single Phase Protection and Energy Consumption","International Journal of Innovative Research in Sc","8","Special Issue 1","ISSN (Online) : 2319","others","http://www.ijirset.com/special-issue-ncfcsps-2019.html","NIL","82063-2.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("176","S13ECE003","2017-2018","","","","","","","","Reduction of MTTR in Grid Casting Machine Heater Failures","International Journal of Innovative Research in Sc","Volume 7","Special Issue 1","2319 - 8753","others","http://www.ijirset.com/upload/2018/ncfcsps/J62_Reduction.pdf","NIL","72271-j62_reduction.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("177","S13ECE003","2017-2018","","","","","","","","Mobile Phone Detector using OP-AMP","International Journal of Innovative Research in Sc","Volume 7","Special Issue 1","2319 - 8753","others","http://www.ijirset.com/upload/2018/ncfcsps/J41_Mobile.pdf","NIL","44059-j41_mobile.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("178","S13ECE003","2016-2017","","","","","","","","UHF RFID Tag Antenna-Based Sensing for Corrosion Detection and Characterization Using Principal Comp","International Journal of Innovative Research in Sc","volume 6","Special Issue 3","2319 - 8753","others","http://www.ijirset.com/upload/2017/ncfcsps/49_58_UHF.pdf","NIL","80483-49_58_uhf.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("179","S13ECE003","2016-2017","","","","","","","","A Zigbee-Based Animal Health Monitoring System","International Journal of Innovative Research in Sc","volume 6","Special Issue 3","2319 - 8753","others","http://www.ijirset.com/upload/2017/ncfcsps/48_57_A%20Zigbee.pdf","NIL","84577-48_57_a-zigbee.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("180","S10ECE005","2018-2019","","","","","","","","Raspberry pi Based Boiler (Incubator) Temperature Controlling and Monitoring System Using IoT","International Journal of Innovative Research in Sc","Volume 8","Special Issue 1","2319 - 8753","others","http://www.ijirset.com/upload/2019/ncfcsps/49_batch%2049.pdf","NIL","26757-49_batch-49.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("181","S10ECE005","2018-2019","","","","","","","","A Wireless Surveillance and Safety Parameters Monitoring System for Coal Mine","International Journal of Innovative Research in Sc","Volume 8","Special Issue 1","2319 - 8753","others","http://www.ijirset.com/upload/2019/ncfcsps/23_Batch%2023_NEW.pdf","NIL","92976-23_batch-23_new.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("182","S10ECE005","2018-2019","","","","","","","","An Integrated Approach of Self Automated Fan with Speed Control System","International Journal of Innovative Research in Sc","Volume 8","Special Issue 1","2319 - 8753","others","http://www.ijirset.com/upload/2019/ncfcsps/17_batch%2018%20mini.pdf","NIL","77784-17_batch-18-mini.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("183","S10ECE005","2018-2019","","","","","","","","Fixture Tracking and Pogo pin Testing Using LabVIEW","International Journal of Innovative Research in Sc","Volume 8","Special Issue 1","2319 - 8753","others","http://www.ijirset.com/upload/2019/ncfcsps/16_batch%2018%20main.pdf","NIL","58233-16_batch-18-main.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("184","S10ECE005","2017-2018","","","","","","","","An Internet-of-Things Enabled Connected Navigation System for Urban Bus Riders","International Journal of Innovative Research in Sc","volume 7","Special Issue 1","2319 - 8753","others","http://www.ijirset.com/upload/2018/ncfcsps/J51_An.pdf","NIL","69904-j51_an.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("185","S10ECE005","2017-2018","","","","","","","","Hybrid LUT/MUX FPGA Logic Architecture for Size Reduction and Performance Improvement","International Journal of Innovative Research in Sc","volume 7","Special Issue 1","2319 - 8753","others","http://www.ijirset.com/upload/2018/ncfcsps/J5_%20%20Hybrid.pdf","NIL","30269-j5_--hybrid.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("186","S10ECE005","2016-2017","","","","","","","","Railway Track Circuit Fault Diagnosis Using Recurrent Neural Networks","International Journal of Innovative Research in Sc","volume 7","Special Issue 1","2319 - 8753","others","http://www.ijirset.com/upload/2017/ncfcsps/18_26_Railway.pdf","NIL","45928-18_26_railway.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("187","S10ECE005","2016-2017","","","","","","","","Enhancing Network Security by Implementing Preventive Mechanism Using GNS3","International Journal of Innovative Research in Sc","volume 7","Special Issue 1"," 2319 - 8753","others","http://www.ijirset.com/upload/2017/ncfcsps/17_25_Enhancing.pdf","NIL","35238-17_25_enhancing.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("188","S12ECE008","2018-2019","","","","","","","","Central Automation Billing System","International Journal of Innovative Research in Sc","8","Special Issue 1","2319 - 8753","others","http://www.ijirset.com/upload/2019/ncfcsps/5_Batch_5_main_NEW.pdf","NIL","84927-5_batch_5_main_new.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("189","S12ECE008","2018-2019","","","","","","","","Automatic Control of Conveyor using PLC and VFD","International Journal of Innovative Research in Sc","8","Special Issue 1","2319 - 8753","others","http://www.ijirset.com/upload/2019/ncfcsps/21_Batch%2022%20main.pdf","NIL","80142-2018-2019-2.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("190","S12ECE008","2018-2019","","","","","","","","LPG Gas Supervising and Automatic Gas Refill Booking With Alert System","International Journal of Innovative Research in Sc","8","Special Issue 1","2278 – 8875","others","http://www.ijirset.com/upload/2019/ncfcsps/22_Batch%2022%20Mini.pdf","NIL","77699-2018-2019-3.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("191","S12ECE008","2018-2019","","","","","","","","An MM Based Hybrid Precoding in NOMA mMIMO with SWIPT","International Journal of Innovative Research in Sc","8","Special Issue 1"," 2319 - 8753","others","http://www.ijirset.com/upload/2019/ncfcsps/30_Batch%2029-main.pdf","NIL","56678-2018-2019-4.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("192","S12ECE008","2018-2019","","","","","","","","Proprius Energy Generation in Mobile Phones through Tactile Modus","International Journal of Innovative Research in Sc","8","Special Issue 1"," 2319 - 8753","others","http://www.ijirset.com/upload/2019/ncfcsps/31_batch%2029-mini.pdf","NIL","39318-2018-2019-5.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("193","S12ECE008","2017-2018","","","","","","","","Multiplier Design Using Carry save Adder","International Journal of Innovative Research in Sc","7","Special Issue 1","2319 - 8753","others","http://www.ijirset.com/upload/2018/ncfcsps/J46_Multiplier.pdf","NIL","85019-2017-2018-1.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("194","S12ECE008","2017-2018","","","","","","","","Advanced Gas Leakage Detection Using GSM for LPG Gas","International Journal of Innovative Research in Sc","7","Special Issue 1"," 2319 - 8753","others","http://www.ijirset.com/upload/2018/ncfcsps/J47_Advanced.pdf","NIL","13324-2017-2018-2.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("195","S12ECE008","2017-2018","","","","","","","","Automated Fire Extinguisher Robot with Multisensors and Radar Using PID Controller","International Journal of Innovative Research in Sc","7","Special Issue 1"," 2319 - 8753","others","http://www.ijirset.com/upload/2018/ncfcsps/J69_Automated.pdf","NIL","36369-2017-2018-3.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("196","S12ECE008","2016-2017","","","","","","","","Robotic Ambulance for Emergency Medical Service in Smart Cities","International Journal of Innovative Research in Sc","6","3"," 2319 - 8753","others","http://www.ijirset.com/upload/2017/ncfcsps/27_35_Robotic.pdf","NIL","60237-2016-2017.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("197","S10ECE017","","","","","","","","","","","","","","","","","","","","https://scholar.google.co.in/citations?hl=en&pli=1","1");
INSERT INTO ece_fac_bkjrn VALUES("198","S10ECE017","2015-2016","","","","","","","","Image Duplication Copy Move Forgery Detection Using Discrete Cosine Transforms Method","International Journal of Applied Engineering Resea","11","4","ISSN 0973-9769","ugc","https://pdfs.semanticscholar.org/06eb/2c4d574f5eaf55093618968449a6489617ca.pdf","5","22645-2016.pdf","3","1","","");
INSERT INTO ece_fac_bkjrn VALUES("199","S10ECE017","2014-2015","","","","","","","","On Chip Implementation of Packet Switched Network","IOSR Journal of Electronics and Communication Engi","9","2","ISSN (online):2278-3","ugc","https://s3.amazonaws.com/academia.edu.documents/33799677/H09253842.pdf?AWSAccessKeyId=AKIAIWOWYYGZ2Y","1","76030-on_chip_implementation_of_packet_switche.pdf","3","1","","");
INSERT INTO ece_fac_bkjrn VALUES("200","S10ECE017","2014-2015","","","","","","","","Optimized Router with Dynamic and low Latency Wireless NOC Architecture","International Journal of Innovative Research in Sc","8","3"," ISSN (Online): 2319","ugc","http://www.ijirset.com/upload/2019/ncfcsps/14_batch_13.pdf","NIL","23695-optimised-router.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("201","S10ECE017","2018-2019","","","","","","","","Monitoring the Process Level of Boiler Water Treatment Plant through Siemens Mindconnect and Mindsph","International Journal of Innovative Research in Sc","8","1","ISSN (Online) : 2319","ugc","http://www.ijirset.com/upload/2019/ncfcsps/11_Batch_10.pdf","1","95505-monitoring-the-process-level.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("202","S10ECE017","2018-2019","","","","","","","","An Efficient Data Approximation Framework for Network on Chip Architectures","International Journal of Innovative Research in Sc","8","1","ISSN (Online) : 2319","ugc","http://www.ijirset.com/upload/2019/ncfcsps/36_batch%2036.pdf","1","53789-an-efficient-data.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("203","S10ECE017","2018-2019","","","","","","","","An Area-Efficient FPGA Implementation of Network-on-Chip (NoC) Router Architecture for Optimized Mul","sensor letters-American Specific Publishers","16","3","e-ISSN: 1546-1971","scopus","https://www.ingentaconnect.com/content/asp/senlet/2018/00000016/00000007/art00009","2","15742-an-area-efficient-fpga-implementation-of.pdf","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("204","S10ECE017","2018-2019","","","","","","","","Segmentation Based On Image Copy Move Forgery Detection by Using Image Feature Matching","International Journal of Innovative Research in Sc","7","9","2319 - 8753","ugc","http://www.ijirset.com/upload/2016/ncfcsps/2_Segmentation.pdf","2","20387-segmentation-based-on-image-copy-move.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("205","S10ECE017","2018-2019","","","","","","","","An area-efficient low-power SCM topology for high performance network-on Chip (NoC) architecture usi","CONCURRENCY AND COMPUTATION-PRACTICE & EXPERIENCE","10","e4760","ISSN (Online) : 1532","scopus","https://onlinelibrary.wiley.com/doi/abs/10.1002/cpe.4760","1","53269-an-area-efficient-low-power-scm-topology-for-high.pdf","1","1","","");
INSERT INTO ece_fac_bkjrn VALUES("206","S10ECE017","2018-2019","","","","","","","","An Low-Power Area-Efficient Routing Analysis and Optimization for a Fat Tree-Based Optical Network-o","Sensor Letters","16","11","ISSN (Online) : 1546","scopus","https://www.ingentaconnect.com/contentone/asp/senlet/2018/00000016/00000011/art00008","1","55216-an-low-power-area-efficient-routing-analysis-and-optimization-for-a-fat-tree-based-optical-net","0","1","","");
INSERT INTO ece_fac_bkjrn VALUES("207","S03ECE020","1987-1988","","","","","","","","FPGA Implementation of Reconfigurable Secure Image Encoding Using Serial 2D-DWT Processor and AES Al","International Journal of Digital Content Technolog","Volume 9","2015","2233-9310","others","http://www.globalcis.org/jdcta/board/nboard_view.html?jname=JDCTA&idx=504&cate=news","24","48855-journal-1.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("208","S03ECE020","2015-2016","","","","","","","","VLSI Implementation of 400 MHz 128-Bit Low Power Montgomery  Multiplier for AES Algorithm","Journal of Next Generation Information Technology ","volume 6","1","20928637","others","https://www.scimagojr.com/journalsearch.php?q=21100223501&tip=sid","9","2844-journal-2.pdf","7","1","","");
INSERT INTO ece_fac_bkjrn VALUES("209","S01ECE018","2018-2019","Design and Implement","BOOK","978-613-9-94432-3","2019-03","Lambert Academic Publishing","Book","1","","","","","","","","","","","","","");





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
  `ph2key` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO ece_fac_edu VALUES("S01ECE018","Avvaiyar Government Girls higher sec. school Dharm","state","1998","82","19589-10th-marksheet.pdf","1","Avvaiyar Government Girls Hr. Sec.School Dharmapur","state","Bio-Maths","1990","77","35970-+2-marksheet-compressed.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO ece_fac_edu VALUES("S03ECE020","ST MARYS HIGH SCHOOL","state","1982","73","38123-sslc-dattu.pdf","1","HOYSALESHWARA COLLEGE ARSIKERE","state","PCMB","1984","73","76607-puc.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","MALNAD COLLEGE OF ENGINEERING HASSAN","MYSORE UNIVERSITY","B.E","ELECTRONICS AND COMMUNICATION ENGINEERING","regular","1989","64","61627-ug.pdf","1","","","","","","","","","","","","","","","","","","","UNIVERSITY VISVESWARAYA COLLEGE OF ENGINEERING BAN","BANGALORE UNIVERSITY","M.E","ELECTRONICS","regular","1993","62","91311-pg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","SONA COLLEGE OF TECHNOLOGY SALEM","ANNA UNIVERSITY","VLSI AND NETWORK SECURITY","INFORMATION AND COMMUNICATION ENGINEERING","parttime","2008-04","2016-10","FPGA IMPLEMENTATION OF AES USING MONTGOMERY MULTIPLIER AND 2D-DWT PROCESSOR FOR SECURE IMAGE ENCODIN","Dr.K.R KASHWAN","65818-ph.d.pdf","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO ece_fac_edu VALUES("S09ECE015","MPL Boys Higher Secondary School","state","1998","60","37888-tenth.pdf","1","MPL B HSS","state","Electrical Motor Rewinding","2001","71","24522-+2.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Sona College of Technology","Anna University","B.E.","Electrical and Electronics Engineering","regular","2006","71","3592-u.g.degree.pdf","1","","","","","","","","","","","","","","","","","","","Sona College of Technology","Anna University","P.G.","VLSI Design","regular","2009","9","84406-p.g.degree.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO ece_fac_edu VALUES("S09ECE019","GOVERMENT HR SEC SCHOOL  ODDANCHATRAM","state","1989","72","68219-sslc.pdf","1","K R GOVT HR SEC SCHOOL ODDANCHATRAM","state","MATHS-BIOLOGY","1991","65","27893-hsc.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","NATIONAL ENGINEERING COLLEGE KOVILPATTY","MANONMANIAM SUNDARANAR UNIVERSITY","B.E","ELECTRONICS AND COMMUNICATION ENGINEERING","regular","1996","65","9453-be-degree.pdf","1","","","","","","","","","","","","","","","","","","","PSG COLLEGE OF TECHNOLOGY","BHARATHIYAR UNIVERSITY","M.E","COMMUNICATION SYSTEMS","regular","1999","8","9758-me-degree.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO ece_fac_edu VALUES("S10ECE005","Government higher secondary school Krishnagiri","state","2002","82","11787-sslc.pdf","1","Sri Vijay Vidyalaya higher secondary school Dharma","state","Maths/Biology","2004","85","97490-hsc.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Paavai Engineering College","Anna University Chennai","BE","Electronics and Communication Engineering","regular","2008","72","29335-ug.pdf","1","","","","","","","","","","","","","","","","","","","Kongu Engineering College","Anna University Coimbatore","ME","Applied Electronics","regular","2010","8","61763-pg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO ece_fac_edu VALUES("S11ECE006","ST ANNS HIGH SCHOOL","state","2002","79","29548-sslc-pdf.pdf","1","ST JOSEPHS PRE UNIVERSITY COLLEGE","icbsc","PCMB","2004","55","19917-puc.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","DON BOSCO INSTITUTE OF TECHNOLOGY","VISVESWARAYA TECHNOLOGICAL UNIVERSITY","B.E","ELECTRONICS AND COMMUNICATION ENGINEERING","regular","2009","58","70646-ug.pdf","1","","","","","","","","","","","","","","","","","","","MALNAD COLLEGE OF ENGINEERING","VISVESWARAYA TECHNOLOGICAL UNIVERSITY","M.Tech","Information and Communication Systems","regular","2011","8","31073-pg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO ece_fac_edu VALUES("S11ECE007","R V GOVT BOYS HIGHER SECONDARY SCHOOL,HOSUR","state","2003","89","19342-naga-10th.pdf","1","R V GOVT BOYS HIGHER SECONDARY SCHOOL,HOSUR","state","PCCM","2005","76","61263-naga-12th.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","ADHIYAMAAN COLLEGE OF ENGINEERING,HOSUR","ANNA UNIVERSITY-CHENNAI","B.E","ELECTRONICS AND COMMUNICATION ENGINEERING","regular","2009","77","43047-naga-be.pdf","1","","","","","","","","","","","","","","","","","","","K.S.RANGASAMY COLLEGE OF TECHNOLOGY,TIRUCHENGODE","ANNA UNIVERSITY-COIMBATORE","M.E","APPLIED ELECTRONICS","regular","2011","9","23401-naga-me.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO ece_fac_edu VALUES("S12ECE008","SRI VIJAY VIDHAYALAYA MATRIC HIGHER SECONDARY SCHO","state","2004","75","34468-10th-1.pdf","1","SRI VIJAY VIDHYALAYA BOYS MATRIC HIGHER SECONDARY ","state","MATHS-BIOLOGY","2006","73","60886-12th-1.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","VIVEKANADHA INSTITUTE OF TECHNOLOGY OF ENGINEERING","Anna University","B.E","ELECTRONICS AND COMMUNICATION ENGINEERING","regular","2010","75","64179-ug.pdf","1","","","","","","","","","","","","","","","","","","","BANNARI AMMAN INSTITUTE OF ENGINEERING AND TECHNOL","ANNA UNIVERSITY","M.E","COMMUNICATION SYSTEMS","regular","2012","9","12687-pg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO ece_fac_edu VALUES("S13ECE003","GOVT HS CHINNANKUPPAM","state","2004","80","77218-mani10th.pdf","1","","","","","","","","Adhiyamaan polytechnic college","STATE BOAR","DIPLOMA","regular","2008","79","89746-manidiploma.pdf","1","","","","","","","","","","","","","","","","","Adhiyamaan college of engineering","Anna University","B.E","ELECTRONICS AND COMMUNICATION ENGINEERING","regular","2011","8","97399-maniug.pdf","1","","","","","","","","","","","","","","","","","","","ADHIYAMAAN COLLEGE OF ENGINEERING","ANNA UNIVERSITY","M.E","COMMUNICATION SYSTEMS","regular","2013","9","21077-mani-pg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO ece_fac_edu VALUES("S13ECE011","GOVERMENT HR SEC SCHOOL ","state","1997","77","94886-tenth-marksheet.pdf","1","GOVERMENT HR SEC SCHOOL","state","MATHS-BIOLOGY","1999","71","33749-plus-two-marksheet.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Adhiyamaan college of engineering","PERIYAR UNIVERSITY","B.E","ELECTRONICS AND COMMUNICATION ENGINEERING","regular","2004","65","75659-be-degree.pdf","1","","","","","","","","","","","","","","","","","","","PSG COLLEGE OF TECHNOLOGY","ANNA UNIVERSITY","M.E","APPLIED ELECTRONICS","regular","2009","7","44472-me-degree.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO ece_fac_edu VALUES("S14ECE009","ST.JOSEPH MAT. HR. SEC. SCHOOL","state","2006","92","60018-sslc.pdf","1","ST. JOSEPH MAT.HR. SEC. SCHOOL","state","MATHS-BIOLOGY","2008","87","6638-hsc.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","PARK COLLEGE OF ENGINEERING AND TECHNOLOGY","Anna University","B.E","ELECTRONICS AND COMMUNICATION ENGINEERING","regular","2012","9","5484-b.e..pdf","1","","","","","","","","","","","","","","","","","","","KPR INSTITUTE OF ENGINEERING AND TECHNOLOGY","ANNA UNIVERSITY","M.E","VLSI DESIGN","regular","2014","8","60062-m.e.-certificate.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO ece_fac_edu VALUES("S14ECE014","ROSEMARY HSS","state","2005","84","13905-somu-sslc.pdf","1","ROSEMARY HSS","state","MATHS-COMPUTER SCIENCE","2007","81","15432-hsc.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","DR. SIVANTHI ADITHINAR COLLEGE OF ENGINEERING","Anna University","B.E","ELECTRONICS AND COMMUNICATION ENGINEERING","regular","2011","68","70092-b.e.pdf","1","","","","","","","","","","","","","","","","","","","ADHIYAMAAN COLLEGE OF ENGINEERING","ANNA UNIVERSITY","M.E","COMMUNICATION SYSTEMS","regular","2014","9","98795-m.e.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO ece_fac_edu VALUES("S16ECE010","O.C.P.M GIRLS HIGHER SECONDARY SCHOOL","state","2003","89","96109-10.pdf","1","O.C.P.M GIRLS HR.SEC.SCHOOL","state","MATHS-BIOLOGY","2005","82","92222-12.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","PANDIAN SARASWATHI YADAV ENGINNERING COLLEGE","Anna University","B.E","ELECTRONICS AND COMMUNICATION ENGINEERING","regular","2009","71","52021-b.e-degree.pdf","1","","","","","","","","","","","","","","","","","","","RAJA COLLEGE OF ENGINNERING","ANNA UNIVERSITY","M.E","EMBEDDED SYSTEMS","regular","2013","8","25316-me-certificate.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO ece_fac_edu VALUES("S17ECE004","NEW INDIA HIGH SCHOOL","state","2007","92","38418-x.pdf","1","SRI VIJAY VIDHYALAYA BOYS MATRIC HIGHER SECONDARY ","state","MATHS-BIOLOGY","2009","94","59065-x11.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","A.C. COLLEGE OF ENGINEERING AND TECHNOLOGY","Anna University","B.E","ELECTRONICS AND COMMUNICATION ENGINEERING","regular","2013","8","98501-daviid-ug-degree.pdf","1","","","","","","","","","","","","","","","","","","","AVS ENGINEERING COLLEGE","ANNA UNIVERSITY","M.E","VLSI DESIGN","regular","2015","8","3435-david1-pg-degeree.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");





CREATE TABLE `ece_fac_exp` (
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
  `otkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO ece_fac_exp VALUES("S01ECE018","Government college of Engineering, Bargur","Lecturer","1999-03-03","2000-04-03","Career Growth","Government College of Engineering, Bargur","Lecturer","1997-06-02","2001-04-30","Personal","0000-00-00","55340-exp-certificate-other-college.pdf","2","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO ece_fac_exp VALUES("S09ECE015","Sona College of Technology","Trainee Research Associate","2006-09-29","2017-08-31","Higher Study","","","0000-00-00","0000-00-00","","0000-00-00","67034-sona-service-certificate.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO ece_fac_exp VALUES("S13ECE011","","","","","","","","0000-00-00","0000-00-00","","0000-00-00","","","THIRU RAMAKRISHNA NALLAMI POLYTECHNIC COLLEGE","LECTURER","2006-12-29","2007-05-05","HIGHER STUDIES","69601-new-doc-2018-04-17-(1)_5.pdf","1","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO ece_fac_exp VALUES("S16ECE010","","","","","","","","0000-00-00","0000-00-00","","0000-00-00","","","N.P.R GROUP OF COLLEGES","LECTURER","2010-05-24","2011-11-17","HIGHER STUDIES","49236-n.p.r-service.pdf","1","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO ece_fac_exp VALUES("S17ECE004","ST.JOSEPH COLLEGE OF ENGINEERING","ASSISTANT PROFESSOR","2015-06-17","2016-06-30","ACCIDENT","","","0000-00-00","0000-00-00","","0000-00-00","86586-img_20160708_162513.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");





CREATE TABLE `ece_fac_funpat` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `patkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO ece_fac_funpat VALUES("1","S01ECE018","2018-2019","","","","","","","","","","","Intellectual Property India","An Apparatus For Transformatio","201841022781","81391-patent-2-complete_specifications__1_.pdf","1");
INSERT INTO ece_fac_funpat VALUES("2","S01ECE018","2016-2017","","","","","","","","","","","Allinnov research and development private limited","A smart Hybrid cooking system","201641037185","41031-patent-madam.pdf","1");
INSERT INTO ece_fac_funpat VALUES("3","S01ECE018","2018-2019","","","","","","","","","","","Intellectual Property India","An Apparatus for Fast Image Re","TEMP/E-1/24920/2018-","30982-patent-1-completespecifications.pdf","1");
INSERT INTO ece_fac_funpat VALUES("4","S01ECE018","2012-2013","Application of sparse representations in hyperspec","3 years","Rs.386667","All India council fo","2013-03-04","nil","2018","24653-funded-project.pdf","0","1","","","","","");
INSERT INTO ece_fac_funpat VALUES("5","S01ECE018","2012-2013","Application of sparse representations in hyperspec","3 years","Rs.386667","All India council fo","2013-03-04","nil","2018-11","92981-funded-project.pdf","0","1","","","","","");





CREATE TABLE `ece_fac_glc` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `conkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

INSERT INTO ece_fac_glc VALUES("1","S01ECE018","2012-2013","","","0000-00-00","0000-00-00","0000-00-00","","","","","","IEEE- Fourth International Con","Missing Value Imputation Techniques Depth Survey A","MIT, Anna University, Chennai. ","3","2012-12-13","2012-12-15","0000-00-00","international","","75878-1.4th-international-conference-on-advanced-computing-mit.pdf","1");
INSERT INTO ece_fac_glc VALUES("2","S01ECE018","2012-2013","","","0000-00-00","0000-00-00","0000-00-00","","","","","","IEEE- Fourth International Con","Dynamic Handoff Decision Based on Current Traffic ","MIT, Anna University, Chennai","3","2012-12-13","2012-12-15","0000-00-00","international","","38454-2.4th-international-conference-on-advanced-computing-mit.pdf","1");
INSERT INTO ece_fac_glc VALUES("3","S14ECE009","2013-2014","","","0000-00-00","0000-00-00","0000-00-00","","","","","","wireless networks, computing a","Keeper topology for optimization of power delay pr","PSG COLLEGE OF TECHNOLOGY","2","2014-02-07","2014-02-08","0000-00-00","national","","72826-psg-college.pdf","1");
INSERT INTO ece_fac_glc VALUES("4","S14ECE009","2012-2013","","","0000-00-00","0000-00-00","0000-00-00","","","","","","OPTIMIZATION TECHNIQUES IN ENG","Taper buffer design for low power and delay optimi","Bannari Amman Institute of Technology","2","2013-04-19","2013-04-20","0000-00-00","national","","83158-bannari-college.pdf","1");
INSERT INTO ece_fac_glc VALUES("5","S14ECE009","2013-2014","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International conference on el","Keeper topology for optimization of pdp","karpagam college of engineering","2","2014-02-13","2014-02-14","0000-00-00","international","","73988-karpagam-college-conference.pdf","1");
INSERT INTO ece_fac_glc VALUES("6","S01ECE018","2003-2004","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Emerging Trends in Engineering","Independent Tree Adhoc Multicast Routing","Dr.M.G.R.Educational and Research Institute","3","2004-05-01","2004-05-03","0000-00-00","national","","61353-conference-2004.pdf","1");
INSERT INTO ece_fac_glc VALUES("7","S01ECE018","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International conference in Sy","Sleepy Keeper: A new approach to low leakage power","Surya Engineering college","2","2015-03-04","2015-03-05","0000-00-00","international","","65003-conference-icsee,2015.pdf","1");
INSERT INTO ece_fac_glc VALUES("8","S01ECE018","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International conference in Sy","Area and power optimization of DCT Architecture fo","Surya Engineering college","2","2015-03-04","2015-03-05","0000-00-00","international","","94718-conference-icsee-2,2015.pdf","1");
INSERT INTO ece_fac_glc VALUES("9","S01ECE018","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International conference on En","THD analysis of sevel level hybrid PV inverter wit","Muthayammal college of engineering, Namakkal","2","2015-03-05","2015-03-06","0000-00-00","international","","71525-conference-icets,2015.pdf","1");
INSERT INTO ece_fac_glc VALUES("10","S01ECE018","2015-2016","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International conference on En","THD analysis of cascaded H-Bridge inverter with fu","Muthayammal college of engineering, Namakkal","2","2016-03-18","2016-03-19","0000-00-00","international","","8838-conference-icets,2016.pdf","1");
INSERT INTO ece_fac_glc VALUES("11","S01ECE018","2015-2016","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International conference on En","A new topology of fifteen level solar PV inverter ","Muthayammal college of engineering, Namakkal","2","2016-03-18","2016-03-19","0000-00-00","international","","87531-conference-icets,mar2016.pdf","1");
INSERT INTO ece_fac_glc VALUES("12","S01ECE018","2015-2016","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International conference on En","Reduction of THD in thirteen level hybrid PV inver","Muthayammal college of engineering, Namakkal","2","2016-03-18","2016-03-19","0000-00-00","international","","60572-conference-icets,march2016.pdf","1");
INSERT INTO ece_fac_glc VALUES("13","S01ECE018","2018-2019","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International conference on tr","Intergrating Renewable energy system in smart grid","Mangayarkarasi college of engineering,madurai","1","0000-00-00","0000-00-00","2019-03-15","international","","42605-conference-mar2019.pdf","1");
INSERT INTO ece_fac_glc VALUES("14","S01ECE018","2016-2017","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International conference on Ad","Literature survey on spectrum utilization using SR","Government college of engineering, salem","4","2017-03-07","2017-03-10","0000-00-00","international","","85038-conference-icaren,2017.pdf","1");
INSERT INTO ece_fac_glc VALUES("15","S01ECE018","2005-2006","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International conference on sy","Digital Circuit Design using Evolvable Hardware","Pentagram Research Centre Pvt Ltd.","5","2006-01-04","2006-01-08","0000-00-00","international","","13440-conference-icsci-2006.pdf","1");
INSERT INTO ece_fac_glc VALUES("16","S01ECE018","2012-2013","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International conference on em","RF Applicator design for efficient heating of mate","Coimbatore Institute of Information Technology","2","2013-02-21","2013-02-22","0000-00-00","international","","32099-ciit-journal,anto-conference,2013.pdf","1");
INSERT INTO ece_fac_glc VALUES("17","S01ECE018","2012-2013","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International conference on em","FPGA based implementation of SDR waveforms in digi","Coimbatore Institute of Information Technology","2","2013-02-21","2013-02-22","0000-00-00","international","","91410-ciit-journal,sylvia-conference,2013.pdf","1");
INSERT INTO ece_fac_glc VALUES("18","S01ECE018","2018-2019","","","0000-00-00","0000-00-00","0000-00-00","","","","","","National conference on frontie","Hospital Management System Using Beacon","Adhiyamaan college of engineering","2","2019-03-19","2019-03-20","0000-00-00","national","","80869-43_batch-43.pdf","1");
INSERT INTO ece_fac_glc VALUES("19","S01ECE018","2018-2019","","","0000-00-00","0000-00-00","0000-00-00","","","","","","National conference on frontie","Scouting Robot for Wireless Border Surveillance Sy","Adhiyamaan college of engineering","2","2019-03-19","2019-03-20","0000-00-00","national","","77220-45_batch-45.pdf","1");
INSERT INTO ece_fac_glc VALUES("20","S01ECE018","2018-2019","","","0000-00-00","0000-00-00","0000-00-00","","","","","","National conference on frontie","Leukocyte Using FCM and AKM Based on Detection and","Adhiyamaan college of engineering","2","2019-03-19","2019-03-20","0000-00-00","national","","93374-56_batch-56.pdf","1");
INSERT INTO ece_fac_glc VALUES("21","S01ECE018","2012-2013","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International conference on cu","Location and priority based vertical handoff appro","Kristu Jayanti college of mangament and technology","2","2013-02-15","2013-02-16","0000-00-00","international","","2539-vertical_handoff.pdf","1");
INSERT INTO ece_fac_glc VALUES("22","S01ECE018","2015-2016","","","0000-00-00","0000-00-00","0000-00-00","","","","","","National conference on frontie","Multiplay Service Deployment Using GEPON Technolog","Adhiyamaan college of engineering","2","2016-03-10","2016-03-11","0000-00-00","national","","58797-conference-50_2_multiplay,2016.pdf","1");
INSERT INTO ece_fac_glc VALUES("23","S01ECE018","2015-2016","","","0000-00-00","0000-00-00","0000-00-00","","","","","","National conference on frontie","Performance Analysis of 4 Bit & 8 Bit Vedic Multip","Adhiyamaan college of engineering","2","2016-03-10","2016-03-11","0000-00-00","national","","28396-conference_1ace2016.pdf","1");
INSERT INTO ece_fac_glc VALUES("24","S01ECE018","2015-2016","","","0000-00-00","0000-00-00","0000-00-00","","","","","","National conference on frontie","High Throughput, Privacy and Security for Handover","Adhiyamaan college of engineering","2","2016-03-10","2016-03-11","0000-00-00","national","","13462-conference-2ace,2016.pdf","1");
INSERT INTO ece_fac_glc VALUES("25","S01ECE018","2015-2016","","","0000-00-00","0000-00-00","0000-00-00","","","","","","National conference on frontie","Personal Authentication Using the Combination of L","Adhiyamaan college of engineering","2","2016-03-10","2016-03-11","0000-00-00","national","","55298-conference-3ace-2016.pdf","1");
INSERT INTO ece_fac_glc VALUES("26","S01ECE018","2015-2016","","","0000-00-00","0000-00-00","0000-00-00","","","","","","National conference on frontie","Design and Analysis of Sierpinski Pentagonal Fract","Adhiyamaan college of engineering","2","2016-03-10","2016-03-11","0000-00-00","national","","89824-conference-4ace2016.pdf","1");
INSERT INTO ece_fac_glc VALUES("27","S09ECE015","2012-2013","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International Conference on Co","Reducing Test Data Volume Using Flexible Code for ","Department of EEE, ECE & EIE","3","2012-09-14","2012-09-16","0000-00-00","international","","74891-mahendra-international-conference---september-2012-(2012-2013).pdf","1");
INSERT INTO ece_fac_glc VALUES("28","S09ECE015","2012-2013","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International Conference on Co","An Inteligent Tactical Traded Robot Using Mobile T","Department of EEE, ECE & EIE","3","2012-09-14","2012-09-16","0000-00-00","international","","90206-mahendra-international-conference---september-2012--1(2012-2013).pdf","1");
INSERT INTO ece_fac_glc VALUES("29","S09ECE015","2017-2018","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Inteligent Computing System","Detection of Stuck Open and Short Fault in SRAM Ba","Department of CSE, IT, MCA","2","2017-12-15","2017-12-16","0000-00-00","international","","78310-international-conference---sona-college-of-technology-nov--2017.pdf","1");
INSERT INTO ece_fac_glc VALUES("30","S09ECE015","2017-2018","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Electrical, Electronics, Compu","Low Power Stuck Open and Short Fault Analysis Buil","Priyadharshini Engineering College","2","2018-01-28","2018-01-29","0000-00-00","international","","42127-priyadharshni---international-conference.pdf","1");
INSERT INTO ece_fac_glc VALUES("31","S09ECE015","2012-2013","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Recent Trends in Electrical & ","Flexible Code Test Data Compression Using Scan Bas","Adhiyamaan College of Engineering","1","0000-00-00","0000-00-00","2012-09-21","national","","72559-national-conference---sri-venkateswara---1-(2012-2013).pdf","1");
INSERT INTO ece_fac_glc VALUES("32","S01ECE018","2010-2011","","","0000-00-00","0000-00-00","0000-00-00","","","","","","National conference on communi","Noise PSD tracking with low complexity using MMSE ","SSM college of Engineering","1","0000-00-00","0000-00-00","2011-03-11","national","","92398-conference-mar2011.pdf","1");
INSERT INTO ece_fac_glc VALUES("33","S01ECE018","2009-2010","National conference on vlsi, communication and com","1","0000-00-00","0000-00-00","2010-04-23","VLSI, communication and computing","Sengunthar engineering college","Namakkal","0","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","");
INSERT INTO ece_fac_glc VALUES("34","S01ECE018","2011-2012","2nd National conference on recent trends in comput","1","0000-00-00","0000-00-00","2012-03-07","Computing and communication technology","Hindusthan institute of technology","Coimbatore","0","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","");
INSERT INTO ece_fac_glc VALUES("35","S01ECE018","2011-2012","Phd Programme","1","0000-00-00","0000-00-00","2011-10-10","Phd programme-conduction of field work viva voce e","Sona college of Engineering","Salem","0","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","");
INSERT INTO ece_fac_glc VALUES("36","S01ECE018","2012-2013","School assembly","1","0000-00-00","0000-00-00","2013-02-02","Best way of learning skills","Seventh day adventist matriculation school","Dharmapuri","0","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","");
INSERT INTO ece_fac_glc VALUES("37","S17ECE004","2018-2019","","","0000-00-00","0000-00-00","0000-00-00","","","","","","2nd  IEEE-International Confer","Voice Controlled door lock system using MATLAB and","MANAKULA VINAYAGAR INSTITUTE OF TECHNOLOGY","2","2019-03-29","2019-03-30","0000-00-00","international","","2175-david-william-raj-door-lock.pdf","1");
INSERT INTO ece_fac_glc VALUES("38","S17ECE004","2018-2019","","","0000-00-00","0000-00-00","0000-00-00","","","","","","2nd  IEEE-International Confer","Elegant Way of Designing Printed Circuit Board Via","MANAKULA VINAYAGAR INSTITUTE OF TECHNOLOGY","2","2019-03-29","2019-03-30","0000-00-00","international","","15734-david-william-raj-circuit.pdf","1");
INSERT INTO ece_fac_glc VALUES("39","S12ECE008","2011-2012","","","0000-00-00","0000-00-00","0000-00-00","","","","","","ICFTEE 2012","unequal error protection using digital fountain co","thiruvalluvar college of engg and tech","2","2012-01-28","2012-01-29","0000-00-00","international","","75603-conference-thiruvallur.pdf","1");
INSERT INTO ece_fac_glc VALUES("40","S12ECE008","2011-2012","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International conference on co","DESIGN OF DUAL BAND FOR PATCH ARRAY ANTENNA FOR MI","SCHOOL OF ELECTRICAL SCIENCE","3","2012-03-07","2012-03-09","0000-00-00","international","","55878-conference-ppg1.pdf","1");
INSERT INTO ece_fac_glc VALUES("41","S12ECE008","2011-2012","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International conference on co","IMPROVING MULTI HOP RELAYING MIMO USING MUTUAL INF","SCHOOL OF ELECTRICAL SCIENCE","3","2012-03-07","2012-03-09","0000-00-00","international","","37175-conference-ppg.pdf","1");
INSERT INTO ece_fac_glc VALUES("42","S12ECE008","2011-2012","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International conference on ad","Dual-Band HICRUSTRIP patch array antenna design of","j.k.k.nattraja college of engineering and technolo","2","2012-03-09","2012-03-10","0000-00-00","international","","63399-conference-jkkn.pdf","1");
INSERT INTO ece_fac_glc VALUES("43","S12ECE008","2011-2012","","","0000-00-00","0000-00-00","0000-00-00","","","","","","national conference on signals","a luby transform with unique error protection tech","department of Electronics and communication engine","2","2012-02-23","2012-02-24","0000-00-00","national","","88132-conference-bannari.pdf","1");
INSERT INTO ece_fac_glc VALUES("44","S16ECE010","2012-2013","","","0000-00-00","0000-00-00","0000-00-00","","","","","","NATIONAL CONFERENCE ON VERSATI","AUTOMATED DETECTION OF BLOOD VESSELS USING BAYESIA","MOHAMED SATHAK ENGINEERING COLLEGE","1","0000-00-00","0000-00-00","2013-02-23","national","","56041-conference-(sathak).pdf","1");
INSERT INTO ece_fac_glc VALUES("45","S16ECE010","2012-2013","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International conference on Ad","AUTOMATED SEGMENTATION OF BLOOD VESSELS FOR PROLIF","j.k.k.nattraja college of engineering and technolo","2","2013-03-08","2013-03-09","0000-00-00","international","","36182-conference-ijkkn.pdf","1");
INSERT INTO ece_fac_glc VALUES("46","S17ECE004","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","2nd International conference o","COMPARATIVE PERFORMANCE ANALYSIS OF XOR/XNOR AND G","AVS ENGINEERING COLLEGE","2","2015-04-10","2015-04-11","0000-00-00","international","","5315-titcon-international-conference.pdf","1");
INSERT INTO ece_fac_glc VALUES("47","S17ECE004","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","NATIONAL CONFERENCE ON RECENT ","COMPARATIVE PERFORMANCE ANALYSIS OF XOR/XNOR AND G","ST.JOSEPH COLLEGE OF ENGINEERING","1","0000-00-00","0000-00-00","2015-03-06","national","","74081-national-conference.pdf","1");
INSERT INTO ece_fac_glc VALUES("48","S10ECE017","2018-2019","","","0000-00-00","0000-00-00","0000-00-00","","","","","","2nd  IEEE-International Confer","Design and Analysis of a mesh based adaptive wirel","MANAKULA VINAYAGAR INSTITUTE OF TECHNOLOGY","2","2019-03-29","2019-03-30","0000-00-00","international","","21506-29-and-30mar-2019-manakula-vinayaga.pdf","1");
INSERT INTO ece_fac_glc VALUES("49","S10ECE017","2006-2007","","","0000-00-00","0000-00-00","0000-00-00","","","","","","National conference on emergin","A Low Area overhead packet switched network on chi","kalasalingam university","1","0000-00-00","0000-00-00","2007-03-23","national","","87935-kalasalingam-univ-23-march-2007.pdf","1");
INSERT INTO ece_fac_glc VALUES("50","S10ECE017","2006-2007","","","0000-00-00","0000-00-00","0000-00-00","","","","","","National conference on recent ","On chip implementation of packet switched network","Noorul Islam college of Engineering","2","2007-02-08","2007-02-09","0000-00-00","national","","89506-nurula-islam-clg-8-and-9-feb-2007.pdf","1");
INSERT INTO ece_fac_glc VALUES("51","S10ECE017","2010-2011","","","0000-00-00","0000-00-00","0000-00-00","","","","","","National conference on network","Analysis of Floor planning  algorithm in Vlsi Phys","Hindusthan Institute of technology coimbatore","1","0000-00-00","0000-00-00","2010-10-07","national","","78125-hindustan-7-october-2010.pdf","1");
INSERT INTO ece_fac_glc VALUES("52","S10ECE017","2012-2013","","","0000-00-00","0000-00-00","0000-00-00","","","","","","National Conference on Frontie","Flexible Router Placement with Link Length and Por","Adhiyamaan college of engineering","2","2013-03-18","2013-03-19","0000-00-00","national","","10273-ace-conference-18-and-19-march-2013.pdf","1");
INSERT INTO ece_fac_glc VALUES("53","S10ECE017","2012-2013","","","0000-00-00","0000-00-00","0000-00-00","","","","","","CommuniQuest13 2nd national co","Convex Optimization approach for vlsi floor planni","Rajiv Gandhi College of Engineering","1","0000-00-00","0000-00-00","2013-04-03","national","","69784-rajiv-gandhi-college-3rd-april-2013.pdf","1");
INSERT INTO ece_fac_glc VALUES("54","S10ECE017","2016-2017","","","0000-00-00","0000-00-00","0000-00-00","","","","","","4th International Conference o","A Virus Detection Processor For Embedded Network S","Park College of engineering","3","2017-03-30","2017-04-01","0000-00-00","international","","34714-park-college-conf-30,31mar-1apr2017.pdf","1");





CREATE TABLE `ece_fac_member` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `awakey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;

INSERT INTO ece_fac_member VALUES("1","S11ECE007","2011-2012","","","","","","TUTOR","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("2","S11ECE007","2012-2013","","","","","","TUTOR","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("3","S11ECE007","2013-2014","","","","","","TUTOR","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("4","S11ECE007","2014-2015","","","","","","TUTOR","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("5","S11ECE007","2015-2016","THE INSTITUTION OF ENGINEERS(INDIA)","AM1589000","LIFE TIME","47478-ie-member-nagaraju.pdf","1","TUTOR","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("6","S11ECE007","2016-2017","","","","","","TUTOR","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("7","S11ECE007","2017-2018","","","","","","TUTOR","","TUTOR","department","","","","","","","","","","","","","","","2","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("8","S11ECE007","2018-2019","","","","","","TUTOR","department","DISCIPLINARY COMMITTEE","institute","","","","","","","","","","","","","","","2","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("9","S09ECE015","2012-2013","","","","","","Deputy Controller of Examinations","institute","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("10","S01ECE018","2018-2019","","","","","","Member in Academic council ","institute","Chairman of  Board of Studies","institute","Member in Research council","institute","Member in Anti-Ragging committee","institute","Organising Secretary for symposium, conference and","department","Board of ","","Board of studies member in computer science Engine","department","Board of studies member in Information Technology","department","Board of studies member in Bio-medical ","department","9","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("11","S14ECE009","2014-2015","","","","","","TUTORSHIP","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("12","S14ECE009","2015-2016","THE INSTITUTION OF ENGINEERS","AM159202-8","-","94107-ie.pdf","1","TUTORSHIP","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("13","S14ECE009","2016-2017","","","","","","TUTORSHIP","department","FACULTY COORDINATOR FOR WORKSHOP","department","","","","","","","","","","","","","","","2","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("14","S14ECE009","2017-2018","","","","","","TUTORSHIP","department","STAFF TREASURER","department","","","","","","","","","","","","","","","2","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("15","S09ECE015","2013-2014","","","","","","Deputy Controller of Examinations","institute","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("16","S09ECE015","2014-2015","","","","","","Deputy Controller of Examinations","institute","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("17","S09ECE015","2015-2016","","","","","","Deputy Controller of Examinations","institute","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("18","S09ECE015","2016-2017","","","","","","Deputy Controller of Examinations","institute","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("19","S09ECE015","2017-2018","","","","","","Deputy Controller of Examinations","institute","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("20","S09ECE015","2018-2019","","","","","","Deputy Controller of Examinations","institute","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("21","S14ECE009","2018-2019","","","","","","JUDGE FOR E&I DEPT CONFERENCE","department","STAFF TREASURER","department","","","","","","","","","","","","","","","2","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("22","S01ECE018","2009-2010","The Indian Society for Technical Education","69314","life member","86761-life-member,2010.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("23","S10ECE005","2018-2019","","","","","","Tutor","department","Feedback Incharge","institute","","","","","","","","","","","","","","","2","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("24","S10ECE005","2013-2014","","","","","","Tutor","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("25","S01ECE018","2015-2016","","","","","","","","","","","","","","","","","","","","","","","","","Bharat Jyoti Award","Indian Int","2016-06","The Best Citizen of India Award","4020-best-citizen-of-india-awa","The International publishing h","2016-06","98516-bharat-jyothi-award.pdf","2");
INSERT INTO ece_fac_member VALUES("26","S17ECE004","2017-2018","","","","","","TUTOR","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("27","S17ECE004","2018-2019","","","","","","TUTOR","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("28","S01ECE018","2017-2018","","","","","","","","","","","","","","","","","","","","","","","","","Distinguished Faculty in Engineering","Venus Inte","2017-03","","","","","27238-page1.pdf","1");
INSERT INTO ece_fac_member VALUES("29","S01ECE018","2013-2014","The Institution of Engineers (India)","F-119074-8","life member","77478-institution-of-engineers-membership.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("30","S16ECE010","2016-2017","","","","","","TUTOR","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("31","S16ECE010","2017-2018","","","","","","TUTOR","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("32","S16ECE010","2018-2019","","","","","","TUTOR","department","TUTOR","department","","","","","","","","","","","","","","","2","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("33","S16ECE010","2014-2015","","","","","","TUTOR","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("34","S14ECE014","2014-2015","","","","","","UNIT TEST INCHARGE","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("35","S14ECE014","2015-2016","SOMASUNDARAM R","AM1588861","LIFE TIME","49945-new-doc-2019-04-09-15.06.24.pdf","1","UNIT TEST INCHARGE","department","TUTORSHIP","department","","","","","","","","","","","","","","","2","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("36","S14ECE014","2017-2018","","","","","","UNIT TEST INCHARGE","department","UNIT TEST INCHARGE","department","TUTORSHIP","department","","","","","","","","","","","","","3","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("37","S14ECE014","2016-2017","","","","","","TUTORSHIP","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("38","S14ECE014","2018-2019","","","","","","TUTORSHIP","department","PROJECT COORDINATOR","department","","","","","","","","","","","","","","","2","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("39","S12ECE008","2012-2013","","","","","","TUTORSHIP","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("40","S12ECE008","2013-2014","","","","","","TUTORSHIP","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("41","S12ECE008","2014-2015","","","","","","TUTORSHIP","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("42","S12ECE008","2015-2016","","","","","","TUTORSHIP","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("43","S12ECE008","2016-2017","","","","","","TUTORSHIP","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("44","S12ECE008","2017-2018","","","","","","TUTORSHIP","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("45","S12ECE008","2018-2019","","","","","","TUTORSHIP","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("46","S12ECE008","2016-2017","","","","","","warden","institute","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("47","S12ECE008","2017-2018","","","","","","warden","institute","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("48","S12ECE008","2018-2019","","","","","","warden","institute","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("49","S12ECE008","2018-2019","","","","","","discipline commitee member","institute","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("50","S12ECE008","2017-2018","","","","","","FACULTY COORDINATOR FOR WORKSHOP","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("51","S12ECE008","2015-2016","Nithyapriya A.P","AM158890-5","LIFE TIME","93970-ie-card.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("52","S16ECE010","2018-2019","","","","","","discipline commitee member","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("53","S16ECE010","2014-2015","SUNDARA JEYALAKSHMI.V","AM1589124","LIFE TIME","1707-ie-member.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("54","S16ECE010","2007-2008","","","","","","","","","","","","","","","","","","","","","","","","","APPRECIATION","PANDIAN SA","2008-05","","","","","2224-psy-appreciation.pdf","1");
INSERT INTO ece_fac_member VALUES("55","S16ECE010","2010-2011","","","","","","","","","","","","","","","","","","","","","","","","","APPRECIATION","NPR GROUP ","2011-05","","","","","62229-n.p.r-appreciation.pdf","1");
INSERT INTO ece_fac_member VALUES("56","S16ECE010","2010-2011","","","","","","","","","","","","","","","","","","","","","","","","","EXCELLENCE","NPR GROUP ","2011-05","","","","","72511-n.p.r-result.pdf","1");
INSERT INTO ece_fac_member VALUES("57","S17ECE004","2012-2013","","","","","","","","","","","","","","","","","","","","","","","","","BEST SOCIAL CONCERN PROJECT","A.C .COLLE","2012-02","","","","","95670-best-project-award.pdf","1");
INSERT INTO ece_fac_member VALUES("58","S17ECE004","2011-2012","","","","","","","","","","","","","","","","","","","","","","","","","SPECIAL CAMPING CERTIFICATE","ANNA UNIVE","2011-03","","","","","80532-nss-david.pdf","1");
INSERT INTO ece_fac_member VALUES("59","S11ECE006","2016-2017","","","","","","TUTOR","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("60","S03ECE020","2004-2005","","","","","","Incharge HOD Till 2012","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("61","S10ECE017","2012-2013","","","","","","Tamilnadu inter engineering sports co-ordinator","out","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("62","S10ECE017","2014-2015","","","","","","TUTORSHIP","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("63","S10ECE017","2018-2019","","","","","","TUTORSHIP","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("64","S10ECE017","2010-2011","","","","","","DEPTY WARDEN","institute","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("65","S10ECE017","2011-2012","","","","","","DEPTY WARDEN","institute","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("66","S10ECE017","2012-2013","","","","","","DEPTY WARDEN","institute","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("67","S10ECE017","2015-2016","","","","","","COURSE CO-ORDINATOR","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("68","S10ECE017","2013-2014","","","","","","SYMPOSIUM STAFF CO-ORDINATOR","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("69","S10ECE017","2018-2019","","","","","","SYMPOSIUM STAFF CO-ORDINATOR","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("70","S10ECE017","2018-2019","","","","","","BOS MEMBER","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("71","S10ECE017","2013-2014","","","","","","DEPTY WARDEN","institute","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("72","S10ECE017","2014-2015","","","","","","DEPTY WARDEN","institute","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("73","S10ECE017","2015-2016","","","","","","DEPTY WARDEN","institute","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("74","S10ECE017","2013-2014","","","","","","UTL TRAINER","institute","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("75","S10ECE017","2014-2015","","","","","","UTLP TRAINER (WIPOR LAB)","institute","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("76","S10ECE017","2015-2016","","","","","","UTLP TRAINER (WIPOR LAB)","institute","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("77","S10ECE017","2016-2017","THE INSTITUTION OF ENGINEERS","AM158895-D","LIFE TIME","31790-ie-membership_1.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("78","S10ECE017","2015-2016","","","","","","M.E VLSI LAB INCHARGE","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("79","S10ECE017","2016-2017","","","","","","M.E VLSI LAB INCHARGE","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("80","S10ECE017","2017-2018","","","","","","M.E VLSI LAB INCHARGE","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("81","S10ECE017","2018-2019","","","","","","M.E VLSI LAB INCHARGE","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");
INSERT INTO ece_fac_member VALUES("82","S10ECE017","2013-2014","","","","","","NATIONAL ROBOTICS CHAMPIONSHIP CO-ORDINATOR","department","","","","","","","","","","","","","","","","","1","","","","","","","","","");





CREATE TABLE `ece_fac_ot_qual` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `sid` varchar(10) NOT NULL,
  `name_qual` varchar(50) NOT NULL,
  `year_com` int(10) NOT NULL,
  `cer` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO ece_fac_ot_qual VALUES("1","S11ECE007","MBA","2013","81521-naga-mba.pdf.pdf");
INSERT INTO ece_fac_ot_qual VALUES("2","S03ECE020","MBA","1999","52519-mba.pdf");





CREATE TABLE `ece_fac_resg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `j_sup` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

INSERT INTO ece_fac_resg VALUES("1","S01ECE018","Anna university-Chennai","2640091","0","10950621089","Saravana kumar E","2009","2015","Information and communication Engineering","A Trust based Hybrid Ant Colony Optimized Grid Scheduling ","Nil");
INSERT INTO ece_fac_resg VALUES("2","S01ECE018","Anna university-Chennai","2640091","0","71050121040","Thirukumaran S","2010","2018","Information and communication Engineering","IMPROVISING THE IMPUTATION METHOD USING ADVANCED FUZZY CLUSTERING TECHNIQUES FOR MEDICAL DATABASE","Nil");
INSERT INTO ece_fac_resg VALUES("3","S01ECE018","Anna university-Chennai","2640091","0","71051021001","Jayakumar S","2010","2018","Information and communication Engineering","Analysis of high performance vedic multipliers and fast adders for FIR filter implementation used in","Nil");
INSERT INTO ece_fac_resg VALUES("4","S01ECE018","Anna university-Chennai","2640091","0","71020421038","Sivakumar N","2010","ongoing","Electrical Engineering","Reduction of Harmonics in PV- Fed Asymmetric Cascaded H-Bridge Multilevel Inverter Using Fuzzy Logic","Nil");
INSERT INTO ece_fac_resg VALUES("5","S01ECE018","Anna university-Chennai","2640091","0","71010631005","Ashok Goerge","2010","ongoing","Information and communication Engineering","DATA SANITIZATION AND ENCRYPTION BASED METHOD FOR SECURE DATA STORAGE IN CLOUD COMPUTING","Nil");
INSERT INTO ece_fac_resg VALUES("6","S01ECE018","Anna university-Chennai","2640091","0","11100432021","B.Poornima","2011","ongoing","Electrical Engineering","FAST ALGORITHMS FOR IMAGE        REGISTRATION IN SURVEILLANCE IMAGES FOR SMART BORDER  MANAGEMENT","Nil");
INSERT INTO ece_fac_resg VALUES("7","S01ECE018","Anna university-Chennai","2640091","0","11100531015","F.Jeni Anto","2011","ongoing","Information and communication Engineering","DESIGN AND DEVELOPMENT OF A PROTOTYPE RADIO FREQUENCY APPLICATOR FOR POST BAKING OF BISCUITS ","Nil");
INSERT INTO ece_fac_resg VALUES("8","S01ECE018","Anna university-Chennai","2640091","0","11100532004","V.I.Beatrice Sylvia","2011","ongoing","Information and communication Engineering","ACHIEVING MINIMUM PEAK SIDE LOBE THROUGH PULSE COMPRESSION CODING TECHNIQUE ON SYNTHETIC APERTURE RA","Nil");
INSERT INTO ece_fac_resg VALUES("9","S01ECE018","Anna university-Chennai","2640091","0","11150531013","S.Chidambaram","2011","ongoing","Information and communication Engineering","Development and Analysis of Novel Spectral and Spatial Classification Approach for Airborne Hyperspe","Nil");
INSERT INTO ece_fac_resg VALUES("10","S01ECE018","Anna university-Chennai","2640091","0","11150531028","R.Poovendran","2011","ongoing","Information and communication Engineering","An Area-Efficient Low-Power Router Design for Network-on-Chip (NoC) Architecture with Optimized Topo","Nil");
INSERT INTO ece_fac_resg VALUES("11","S01ECE018","Anna university-Chennai","2640091","0","71150532021","Nirmala Nandakumar","2011","ongoing","Information and communication Engineering","ENRICHED ARCHITECTURE OF LOW POWER FFT PROCESSOR FOR OFDMA TRANSCEIVER IN WIRELESS COMMUNICATION NET","Nil");
INSERT INTO ece_fac_resg VALUES("12","S01ECE018","Anna university-Chennai","2640091","0","16154697359","V.Mahendra Babu","2016","ongoing","Information and communication Engineering","Wireless sensor networks","Nil");
INSERT INTO ece_fac_resg VALUES("13","S01ECE018","Anna university-Chennai","2640091","0","18223691269","Bharathy Priya D","2018","ongoing","Electrical Engineering","Analysis,Design and implementation of multiphase interleaved DC-DC boost converter with coupled Indu","Nil");
INSERT INTO ece_fac_resg VALUES("14","S01ECE018","Anna university-Chennai","2640091","0","18254697188","M.Gurupriya","2018","ongoing","Information and communication Engineering","Smart wrist band device for Indian Dactylology interpretation using wireless sensor networks","Nil");





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
  `app_order` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO eee_fac VALUES("S04EEE008","NARAYANAPPA","1966-10-09","53","male","narayanbsn@yahoo.co.in","9488118851","SONNAPPAIAH","MUNIYAMMA","y","","HINDU","OC","BENGALURU","ATTIBELE","BENGALURU","Karnataka","India","562107","599, BEHIND KEB,
ATTIBELE,
BENGALURU.   ","	   ","858239809495","ADSPN1962G","","A POS","2004-01-07","PROFESSOR","0","EEE","82570-prof.-narayanappa.jpg","3625-narayanappa-new-aadhar.pdf.pdf","9495","","","","");
INSERT INTO eee_fac VALUES("S05EEE006","PERUMAL BALAN","1978-03-03","41","male","balan_perumal@yahoo.com","9965022603","P. Balan","B. Govindhammal","y","","Hindu","SC, Adi Dr","Londonpet-1","Tamil Nadu","Kirshnagiri","Tamil Nadu","India","635 001","B.Perumal
W/o P.Sudhapriya,
22A-1, Londonpet-1,
IELC Church Opp,
Krishnagiri Dt
Keishnagiri- 63","B.Perumal
W/o P.Sudhapriya,
22A-1, Londonpet-1,
IELC Church Opp,
Krishnagiri Dt   ","892689456830","AMNPP8513A","","O+ve","2005-06-13","Associate Professor","7339413213","EEE","68288-mr.-b.-perumal.jpg","5644-perumal.aadhar.pdf","6830","","","","");
INSERT INTO eee_fac VALUES("S08EEE012","VIVEKANANDA SIBAL .T","1977-03-06","42","male","SIVASIBAL@GMAIL.COM","9842625748","THIRUPATHY. R","LAKSHMI. P","y","","HINDU","MBC","KAVERIPATTNAM","KRISHNAGIRI","KRISHNAGIRI","Tamil Nadu","India","635112","	
T VIVEKANANDASIBAL 
S/O R THIRUPATHY,
455 GOVINDA CHETTY ST,
KAVERIPATTNAM (PO)
KRISHNAGIRI (","	
T VIVEKANANDASIBAL 
S/O R THIRUPATHY,
455 GOVINDA CHETTY ST,
KAVERIPATTNAM (PO)
KRISHNAGIRI-6","998282330648","AHVPV3076H","","O+VE","2008-06-13","ASSOCIATE PROFESSOR ","9944559805","EEE","4534-149991.jpg","26990-sibal-sr-adhar.pdf","0648","","","","");
INSERT INTO eee_fac VALUES("S09EEE007","JALENDIRAN.J","1979-05-03","40","male","mailjalen@rediffmail.com","9486116916","JAGANATHAN.D","MANGAYARKKARASI.J","y","","HINDU","BC","KRISHNAGIRI","KRISHNAGIRI","KRISHNAGIRI","Tamil Nadu","India","635002","4/388, RAJIV NAGAR,
VENKATAPURAM,
KRISHNAGIRI(PO)&(DT)   ","	   ","718111878949","AMQPJ5986J","","O Pos","2009-07-02","ASSISTANT PROFESSOR","0","EEE","70729-jalen-photo.jpg","80611-aadhaar__jalendiran.pdf","8949","","","","");
INSERT INTO eee_fac VALUES("S10EEE009","SENTHIL.K","1979-05-21","40","male","ksenthil2179@yahoo.co.in","9942664303","S.KUPPAN","G.THIYALNAYAGI","y","","HINDU","BC","POCHAMPALLI","POCHAMPALLI","KRISHNAGIRI","Tamil Nadu","India","635206","3/449,VADAMALAMPATTI
POCHAMPALLI (TK)
KRISHNAGIRI(DT)
PIN:635206   ","BALATHOTTAM(PO)
POCHAMPALLI(TK)
KRISHNAGIRI(DT)
PIN:635206   ","244219801546","DATPS9208A","","o+ve","2010-06-11","ASSISTANT PROFESSOR","0","EEE","1398-photo.jpg","78493-adhar-first-page-senthil.pdf","1546","","","","");
INSERT INTO eee_fac VALUES("S11EEE001","KARTHIKEYAN V","1987-02-01","32","male","karthikpse@yahoo.com","8300088814","VIJAYARANGAN","THILAGA","y","","HINDU","BC","KRISHNAGIRI","KRISHNAGIRI","KRISHNAGIRI","Tamil Nadu","India","635001","	   5/530.1 BHARATHIYAR NAGAR II CROSS,
KRISHNAGIRI.635001","	   5/530.1 BHARATHIYAR NAGAR II CROSS,
KRISHNAGIRI.635001","866623219938","CBKPK9185R","","o+ve","2011-08-06","ASSISTANT PROFESSOR","9585888814","EEE","45135-photo.jpg","38752-karthikeyan-adhaar.pdf","9938","","","","");
INSERT INTO eee_fac VALUES("S12EEE004","BALAMANIKANDAN A","1983-06-23","36","male","balamanieee83@gmail.com","9750650117","APPACHIANNAN K V","PONNAYAMMAL","y","","HINDU","BC","KARATTUR","ERODE","ERODE","Tamil Nadu","India","638502","	   KARATTUR 
KUPPANDAMPALAYAM PO
ATHANI VIA
ERODE","	   KARATTUR 
KUPPANDAMPALAYAM PO
ATHANI VIA
ERODE","613685165733","BDRPB9766K","","A1+","2012-12-10","ASSISTANT PROFESSOR","0","EEE","11179-balamanikandan.jpg","81048-balamanikandan.adhaar.pdf","5733","","","","");
INSERT INTO eee_fac VALUES("S12EEE005","BALAMANIKANDAN A","1983-06-23","36","male","balamanieee83@gmail.com","9750650117","APPACHIANNAN K V","PONNAYAMMAL","y","","HINDU","BC","KARATTUR","ERODE","ERODE","Tamil Nadu","India","638502","	   KARATTUR 
KUPPANDAMPALAYAM PO
ATHANI VIA
ERODE","	   KARATTUR 
KUPPANDAMPALAYAM PO
ATHANI VIA
ERODE","613685165733","BDRPB9766K","","A1+","2012-12-10","ASSISTANT PROFESSOR","0","EEE","38999-balamanikandan.jpg","28430-balamanikandan.adhaar.pdf","5733","","","","");
INSERT INTO eee_fac VALUES("S12EEE010","NANDHAKUMAR S","1979-12-02","40","male","rsnandhu@gmail.com","9976937338","SELVARAJ S","RAJALAKSHMI S","y","","HINDU","BC","DINDIGUL","DINDIGUL","DINDIGUL","Tamil Nadu","India","624001","186 EAST YMR PATTI
SHANTHI NILYAM
DINDIGUL","186 EAST YMR PATTI
SHANTHI NILYAM
DINDIGUL","902018132224","AQPPN4319J","","B +VE","2012-06-25","ASSISTANT PROFESSOR","9986531004","EEE","53032-nandhakumar-photo.jpg","25408-nandhu-aadhar.pdf","2224","","","","");
INSERT INTO eee_fac VALUES("S16EEE003","LOGANATHAN P S","1979-05-07","40","male","logu24455@gmail.com","9965324455","SUBRAMANIAN M","KALPANA T","y","","HINDU","MBC","PALAYAMPUDUR","DHARMAPURI","DHARMAPURI","Tamil Nadu","India","636807","1/120, PALAYAM(PO),
NALLAMPALLI (VIA),
DHARMAPURI DISTRICT,
TAMILNADU -636807","1/120, PALAYAM(PO),
NALLAMPALLI (VIA),
DHARMAPURI DISTRICT,
TAMILNADU -636807","254916055914","AGKPL7734L","","B +VE","2016-04-07","ASSISTANT PROFESSOR","6374635105","EEE","63728-logu-photo.jpg","57936-aadhaar.pdf","5914","","","","");
INSERT INTO eee_fac VALUES("S17EEE011","M.SUKANYA","1985-10-07","34","female","sukanyavisagan@gmail.com","9994538345","S.MOORTHY","R.ANJUGAM","y","","HINDU","MBC","HOSUR","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635109","5/431,DWARAKA NAGAR,NEW ASTC HUDCO,HOSUR-635109.	   ","5/431,DWARAKA NAGAR,NEW ASTC HUDCO,HOSUR-635109.	   ","344627088244","ENPPS9226C","H9984866","O+ve","2017-06-12","Assistant Professor","0","EEE","37099-sukanya.jpeg","81182-sukanya-aadhar.pdf","8244","","","","");
INSERT INTO eee_fac VALUES("S18EEE013","MOHANKUMAR.J","1986-05-06","33","male","mohanme1199@gmail.com","9894556300","JEEVANANDAM","KOKILAMBAL","y","","HINDU","KULALAR","KITCHIPALAYAM","SALEM","SALEM","Tamil Nadu","India","636015","13,THIRUNEELAKANDAR STREET, KITCHIPALAYAM , SALEM -636015.	   ","13,THIRUNEELAKANDAR STREET, KITCHIPALAYAM , SALEM -636015.	   ","436138424268","BZXPM6243A","","O -VE","2018-06-18","ASSISTANT PROFESSOR","9789324808","EEE","83537-new-doc-2019-02-13-14.36.15.jpg","52748-new-doc-2018-12-18-18.44.21_1.pdf","4268","","","","94525-new-doc-2019-02-13-13.50.47(1).pdf");





CREATE TABLE `eee_fac_attorg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO eee_fac_attorg VALUES("1","S12EEE010","2017-2018","workshop","TEACHING WORKSHOP ON DC MACHINES AND DC DRIVES","5","2018-01-01","2018-01-05","0000-00-00","CENTRE FOR CONTINUING EDUCATION ,INDIAN INSTITUTE ","BANGALORE","national","53680-iisc.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO eee_fac_attorg VALUES("2","S12EEE010","2015-2016","workshop","Mission 10 X ","3","2015-06-02","2015-06-04","0000-00-00","WIPRO","ADHIYAMAAN COLLEGE OF ENGINEERING ,HOSUR","national","17659-mission-10-x-3-days.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO eee_fac_attorg VALUES("3","S12EEE010","2015-2016","workshop","Mission 10 X UTLP -Practitioner Workshop","6","2016-03-26","2016-03-31","0000-00-00","WIPRO","ADHIYAMAAN COLLEGE OF ENGINEERING ,HOSUR","national","28978-mission-10-x-6-days.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO eee_fac_attorg VALUES("4","S12EEE010","2013-2014","fdp","LaTeX","2","2013-06-28","2013-06-29","0000-00-00","Department of IT and E&I ","ADHIYAMAAN COLLEGE OF ENGINEERING ,HOSUR","national","65468-ace-latex.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO eee_fac_attorg VALUES("5","S12EEE010","2012-2013","workshop","NPTEL workshop","1","0000-00-00","0000-00-00","2013-02-16","NPTEL (IIT Madras)","Chennai","national","60656-nptel-2013.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO eee_fac_attorg VALUES("6","S12EEE010","2013-2014","workshop","NPTEL Online Certification Courses","1","0000-00-00","0000-00-00","2014-02-25","NPTEL(IIT Madras)","Chennai","national","1228-nptel-2014.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");





CREATE TABLE `eee_fac_bkjrn` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `glkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO eee_fac_bkjrn VALUES("1","S10EEE009","2016-2017","","","","","","","","A RESONANT DUAL FULL-BRIDGE CLASS-E BIDIRECTIONAL DC–DC                    CONVERTER FOR FUEL CELL","CIRCUITS AND SYSTEMS","7","10","710289","scrip","htt/:dx.doi.org/10.4236/cs.2016.710289","2071","55923-paper.pdf","1","1","","");





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
  `ph2key` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO eee_fac_edu VALUES("S10EEE009","GOVT HSS POCHAMPALLI","state","1994","84","95594-senthil-tenth-std.pdf","1","GOVT HSS POCHAMPALLI","state","MATHS","1996","73","75521-12certificatepdf.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","MAILAM ENGINEERING COLLEGE","MADRAS UNIVERSITY","BE-EEE","EEE","regular","2002","74","2443-senthil-be.pdf","1","","","","","","","","","","","","","","","","","","","SONA COLLEGE OF TECHNOLOGY","ANNA UNIVERSITY COIMBATORE","ME","POWER ELECTRONICS AND DRIVES","regular","0","9","98019-pg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO eee_fac_edu VALUES("S12EEE010","MSP SOLAINADAR MEMORIAL HIGHER SECONDARY SCHOOL DI","state","1995","78","28200-tenth-pdf.pdf","1","MSP SOLAINADAR MEMORIAL HIGHER SECONDARY SCHOOL DI","state","MATHS PHYSICS CHEMISTRY","1997","67","18045-twelth-pdf.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","ODAIYAPPA COLLEGE OF ENGINEERING","MADURAI KAMARAJ UNIVERSITY","BE","EEE","regular","2003","71","29023-ug-pdf.pdf","1","","","","","","","","","","","","","","","","","","","PSNA COLLEGE OF ENGINEERING","ANNA UNIVERSITY CHENNAI","ME","POWER ELECTRONICS AND DRIVES","regular","2005","70","72320-pg-pdf.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO eee_fac_edu VALUES("S18EEE013","SRI RAMA KRISHNA SARADA HIGER SECONDARY SCHOOL","state","2001","65","67643-x.pdf","1","NEELAMBAL SUBRAMANIAM HIGHER SECONDARY SCHOOL","state","EMR (VOCATIONAL)","2003","72","64976-+2.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","K S RAGASAMY COLLEGE OF TECHNOLOGY","ANNA UNIVERSITY","B.E","ELECTRICAL AND ELECTRONICS ENGINEERING","regular","2008","69","35900-ug--degree.pdf","1","","","","","","","","","","","","","","","","","","","K S RANGASAMY COLLEGE OF TECHNOLOGY","ANNA UNIVERSITY","M.E","POWER ELECTRONICS AND DRIVES","regular","2012","82","93433-pg-degree.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");





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
  `otkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO eee_fac_exp VALUES("S10EEE009","MAILAM ENGINEERING COLLEGE","LECTURER","2002-10-01","2004-11-30","FATHER HEALTH PROBLEM","SAPTHAGIRI COLLEGE OF ENGINEERING","LECTURER","2004-12-01","2006-09-14","PROFESSIONAL GROWTH","JAYAM COLLEGE OF ENGINEERING AND TECHNOLOGY","LECTURER","2006-09-15","2007-12-31","HIGHER STUDY","KING COLLEGE OF TECHNOLOGY","LECTURER","2009-01-02","2009-07-01","PERSONAL WORK","SRI NANDHANAM COLLEGE OF ENGINEERING AND TECHNOLOG","SENIOR LECTURER","2009-07-03","2010-06-04","PROFESSIONAL GROWTH","0000-00-00","0000-00-00","0000-00-00","0000-00-00","78825-exp-mailam-converted.pdf","5","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO eee_fac_exp VALUES("S12EEE010","ODAIYAPPA COLLEGE OF ENGINEERING","ASST  PROFESSOR","2005-06-21","2009-01-31","Professional growth ","MAHAKAVI BHARATHIYAR COLLEGE OF ENGINEERING","ASST  PROFESSOR","2009-02-09","2011-01-31","Career Prospectus","MNSK COLLEGE OF ENGINEERING","ASST  PROFESSOR","2011-06-13","2012-05-04","Professional growth ","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","0000-00-00","0000-00-00","0000-00-00","0000-00-00","22453-ocet.pdf","3","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");





CREATE TABLE `eee_fac_funpat` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `patkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `eee_fac_glc` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `conkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO eee_fac_glc VALUES("1","S12EEE010","2004-2005","","","0000-00-00","0000-00-00","0000-00-00","","","","","","RECENT TRENDS IN INSTRUMENTATI","Virtual Instrument for Testing Current and Voltage","Dept of EEE, National Engineering college ","2","2004-12-23","2004-12-24","0000-00-00","national","","64602-national-college-conference.pdf","1");
INSERT INTO eee_fac_glc VALUES("2","S12EEE010","2005-2006","","","0000-00-00","0000-00-00","0000-00-00","","","","","","SACOEFERENCE","A stator flux oriented vector controlled Induction","Dr.Sivanthi Aditanar College of Engineering","2","2005-08-18","2005-08-19","0000-00-00","national","","32635-adithanar-college-.pdf","1");
INSERT INTO eee_fac_glc VALUES("3","S12EEE010","2011-2012","","","0000-00-00","0000-00-00","0000-00-00","","","","","","POWER AND ENERGY SYSTEMS","A Novel Out -Of-Step Detection Algorithm Using Ang","Dept of EEE, Indian Institute of Technology Madras","3","2011-12-22","2011-12-24","0000-00-00","international","","98214-iit-confernce.pdf","1");
INSERT INTO eee_fac_glc VALUES("4","S12EEE010","2011-2012","","","0000-00-00","0000-00-00","0000-00-00","","","","","","POWER AND ENERGY SYSTEMS ","Detection of Power Quality Disturbances in Presenc","Indian Institute of Technology Madras","3","2011-12-22","2011-12-24","0000-00-00","international","","26944-iit-confernce.pdf","1");





CREATE TABLE `eee_fac_member` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `awakey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO eee_fac_member VALUES("1","S11EEE001","2017-2018","","","","","","PRESIDENT ADHIYAMAAN ALUMNI ASSOCIATION","institute","","","1","","","","","");
INSERT INTO eee_fac_member VALUES("2","S12EEE010","2015-2016","THE INSTITUTION OF ENGINEERS","AM158773-3","LIFE MEMBERSHIP","65110-iei.pdf","1","TUTOR ","department","","","1","","","","","");
INSERT INTO eee_fac_member VALUES("3","S12EEE010","2018-2019","","","","","","PLACEMENT COORDINATOR","department","","","1","","","","","");
INSERT INTO eee_fac_member VALUES("4","S12EEE010","2017-2018","","","","","","EXAM CELL COORDINATOR","department","","","1","","","","","");
INSERT INTO eee_fac_member VALUES("5","S12EEE010","2012-2013","","","","","","TUTOR ","department","NPTEL COORDINATOR","department","2","","","","","");
INSERT INTO eee_fac_member VALUES("6","S12EEE010","2013-2014","","","","","","TUTOR ","department","NPTEL COORDINATOR","department","2","","","","","");
INSERT INTO eee_fac_member VALUES("7","S12EEE010","2014-2015","","","","","","TUTOR ","department","","","1","","","","","");
INSERT INTO eee_fac_member VALUES("8","S12EEE010","2016-2017","","","","","","EXAM CELL COORDINATOR","department","","","1","","","","","");





CREATE TABLE `eee_fac_ot_qual` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `intake1` int(5) DEFAULT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `name_qual` varchar(100) DEFAULT NULL,
  `year_com` int(10) DEFAULT NULL,
  `cer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `eee_fac_resg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `j_sup` varchar(50) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
  `app_order` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO eie_fac VALUES("S03EIE001","Dr.S.Sujatha","1975-05-06","44","female","sujasakthi22@gmail.com","9487819134","P.Subramanian","S.Jegathambal","y","","Hindu","MBC","Hosur","Hosur","Krishnagiri","Tamil Nadu","India","635109","	H-352,TNHB,Phase-7,Thendral Nagar, Hosur   ","	H-352,TNHB,Phase-7,Thendral Nagar, Hosur   ","991393280148","AXDPS2309G","","O+ve","2003-02-01","Professor & Head","0","EIE","44516-sujatha.jpg","2694-aadharcard.jpg","0148","","","","");
INSERT INTO eie_fac VALUES("S11EIE003","Dr.N.BAGYALAKSHMI","1981-07-06","37","female","bagyaeieace2009@gmail.com","9344498040","Mr.M.NAGARAJAN","Mrs.N.PARVATHI","y","","Hindu","MBC","Hosur","Hosur","Tamilnadu","Tamil Nadu","India","635110","151/21,Rajaganapathi Nagar, BMR Layout, 
Old Rayakotta Hudco,
Hosur,
635110.   ","151/21,Rajaganapathi Nagar, BMR Layout, 
Old Rayakotta Hudco,
Hosur,
635110.   ","406638821073","APAPB2069M","","O+ve","2009-06-22","ASSOCIATE PROFESSOR","8248510171","EIE","35182-bagya-photo.jpg","97317-aadhar.jpg","2 1073","","","","93798-appointment-order-22.06.2009-.pdf");
INSERT INTO eie_fac VALUES("S11EIE005","STALIN JOSE.C","1985-05-14","32","male","stalinjose.eie@adhiyamaan.in","9789131150","V.CHARLES","CHALLATHANGAM","y","","Christain ","BC","Poovancode","Verkizambi","Kanyakumari","Tamil Nadu","India","629166","	   14/45,Valiyaplankalavilai,
Poovancode,
Verkizambi(P.O).","	   14/45,Valiyaplankalavilai,
Poovancode,
Verkizambi(P.O).","656490682999","DROPS9347J","","o Neg","2011-06-08","Assistant Professor","0","EIE","38239-stalin-jose_pan.pdf","50233-stali-jose_adar.pdf","2999","","","","");
INSERT INTO eie_fac VALUES("S13EIE006","GOWRI SHANKAR M","1986-02-21","33","male","gowrishankar.eie@adhiyamaan.in","9994222129","MADHAVAN J","VIJAYALAKSHMI","y","","HINDU","BC","SALEM","SALEM","SALEM","Tamil Nadu","India","636009","15-8 DHAMODARAN STREET  
ARISIPALAYAM 
SALEM DISTRICT","15-8 DHAMODARAN STREET  
ARISIPALAYAM 
SALEM DISTRICT","247009818494","ASVPG6583F","","B POS","2013-06-07","ASSISTANT PROFESSOR","0","EIE","10335-gowri.jpg","81667-aadhar.pdf","8494","","","","");
INSERT INTO eie_fac VALUES("S13EIE007","Anbarasan","1990-05-10","28","male","anbarasanmsp@gmail.com","9600491007","Muthusamy","Sarasu","n","","Hindu","BC","Attur","Salem","Salem","","India","636108","3/46, Akkichettipalayam, Palaniapuri (P.O),
Attur (T.K),
Salem   ","3/46, Akkichettipalayam, Palaniapuri (P.O),
Attur (T.K),
Salem   ","706404342101","AWKPA3889P","","A1-ve","2013-06-07","Assistant Professor","0","EIE","85075-photo.jpg","38659-jpg2pdf.pdf","2101","","","","");
INSERT INTO eie_fac VALUES("S70EIE004","GURUSAMY","1986-12-27","31","male","gurulakshmi006@gmail.com","9789662232","PERUMAL","LAKSHMI","y","","HINDU","SCA","SANKARI","SALEM","SALEM","Tamil Nadu","India","637303","DOOR NO 95-B,
CHINNAGOUNDNUR POST,
SANKARI WEST,
SALEM DISTRICT","DOOR NO 95-B,
CHINNAGOUNDNUR POST,
SANKARI WEST,
SALEM DISTRICT","418401465579","BECPG6466H","","B+ve","2012-06-18","ASSISTANT PROFESSOR","0","EIE","12674-guru-photo.jpg","17262-guru.adhaar.pdf","5579","","","","");





CREATE TABLE `eie_fac_attorg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO eie_fac_attorg VALUES("1","S03EIE001","2014-2015","workshop","ELECTRONIC SYSTEM LEVEL DESIGN AND VERIFICATION","2","2014-11-14","2014-11-15","0000-00-00","AMRITA VISHWA VIDYAPEETHAM","BANGALORE","national","61195-amritha.pdf","","","0","0000-00-00","0000-00-00","0000-00-00","","","","","1","fdp","Analog and Digital Communication","ANNA UNIVERSITY","7","2014-06-12","2014-06-18","0000-00-00","DR.V.BANUMATHI,Dr. S. Vijayach","30","state","93810-fdp.pdf","1");
INSERT INTO eie_fac_attorg VALUES("2","S03EIE001","2015-2016","seminar","KCT INDUSTRY ACADEMIA MEET 2016-INSTRUMENTATION","1","0000-00-00","0000-00-00","2016-02-20","KUMARAGURU COLLEGE OF TECH","COIMBATORE","national","89769-kct.pdf","","","0","0000-00-00","0000-00-00","0000-00-00","","","","","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO eie_fac_attorg VALUES("3","S03EIE001","2013-2014","workshop","WORKSHOP ON R & d PROJECT PROPOSALS-AWARENESS,NEED","1","0000-00-00","0000-00-00","2014-02-26","ANNA UNIVERSITY","CHENNAI","state","53544-au.pdf","","","0","0000-00-00","0000-00-00","0000-00-00","","","","","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO eie_fac_attorg VALUES("4","S03EIE001","2009-2010","fdp","ADAPTIVE CONTROL","6","2010-05-03","2010-05-09","0000-00-00","ANNA UNIVERSITY","CHENNAI","state","88077-aufdp1.pdf","seminar","AUTOMATION SYSTEM TECHNOLOGY","1","0000-00-00","0000-00-00","2009-12-19","CDAC,AND MIT","CHENNAI","national","40464-cdac.pdf","2","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO eie_fac_attorg VALUES("5","S03EIE001","2007-2008","workshop","MULTIVARIABLE CONTROL SYSTEM","1","0000-00-00","0000-00-00","2008-02-29","NITT ","TRICHY","national","96865-nitt.pdf","","","0","0000-00-00","0000-00-00","0000-00-00","","","","","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO eie_fac_attorg VALUES("6","S03EIE001","2011-2012","workshop","MISSION 10X","5","2011-06-21","2011-06-25","0000-00-00","ADHIYAMAAN COLLEGE OF ENGG","HOSUR","national","54257-mission-10x.pdf","","","0","0000-00-00","0000-00-00","0000-00-00","","","","","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO eie_fac_attorg VALUES("7","S03EIE001","2017-2018","workshop","SMART GRID/SMART CITY AN INDIAN PERSPECTIVE-RESEAR","1","0000-00-00","0000-00-00","2017-07-17","KONGU ENGINEERING COLLEGE","ERODE","national","89450-kongu.pdf","","","0","0000-00-00","0000-00-00","0000-00-00","","","","","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");





CREATE TABLE `eie_fac_bkjrn` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `glkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO eie_fac_bkjrn VALUES("1","S03EIE001","2017-2018","","","","","","","","","International Journal of Pure and Applied Mathemat","119","2","1314-3395","ugc","http://www.ijpam.eu","7.19%","0","0","1","","");
INSERT INTO eie_fac_bkjrn VALUES("2","S03EIE001","2016-2017","","","","","","","","","ADVANCES in NATURAL and APPLIED SCIENCES","11","6","1998-1090","others","http://www.aensiweb.com/ANAS","0","81937-21_eie21.pdf","0","1","","");
INSERT INTO eie_fac_bkjrn VALUES("3","S03EIE001","2015-2016","","","","","","","","","Middle-East Journal of Scientific Research ","24","10","1990-9233","others","https://www.idosi.org/mejsr/mejsr24(10)16/50.pdf","0","45149-50.pdf","0","1","","");
INSERT INTO eie_fac_bkjrn VALUES("4","S03EIE001","1987-1988","","","","","","","","","International Journal of Advanced Research in Elec","5","special issue 1","2278-8875","others","http://www.ijareeie.com/upload/2016/ncrte/21_EIE21.pdf","0","99426-21_eie21.pdf","0","1","","");
INSERT INTO eie_fac_bkjrn VALUES("5","S03EIE001","2014-2015","","","","","","","","","Modelling and Simulation in Engineering","14","Article ID 426402","16875591","ugc,wos","https://www.hindawi.com/journals/mse/2014/426402/","INSPEC","5368-426402.pdf","0","1","","");
INSERT INTO eie_fac_bkjrn VALUES("6","S03EIE001","2011-2012","","","","","","","","","International                     Journal of  Engi","3","3/4","1755-9758","others","10.1504/IJESMS.2011.043840","5","47516-ijesms0303-0404-sujatha.pdf","0","1","","");
INSERT INTO eie_fac_bkjrn VALUES("7","S03EIE001","2010-2011","","","","","","","","","International Journal of Computer Application","1","20","0975 - 8887","google scholar","DOI: 10.5120/417-615","61 READS","48951-ijca_paper.pdf","0","1","","");
INSERT INTO eie_fac_bkjrn VALUES("8","S03EIE001","2012-2013","","","","","","","","","Asian Journal of Scientific Research","5","2","19921454","ugc,scopus","https://scialert.net/abstract/?doi=ajsr.2012.31.44","1","29419-31-44.pdf","0","1","","");





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
  `ph2key` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO eie_fac_edu VALUES("S03EIE001","ZAMINDAR HIGHER SECONDARY SCHOOL","state","1990","88","76706-10th.pdf","1","ZAMINDAR HIGHER SECONDARY SCHOOL","state","MATHS,PHYSICS,CHEMISTRY,BIOLOGY","1992","89","84874-12th.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","ALAGAPPA CHETTIAR COLLEGE OF ENGINEERING AND TECHN","MADURAI KAMARAJ UNIVERSITY","B.E","ELECTRICAL AND ELECTRONICS ENGINEERING","regular","1997","73","4409-be-degree.pdf","1","","","","","","","","","","","","","","","","","","","ANNAMALAI UNIVERSITY","ANNAMALAI UNIVERSITY","M.E","PROCESS CONTROL AND INSTRUMENTATION","regular","2002","9","76708-me-de.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","MADRAS INSTITUTE OF TECHNOLOGY","ANNA UNIVERSITY","PROCESS CONTROL,MACHINE LEARNING","FACULTY OF ELECTRICAL","parttime","2006","2012","SUPPORT VECTOR MACHINE BASED MODELING AND CONTROL OF A BATCH REACTOR","DR.N.PAPPA","66622-phd.pdf","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO eie_fac_edu VALUES("S11EIE003","Govt Girls Higher Secondary school ,Hosur","state","1996","82","95441-10th-n.bagyalakshmi.pdf","1","Govt Girls Higher Secondary School ,Hosur","state","MPCB","1998","81","13344-12th-n.-bagyalakshmi.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Adhiyamaan College of Engineering , Hosur","Periyar University","B.E","Instrumentation and Control Engineering","regular","2002","79","18748-n.bagyalakshmi-ug-convocation.pdf","1","","","","","","","","","","","","","","","","","","","St.Peters Engineering College ,Chennai","Anna University ,chennai","M.E","Instrumentation Engineering","regular","2009","89","33153-n.bagyalakshmi-pg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","CIT , Coimabatore","Anna University , Chennai","Process Control","Electrical Engineering","parttime","2012-01","2017-12","Certain Investigations on Fault Detection and Control of Heat Exchangers using NARX Algorithms","Dr.M.Thirumarimurugan","53915-n.bagyalakshmi-ph.d.pdf","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO eie_fac_edu VALUES("S70EIE004","SANKAR HIGHER SECONDARY SCHOOL","state","2003","59","51039-10.pdf","1","GOVERNMENT HIGHER SECONDARY SCHOOL","state","MATHS BIOLOGY","2005","51","99115-12th.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","ADHIYAMAANCOLLEGE OF ENGINEERING","ANNA UNIVERSITY","BE","INSTRUMENTATION AND CONTROL ENGINEERING","regular","2010","64","36001-ug.pdf","1","","","","","","","","","","","","","","","","","","","KONGU ENGINEERING COLLEGE","ANNA UNIVERSITY","M.E","CONTROL AND INSTRUMENTATION","regular","2012","67","41550-pg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");





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
  `otkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO eie_fac_exp VALUES("S03EIE001","","","","","","","","","","","","","","","","","","","","","","TNEB","GRADUATE TRAINEE","TRAINING","1997-09-19","1998-09-18","ONE YEAR PERIOD","0","1","","","","","","","","");





CREATE TABLE `eie_fac_funpat` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `patkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO eie_fac_funpat VALUES("1","S03EIE001","2014-2015","Design and Implementation of Low Power Arithmetic ","1.5 years","310000","UGC","2014-04-01","Dr.S.Sujatha","2015-10","64070-ugc-project-sanctioned-order.pdf","0","1","","","","","");





CREATE TABLE `eie_fac_glc` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `conkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO eie_fac_glc VALUES("1","S03EIE001","2005-2006","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International conference on EA","Artifact amputation by adaptive comb filter","NOORUL ISLAM COLLEGE OF ENGG AND TECH","2","2005-12-16","2005-12-17","0000-00-00","international","","53377-nice.pdf","","","","0","0000-00-00","0000-00-00","0000-00-00","","","1");
INSERT INTO eie_fac_glc VALUES("2","S03EIE001","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","ieibct 2015","DESIGN AND IMPLEMENTATION OF FFT PROCESSOR USING V","ADHIYAMAAN COLLEGE OF ENGG","2","2015-03-23","2015-03-24","0000-00-00","national","","68411-dept1.pdf","","","","0","0000-00-00","0000-00-00","0000-00-00","","","1");
INSERT INTO eie_fac_glc VALUES("3","S03EIE001","2004-2005","","","0000-00-00","0000-00-00","0000-00-00","","","","","","NATIONAL CONFERENCE ON POWER E","COMPLEX WAVELET TRANSFORM BASED POWER QUANTITY MEA","ACCET","1","0000-00-00","0000-00-00","2005-03-31","national","","89201-accet.pdf","","","","0","0000-00-00","0000-00-00","0000-00-00","","","1");
INSERT INTO eie_fac_glc VALUES("4","S03EIE001","2015-2016","","","0000-00-00","0000-00-00","0000-00-00","","","","","","ICRSME 2016","PERFORMANCE ANALYSIS OF ANURUPYE VEDIC MULTIPLIER ","INTERNATIONAL ORGANIZATION OF SCIENTIFIC RESEARCH ","2","2016-02-18","2016-02-19","0000-00-00","international","","64175-iosed.pdf","","","","0","0000-00-00","0000-00-00","0000-00-00","","","1");
INSERT INTO eie_fac_glc VALUES("5","S03EIE001","2017-2018","","","0000-00-00","0000-00-00","0000-00-00","","","","","","ICACT 18","REAL TIME IMPLEMENTATION OF A TELEMONITORING SYSTE","VELAMMAL INSTITUTE OF TECH","1","0000-00-00","0000-00-00","2018-03-17","international","","46707-velammal1.pdf","","","","0","0000-00-00","0000-00-00","0000-00-00","","","1");
INSERT INTO eie_fac_glc VALUES("6","S03EIE001","2006-2007","LEARNING SYSTEMS IN TNTELLIGENT CONTROL: AN APPRAI","1","0000-00-00","0000-00-00","2007-03-14","INTRODUCTION TO EXPERT SYSTEM","ST PETERS ENGINEERING COLLEGE","CHENNAI","0","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","","0","0000-00-00","0000-00-00","0000-00-00","","","");





CREATE TABLE `eie_fac_member` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `awakey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

INSERT INTO eie_fac_member VALUES("1","S03EIE001","2006-2007","","","","","","","","","","","","","","HOD","department","","","","","","","1","","","","","");
INSERT INTO eie_fac_member VALUES("2","S03EIE001","2007-2008","","","","","","","","","","","","","","HOD","department","BOS CHAIRMAN","department","BOS CHAIRMAN/EIE BOARD","institute","Member in Academic Council","institute","4","","","","","");
INSERT INTO eie_fac_member VALUES("3","S03EIE001","2008-2009","","","","","","","","","","","","","","HOD","department","BOS CHAIRMAN","department","","","","","2","","","","","");
INSERT INTO eie_fac_member VALUES("4","S03EIE001","2009-2010","","","","","","","","","","","","","","HOD","department","","","","","","","1","","","","","");
INSERT INTO eie_fac_member VALUES("5","S03EIE001","2010-2011","","","","","","","","","","","","","","HOD","department","","","","","","","1","","","","","");
INSERT INTO eie_fac_member VALUES("6","S03EIE001","2011-2012","","","","","","","","","","","","","","HOD","department","","","","","","","1","","","","","");
INSERT INTO eie_fac_member VALUES("7","S03EIE001","2012-2013","","","","","","","","","","","","","","HOD","department","","","","","","","1","","","","","");
INSERT INTO eie_fac_member VALUES("8","S03EIE001","2013-2014","","","","","","","","","","","","","","HOD","department","","","","","","","1","","","","","");
INSERT INTO eie_fac_member VALUES("9","S03EIE001","2014-2015","","","","","","","","","","","","","","HOD","department","Member in Grievance Appeal Committee","institute","Program Coordinator in NBA, NAAC Team.","institute","","","3","","","","","");
INSERT INTO eie_fac_member VALUES("10","S03EIE001","2015-2016","","","","","","","","","","","","","","HOD","department","Member in Grievance Appeal Committee","institute","","","","","2","","","","","");
INSERT INTO eie_fac_member VALUES("11","S03EIE001","2016-2017","","","","","","","","","","","","","","HOD","department","Member in Grievance Appeal Committee","institute","","","","","2","","","","","");
INSERT INTO eie_fac_member VALUES("12","S03EIE001","2017-2018","","","","","","","","","","","","","","HOD","department","Member in Disciplinary Committee","institute","Member in Grievance Appeal Committee","institute","","","3","","","","","");
INSERT INTO eie_fac_member VALUES("13","S03EIE001","2018-2019","ISTE","LM 43567","LIFE MEMBER","ISOI","0","LM.No.2266","LIFE MEMBER","IE(I)","0","F-119868-4","LIFE MEMBER","0","3","HOD","department","•	Monitoring committee member for ACE-NIDHI-PRAY","institute","Member in Disciplinary Committee","institute","Member in Grievance Appeal Committee","institute","4","","","","","");
INSERT INTO eie_fac_member VALUES("14","S11EIE003","2018-2019","","","","","","","","","","","","","","Asst NAAC Co-ordinator","institute","","","","","","","1","","","","","");





CREATE TABLE `eie_fac_ot_qual` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `sid` varchar(10) NOT NULL,
  `name_qual` varchar(50) NOT NULL,
  `year_com` int(10) NOT NULL,
  `cer` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `eie_fac_resg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `j_sup` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
  `app_order` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO eng_fac VALUES("S15ENG003","LOGANATHAN ","1992-07-26","26","male","loganathanskg.ma@gmail.com","9500594372","GANESHASUBBURAM","KANAGAVELTHAI","n","","HINDU","MBC","KULLURSANDAI","KULLURSANDAI","VIRUDHUNAGAR","Tamil Nadu","India","626004","	   5-1042, SOUTH STREET, KULLURSANDAI","	   5-1042, SOUTH STREET, KULLURSANDAI","407536802571","ANTPL5501D","","O+","2015-08-10","ASSISTANT PROFESSOR","0","ENG","73240-copy-of-logu.jpg","2965-loganathan-aadhar.pdf","2571","","","","40568-appointment.pdf");
INSERT INTO eng_fac VALUES("S17ENG001","DR. N. UTTHAM KUMAR","1982-06-09","36","male","hod_english@adhiyamaan.ac.in","9994999293","S. NARAYANASAMY","N. INDIRANI","y","","HINDU","GAVARA","KAVERIPATTINAM","KRISHNAGIRI","KRISHNAGIRI","Tamil Nadu","India","635112","5/204-I, JANARDHANAN NAGAR, TNHB SOUTH, ERRAHALLI, POTHAPURAM (PO), KRISHNAGIRI (TK&DT), PIN:635112.","S/O. S. NARAYANASAMY, NAKKALPATTI (PO&VILL.), BARGUR (TK), KRISHNAGIRI (DT), PIN:635203.   ","912691402893","ABVPU8401B","","O+","2007-11-01","ASSISTANT PROFESSOR","0","ENG","52635-uttham.jpg","65164-aadhar-uk.pdf","2893","","","","");
INSERT INTO eng_fac VALUES("S70ENG004","ANBUMANI M","1989-02-07","30","male","anbumanimabed@gmail.com","9047929119","MARUTHU","AMUTHA","y","","HINDU","BC","SOKKAPADAPPU","SOKKAPADAPPU","SIVAGANGA","Tamil Nadu","India","630713","	S/O MARUTHU, 2/20, SOKKAPADAPPU,SURANAM (PO), SIVAGANGA(DT).   ","	S/O MARUTHU, 2/20, SOKKAPADAPPU,SURANAM (PO), SIVAGANGA(DT).   ","716821114826","BOEPA4774G","","O+","2013-09-16","ASSISTANT PROFESSOR","7811976462","ENG","16383-anbumani.jpg","81170-anbu-aadhaar.pdf","4826","","","","34680-ma-app.pdf");





CREATE TABLE `eng_fac_attorg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `eng_fac_bkjrn` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `glkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
  `ph2key` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO eng_fac_edu VALUES("S15ENG003","SVV HR SEC SCHOOL","state","2007","72","64083-sslc.pdf","1","SVV HR SEC SCHOOL","state","COMPUTER SCIENCE","2009","66","52762-hsc.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","DEVANGA ARTS AND SCIENCE COLLEGE","MADURAI KAMARAJ UNIVERSITY","BA","ENGLISH LITERATURE","regular","2012","55","36171-ba.pdf","1","","","","","","","","","","","","","","","","","","","VHNSN COLLEGE","MADURAI KAMARAJ UNIVERSITY","MA","ENGLISH LITERATURE","regular","2014","60","28105-ma.pdf","1","","","","","","","","","","","","","","","","","","","VHNSN COLLEGE","M","ENGLISH LITERATURE","M PHIL","regular","2015","70","CULTURAL CONFLICTS IN CHETAN BHAGATS 2 STATES AND ","DR M MEENADEVI","93170-m.phil.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO eng_fac_edu VALUES("S17ENG001","GOVT B HSS SCHOOL","state","1997","50","65628-x.pdf","1","GOVT (B) HSS KRISHNAGIRI","state","SCIENCE","1999","54","58772-xii.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","GOVT ARTS COLLEGE","PERIYAR UNIVERSITY","BA","ENGLISH LITERATURE","regular","2004","49","24643-uk-ug-d.pdf","1","","","","","","","","","","","","","","","","","","","JAMAL MOHAMED COLLEGE","BHARATHIDASAN UNIVERSITY","MA","ENGLISH LITERATURE","regular","2006","67","67221-uk-ma-d.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO eng_fac_edu VALUES("S70ENG004","ST JAMES HR SEC SCHOOL ","state","2004","79","9356-x.pdf","1","ST JAMES HR SEC SCHOOL","state","SCIENCE","2006","59","24189-xii.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","DR ZAKIR HUSSAIN COLLEGE","ALAGAPPA UNIVERSITY","BA","ENGLISH LITERATURE","regular","2009","45","53056-ba.pdf","1","","","","","","","","","","","","","","","","","","","KAMARAJ UNIVERSITY","KAMARAJ UNIVESITY","MA","ENGLISH LITERATURE","regular","2012","59","6592-ma.pdf","1","","","","","","","","","","","","","","","","","","","KAMARAJ UNIVESITY","KAMARAJ UNIVESITY","INDIAN LITERATURE","ENGLISH LITERATURE","regular","2013","62","TREATMENT OF VARIOUS THEMES IN SELECT NOVELS OF AM","  DR S CHELLIAH PROFESSOR AND ","3566-m.phil.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");





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
  `otkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `eng_fac_funpat` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `patkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `eng_fac_glc` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `conkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `eng_fac_member` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `awakey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `eng_fac_ot_qual` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `sid` varchar(10) NOT NULL,
  `name_qual` varchar(50) NOT NULL,
  `year_com` int(10) NOT NULL,
  `cer` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `eng_fac_resg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `j_sup` varchar(50) DEFAULT NULL,
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
  `app_order` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mat_fac_attorg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mat_fac_bkjrn` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `glkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
  `ph2key` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
  `otkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mat_fac_funpat` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `patkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mat_fac_glc` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `conkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mat_fac_member` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `awakey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mat_fac_ot_qual` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `sid` varchar(10) NOT NULL,
  `name_qual` varchar(50) NOT NULL,
  `year_com` int(10) NOT NULL,
  `cer` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mat_fac_resg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `j_sup` varchar(50) DEFAULT NULL,
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
  `app_order` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO mba_fac VALUES("S08MBA009","DR. DHANASEKARAN M","1983-04-10","36","male","evergreenwishes@gmail.com","9842634977","Mr.MARIMUTHU M","Mrs.RAJAMMAL.M","y","","Hindu","BC","Hosur","Krishnagiri","Krishnagiri","Tamil Nadu","India","635103","4/333, MADARAHALLI POST, MATHUR
VIA, Bargur TK, Krishnagiri District	   ","4/333, MADARAHALLI POST, MATHUR
VIA, Bargur TK, Krishnagiri District	   ","459122244162","AUBPM1141P","","A+ve","2008-07-02","Associate Professor","0","MBA","49669-dr_m_dhanasekharan.jpeg","92285-eaadhaar_459122244162_10042019091719_400643-unlocked.pdf","4162","","","","34487-new-doc-2019-04-12-13.35.10_1.pdf");
INSERT INTO mba_fac VALUES("S11MBA008","Mr.S.JAGADEESAN","1985-03-16","34","male","jagadeesan.subramani@yahoo.com","8940507276","B.C.SUBRAMANI ","S.SUGUNA","y","","Hindu","MBC","Bargur","Bargur","Krishnagiri","Tamil Nadu","India","635104","9, KS GOVINDHA CHETTY STREET  
Jagadevi Road
Bargur-635104 ","9, KS GOVINDHA CHETTY STREET  
Jagadevi Road
Bargur-635104 ","638640976307","AJGPJ2184D","","B+ve","2011-07-04","Assistant Professor","8072021091","MBA","47605-mr.jagadeesan.jpeg","33218-jagadeesan.pdf","6307","","","","55228-ace-appointment-order--jagadeesan.pdf");
INSERT INTO mba_fac VALUES("S16MBA003","R.NAVEEN PRAKASH","1988-07-25","31","male","naveenprakash.hr@gmail.com","8056865091","GURU RAVI A S","HEMALATHA R","y","","Hindu","BC","Krishnagiti","Krishnagiri","Krishnagiri","Tamil Nadu","India","635001","55/4 Dharmaraja Kovil Street
Krishnagiri-635001	   ","55/4 Dharmaraja Kovil Street
Krishnagiri-635001	   ","571684947673","ASQPN2465C","","O+ve","2016-11-08","ASSISTANT PROFESSOR","9566630754","MBA","88941-img063.jpeg","98001-naveen-aadhar.pdf","7673","","","","90533-adhiyamaan-oppointment-letter.pdf");
INSERT INTO mba_fac VALUES("S16MBA007","Dr.M.A.SURESH KUMAR","1981-04-04","38","male","sureshkumar4481@gmail.com","9444433779","Mr.S.ASAITHAMBI","Mrs.PACHIYAMMAL.A","y","","Hindu","BC","Thoppur","Ambur","Vellore","Tamil Nadu","India","635814","4/4651 THOPPUR VILLAGE, ALANKUPPAM PO,AMBUR TK-635814	   ","4/4651 THOPPUR VILLAGE, ALANKUPPAM PO,AMBUR TK-635814	   ","510491227580","DOPPS9073R","","B+ve","2016-08-17","Associate Professor","0","MBA","23501-suresh.jpeg","64906-eaadhaar_suresh.pdf","7580","","","","");
INSERT INTO mba_fac VALUES("S18MBA001","B.SANJAY","1994-08-05","25","male","sanjaysanjay935@gmail.com","9894185172","M.BOOPATHI","B.MALATHI","n","","Hindu","BC","Hosur","Hosur","Krishnagiri","Tamil Nadu","India","635109","No.6 Ganapathi Nagar
appavu nagar north,
Hosur	   ","No.6 Ganapathi Nagar
appavu nagar north,
Hosur	   ","491693090725","FWEPS4677A","","B+ve","2018-01-08","Assistant Professor","0","MBA","27631-sanjay.jpeg","83896-sanjay.pdf","0725","","","","");
INSERT INTO mba_fac VALUES("S18MBA004","SHABANA K M","1991-02-24","28","female","shabanamohamed91@gmail.com","9597753739","A K MOHAMMED IKBAL","M SULTHAN BEGAM","y","","Muslim","BCM","Coimbatore","Coimbatore","Coimbatore","Tamil Nadu","India","641025","2/1112B,5th Cross Rajaji Nagar
Mukandapalli Hosur 635126	   ","4, Shaj Gardens, TVS Nagar, THadagam Road Coimbatore 641025","887626907302","EDJPS0767Q","","o+ve","2018-08-01","Assitant Professor","9916113263","MBA","55715-shabana.jpeg","54283-attachment-1.pdf","7302","","","","32962-appointment-letter.pdf");
INSERT INTO mba_fac VALUES("S18MBA005","Dr.K.R.KUMAR","1975-06-15","44","male","krkquality@gmail.com","9894766236","Mr.RAJAMANI.K","Mrs.JAYALAKSMI.K","y","","Hindu","MBC","Vaniyambadi","Vaniyambadi","Vellore","Tamil Nadu","India","635752","2/17,Kothakottai Village and Post
Vaniyambadi TK
Vellore Dt	   ","2/17,Kothakottai Village and Post
Vaniyambadi TK
Vellore Dt	   ","696732139607","AQOPK7897F","","O+ve","2018-06-25","Associate Professor","0","MBA","26749-kumar.jpeg","38127-eaadhaar-kumar.pdf","Krk369@","","","","16852-appointment-order-ace.pdf");
INSERT INTO mba_fac VALUES("S18MBA006","Dr.B.ADHINARAYANAN","1976-05-25","43","male","adhinarayanan76@gmail.com","9486457822","Late A BALAKRISHNAN","Mrs.B.NAGAMANI","y","","Hindu","BC","Mathi Marathu Patti","Dharmapuri","Dharmapuri","Tamil Nadu","India","635205","2/128 Mathi Marathu Patti,
Maravadi Po
Dharmapuri Tk & DT	   ","2/128 Mathi Marathu Patti,
Maravadi Po
Dharmapuri Tk & DT	   ","436726457151","BAZPZ8786M","","B+ve","2018-06-25","Associate Professor","0","MBA","68851-adhinarayanan.jpeg","34401-img-20181217-wa0010.pdf","7151","","","","98815-offer.pdf");
INSERT INTO mba_fac VALUES("S95MBA010","Dr.B.N.SIVAKUMAR ","1967-06-05","52","male","jcbnsivakumar@yahoo.com","9486279360","Late.M.B.NANJUNDAN","Late.RUKMANI","y","","Hindu","BC","Hosur","OOTY","The NILGIRIS","Tamil Nadu","India","643001","NO.3, NILGIRI HOME, VAISHNAVI NAGAR 
HOSUR 635109  ","ADHIGARATTY Village and Post
The NILGIRIS-643001","795313172155","ANDPS1017K","K8288101","O+ve","1995-01-17","PROFESSOR & HEAD","0","MBA","90506-dr.b.n.sivakumar.jpeg","42905-new-doc-2019-04-10-12.08.46_1.pdf","2155","","","","25764-offer-letter.pdf");





CREATE TABLE `mba_fac_attorg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO mba_fac_attorg VALUES("1","S18MBA004","2018-2019","training","Introduction and Awareness on FIRO-B","1","0000-00-00","0000-00-00","2018-12-14","NHRD Hosur Chapter","Hotel ASR Park Lane, Hosur","district","29415-firo-b.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");





CREATE TABLE `mba_fac_bkjrn` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `glkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

INSERT INTO mba_fac_bkjrn VALUES("1","S08MBA009","2012-2013","","","","","","","","Flow Based Algorithm","American Journal of Applied Sciences","9 "," 2","1546-9239","scopus"," "," ","51056-flow-based-algorithm.pdf","0","1","","");
INSERT INTO mba_fac_bkjrn VALUES("2","S08MBA009","2012-2013","","","","","","","","Comparative Analysis of FDI in India and China","European Journal of Social Sciences","29","1","1450-2267","others"," "," ","35913-a-comparative-analysis-of-fdi-in-india-and-china.pdf","0","1","","");
INSERT INTO mba_fac_bkjrn VALUES("3","S08MBA009","2012-2013","","","","","","","","Determination of Financial Capital Structure on the Insurance Sector Firms in India","European Journal of Social Sciences","29","2","1450-2267","others"," "," ","82172-determination-of-financial-capital-structure-on-the.pdf","0","1","","");
INSERT INTO mba_fac_bkjrn VALUES("4","S08MBA009","2016-2017","","","","","","","","Individual Investors’ Behaviour towards Investment on Stocks","Asian Journal of Research in Social Sciences and H","6","6","2249-7315","others"," "," ","32219-individual-investors‟-behaviour-towards-investment-on.pdf","0","1","","");
INSERT INTO mba_fac_bkjrn VALUES("5","S08MBA009","2016-2017","","","","","","","","A Study on Performance Evaluation of Indian Stock Market with special reference to NSE and BSE","Asian Journal of Research in Social Sciences and H","6","5","2249-7315","others"," "," ","30420-a-study-on-performance-evaluation-of-indian-stock-market-with-special-reference-to-nse-and-bse","0","1","","");
INSERT INTO mba_fac_bkjrn VALUES("6","S08MBA009","2017-2018","","","","","","","","A Study on Stress related issues in mechanized industry with special reference to Krishnagiri Distri","International Journal of Mgmt. Research & Business","6","2","2319-345X","others","  ","  ","24218-a-study-on-stress-related-issues-in-mechanized-industry-with-special-reference-to-krishnagiri-","0","1","","");
INSERT INTO mba_fac_bkjrn VALUES("7","S18MBA006","1987-1988","Problems and prospec","Problems and prospects of  indian small scale Entr","978-3-659-74435-8","2015-11","LAMBERR ACADEMIC Publising","Entreperneurship","1","","","","","","","","","","","","","");
INSERT INTO mba_fac_bkjrn VALUES("8","S18MBA006","2011-2012","","","","","","","","A Study on Customer satisfaction Towards reliance telecom in tamil nadu with Special reference to Sa","International Journal of research in Commerce & Ma","2","4","0976-2183","others","www.ijrcm.org.in","2","36148-new-doc-2019-04-24-12.08.44_3.pdf","2","1","","");
INSERT INTO mba_fac_bkjrn VALUES("9","S18MBA006","2011-2012","","","","","","","","Causes of Attrition rate in Information Technology and ITs Enabled Service Sector","International Journal of strategic Organization an","1","1","0974-3464","others","www.brownwalker.com","2","18084-new-doc-2019-04-24-12.08.44_4.pdf","1","1","","");
INSERT INTO mba_fac_bkjrn VALUES("10","S18MBA006","2013-2014","","","","","","","","Challenges Faced by the Small Scale Industries in Tamil Nadu (India)","European Journal of Economics, Finances and Admini","1","59","1450-2275","others","www.europeanjournalofeconomicsfinancesandadministrativesciences.com","2","84756-new-doc-2019-04-24-12.08.44_5.pdf","3","1","","");
INSERT INTO mba_fac_bkjrn VALUES("11","S18MBA006","2015-2016","","","","","","","","Difficulties involved and support available to over come the difficulties faced by small scale indus","International Journal of Applied Engineering Resea","10","32","0973-4562","others","www.ripublication.com","3","43323-new-doc-2019-04-24-12.11.36_1.pdf","3","1","","");
INSERT INTO mba_fac_bkjrn VALUES("12","S18MBA006","2017-2018","","","","","","","","Labour Welfare Measure in Current Scenario: A Study with Reference to Textile Industry At Hosur ","International Research Journal of Business and Man","11","6","2322-083X","ugc","www.irjbn.org","4","30921-new-doc-2019-04-24-12.08.44_2.pdf","4","1","","");
INSERT INTO mba_fac_bkjrn VALUES("13","S18MBA005","2012-2013","","","","","","","","Appraisal Relationship between Service Quality and Customer Satisfaction in Organized Retailing at B","Industrial Engineering Letters","2","2","2225-0581","others","https://iiste.org/Journals/index.php/IEL/article/view/1443","5","42829-2012-a.pdf","0","1","","");
INSERT INTO mba_fac_bkjrn VALUES("14","S16MBA007","2017-2018","","","","","","","","Graphing Capital Structure Analysis of IT Sector With Special Reference to HCL","Asian Review of Social Sciences","7","2","2249-6319","ugc","www.trp.org.in","15","55290-arss-vol.7-no.2-july-september-2018,-pp.6-11.pdf","0","1","","");
INSERT INTO mba_fac_bkjrn VALUES("15","S16MBA007","2011-2012","","","","","","","","RURAL CUSTOMER PREFERENCES OF BANKING SERVICES IN INDIA- FACTOR ANALYSIS AND RELIABILITY TEST","European Journal of Scientific Research","74","1","1450-216X","scopus","http://www.europeanjournalofscientificresearch.com","155","38904-ejsr_march2012_rs.pdf","4","1","","");





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
  `ph2key` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO mba_fac_edu VALUES("S08MBA009","GOVERNMENT HIGHER SECONDARY SCHOOL ATHIGANUR","state","0","50","55341-sslc.pdf","1","RAMAKRISHNA HIGHER SECONDARY SCHOOL, TIRUPPATHUR","state","HISTORY, COMMERCE, ACCOUNTANCY, ECONOMICS","0","65","36830-hsc.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","M.G.R ARTS - SCIENCE COLLEGE, HOSUR","PERIYAR UNIVERSITY, SALEM","BBM","BACHELOR OF BANK MANAGEMENT","regular","0","61","82554-ug.pdf","1","","","","","","","","","","","","","","","","","","","N.M.S.S.V.N. COLLEGE, MADURAI","PERIYAR UNIVERSITY","MBA","MASTER OF BUSINESS ADMINISTRATION - FINANCE","regular","0","72","61973-pg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","DEPARTMENT OF MANAGEMENT STUDIES, ADHIYAMAAN COLLE","ANNA UNIVERSITY, CHENNAI","FINANCE","MANAGEMENT SCIENCES","parttime","2009-07","2014-04","A STUDY ON RISK AND RETURN MANAGEMENT OF THE INDIAN STOCK MARKET","DR. V. NAVANEETHAKUMAR","53908-ph.d.pdf","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mba_fac_edu VALUES("S11MBA008","CONCORDIA HIGHER SECONDARY SCHOOL","state","2000","81","92335-10.pdf","1","CONCORD MATRIC HIGHER SECONDARY SCHOOL","state","MATHS- BIOLOGY","2002","84","57777-12.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","SCHOOL OF ENGINEERING AND TECHNOLOGY","BHARATHIDASAN UNIVERSITY","B.TECH","BIOTECHNOLOGY","regular","2006","70","71755-ug-degree.pdf","1","","","","","","","","","","","","","","","","","","","KONGU ENGINEERING COLLEGE","ANNA UNIVERSITY COIMBATORE","MBA","FINANCE-MARKETING","regular","2009","8","81468-mba-degree.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mba_fac_edu VALUES("S16MBA003","Vailankanni Matric Higher Secondary School","state","2004","68","73619-10.pdf","1","Vailankanni Matric Higher Secondary School","state","Maths Biology","2006","70","47824-12.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Sengunthar Engineering College","Anna University","BE","ECE","regular","2010","72","52079-ug-degree.pdf","1","","","","","","","","","","","","","","","","","","","ADHIYAMAAN COLLEGE OF ENGINEERING","Anna University","MBA","HR","regular","2012","8","8661-pg-certificate.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","Adhiyamaan College of Engineering","Anna University","HR","HR","regular","2017-07","","The impact of TQM practice on employee empowerment in the automobile Industry in Krishnagiri Distric","Dr. M.DHANSEKARAN","","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mba_fac_edu VALUES("S16MBA007","Hindu Higher Secondary School","state","1999","43","91746-suresh-x-2.pdf","1","Hindu Higher Secondary School Ambur`","state","Vocational","2001","62","41452-suresh-xii.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Jothis Arts and Sciences College","Madras University","BBA","Management","regular","2004","54","13654-suresh-bba-convecation.pdf","1","","","","","","","","","","","","","","","","","","","N.M..S.S Vellaichamynadar College","Madurai Kamaraj University","MBA","Management Studies","regular","2006","65","10061-suresh-mba-convecation.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","Anna University","Anna University","Finance","Management science","regular","2009-04","","A Study on Capital Structure with Special Reference to select Pharmaceutical and IT Industries in In","Dr.R.SARAVANAN","","1","Anna University","Anna University","Finance","Management Science","regular","2009-04","2013-03","A Study on Capital Structure with Special Reference to select Pharmaceutical and IT Industries in In","Dr.R.Saravanan","63099-suresh-phd-convecation.pdf","1","","","","","","","","","","","");
INSERT INTO mba_fac_edu VALUES("S18MBA001","MAHARISHI VIDHYA MANDIR","cbse","2009","67","45652-10-marksheet.pdf","1","MAHARISHI VIDHYA MANDIR","state","COMPUTER SCIENCE","2011","82","24966-12-marksheet.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","ADHIYAMAAN COLLEGE OF ENGINEERING","ANNA UNIVERSITY","B.E","MECHANICAL ENGINEERING","regular","2015","9","69341-ug.pdf","1","","","","","","","","","","","","","","","","","","","ADHIYAMAAN COLLEGE OF ENGINEERING","ANNA UNIVERSITY","MBA","MBA","regular","2017","9","20862-pg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mba_fac_edu VALUES("S18MBA004","Avila Convent Matriculation Higher Secondary Schoo","state","2006","82","27041-10th-marksheet.pdf","1","Bharathi Matriculation Higher Secondary School","state","Computer Science","2008","85","11285-12th-marksheet.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","KGISL Institute of Technology","Anna University","B.E","ECE","regular","2012","8","89085-ug-degree.pdf","1","","","","","","","","","","","","","","","","","","","Bharathiar University","Bharathiar University","MBA","General","regular","2014","7","13185-mba-degree-certificate.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","1","Bharathiar University","Bharathiar University","Human Resource","Human Resource","parttime","2017-11","","Socio-Economic Impacts of Glass Ceiling Effect on Women Professionals in Educational Sector","Dr.G.Barani","","1","","","","","","","","","","","");
INSERT INTO mba_fac_edu VALUES("S18MBA005","Government High School  Vellakuttai Vellore Dist","state","1991","47","36595-sslc-krk.pdf","1","Concordia Higher Secondary School Vaniyambadi ","state","Science ","1993","64","29803-hsc-krk.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Annamalai University","Annamalai University","BA","Sociology","regular","1998","49","80925-ug-degree.pdf","1","","","","","","","","","","","","","","","","","","","Priyadarshini Engineering College Vaniyambadi","University of Madras","MBA","MBA","regular","2002","62","71277-pg-degree.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","Anna University Regional Centre Coimbatore","Anna University Chennai","Marketing","Management Studies","parttime","2010-07","","A study on Service Quality Evaluation of Science and Technology Higher Education (STHE) in Deemed Un","Dr G Barani Department of Mana","","1","Anna University Regional Centre Coimbatore","Anna University Chennai","Marketing","Management Studies","parttime","2010-07","2014-09","A study on Service Quality Evaluation of Science and Technology Higher Education (STHE) in Deemed Un","Dr G Barani Department of Mana","22599-phd.pdf","1","","","","","","","","","","","");
INSERT INTO mba_fac_edu VALUES("S18MBA006","Adhiyaman Boys Higher Secondary School","state","1991","78","3117-10.pdf","1","Govt Higher Secondary School, Lakkiampatti","state","Maths Boilogy","1993","67","10896-12.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","MGR College of arts and Sciences,Hosur.","Madras University","BBA","Business Adminstration","regular","1996","58","84650-ug.pdf","1","","","","","","","","","","","","","","","","","","","VGP School of Management Chennai`","Madras University","MBA","Marketing","regular","1998","62","92263-pg.pdf","1","","","","","","","","","","","","","","","","","","","Annamalai University","Annamalai University","HR","Management","parttime","2009","58","A STUDY ON JOB SATISFACTION  AMONG THE EMPLOYEES I","Mrs.Sudha","83271-m-phil.pdf","1","Anna University Chennai","Anna University","General Management","Management Studies","parttime","2009-01","","An Evaluation of the Problems and prospects of small scale entrepreneurship in an emerging economy A","Dr.K.Balanaga Gurunadhan","","1","KSR college of Technology","Anna University","General Management","Management Studies","parttime","2009-01","2014-11","An Evaluation of the Problems and prospects of small scale entrepreneurship in an emerging economy A","Dr.K.Balanaga Gurunathan","8969-phd.pdf","1","","","","","","","","","","","");
INSERT INTO mba_fac_edu VALUES("S95MBA010","Govt Higher Secondary School, Adhigaratty","state","1985","56","64749-10.pdf","1","St Xaviers HSS, Palayamkottai","state","Vocational","1987","67","8820-12.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","St Josephs College","Bharathidhasan University","BA","Economics","regular","1990","53","67045-ug.pdf","1","","","","","","","","","","","","","","","","","","","Adhiyamaan College of Engineering","University of Madras","MBA","HR","regular","1998","59","84720-mba.pdf","1","","","","","","","","","","","","","","","","","","","Alagappa University, Karikudi","Alagappa University","Management Studies","Management Studies","distance","2003","56","A Study on Export Procedure of Watch Products in T","Mr.R.N.Elangovan","20583-m.phil.pdf","1","Anna University","Anna University","HR","Management Science","parttime","2007-06","","Evaluating the Effectiveness of Manager level Training in Manufacturing Industry with Reference to K","Dr.V.Navaneethakumar","","1","Anna University","Anna University","HR","Management Science","parttime","2007-06","2012-06","Evaluating the Effectiveness of Manager level training in manufacturing Industry with reference to K","Dr.V.Navaneethakumar","97904-ph.d.pdf","1","","","","","","","","","","","");





CREATE TABLE `mba_fac_exp` (
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
  `otkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO mba_fac_exp VALUES("S08MBA009","ADVANCED MANAGEMENT COLLEGE, BANGALORE","LECTURER","2007-01-03","2008-07-01","PERSONAL","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","0000-00-00","0000-00-00","0000-00-00","76875-admc--experience.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mba_fac_exp VALUES("S16MBA003","Jayalakshmi Institute of Technology","Assistant Professor","2013-06-03","2016-07-30","Got Job in Adhiyamaan college","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","0000-00-00","0000-00-00","0000-00-00","60289-experiences-naveen.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mba_fac_exp VALUES("S16MBA007","Advanced Management College, Bangalore","Associate Professor ","2008-02-26","2013-04-01","Career Growth  ","SJES College Of Management Studies ","Principal","2013-04-03","2013-07-01","Career Growth  ","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","0000-00-00","0000-00-00","0000-00-00","25407-amc.pdf","2","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mba_fac_exp VALUES("S18MBA006","Jayalakshmi Institute of technology","Professor and Head","2017-07-03","2018-06-04","Career Growth","Paavai College of Engineering","Professor and Head","2015-01-19","2015-05-30","Career Growth","Kristu Jayanti College","Faculty","2014-02-17","2015-01-14","Career Growth","Jayam Engineering College","Professor and Head","2005-07-13","2013-06-29","To Complete PhD","0000-00-00","0000-00-00","0000-00-00","28082-jit.pdf","4","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");





CREATE TABLE `mba_fac_funpat` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `patkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO mba_fac_funpat VALUES("1","S95MBA010","2015-2016","Life Skills Development of Tribal Youth in Krishna","3","11,06000","DST","2016-12-01","Dr.K.R.Kumar","0","45440-new-doc-2019-04-11-12.22.02.pdf","0","1","","","","","");





CREATE TABLE `mba_fac_glc` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `conkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO mba_fac_glc VALUES("1","S18MBA004","2018-2019","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Role of Management Education i","Employability skills - An Empirical Study at TCS","Periyar University","2","2019-01-28","2019-01-29","0000-00-00","international","","71284-conference.pdf","1");





CREATE TABLE `mba_fac_member` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `awakey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

INSERT INTO mba_fac_member VALUES("1","S16MBA003","2016-2017","","","","","","Tutor","department","Placement Incharge","department","Lab Incharge","department","3","","","","","");
INSERT INTO mba_fac_member VALUES("2","S16MBA003","2017-2018","","","","","","Tutor","department","Placement Incharge","department","Lab Incharge","department","3","","","","","");
INSERT INTO mba_fac_member VALUES("3","S16MBA003","2018-2019","","","","","","Tutor","department","Placement Incharge","department","Lab Incharge","department","3","","","","","");
INSERT INTO mba_fac_member VALUES("4","S18MBA004","2017-2018","","","","","","Tutor","department","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("5","S18MBA004","2018-2019","","","","","","Tutor","department","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("6","S08MBA009","2014-2015","","","","","","DCOE","institute","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("7","S08MBA009","2015-2016","","","","","","DCOE","institute","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("8","S08MBA009","2016-2017","","","","","","DCOE","institute","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("9","S08MBA009","2017-2018","","","","","","DCOE","institute","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("10","S08MBA009","2018-2019","","","","","","DCOE","institute","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("11","S18MBA006","2018-2019","","","","","","Faculty Advisor","department","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("12","S16MBA007","2016-2017","","","","","","Tutor","department","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("13","S16MBA007","2017-2018","","","","","","Tutor","department","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("14","S16MBA007","2018-2019","","","","","","Tutor","department","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("15","S16MBA007","2017-2018","","","","","","Time table Incharge","department","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("16","S16MBA007","2018-2019","","","","","","Time table Incharge","department","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("17","S95MBA010","2016-2017","The Institution of Engineers (India)","163","Life Membership","80344-iee.pdf","1","","","","","","","","","","","","");
INSERT INTO mba_fac_member VALUES("18","S95MBA010","2018-2019","","","","","","Head of the Department","department","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("19","S95MBA010","2017-2018","","","","","","Alumni Association Incharge","department","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("20","S95MBA010","2016-2017","","","","","","Alumni Association Incharge","department","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("21","S95MBA010","2015-2016","","","","","","Alumni Association Incharge","department","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("22","S95MBA010","2017-2018","","","","","","Industry Institute Interaction Incharge","department","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("23","S95MBA010","2016-2017","","","","","","Industry Institute Interaction Incharge","department","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("24","S95MBA010","2016-2017","","","","","","Industry Institute Interaction Incharge","department","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("25","S95MBA010","2018-2019","","","","","","Chairman BoS","department","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("26","S11MBA008","2013-2014","","","","","","TUTOR","department","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("27","S11MBA008","2016-2017","","","","","","TUTOR","department","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("28","S11MBA008","2016-2017","","","","","","NSED FACULTY ADVISOR","institute","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("29","S11MBA008","2017-2018","","","","","","NSED FACULTY ADVISOR","institute","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("30","S11MBA008","2018-2019","","","","","","NSED FACULTY ADVISOR","institute","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("31","S11MBA008","2014-2015","","","","","","TUTOR","department","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("32","S11MBA008","2017-2018","","","","","","TUTOR","department","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("33","S11MBA008","2013-2014","","","","","","BOS INCHARGE","department","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("34","S11MBA008","2014-2015","","","","","","BOS INCHARGE","department","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("35","S11MBA008","2015-2016","","","","","","BOS INCHARGE","department","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("36","S11MBA008","2016-2017","","","","","","BOS INCHARGE","department","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("37","S11MBA008","2017-2018","","","","","","BOS INCHARGE","department","","","","","1","","","","","");
INSERT INTO mba_fac_member VALUES("38","S11MBA008","2018-2019","","","","","","BOS INCHARGE","department","","","","","1","","","","","");





CREATE TABLE `mba_fac_ot_qual` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `sid` varchar(10) DEFAULT NULL,
  `name_qual` varchar(100) DEFAULT NULL,
  `year_com` int(10) DEFAULT NULL,
  `cer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO mba_fac_ot_qual VALUES("1","S18MBA004","Tamil Nadu State Eligibility Test(TNSET)","2017","79187-set.pdf");
INSERT INTO mba_fac_ot_qual VALUES("2","S95MBA010","MBA","2016","32906-mba-provisional-periyar.pdf");
INSERT INTO mba_fac_ot_qual VALUES("3","S95MBA010","MA-Economics","1993","46589-m.a.pdf");





CREATE TABLE `mba_fac_resg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `j_sup` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO mba_fac_resg VALUES("1","S08MBA009","ANNA UNIVERSITY, CHENNAI","2880004","0","11201332017","Pillai Anita Radhakrishnan","2012","ongoing","Systems","Information And Communication Technology Integration In Indian Management Education ","  ");
INSERT INTO mba_fac_resg VALUES("2","S08MBA009","ANNA UNIVERSITY, CHENNAI","2880004","0","17148697101","R. Naveen Prakash","2017","ongoing","Human Resources","The Impact Of Tqm Practice On Employee Empowerment In The Automobile Industry In Krishnagiri Distric","Nil");
INSERT INTO mba_fac_resg VALUES("3","S18MBA005","ANNA UNIVERSITY","2880020","0","","","","ongoing","","","");
INSERT INTO mba_fac_resg VALUES("4","S18MBA005","ANNA UNIVERSITY","2880020","0","","","","ongoing","","","");





CREATE TABLE `mba_org` (
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
  `app_order` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO mca_fac VALUES("S07MCA003","K Raja","1982-04-09","37","male","raja.mca@adhiyamaan.in","9789132732","Kaliappan M","Vellathai K","y","","Hindu","SC","Hosur","Hosur","Krishnagiri","Tamil Nadu","India","635109","1/87, Venkateshwara Housing Colony, Kumudepalli Village,
Hosur - 635109","1/87, Venkateshwara Housing Colony, Kumudepalli Village,
Hosur - 635109","550591564861","ANBPR6499N","","O+ve","2007-06-25","Assistant Professor","0","MCA","68658-raja-kaliappan---photo.jpg","63170-aadharcard.pdf","4861","","","","2675-appointment--letter.pdf");
INSERT INTO mca_fac VALUES("S09MCA001","S Thirukumaran","1975-04-27","44","male","thirukumaran75@gmail.com","9443770805","Subramani","Rani","y","","Hindu","Hindu","Hosur","Hosur","Krishnagiri","Tamil Nadu","India","635109","79 K, 8th Cross,
Jakkappan Nagar,
Krishnagiri","79 K, 8th Cross,
Jakkappan Nagar,
Krishnagiri","412406963744","AKXPT7344R","","B+","2009-01-19","Associate Professor","0","MCA","47416-s.thirukumaran.jpg","10597-thirukumaran.pdf","3744","","","","38257-tirukumaran.pdf");
INSERT INTO mca_fac VALUES("S18MCA004","K Satheesh","1987-06-30","32","male","satheesh87mca@gmail.com","8973950602","Koothan M","Ranjitham K","y","","Hindu","MBC","Salem","Salem","Salem","Tamil Nadu","India","636104","5/98, Pallathathanoor,
Chandrapillaivalasu post,
Valappady Tk,
Salem Dt.   ","5/98, Pallathathanoor,
Chandrapillaivalasu post,
Valappady Tk,
Salem Dt.   ","666458489020","FYJPK4337L","","B+ve","2018-06-18","Assistant Professor","0","MCA","20298-satheeshphoto1.jpg","57209-satheeshaadharpdf.pdf","9020","","","","26289-new-doc-2019-02-26-07.33.02");
INSERT INTO mca_fac VALUES("S98MCA005","D Swamydoss","1972-07-21","47","male","swamy_asir@yahoo.co.in","9487819140","K Devasirvatham","D Thamayanthi","y","","Christian","BC","Hosur","Hosur","Krishnagiri","Tamil Nadu","India","635109","	M1 / 42, New ASTC Hudco,
Hosur - 635 109   ","	M1 / 42, New ASTC Hudco,
Hosur - 635 109   ","434065101372","ATOPS8257Q","","O+ve","1998-02-02","Professor","0","MCA","15205-swamydoss-1.jpg","74876-swamy-aadhaar.pdf","1372","","","","");





CREATE TABLE `mca_fac_attorg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO mca_fac_attorg VALUES("1","S18MCA004","2014-2015","fdp","PHP & MySql","33","2015-01-08","2015-01-09","0000-00-00","ICTACT","Excel Enginnering College","state","68737-ict-satheesh-001.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mca_fac_attorg VALUES("2","S18MCA004","2015-2016","fdp","Introduction to J2EE Programming","2","2015-07-23","2015-07-24","0000-00-00","ICTACT","Narasu\"s Sarathy Institute of Technology","state","40197-ictact-j2ee.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mca_fac_attorg VALUES("3","S18MCA004","2014-2015","fdp","Introduction to Design of Algorithms","6","2015-05-25","2015-05-30","0000-00-00","IIT, Kharagpur","Selvam College of Technology, Namakkal","national","13852-sct.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mca_fac_attorg VALUES("4","S18MCA004","2015-2016","workshop","Recent Computing Technologies","1","0000-00-00","0000-00-00","2016-03-03","Paavai College of Engineering","Paavai College of Engineering, Namakkal","state","61501-paavai.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mca_fac_attorg VALUES("5","S07MCA003","2009-2010","seminar","Impact of MATLAB Toolkit in Research work","1","0000-00-00","0000-00-00","2010-04-09","CSNET.COM Association, Dept. of Computer Science, ","MGR College Hosur","national","37872-mgr.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mca_fac_attorg VALUES("6","S07MCA003","2011-2012","seminar","Bio- Inspired Computing","2","2012-03-05","2012-03-06","0000-00-00","Er. Perumal Manimekalai College of Engineering ","Koneripalli","national","75590-pmc.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mca_fac_attorg VALUES("7","S07MCA003","2013-2014","workshop","Research Trends in Information Technology and Appl","2","2013-10-04","2013-10-05","0000-00-00","CSI Student Branch, Adhiyamaan College of Engineer","Hosur","national","37514-csi-2013-workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mca_fac_attorg VALUES("8","S07MCA003","2014-2015","workshop","Research Trends in Information Technology and Appl","2","2014-12-10","2014-12-11","0000-00-00","CSI Student Branch, Adhiyamaan College of Engineer","Hosur","national","82043-csi-2014-workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mca_fac_attorg VALUES("9","S07MCA003","2015-2016","workshop","Research Trends in Advanced Datamining Techniques","2","2015-11-06","2015-11-07","0000-00-00","CSI Student Branch, Adhiyamaan College of Engineer","Hosur","national","3848-csi-2015workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mca_fac_attorg VALUES("10","S07MCA003","2011-2012","workshop","High Impact Teaching Skills","2","2011-06-21","2011-06-22","0000-00-00","Mission 10x, Wipro ","Hosur","national","24794-mission10x.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mca_fac_attorg VALUES("11","S07MCA003","2014-2015","fdp","Decision Making Skills","2","2015-04-20","2015-04-21","0000-00-00","ICT Academic of Tamilnadu","Adhiyamaan College of Engineering, Hosur","national","75810-ict-decision.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mca_fac_attorg VALUES("12","S07MCA003","2015-2016","fdp","Entrepreneurship Development","14","2016-02-01","2016-02-13","0000-00-00","CSI Student Branch, Adhiyamaan College of Engineer","Adhiyamaan College of Engineering, Hosur","national","93041-edc-dst-workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mca_fac_attorg VALUES("13","S07MCA003","2008-2009","seminar","Intellectual Property Rights ","1","0000-00-00","0000-00-00","2009-03-31","Ministry of MSME, Govt. of India, New Delhi","Adhiyamaan College of Engineering, Hosur","national","14015-ipc.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");





CREATE TABLE `mca_fac_bkjrn` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `glkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO mca_fac_bkjrn VALUES("1","S18MCA004","2015-2016","","","","","","","","Analysis on Classification Techniques in Mammographic Mass Data Set","International Journal of Engineering Research and ","5","7","2248-9622","ugc","https://www.ijera.com/pages/v5no7(v3).html","1","39472-0accefaec6d74f5480fc99e38a273c6a4ae8.pdf","2","1","","");
INSERT INTO mca_fac_bkjrn VALUES("2","S18MCA004","2015-2016","","","","","","","","Comparative Analysis of Image Enhancement Algorithms in Mammogram Images","International Journal of Innovative Research and C","1","1","2454-5988","others","http://www.ijirct.org/archive.php?vol=1","0","96021-ijirct1201018.pdf","3","1","","");
INSERT INTO mca_fac_bkjrn VALUES("3","S09MCA001","2015-2016","","","","","","","","An Alternate Imputation Technique of A Mean Method For Missing Values and Comparative Study With Nei","International Journal of Applied Engineering Resea","10","4","0973-4562 ","scopus","http://www.ripublication.com","12","30640-31791---ijaer-ok-9969-9982.pdf","0","1","","");
INSERT INTO mca_fac_bkjrn VALUES("4","S09MCA001","2012-2013","","","","","","","","Comparative Study of Two Techniques of Missing value Imputation in Medical Database with Accuracy Es","European Journal of Scientific research","97","3","1450-202x","scopus","www.europeanjournalofscientificresearch.com","5","81619-ejsr_vol_97_issue_3new.pdf","0","1","","");
INSERT INTO mca_fac_bkjrn VALUES("5","S09MCA001","2016-2017","","","","","","","","Enhanced Fuzzy C-Means Clustering with Optimization of Support Vector Regression for Imputation of M","Journal of Medical Imaging and Health Informatics","6","5","1612–1616","sci","doi:10.1166/jmihi.2016.1859","10","74773-0013_06jmihi07-1859.pdf","2","1","","");





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
  `ph2key` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO mca_fac_edu VALUES("S07MCA003","VNUPK Higher Scondary School, Vanniampatty","state","1997","59","47547-10th-marksheet.pdf","1","S S Govt HSS School, Rajapalayam","state","Mathematics","1999","52","33857-12th-marks.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Rajapalayam Rajus College","Madurai Kamaraj University","B.Sc","Physics","regular","2003","60","38778-ug-certificate.pdf","1","","","","","","","","","","","","","","","","","","","Institute of Environment and Management","U.P Technical University, Lucknow","Master of Computer Applications","Master of Computer Applications","regular","2006","69","35932-pg-certificate.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mca_fac_edu VALUES("S18MCA004","Sri Thiagarajar Memorial Matriculation School, Bel","state","2002","77","46030-matriculation_satheesh.pdf","1","Saraswathi Matric Higher Secondary School, Attur","state","Maths-Biology","2004","82","81242-hsc_satheesh.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Government Arts College, Salem -7","Periyar University","B.Sc.,","Mathematics","regular","2007","56","20608-ug_satheesh.pdf","1","","","","","","","","","","","","","","","","","","","Institute of Road and Transport Technology, Erode","Anna University","MCA","Computer Applications","regular","2010","7","27195-mca_satheesh.pdf","1","","","","","","","","","","","","","","","","","","","Periyar University","Periyar University","Digital Image Processing","Computer Science","regular","2012","8","An Evaluation of Face Segmentation Algorithms","Dr. I. Laurence Aroquiaraj, M.","17637-mphil_satheesh.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");





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
  `otkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO mca_fac_exp VALUES("S18MCA004","Selvamm Arts and Science College, Namakkal","Assistant Professor","2013-07-24","2017-04-18","New Job","71852-new-doc.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");





CREATE TABLE `mca_fac_funpat` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `patkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mca_fac_glc` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `conkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO mca_fac_glc VALUES("1","S18MCA004","2012-2013","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Envisiioning Innovation in Tec","An Evaluation of Face Segmentation Algorithms","Sona College of Technology(Autonomous), Salem","1","0000-00-00","0000-00-00","2012-08-11","national","","65830-sona-eitech.pdf","1");
INSERT INTO mca_fac_glc VALUES("2","S07MCA003","2007-2008","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Cyber Crime & Security Managem","Network Security - An Overview","Kongu Engineering College, Perundurai, Erode","3","2007-11-02","2007-11-04","0000-00-00","national","","55042-kongu.pdf","1");
INSERT INTO mca_fac_glc VALUES("3","S07MCA003","2007-2008","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Current Trends in Computer App","Portfolio Management","Department of Computer Applications, Muthayammal E","1","0000-00-00","0000-00-00","2008-02-27","national","","66470-muthayamal.pdf","1");
INSERT INTO mca_fac_glc VALUES("4","S07MCA003","2008-2009","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Information and Computer Appli","DNA Cryptography","Department of Computer Applications, Sengunthar En","1","0000-00-00","0000-00-00","2008-08-14","national","","12870-sengunthar.pdf","1");
INSERT INTO mca_fac_glc VALUES("5","S07MCA003","2009-2010","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Recent Trends in Industrial Au","Storage & Retrieval Technologies Using Mobile Care","Dept. of EIE & EEE, Maharaja Engineering College ","1","0000-00-00","0000-00-00","2010-04-10","national","","9749-maharaja.pdf","1");
INSERT INTO mca_fac_glc VALUES("6","S07MCA003","2010-2011","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Science and Technology ","Protection against Hardware Keyboard Hacking Devic","Depaertment of CSE, IT & MCA, Dhanalakshmi Sriniva","1","0000-00-00","0000-00-00","2011-02-26","national","","23548-dhanalakshmi.pdf","1");
INSERT INTO mca_fac_glc VALUES("7","S07MCA003","2012-2013","","","0000-00-00","0000-00-00","0000-00-00","","","","","","New Advances in Computer and C","Optimal Performance for intrusion detection using ","Dept. of MCA, MVJ College of Engineering, Bangalor","1","0000-00-00","0000-00-00","2013-04-19","national","","4771-mvj-college.pdf","1");





CREATE TABLE `mca_fac_member` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `awakey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO mca_fac_member VALUES("1","S09MCA001","2009-2010","","","","","","Department Alumni Incharge, Staff Profile updation","department","1","","","","","");





CREATE TABLE `mca_fac_ot_qual` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `sid` varchar(10) NOT NULL,
  `name_qual` varchar(50) NOT NULL,
  `year_com` int(10) NOT NULL,
  `cer` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mca_fac_resg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `j_sup` varchar(50) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
  `app_order` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO mec_fac VALUES("S04MEC035","M JAMES SELVAKUMAR","1971-01-03","48","male","vmanas2004@yahoo.co.in","9443053120","MANAS","KANAGAMMAL","y","","CHRISTIAN","BC","HOSUR","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635109","Plot No 393 Meenakshi Nagar
Hosur 635109
Krishnagiri 
Tamil Nadu","53 KANAGA VILLA
ELAVADI VILLAGE
MULUVI POST
YERCAUD 636602
SALEM DT","779236498598","ALMPM1812D","-","B- ve","2004-09-18","ASSOCIATE PROFESSOR","0","MEC","67118-james.jpg","45026-jameaadhar.pdf","8598","","","","38156-iste.pdf");
INSERT INTO mec_fac VALUES("S06MEC037","K SENTHIL KUMAR","1978-06-01","41","male","senthilace@gmail.com","9894333716","KANDASAMY V","SAMYNAYAKI","y","","HINDU","MBC","HOSUR","SALEM","SALEM","Tamil Nadu","India","635109","PLOT NO. 55, VISHNU ANANDHAM GALAXY
CHITHANAPALLI
NALLUR
HOSUR-635109	   ","PLOT NO. 55, VISHNU ANANDHAM GALAXY
CHITHANAPALLI
NALLUR
HOSUR-635109	   ","716414498919","BTAPS5170B","","A1B+v","2006-08-16","ASSOCIATE PROFESSOR","0","MEC","84908-k-senthil-kumar-jpeg-(1).jpeg","22670-senthil-addhaar.pdf","8919","","","","");
INSERT INTO mec_fac VALUES("S07MEC007","SENTHIL KUMAR P","1983-09-01","36","male","sonasen@gmail.com","9942922235","PANNEER SELVAM K","NIRMALA P","","","HINDU","BC","HOSUR","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635 109","9/3, 11TH CROSS, BHARATHIDASAN NAGAR, HOSUR - 635 109.
	   ","27/1, CHINNERY VAYAL KADU, CINEMA NAGAR, SALEM - 636 009.	   ","343006738598","CBNPS4821D","","AB+iv","2007-08-06","ASSISTANT PROFESSOR","0","MEC","76577-my-photo.jpg","16355-eaadhaar_senthil.pdf","8598","","","","");
INSERT INTO mec_fac VALUES("S07MEC027","SHYAAM SUNDHAR. N","1977-10-20","42","male","shyaamsundhar77@gmail.com","9655635541","NATARAJAN. R","INBARASI. N","y","","HINDU","BC","HOSUR","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635126","Plot. No. 29, Venkateswara Nagar, Titan Watches Back side, Hosur - 635 126","Plot. No. 29, Venkateswara Nagar, Titan Watches Back side, Hosur - 635 126","697487461839","BJDPS2662D","","A1B+v","2007-06-14","ASSISTANT PROFESSOR","9751447794","MEC","2877-shiyam.jpg","94763-shyaam-aadhar-pdf.pdf","1839","","","","");
INSERT INTO mec_fac VALUES("S07MEC034","D.MOHANRAJ","1976-07-20","43","male","raj76mohan@gmail.com","9791237837","DURAISAMY","JOTHI","y","","HINDU","OC","HOSUR","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635109","3/6, 10TH CROSS, BARATHIDASAN NAGAR, HOSUR-635109	   ","3/6, 10TH CROSS, BARATHIDASAN NAGAR, HOSUR-635109	   ","685485280349","ASVPM6697G","","O+ve","2007-07-16","ASSISTANT PROFESSOR","0","MEC","31355-mohanraj-photo.jpeg","26709-mohanraj-aadhar.pdf","0349","","","","2749-appointment-order.pdf");
INSERT INTO mec_fac VALUES("S08MEC018","S.SHYLIN H JOSE","1978-03-19","41","male","shylinhjose.mech@adhiyamaan.in","9994576500","H SELVA JOSE","C. ANIBAI","y","","CHRISTIAN","BC","ATTOOR","MARTHANDAM","KANYAKUMARI","Tamil Nadu","India","629177","	8/46 CHECKITTA VILAI,
ATTOOR, THIRUVATTAR PO.   ","	8/46 CHECKITTA VILAI,
ATTOOR, THIRUVATTAR PO.   ","940524034900","AKUPJ7063Q","","A+ve","2008-07-07","ASSISTANT PROFESSOR","0","MEC","24726-shylin-jose.jpg","8763-aadhar.pdf","4900","","","","15166-appoinment-order.pdf");
INSERT INTO mec_fac VALUES("S08MEC031","M.SURESH","1979-06-07","40","male","pmssuresh79@gmail.com","9486465380","P MUNUSAMI","SINGARAMMAL.M","y","","HINDU","sc","BOMMIDI","DHARAMAPURI","DHARMAPURI","Tamil Nadu","India","635301","	   BANDARACHETTIPATTI, THIPPIREDIHALLI(PO), BOMMIDI(SO), DHARAMAOURI(DT),PIN 635301","	 BANDARACHETTIPATTI, THIPPIREDIHALLI(PO), BOMMIDI(SO), DHARAMAOURI(DT),PIN 635301   ","618926732457","BDGPM3768M","","A -iv","2008-06-13","ASSISTANT PROFESSOR","0","MEC","24310-suresh.jpg","6871-adhar-suresh-1.pdf","2457","","","","");
INSERT INTO mec_fac VALUES("S10MEC036","RAJA P ","1979-11-21","40","male","leeraja@rediffmail.com","9585714050","PONNURANGAM","VIJAYA KUMARI","y","","HINDU","sc","DR MGR NAGAR","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635109","144/4/8, NGGOS COLONY HOSUR- 635109","144/4/8, NGGOS COLONY HOSUR- 635109","995062952224","AMYPR9787K","","o+","2010-06-11","ASSISTANT PROFESSOR","0","MEC","2369-picture1.jpeg","89241-addhar-card-raja.pdf","2224","","","","");
INSERT INTO mec_fac VALUES("S11MEC010","A.K.SARAVANAN","1986-03-10","33","male","saravanan.mech@adhiyamaan.in","9944566182","A.B.KUMAR","A.K.LALITHA","y","","HINDU","BC","HOSUR","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635109","8/4, 11th CROSS,
BHARATHIDASAN NAGAR,
HOSUR-635109	   ","8/4, 11th CROSS,
BHARATHIDASAN NAGAR,
HOSUR-635109	   ","852918961543","DCYPS4136N","","A1 +v","2011-06-08","ASSISTANT PROFESSOR","0","MEC","53808-saravanan-a-k.jpg","13259-saravanan-aadhaar-card.pdf","1543","","","","26705-appointment-ace-converted.pdf");
INSERT INTO mec_fac VALUES("S11MEC017","Dr.M.SAKTHIVEL","1978-06-18","41","male","metalsakthi@gmail.com","9488007445","S MUNISAMY ","C ANANDTHI","y","","HINDU","MBC","KELAMANGALAM","KRISHNAGIRI","KRISHNAGIRI","Tamil Nadu","India","635113","	 33, PATTALAMMAN KOVIL STREET
KELAMNAGALAM-POST  ","	 33, PATTALAMMAN KOVIL STREET
KELAMNAGALAM-POST  ","238279523415","BUOPS8650R","","A+","2011-06-08","ASSOCIATE PROFESSOR","0","MEC","68006-sakthivel1.jpg","36233-1_aadhar-card.pdf","3415","","","","");
INSERT INTO mec_fac VALUES("S12MEC006","M.PARTHIBAN","1985-06-16","34","male","parthi85.auto@gmail.com","9597627206","R MURUGAN","K PALANIAMMAL","n","","HINDU","MBC","HARUR","HARUR","DHARMAPURI","Tamil Nadu","India","636903","7/205-17,GOVINDHASAMI NAGAR,HARUR	   ","7/205-17,GOVINDHASAMI NAGAR,HARUR	   ","6655","CEWPP1385M","","A1 -i","2012-07-13","ASSISTANT PROFESSOR","0","MEC","58529-partha_1.jpg","3462-eaadhar-parthiban.pdf","6 1353","","","","4562-appointment-order.pdf");
INSERT INTO mec_fac VALUES("S12MEC023","K SATEESH KUMAR REDDY","1987-10-12","32","male","mr.ksk.reddy@gmail.com","9585794662","K SAMI REDDY","K JAMUNA","y","","HINDU","OC","CHITTOOR","CHITTOOR","CHITTOOR","Andhra Pradesh","India","517422","1-74, NADIMPALLI VILLAGE, VEPANAPALLI ROAD,YADAMARI MANDAL,CHITTOOR D.T,PIN 517422	   ","1-74, NADIMPALLI VILLAGE, VEPANAPALLI ROAD,YADAMARI MANDAL,CHITTOOR D.T,PIN 517422	   ","420623735791","EKGPS6022A","","O+ve","2012-08-02","ASSISTANT PROFESSOR","9751718892","MEC","2901-photo1.jpg","49071-adhaar-final.pdf","5791","","","","31617-appointment-pdf.pdf");
INSERT INTO mec_fac VALUES("S13MEC005","HARIPRASAD","1989-04-13","30","male","hari13prasad@gmail.com","9994106619","THIRUVENGADAM R","SELVI T","y","","HINDU","BC","HOSUR","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635109","TNHB, MIG-235, PHASE NO-VI, AVALAPALLI HUDCO, HOSUR","TNHB, MIG-235, PHASE NO-VI, AVALAPALLI HUDCO, HOSUR","680180420973","ALYPT2434N","","O+VE","2013-06-07","ASST.PROFESSOR","0","MEC","82474-hariprasad-t.jpg","7342-aadhar.pdf","0973","","","","67202-appointment-order.pdf");
INSERT INTO mec_fac VALUES("S13MEC035","madhu.b","1989-12-23","30","male","madhu.bjg@gmail.com","8105226606","basana goudar jadiyappa goudar","devamma","y","","HINDU","oc","attibele ","bangalore ","bangalore ","Karnataka","India","562107","	+45,sadashivanagar,opp Rss BAnk, anekal road, Attibele ,Anekal TQ, bangalore   ","	+45,sadashivanagar,opp Rss BAnk, anekal road, Attibele ,Anekal TQ, bangalore   ","382566393270","CEGPM4294A","","o+","2013-06-06","ASSISTANT PROFESSOR","0","MEC","44952-untitled.pdf","39567-adhar.pdf","3270","","","","");
INSERT INTO mec_fac VALUES("S14MEC011","POUNRAJ ","1990-05-05","29","male","pounbala@gmail.com","9655188839","BALAKRISHNAN L","MALLIGA B","y","","HINDU","MBC","KRISHNAGIRI","KRISHNAGIRI","KRISHNAGIRI","Tamil Nadu","India","635001","3/344, THURINJIPATTI (VILL), PEDHATHALAPALLI(PO), KRISHNAGIRI(DT)","3/344, THURINJIPATTI (VILL), PEDHATHALAPALLI(PO), KRISHNAGIRI(DT)","371222365128","CODPP3417D","","B+VE","2014-06-06","ASST.PROFESSOR","0","MEC","96823-pounraj.jpeg","5572-aadhar1.pdf","5128","","","","64498-appointment.pdf");
INSERT INTO mec_fac VALUES("S14MEC013","RICHARD WILSON MARTIN ","1991-04-17","28","male","jrabrothers@gmail.com","9786950777","MARTIN C","LEEMA MARY A","y","","CHRISTIAN","BC","KRISHNAGIRI","KRISHNAGIRI","KRISHNAGIRI","Tamil Nadu","India","635001","1/36-8, WAHAB NAGAR, KATTIKANAPALLI, KRISHNAGIRI","1/36-8, WAHAB NAGAR, KATTIKANAPALLI, KRISHNAGIRI   ","367121443368","BVKPR3049C","","A1B N","2014-06-06","ASST.PROFESSOR","0","MEC","73866-richi.jpeg.jpg","1926-richard.pdf","3368","","","","69464-appointment-letter.pdf");
INSERT INTO mec_fac VALUES("S14MEC024","VINAYAK MUDHOL","1986-09-07","32","male","vinayakmudhol33@gmail.com","8123606858","RAMACHANDRA MUDHOL","LAXMIDEVI MUDHOL","y","","HINDU","OBC","HUBLI","HUBLI","DHARWAD","Karnataka","India","580023","B1 KRISHNA APPARTMENTS DESAI PARK KUSUGAL ROAD KESHWAPUR HUBLI	   ","B1 KRISHNA APPARTMENTS DESAI PARK KUSUGAL ROAD KESHWAPUR HUBLI	   ","620527868237","BLGPM3777A","","A POS","2014-06-07","ASSISTANT PROFESSOR","7010022698","MEC","7036-953.jpg","3272-vinayak-pdf.pdf","8237","","","","64492-appointment-order-new-doc-2019-04-08-10.18.45_1.pdf");
INSERT INTO mec_fac VALUES("S15MEC003","SHANTHANIKETHAN","1991-08-28","28","male","cpshanthanikethan@gmail.com","8056991592","PEDDAPPA NAIDU","RAJAMMA M","n","","HINDU","BC","HOSUR","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635109","112-B NANJUNDESWAR NAGAR, RAYAKOTTAI ROAD	   ","112-B NANJUNDESWAR NAGAR, RAYAKOTTAI ROAD	   ","591291216994","FRVPS4080K","","B+ve","2015-06-15","ASSISTANT PROFESSOR","0","MEC","42592-pho3jpeg.jpg","57933-my-aadhar.pdf","6994","","","","");
INSERT INTO mec_fac VALUES("S15MEC014","M.N.NAVEEN","1991-08-18","28","male","naveenacemech@gmail.com","9578185881","M.S.NALLASAMY","N.RENUGA DEVI","n","","HINDU","BC","KAVINDAPADI","ERODE","ERODE","Tamil Nadu","India","638455","D 208 CAUVERY HOSTEL
ACE. HOSUR	   ","14 A MANIYAN KATTUR
SINGANAALUR POST 
KAVINDAPADI- 638455
ERODE - (DT)	   ","789954311140","AYPPN0849M","","B+ve","2015-06-08","ASSISTANT PROFESSOR","9489392777","MEC","30979-naveen.jpeg.jpg","8347-naveen.pdf.pdf","1140","","","","74515-appoint.pdf");
INSERT INTO mec_fac VALUES("S15MEC021","R.MANIKANDAN ","1991-04-22","28","male","mani.irur@gmail.com","9159846670","N.RAJENDRAN ","R.SENTHAMILSELVI","n","","HINDU","BC","IRUR","PERAMBALUR","PERAMBALUR","Tamil Nadu","India","621109","122 EAST STREET,ALATHUR(TK)
PERAMBALUR (DT)	 
PIN 621109  ","122 EAST STREET,ALATHUR(TK)
PERAMBALUR (DT)	 
PIN 621109  ","984261889179","BIRPM1494E","","O+","2015-06-08","ASSISTANT PROFESSOR","8056619619","MEC","52918-manikandan.r.jpg","43236-mani-aadhar.pdf","9179","","","","6771-appoiment-order.pdf");
INSERT INTO mec_fac VALUES("S16MEC012","KALEESWARAN ","1993-05-20","26","male","mpkalliz@gmail.com","8344782289","PERUMALSAMY M","PANDIYAMMAL P","n","","HINDU","MBC","SALVARPATTI","SIVAKASI","VIRUDHUNAGAR","Tamil Nadu","India","626128","2/27 B NORTH STREET,
SALVARPATTI (VILL & PO),
SIVAKASI (TK),
VIRUDHUNAGAR","2/27 B NORTH STREET,
SALVARPATTI (VILL & PO),
SIVAKASI (TK),
VIRUDHUNAGAR","375601666235","DLNPK4730E","","A1+","2016-06-15","ASST.PROFESSOR","0","MEC","5297-kali0608.jpeg.jpg","34044-kaleeswaran-aadhar.pdf","6235","","","","");
INSERT INTO mec_fac VALUES("S17MEC001","Dr. L. SHAKEEL AHMED","1989-01-16","30","male","shakeelmech@gmail.com","9976070647","LIYAKATH ALI KHAN","SHAKIRA BEGUM","y","","MUSLIM","DEKKANI","KAVERIPATTINAM","KRISHNAGIRI","KRISHNAGIRI","Tamil Nadu","India","635112","HIG 26 TNHB
KAVERIPATTINAM   ","HIG 26 TNHB	   ","740771039312","AJBPL4472H","","A Pos","2017-06-19","ASSOCIATE PROFESSOR","0","MEC","91839-shakeel-ahmed-l.jpg","27474-shakeel-aadhaar.pdf","9312","","","","66507-appointment-letter.pdf");
INSERT INTO mec_fac VALUES("S17MEC004","SARATH KUMAR","1992-12-17","27","male","sarathmech123@gmail.com","9843885785","RAJASEKARAN","RANI","y","","HINDU","BC","HOSUR","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635109","	185-A, street 39, KCC NAGAR, HOSUR   ","1/216, VENUGOPAL KOVIL STREET, KALLAVI-635304  ","207020108942","ETYPS1581M","","B+ve","2017-07-31","ASSISTANT PROFESSOR","0","MEC","36126-ab3311-min.jpg","15726-aadhar.pdf","8942","","","","69045-ace-appointment-order_2.pdf");
INSERT INTO mec_fac VALUES("S17MEC015","MANU S","1992-09-28","26","male","dearmanu92@gmail.com","9591653210","SOMASHEKAR V","PARANJYOTHI S","n","","HINDU","MBC","CHALLAKERE","CHALLAKERE","CHITRADURGA","Karnataka","India","577522","MANU S, S/O SOMASHEKAR V	#174/2, 7TH CROSS , GANDHINAGARA, CHALLAKERE(T), CHITRADURGA (D)
577522   ","	#403, C.V.R RESIDENCY, 1ST MAIN , 3RD CROSS , R.K.TOWNSHIP, YARANDHALLI, BOMMASANDRA, BANGALORE   ","476166638517","BWXPM3121J","","A1 +v","2017-08-16","ASSISTANT PROFESSOR","9110843092","MEC","97067-20160523_213716-(2).jpeg","15688-aadhar-card_1.pdf","8517","","","","91630-order-copy_1.pdf");
INSERT INTO mec_fac VALUES("S17MEC022","KRISHNAKANTH K","1992-01-01","27","male","krishnkanth77@gmail.com","9715121531","KARUPPUSAMY N S","MALARVIZHI K","n","","HINDU","BC","KUNNATHUR","TIRUPUR","TIRUPUR","Tamil Nadu","India","638110","40 NALLIGOUNDENPALAYAM
KURUCHI POST
GETTICHEVYUR VIA","40 NALLIGOUNDENPALAYAM
KURUCHI POST
GETTICHEVYUR VIA","572840805096","BXYPK3635H","","B- ve","2017-07-12","ASSISTANT PROFESSOR","0","MEC","47753-krishnakanth.jpg","93586-krishnakanth.pdf","5096","","","","88505-adhiyamaan-college-appoint.-order.pdf");
INSERT INTO mec_fac VALUES("S17MEC025","RADHA.T","1994-03-18","25","female","radhakumaravel326@gmail.com","8870132520","A. THIRUMAL","T. VANI","y","","HINDU","BC","Dr.M.G.R.Nagar","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635109","Dr.M.G.R.Nagar","Dr.M.G.R.Nagar","268883599727","DCFPR3974E","","B Pos","2017-08-21","ASSISTANT PROFESSOR","0","MEC","5201-photo-(rad).jpeg","94194-adhar-radha.pdf","9727","","","","96978-img_20171215_121200-(1).jpg");
INSERT INTO mec_fac VALUES("S17MEC029","M.YOGESH","1989-09-19","30","male","aadhitya63963@gmail.com","9786565113","K.R.MANI","V.JAYALAKSHMI","n","","HINDU","balajiga","chowdadhenahalli","malur","kolar","Karnataka","India","563060","chowdadhenahalli,jayamangala post,malur taluk,kolar district	   ","chowdadhenahalli,jayamangala post,malur taluk,kolar district	   ","622673357791","CCBPM1652B","","o+","2017-08-16","ASSISTANT PROFESSOR","9620535495","MEC","88925-dsc_5706.jpg","41874-pjimage-converted.pdf","7791","","","","62000-convert-jpg-to-pdf.net_2019-04-23_10-26-08.pdf");
INSERT INTO mec_fac VALUES("S18MEC016","D.VASIGA","1992-03-25","27","female","vasigadurai@gmail.com","7449154413","D.DURAI ARUMUGAM","D.AMIRTHAM","y","","HINDU","BC","ANAND NAGAR","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635126","785/1 ANAND NAGAR 2ND PHASE, BEHIND TITAN WATCHES LTD, HOSUR","785/1 ANAND NAGAR 2ND PHASE, BEHIND TITAN WATCHES LTD, HOSUR	   ","814557903006","CGZPD3149J","","O Pos","2018-06-18","ASSISTANT PROFESSOR","0","MEC","95494-vasiga.jpg","83689-vasiga-ahar.pdf","3006","","","","");
INSERT INTO mec_fac VALUES("S18MEC026","P.MOHANASELVASURJITH","1992-04-25","27","male","mohanaselvasurjith@gmail.com","7708455066","A.PERUMAL","N.AMUTHA","n","","HINDU","BC","VANDAVASI","VANDAVASI","THIRUVANNAMALAI","Tamil Nadu","India","604403","1126/2 MGRNAGAR,KILKODUNGALORE PO,VANDAVASI TK,THIRUVANNAMALAI DT.PIN-604403","1126/2 MGRNAGAR,KILKODUNGALORE PO,VANDAVASI TK,THIRUVANNAMALAI DT.PIN-604403","231470385074","BKLPM7521E","","O-VE","2018-06-18","ASSISTANT PROFESSOR","0","MEC","82783-surjith.jpg","43673-aadhar-surjith.pdf","5074","","","","66298-new-doc-2019-04-25-08.00.34_2.pdf");
INSERT INTO mec_fac VALUES("S18MEC028","D.THAMODHARAN","1986-06-08","33","male","dharmaraj.thamodharan@gmail.com","8825956983","DHARUMARAJ","POONGAVANAM","y","","HINDU","BC","PANAMALAI","VILLUPURAM","VILLUPURAM","Tamil Nadu","India","605201","2/110, METTU STREET,
PANAMALAI & (P.O),
VILLUPURAM (DISTRICT)
605201 ","2/110, METTU STREET,
PANAMALAI & (P.O),
VILLUPURAM (DISTRICT)
605201 ","269755290167","BTHPD1157J","","B+ve","2018-06-18","ASSISTANT PROFESSOR","0","MEC","85509-photo.jpg","86516-pdf-aadhar.pdf","0167","","","","48116-appoinment-order.pdf");
INSERT INTO mec_fac VALUES("S18MEC032","ANIN VINCELY D","1979-06-15","39","male","vincely_zeal@yahoo.com","9445115278","DHASAIAN D","EPSI BAI M","y","","CHRISTIAN","BC","PORUR","CHENNAI","THIRUVALLUR","Tamil Nadu","India","600 116","NO 6/4 B VASAVI NILIYAM, LAKSHMI NARAYANA NAGAR, HOSUR, KRISHNAGIRI DIST- 635 109	   ","NO 5/4 THIRUVANGADEM 2 ST, KARAMBAKKAM, PORUR, CHENNAI 600 116	   ","237412947021","ANDPA6817F","P 3362213","A1 +v","2018-06-04","ASSOCIATE PROFESSOR","0","MEC","56318-anin-degree-photo-compressed.jpg","19580-anil1.pdf","7021","","","","81221-appoinment-order-adhiyamaan.pdf");
INSERT INTO mec_fac VALUES("S18MEC034","GARIMA ARYA","1993-02-07","26","female","garya1635@gmail.com","9431584870","RAVINDRA KUMAR","SUNITA KUMARI","n","","HINDU","OBC","CHAS","BOKARO STEEL CITY","BOKARO ","Jharkhand","India","827013","BHAVANI LADIES HOSTEL
ADHIYAMAAN COLLEGE OF ENGINEERING
DR MGR NAGAR
HOSUR-635109  ","MAHAVIR APARTMENT KUNWAR SINGH COLONY
CHAS
BOKARO STEEL CITY- 827013	   ","947935629066","BACPA2817G","","B+ve","2018-06-18","ASSISTANT PROFESSOR","0","MEC","65808-1538889945761_001.jpg","80784-garima.pdf","9066","","","","");
INSERT INTO mec_fac VALUES("S99MEC019","Dr.S.V.Suresh Babu","1973-07-01","46","male","svsbabu@gmail.com","9894213700","S.V.Seshadri","S. Saraswathamma","y","","HINDU","OC","HOSUR","HOSUR","KRISHNAGIRI","Tamil Nadu","India","635109","Flat No.F2, Sadhana Apartments, Bagalur HUDCO,
HOSUR - 635109","Flat No.F2, Sadhana Apartments, Bagalur HUDCO,
HOSUR - 635109","725878677733","ARHPS2916D","R7287049","O Pos","1999-09-06","PROFESSOR","4344261010","MEC","95406-suresh-babu_photo.jpg","5178-suresh-babu_aadhar.pdf","7733","","","","27023-appointmnet-order.pdf");
INSERT INTO mec_fac VALUES("S99MEC020","Dr. K. SRINIVASAN","1970-07-25","49","male","ksrinivasan.cad@gmail.com","9994214701","KANDASAMY K","MANIYAMMAL","y","","HINDU","MBC","SALEM","SALEM","SALEM","Tamil Nadu","India","636307","	4/1152, FOURTH CROSS,
INDIRA NAGAR, DHARMAPURI   ","	4/1152, FOURTH CROSS,
INDIRA NAGAR, DHARMAPURI   ","244682598922","ANDPS1020J","","A POS","1999-01-04","PROFESSOR","0","MEC","90513-srini.jpg","28345-dr.-k.-srinivasan---aadhaar.pdf","8922","","","","51880-appointment-order.pdf");





CREATE TABLE `mec_fac_attorg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

INSERT INTO mec_fac_attorg VALUES("1","S14MEC024","2015-2016","workshop","AUTOMOTIVE IC ENGINES AND FUTURE TECHNOLOGIES","2","0000-00-00","0000-00-00","0000-00-00","ADHIYAMAAN COLLEGE OF ENGINEERING","HOSUR","national","23517-tech-garrage.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("2","S14MEC024","2017-2018","workshop","DESIGN AND DOVELOPEMENT OF EXHAUST SYSTEM, EURO AN","2","0000-00-00","0000-00-00","0000-00-00","ADHIYAMAAN COLLEGE OF ENGINEERING","HOSUR","national","55900-new-doc-2019-04-08-10.18.45_4.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("3","S14MEC013","2016-2017","fdp","ME 6504- METROLOGY AND MEASUREMENTS","7","2017-05-17","2017-05-23","0000-00-00","CENTRE FOR FACULTY DEVELOPMENT, ANNA UNIVERSITY, C","GOVERNMENT COLLEGE OF ENGINEERING, BARGUR","state","4487-fdp.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("4","S14MEC013","2017-2018","workshop","MOTORSPORTS ENGINEERING","1","0000-00-00","0000-00-00","2017-08-07","ARA INSTITUTE OF CANTERBURY, NEWZEALAND AND THE FE","KUMARAGURU COLLEGE OF TECHNOLOGY, COIMBATORE","international","49950-workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("5","S17MEC025","2016-2017","workshop","ADVANCES IN MECHANICAL ENGINEERING","2","2017-03-30","2017-03-31","0000-00-00","MECHANICAL DEPARTMENT","TAMIL NADU","national","81799-sri-balaji.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("6","S17MEC025","2016-2017","workshop","FUTURISTIC TRENDS IN MECHANICAL ENGINEERING","2","2017-03-04","2017-03-05","0000-00-00","MECHANICAL DEPARTMENT","TAMIL NADU","international","3665-thiruvalluvar---vandavasi.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("7","S17MEC025","2013-2014","seminar","FORGE 14","2","2014-03-13","2014-03-14","0000-00-00","MECHANICAL DEPARTMENT","TAMIL NADU","district","58149-arunai-engg.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("8","S17MEC025","2017-2018","fdp","RECENT DEVELOPEMENT IN CONVENTIONAL AND NON CONVEN","4","2017-11-06","2017-11-10","0000-00-00","MECHANICAL DEPARTMENT BY PONDICHERRY ENGINEERING C","PONDICHERRY","national","49853-puducherry--certifficate.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("9","S17MEC025","2013-2014","workshop","ROBOTRYST 14","2","2014-03-03","2014-03-05","0000-00-00","ROBOSAPIEN TECHNOLOGIES PVT LTD ASSOCIATED WITH II","TAMIL NADU","national","56811-robotryst-2014.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("10","S17MEC025","2013-2014","workshop","AIRWORTHINESS AND FLIGHT SAFETY","2","2013-09-19","2013-09-20","0000-00-00","SCHOOL OF AERONAUTICS IN HINDUSTAN UNIVERSITY","CHENNAI","national","76837-hindustan---chennai.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("11","S17MEC025","2013-2014","seminar","DESIGN CHALLENGES ON UAVs & MAVs","1","0000-00-00","0000-00-00","2013-08-27","BANNARI AMMAN INSTITUTE OF TECHNOLOGY","TAMIL NADU","national","65233-bannari-bangalore.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("12","S17MEC022","2015-2016","fdp","TEACHING PEDAGOGY","4","2015-06-10","2015-06-13","0000-00-00","SASURIE COLLEGE OF ENGINEERING","VIJAYAMANGALAM","state","83924-convert-jpg-to-pdf.net_2019-04-13_09-11-15.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("13","S17MEC022","2015-2016","fdp","THERMAL ENGINEERING","8","2015-12-02","2015-12-09","0000-00-00","ANNA UNIVERSITY","NEHRU INSTITUTE OF ENGINEERING AND TECHNOLOFY","state","3385-fdp-thermal.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("14","S17MEC022","2014-2015","workshop","COMPUTATIONAL FLUID DYNAMICS","2","2014-06-20","2014-06-21","0000-00-00","COIMBATORE INSTITUTE OF TECHNOLOGY","COIMBATORE","national","35172-cit-workshop-1.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("15","S17MEC022","2013-2014","workshop","ADVANCES IN INTERNAL COMBUSTION ENGINES","1","0000-00-00","0000-00-00","2013-12-06","COIMBATORE INSTITUTE OF TECHNOLOGY","COIMBATORE","national","34508-cit-workshop-2.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("16","S18MEC016","2015-2016","fdp","SIEMENS 828D CNC CONTROLLER","1","0000-00-00","0000-00-00","2015-11-28","NARASUS SARATHY INSTITUTE OF TECHNOLOGY","SALEM","national","22102-fdp.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("17","S18MEC016","2015-2016","workshop","MODELLING AND SIMULATION USING MATLAB - SIMULINK","1","0000-00-00","0000-00-00","2015-09-11","NARASUS SARATHY INSTITUTE OF TECHNOLOGY","SALEM","national","83080-workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("18","S17MEC001","2013-2014","workshop","ADVANCED MATERIALS AND MACHINING (AMM)","3","2013-10-31","2013-11-02","0000-00-00","NIT WARANGAL","WARANGAL","national","29785-amm-nitw-workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("19","S17MEC001","2012-2013","workshop","ADVANCES IN CNC MACHINING SKILL DEVELOPMENT TECHNI","1","0000-00-00","0000-00-00","2012-11-02","CEG ANNA UNIVERSITY","CHENNAI","national","83425-cadem-workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("20","S17MEC001","2014-2015","workshop","ADVANCED CHARACTERISATION TECHNIQUES OF MATERIALS ","2","2015-02-23","2015-02-24","0000-00-00","CEG ANNA UNIVERSITY","CHENNAI","national","77942-characterization-workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("21","S17MEC001","2013-2014","training","EDGECAM SOFTWARE TRAINING","1","0000-00-00","0000-00-00","2014-01-10","CEG ANNA UNIVERSITY","CHENNAI","national","83911-edgecam-workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("22","S17MEC001","2013-2014","workshop","FAIL SAFE DESIGN, EARLY DETECTION & AVOIDING FUTUR","2","2013-10-23","2013-10-24","0000-00-00","CEG ANNA UNIVERSITY","CHENNAI","national","60646-fail-safe-ceg-workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("23","S17MEC001","2013-2014","seminar","FRONTIER TECHNIQUES IN AUTOMOTIVE MANUFACTURING","2","2013-10-09","2013-10-10","0000-00-00","KCG COLLEGE OF TECHNOLOGY","CHENNAI","national","39175-kcg-workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("24","S17MEC001","2013-2014","workshop","COMPREHENSIVE MATERIAL TESTING AND ANALYSIS","1","0000-00-00","0000-00-00","2013-10-05","CEG ANNA UNIVERSITY","CHENNAI","national","4017-krysta-13-workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("25","S17MEC001","2014-2015","workshop","RECENT TRENDS IN MECHATRONICS","2","2015-02-26","2015-02-27","0000-00-00","CEG ANNA UNIVERSITY","CHENNAI","national","31653-mechatronics-workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("26","S17MEC001","2014-2015","workshop","ADVANCED METROLOGY IN MANUFACTURING ENGINEERING","2","2014-10-30","2014-10-31","0000-00-00","CEG ANNA UNIVERSITY","CHENNAI","national","68031-metrology-workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("27","S17MEC001","2014-2015","workshop","TRENDS IN NON DESTRUCTIVE EVALUATION OF WELDMENTS","2","2015-03-09","2015-03-10","0000-00-00","CEG ANNA UNIVERSITY","CHENNAI","national","22273-ndw-workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("28","S17MEC001","2013-2014","workshop","AEROSPACE AND AIRCRAFT MATERIALS","1","0000-00-00","0000-00-00","2014-03-26","CEG ANNA UNIVERSITY","CHENNAI","national","97238-quanta-14-workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("29","S17MEC001","2014-2015","workshop","RECENT RESEARCH TRENDS IN MANUFACTURING ENGINEERIN","2","2014-10-10","2014-10-11","0000-00-00","CEG ANNA UNIVERSITY","CHENNAI","national","64160-rrtme-ceg-workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("30","S17MEC001","2017-2018","fdp","BIODEGRADABLE, GREEN AND NANO COMPOSITES FOR INDUS","14","2017-10-20","2017-11-02","0000-00-00","SAIRAM INSTITUTE OF TECHNOLOGY","CHENNAI","national","9881-two-weeks-fdp-sairam.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("31","S17MEC015","2017-2018","workshop","DESIGN AND DEVELOPMENT OF EXHAUST SYSTEM, EURO & B","2","2017-09-19","2017-09-20","0000-00-00","DEPARMENT OF MECHANICAL ENGINEERING","ADHIYAMAAN COLLEGE OF ENGINEERING ,HOSUR","national","10036-manu.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("32","S17MEC004","2017-2018","fdp","BIO DEGRADABLE GREEN AND NANO COMPOSITE FOR INDUST","14","2017-10-20","2017-11-02","0000-00-00","SRI SAI RAM INSTITUTE OF TECHNOLOGY","CHENNAI","national","38171-fdp.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("33","S17MEC004","2016-2017","fdp","METROLOGY AND MEASUREMENTS","7","2017-05-17","2017-05-23","0000-00-00","GOVERNMENT COLLEGE OF ENGINEERING ","BARGUR","state","74349-fdp2.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("34","S12MEC023","2015-2016","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","workshop","Entrepreneurial Ideation","Aicte","2","2015-09-11","2015-09-12","0000-00-00","Mr S Siva","240","state","11505-2.jpg","1");
INSERT INTO mec_fac_attorg VALUES("35","S12MEC023","2016-2017","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","workshop","Entrepreneurs Day Celebration","Aicte","2","2016-08-22","2016-08-23","0000-00-00","Mr B Sudhakar Reddy","240","state","92554-21.jpg","1");
INSERT INTO mec_fac_attorg VALUES("36","S12MEC023","2016-2017","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","workshop","Entrepreneurial Enhancement","Aicte","2","2016-09-30","2016-10-01","0000-00-00","Mr K Sanjeevi Kumar","240","state","53301-22.jpg","1");
INSERT INTO mec_fac_attorg VALUES("37","S12MEC023","2017-2018","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","workshop","Entrepreneurs Day Celebration","college","2","2017-08-29","2017-08-30","0000-00-00","Mr. Vijay manikoth","240","state","56137-32.jpg","1");
INSERT INTO mec_fac_attorg VALUES("38","S12MEC023","2018-2019","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","workshop","Entrepreneurial Skill Development","Aicte","1","0000-00-00","0000-00-00","2019-02-02","Ms Ambica","240","state","49213-41.jpg","1");
INSERT INTO mec_fac_attorg VALUES("39","S12MEC023","2018-2019","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","workshop","Entrepreneurial Enhancement","college","1","0000-00-00","0000-00-00","2019-02-09","Mr R Kanagaraj","240","state","12198-42.jpg","1");
INSERT INTO mec_fac_attorg VALUES("40","S99MEC020","2006-2007","FDP","World-Class new product development","12","2006-07-31","2006-08-11","0000-00-00","DEPARTMENT OF PRODUCTION ENGINEERING, ADHIYAMAAN C","HOSUR","national","25319-fdp-ace.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("41","S99MEC020","2009-2010","FDP","ENTREPRENEURSHIP","13","2009-09-09","2009-09-21","0000-00-00","PSG COLLEGE OF TECHNOLOGY","COIMBATORE","national","81899-fdp-psg.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("42","S99MEC020","2017-2018","FDP","WORLD-CLASS NEW PRODUCT DESIGN & MANUFACTURING","13","2018-01-01","2018-01-13","0000-00-00","DEPARTMENT OF AUTOMOBILE  ENGINEERING, THE OXFORD ","BANGALORE","national","2540-fdp-oxford-college.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("43","S99MEC019","2001-2002","workshop","Mechatronics Systems Design","3","2002-02-20","2002-02-22","0000-00-00","DEPARMENT OF MECHANICAL ENGINEERING","HYDERABAD","national","64906-workshop1.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("44","S15MEC014","2017-2018","fdp","RECENT DEVELOPMENTS IN CONVENTIONAL AND NON CONVEN","5","2017-11-06","2017-11-10","0000-00-00","DEPARTMENT OF MECHANICAL ENGINEERING","PONDICHERRY ENGINEERING COLLEGE","national","54960-fdp.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("45","S99MEC019","2003-2004","fdp","ROBOTICS AND AUTOMATION","14","2003-07-07","2003-07-18","0000-00-00","INDIAN INSTITUTE OF TECHNOLOGY KANPUR","KANPUR","national","69583-workshop-2.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("46","S99MEC019","2004-2005","sdp","ALTERNATIVE FUELS AND EMISSON CONTROL","5","2004-11-24","2004-11-28","0000-00-00","INDIAN INSTITUTE OF TECHNOLOGY KANPUR","KANPUR","national","58062-workshop-3.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("47","S99MEC019","2008-2009","sdp","MICRO AND NANO TECHNOLOGY FOR POWER GENERATION AND","12","2008-07-07","2008-07-18","0000-00-00","DEPARTMENT OF MECHANICAL ENGINEERING","HOSUR","national","8406-workshop-4.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("48","S99MEC019","2011-2012","sdp","MICRO MACHINING AND MICRO ELECTRO MECHANICAL SYSTE","15","2011-06-13","2011-06-27","0000-00-00","DEPARTMENT OF MECHANICAL ENGINEERING","ADHIYAMAAN COLLEGE OF ENGINEERING ,HOSUR","national","61355-workshop-5.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("49","S99MEC019","2015-2016","workshop","RECENT AND EMERGING TRENDS IN SOLAR ENERGY","1","0000-00-00","0000-00-00","2015-11-06","DEPARTMENT OF MECHANICAL ENGINEERING","BANGALORE TECHNOLOGICAL INSTITUTE BENGALURU","national","64431-workshop-6.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("50","S99MEC019","2017-2018","fdp","WORLD-CLASS NEW PRODUCT DESIGN AND MANUFACTURING","14","2018-01-01","2018-01-13","0000-00-00","DEPARTMENT OF MECHANICAL ENGINEERING","THE OXFORD COLLEGE OF ENGINEERING BENGALURU","national","50069-workshop-7.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("51","S18MEC026","2018-2019","workshop","SHAPING THE FUTURE: ENHANCING RESEARCH SKILLS","1","0000-00-00","0000-00-00","2019-01-30","VELLORE INSTITUTE OF TECHNOLOGY","VELLORE","national","9025-vit-workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("52","S18MEC026","2018-2019","workshop","FABRICATION OF POLYMER MATRIX COMPOSITES","1","0000-00-00","0000-00-00","2019-02-22","SSN COLLEGE OF ENGINEERING","OMR,KALAVAKKAM","national","19019-ssn-workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("53","S18MEC028","2016-2017","training","CASTING SIMULATION ","1","0000-00-00","0000-00-00","0000-00-00","MSME TECHNOLOGY DEVELOPMENTCENTRE","COIMBATORE","national","44433-msme-training.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("54","S18MEC028","2016-2017","workshop","GEOMETRICAL DIMENSIONING & TOLERENCING ","1","0000-00-00","0000-00-00","0000-00-00","UNITED INSTITUTE OF TECHNOLOGY","COIMBATORE","state","30558-organized-certificate.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("55","S12MEC006","2014-2015","workshop","“WORKSHOP ON RESEARCH ARTICLE WRITINGS AND PATEN","1","0000-00-00","0000-00-00","2015-05-02","CSIR-CLRI","CHENNAI","national","64595-ws-2.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("56","S12MEC006","2018-2019","workshop","WORKSHOP ON WRITING RESEARCH PROPOSAL","1","0000-00-00","0000-00-00","2019-04-24","DEPARTMENT OF MECH","VELAMMAL COLLEGE OF ENGINEERING ","national","98747-ws-1.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("57","S13MEC005","2015-2016","workshop","HANDS ON TRAINING ON 3D PRINTING ","1","0000-00-00","0000-00-00","2016-03-17","DEPT.OF MECHANICAL ENGINEERING, ADHIYAMAAN COLLEGE","HOSUR","national","48539-meta-workshop-2016.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("58","S07MEC034","2013-2014","FDP","Advancements in Materials, Manufacturing Processes","13","2013-11-04","2013-11-16","0000-00-00","Department of Mechanical Engineering, Sri Sai Ram ","Chennai","national","31815-fdp-sai-ram.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("59","S13MEC005","2017-2018","workshop","HANDS ON TRAINING FOR ARTIFICIAL NEURAL NETWORK","1","0000-00-00","0000-00-00","2017-10-06","DEPT.OF BIOMEDICAL ENGINEERING FACULTY OF ENGINEER","COIMBATORE","national","4441-ann-2017.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("60","S13MEC005","2017-2018","workshop","EFFECTIVE STRATEGIES IN RESEARCH PROJECT PROPOSAL ","2","2017-10-23","2017-10-24","0000-00-00","LOYOLA INSTITUTE OF FRONTIER ENERGY AND CAAS RESEA","CHENNAI","national","52496-life-caas-2017.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("61","S08MEC018","2011-2012","Training","Advanced training programme on “Grinding and Abr","2","2011-07-22","2011-07-23","0000-00-00","WENDT (India) Ltd, ","Hosur ","national","2929-training-prog.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("62","S13MEC005","2014-2015","workshop","NEW MATERIALS THEIR CHARACTERIZATION AND APPLICATI","2","2014-10-15","2014-10-16","0000-00-00","UGC SPONSORED, ANNA UNIVERSITY ","CHENNAI","national","39693-ugc-anna-univ-2014.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("63","S13MEC005","2017-2018","workshop","HOW TO EXCEL IN RESEARCH ","1","0000-00-00","0000-00-00","2017-12-06","DEPT.OF MECHANICAL ENGINEERING, INDIAN INSTITUTE O","CHENNAI","international","26433-copen-workshop-2017.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("64","S13MEC005","2014-2015","workshop","AUTHOR WORKSHOP ","1","0000-00-00","0000-00-00","2014-09-25","ELSEVIER ","BANGALORE ","national","29955-author-workshop-2014.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("65","S13MEC005","2015-2016","workshop","ENGINEERING FACULTY WORKSHOP","3","2015-11-19","2015-11-21","0000-00-00","WIPRO","HOSUR","national","87942-wipro-2015.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("66","S08MEC018","2010-2011","workshop","A workshop on “Micro Fabrication and Nano Techno","3","2010-09-23","2010-09-25","0000-00-00","Shiridi Sai Engineering college,","Anekal,Bengaluru-562 106","national","17257-workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("67","S14MEC011","2016-2017","fdp","METROLOGY AND MEASUREMENTS","7","2017-05-17","2017-05-23","0000-00-00","GOVERNMENT COLLEGE OF ENGINEERING ","BARGUR","national","36495-fdp.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("68","S14MEC011","2015-2016","workshop","Automotive IC Engines and Future Engine Technologi","2","2015-09-21","2015-09-22","0000-00-00","DEPT.OF MECHANICAL ENGINEERING, ADHIYAMAAN COLLEGE","HOSUR","national","37792-workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("69","S12MEC023","2015-2016","workshop","3D Printing","1","0000-00-00","0000-00-00","2016-03-18","Adhiyamaan college of engineering","Hosur","state","33254-workshop.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("70","S12MEC023","2017-2018","fdp","Metrology and Measurements","6","2017-06-17","2017-06-23","0000-00-00","Government College of Engineering","Bargur","state","89221-fdpnew.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("71","S12MEC023","2015-2016","fdp","Mission 10X","3","2015-06-02","2015-06-04","0000-00-00","Adhiyamaan college of Engineeing","Hosur","state","58289-fdp10x.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("72","S04MEC035","2016-2017","fdp","RESEARCH SCOPE IN THERMAL ENGINEERING","8","2016-12-13","2016-12-19","0000-00-00","GCE SALEM","SALEM","0","98803-self.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("73","S04MEC035","2010-2011","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","fdp","FDP on Heat and Mass Transfer","ANNA UNIVERSITY OF TECHNOLOGY","8","2010-12-13","2010-12-20","0000-00-00","Prof.Eswaramoorthy","25","national","31173-organised-page-jpegcomp.jpg","1");
INSERT INTO mec_fac_attorg VALUES("74","S04MEC035","2016-2017","fdp","RESEARCH SCOPE IN THERMAL ENGINEERING","7","2016-12-13","2016-12-19","0000-00-00","GCE SALEM","SALEM","national","71220-self.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO mec_fac_attorg VALUES("75","S04MEC035","2010-2011","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","fdp","FDP on Heat and Mass Transfer","ANNA UNIVERSITY OF TECHNOLOGY","7","2010-12-13","2010-12-20","0000-00-00","Dr.Eswaramoorthy","25","national","25637-organised-page-jpegcomp.jpg","1");





CREATE TABLE `mec_fac_bkjrn` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `glkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

INSERT INTO mec_fac_bkjrn VALUES("1","S14MEC013","2014-2015","","","","","","","","Effect of Temperature and Reinforcement Volume Fraction on Impact Energy of Hybrid Polypropylene Mat","International Journal of ChemTech Research","8","4","0974-4290","scopus","https://www.researchgate.net/publication/282845371_Effect_of_temperature_and_reinforcement_volume_fr","NIL","31557-journal.pdf","0","1","","");
INSERT INTO mec_fac_bkjrn VALUES("2","S13MEC005","","","","","","","","","","","","","","","","","","","","https://scholar.google.co.in/citations?user=z9_IwL","1");
INSERT INTO mec_fac_bkjrn VALUES("3","S12MEC023","2011-2012","","","","","","","","Parametric Optimization of Wire Electrical Discharge Machining of Composite Material","International Journal of Advanced Research in Comp","1","3","2278-1323","ugc","http://ijarcet.org/wp-content/uploads/IJARCET-VOL-1-ISSUE-3-6-15.pdf","4","10156-paper1.pdf","1","1","","");
INSERT INTO mec_fac_bkjrn VALUES("4","S12MEC023","2015-2016","","","","","","","","Parametric Investigation on the surface Roughness in wire electrical discharge machining of HSS","International Journal of Applied Engineering Resea","10","9","0973-4562","ugc","http://www.ripublication.com/Volume/ijaerv10n9spl.htm","4","25698-paper2.pdf","1","1","","");
INSERT INTO mec_fac_bkjrn VALUES("5","S99MEC020","2015-2016","","","","","","","","Simulation Analysis and Material Optimization of an Aircraft Wing Leading Edge When Subjected to an ","Journal of Computational and Nonlinear Dynamics","10","5","10.1115/1.4029510","sci","http://computationalnonlinear.asmedigitalcollection.asme.org","1","14347-asme-paper.pdf","1","1","","");
INSERT INTO mec_fac_bkjrn VALUES("6","S99MEC020","2015-2016","","","","","","","","Enhancement of sigma level in the manufacturing of furnace nozzle through DMAIC approach of Six Sigm","Production Planning & Control The Management of Op","27","6","0953-7287 ","sci","http://dx.doi.org/10.1080/09537287.2016.1143130","2","85082-enhancement-of-sigma-level-in-the-manufacturing-of-furnace-nozzle-through-dmaic-approach-of-si","1","1","","");
INSERT INTO mec_fac_bkjrn VALUES("7","S99MEC020","2013-2014","","","","","","",""," Enhancing effectiveness of Shell and Tube Heat Exchanger through Six Sigma DMAIC phases","Procedia Engineering","97","1","1877-7058","scopus","www.sciencedirect.com","22","26622-dmaic---heat-exchanger.pdf","1","1","","");
INSERT INTO mec_fac_bkjrn VALUES("8","S99MEC020","2013-2014","","","","","","","","Reduction of paint line defects in shock absorber through Six Sigma DMAIC phases","Procedia Engineering","97","1","1877-7058","scopus","www.sciencedirect.com","21","2125-dmaic---shock-absorber.pdf","1","1","","");
INSERT INTO mec_fac_bkjrn VALUES("9","S99MEC020","2015-2016","","","","","","","","Six Sigma through DMAIC phases: a literature review","Int. J. Productivity and Quality Management","17","2","1746-6474 ","scopus","https://www.inderscienceonline.com/doi/abs/10.1504/IJPQM.2016.074462","14","35372-ijpqm.pdf","0","1","","");
INSERT INTO mec_fac_bkjrn VALUES("10","S99MEC020","2012-2013","","","","","","","","Continuous maintenance quality improvement using analytic maintenance quality function deployment te","Int. J. Services and Operations Management","14","4","1744-2370","scopus","https://www.inderscienceonline.com/doi/abs/10.1504/IJSOM.2013.052841","5","68178-ijsom.pdf","2","1","","");
INSERT INTO mec_fac_bkjrn VALUES("11","S99MEC020","2011-2012","","","","","","","","From TPM to analytic maintenance quality function deployment: a literature journey via QFD and AHP","International Journal of Indian Culture and Busine","4","4","1753-0806","scopus","https://www.inderscienceonline.com/doi/10.1504/IJICBM.2011.040958","11","21678-ijicbm.pdf","1","1","","");
INSERT INTO mec_fac_bkjrn VALUES("12","S17MEC001","2014-2015","","","","","","","","Experimental Investigations on Cryogenic Cooling in the Drilling of AISI 1045 Steel","MATERIALS AND MANUFACTURING PROCESSES","29","4","1042-6914","sci","10.1080/10426914.2014.930952","18","52419-drilling-aisi-1045-mmp-2014.pdf","3","1","","");
INSERT INTO mec_fac_bkjrn VALUES("13","S17MEC001","2014-2015","","","","","","","","EXPERIMENTAL INVESTIGATIONS ON CRYOGENIC COOLING IN DRILLING OF ALUMINIUM ALLOY","APPLIED MECHANICS AND MATERIALS","592-594","1","1662-7482","scopus","10.4028/www.scientific.net/AMM.592-594.316","5","77797-amm-2014-aluminium.pdf","0","1","","");
INSERT INTO mec_fac_bkjrn VALUES("14","S17MEC001","2016-2017","","","","","","","","Multiresponse optimization of cryogenic drilling on Ti-6Al-4V alloy using topsis method","JMST","30","4","1976-3824","sci","10.1007/s12206-016-0340-1","7","33711-jmst-2016.pdf","1","1","","");
INSERT INTO mec_fac_bkjrn VALUES("15","S17MEC001","2016-2017","","","","","","","","Cryogenic Drilling of Ti–6Al–4V Alloy Under Liquid Nitrogen Cooling","MATERIALS AND MANUFACTURING PROCESSES","31","7","1042-6914","sci","10.1080/10426914.2015.1048475","29","54010-drilling-2016-mmp-grade-5.pdf","3","1","","");
INSERT INTO mec_fac_bkjrn VALUES("16","S17MEC001","2016-2017","","","","","","","","Experimental Investigations on Cryogenic Cooling in the Drilling of Titanium Alloy","MATERIALS AND MANUFACTURING PROCESSES","32","3","1042-6914","sci","https://doi.org/10.1080/10426914.2016.1176187","8","74236-drilling-2016-mmp-grade-2.pdf","3","1","","");
INSERT INTO mec_fac_bkjrn VALUES("17","S17MEC001","2016-2017","","","","","","","","Investigation of cryogenic cooling effect in reaming Ti-6AL-4V alloy","MATERIALS AND MANUFACTURING PROCESSES","32","9","1042-6914","sci","https://doi.org/10.1080/10426914.2016.1221088","7","96194-reaming-2016-mmp-grade-5.pdf","3","1","","");
INSERT INTO mec_fac_bkjrn VALUES("18","S17MEC001","2016-2017","","","","","","","","Performance Evaluation of Cryogenic Cooling in Reaming Titanium Alloy","MATERIALS AND MANUFACTURING PROCESSES","32","3","1042-6914","sci","https://doi.org/10.1080/10426914.2016.1176187","8","95659-reaming-2016.pdf","3","1","","");
INSERT INTO mec_fac_bkjrn VALUES("19","S17MEC001","2017-2018","","","","","","","","Drilling of AISI 304 Stainless Steel under Liquid Nitrogen Cooling: A Comparison with Flood Cooling","MATERIALS TODAY PROCEEDINGS ELSEVIER","4","1","1518–1524","scopus","https://www.sciencedirect.com/science/article/pii/S2214785317301748","3","42405-mat-today-proc-2017.pdf","0","1","","");
INSERT INTO mec_fac_bkjrn VALUES("20","S17MEC001","","","","","","","","","","","","","","","","","","","","https://scholar.google.co.in/citations?user=fCKRy7","1");
INSERT INTO mec_fac_bkjrn VALUES("21","S18MEC016","2014-2015","","","","","","","","DESIGN AND FABRICATION OF TRIANGULAR AIR COMPRESSOR WITH COMMON COMPRESSOR CHAMBER","IJCR","7","12","0975-833X","ugc","http://journalcra.com/sites/default/files/issue-pdf/12293.pdf","0","37691-12293.pdf","0","1","","");
INSERT INTO mec_fac_bkjrn VALUES("22","S18MEC016","2014-2015","","","","","","","","A REVIEW OF CARBONDIOXIDE LASER ON POLYMERS","IJERT","4","3","2278-0181","ugc","https://www.ijert.org/research/a-review-of-carbon-dioxide-laser-on-polymers-IJERTV4IS031027.pdf","0","60495-a-review-of-carbon-dioxide-laser-on-polymers-ijertv4is031027.pdf","0","1","","");
INSERT INTO mec_fac_bkjrn VALUES("23","S11MEC010","2014-2015","","","","","","","","Design and Structural Analysis of Clutch plate using Aluminum-Bronze composite as a friction materia","International Journal of Applied Engineering Resea","10","1","0973-4562 ","ugc","https://www.ripublication.com/ijaer_spl/ijaerv10n9spl_253.pdf","0","83087-aks-1.pdf","0","1","","");
INSERT INTO mec_fac_bkjrn VALUES("24","S17MEC029","2017","","","","","","","","Design and optimization of draft tube to increase the efficiency","IJRASET","5","VIII","IJRASET9598","UGC","https://www.ijraset.com/fileserve.php?FID=9598","0","99460-ijraset9598.pdf","5","1","","");
INSERT INTO mec_fac_bkjrn VALUES("25","S99MEC020","","","","","","","","","","","","","","","","","","","","https://scholar.google.co.in/citations?hl=en&user=","1");
INSERT INTO mec_fac_bkjrn VALUES("26","S99MEC019","2011-2012","","","","","","","","Integrated Reliability Model for Redundant Systems with Multiple Constraints","International Journal of Current Research (IJCR)","No. 4","2","0975-833X","others","WWW.JOURNALCRA.COM","4","74552-journal-1.pdf","8","1","","");
INSERT INTO mec_fac_bkjrn VALUES("27","S99MEC019","2011-2012","","","","","","","","Redundancy Allocation for Series-Parallel Systems with Multiple Constraints and Sensitivity Analysis","International Journal of Scientific Research (IOSR","No. 4","2","2250-3021","ugc","WWW.IOSRJOURNALS.ORG","5","5347-journal-2.pdf","4","1","","");
INSERT INTO mec_fac_bkjrn VALUES("28","S99MEC019","2012-2013","","","","","","","","Reliability Optimization Model for Redundant systems with multiple constraints","ELSEVIER Procedia Engineering","No. 38","2012","1877-7058","scopus","WWW.ELSEVIER.COM/LOCATE/PROCEDIA","8","73412-journal-3.pdf","1","1","","");
INSERT INTO mec_fac_bkjrn VALUES("29","S99MEC019","2013-2014","","","","","","","","Wear behaviour of sintered titanium-diboride reinforced graphite aluminium composites","International Journal of Engineering Research & Te","3","3","2278-0181","others","www.ijert.org","9","28203-wear-behaviour-of-sintered-titanium-diboride-reinforced-graphite-aluminium-composites-ijertv3i","8","1","","");
INSERT INTO mec_fac_bkjrn VALUES("30","S99MEC019","2017-2018","","","","","","","","CFD Analysis of Centrifugal Pump for Sewerage Applications","in International Journal of Latest Technology in E","VII","I","2278-2540","others","www.ijltemas.in","5","27098-cfd-analysis-of-centrifugal-pump-in-sewerage-system.pdf","4","1","","");
INSERT INTO mec_fac_bkjrn VALUES("31","S12MEC006","2017-2018","","","","","","","","Review on two-phase flow boiling in oblique fined microchannel heat sink with different channel cros","International Journal of ChemTech Research","vol.11","No. 5","ISSN: 0974 4290","scopus","http://www.sphinxsai.com/2018/ch_vol11_no5/2/(220-235)V11N05CT.pdf","2","72361-journal.pdf","1","1","","");
INSERT INTO mec_fac_bkjrn VALUES("32","S99MEC019","2018-2019","","","","","","","","Effects on Diesel Engine Characteristics and Emission of Nano fluids blends with  Diesel ","International Journal of Chem Tech Research","11","2","2455-9555","scopus","www.sphinxsai.com","8","57296-chemtech.pdf","0","1","","");
INSERT INTO mec_fac_bkjrn VALUES("33","S13MEC005","2015-2016","","","","","","","","The use of artificial neural network for the prediction of wear loss of aluminium-magnesium alloy","Int. J. Computer Aided Engineering and Technology","7","1","1757-2665","scopus ","https://www.inderscience.com/info/inarticle.php?artid=66174","3","14679-hariprasad2015.pdf","0","1","","");
INSERT INTO mec_fac_bkjrn VALUES("34","S13MEC005","2013-2014","","","","","","","","Wear characteristics of B4C and Al2O3 reinforced with Al 5083 metal matrix based hybrid composite","Procedia Engineering"," 97","2014","1877-7058","sci","https://www.sciencedirect.com/science/article/pii/S1877705814034365","20","32529-hariprasad2014-1.pdf.pdf","1","1","","");
INSERT INTO mec_fac_bkjrn VALUES("35","S13MEC005","2015-2016","","","","","","","","Experimental Study on Tribological Properties of Al 5083-Fly Ash/ ZrSiO4 Composites under Dry Slidin","International Journal of Applied Engineering Resea","10","9","0973-4562 ","scopus ","http://www.ripublication.com/Volume/ijaerv10n9spl.htm","0","95412-ijaerv10n9spl_255.pdf","0","1","","");
INSERT INTO mec_fac_bkjrn VALUES("36","S13MEC005","2015-2016","","","","","","","","EVALUATION OF MECHANICAL PROPERTIES OF FLY ASH-B4C REINFORCED Al 5083 COMPOSITES","International Journal of Applied Engineering Resea","10","9","0973-4562 ","scopus ","http://www.ripublication.com/Volume/ijaerv10n9spl.htm","0","83456-ijaerv10n9spl_257.pdf","0","1","","");
INSERT INTO mec_fac_bkjrn VALUES("37","S13MEC005","2018-2019","","","","","","","","Investigation of Microstructural and Mechanical Properties of Al 5083-ZrSiO4-Gr Hybrid Composite","International Journal of Nano science","17","4","0219-581X","scopus ","https://www.worldscientific.com/doi/abs/10.1142/S0219581X17600298","0","34702-international-journal-of-nanoscience-volume-issue-2017-[doi-10.1142_s0219581x17600298]-haripra","1","1","","");
INSERT INTO mec_fac_bkjrn VALUES("38","S13MEC005","2017-2018","","","","","","","","Evaluation of Mechanical and Tribological Properties of Al 5083 - ZrSiO4 - TiO2 Hybrid Composite.","International Journal of Applied Engineering Resea","13","6","0973-4562 ","scopus ","https://www.ripublication.com/Volume/ijaerv13n6.htm","0","99910-ijaerv13n6_84.pdf","0","1","","");
INSERT INTO mec_fac_bkjrn VALUES("39","S13MEC005","2018-2019","","","","","","","","MECHANICAL AND WEAR BEHAVIOUR OF Al HYBRID COMPOSITES REINFORCED WITH ZIRCON SAND AND RICE HUSK ASH","Journal of the Balkan Tribological Association","24","4","1310-4772 ","scopus ","http://www.scibulcom.net/","0","19382-849-857.pdf","0","1","","");
INSERT INTO mec_fac_bkjrn VALUES("40","S14MEC011","2014-2015","","","","","","","","Experimental analysis of E-Glass fiber and Fly Ash reinforced to E-Waste aluminium","Journal of Chemical and Pharmaceutical Sciences","2014","4","0974-2115 ","sci","https://www.jchps.com/specialissues/Special%20issue4/jchps%2049%20a%20g%20ganesh%20kumar%20138-140.p","0","20629-jchps-49-a-g-ganesh-kumar-138-140.pdf","0","1","","");
INSERT INTO mec_fac_bkjrn VALUES("41","S14MEC011","2015-2016","","","","","","","","EXPERIMENTATION OF E-GLASS FIBER AND FLYASH REINFORCED WITH RECYCLED E-WASTE ALUMINIUM ALLOY HYBRID ","international journal of advanced engineering tech","7","1","0976-3945","ugc","http://www.technicaljournalsonline.com/ijeat/VOL%20VII/IJAET%20VOL%20VII%20ISSUE%20I%20JANUARY%20MAR","0","35920-1556347532094_2016--march.ijaet-26.3.16.pdf","0","1","","");
INSERT INTO mec_fac_bkjrn VALUES("42","S18MEC032","2015-2016","","","","","","","","Experimental Investigationn of solar FPC  performance using Graphene oxide Nanofluid under Forced Ci","Energy Conversion and Management","11","-","0196-8904","sci","http://dx.doi.org/10.1016/j.enconman.2016.03.015","-","73526-vincely-paper-in-ecm.pdf","4","1","","");
INSERT INTO mec_fac_bkjrn VALUES("43","S18MEC032","2015-2016","","","","","","","","PERFORMANCE ENHANCEMENT STUDIES IN A THERMOSYPHON FLAT PLATE SOLAR WATER HEATER WITH COPPER OXIDE NA","THERMAL SCIENCE","10","0","-","sci","-","-","53174-2015-12-27-manuscript-thermosyphon-fpc-revised.pdf","1","1","","");
INSERT INTO mec_fac_bkjrn VALUES("44","S07MEC034","2012-2013","","","","","","","","Mechanical and Thermal Behavior of Novolac Reinforced with Nano - Hydroxy Apatite","International Journal of Scientific & Engineering ","4","5","2229-5518","ugc","https://www.ijser.org/ResearchPaperPublishing_May2013_Page4.aspx","2","31483-mechanical-and-thermal-behavior-of-novolac-reinforced-with-nano-hydroxy-apatite(1).pdf.pdf","0","1","","");
INSERT INTO mec_fac_bkjrn VALUES("45","S07MEC034","2014-2015","","","","","","","","Production and Mechanical Properties of Fly ash and Basalt ash reinforced Al 6061composites","Indian Journal of Science","16","49","2319 – 7730","scopus","http://www.discoveryjournals.org/science/current_issue/2015/index.htm","2","13861-production-and-mechanical-properties-of-fly-ash-and.pdf","0","1","","");
INSERT INTO mec_fac_bkjrn VALUES("46","S07MEC034","2016-2017","","","","","","","","Evaluation of Mechanical Properties of Alkali treated Basalt and Pineapple Leaf Fiber reinforced Hyb","International Journal of ChemTech Research","10","3","0974-4290","scopus","www.sphinxsai.com/2017/ch_vol10_no3/1/(347-356)V10N3CT.pdf","4","73466-evaluation-of-mechanical-properties-of-alkali-treated-basalt.pdf","1","1","","");
INSERT INTO mec_fac_bkjrn VALUES("47","S07MEC034","2017-2018","","","","","","","","Effect of eco-friendly micro basalt fiber filler loading on mechanical properties of hybrid polymerc","Eco. Env. & Cons. 24 (February Suppl.)","24","February suppliment","0971–765X","scopus","http://www.envirobiotechjournals.com/article_abstract.php?aid=8401&iid=242&jid=3","3","20568-34-d-mohanraj.pdf","1","1","","");
INSERT INTO mec_fac_bkjrn VALUES("48","S08MEC018","2013-2014","","","","","","","","Experimental analysis of E-Glass fiber and Fly Ash reinforced to E-Waste aluminium","Experimental analysis of E-Glass fiber and Fly Ash","Special Issue"," 4","0974-2115","scopus","https://www.jchps.com/specialissues/Special%20issue4/jchps%2049%20a%20g%20ganesh%20kumar%20138-140.p","0","53406-jchps-49-a-g-ganesh-kumar-138-140.pdf","0","1","","");
INSERT INTO mec_fac_bkjrn VALUES("49","S08MEC018","2014-2015","","","","","","","","A review on waste printed circuit boards recycling technology","POLLUTION RESEARCH ","34","2","0257-8050","scopus","http://www.envirobiotechjournals.com/article_abstract.php?aid=6109&iid=193&jid=4","1","4684-poll-res-32.pdf","0","1","","");
INSERT INTO mec_fac_bkjrn VALUES("50","S08MEC018","2017-2018","","","","","","","","Reuse of waste printed circuit board in powder form as filler in natural rubber composite and its ev","Ecology. Environment. & Conservation","Special Issue","24","0971–765X","scopus","http://www.envirobiotechjournals.com/article_abstract.php?aid=8391&iid=242&jid=3","0","87399-s.shylin-h-jose-11150331069.pdf","0","1","","");
INSERT INTO mec_fac_bkjrn VALUES("51","S04MEC035","2015-2016","","","","","","","","EMISSION CHARACTERISTICS OF A CI ENGINE WITH THE ADDITION OF KAMALA ORANGE SKIN ADDITIVE","  Journal of Chemical and Pharmaceutical Research,","7(5):903-907  ","7(5):903-907  ","ISSN : 0975-7384","scopus","www.jocpr.com","h ","65617-jampap1.pdf","1","1","","");
INSERT INTO mec_fac_bkjrn VALUES("52","S04MEC035","2015-2016","","","","","","","","Emission Characteristics of a CI engine with the addition of different additives ","International Journal of ChemTech Research "," Vol.8, No.4, pp  20"," Vol.8, No.4, pp  20"," ISSN: 0974-4290","scopus","https://www.researchgate.net/publication/282696580_Emission_characteristics_of_a_CI_engine_with_the_","h ","65469-jampap2.pdf","1","1","","");
INSERT INTO mec_fac_bkjrn VALUES("53","S04MEC035","","","","","","","","","","","","","","","","","","","","https://www.researchgate.net/publication/282696580","1");





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
  `ph2key` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO mec_fac_edu VALUES("S04MEC035","MONTFORT SCHOOL","state","1989","80","76380-plustwo.pdf","1","MONTFORT SCHOOL","state","MPCB","1990","78","53324-plustwo.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","KARUNYA INSTITUTE OF TECHNOLOGY","BARATHIAR UNIVERSITY","BE","Mechanical Engineering","regular","1994","62","86385-bepdf.pdf","1","","","","","","","","","","","","","","","","","","","ANNAMALAI UNIVERSITY","ANNAMALAI UNIVERSITY","ME","THERMAL POWER ENGINEERING","regular","2019","62","89697-me.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","Adhiyamaan college of Engineering","ANNAMALAI UNIVERSITY","ALTERNATE FUELS","mechanical Engineering","parttime","2010-07","2018-01","ANALYSIS ON BIOFUEL PRODUCED FROM GOAT AND SHEEP FATS","Dr JOHN S ALEXIS","99948-phdpdf.pdf","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_edu VALUES("S07MEC007","THE LITTLE FLOWER HIGHER SECONDARY SCHOOL","state","1999","81","98654-10th-marksheet.pdf","1","THE LITTLE FLOWER HIGHER SECONDARY SCHOOL","state","MATHS, COMPUTER SCIENCE","2001","86","6803-12th-marksheet.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","TAMILNADU COLLEGE OF ENGINEERING","ANNA UNIVERSITY","B.E","MECHANICAL ENGINEERING","regular","2005","74","70077-ug-degree.pdf","1","","","","","","","","","","","","","","","","","","","SONA COLLEGE OF TECHNOLOGY","ANNA UNIVERSITY","M.E","ENGINEERING DESIGN","regular","2007","75","94883-pg-degree.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_edu VALUES("S07MEC034","DUDLEY HIGHER SECONDARY SCHOOL","state","1991","75","66311-sslc-mark-sheet.pdf","1","","","","","","","","Thiru Ramakrishna Nalllammai Polytechnic","DOTE","DIPLOMA IN MECHANICAL ENGINEERING","regular","1996","82","63189-dme.pdf","1","","","","","","","","","","","","","","","","","Thiagarajar College of Engineering, Madurai","Madurai Kamaraj University","B.E.","Mechanical Engineering","regular","2002","64","56366-ug-degree.pdf","1","","","","","","","","","","","","","","","","","","","Kongu Engineering College, Perundurai","Anna University, Chennai","M.E.","Engineering Design","regular","2007","74","6521-pg-degree.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_edu VALUES("S08MEC018","Yettacode Higher Secondary School","state","1993","85","43061-10th.docx.pdf","1","Yettacode Higher Secondary School","state","Mathematics","1995","82","22529-12th.docx.pdf","1","Government Polytechnic College","Directorat","Diploma","regular","1998","78","16607-diploma.pdf","1","","","","","","","","","","","","","","","","","Government college of Engineering ","Anna University","Bachelor of Engineering","Mechanical Engineering","regular","2006","63","12644-be.docx.pdf","1","","","","","","","","","","","","","","","","","","","National Engineering College","Anna University","Master of Engineering","manufacturing Engineering","regular","2008","76","15609-me.docx.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","Salem college of Engineering and Technology","Anna University,Chennai","Manufacturing","Mechanical Engineering","parttime","2011-01","","Extraction of resources through recycling of Electronic Wastes","Dr.R.A. Sankaran","","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_edu VALUES("S11MEC010","ST.ANTONYS HIGHER SECONDARY SCHOOL","state","2001","90","50784-sslc.pdf","1","ST.ANTONYS HIGHER SECONDARY SCHOOL","state","MATHS, PHYSICS, CHEMISTRY, BIOLOGY","2003","83","94652-hsc.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","PRIYADARSHINI ENGINEERING COLLEGE","ANNA UNIVERSITY CHENNAI","B.E.,","MECHANICAL ENGINEERING","regular","2007","75","42748-b.e.,-degree.pdf","1","","","","","","","","","","","","","","","","","","","COLLEGE OF ENGINEERING GUINDY","ANNA UNIVERSITY","M.E.,","MANUFACTURING SYSTEMS AND MANAGEMENT","regular","2010","8","87181-m.e.,-degree.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_edu VALUES("S12MEC006","krishiland matriculation higher secondary school ","state","2000","65","35662-10-th-sheet.pdf","1","Don Bosco Matric.Hr.sec.school ","state","MATHEMATICS, PHYSICS, CHEMISTRY, BIOLOGY","2002","82","53200-12-th-sheet.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Malnad College Of Engineering. Hassan","VISVESWARYA TECHNOLOGICAL UNIVERSITY","B.E","AUTOMOBILE ENGINEERING","regular","2007","60","99877-b.e-deg-sheet-pdf.pdf","1","","","","","","","","","","","","","","","","","","","Thanthai Periyar Government Institute of Technolog","ANNA UNIVERSITY","M.E","MANUFACTURING ENGINEERING","regular","2012","7","98035-m.e-deg-sheet-pdf.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_edu VALUES("S12MEC023","Gnanodaya English Medium High School","state","2003","62","49633-ssc-pdf.pdf","1","Sri Varadaraja swamy junior college ","state","MPC (Board of intermediate Andhra Pradesh)","2005","64","84003-inter-pdf.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Sri Venkateshwara college of engineering and techn","JNTU Anantapur","B.TECH","Mechanical Engineering","regular","2009","58","43191-ug-degree-pdf.pdf","1","","","","","","","","","","","","","","","","","","","Bannari Amman Institute of Technology","Anna university Chennai","M.E","Engineering Design","regular","2012","8","33365-pg-pdf.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","Adhiyamaan college of Engineering","Anna university chennai","material science","mechanical Engineering","parttime","2014-06","","Superconducting effect of A2 tool steel on machining in wire electrical discharge machine","Dr G Ranganath","","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_edu VALUES("S13MEC005","GOVT BOYS HIGHER SECONDARY SCHOOL ","state","2004","52","28608-10th-marksheet.pdf","1","","","","","","","","Er Perumal Manimekalai Polytechnic College","DoTE","DME (TOOL&DIE)","regular","2007","77","74282-diploma.pdf","1","","","","","","","","","","","","","","","","","Thiruvalluvar College of Engineering and Technolog","Anna University ","B.E ","MECHANICAL ENGINEERING ","regular","2011","70","53522-be-degree-certificate.pdf","1","","","","","","","","","","","","","","","","","","","Adhiyamaan College of Engineering","Anna University ","M.E","COMPUTER AIDED DESIGN ","regular","2013","9","71161-me-degree-certificate.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","Velammal Engineering College","Anna University ","PhD","Mechanical ","parttime","2014-01","","Development and Characterisation of Aluminium Hybrid Composite","Dr.K.Varatharajan","","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_edu VALUES("S14MEC011","GOVT BOYS HIGHER SECONDARY SCHOOL ","state","2006","75","26354-10th.pdf","1","Nalanda Matric Higher Secondary School","state","Maths Biology","2008","85","83893-12th.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","Sona College of Technology","Anna University ","B.E ","MECHANICAL ENGINEERING ","regular","2012","8","50882-ug.pdf","1","","","","","","","","","","","","","","","","","","","Adhiyamaan College of Engineering","Anna University ","M.E","ENGINEERING DESIGN","regular","2014","9","50604-pg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_edu VALUES("S14MEC013","DONBOSCO MATRICULATION HIGHER SECONDARY SCHOOL","state","2006","89","62740-10th.pdf","1","DONBOSCO MATRICULATION HIGHER SECONDARY SCHOOL","state","MATHS- COMPUTER SCIENCE","2008","85","99897-12th.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","TAMILNADU COLLEGE OF ENGINEERING","ANNA UNIVERSITY CHENNAI","BE","AUTOMOBILE ENGINEERING","regular","2012","9","13762-ug.pdf","1","","","","","","","","","","","","","","","","","","","ADHIYAMAAN COLLEGE OF ENGINEERING","ANNA UNIVERSITY CHENNAI","ME","ENGINEERING DESIGN","regular","2014","9","98086-pg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_edu VALUES("S14MEC024","ST JOHNS ENGLISH MEDIUM SCHOOL","state","2002","60","5869-sslc-convert-jpg-to-pdf.net_2019-04-08_06-18-16.pdf","1","NEHRU ARTS SCIENCE AND COMMERCE PUC COLLEGE","state","SCIENCE","2004","42","69319-puc-convert-jpg-to-pdf.net_2019-04-08_06-21-09.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","RURAL ENGINEERING COLLEGE","VTU","BE","AUTOMOBILE","regular","2009","68","6990-be-convert-jpg-to-pdf.net_2019-04-08_06-26-09.pdf","1","","","","","","","","","","","","","","","","","","","SDM COLLEGE OF ENGINEETING AND TECHNOLOGY","VTU","M.TECH","ENGINEERING ANALYSIS AND DESIGN","regular","2013","70","98824-mtech-new-doc-2019-02-25-18.21.06_1.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_edu VALUES("S15MEC003","ST MARY MAGDALENE MS HOSUR","state","2007","86","37847-10th.pdf","1","SRI VIJAY VID M HSS HOSUR","state","MATHS, PHYSICS, CHEMISTRY, COMPUTER SCIENCE","2009","95","69458-12th.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","A.C.COLLEGE OF ENGINEERING AND TECHNOLOGY, KARAIKU","ANNA UNIVERSITY CHENNAI","B.E.","MECHANICAL ENGINEERING","regular","2013","8","28516-be-degree.pdf","1","A.C.COLLEGE OF ENGINEERING AND TECHNOLOGY,KARAIKUD","ANNA UNIVERSITY, CHENNAI","B.E.","MECHANICAL ENGINEERING","regular","2013","8","81560-be-degree.pdf","1","","","","","","","","","","ADHIYAMAAN COLLEGE OF ENGINEERING, HOSUR","ANNA UNIVERSITY, CHENNAI","M.E.","ENGINEERING DESIGN","regular","2015","10","60509-me-degree.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_edu VALUES("S15MEC014","SHREE VENKATESHWARA VIDHAYALAYAA MATRIC HIGHER SEC","state","2007","83","49843-10.pdf","1","SHREE VENKATESHWARA VIDHYALAYAA HIGHER SECONDARY S","state","MATHEMATICS PHYSICS CHEMISTRY","2009","88","78223-12.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","ADHIYAMAAN COLLEGE OF ENGINEERING","ANNA UNIVERSITY","BACHELOR OF ENGINEERING","MECHANICAL ENGINEERING","regular","2013","9","69242-b.e.pdf","1","","","","","","","","","","","","","","","","","","","COIMBATORE INSTITUTE OF TECHNOLOGY","ANNA UNIVERSITY","MASTER OF ENGINEERING","HEAT POWER ENGINEERING","regular","2015","8","59323-m.e.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_edu VALUES("S15MEC021","GOVT HIGH SCHOOL ","state","2007","80","30707-10.pdf.pdf","1","BHARATHI HSS REDDIPATTI","state","COMPUTER SCIENCE","2009","88","57721-12th.pdf.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","ADHIYAMAAN COLLEGE OF ENGINEERING","ANNA UNIVERSITY","B.E","MECHANICAL ENGINEERING","regular","2013","8","58735-b.e.pdf.pdf","1","","","","","","","","","","","","","","","","","","","ADHIYAMAAN COLLEGE OF ENGINEERING","ANNA UNIVERSITY","M.E","ENGINEERING DESIGN","regular","2015","10","40932-m.e.pdf.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_edu VALUES("S17MEC001","NATIONAL HIGH SCHOOL","state","2004","86","94319-xth-cert.pdf","1","SRI VIJAY VIDHYALAYA BOYS HIGHER SECONDARY SCHOOL","state","MATHS BIOLOGY","2006","80","49588-xii-th-cert.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","MADHA ENGINEERING COLLEGE","ANNA UNIVERSITY","B.E.","MECHANICAL","regular","2010","80","37560-ug-degree.pdf","1","","","","","","","","","","","","","","","","","","","COLLEGE OF ENGINEERING GUINDY","ANNA UNIVERSITY","M.E.","MANUFACTURING SYSTEMS AND MANAGEMENT","regular","2013","9","88889-pg-degree.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","COLLEGE OF ENGINEERING GUINDY","ANNA UNIVERSITY","MANUFACTURING","MECHANICAL","regular","2013","","PERFORMANCE EVALUATION OF CRYOGENIC COOLING IN REAMING PROCESS FOR TITANIUM ALLOYS","Dr. M. PRADEEP KUMAR","","1","COLLEGE OF ENGINEERING GUINDY","ANNA UNIVERSITY","MANUFACTURING","MECHANICAL","regular","2013","2017","PERFORMANCE EVALUATION OF CRYOGENIC COOLING IN REAMING PROCESS FOR TITANIUM ALLOYS","Dr. M. PRADEEP KUMAR","5331-phd-degree.pdf","1","","","","","","","","","","","");
INSERT INTO mec_fac_edu VALUES("S17MEC004","KONGU MATRIC HIGHER SEC SCHOOL","state","2007","86","71716-s-10.pdf","1","SRI VIJAY VIDHYALAYA BOYS HIGHER SEC SCHOOL","state","COMPUTER SCIENCE","2009","89","53195-s-12.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","ADHIYAMAAN COLLEGE OF ENGINEERING","Anna University ","BE","MECHANICAL ENGINEERING ","regular","2013","82","48539-s-ug.pdf","1","","","","","","","","","","","","","","","","","","","KONGU ENGINEERING COLLEGE","Anna University ","ME","ENGINEERING DESIGN","regular","2015","9","93714-s-pg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","ADHIYAMAAN COLLEGE OF ENGINEERING","Anna University ","PhD","Mechanical Enginnering","parttime","2018-01","","Performance Evaluation of Different types of Cutting Tools in Milling Process","DR.L.SHAKEEL AHMED","","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_edu VALUES("S17MEC015","MAHATMA GANDHI ENGLISH MEDIUM HIGH SCHOOL","state","2008","84","94499-sslc.pdf","1","VIDYAVAHINI PU COLLEGE","state","MATHS, PHYSICS, CHEMISTRY, COMPUTER SCIENCE","2010","52","21890-pu.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","R.L.JALAPPA INSTITUTE OF TECHNOLOGY","VISVESVARAYA TECHNOLOGICAL UNIVERSITY, BELGAUM","B.E.","MECHANICAL ENGINEERING","regular","2014","64","9206-be.pdf","1","","","","","","","","","","","","","","","","","","","ADICHUNCHUCHANAGIRI INSTITUTE OF TECHNOLOGY ","VISVESVARAYA TECHNOLOGICAL UNIVERSITY, BELAGAVI","M.TECH","THERMAL POWER ENGINEERING","regular","2016","76","88544-m.tech.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_edu VALUES("S17MEC022","PRIVTATE","state","2007","62","65241-10th-front.pdf","1","Green Valley Matric Higher Secondary School","state","MATHS, PHYSICS, CHEMISTRY, COMPUTER SCIENCE","2009","70","40725-12th-front.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","MAHARAJA ENGINEERING COLLEGE","ANNA UNIVERSITY CHENNAI","B.E.","MECHANICAL ENGINEERING","regular","2013","8","34578-b.e.-degree-front.pdf","1","","","","","","","","","","","","","","","","","","","COIMBATORE INSTITUTE OF TECHNOLOGY","ANNA UNIVERSITY, CHENNAI","M.E.","HEAT POWER ENGINEERING","regular","2015","7","61121-m.e.-degree-front.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_edu VALUES("S17MEC025","BALAMANDIR MATRIC. HIGHER SECONDARY SCHOOL","state","2009","80","2052-10th.pdf","1","JEEVA VELU RESIDENTIAL HIGHER SECONDARY SCHOOL","state","BIO MATHS","2011","84","6268-12th.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","SKP ENGINEERING COLLEGE","ANNA UNIVERSITY , CHENNAI","BE ","AERONAUTICAL ENGINEERING","regular","2015","80","43113-aero--certificates.pdf","1","","","","","","","","","","","","","","","","","","","ARUNAI ENGINEERING COLLEGE ","ANNA UNIVERSITY, CHENNAI","ME","THERMAL ENGINEERING","regular","2017","85","75676-thermal-engg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_edu VALUES("S17MEC029","GOVT JUNIOUR COLLEGE","state","2005","46","36121-sslc.pdf","1","HEA POLYTECHNIC","state","MECHANICAL ENGINEERING","2009","60","63992-dip-corse-complte.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","EPCET","VISVESVARAYA TECHNOLOGICAL UNIVERSITY, BELGAUM","BE","MECHANICAL ENGINEERING","regular","2013","67","4527-engg-corse-complete.pdf","1","","","","","","","","","","","","","","","","","","","UVCE","BANGALORE UNIVERSITY","ME","THERMAL SCIENCE ENGINEERING","regular","2017","85","90252-img_6333.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_edu VALUES("S18MEC016","GURUDHRONACHARYA HS ONNALVADI","state","2007","72","95957-10th.pdf","1","SWATHI MATRIC HSS HOSUR","state","MATHS BIOLOGY","2009","57","37914-12th.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","MVJ COLLEGE OF ENGINEERING BANGALORE","VTU","B.E.","INDUSTRIAL ENGINEERING AND MANAGEMENT","regular","2013","72","55709-ug.pdf","1","","","","","","","","","","","","","","","","","","","ADHIYAMAAN COLLEGE OF ENGINEERING HOSUR","ANNA UNIVERSITY","M.E.","ENGINEERING DESIGN","regular","2015","9","8414-pg.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_edu VALUES("S18MEC026","GOVERNMENT HIGHER SECONDARY SCHOOL","state","2007","74","38538-10th-mark-sheet.pdf","1","GOVERNMENT HIGHER SECONDARY SCHOOL","state","MATHS, PHYSICS, CHEMISTRY, BIOLOGY","2009","84","86084-12th-mark-sheet.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","UNIVERSITY COLLEGE OF ENGINEERING,ARNI","ANNA UNIVERSITY CHENNAI","B.E.,","MECHANICAL ENGINEERING","regular","2013","7","1450-b.e-degree-certificate.pdf","1","","","","","","","","","","","","","","","","","","","RAJALAKSHMI ENGINEERING COLLEGE","ANNA UNIVERSITY","M.E.,","ENGINEERING DESIGN","regular","2015","8","66360-m.e-[degree-certificate].pdf.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_edu VALUES("S18MEC028","GOVERNMENT HIGHER SECONDARY SCHOOL","state","2001","56","58772-10th.pdf","1","ELUMALAI POLYTECHNIC COLLEGE","state","AUTOMOBILE ENGINEERING","2007","76","63072-diploma.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","THIRUVALLUVAR ENGINEERING AND TECHNILOGY","ANNA UNIVERSITY","B.E","MECHANICAL ENGINEERING","regular","2010","64","44976-ug-pdf.pdf","1","","","","","","","","","","","","","","","","","","","KONGU ENGINEERING COLLEGE","ANNA UNIVERSITY","M.E","ENGINEERING DESIGN","regular","2013","7","68793-pg-pdf.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_edu VALUES("S18MEC032","ST JOHNS MATRICULATION HIGHER SECONDARY SCHOOL","state","1994","68","37897-10th-mark-sheet-anin.pdf","1","VANA VANI MATRICULATION HR SECONDARY SCHOOL","state","MATHS, PHYSICS, CHEMISTRY, BIOLOGY","1996","69","99500-12-th-marks-sheet-anin.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","G.K.M COLLEGE OF ENGINEERING","MADRAS UNIVERSITY","B.E.","MECHANICAL ENGINEERING","regular","2001","63","2389-b.e-certificate-anin.pdf","1","","","","","","","","","","","","","","","","","","","SRI VENKTESWARA COLLEGE OF ENGINEERING","ANNA UNIVERSITY","M.E.","THERMAL  ENGINEERING","regular","2005","69","97100-m.e-certificate-anin.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","ANNA UNIVERSITY","ANNA UNIVERSITY","ENERGY ENGINEERING","MECHANICAL ENGINEERING","regular","2008-07","2016-08","INVESTIGATIONS ON THERMOSYPHON BASED SOLAR THERMAL FLAT PLATE COLLECTORS WITH NANOFLUIDS","DR. E. NATRAJAN","50890-phd-certificate-anin.pdf","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_edu VALUES("S99MEC019","A P RESIDENTIAL SCHOOL FOR BOYS","state","1989","83","13918-tenth-certificate.pdf","1","GOVERNMENT JUNIOR COLLEGE","state","MATHEMATICS PHYSICS CHEMISTRY","1991","61","98561-plus-two-certificate.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","G PULLA REDDY ENGINEERING COLLEGE","SRI KRISHNADEVARAYA UNIVERSITY","BACHELOR OF ENGINEERING","MECHANICAL ENGINEERING","regular","1996","64","48323-b.e.degree-certificate.pdf","1","","","","","","","","","","","","","","","","","","","KUMARAGURU COLLEGE OF TECHNOLOGY","BHARATHIAR UNIVERSITY","MASTER OF ENGINEERING","INDUSTRIAL ENGINEERING","regular","1999","70","96038-m.e.degree-certificate.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","JAWAHARLAL NEHRU TECHNOLOGICAL UNIVERSITY ANANTAPU","JAWAHARLAL NEHRU TECHNOLOGICAL UNIVERSITY ANANTAPU","RELIABILITY ENGINEERING","MECHANICAL ENGINEERING","parttime","2007-09","2013-07","OPTIMIZATION OF REDUNDANCY ALLOCATION FOR SERIES PARALLEL SYSTEMS WITH MULTIPLE CONSTRAINTS AND SENS","DR D.MAHESWAR AND DR G.RANGANA","12344-ph.d-convocation-certificate.pdf","1","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_edu VALUES("S99MEC020","GOVERNTMENT HIGH SCHOOL, ","state","1986","73","70269-s-s-l-c.pdf","1","MUNICIPAL HIGHER SECONDARY SCHOOL, FORT, SALEM","state","MATHEMATICS, PHYSICS, CHEMISTRY, COMMERCE","1988","65","6854-h-s-c.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","VMKV ENGINEERING COLLEGE, SALEM","UNIVERSITY OF MADRAS","BE ","MECHANICAL ENGINEERING","regular","1994","63","45880-be-degree.pdf","1","","","","","","","","","","","","","","","","","","","GOVERNMENT COLLEGE OF ENGINEERING, SALEM","UNIVERSITY OF MADRAS","ME","COMPUTER AIDED DESIGN","regular","1997","69","82622-me-degree.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","ANNA UNIVERSITY, CHENNAI","ANNA UNIVERSITY, CHENNAI","SIX SIGMA","MECHANICAL ENGINEERING","parttime","2008-04","2016","INVESTIGATIONS ON ACHIEVING SIX SIGMA LEVEL QUALITY THROUGH DMAIC PHASES IN SMALL SIZE FURNACE MANUF","Dr. S. MUTHU","56517-phd-degree.pdf","1","","","","","","","","","","","","","","","","","","","","","","");





CREATE TABLE `mec_fac_exp` (
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
  `otkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO mec_fac_exp VALUES("S04MEC035","The Rajaas Engineering College","Lecturer","1994-06-05","1995-12-20","To do Apprenticeship Trainining in SETC Ltd","The Rajaas Engineering College","Lecturer","1997-06-05","1999-05-10","Completed Apprenticeship Trainining in SETC Ltd","JAYAM COLLEGE OF ENGG & TECH","Lecturer","2001-02-01","2005-12-09","PERSONAL","ADHIYAMAAN COLLEGE OF ENGINEERING","ASSISTANT PROFESSOR","2005-09-19","2016-02-29","PERSONAL","RAJALAKSHMI INST OF TECH","ASSOCIATE PROFESSOR","2016-03-01","2018-05-25","PERSONAL","0000-00-00","0000-00-00","0000-00-00","0000-00-00","33694-pg4.pdf","5","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_exp VALUES("S07MEC034","Ratnavel Subramaniam College of Engineering and Te","Lecturer","2002-06-05","2005-06-10","Personal","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","0000-00-00","0000-00-00","0000-00-00","0000-00-00","8814-experience-rvs.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_exp VALUES("S12MEC006","","","","","","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","0000-00-00","0000-00-00","0000-00-00","0000-00-00","","","","","","","","","","","","","","","","","GEE VEE Fabrications pvt ltd.Hosur","PRODUCTION SUPERVISOR","FABRICATION AND ERECTION","2007-02-02","2010-02-10","TO DO HIGHER STUDIES","53764-industry-exp.pdf","1","","","","","","","","");
INSERT INTO mec_fac_exp VALUES("S17MEC001","COLLEGE OF ENGINEERING GUINDY","RESEARCH SCHOLAR AND TEACHING ","2013-07-15","2016-06-09","Ph.D THESIS SUBMITTED","RAJALAKSHMI ENGINEERING COLLEGE, CHENNAI","ASSISTANT PROFESSOR","2016-06-13","2017-06-15","PERSONAL","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","0000-00-00","0000-00-00","0000-00-00","0000-00-00","1483-phd-exp.pdf","2","PARAMVEER POLYTECHNIC COLLEGE","LECTURER","2010-07-02","2011-07-29","PG STUDIES","55391-exp-cert.pdf","1","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_exp VALUES("S17MEC004","EXCEL COLLEGE OF ENGINEERING AND TECHNOLOGY","ASSISTANT PROFESSOR","2016-06-25","2017-07-24","GOT JOB IN ANOTHER COLLEGE","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","0000-00-00","0000-00-00","0000-00-00","0000-00-00","92640-excel.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_exp VALUES("S18MEC016","NARASUS SARATHY INSTITUTE OF TECHNOLOGY","ASSISTANT PROFESSOR","2015-05-04","2016-07-21","PERSONAL","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","0000-00-00","0000-00-00","0000-00-00","0000-00-00","55956-narasus-exp.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_exp VALUES("S18MEC026","DHANALAKSHMI SRINIVASAN COLLEGE OF ENGINEERING AND","ASSISTANT PROFESSOR","2015-07-06","2017-11-06","FAMILY PROBLEM","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","0000-00-00","0000-00-00","0000-00-00","0000-00-00","8195-experience-certificate.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_exp VALUES("S18MEC028","UNITED INSTITUTE OF TECHNOLOGY ","ASSISTANT PROFESSOR","2013-06-05","2018-06-11","DUE TO NEAREST TO NATIVE PLACE","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","","","0000-00-00","0000-00-00","","0000-00-00","0000-00-00","0000-00-00","0000-00-00","15852-releaving-order.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_exp VALUES("S18MEC032","Kanchi Pallavan Engineering College","Lecturer","2005-08-10","2005-11-30","personal ","MADHA ENGINEERING COLLEGE","ASSISTANT PROFESSOR","2006-07-01","2011-11-25","personal ","PANIMALAR INSTITUTE OF TECHNOLOGY","ASSISTANT PROFESSOR","2011-12-07","2014-05-31","personal ","ER. PERUMAL MANIMEGALAI COLLEGE OF ENGINEERING","ASSOCIATE PROFESSOR","2016-03-29","2016-08-11","personal ","ALLIANCE UNIVERSITY","ASSOCIATE PROFESSOR","2016-11-22","2018-03-26","personal ","0000-00-00","0000-00-00","0000-00-00","0000-00-00","33391-experience-kanchi-pallavan.pdf","5","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");





CREATE TABLE `mec_fac_funpat` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `patkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mec_fac_glc` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `conkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

INSERT INTO mec_fac_glc VALUES("1","S14MEC013","2013-2014","","","0000-00-00","0000-00-00","0000-00-00","","","","","","DISENO 2K14","STUDY OF DYNAMIC MECHANICAL PROPERTIES OF HYBRID P","ADHIYAMAAN COLLEGE OF ENGINEERING, HOSUR","3","2014-02-26","2014-03-27","0000-00-00","national","","68649-diseno.pdf","1");
INSERT INTO mec_fac_glc VALUES("2","S14MEC013","2013-2014","","","0000-00-00","0000-00-00","0000-00-00","","","","","","RESEARCH & ADVANCES IN MECHANI","IMPACT DAMAGE CHARACTERISATION OF HYBRID POLYPROPY","PSR ENGINEERING COLLEGE, VIRUDHUNAGAR","2","2014-03-28","2014-03-29","0000-00-00","national","","49077-psr.pdf","1");
INSERT INTO mec_fac_glc VALUES("3","S14MEC013","2013-2014","","","0000-00-00","0000-00-00","0000-00-00","","","","","","FUTURISTICS TRENDS IN MECHANIC","INVESTIGATION OF IMPACT PROPERTIES OF POLYPROPYLEN","THIRUVALLUVAR COLLEGE OF ENGINEERING AND TECHNOLOG","2","2014-03-01","2014-03-02","0000-00-00","international","","10732-int-conf.pdf","1");
INSERT INTO mec_fac_glc VALUES("4","S17MEC001","2017-2018","","","0000-00-00","0000-00-00","0000-00-00","","","","","","CDAMIES","EXPERIMENTAL INVESTIGATION OF ULTRASONIC ASSISTED ","NIT TRICHY","3","2018-01-18","2018-01-20","0000-00-00","international","","14917-cdamies-2018-nit.pdf","1");
INSERT INTO mec_fac_glc VALUES("5","S17MEC001","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","IMEC 2014","EXPERIMENTAL INVESTIGATION OF CRYOGENIC COOLING IN","NIT TRICHY","3","2014-06-13","2014-06-15","0000-00-00","international","","36004-imec-2014-nit.pdf","1");
INSERT INTO mec_fac_glc VALUES("6","S17MEC001","2012-2013","","","0000-00-00","0000-00-00","0000-00-00","","","","","","INCAMA 2013","TAGUCHI METHOD BASED OPTIMIZATION OF DRILLING PARA","KALASALINGAM UNIVERSITY","3","2013-03-28","2013-03-30","0000-00-00","international","","15291-incama-2013.pdf","1");
INSERT INTO mec_fac_glc VALUES("7","S17MEC001","2018-2019","","","0000-00-00","0000-00-00","0000-00-00","","","","","","ICDMC 2019","MULTI RESPONSE OPTIMIZATION OF DRILLING AISI 1045 ","VEL TECH UNIVERSITY","2","2019-03-28","2019-03-29","0000-00-00","international","","84223-vel-tech_1.pdf","1");
INSERT INTO mec_fac_glc VALUES("8","S17MEC001","2016-2017","","","0000-00-00","0000-00-00","0000-00-00","","","","","","IMECE 2016","OPTIMIZATION OF REAMING PROCESS PARAMETERS FOR TIT","ASME, PHOENIX, ARIZONA","7","2016-11-11","2016-11-17","0000-00-00","international","","90896-asme-shakeel-2016-draft-paper.pdf","1");
INSERT INTO mec_fac_glc VALUES("9","S17MEC015","2015-2016","","","0000-00-00","0000-00-00","0000-00-00","","","","","","NATIONAL CONFERENCE ON EMERGIN","STUDY ON EFFECT OF BIODIESEL BLENDS ON PERFORMANCE","DEPARTMENT OF MECHANICAL ENGINEERING, AIT CHIKKAMA","2","2016-04-29","2016-04-30","0000-00-00","national","","34701-national-conference.pdf","1");
INSERT INTO mec_fac_glc VALUES("10","S17MEC022","2015-2016","","","0000-00-00","0000-00-00","0000-00-00","","","","","","NATIONAL CONFERENCE ON ADVANCE","DESIGN AND DEVELOPMENT PETRO-ELECTRIC ECHO FRIENDL","SASURIE COLLEGE OF ENGINEERING","2","2016-04-04","2016-04-05","0000-00-00","national","","96403-sasurie-1.pdf","1");
INSERT INTO mec_fac_glc VALUES("11","S17MEC022","2015-2016","","","0000-00-00","0000-00-00","0000-00-00","","","","","","NATIONAL CONFERENCE ON ADVANCE","AUTOMATED SHEET SHEARING MACHINE BY USING MOTOR AN","SASURIE COLLEGE OF ENGINEERING","2","2016-04-04","2016-04-05","0000-00-00","national","","10326-sasurie-2.pdf","1");
INSERT INTO mec_fac_glc VALUES("12","S18MEC016","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","ICETS 15","DIMENSIONAL DEVIATION AND SURFACE ROUGHNESS MEASUR","MUTHAYAMMAL COLLEGE OF ENGINEERING RASIPURAM","2","2015-03-05","2015-03-06","0000-00-00","international","","85946-conference.pdf","1");
INSERT INTO mec_fac_glc VALUES("13","S18MEC016","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","ETET 2015","CO2 LASER CUTTING ON POLYMERS A REVIEW","JYOTHI INSTITUTE OF TECHNOLOGY","2","2015-02-20","2015-02-21","0000-00-00","national","","42176-conference1.pdf","1");
INSERT INTO mec_fac_glc VALUES("14","S18MEC016","2015-2016","","","0000-00-00","0000-00-00","0000-00-00","","","","","","NCIET 2016","OPTIMIZATION OF SHAFT USED IN KAPLAN TURBINE","NARASUS SARATHY INSTITUTE OF TECHNOLOGY","1","0000-00-00","0000-00-00","2016-04-01","national","","63499-conference3.pdf","1");
INSERT INTO mec_fac_glc VALUES("15","S17MEC004","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","ICESES - 2014 ","Analytical Simulation of Fracture Analysis and Geo","Coimbatore Institute of Technology","2","2014-12-16","2014-12-18","0000-00-00","international","","69350-cit.pdf","1");
INSERT INTO mec_fac_glc VALUES("16","S17MEC004","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","ADVANCE IN MATERIALS,MANUFACTU","Development of Ridge Gourd Fiber Reinforced Vinyl ","National Institute of Technology – Trichy","3","2015-04-09","2015-04-11","0000-00-00","international","","59947-nit.pdf","1");
INSERT INTO mec_fac_glc VALUES("17","S17MEC004","2011-2012","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Advanced Materials and Process","Tsunami Detection Using Composite Smart Materials","Prist University – Thanjavur","2","2012-02-17","2012-02-18","0000-00-00","national","","15048-prist.pdf","1");
INSERT INTO mec_fac_glc VALUES("18","S17MEC004","2011-2012","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Renewable Energy Utilisation-I","Solar Power Air Conditioning System in a Green Bui","Gandhigram Rural Institute – Gandhigram","2","2012-01-05","2012-01-06","0000-00-00","national","","72700-gand.pdf","1");
INSERT INTO mec_fac_glc VALUES("19","S99MEC019","2006-2007","","","0000-00-00","0000-00-00","0000-00-00","","","","","","PRODUCTION AND OPERATIONS MANA","Optimum Reliability Evaluation of a Mechanical Sys","DEPARTMENT OF MANUFACTURING  ENGINEERING ANNAMALAI","2","2007-03-23","2007-03-24","0000-00-00","national","","91476-conference-1.pdf","1");
INSERT INTO mec_fac_glc VALUES("20","S99MEC019","2011-2012","","","0000-00-00","0000-00-00","0000-00-00","","","","","","MODELING OPTIMIZATION AND COMP","RELIABILITY OPTIMIZATION MODEL FOR REDUNDANT SYSTE","NOORUL ISLAM CENTRE FOR HIGHER EDUCATION  KUMARACO","2","2012-04-10","2012-04-11","0000-00-00","international","","92093-conference-2.pdf","1");
INSERT INTO mec_fac_glc VALUES("21","S99MEC019","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","2nd INTERNATIONAL CONFERENCE O","A REVIEW ON PHASE CHANGE MATERIAL FOR SOLAR AIR DR","DEPARTMENT OF MECHANICAL ENGINEERING  MUTHYAMMAL C","2","2015-03-05","2015-03-06","0000-00-00","international","","55598-conference-3.pdf","1");
INSERT INTO mec_fac_glc VALUES("22","S99MEC020","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","INNOVATIVE RESEARCH TECHNIQUES","Enhancing the resistance of localized corrosion an","KALAIGNAR KARUNANIDHI INSTITUE OF TECHNOLOGY, COIM","2","2015-02-12","2015-02-13","0000-00-00","national","","79411-paper-presentation1-kit.pdf","1");
INSERT INTO mec_fac_glc VALUES("23","S99MEC020","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","INNOVATIVE RESEARCH TECHNIQUES","Comparing the performance of nozzle multi-hole in ","KALAIGNAR KARUNANIDHI INSTITUE OF TECHNOLOGY, COIM","2","2015-02-12","2015-02-13","0000-00-00","national","","65348-paper-presentation2-kit.pdf","1");
INSERT INTO mec_fac_glc VALUES("24","S99MEC020","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International conference on en","Enhancing the resistance of localized corrosion an","MUTHAYAMMAL COLLEGE OF ENGINEERING, RASIPURAM","2","2015-03-05","2015-03-06","0000-00-00","international","","3664-paper-presentation3-mce.pdf","1");
INSERT INTO mec_fac_glc VALUES("25","S99MEC020","2013-2014","","","0000-00-00","0000-00-00","0000-00-00","","","","","","INTERNATIONAL CONFERENCE ON MO","FE Analysis of artificial bird strike on an aircra","NOORUL ISLAM CENTER FOR HIGHER EDUCATION, KANYAKUM","2","2014-04-10","2014-04-11","0000-00-00","international","","5058-paper-presentation7-noorul-islam.pdf","1");
INSERT INTO mec_fac_glc VALUES("26","S99MEC020","2013-2014","","","0000-00-00","0000-00-00","0000-00-00","","","","","","INTERNATIONAL CONFERENCE ON MO","Effect of swept back on vertical axis wind turbine","NOORUL ISLAM CENTER FOR HIGHER EDUCATION, KANYAKUM","2","2014-04-10","2014-04-11","0000-00-00","international","","83022-paper-presentation8-noorul-islam.pdf","1");
INSERT INTO mec_fac_glc VALUES("27","S99MEC020","2008-2009","","","0000-00-00","0000-00-00","0000-00-00","","","","","","National conference on evolvin","Field failure processing of CNC lathes","THE OXFORD COLLEGE OF ENGINEERING, BANGALORE","2","2009-03-13","2009-03-14","0000-00-00","national","","80657-paper-presentation5-oxford.pdf","1");
INSERT INTO mec_fac_glc VALUES("28","S99MEC020","2008-2009","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Emerging Trends in Engineering","Maintenance of CNC lathes","SHIRIDI SAI ENGINEERING COLLEGE, BANGALORE","2","2009-04-29","2009-04-30","0000-00-00","national","","71249-paper-presentation4-shridi.pdf","1");
INSERT INTO mec_fac_glc VALUES("29","S99MEC020","2017-2018","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International Conference on Re","Evaluation Machining and Tribological Properties o","CHERAN COLLEGE OF ENGINEERING, COIMBATORE","2","2018-03-15","2018-03-16","0000-00-00","international","","89691-paper-presentation6-cce.pdf","1");
INSERT INTO mec_fac_glc VALUES("30","S18MEC026","2018-2019","","","0000-00-00","0000-00-00","0000-00-00","","","","","","NATIONAL CONFERENCE ON  ROBOTI","MECHANICAL PROPERTY ANALYSIS OF TREATED AND UNTREA","RAJALAKSHMI ENGINEERING COLLEGE","1","0000-00-00","0000-00-00","2019-03-02","national","","45713-rec-conference.pdf","1");
INSERT INTO mec_fac_glc VALUES("31","S18MEC026","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","NATIONAL CONFERENCE ON PROMISI","DYNAMIC MECHANICAL AND THERMAL STABILITY OF BIO CO","JEPPIAAR INSTITUTE OF TECHNILOGY","1","0000-00-00","0000-00-00","2015-03-25","national","","35818-certificate-1_2.pdf","1");
INSERT INTO mec_fac_glc VALUES("32","S13MEC005","2013-2014","","","0000-00-00","0000-00-00","0000-00-00","","","","","","4th National Conference on Adv","Adhesive Wear Behaviour of B4C Reinforced with Al5","Sri Balaji Chockalingam Engg College ","2","2014-03-20","2014-03-21","0000-00-00","national","","86329-ncame-2014.pdf","1");
INSERT INTO mec_fac_glc VALUES("33","S12MEC006","2016-2017","","","0000-00-00","0000-00-00","0000-00-00","","","","","","OPTIMIZATION TECHNIQUES IN ENG","Characteristics of jute and Glass fibrre Reinforce","BANNARI AMMAN INSTITUTE OF TECHNOLOGY","1","0000-00-00","0000-00-00","2017-03-17","national","","57978-bannari-amman-clg.pdf","1");
INSERT INTO mec_fac_glc VALUES("34","S07MEC034","2017-2018","Guest Lecture","1","0000-00-00","0000-00-00","2017-06-13","Finite Element Analysis","Adhiyamaan Polytechnic College","Hosur","0","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","");
INSERT INTO mec_fac_glc VALUES("35","S13MEC005","2012-2013","","","0000-00-00","0000-00-00","0000-00-00","","","","","","ADVANCED IN AUTOMOBILES","PREDICITION OF WEAR BEHAVIOUR OF ALUMINIUM-MAGNESI","DEPT.OF MECHANICAL ENGINEERING, ADHIYAMAAN COLLEGE","2","2013-01-09","2013-01-10","0000-00-00","national","","7278-ncaa-2013.pdf","1");
INSERT INTO mec_fac_glc VALUES("36","S12MEC006","2017-2018","","","0000-00-00","0000-00-00","0000-00-00","","","","","","National Conference on resent ","Analysis of failure mechanism for 90 degree elbow ","Anand Institute of higher technology","1","0000-00-00","0000-00-00","2018-03-02","national","","26648-anandh-clg-conf.pdf","1");
INSERT INTO mec_fac_glc VALUES("37","S13MEC005","2017-2018","","","0000-00-00","0000-00-00","0000-00-00","","","","","","1st INTERNATIONAL CONFERENCE O","EVALUATION OF MECHANICAL AND TRIBOLOGICAL PROPERTI","GOLDEN VALLEY INTEGRATED CAMPUS ","2","2017-11-16","2017-11-17","0000-00-00","international","","67796-icatems-2017.pdf","1");
INSERT INTO mec_fac_glc VALUES("38","S07MEC034","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International Conference on \"I","Agricultural and Industrial Wastes in Aluminium Me","Kalaignar Karunanidhi Institute of Technology, Coi","2","2015-02-12","2015-02-13","0000-00-00","international","","40546-kkit-coimbatore.pdf","1");
INSERT INTO mec_fac_glc VALUES("39","S13MEC005","2016-2017","","","0000-00-00","0000-00-00","0000-00-00","","","","","","SECOND INTERNATIONAL CONFERENC","INVESTIGATION OF MICROSTRUCTURAL COMPOSITES ","DEP.OF PHYSICS, TRIPURA UNIVERSITY","3","2017-02-16","2017-02-18","0000-00-00","international","","74074-icms-2017.pdf","1");
INSERT INTO mec_fac_glc VALUES("40","S07MEC034","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International Conference on Re","Production and Mechanical Properties of Fly Ash an","Mahabarathi Engineering College, Chinnasalem","2","2015-02-13","2015-02-14","0000-00-00","international","","91689-mahabarathi-conference.pdf","1");
INSERT INTO mec_fac_glc VALUES("41","S13MEC005","2017-2018","","","0000-00-00","0000-00-00","0000-00-00","","","","","","1st INTERNATIONAL CONFERENCE O","MECHANICAL AND WEAR BEHAVIOR OF Al HYBRID COMPOSIT","GURU NANAK INSTITUTIONS","2","2018-01-05","2018-01-06","0000-00-00","international","","22347-icime-2018.pdf","1");
INSERT INTO mec_fac_glc VALUES("42","S07MEC034","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","2nd International Conference o","Mechanical Properties of Rice Hush Ash-Graphite Re","Muthayammal College of Engineering, Rasipuram","2","2015-03-05","2015-03-06","0000-00-00","international","","31279-muthayammal-rice-husk.pdf","1");
INSERT INTO mec_fac_glc VALUES("43","S07MEC034","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","2nd International Conference o","A Review on Fabrication of Aluminium Matrix Compos","Muthayammal College of Engineering, Rasipuram","2","2015-03-05","2015-03-06","0000-00-00","international","","58499-muthayammal-review.pdf","1");
INSERT INTO mec_fac_glc VALUES("44","S08MEC018","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","Application of Rapid Prototypi","A review on mechanical behavior of rubber composit","Karpaga Vinayaga College of Engineering and Techno","2","2015-03-19","2015-03-20","0000-00-00","national","","87733-karpagam.pdf","1");
INSERT INTO mec_fac_glc VALUES("45","S08MEC018","2016-2017","","","0000-00-00","0000-00-00","0000-00-00","","","","","","International conference on Ad","Review on thermal behavior of synthetic rubber com","Department of mettalurgical Engineering Government","2","2017-03-06","2017-03-07","0000-00-00","international","","61229-metallurgical-salem.pdf","1");
INSERT INTO mec_fac_glc VALUES("46","S12MEC023","2017-2018","Guest lecture","1","0000-00-00","0000-00-00","2017-08-10","wire electrical discharge machining","Adhiyamaan ploytechnic college","Hosur","0","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","");
INSERT INTO mec_fac_glc VALUES("47","S12MEC023","2012-2013","","","0000-00-00","0000-00-00","0000-00-00","","","","","","OPTEST 2012","Parametric optimization of wire electrical dischar","Bannari Amman Institute of Technology","2","2012-10-20","2012-10-21","0000-00-00","state","","23367-conferencefinal.pdf","1");
INSERT INTO mec_fac_glc VALUES("48","S12MEC023","2014-2015","","","0000-00-00","0000-00-00","0000-00-00","","","","","","MINDKRAFT-2014","WEDM of Mild steel using Copper and molybdenum wir","VSA College of Engineering","1","0000-00-00","0000-00-00","2014-06-22","national","","93560-vsanew.pdf","1");
INSERT INTO mec_fac_glc VALUES("49","S04MEC035","2018-2019","Guest lecture","1","0000-00-00","0000-00-00","2019-04-30","Overview on Gas Dynamics","Jayam College of Engineering and Technology","Dharmapuri","0","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","");





CREATE TABLE `mec_fac_member` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `reskey` int(1) DEFAULT NULL,
  `aname1` varchar(50) DEFAULT NULL,
  `aissue1` varchar(10) DEFAULT NULL,
  `amy1` varchar(7) DEFAULT NULL,
  `acer1` varchar(100) DEFAULT NULL,
  `awakey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=latin1;

INSERT INTO mec_fac_member VALUES("1","S14MEC024","2017-2018","","","","","","TUTOR","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("2","S14MEC024","2016-2017","","","","","","TUTOR","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("3","S14MEC024","2015-2016","","","","","","TUTOR","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("4","S14MEC024","2014-2015","","","","","","TUTOR","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("5","S14MEC024","1987-1988","IEI","AM1589434","LIFE TIME","9744-enrol_000am1589434_0icc_00173_20150605143402.pdf","1","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_member VALUES("6","S14MEC013","2015-2016","THE INSTITUTION OF ENGINEERS(INDIA)","AM 159214-1","LIFELONG","39070-ie-id.pdf","1","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_member VALUES("7","S99MEC019","1987-1988","INSTITUTION OF ENGINEERS","F-119798-5","LIFE TIME","73121-iei-membership_svsb.pdf","1","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_member VALUES("8","S99MEC019","2018-2019","","","","","","I Year Coordinator","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("9","S17MEC015","2018-2019","","","","","","TUTOR","department","TUTOR","department","","","","","","","2","","","","","");
INSERT INTO mec_fac_member VALUES("10","S11MEC010","2011-2012","","","","","","TUTOR","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("11","S12MEC023","2012-2013","The institution of Engineers (India)","AM159203-6","life time","47493-ie-membership-pdf.pdf","1","DOM Lab incharge, NBA Team Member,Technical events","department","NBA Team Member","department","Technical events organizer","department","Students mentor","","","","4","","","","","");
INSERT INTO mec_fac_member VALUES("12","S12MEC023","2013-2014","","","","","","DOM Lab incharge, NBA Team Member,Technical events","department","Technical events organizer","department","NBA Team Member","department","Students mentor","department","","","4","","","","","");
INSERT INTO mec_fac_member VALUES("13","S12MEC023","2014-2015","","","","","","DOM Lab incharge, NBA Team Member,Technical events","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("14","S12MEC023","","","","","","","","","NBA Team Member","department","Technical events organizer","department","Students mentor","department","","","4","","","","","");
INSERT INTO mec_fac_member VALUES("15","S12MEC023","2015-2016","","","","","","DOM Lab incharge, NBA Team Member,Technical events","department","NBA Team Member","department","DOM Lab incharge","department","Technical events organizer","department","Students mentor","department","5","","","","","");
INSERT INTO mec_fac_member VALUES("16","S12MEC023","2016-2017","","","","","","DOM Lab incharge, NBA Team Member,Technical events","department","DOM Lab incharge","department","Technical events organizer","department","Students mentor","department","","","4","","","","","");
INSERT INTO mec_fac_member VALUES("17","S12MEC023","2017-2018","","","","","","DOM Lab incharge, NBA Team Member,Technical events","department","DOM Lab incharge","department","Technical events organizer","department","Students mentor","department","","","4","","","","","");
INSERT INTO mec_fac_member VALUES("18","S12MEC023","2018-2019","","","","","","DOM Lab incharge, NBA Team Member,Technical events","department","DOM Lab incharge","department","Technical events organizer","department","Students mentor","department","","","4","","","","","");
INSERT INTO mec_fac_member VALUES("19","S07MEC034","2007-2008","","","","","","TUTOR","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("20","S17MEC001","2016-2017","","","","","","CAM LAB INCHARGE","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("21","S17MEC001","2017-2018","","","","","","CAM LAB INCHARGE","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("22","S17MEC001","2018-2019","","","","","","CAM LAB INCHARGE","department","CONSULTANCY PROJECTS INCHARGE","department","","","","","","","2","","","","","");
INSERT INTO mec_fac_member VALUES("23","S17MEC001","2014-2015","","","","","","","","","","","","","","","","","MANF","UGC NEW DE","FEBRUAR","29684-manf.pdf","1");
INSERT INTO mec_fac_member VALUES("24","S18MEC028","2018-2019","","","","","","TUTOR , LAB INCHARGE","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("25","S17MEC022","2017-2018","","","","","","TUTOR","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("26","S17MEC022","2018-2019","","","","","","TUTOR","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("27","S18MEC016","2018-2019","","","","","","TUTORSHIP INCHARGE FOR FIRST YEAR","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("28","S18MEC016","2014-2015","IE","AM158935-3","3 YEARS","2637-ie.pdf","1","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_member VALUES("29","S17MEC001","2015-2016","","","","","","","","","","","","","","","","","CORE TEAM MEMBER","CEG ANNA U","FEBRUAR","4267-icmdm-2016.pdf","1");
INSERT INTO mec_fac_member VALUES("30","S17MEC001","2017-2018","","","","","","TUTORSHIP INCHARGE FOR FIRST YEAR","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("31","S17MEC001","2018-2019","","","","","","TUTORSHIP INCHARGE FOR SECOND YEAR","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("32","S17MEC001","2017-2018","","","","","","RESEARCH SUPERVISORSHIP","institute","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("33","S17MEC001","2017-2018","","","","","","DOCTORAL COMMITTEE MEMBER","out","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("34","S17MEC001","2018-2019","","","","","","DOCTORAL COMMITTEE MEMBER","out","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("35","S17MEC001","2016-2017","","","","","","REVIEWER FOR 8 INTERNATIONAL JOURNALS","out","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("36","S11MEC010","2011-2012","","","","","","TUTOR, TIME TABLE INCHARGE","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("37","S11MEC010","2012-2013","","","","","","TUTOR, TIME TABLE INCHARGE, METROLOGY LAB INCHARGE","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("38","S11MEC010","2013-2014","","","","","","TUTOR, TIME TABLE INCHARGE, METROLOGY LAB INCHARGE","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("39","S11MEC010","2014-2015","","","","","","TUTOR, TIME TABLE INCHARGE, METROLOGY LAB INCHARGE","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("40","S11MEC010","2015-2016","","","","","","TUTOR, TIME TABLE INCHARGE, METROLOGY LAB INCHARGE","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("41","S11MEC010","2016-2017","","","","","","TUTOR, TIME TABLE INCHARGE, METROLOGY LAB INCHARGE","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("42","S11MEC010","2017-2018","","","","","","TUTOR, TIME TABLE INCHARGE, METROLOGY LAB INCHARGE","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("43","S11MEC010","2018-2019","","","","","","TUTOR, TIME TABLE INCHARGE, METROLOGY LAB INCHARGE","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("44","S11MEC010","2014-2015","THE INSTITUTION OF ENGINEERS(INDIA)","AM158923-5","LIFE MEMBER","93017-saran-ie-pdf.pdf","1","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_member VALUES("45","S17MEC004","2017-2018","INDIAN SOCIETY FOR TECHNICAL EDUCATION","LM 116581","LIFE TIME","41186-iecard.pdf","1","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_member VALUES("46","S17MEC004","2017-2018","","","","","","TUTOR ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("47","S17MEC004","2018-2019","","","","","","TUTOR ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("48","S17MEC004","2017-2018","","","","","","DYNAMICS LAB INCHARGE","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("49","S17MEC004","2018-2019","","","","","","DYNAMICS LAB INCHARGE","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("50","S13MEC005","2015-2016","THE INSTITUTION OF ENGINEERS","AM158930-2","LIFE TIME","43210-iee.pdf","1","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_member VALUES("51","S13MEC005","2013-2014","","","","","","TUTOR ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("52","S13MEC005","2013-2014","","","","","","DYNAMICS LAB INCHARGE","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("53","S13MEC005","2014-2015","","","","","","TUTOR ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("54","S13MEC005","2014-2015","","","","","","DYNAMICS LAB INCHARGE","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("55","S13MEC005","2015-2016","","","","","","TUTOR ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("56","S13MEC005","2015-2016","","","","","","DYNAMICS LAB INCHARGE","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("57","S13MEC005","2016-2017","","","","","","TUTOR ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("58","S13MEC005","2017-2018","","","","","","TUTOR ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("59","S13MEC005","2018-2019","","","","","","TUTOR ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("60","S13MEC005","2013-2014","","","","","","TIME TABLE IN-CHARGE ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("61","S13MEC005","2014-2015","","","","","","TIME TABLE IN-CHARGE ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("62","S13MEC005","2015-2016","","","","","","TIME TABLE IN-CHARGE ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("63","S13MEC005","2013-2014","","","","","","PRACTICAL EXAM SCHEDULE IN-CHARGE ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("64","S13MEC005","2014-2015","","","","","","PRACTICAL EXAM SCHEDULE IN-CHARGE ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("65","S13MEC005","2015-2016","","","","","","PRACTICAL EXAM SCHEDULE IN-CHARGE ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("66","S13MEC005","2016-2017","","","","","","PRACTICAL EXAM SCHEDULE IN-CHARGE ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("67","S13MEC005","2017-2018","","","","","","PRACTICAL EXAM SCHEDULE IN-CHARGE ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("68","S13MEC005","2018-2019","","","","","","PRACTICAL EXAM SCHEDULE IN-CHARGE ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("69","S17MEC029","2017-2018","","","","","","TUTOR","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("70","S17MEC029","2018-2019","","","","","","TUTOR","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("71","S15MEC014","2018-2019","","","","","","TUTOR , LAB INCHARGE.NEWS LETTER INCHARGE ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("72","S15MEC014","2018-2019","","","","","","DEPUTY WARDEN-CAUVERY HOSTEL","institute","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("73","S15MEC014","2017-2018","","","","","","TUTOR , LAB INCHARGE.NEWS LETTER INCHARGE ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("74","S15MEC014","2016-2017","","","","","","TUTOR , LAB INCHARGE.NEWS LETTER INCHARGE ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("75","S15MEC014","2015-2016","","","","","","TUTOR , LAB INCHARGE.NEWS LETTER INCHARGE ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("76","S15MEC014","2017-2018","","","","","","DEPUTY WARDEN-CAUVERY HOSTEL","institute","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("77","S15MEC014","2016-2017","","","","","","DEPUTY WARDEN-CAUVERY HOSTEL","institute","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("78","S15MEC014","2015-2016","","","","","","DEPUTY WARDEN-CAUVERY HOSTEL","institute","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("79","S07MEC034","2008-2009","","","","","","TUTOR","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("80","S99MEC019","2015-2016","INSTITUTION OF ENGINEERS","F-119798-5","LIFE TIME","2874-iei-membership.pdf","1","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_member VALUES("81","S15MEC021","2015-2016","","","","","","TUTOR","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("82","S15MEC021","2016-2017","","","","","","TUTOR","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("83","S15MEC021","2017-2018","","","","","","TUTOR","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("84","S15MEC021","2018-2019","","","","","","TUTOR","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("85","S99MEC020","2009-2010","THE INDIAN SOCIETY FOR TECHNICAL EDUCATION","LM67453","LIFE MEMBER","18546-iste-membership.pdf","1","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_member VALUES("86","S99MEC020","2014-2015","THE INSTITUTION OF ENGINEERS","M-151437-1","LIFE MEMBER","16303-ie-membership.pdf","1","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_member VALUES("87","S99MEC020","2014-2015","","","","","","","","","","","","","","","","","GUIDED BEST PROJECT AWARD","THE INSTIT","2015-03","85254-ie---best-project-guided-award.pdf","1");
INSERT INTO mec_fac_member VALUES("88","S99MEC020","2008-2009","","","","","","MEMBER IN BOARD OF STUDIES, FRAMING THE CURRICULUM","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("89","S99MEC020","2009-2010","","","","","","MEMBER IN BOARD OF STUDIES, FRAMING THE CURRICULUM","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("90","S99MEC020","2010-2011","","","","","","MEMBER IN BOARD OF STUDIES, FRAMING THE CURRICULUM","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("91","S99MEC020","2011-2012","","","","","","MEMBER IN BOARD OF STUDIES, FRAMING THE CURRICULUM","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("92","S99MEC020","2012-2013","","","","","","MEMBER IN BOARD OF STUDIES, FRAMING THE CURRICULUM","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("93","S99MEC020","2013-2014","","","","","","MEMBER IN BOARD OF STUDIES, FRAMING THE CURRICULUM","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("94","S99MEC020","2014-2015","","","","","","MEMBER IN BOARD OF STUDIES, FRAMING THE CURRICULUM","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("95","S99MEC020","2015-2016","","","","","","MEMBER IN BOARD OF STUDIES, FRAMING THE CURRICULUM","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("96","S99MEC020","2016-2017","","","","","","MEMBER IN BOARD OF STUDIES, FRAMING THE CURRICULUM","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("97","S99MEC020","2017-2018","","","","","","MEMBER IN BOARD OF STUDIES, FRAMING THE CURRICULUM","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("98","S99MEC020","2018-2019","","","","","","MEMBER IN BOARD OF STUDIES, FRAMING THE CURRICULUM","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("99","S18MEC026","2018-2019","","","","","","TUTOR","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("100","S12MEC006","2012-2013","","","","","","TUTORSHIP WORK","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("101","S12MEC006","2014-2015","","","","","","TUTORSHIP WORK","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("102","S12MEC006","2015-2016","","","","","","TUTORSHIP WORK","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("103","S12MEC006","2016-2017","","","","","","TUTORSHIP WORK","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("104","S12MEC006","2017-2018","","","","","","TUTORSHIP WORK","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("105","S12MEC006","2018-2019","","","","","","TUTORSHIP WORK","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("106","S12MEC006","2012-2013","","","","","","CAD LAB IN CHARGE","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("107","S12MEC006","2017-2018","","","","","","PLACEMENT CO ORDINATOR","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("108","S12MEC006","2018-2019","","","","","","DISCIPLINE COMMITTEEINCHARGE ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("109","S12MEC006","2014-2015","INSTITUTION OF ENGINEERS","AM158344-2","LIFE MEMBER","13927-iei-membership.pdf","1","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_member VALUES("110","S12MEC006","2014-2015","","","","","","","","","","","","","","","","","GUIDED BEST PROJECT AWARD","THE INSTIT","2015-06","77246-best-project-award.pdf","1");
INSERT INTO mec_fac_member VALUES("111","S07MEC034","2009-2010","","","","","","TUTOR, EXAM CELL INCHARGE","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("112","S07MEC034","2010-2011","","","","","","TUTOR, EXAM CELL INCHARGE, DYNAMICS LAB INCHARGE","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("113","S07MEC034","2011-2012","","","","","","TUTOR, EXAM CELL INCHARGE, DYNAMICS LAB INCHARGE","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("114","S07MEC034","2012-2013","","","","","","TUTOR, EXAM CELL INCHARGE, DYNAMICS LAB INCHARGE","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("115","S07MEC034","2013-2014","","","","","","TUTOR, EXAM CELL INCHARGE, DYNAMICS LAB INCHARGE","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("116","S07MEC034","2014-2015","","","","","","TUTOR, EXAM CELL INCHARGE","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("117","S07MEC034","2016-2017","","","","","","TUTOR, EXAM CELL INCHARGE","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("118","S07MEC034","2017-2018","","","","","","TUTOR, EXAM CELL INCHARGE","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("119","S07MEC034","2018-2019","","","","","","TUTOR, EXAM CELL INCHARGE","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("120","S07MEC034","2014-2015","The Institution of Engineers (India)","M-151440-1","Life Member","15264-ie-membership.pdf","1","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_member VALUES("121","S08MEC018","2008-2009","","","","","","Tutor","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("122","S08MEC018","2009-2010","","","","","","Tutor,Engineering Practices Lab In-charge","Department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("123","S07MEC034","2013-2014","","","","","","","","","","","","","","","","","Best Project Guided","The Instit","March 2","52010-best-project-guided.pdf","1");
INSERT INTO mec_fac_member VALUES("124","S13MEC005","2015-2016","","","","","","","","","","","","","","","","","BEST PROJECT AWARD ","THE INSTIT","2017-03","11524-iee-2015.pdf","1");
INSERT INTO mec_fac_member VALUES("125","S08MEC018","2010-2011","","","","","","Tutor, Exam Cell , In-Charge Manufacturing Technol","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("126","S08MEC018","2011-2012","","","","","","Tutor, Exam Cell , In-Charge Manufacturing Technol","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("127","S08MEC018","2012-2013","","","","","","Tutor, Exam Cell , In-Charge Manufacturing Technol","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("128","S08MEC018","2013-2014","","","","","","Tutor, Exam Cell , In-Charge Manufacturing Technol","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("129","S08MEC018","2014-2015","","","","","","Tutor, Exam Cell , In-Charge Manufacturing Technol","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("130","S08MEC018","2015-2016","","","","","","Tutor, Exam Cell , In-Charge Manufacturing Technol","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("131","S08MEC018","2016-2017","","","","","","Tutor, Exam Cell , In-Charge Manufacturing Technol","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("132","S08MEC018","2017-2018","","","","","","Tutor, Exam Cell , In-Charge Manufacturing Technol","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("133","S08MEC018","2018-2019","","","","","","Tutor, Exam Cell , In-Charge Manufacturing Technol","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("134","S08MEC018","2010-2011","The Indian Society for Technical Education","67440","Life Member","63787-iste.pdf","1","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_member VALUES("135","S13MEC005","2016-2017","","","","","","","","","","","","","","","","","BEST PROJECT AWARD ","THE INSTIT","2017-03","37829-iee-2017.pdf","1");
INSERT INTO mec_fac_member VALUES("136","S13MEC005","2017-2018","","","","","","SEMINAR HALL IN-CHARGE ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("137","S13MEC005","2018-2019","","","","","","SEMINAR HALL IN-CHARGE ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("138","S13MEC005","2016-2017","","","","","","SEMINAR HALL IN-CHARGE ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("139","S13MEC005","2013-2014","","","","","","OFFICE COMMUNICATION ","department ","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("140","S13MEC005","2014-2015","","","","","","ANNA UNIV, AICTE,NBA,NAAC OFFICE COMMUNICATION ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("141","S13MEC005","2015-2016","","","","","","ANNA UNIV, AICTE,NBA,NAAC OFFICE COMMUNICATION ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("142","S13MEC005","2016-2017","","","","","","ANNA UNIV, AICTE,NBA,NAAC OFFICE COMMUNICATION ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("143","S13MEC005","2017-2018","","","","","","ANNA UNIV, AICTE,NBA,NAAC OFFICE COMMUNICATION ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("144","S13MEC005","2018-2019","","","","","","ANNA UNIV, AICTE,NBA,NAAC OFFICE COMMUNICATION ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("145","S14MEC011","2014-2015","","","","","","TUTOR ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("146","S14MEC011","2015-2016","","","","","","TUTOR ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("147","S14MEC011","2016-2017","","","","","","TUTOR ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("148","S14MEC011","2017-2018","","","","","","TUTOR ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("149","S14MEC011","2018-2019","","","","","","TUTOR ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("150","S14MEC011","2014-2015","","","","","","MECHATRONICS LAB-IN-CHARGE ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("151","S14MEC011","2015-2016","","","","","","MECHATRONICS LAB-IN-CHARGE ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("152","S14MEC011","2016-2017","","","","","","MECHATRONICS LAB-IN-CHARGE ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("153","S14MEC011","2017-2018","","","","","","MECHATRONICS LAB-IN-CHARGE ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("154","S14MEC011","2018-2019","","","","","","MECHATRONICS LAB-IN-CHARGE ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("155","S14MEC011","2015-2016","","","","","","AUTONOMOUS IN-CHARGE ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("156","S14MEC011","2016-2017","","","","","","AUTONOMOUS IN-CHARGE ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("157","S14MEC011","2017-2018","","","","","","AUTONOMOUS IN-CHARGE ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("158","S14MEC011","2018-2019","","","","","","AUTONOMOUS IN-CHARGE ","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("159","S14MEC011","2015-2016","THE INSTITUTION OF ENGINEERS","AM158941-8","LIFE TIME","56029-ie.pdf","1","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_member VALUES("160","S18MEC032","1987-1988","","","","","","TUTOR","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("161","S18MEC032","2018-2019","","","","","","TUTOR","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("162","S08MEC018","2014-2015","Institute of Engineers","AM 158949-3","Life Member","47719-ie.pdf","1","","","","","","","","","","","","","","","","");
INSERT INTO mec_fac_member VALUES("163","S12MEC023","2010-2011","","","","","","","","","","","","","","","","","First Position in Paper Presentation","Bannari Am","2010-09","3972-best-paper.pdf","1");
INSERT INTO mec_fac_member VALUES("164","S04MEC035","2014-2015","","","","","","","","","","","","","","","","","Best Project Award","The Instit","2015-03","80217-bestproject.pdf","1");
INSERT INTO mec_fac_member VALUES("165","S04MEC035","2014-2015","","","","","","","","","","","","","","","","","Best Project Award","The Instit","2014-03","83715-bestproject.pdf","1");
INSERT INTO mec_fac_member VALUES("166","S04MEC035","2010-2011","","","","","","Lab In Charge","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("167","S04MEC035","2011-2012","","","","","","Lab In Charge","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("168","S04MEC035","2012-2013","","","","","","Lab In Charge","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("169","S04MEC035","2013-2014","","","","","","Lab In Charge","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("170","S04MEC035","2014-2015","","","","","","Lab In Charge","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("171","S04MEC035","2015-2016","","","","","","Lab In Charge","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("172","S04MEC035","2018-2019","","","","","","First Year - Student Co ordinator","department","","","","","","","","","1","","","","","");
INSERT INTO mec_fac_member VALUES("173","S04MEC035","2018-2019","ISTE","LM 41736","LIFE MEMBER","51952-iste.pdf","1","","","","","","","","","","","","","","","","");





CREATE TABLE `mec_fac_ot_qual` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `intake1` int(5) DEFAULT NULL,
  `sid` varchar(10) DEFAULT NULL,
  `name_qual` varchar(100) DEFAULT NULL,
  `year_com` int(10) DEFAULT NULL,
  `cer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `mec_fac_resg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `j_sup` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO mec_fac_resg VALUES("1","S17MEC001","ANNA UNIVERISTY","3020008","0","18142691238","SARATH KUMAR R","2018","ongoing","MANUFACTURING","CRYOGENIC COATED TOOLS IN MILLING PROCESS","NIL");





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
  `app_order` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO phy_fac VALUES("S08PHY003","A. GEETHA","1983-05-22","36","female","geethuphy@gmail.com","9486388323","C. ARUMUGAM","A. SAVITHIRI","n","","Hindu","MBC","VIRUDHACHALAM","VIRUDHACHALAM","CUDDALORE","Tamil Nadu","India","606001","	NO: 18, JAYAPRIYA NAGAR, JUNCTION ROAD, VIRUDHACHALAM - 606001   ","	NO: 18, JAYAPRIYA NAGAR, JUNCTION ROAD, VIRUDHACHALAM - 606001   ","349908802540","AQLPG6987B","","ab+","2008-07-02","Assistant Professor","0","PHY","71793-geetha.-a.jpg","65009-geetha-eaadhaar_1110940190067320141208124550_21012015181616_850372.pdf","2540","","","","");
INSERT INTO phy_fac VALUES("S13PHY001","Dr. R. Mariappan","1983-06-15","36","male","marijpr@gmail.com","9841396779","C. Ramasamy","R. Saroja","y","","Hindu","MBC","Jalipudur","Dharmapuri","Dharmapuri","Tamil Nadu","India","635301","Jalipudur,
Regadahalli (Po),
Pappireddipatti (Tk),
Dharmapuri (Dt),
Pin Code-635301	   ","Jalipudur,
Regadahalli (Po),
Pappireddipatti (Tk),
Dharmapuri (Dt),
Pin Code-635301	   ","933505523977","CGWPR3524E","","A1+","2013-06-10","Assistant Professor","0","PHY","18120-mariappan.-r(1).jpg","99374-aadhaar.pdf","3977","","","","");





CREATE TABLE `phy_fac_attorg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `phy_fac_bkjrn` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `glkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
  `ph2key` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
  `otkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `phy_fac_funpat` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `patkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `phy_fac_glc` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `conkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `phy_fac_member` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `awakey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `phy_fac_ot_qual` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `sid` varchar(10) NOT NULL,
  `name_qual` varchar(50) NOT NULL,
  `year_com` int(10) NOT NULL,
  `cer` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `phy_fac_resg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `j_sup` varchar(50) DEFAULT NULL,
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






CREATE TABLE `user` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO user VALUES("1","iadmin","8642","ramki2696@gmail.com");





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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
  `app_order` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO vmc_fac VALUES("S17vMC001","thir","1990-02-10","29","male","vijoad661@gmail.com","9874561230","ramesh","rani","n","","Hindu","kandhikupp","MGR NAGAR","Hosur","Kgiri","Tasmania","Australia","635126","123,the","123,the","987456127890","AXDPS2309G","8794561230","b+ve","2017-02-05","Prof","7894585230","vMC","35126-download.jpeg","71451-76706-10th.pdf","7890","","","","");





CREATE TABLE `vmc_fac_attorg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `vmc_fac_bkjrn` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `glkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
  `ph2key` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
  `otkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `vmc_fac_funpat` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `patkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO vmc_fac_funpat VALUES("1","S17vMC001","2003-2004","Big data","5 years","50000","CSI 2","2019-03-01","Hello","2019","10486-76706-10th.pdf","0","1","","","","","");
INSERT INTO vmc_fac_funpat VALUES("2","S17vMC001","1995-1996","Big data","5 years","50000","CSI 2","2019-03-02","Hello","2019-03","24198-76706-10th.pdf","0","1","","","","","");





CREATE TABLE `vmc_fac_glc` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `conkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `vmc_fac_member` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `awakey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `vmc_fac_resg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `j_sup` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO vmc_fac_resg VALUES("1","S17vMC001","Anna","4578","0","4561","ghjf","2015","2018","dgfthngjnx","seryhthjdtyhai","");





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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO vv_dept VALUES("1","1987-1988","55","anna","","","","","","","","","","");
INSERT INTO vv_dept VALUES("2","1993-1994","54","anna","","","","","","","","","","");
INSERT INTO vv_dept VALUES("3","1992-1993","","","","","","","","","","","","");





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
  `app_order` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO vv_fac VALUES("S02vv008","ramki","1996-06-25","23","male","lilly_swamy@yahoo.co.in","9874561230","jayaraman","bagiya lakhsmi","n","","Hindu","bc","Aachamangalam","Bargur","krishnagiri","Tamil Nadu","India","635104","s/o albart amman theru 2nd cross,kandhikuppam.","s/o albart amman theru 2nd cross,kandhikuppam.","656478349890","ABSPL4660L","8794561230","O+ve","2002-02-22","AP","9487819140","vv","53126-pizigani_1367_chart_1mb.jpeg","11938-76706-10th.pdf","9890","","","","22895-76706-10th.pdf");
INSERT INTO vv_fac VALUES("S14vv006","Ram","1991-05-08","28","male","vijoad661@gmail.com","9874561230","ramesh","rani","y","","Hindu","Hosur","Amman street","Hosur","krishnagiri","Oberoesterreich","Austria","635126","123,the","123,the","987456128521","OIYUP8584L","8794561230","b+ve","2014-10-05","Prof","7894585230","vv","17923-download.jpeg","56417-76706-10th.pdf","8521","","","","");
INSERT INTO vv_fac VALUES("S19vv007","siva","1995-06-08","24","male","drlilly2011@gmail.com","9874561230","ramesh","rani","n","","Hindu","bc","MGR NAGAR","Hosur","Kgiri","Tamil Nadu","India","635126","123,the","123,the","123456789012","ABSPL4660L","8794561230","b+ve","2019-05-03","Prof","9487819140","vv","8285-13607-d.-kubendran.jpeg","79692-29008-adhar-card.pdf","9012","","","","");
INSERT INTO vv_fac VALUES("S19vv008","stella","1987-10-10","32","female","lillyflorence.mca@adhiyamaan.in","9487819149","Maria","MARY","y","","Christian","bc","MGR NAGAR","Hosur","Kgiri","Tamil Nadu","India","635109","HIG 352,TNHB,PHASE VII,THENDRAL NAGAR, HOSUR","HIG 352,TNHB,PHASE VII,THENDRAL NAGAR, HOSUR","246824682468","OIYUP8564L","","b+ve","2019-05-06","prof","0","vv","11242-13607-d.-kubendran.jpeg","33759-29008-adhar-card.pdf","2468","","","","");
INSERT INTO vv_fac VALUES("S19vv009","vijo","1996-04-05","23","male","vjoad661@gmail.com","9874561230","ramesh","rani","n","","Hindu","bc","MGR NAGAR","Hosur","Kgiri","Tamil Nadu","India","635126","123,the","123,the","753951824610","ABSPL4660L","","b+ve","2019-04-03","prof","9487819140","vv","72059-12064-4099.jpeg","61830-29008-adhar-card.pdf","4610","","","","");
INSERT INTO vv_fac VALUES("S95vv009","CSI","1995-07-08","24","male","vijoad661@gmail.com","9874561230","ramesh","rani","n","","Hindu","bc","MGR NAGAR","Hosur","Kgiri","Bilasuvar Rayonu","Azerbaijan","635126","123,the","123,the","656478349777","OIYUP8564L","8794561230","b+ve","1995-04-05","Prof","8056865990","vv","69652-pizigani_1367_chart_1mb.jpeg","50542-02-512.png","9777","","","","");





CREATE TABLE `vv_fac_attorg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `orgkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

INSERT INTO vv_fac_attorg VALUES("1","S02vv008","2004-2005","sdp","sooftware disigine","1","0000-00-00","0000-00-00","2005-05-12","infosys","bengalore","state","15137-img2.jpg","1","fdp","web development","csi","1","0000-00-00","0000-00-00","2005-02-12","Shiva","50","state","41660-img2.jpg","1");
INSERT INTO vv_fac_attorg VALUES("2","S02vv008","2003-2004","sdp","sooftware disigine","1","0000-00-00","0000-00-00","2004-05-12","infosys","bengalore","state","78908-img2.jpg","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO vv_fac_attorg VALUES("3","S14vv005","1997-1998","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","seminar","web development","csi","1","0000-00-00","0000-00-00","1998-04-05","Shiva","50","national","45440-img2.jpg","1");
INSERT INTO vv_fac_attorg VALUES("4","S14vv005","1990-1991","workshop","sooftware disigine","1","0000-00-00","0000-00-00","1991-05-04","infosys","bengalore","national","34727-img2.jpg","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO vv_fac_attorg VALUES("5","S02vv008","2001-2002","fdp","sooftware disigine","1","0000-00-00","0000-00-00","2002-05-12","infosys","bengalore","district","56423-img1.jpg","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO vv_fac_attorg VALUES("6","S02vv008","1982-1983","fdp","sooftware disigine","1","0000-00-00","0000-00-00","1983-03-23","wipro","bengalore","national","59894-76706-10th.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO vv_fac_attorg VALUES("7","S02vv008","1991-1992","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","workshop","web ","csi","2","1991-08-06","1991-08-07","0000-00-00","Shiva","50","national","47127-76706-10th.pdf","1");
INSERT INTO vv_fac_attorg VALUES("8","S95vv009","2017-2018","seminar","sooftware disigine","1","0000-00-00","0000-00-00","2018-04-03","infosys","bengalore","state","55549-11938-76706-10th.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO vv_fac_attorg VALUES("9","S02vv008","2011-2012","seminar","sooftware disigine","1","0000-00-00","0000-00-00","2011-08-05","infosys","bengalore","state","87366-57731-76706-10th.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO vv_fac_attorg VALUES("10","S02vv008","2011-2012","seminar","sooftware disigine","1","0000-00-00","0000-00-00","2012-05-04","infosys","bengalore","national","87153-57731-76706-10th.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO vv_fac_attorg VALUES("11","S02vv008","2011-2012","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","fdp","web development","csi","1","0000-00-00","0000-00-00","2011-10-08","Shiva","50","state","65874-9135-aer.jpg","1");
INSERT INTO vv_fac_attorg VALUES("12","S02vv008","2011-2012","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","fdp","web development","csi","1","0000-00-00","0000-00-00","2012-05-08","Shiva","50","state","91331-9135-aer.jpg","1");
INSERT INTO vv_fac_attorg VALUES("13","S14vv005","1987-1988","seminar","sooftware disigine","1","0000-00-00","0000-00-00","1987-08-05","infosys","bengalore","district","11128-76706-10th.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO vv_fac_attorg VALUES("14","S14vv005","1975-1976","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","fdp","web development","csi","1","0000-00-00","0000-00-00","1975-08-05","Shiva","50","state","77964-download.jpeg","1");
INSERT INTO vv_fac_attorg VALUES("15","S14vv005","2018-2019","fdp","sooftware disigine","2","2018-06-05","2018-06-07","0000-00-00","infosys","bengalore","state","20095-76706-10th.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO vv_fac_attorg VALUES("16","S14vv005","2018-2019","fdp","sooftware disigine","1","0000-00-00","0000-00-00","2018-06-06","infosys","bengalore","national","54094-76706-10th.pdf","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","");
INSERT INTO vv_fac_attorg VALUES("17","S14vv005","2018-2019","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","fdp","web development","csi","2","2018-06-05","2018-06-07","0000-00-00","Shiva","50","state","89999-download.jpeg","1");
INSERT INTO vv_fac_attorg VALUES("18","S14vv005","2018-2019","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","fdp","web development","csi","1","0000-00-00","0000-00-00","2018-06-05","Shiva","50","state","87181-download.jpeg","1");
INSERT INTO vv_fac_attorg VALUES("19","S02vv008","2012-2013","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","fdp","web development","self","1","0000-00-00","0000-00-00","2012-12-12","Shiva","50","national","50376-250px-czech_passport_2006_mrz_data.jpg","1");





CREATE TABLE `vv_fac_bkjrn` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `glkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO vv_fac_bkjrn VALUES("1","S02vv008","2000-2001","","","","","","","","hello","Web ","2","5","234","sci","fdhdfghjxghx","10","48068-hello.pdf","35436","1","tyyjutdyjudt","0");
INSERT INTO vv_fac_bkjrn VALUES("2","S95vv009","2003-2004","","","","","","","","ABC","Web Technology","2","3","23415678","ugc","fdhdfghjxghx","34","22148-76706-10th.pdf","35436","1","","0");
INSERT INTO vv_fac_bkjrn VALUES("3","S95vv009","2002-2003","","","","","","","","wer","Web Technology","2","3","23415678","ugc","fdhdfghjxghx","34","7551-76706-10th.pdf","35436","1","","0");
INSERT INTO vv_fac_bkjrn VALUES("4","S02vv008","2011-2012","","","","","","","","ABC","Web Technology","5","3","3565","ugc","fdh","34","77437-15234-76706-10th.pdf","35","1","ydtrytsdytsd","0");
INSERT INTO vv_fac_bkjrn VALUES("5","S14vv005","1997-1998","","","","","","","","ABC","Web Technology","2","3","3565","ugc","fdhdfghjxghx","34","25220-76706-10th.pdf","35436","1","","0");
INSERT INTO vv_fac_bkjrn VALUES("7","S14vv005","","","","","","","","","","","","","","","","","","","","www.my google link.in","1");





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
  `ph2key` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO vv_fac_edu VALUES("","","state","2000","60","9135-aer.jpg","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO vv_fac_edu VALUES("S02vv008","NATIONAL HIGHER SECONDARY SCHOOL","icbsc","2000","60","15234-76706-10th.pdf","1","vallalar higher sec school","icbsc","maths","2010","89","33749-76706-10th.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","admin","Thiruvalluvar University","B.Sc","Computer Science","regular","2004","75","39287-76706-10th.pdf","1","","","","","","","","","","","","","","","","","","","ACE","Anna University","MCA","Computer Science","regular","2007","75","84757-76706-10th.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");
INSERT INTO vv_fac_edu VALUES("S95vv009","NATIONAL HIGHER SECONDARY SCHOOL","state","2000","60","57731-76706-10th.pdf","1","vallalar higher sec school","state","maths","2002","62","98687-76706-10th.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","admin","Thiruvalluvar University","B.Sc","Computer Science","regular","2005","75","68123-76706-10th.pdf","1","","","","","","","","","","","","","","","","","","","ACE","Anna University","MCA","Computer Science","regular","2007","75","82632-76706-10th.pdf","1","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","");





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
  `otkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO vv_fac_exp VALUES("S02vv008","PSG","Prof","2012-03-12","2013-03-12","I dont Care","0","1","IRT","Prof","1996-06-26","1995-06-26","I dont Care","IRT","Prof","1996-06-26","0000-00-00","1997-06-26","I dont Care","IRT","Prof","1995-08-07","0000-00-00","1996-05-04","I dont Care","IRT","Prof","1999-08-04","0000-00-00","2000-05-04","I dont Care","29135-76706-10th.pdf","4","gbhhs","Prof","2012-06-26","2013-06-26","TRAINING PERIOD","78640-download.jpeg","1","","","","","","","","","rdgw","ewgfv","efv","2013-03-12","2014-03-12","TRAINING PERIOD","rdgw","Prof","code","2013-04-04","2015-04-04","TRAINING PERIOD","0000-00-00","26584-it.png","2");





CREATE TABLE `vv_fac_funpat` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `patkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

INSERT INTO vv_fac_funpat VALUES("1","S05vv004","2003-2004","Big data","5 years","50000","CSI","2004-02-22","Hello","2010-04","0","0","1","","","","","");
INSERT INTO vv_fac_funpat VALUES("2","S02vv008","1990-1991","Big data","5 years","50000","CSI","1990-03-11","Hello HRU","2019","92182-download.jpeg","0","1","","","","","");
INSERT INTO vv_fac_funpat VALUES("3","S02vv008","1999-2000","Big data","5 years","50000","CSI","1999-02-05","Hello How","2001-04","90099-69654-adimg.jpg","75197-69654-adimg.jpg","1","New Tech","Big ","18759462AD","","1");
INSERT INTO vv_fac_funpat VALUES("4","S02vv008","2003-2004","Big data","5 years","5000","CSI 2","2005-06-05","Hello","0","67614-69654-adimg.jpg","0","1","","","","","");
INSERT INTO vv_fac_funpat VALUES("5","S02vv008","2002-2003","Big data","5 years","50","CSI","2006-05-06","Hello","OnGoing","9056-69654-adimg.jpg","0","1","","","","","");
INSERT INTO vv_fac_funpat VALUES("6","S02vv008","2004-2005","Big data","1 years","50000","CSI 2","1996-05-31","Hello","OnGoing","19884-69654-adimg.jpg","0","1","","","","","");
INSERT INTO vv_fac_funpat VALUES("7","S02vv008","2005-2006","","","","","","","","","","","New Tech","Big Data1","18759462AD","","1");
INSERT INTO vv_fac_funpat VALUES("8","S02vv008","2001-2002","OST","5 years","50000","CSI","2001-06-05","Hello","OnGoing","70849-76706-10th.pdf","0","1","","","","","");
INSERT INTO vv_fac_funpat VALUES("9","S02vv008","2000-2001","","","","","","","","","","","New Tech","Big Data","187","","1");
INSERT INTO vv_fac_funpat VALUES("10","S02vv008","2011-2012","Big data","5 years","50000","IEE","2011-06-05","Hello","2019","86438-15234-76706-10th.pdf","13709-57731-76706-10th.pdf","1","","","","","");
INSERT INTO vv_fac_funpat VALUES("11","S02vv008","2011-2012","Big data","5 years","50000","IEEE","2012-09-06","Hello","2015","70813-57731-76706-10th.pdf","80295-57731-76706-10th.pdf","1","","","","","");
INSERT INTO vv_fac_funpat VALUES("12","S02vv008","2011-2012","","","","","","","","","","","New Technology","Big Data","18759462AD","","1");
INSERT INTO vv_fac_funpat VALUES("13","S02vv008","2011-2012","","","","","","","","","","","New Tech","Big Data","18759462AD","","1");
INSERT INTO vv_fac_funpat VALUES("14","S02vv008","2011-2012","","","","","","","","","","","New Tech","Big Data","18759462AD","final_file","1");
INSERT INTO vv_fac_funpat VALUES("15","S02vv008","2011-2012","","","","","","","","","","","New Tech","Big Data","18759462AD","31048-57731-76706-10th.pdf","1");





CREATE TABLE `vv_fac_glc` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `conkey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

INSERT INTO vv_fac_glc VALUES("1","S02vv008","2003-2004","","","0000-00-00","0000-00-00","0000-00-00","","","","","","gbgj"," bhj"," ghjbu","2","2004-02-12","2004-02-13","0000-00-00","state","","48641-img1.jpg","","","","0","0000-00-00","0000-00-00","0000-00-00","","","1");
INSERT INTO vv_fac_glc VALUES("2","S02vv008","1987-1988","","","0000-00-00","0000-00-00","0000-00-00","","","","","","gbgj","OST"," ghjbu","1","0000-00-00","0000-00-00","1988-02-12","international","","2522-img3.jpg","","","","0","0000-00-00","0000-00-00","0000-00-00","","","1");
INSERT INTO vv_fac_glc VALUES("3","S02vv008","1996-1997","weqrtwerytuiv wertwertb ert","1","0000-00-00","0000-00-00","1997-04-02","QMK.;","XCVHNCVGN","Hosur","0","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","","0","0000-00-00","0000-00-00","0000-00-00","","","");
INSERT INTO vv_fac_glc VALUES("4","S02vv008","1991-1992","","","0000-00-00","0000-00-00","0000-00-00","","","","","","raj"," bhj"," ghjbu","1","0000-00-00","0000-00-00","1991-06-05","national","","68438-biomed.png","","","","0","0000-00-00","0000-00-00","0000-00-00","","","1");
INSERT INTO vv_fac_glc VALUES("5","S02vv008","2002-2003","","","0000-00-00","0000-00-00","0000-00-00","","","","","","gbgj"," bhj","csi","1","0000-00-00","0000-00-00","2003-05-12","international","","26563-76706-10th.pdf","","","","0","0000-00-00","0000-00-00","0000-00-00","","","1");
INSERT INTO vv_fac_glc VALUES("6","S02vv008","1999-2000","weqrtwerytuiv wertwertb ert","2","2000-03-02","2000-03-03","0000-00-00","Hello","XCVHNCVGN","DFHDFGH","0","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","","0","0000-00-00","0000-00-00","0000-00-00","","","");
INSERT INTO vv_fac_glc VALUES("7","S95vv009","1987-1988","","","0000-00-00","0000-00-00","0000-00-00","","","","","","gbgj"," bhj"," ghjbu","2","1988-03-23","1988-03-25","0000-00-00","district","","33291-10926-76706-10th.pdf","","","","0","0000-00-00","0000-00-00","0000-00-00","","","1");
INSERT INTO vv_fac_glc VALUES("8","S02vv008","2011-2012","OST","1","0000-00-00","0000-00-00","2012-05-25","QMK.;","XCVHNCVGN","DFHDFGH","0","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","","0","0000-00-00","0000-00-00","0000-00-00","","","");
INSERT INTO vv_fac_glc VALUES("9","S02vv008","2011-2012","weqrtwerytuiv wertwertb ert","1","0000-00-00","0000-00-00","2012-01-06","QMK.;","NET","DFHDFGH","0","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","","0","0000-00-00","0000-00-00","0000-00-00","","","");
INSERT INTO vv_fac_glc VALUES("10","S02vv008","2011-2012","","","0000-00-00","0000-00-00","0000-00-00","","","","","","gbgj"," bhj"," ghjbu","1","0000-00-00","0000-00-00","2011-12-05","state","","59640-15234-76706-10th.pdf","","","","0","0000-00-00","0000-00-00","0000-00-00","","","1");
INSERT INTO vv_fac_glc VALUES("11","S02vv008","2011-2012","","","0000-00-00","0000-00-00","0000-00-00","","","","","","gbgj"," bhj"," ghjbu","1","0000-00-00","0000-00-00","2011-12-05","national","","77970-15234-76706-10th.pdf","","","","0","0000-00-00","0000-00-00","0000-00-00","","","1");
INSERT INTO vv_fac_glc VALUES("12","S14vv005","1987-1988","","","0000-00-00","0000-00-00","0000-00-00","","","","","","gbgj"," bhj"," ghjbu","1","0000-00-00","0000-00-00","1988-05-25","international","","97068-beece.png","","","","0","0000-00-00","0000-00-00","0000-00-00","","","1");
INSERT INTO vv_fac_glc VALUES("13","S14vv005","1987-1988","","","0000-00-00","0000-00-00","0000-00-00","","","","","","gbgj"," bhj"," ghjbu","1","0000-00-00","0000-00-00","1988-05-05","district","","76909-76706-10th.pdf","","","","0","0000-00-00","0000-00-00","0000-00-00","","","1");
INSERT INTO vv_fac_glc VALUES("14","S14vv005","1990-1991","weqrtwerytuiv wertwertb ert","1","0000-00-00","0000-00-00","1990-08-05","QMK.;","XCVHNCVGN","DFHDFGH","0","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","","0","0000-00-00","0000-00-00","0000-00-00","","","");
INSERT INTO vv_fac_glc VALUES("15","S14vv005","1991-1992","weqrtwerytuiv wertwertb ert","1","0000-00-00","0000-00-00","1991-09-19","QMK.;","XCVHNCVGN","DFHDFGH","0","1","","","","","0000-00-00","0000-00-00","0000-00-00","","","","","","","0","0000-00-00","0000-00-00","0000-00-00","","","");





CREATE TABLE `vv_fac_member` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `awakey` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO vv_fac_member VALUES("1","S05vv004","1987-1988","","","","","","","","","csi","csi","2012-04","0","1");
INSERT INTO vv_fac_member VALUES("2","S05vv004","2001-2002","","","","","","","","","csi","csi","2012-08","0","2");
INSERT INTO vv_fac_member VALUES("3","S05vv004","2000-2001","","","","","","","","","csi","csi","2001-05","84666-pizigani_1367_chart_1mb.jpeg","1");
INSERT INTO vv_fac_member VALUES("4","S02vv008","2003-2004","","","","","","","","","csi","csiii","2019-04","55030-paper-details.pdf","1");
INSERT INTO vv_fac_member VALUES("5","S02vv008","2004-2005","IEEE","1452E69","1 Year","65278-paper-details.pdf","1","","","","","","","","");
INSERT INTO vv_fac_member VALUES("6","S02vv008","2000-2001","","","","","","Tutor","department","1","","","","","");





CREATE TABLE `vv_fac_ot_qual` (
  `sid` varchar(10) NOT NULL,
  `name_qual` varchar(50) NOT NULL,
  `year_com` int(10) NOT NULL,
  `cer` varchar(100) NOT NULL,
  `id` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO vv_fac_ot_qual VALUES("S14vv005","NET","2015","73173-76706-10th.pdf","1");
INSERT INTO vv_fac_ot_qual VALUES("S14vv005","Ram","2019","52391-76706-10th.pdf","2");





CREATE TABLE `vv_fac_resg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
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
  `j_sup` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO vv_fac_resg VALUES("1","S05vv004","Anna","4578","0","4561","ghjf","2015","2018","dgfthngjnx","dzxgrfvbd","");
INSERT INTO vv_fac_resg VALUES("2","S05vv004","periyar","45789","0","4561","ghjf","2015","discontinued","dgfthngjnx","dzxgrfvbd","");
INSERT INTO vv_fac_resg VALUES("3","S05vv004","Anna","4578","0","3456","sam","2019","ongoing","drsygtrh","seryhthjdty","");
INSERT INTO vv_fac_resg VALUES("4","S02vv008","periyar","45785","0","4561","ghjf","2015","2018","dgfthngjnx","dzxgrfvbd","");
INSERT INTO vv_fac_resg VALUES("5","S02vv008","periyar","45785","0","5001","Ram","2019","discontinued","drsygtrh","seryhthjdty","");
INSERT INTO vv_fac_resg VALUES("6","S02vv008","periyar","45785","0","4561","ghjf","2015","2018","OST","dzxgrfvbd","");
INSERT INTO vv_fac_resg VALUES("7","S14vv005","Anna","45789","0","4561","Latha","2012","2014","Software Realibility","dzxgrfvbd","");
INSERT INTO vv_fac_resg VALUES("8","S14vv005","periyar","45","0","4561","Dhina","2014","ongoing","Cloud","Cloud","");
INSERT INTO vv_fac_resg VALUES("9","S02vv008","dffgdfg","565","0","3453","Rani","2013","2015","dsfsd","ghfh","");
INSERT INTO vv_fac_resg VALUES("10","S02vv008","dffgdfg","565","0","234","dfsd","2014","ongoing","fgdf","fgfd","");
INSERT INTO vv_fac_resg VALUES("11","S14vv005","periyar","45","0","3456","CSI1","IV","ongoing","drsygtrh","seryhthjdty","ram");





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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




