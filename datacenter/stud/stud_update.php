 <?php
 session_start();
include("../conn/config1.php");
 if(isset($_POST["update_stud"]))
{
	$id=$_POST["id"];
	$g_boys=$_POST["g_boys"];
	$g_girls=$_POST["g_girls"];
	$c_oc=$_POST["c_oc"];
	$c_bc=$_POST["c_bc"];
	$c_bcm=$_POST["c_bcm"];
	$c_mbc=$_POST["c_mbc"];
	$c_sc=$_POST["c_sc"];
	$c_sca=$_POST["c_sca"];
	$c_st=$_POST["c_st"];
	$new_j=$_POST["new_j"];
	$drop=$_POST["drop"];
	$stud=$_POST["stud"];
	$deptid=$_SESSION['deptid'];
	$aaa=$deptid."_stud";
	$sql = "UPDATE `$aaa` SET `g_boys`='$g_boys' ,
	`g_girls`='$g_girls' ,
	`c_oc`='$c_oc' ,
	`c_bc`='$c_bc' ,
	`c_bcm`='$c_bcm' ,
	`c_mbc`='$c_mbc' ,
	`c_sc`='$c_sc' ,
	`c_sca`='$c_sca' ,
	`c_st`='$c_st' ,
	`new_j`='$new_j' ,
	`drop`='$drop' ,
	`stud`='$stud'  WHERE `id`='$id'";
	if(mysqli_query($con,$sql))
	{
		echo '<script language="javascript">alert("Students Details Updated Sucessfully");</script>';
		echo '<script type="text/javascript">window.location.href = "stud_desc.php";</script>';
	}
 
 }
 ?>