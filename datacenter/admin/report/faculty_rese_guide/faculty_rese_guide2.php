<?php
include("../../../conn/config.php");
header("Content-type: application/vnd.ms-word");
header("Content-Disposition: attachment;Filename=faculty_rese_guide.doc");    
echo "<html>";
echo "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=Windows-1252\">";
echo "<body>";
$from2=$_POST['from'];
$to2=$_POST['to'];
$to=$_POST['to1'];
$cat=$_POST['cat'];
?>
<p align="center"><b>ADHIYAMAAN COLLEGE OF ENGINEERING (Autonomous)</b></p>
<hr>
<?php
		$num = 0;
		$sql1="SELECT deptid FROM dept";
		$result1=mysqli_query($con,$sql1);
		while($row1 = $result1->fetch_assoc()) 
		{
			$deptid=$row1['deptid'];
			$abc=$deptid."_fac_resg";
			$sql2="SELECT * FROM `$abc`";
			$result2 = $con->query($sql2);
			while($row2 = $result2->fetch_assoc()) 
			{
				if($row2["numsch"]>$num)
				{
					$num = $row2["numsch"];
				}	
			}
		}
/*----------THE First FUNCTION STARTS FROM HERE . This is used for book---------*/ 
function tab($deptid,$to,$to2,$from2,$cat,$sid,$num)
{
	include("../../../conn/config.php");
	$abc=$deptid."_fac_resg";
	if($cat=='in')
	{
		$sql2="SELECT * FROM `$abc` WHERE sid = '$sid'";
		$result2 = $con->query($sql2);
	}
	else
	{
		$sql2="SELECT * FROM `$abc`";
		$result2 = $con->query($sql2);			
	}	
	if ($result2->num_rows > 0) 
	{
		while($row1 = $result2->fetch_assoc()) 
		{
			$abcd=$deptid."_fac";
			if($cat=='in')
		    {
				$sid1=$sid;
				$sql3="SELECT name FROM `$abcd` WHERE sid = '$sid1'";
				$result3 = $con->query($sql3);
			}
			else
			{
				$sid1=$row1["sid"];	
				$sql3="SELECT name FROM `$abcd` WHERE sid = '$sid1' && doj < '$to2' && dor > '$from2' || dor IS NULL && doj < '$to2'";
				$result3 = $con->query($sql3);
			}	
			if ($result3->num_rows > 0) 
			{
				$row3 = $result3->fetch_assoc();
				?>
				<TR>						
				<?php	
				if($cat!='in')
				{
					?>
					<TD><?php echo $row1["sid"];?></TD>
					<TD><?php echo $row3["name"] ;?></TD>
					<?php
				}
				if($cat=='all')
				{
				?>
					<TD><?php echo $deptid;?></TD>
				<?php
				}													
				echo'<TD><center>';
					echo $row1["uname"] ;
				echo '</center></TD>';
				echo'<TD><center>';
					echo $row1["supid"] ;
				echo '</center></TD>';
				//echo'<TD><center>';
				//	$numsch = 0;
				//	for( $i=1; $i<=$row1["numsch"];$i++)
				//	{
				//		$year0="year".$i;
				//		if($row1["$year0"] <= $to)
				//		{
				//			$numsch = $numsch + 1;
				//		}
				//	}
				//	echo $numsch;	
				//echo '</center></TD>';
				//for( $i=1; $i<=$row1["numsch"];$i++)
				//{	
				//	$reg0="reg".$i;
				//	$year0="year".$i;
				//	$spec0="spec".$i;
				//	$tit0="tit".$i;
				//	if($row1["$year0"] <= $to)
				//	{								
						echo'<TD><center>';
							echo $row1["reg"];
						echo '</center></TD>';
						echo'<TD><center>';
							echo $row1["year"];
						echo'</center></TD>';
						echo'<TD><center>';
							echo $row1["cyear"];
						echo'</center></TD>';
						echo'<TD><center>';
							echo $row1["spec"];
						echo'</center></TD>';
						echo'<TD><center>'; 
							echo $row1["tit"];
						echo'</center></TD>';						
						echo'<TD><center>'; 
							echo $row1["j_sup"];
						echo'</center></TD>';
				//	}
			//	}	
				?>							
				</TR>
				<?php					
			}	
		}	
	}
}
/* -------- The if condn starts from here . --------- */
if($cat=='all' || $cat=='dept' || $cat=='in')
{
	if($cat=='all')
	{
		$sql="SELECT deptid FROM dept";
		$result=mysqli_query($con,$sql);				
		?>
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<TH>Staff ID </TH>
				<TH>Name</TH>
				<TH>Department</TH>
				<TH>University Name</TH>
				<TH>Supervisor ID</TH>
				<?php
				//for( $i=0; $i<$num;$i++)
				//{
				?>
				<TH>Register No.</TH>
				<TH>Year Of Registration</TH>
				<TH>Year Of Complition</TH>
				<TH>Specialization</TH>
				<TH>Title of THESIS</TH>
				<TH>Joint Supervisor</TH>
				<?php
				//}
				?>
			</TR>
			
			<?php
			while($row = $result->fetch_assoc()) 
			{
				$sid = 0;
				$deptid=$row['deptid'];
				tab($deptid,$to,$to2,$from2,$cat,$sid,$num);
			}
			?>
		</TABLE>
		<?php
	}
	if($cat=='dept')
	{
			$sid = 0;
			$deptid=$_POST['dept'];	
			echo "<br>";
			echo "<b>DEPARTMENT</b> : <i>",$deptid,"</i>";
		?>
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<TH>Staff ID </TH>
				<TH>Name</TH>
				<TH>University Name</TH>
				<TH>Supervisor ID</TH>
				<?php
				//for( $i=0; $i<$num;$i++)
				//{
				?>
				<TH>Register No.</TH>
				<TH>Year Of Registration</TH>
				<TH>Year Of Complition</TH>
				<TH>Specialization</TH>
				<TH>Title of THESIS</TH>
				<TH>Joint Supervisor</TH>
				<?php
				//}
				?>
			</TR>
			
			<?php					
				tab($deptid,$to,$to2,$from2,$cat,$sid,$num);
			?>			
		</TABLE>		
		<?php
	}
	if($cat=='in')
	{
			$sid = $_POST['sid'];	
			$deptid=substr($sid, 3, 3);
			echo "<br>";
			echo "<b>Staff ID </b> : <i>",$sid,"</i>";
			echo "<br>";
			echo "<b>DEPARTMENT</b> : <i>",$deptid,"</i>";
		?>
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<TH>University Name</TH>
				<TH>Supervisor ID</TH>
				<?php
				//for( $i=0; $i<$num;$i++)
				//{
				?>
				<TH>Register No.</TH>
				<TH>Year Of Registration</TH>
				<TH>Year Of Complition</TH>
				<TH>Specialization</TH>
				<TH>Title of THESIS</TH>
				<TH>Joint Supervisor</TH>
				<?php
				//}
				?>
			</TR>			
			<?php					
				tab($deptid,$to,$to2,$from2,$cat,$sid,$num);
			?>			
		</TABLE>		
		<?php
	}
}
else
{
	echo '<script language="javascript">alert("Select anyone option from ALL , DEPARTMENT , INDIVIDUAL");</script>';
	echo '<script type="text/javascript">window.location.href = "faculty_rese_guide.php";</script>';
}
?>	