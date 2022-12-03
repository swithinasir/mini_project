<?php
session_start();
include("../conn/config1.php");
  if(isset($_POST["update_orga"]))
{
	$id=$_POST["id"];
	$ayear=$_POST["ayear"];
	$orgcategory1=$_POST["orgcategory1"];
	$orgtitle1=$_POST["orgtitle1"];
	$orgfun1=$_POST["orgfun1"];
	$orgdays1=$_POST["orgdays1"];
	$orgfrom1=$_POST["orgfrom1"];
	$orgto1=$_POST["orgto1"];
	$orgdate1=$_POST["orgdate1"];
	$orgres1=$_POST["orgres1"];
	$orgpar1=$_POST["orgpar1"];
	$orglevel1=$_POST["orglevel1"];
	$sql = "UPDATE soci_org SET `ayear`='$ayear' ,
	`orgcategory1`='$orgcategory1' ,
	`orgtitle1`='$orgtitle1' ,
	`orgfun1`='$orgfun1' ,
	`orgdays1`='$orgdays1' ,
	`orgfrom1`='$orgfrom1' ,
	`orgto1`='$orgto1' ,
	`orgdate1`='$orgdate1' ,
	`orgres1`='$orgres1' ,
	`orgpar1`='$orgpar1' ,
	`orglevel1`='$orglevel1' WHERE `id`='$id'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Program Organized Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "soci_org.php";</script>';
	}
 
 }
 ?>