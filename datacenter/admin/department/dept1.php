<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "datacenter";
$dbname1 = "datacenter2";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
$conn1 = new mysqli($servername, $username, $password, $dbname1);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
if ($conn1->connect_error) {
    die("Connection failed: " . $conn1->connect_error);
} 
$dept=$_POST['dept'];
$deptid=$_POST['deptid'];
$email=$_POST['email'];
$username=$_POST['username'];
$password=$_POST['password'];
$about=$_POST['about'];

 $file = rand(1000,100000)."-".$_FILES['file']['name'];
    $file_loc = $_FILES['file']['tmp_name'];
	$file_size = $_FILES['file']['size'];
	$file_type = $_FILES['file']['type'];
	$folder="../../gallery/dept/";
	// new file size in KB
	$new_size = $file_size/1024;  
	// new file size in KB
	
	// make file name in lower case
	$new_file_name = strtolower($file);
	// make file name in lower case
	
	$final_file=str_replace(' ','-',$new_file_name);
 if(move_uploaded_file($file_loc,$folder.$final_file))
{
	$query = "INSERT INTO `dept` (`dept`, `deptid`,`email`, `username`, `password`,`about`,`image`, `memberkey`, `funprokey`, `pattkey`, `respkey`, `collegekey`, `polikey`, `schokey`, `indukey`, `attenkey`, `orgakey`, `gueskey`, `connkey`, `bookkey`, `jrnlkey`,`otkey`) VALUES ('$dept', '$deptid','$email','$username', '$password','$about', '$final_file', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0')"; 
	if ($conn->query($query) === TRUE) 
	{
		$personal=$deptid."_fac";
	
		$folder1="../../gallery/photo/".$personal."";
		if(mkdir($folder1, 0777))
		{
			$folder2="../../gallery/aadhar/".$personal."";
			mkdir($folder2, 0777);

$sql1 = "CREATE TABLE `$personal` (
sid VARCHAR(30) NOT NULL PRIMARY KEY,
name VARCHAR(30) NOT NULL,
dob DATE NOT NULL,
age INT(4) NOT NULL,
gender VARCHAR(10) NOT NULL,
email VARCHAR(50) NOT NULL,
mob1 BIGINT(10) NOT NULL,
fname VARCHAR(30) NOT NULL,
mname VARCHAR(30) NOT NULL,
mstatus VARCHAR(5) NOT NULL,
sname VARCHAR(30),
relegion VARCHAR(30) NOT NULL,
comunity VARCHAR(10) NOT NULL,
place VARCHAR(50) NOT NULL,
city VARCHAR(50) NOT NULL,
district VARCHAR(50) NOT NULL,
state VARCHAR(50) NOT NULL,
country VARCHAR(50) NOT NULL,
pincode VARCHAR(10) NOT NULL,
address VARCHAR(100) NOT NULL,
paddress VARCHAR(100) NOT NULL,
aadharno BIGINT(12) NOT NULL,
panno VARCHAR(10) NOT NULL,
passport VARCHAR(20),
blood VARCHAR(5) NOT NULL,
doj DATE NOT NULL,
designation VARCHAR(50) NOT NULL,
mob2 BIGINT(10),
dept VARCHAR(50) NOT NULL,
uploadpic VARCHAR(100) NOT NULL,
aadharpic VARCHAR(100) NOT NULL,
password VARCHAR(10) NOT NULL,
status VARCHAR(10),
dor DATE,
reason VARCHAR(100),
app_order VARCHAR(200)
)";

			if ($conn->query($sql1) === TRUE) 
			{  
				$edu=$deptid."_fac_edu";

				$folder3="../../gallery/10thcer/".$edu."";
				mkdir($folder3, 0777);

				$folder4="../../gallery/12thcer/".$edu."";
				mkdir($folder4, 0777);

				$folder1="../../gallery/dipcer/".$edu."";
				mkdir($folder1, 0777);

				$folder5="../../gallery/ugcer/".$edu."";
				mkdir($folder5, 0777);

				$folder6="../../gallery/pgcer/".$edu."";
				mkdir($folder6, 0777);

				$folder7="../../gallery/mphcer/".$edu."";
				mkdir($folder7, 0777);

				$folder8="../../gallery/phdcer/".$edu."";
				mkdir($folder8, 0777);

$sql2 = "CREATE TABLE `$edu` (
sid VARCHAR(30) NOT NULL  PRIMARY KEY,
sname VARCHAR(50),
sboard VARCHAR(10),
syear INT(4),
spercentage int(4) ,
scertificate VARCHAR(100) ,
skey INT(1),
s2name VARCHAR(50) ,
s2board VARCHAR(10) ,
s2branch VARCHAR(50) ,
s2year INT(4),
s2percentage int(4),
s2certificate VARCHAR(100) ,
s2key INT(1),
dname VARCHAR(50) ,
dboard VARCHAR(10) ,
ddegree VARCHAR(50) ,
dmode VARCHAR(10) ,
dyear INT(4),
dpercentage int(4) ,
dcertificate VARCHAR(100) ,
dkey INT(1),
d1name VARCHAR(50) ,
d1board VARCHAR(10) ,
d1degree VARCHAR(50) ,
d1mode VARCHAR(10) ,
d1year INT(4),
d1percentage int(4) ,
d1certificate VARCHAR(100) ,
d1key INT(1),
d2name VARCHAR(50) ,
d2board VARCHAR(10) ,
d2degree VARCHAR(50) ,
d2mode VARCHAR(10) ,
d2year INT(4),
d2percentage int(4) ,
d2certificate VARCHAR(100) ,
d2key INT(1),
uname VARCHAR(50) ,
uuniversity VARCHAR(50) ,
udegree VARCHAR(50) ,
ubranch VARCHAR(50) ,
umode VARCHAR(10) ,
uyear INT(4),
upercentage int(4) ,
ucertificate VARCHAR(100) ,
ukey INT(1),
u1name VARCHAR(50) ,
u1university VARCHAR(50) ,
u1degree VARCHAR(50) ,
u1branch VARCHAR(50) ,
u1mode VARCHAR(10) ,
u1year INT(4),
u1percentage int(4) ,
u1certificate VARCHAR(100) ,
u1key INT(1),
u2name VARCHAR(50) ,
u2university VARCHAR(50) ,
u2degree VARCHAR(50) ,
u2branch VARCHAR(50) ,
u2mode VARCHAR(10) ,
u2year INT(4),
u2percentage int(4) ,
u2certificate VARCHAR(100) ,
u2key INT(1),
pname VARCHAR(50) ,
puniversity VARCHAR(50) ,
pdegree VARCHAR(50) ,
pbranch VARCHAR(50) ,
pmode VARCHAR(10) ,
pyear INT(4),
ppercentage int(4) ,
pcertificate VARCHAR(100) ,
pkey INT(1),
p1name VARCHAR(50) ,
p1university VARCHAR(50) ,
p1degree VARCHAR(50) ,
p1branch VARCHAR(50) ,
p1mode VARCHAR(10) ,
p1year INT(4),
p1percentage int(4) ,
p1certificate VARCHAR(100) ,
p1key INT(1),
p2name VARCHAR(50) ,
p2university VARCHAR(50) ,
p2degree VARCHAR(50) ,
p2branch VARCHAR(50) ,
p2mode VARCHAR(10) ,
p2year INT(4) ,
p2percentage int(4) ,
p2certificate VARCHAR(100) ,
p2key INT(1),
mname VARCHAR(50) ,
muniversity VARCHAR(50) ,
mspec VARCHAR(50) ,
mbranch VARCHAR(50) ,
mmode VARCHAR(10) ,
myear INT(4),
mpercentage int(4) ,
mthesis VARCHAR(50) ,
mguide VARCHAR(30) ,
mcertificate VARCHAR(100) ,
mkey INT(1),
phname VARCHAR(50) ,
phuniversity VARCHAR(50) ,
phspec VARCHAR(50) ,
phbranch VARCHAR(50) ,
phmode VARCHAR(10) ,
phyreg VARCHAR(7),
phyear VARCHAR(7),
phthesis VARCHAR(100) ,
phguide VARCHAR(30) ,
phcertificate VARCHAR(100) ,
phkey INT(1),
ph1name VARCHAR(50) ,
ph1university VARCHAR(50) ,
ph1spec VARCHAR(50) ,
ph1branch VARCHAR(50) ,
ph1mode VARCHAR(10) ,
ph1yreg VARCHAR(7),
ph1year VARCHAR(7),
ph1thesis VARCHAR(100) ,
ph1guide VARCHAR(30) ,
ph1certificate VARCHAR(100) ,
ph1key INT(1),
ph2name VARCHAR(50) ,
ph2university VARCHAR(50) ,
ph2spec VARCHAR(50) ,
ph2branch VARCHAR(50) ,
ph2mode VARCHAR(10) ,
ph2yreg VARCHAR(7),
ph2year VARCHAR(7),
ph2thesis VARCHAR(100) ,
ph2guide VARCHAR(30) ,
ph2certificate VARCHAR(100) ,
ph2key INT(1)
)";

				if ($conn->query($sql2) === TRUE) 
				{
					$exp=$deptid."_fac_exp";

					$folder9="../../gallery/exp/".$exp."";
					mkdir($folder9, 0777);

$sql3 = "CREATE TABLE `$exp` (
sid VARCHAR(30) NOT NULL PRIMARY KEY ,
clg1 VARCHAR(50),
clgdesg1 VARCHAR(30),
clgdoj1 DATE,
clgdor1 DATE,
clgreason1 VARCHAR(100),
clgcir1 VARCHAR(100),
clgkey int(1),

pol1 VARCHAR(50),
poldesg1 VARCHAR(30),
poldoj1 DATE,
poldor1 DATE,
polreason1 VARCHAR(100),
polcir1 VARCHAR(100),
polkey int(1),

sch1 VARCHAR(50),
schdesg1 VARCHAR(30),
schdoj1 DATE,
schdor1 DATE,
schreason1 VARCHAR(100),
schcir1 VARCHAR(100),
schkey int(1),

ind1 VARCHAR(50),
inddesg1 VARCHAR(30),
indnature1 VARCHAR(30),
inddoj1 DATE,
inddor1 DATE,
indreason1 VARCHAR(100),
indcir1 VARCHAR(100),
indkey int(1),

ot1 VARCHAR(50),
otdesg1 VARCHAR(30),
otnature1 VARCHAR(30),
otdoj1 DATE,
otdor1 DATE,
otreason1 VARCHAR(100),
otcir1 VARCHAR(100),
otkey int(1)
)";

					if ($conn->query($sql3) === TRUE) 
					{
						$sql4 = "UPDATE dept SET `collegekey`='1',`polikey`='1',`schokey`='1',`indukey`='1',`otkey`='1' WHERE deptid = '$deptid'";
						if(mysqli_query($conn,$sql4))
						{
							$pro=$deptid."_fac_attorg";

							$folder9="../../gallery/atten/".$pro."";
							mkdir($folder9, 0777);

							$folder10="../../gallery/organ/".$pro."";
							mkdir($folder10, 0777);

$sql5 = "CREATE TABLE `$pro` (
id int(5) NOT NULL  PRIMARY KEY AUTO_INCREMENT,
sid VARCHAR(30) NOT NULL ,
ayear VARCHAR(10),
attcategory1 VARCHAR(20),
atttitle1 VARCHAR(50),
attdays1 int(3),
attfrom1 DATE NOT NULL,
attto1 DATE NOT NULL,
attdate1 DATE NOT NULL,
attorg1 VARCHAR(50),
attplace1 VARCHAR(50),
attlevel1 VARCHAR(20),
attcer1 VARCHAR(100),
attkey int(1),

orgcategory1 VARCHAR(20),
orgtitle1 VARCHAR(50),
orgfun1 VARCHAR(50),
orgdays1 int(3),
orgfrom1 DATE NOT NULL,
orgto1 DATE NOT NULL,
orgdate1 DATE NOT NULL,
orgres1 VARCHAR(30),
orgpar1 int(5),
orglevel1 VARCHAR(20),
orgcer1 VARCHAR(100),
orgkey int(1)
)";

							if ($conn->query($sql5) === TRUE) 
							{
								$sql6 = "UPDATE dept SET `attenkey`='1',`orgakey`='1' WHERE deptid = '$deptid'";
								if(mysqli_query($conn,$sql6))
								{
									$glc=$deptid."_fac_glc";

									$folder11="../../gallery/conn/".$glc."";
									mkdir($folder11, 0777);

									$folder11="../../gallery/gl/".$glc."";
									mkdir($folder11, 0777);

$sql7 = "CREATE TABLE `$glc` (
id int(5) NOT NULL  PRIMARY KEY AUTO_INCREMENT,
sid VARCHAR(30) NOT NULL ,
ayear VARCHAR(10),
gltitle1 VARCHAR(50),
gldays1 int(3),
glfrom1 DATE NOT NULL,
glto1 DATE NOT NULL,
gldate1 DATE NOT NULL,
gltopic1 VARCHAR(50),
glorg1 VARCHAR(50),
glplace1 VARCHAR(50),
glpic1 VARCHAR(100),
glkey int(1),

conname1 VARCHAR(30),
contitle1 VARCHAR(50),
conorg1 VARCHAR(50),
condays1 int(3),
confrom1 DATE NOT NULL,
conto1 DATE NOT NULL,
condate1 DATE NOT NULL,
conlevel1 VARCHAR(20),
conpdf1 VARCHAR(100),
concer1 VARCHAR(100),
conkey int(1)
)";

									if ($conn->query($sql7) === TRUE) 
									{
										$sql8 = "UPDATE dept SET `gueskey`='1',`connkey`='1' WHERE deptid = '$deptid'";
						if(mysqli_query($conn,$sql8))
						{
        $bk=$deptid."_fac_bkjrn";

$folder11="../../gallery/jrn/".$bk."";
mkdir($folder11, 0777);

$sql9 = "CREATE TABLE `$bk` (
id int(5) NOT NULL  PRIMARY KEY AUTO_INCREMENT,
sid VARCHAR(30) NOT NULL ,
ayear VARCHAR(10),
bk1 VARCHAR(20),
bkcha1 VARCHAR(50),
bkissn1 VARCHAR(20),
bkmy1 VARCHAR(7),
bkpub1 VARCHAR(50),
bktype1 VARCHAR(50),
bkkey int(1),

jrntitle1 VARCHAR(100),
jrnname1 VARCHAR(50),
jrnvol1 VARCHAR(20),
jrnissue1 VARCHAR(20),
jrnissn1 VARCHAR(20),
jrncategory1 VARCHAR(20),
jrnlink1 VARCHAR(100),
jrncit1 VARCHAR(30),
jrnpdf1 VARCHAR(100),
jrnimpact1 int(10),
jrnkey int(1),
gl varchar(50),
glkey int(1)
)";

if ($conn->query($sql9) === TRUE) {
	$sql10 = "UPDATE dept SET `bookkey`='1',`jrnlkey`='1' WHERE deptid = '$deptid'";
						if(mysqli_query($conn,$sql10))
						{
       $fun=$deptid."_fac_funpat";


$folder20="../../gallery/pro/".$fun."";
mkdir($folder20, 0777);
$sql11 = "CREATE TABLE `$fun` (
id int(5) NOT NULL  PRIMARY KEY AUTO_INCREMENT,
sid VARCHAR(30) NOT NULL ,
ayear VARCHAR(10),
titleofpro1 VARCHAR(50),
duration1 VARCHAR(30),
amountsan1 VARCHAR(20),
agency1 VARCHAR(20),
startdate1 DATE,
copiname1 VARCHAR(20),
year1 VARCHAR(7),
order1 VARCHAR(200),
uc1 VARCHAR(200),
funkey int(1),

nameofpat1 VARCHAR(50),
title1 VARCHAR(30),
fileno1 VARCHAR(20),
pat_cer1 VARCHAR(200),
patkey int(1)
)";

if ($conn->query($sql11) === TRUE) {
$sql12 = "UPDATE dept SET `funprokey`='1',`pattkey`='1' WHERE deptid = '$deptid'";
						if(mysqli_query($conn,$sql12))
						{
							  $mem=$deptid."_fac_member";

$folder11="../../gallery/mem/".$mem."";
mkdir($folder11, 0777);
$folder11="../../gallery/awa/".$mem."";
mkdir($folder11, 0777);

$sql13 = "CREATE TABLE `$mem` (
id int(5) NOT NULL  PRIMARY KEY AUTO_INCREMENT,
sid VARCHAR(30) NOT NULL ,
ayear VARCHAR(10),
name1 VARCHAR(50),
memberid1 VARCHAR(30),
validity1 VARCHAR(20),
pic1 VARCHAR(100),
memkey int(1),

res1 VARCHAR(50),
level1 VARCHAR(20),
reskey int(1),

aname1 VARCHAR(50),
aissue1 VARCHAR(10),
amy1 VARCHAR(7),
acer1 VARCHAR(100),
awakey int(1)
)";

if ($conn->query($sql13) === TRUE) {
	$sql14 = "UPDATE dept SET `memberkey`='1',`respkey`='1',`awakey`='1' WHERE deptid = '$deptid'";
						if(mysqli_query($conn,$sql14))
						{
     $res=$deptid."_fac_resg";


$sql15 = "CREATE TABLE `$res` (
id int(5)  PRIMARY KEY AUTO_INCREMENT,
sid VARCHAR(10) ,
uname VARCHAR(30),
supid VARCHAR(20),
numsch int(2) NOT NULL,
reg VARCHAR(30) NOT NULL,
name VARCHAR(30) NOT NULL,
year VARCHAR(10) NOT NULL,
cyear VARCHAR(20) NOT NULL,
spec VARCHAR(50) NOT NULL,
tit VARCHAR(100) NOT NULL,
j_sup VARCHAR(50) NOT NULL

)";

if ($conn->query($sql15) === TRUE) {
	
	$pro=$deptid."_org";
$folder12="../../gallery/dept_org/".$pro."";
mkdir($folder12, 0777);

$sql16 = "CREATE TABLE `$pro` (
id int(5) NOT NULL  PRIMARY KEY AUTO_INCREMENT,
ayear VARCHAR(10),
orgcategory1 VARCHAR(20),
orgtitle1 VARCHAR(50),
orgfun1 VARCHAR(50),
orgdays1 int(3),
orgfrom1 DATE NOT NULL,
orgto1 DATE NOT NULL,
orgdate1 DATE NOT NULL,
orgres1 VARCHAR(30),
orgpar1 int(5),
orglevel1 VARCHAR(20),
orgcer1 VARCHAR(100),
orgkey int(1)
)";

if ($conn->query($sql16) === TRUE) {
	$sql17 = "UPDATE dept SET `orgkey`='1' WHERE deptid = '$deptid'";
						if(mysqli_query($conn,$sql17))
						{$pro=$deptid."_dept";
$folder13="../../gallery/aff/".$pro."";
mkdir($folder13, 0777);
$folder14="../../gallery/nba/".$pro."";
mkdir($folder14, 0777);
$sql18 = "CREATE TABLE `$pro` (
id int(5) NOT NULL  PRIMARY KEY AUTO_INCREMENT,
ayear VARCHAR(10) NOT NULL,
intake1 int(5),
aff1 VARCHAR(50),
aff_cer1 VARCHAR(100),
nba_cer1 VARCHAR(100),
intake2 int(5),
aff2 VARCHAR(50),
aff_cer2 VARCHAR(100),
nba_cer2 VARCHAR(100),
intake3 int(5),
aff3 VARCHAR(50),
aff_cer3 VARCHAR(100),
nba_cer3 VARCHAR(100)
)";

if ($conn1->query($sql18) === TRUE) {
$pro=$deptid."_fac_ot_qual";
$folder13="../../gallery/qualother/".$pro."";
mkdir($folder13, 0777);
$sql19 = "CREATE TABLE `$pro` (
id int(5) NOT NULL  PRIMARY KEY AUTO_INCREMENT,
sid VARCHAR(10),
name_qual VARCHAR(100),
year_com int(10),
cer VARCHAR(100)
)";

if ($conn->query($sql19) === TRUE) {
	
	$pro=$deptid."_faci";
$folder13="../../gallery/facility/".$pro."";
mkdir($folder13, 0777);
$sql20 = "CREATE TABLE `$pro` (
id int(5) NOT NULL  PRIMARY KEY AUTO_INCREMENT,
`type` varchar(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` int(20) DEFAULT NULL,
  `invoice` varchar(200) DEFAULT NULL

)";

if ($conn1->query($sql20) === TRUE) {
	
		$pro=$deptid."_bos";
$folder21="../../gallery/bos/".$pro."";
mkdir($folder21, 0777);
$sql21 = "CREATE TABLE `$pro` (
id int(10) NOT NULL  PRIMARY KEY AUTO_INCREMENT,
`n_bos` int(10) DEFAULT NULL,
  `ayear` varchar(10) DEFAULT NULL,
  `date` DATE DEFAULT NULL,
  `pic` varchar(200) DEFAULT NULL

)";

if ($conn1->query($sql21) === TRUE) {
	
	$pro=$deptid."_bos_mem";
$sql22 = "CREATE TABLE `$pro` (
id int(5) NOT NULL  PRIMARY KEY AUTO_INCREMENT,
`bid` int(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `desig` varchar(100) DEFAULT NULL,
  `adde` varchar(200) DEFAULT NULL,
  `cat` varchar(100) DEFAULT NULL

)";

if ($conn1->query($sql22) === TRUE) {
	
	$pro=$deptid."_org";
$folder23="../../gallery/dept_org/".$pro."";
mkdir($folder23, 0777);
$sql23 = "CREATE TABLE `$pro` (
id int(5) NOT NULL  PRIMARY KEY AUTO_INCREMENT,
`ayear` varchar(10) DEFAULT NULL,
  `orgcategory1` varchar(20) DEFAULT NULL,
  `orgtitle1` varchar(50) DEFAULT NULL,
  `orgfun1` varchar(50) DEFAULT NULL,
  `orgdays1` int(3) DEFAULT NULL,
  `orgfrom1` DATE DEFAULT NULL,
  `orgto1` DATE DEFAULT NULL,
  `orgdate1` DATE DEFAULT NULL,
  `orgres1` varchar(30) DEFAULT NULL,
  `orgpar1` int(5) DEFAULT NULL,
  `orglevel1` varchar(20) DEFAULT NULL,
  `orgcer1` varchar(200) DEFAULT NULL,
  `orgkey` int(1) DEFAULT NULL

)";

if ($conn1->query($sql23) === TRUE) {
	$pro=$deptid."_stud";
$folder24="../../gallery/stud/".$pro."";
mkdir($folder24, 0777);
$folder241="../../gallery/drop/".$pro."";
mkdir($folder241, 0777);
$sql24 = "CREATE TABLE `$pro` (
id int(5) NOT NULL  PRIMARY KEY AUTO_INCREMENT,
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


)";

if ($conn1->query($sql24) === TRUE) {
	
	require_once 'mailer/class.phpmailer.php';
// creates object
$mail = new PHPMailer(true);
$mailid = $email;
$subject = "Thank you for registering.........";
$text_message = "Hello";
$message = "Respected HOD ,<br>This mail is to inform that your department have been registered for the Datacenter for Adhiyamaan College of Engineering. Your Department Login ID is <h1>".$username."</h1> and the password is <h1>".$password."</h1>" ;
try
{
$mail->IsSMTP(); 
$mail->isHTML(true);
$mail->SMTPDebug = 0;
$mail->SMTPAuth = true;
$mail->SMTPSecure = "tls";
$mail->Host = "smtp.gmail.com";
$mail->Port = '587';
$mail->AddAddress($mailid);
$mail->Username ="acedata1987@gmail.com";
$mail->Password ="acedatacenter";
$mail->SetFrom('acedata1987@gmail.com','ACE ADMIN');
$mail->AddReplyTo("acedata1987@gmail.com","ACE ADMIN");
$mail->Subject = $subject;
$mail->Body = $message;
$mail->AltBody = $message;
if($mail->Send())
{
echo "Thank you for register u got a notification through the mail you provide";
}
}
catch(phpmailerException $ex)
{
$msg = "
".$ex->errorMessage()."
";
}

					echo '<script language="javascript">alert("Database Created Successfully");</script>';
					echo '<script type="text/javascript">window.location.href = " dept_add.php";</script>';
						}
else {
    echo "Error1: " . $sql24 . "<br>" . $conn->error;
}
						}
						else {
    echo "Error1: " . $sql23 . "<br>" . $conn->error;
}
						}
						else {
    echo "Error1: " . $sql22 . "<br>" . $conn->error;
}
						}else {
    echo "Error1: " . $sql21 . "<br>" . $conn->error;
}
						}
						else {
    echo "Error1: " . $sql20 . "<br>" . $conn->error;
}
						}
 else {
    echo "Error1: " . $sql19 . "<br>" . $conn->error;
}
						}
 else {
    echo "Error1: " . $sql18 . "<br>" . $conn->error;
}
						}
 else {
    echo "Error1: " . $sql17 . "<br>" . $conn->error;
}
						}
}  else {
    echo "Error1: " . $sql15 . "<br>" . $conn->error;
}
						}
}  else {
    echo "Error1: " . $sql13 . "<br>" . $conn->error;
}					
						}   
  
}  else {
    echo "Error1: " . $sql11 . "<br>" . $conn->error;
}
						}
}  else {
    echo "Error1: " . $sql9 . "<br>" . $conn->error;
}
						}
}  else {
    echo "Error1: " . $sql7 . "<br>" . $conn->error;
}
						}
}  else {
    echo "Error1: " . $sql5 . "<br>" . $conn->error;
}
						}
}  else {
    echo "Error1: " . $sql3 . "<br>" . $conn->error;
}
}  else {
    echo "Error1: " . $sql2 . "<br>" . $conn->error;
}
}  else {
    echo "Error1: " . $sql1 . "<br>" . $conn->error;
}
} else {
    echo "Error: " . $query . "<br>" . $conn->error;
}
} else {
    echo "Error: Faculty folder <br>" . $conn->error;
}
}
$conn->close();

?>
</body>
</html>
