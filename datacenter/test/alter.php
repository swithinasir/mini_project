<?php
session_start();
include("../conn/config.php");
$deptid=$_SESSION['deptid'];
 $sid=$_SESSION['sid'];
 $aaa=$deptid."_fac_member";
 $sql1="SELECT * FROM dept WHERE deptid = '$deptid'";
 $result = $con->query($sql1);
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			$tablekey=$row["memberkey"];
		echo "".$tablekey."<br>";
		}
	}
	else {
    echo "Error: <br>" . $con->error;
}
 $sql2="SELECT * FROM `$aaa` WHERE sid = '$sid' AND ayear = '1990-1991'";
 $result2 = $con->query($sql2);
	if ($result2->num_rows > 0) {
		while($row2 = $result2->fetch_assoc()) {
			$memkey=$row2["memkey"];
			echo "".$memkey;
			if($tablekey == $memkey)
			{
				$validity2="validity".$memkey;
				$tablekey=$tablekey+1;
				$memkey=$memkey+1;
				$name1="name".$memkey;
				$memberid1="memberid".$memkey;
				$validity1="validity".$memkey;
			
				$sql3="ALTER TABLE `$aaa` ADD `$name1` VARCHAR(50) NOT NULL AFTER `$validity2`, ADD `$memberid1` VARCHAR(30) NOT NULL AFTER `$name1`, ADD `$validity1` VARCHAR(20) NOT NULL AFTER `$memberid1`";				

				if(mysqli_query($con,$sql3))
				{
				echo"suceess";
				}
				else {
    echo "Error: " . $sql3 . "<br>" . $con->error;
}
			}
		}
	}
else {
    echo "Error1: <br>" . $con->error;
}	
			?>