<?php
session_start();
include("../../../conn/config1.php");
$from1=$_POST['from'];
$to1=$_POST['to'];
$batch="".$from1."-".$to1;
$cat=$_POST['cat'];
$year=$_POST['year'];
$sem=$_POST['sem'];
/*----------THE First FUNCTION STARTS FROM HERE . This is used for displaying attend progarm with all  category---------*/ 
function tab($deptid,$batch,$cat,$year,$sem)
{
	include("../../../conn/config1.php");
	$abc=$deptid."_stud";
	
		$sql2="SELECT * FROM `$abc` WHERE batch='$batch' && year='$year' && sem='$sem'";
		$result2 = $con->query($sql2);			
		
	if ($result2->num_rows > 0) 
	{
		while($row1 = $result2->fetch_assoc()) 
		{
					
						
							if($cat=='all')
							{
							?>
								<TD><?php echo $deptid;?></TD>
							<?php
							}
							echo'<TD><center>';
							echo $row1["g_boys"];
							echo'</center></TD>';
							echo'<TD><center>';
							echo $row1["g_girls"];
							echo'</center></TD>';
							echo'<TD><center>';
							echo $row1["c_oc"];
							echo'</center></TD>';
							echo'<TD><center>';
							echo $row1["c_bc"];
							echo'</center></TD>';
							echo'<TD><center>';
							echo $row1["c_bcm"];
							echo'</center></TD>';
							echo'<TD><center>';
							echo $row1["c_mbc"];
							echo'</center></TD>';
							echo'<TD><center>';
							echo $row1["c_sc"];
							echo'</center></TD>';
							echo'<TD><center>';
							echo $row1["c_sca"];
							echo'</center></TD>';
							echo'<TD><center>';
							echo $row1["c_st"];
							echo'</center></TD>';
							echo'<TD><center>';
							echo $row1["stud"];
							echo'</center></TD>';
							?>							
						</TR>
						<?php
					}
	}	
				
		
	
}
/* -------- The if condn starts from here . --------- */
if($cat=='all' || $cat=='dept')
{
	if($cat=='all')
	{
		$con1 = mysqli_connect("localhost", "root", "", "datacenter");
		$sql="SELECT deptid FROM dept";
		$result=mysqli_query($con1,$sql);
		
			echo "<br>";
			echo "<b>BATCH</b> : <i>",$batch,"</i>";
			echo "<br>";
			echo "<b>YEAR</b> : <i>",$year,"</i>";
			echo "<br>";
			echo "<b>SEMESTER</b> : <i>",$sem,"</i>";
		?>
		<div align="right">
			<form action="stud_batch2.php" method="post">
				<input type="hidden" name="batch" value="<?php echo $batch; ?>">
				<input type="hidden" name="cat" value="<?php echo $cat; ?>">
				<input type="hidden" name="year" value="<?php echo $year; ?>">
				<input type="hidden" name="sem" value="<?php echo $sem; ?>">
				<button>
					<img width="50px" height="50px" src="../../../images/word.png">
				</button>
			</form><br>
		</div>
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
			<TH>Depatrment</TH>
			<TH>Boys</TH>
			<TH>Girls</TH>
			<TH>OC</TH>
			<TH>BC</TH>
			<TH>BCM</TH>
			<TH>MBC</TH>
			<TH>SC</TH>
			<TH>SCA</TH>
			<TH>ST</TH>
			<TH>Total Students</TH>
			</TR>
			
			<?php
			while($row = $result->fetch_assoc()) 
			{
				$sid = 0;
				$deptid=$row['deptid'];
					tab($deptid,$batch,$cat,$year,$sem);
				
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
			echo "<br>";
			echo "<b>BATCH</b> : <i>",$batch,"</i>";
			echo "<br>";
			echo "<b>YEAR</b> : <i>",$year,"</i>";
			echo "<br>";
			echo "<b>SEMESTER</b> : <i>",$sem,"</i>";
		?>
		<div align="right">
			<form action="stud_batch2.php" method="post">
				<input type="hidden" name="batch" value="<?php echo $batch; ?>">
				<input type="hidden" name="cat" value="<?php echo $cat; ?>">
				<input type="hidden" name="year" value="<?php echo $year; ?>">
				<input type="hidden" name="sem" value="<?php echo $sem; ?>">
				<input type="hidden" name="dept" value="<?php echo $deptid; ?>">
				<button>
					<img width="50px" height="50px" src="../../../images/word.png">
				</button>
			</form><br>
		</div>
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
			<TH>Boys</TH>
			<TH>Girls</TH>
			<TH>OC</TH>
			<TH>BC</TH>
			<TH>BCM</TH>
			<TH>MBC</TH>
			<TH>SC</TH>
			<TH>SCA</TH>
			<TH>ST</TH>
			<TH>Total Students</TH>
			</TR>
			
			<?php
					tab($deptid,$batch,$cat,$year,$sem);
			?>			
		</TABLE>		
		<?php
	}
	
}
else
{
	echo '<script language="javascript">alert("Select anyone option from ALL , DEPARTMENT");</script>';
	echo '<script type="text/javascript">window.location.href = "stud_batch.php";</script>';
}
?>	
