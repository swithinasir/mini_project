<?php
session_start();
include("../../conn/config.php");
$deptid=$_POST['deptid'];
$email=$_POST['email'];
$about=$_POST['about'];


	$sql4 = "UPDATE dept SET email='$email' ,about='$about' WHERE deptid= '$deptid'";
	if(mysqli_query($con,$sql4))
		{
			echo '<script language="javascript">alert("Department Details Updated Successfully");</script>';
			echo '<script type="text/javascript">window.location.href = "../admin_desc.php";</script>';
		}			  
 
?>