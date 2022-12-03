<?php
$servername = "localhost";
$username = "root";
$password = "";

$dbname1 = "datacenter2";

// Create connection

$conn1 = new mysqli($servername, $username, $password, $dbname1);
// Check connection

if ($conn1->connect_error) {
    die("Connection failed: " . $conn1->connect_error);
} 
/*
$sql18 = "CREATE TABLE `$pro` (
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


)";*/

$pro="mca_bos";
$sql18="CREATE TABLE `$pro` (
  `id` int(10) NOT NULL,
  `n_bos` int(10) NOT NULL,
  `ayear` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `pic` varchar(200) NOT NULL


)";
$pro="mca_bos_mem";
$sql20 = "CREATE TABLE `$pro` (
  `id` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desig` varchar(100) NOT NULL,
  `adde` varchar(200) NOT NULL,
  `cate` varchar(100) NOT NULL


)";
if ($conn1->query($sql18) === TRUE && $conn1->query($sql20) === TRUE) {

/*
$pro="_dept";
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
$pro="mca_faci";
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
	$pro="_org";
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

if ($conn1->query($sql16) === TRUE) {*/
echo '<script language="javascript">alert("Database Created Successfully");</script>';
					echo '<script type="text/javascript">window.location.href = " dept_add.php";</script>';
						}
						else {
    echo "Error1: " . $sql18 . "<br>" . $conn1->error;
}
//}}
?>