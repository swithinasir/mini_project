<?php
include("../../../conn/config.php");
header("Content-type: application/vnd.ms-word");
header("Content-Disposition: attachment;Filename=faculty_award.doc");    
echo "<html>";
echo "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=Windows-1252\">";
echo "<body>";
$from=$_POST['from'];
$to=$_POST['to'];
$cat=$_POST['cat'];
?>
<p align="center"><b>ADHIYAMAAN COLLEGE OF ENGINEERING (Autonomous)</b></p>
<hr>
<?php
/*----------THE First FUNCTION STARTS FROM HERE . This is used for Awards---------*/ 
function tab($deptid,$to1,$from1,$cat,$sid)
{
	include("../../../conn/config.php");
	$abc=$deptid."_fac_member";
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
				$sql3="SELECT name FROM `$abcd` WHERE sid = '$sid1' && dor IS NULL ";
				$result3 = $con->query($sql3);
			}	
			if ($result3->num_rows > 0) 
			{
				$row3 = $result3->fetch_assoc();
				for($i=1;$i<=$row1["awakey"];$i++)
				{		
					$ayear = $row1["ayear"];	
					$from1 = substr($ayear, 0, 4);	
					$to1 = substr($ayear, 5, 4);
					if (($from1 >= $from) && ($to1 <= $to) )
					{											
						$aname0="aname".$i;
						$aissue0="aissue".$i;
						$amy0="amy".$i;
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
							echo $row1["ayear"];
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$aname0"];
							echo'</center></TD>';
							echo'<TD><center>';
							echo $row1["$aissue0"];
							echo'</center></TD>';
							echo'<TD><center>';
							echo $row1["$amy0"];
							echo'</center></TD>';
							?>							
						</TR>
					<?php
					}
				}	
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
				<TH>Academic Year</TH>
				<TH>Name of the Award</TH>
				<TH>Issued By</TH>
				<TH>Month & Year</TH>
			</TR>
			
			<?php
			while($row = $result->fetch_assoc()) 
			{
				$sid = 0;
				$deptid=$row['deptid'];
				tab($deptid,$to,$from,$cat,$sid);
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
				<TH>Academic Year</TH>
				<TH>Name of the Award</TH>
				<TH>Issued By</TH>
				<TH>Month & Year</TH>
			</TR>
			
			<?php
					tab($deptid,$to,$from,$cat,$sid);
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
				<TH>Academic Year</TH>
				<TH>Name of the Award</TH>
				<TH>Issued By</TH>
				<TH>Month & Year</TH>
			</TR>			
			<?php
					tab($deptid,$to,$from,$cat,$sid);
			?>			
		</TABLE>		
		<?php
	}
}
else
{
	echo '<script language="javascript">alert("Select anyone option from ALL , DEPARTMENT , INDIVIDUAL");</script>';
	echo '<script type="text/javascript">window.location.href = "faculty_award.php";</script>';
}
?>	
