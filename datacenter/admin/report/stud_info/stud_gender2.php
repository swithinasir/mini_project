<?php
include("../../../conn/config1.php");
header("Content-type: application/vnd.ms-word");
header("Content-Disposition: attachment;Filename=stud_info.doc");    
echo "<html>";
echo "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=Windows-1252\">";
echo "<body>";
?>
<p align="center"><b>ADHIYAMAAN COLLEGE OF ENGINEERING (Autonomous)</b></p>
<hr>
<?php
$batch=$_POST['batch'];
$cat=$_POST['cat'];
$year=$_POST['year'];
$sem=$_POST['sem'];
$qual=$_POST['qual'];
/*----------THE First FUNCTION STARTS FROM HERE . This is used for displaying attend progarm with all  category---------*/ 
function tab($deptid,$batch,$cat,$year,$sem,$qual)
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
							if($qual=="boys" || $qual=="all")
							{
							echo'<TD><center>';
							echo $row1["g_boys"];
							echo'</center></TD>';
							}
							if($qual=="girls" || $qual=="all")
							{
							echo'<TD><center>';
							echo $row1["g_girls"];
							echo'</center></TD>';
							}
							if($qual=="all")
							{
							echo'<TD><center>';
							echo $row1["stud"];
							echo'</center></TD>';
							}
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
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
			<TH>Depatrment</TH>
			<?php if($qual=="boys" || $qual=="all"){?>
			<TH>Boys</TH>
			<?php }if($qual=="girls" || $qual=="all"){?>
			<TH>Girls</TH>
			<?php }if($qual=="all"){?>
			<TH>Total Students</TH>
			<?php } ?>
			</TR>
			
			<?php
			while($row = $result->fetch_assoc()) 
			{
				$sid = 0;
				$deptid=$row['deptid'];
					tab($deptid,$batch,$cat,$year,$sem,$qual);
				
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
		<TABLE id="dataTable" width="100%" border="1">
			<TR>
						<?php if($qual=="boys" || $qual=="all"){?>
			<TH>Boys</TH>
			<?php }if($qual=="girls" || $qual=="all"){?>
			<TH>Girls</TH>
			<?php }if($qual=="all"){?>
			<TH>Total Students</TH>
			<?php } ?>
			</TR>
			
			<?php
					tab($deptid,$batch,$cat,$year,$sem,$qual);
			?>			
		</TABLE>		
		<?php
	}
	
}
else
{
	echo '<script language="javascript">alert("Select anyone option from ALL , DEPARTMENT");</script>';
	echo '<script type="text/javascript">window.location.href = "stud_gender.php";</script>';
}
?>	

