<style>
th, td {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
	 background-color: #f2f2f2;
}
</style>
<?php
session_start();
include("../../conn/config.php");
$from=$_POST['from'];
$to=$_POST['to'];
$text2 = "-06";
$text4 = "-06-01";
$from = $from.$text2;
$from1 = Date($from);
$from = $from.$text4;
$from2 = Date($from);
$text3 = "-05";
$text5 = "-05-01";
$to = $to.$text3;
$to1 = Date($to);
$to = $to.$text5;
$to2 = Date($to);
$cat=$_POST['cat'];
$qual=$_POST['qual'];
function tab1($deptid,$to1,$to2,$cat,$sid)
{
	include("../../conn/config.php");
	$abc=$deptid."_fac_funpat";
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
				$sql3="SELECT name FROM `$abcd` WHERE sid = '$sid1' && dor IS NULL";
				$result3 = $con->query($sql3);
			}	
			if ($result3->num_rows > 0) 
			{
				$row3 = $result3->fetch_assoc();
				for($i=1;$i<=$row1["funkey"];$i++)
				{	
					$year="year".$i;
					$startdate="startdate".$i;
					if (($row1["$year"] == NULL || $row1["$year"] >= $to1) && ($row1["$startdate"] <= $to2 ))  
					{
					?>
						<TR>
							<?php
							$titleofpro="titleofpro".$i;
							$duration="duration".$i;
							$amountsan="amountsan".$i;
							$agency="agency".$i;
							$startdate="startdate".$i;
							$copiname="copiname".$i;
							$year="year".$i;
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
							echo $row1["ayear"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$titleofpro"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$duration"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$amountsan"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$agency"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$startdate"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$copiname"] ;
							echo '</center></TD>';
							?>
						</TR>
					<?php
					}
				}	
			}	
		}
	}
}
/*----------THE SECOND FUNCTION STARTS FROM HERE . This is used for Ph.D Awarded staffs---------*/ 
function tab2($deptid,$to1,$from1,$cat,$sid)
{
	include("../../conn/config.php");
	$abc=$deptid."_fac_funpat";
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
				for($i=1;$i<=$row1["funkey"];$i++)
				{		
					$year="year".$i;	
					if (($row1["$year"] <= $to1) && ($row1["$year"] != NULL) )
					{
					?>
						<TR>
							<?php
							$titleofpro="titleofpro".$i;
							$duration="duration".$i;
							$amountsan="amountsan".$i;
							$agency="agency".$i;
							$startdate="startdate".$i;
							$copiname="copiname".$i;
							$year="year".$i;
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
							echo $row1["ayear"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$titleofpro"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$duration"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$amountsan"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$agency"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$startdate"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$copiname"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["$year"] ;
							echo '</center></TD>';
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
		if($qual=='ongoing')
		{
		?>

		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<TH>Staff ID </TH>
				<TH>Name</TH>
				<TH>Department</TH>
				<TH>Academic Year</TH>
				<TH>Title of Project</TH>
				<TH>Duration</TH>
				<TH>Amount Sancitioned</TH>
				<TH>Agency</TH>
				<TH>Start Date</TH>
				<TH>COPI Name</TH>
			</TR>
			
			<?php
			while($row = $result->fetch_assoc()) 
			{
				$sid = 0;
				$deptid=$row['deptid'];
				tab1($deptid,$to1,$to2,$cat,$sid);
			}
			?>
			
		</TABLE>
		
		<?php
		}
		if($qual=='completed')
		{
		?>

		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<TH>Staff ID </TH>
				<TH>Name</TH>
				<TH>Department</TH>
				<TH>Academic Year</TH>
				<TH>Title of Project</TH>
				<TH>Duration</TH>
				<TH>Amount Sancitioned</TH>
				<TH>Agency</TH>
				<TH>Start Date</TH>
				<TH>COPI Name</TH>
				<TH>Year of Complition</TH>
			</TR>
			
			<?php
			while($row = $result->fetch_assoc()) 
			{
				$sid = 0;
				$deptid=$row['deptid'];
				tab2($deptid,$to1,$from1,$cat,$sid);
			}
			?>
			
		</TABLE>
		
		<?php
		}
	}
	if($cat=='dept')
	{
		if($qual=='ongoing')
		{
			$sid = 0;
			$deptid=$_SESSION['deptid'];	
			echo "<br>";
			echo "<b>DEPARTMENT</b> : <i>",$deptid,"</i>";
			?>

			<TABLE id="dataTable" width="100%" border="1">
				<TR>
					<TH>Staff ID </TH>
					<TH>Name</TH>
					<TH>Academic Year</TH>
					<TH>Title of Project</TH>
					<TH>Duration</TH>
					<TH>Amount Sancitioned</TH>
					<TH>Agency</TH>
					<TH>Start Date</TH>
					<TH>COPI Name</TH>
				</TR>

				<?php				
				tab1($deptid,$to1,$to2,$cat,$sid);
				?>
			
			</TABLE>
			
			<?php
		}
		if($qual=='completed')
		{
			$sid = 0;
			$deptid=$_SESSION['deptid'];	
			echo "<br>";
			echo "<b>DEPARTMENT</b> : <i>",$deptid,"</i>";
		?>

		<TABLE id="dataTable" width="100%" border="1">
			<TR>
				<TH>Staff ID </TH>
				<TH>Name</TH>
				<TH>Academic Year</TH>
				<TH>Title of Project</TH>
				<TH>Duration</TH>
				<TH>Amount Sancitioned</TH>
				<TH>Agency</TH>
				<TH>Start Date</TH>
				<TH>COPI Name</TH>
				<TH>Year of Complition</TH>
			</TR>
			
			<?php
			tab2($deptid,$to1,$from1,$cat,$sid);
			?>
			
		</TABLE>
		
		<?php
		}
	}
	if($cat=='in')
	{
		if($qual=='ongoing')
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
					<TH>Title of Project</TH>
					<TH>Duration</TH>
					<TH>Amount Sancitioned</TH>
					<TH>Agency</TH>
					<TH>Start Date</TH>
					<TH>COPI Name</TH>
				</TR>

				<?php				
				tab1($deptid,$to1,$to2,$cat,$sid);
				?>
			
			</TABLE>
			
			<?php
		}
		if($qual=='completed')
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
				<TH>Title of Project</TH>
				<TH>Duration</TH>
				<TH>Amount Sancitioned</TH>
				<TH>Agency</TH>
				<TH>Start Date</TH>
				<TH>COPI Name</TH>
				<TH>Year of Complition</TH>
			</TR>
			
			<?php
			tab2($deptid,$to1,$from1,$cat,$sid);
			?>
			
		</TABLE>
		
		<?php
		}
	}
}
else
{
	echo '<script language="javascript">alert("Select anyone option from ALL , DEPARTMENT , INDIVIDUAL");</script>';
	echo '<script type="text/javascript">window.location.href = "faculty_research.php";</script>';
}
?>	
