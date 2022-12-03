<?php
include("../../../conn/config.php");
  header("Content-type: application/vnd.ms-word");
  header("Content-Disposition: attachment;Filename=faculty_info.doc");    
  echo "<html>";
  echo "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=Windows-1252\">";
  echo "<body>";
?>
<p align="center"><b>ADHIYAMAAN COLLEGE OF ENGINEERING (Autonomous)</b></p>
<hr>
<?php
$cat=$_POST['cat'];
function tab1($deptid,$cat,$sid)
{
	
	include("../../../conn/config.php");
	
	
			$abcd=$deptid."_fac";
			if($cat=='in')
		    {
				$sid1=$sid;
				$sql3="SELECT * FROM `$abcd` WHERE sid = '$sid1'";
				$result3 = $con->query($sql3);
			}
			else
			{
				$sql3="SELECT * FROM `$abcd` ";
				$result3 = $con->query($sql3);
			}	
			if ($result3->num_rows > 0) 
			{
				while($row1 = $result3->fetch_assoc())
				{	
				?>
						<TR>
							<?php
							if($cat!='in')
							{
							?>
							<TD><?php echo $row1["sid"];?></TD>
							<?php
							}	
							?>						
							<TD><?php echo $row1["name"] ;?></TD>
							<?php
							if($cat=='all')
							{
							?>
								<TD><?php echo $deptid;?></TD>
							<?php
							}
							echo'<TD><center>';
							$dob=Date("d-m-Y",strtotime($row1["dob"])); 
							echo $dob;
							echo '</center></TD>';
							echo'<TD><center>';
							$dob=$row1["dob"] ;
							$from = new DateTime($dob);
							$to   = new DateTime('today');
							echo $from->diff($to)->y;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["gender"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["email"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["mob1"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["address"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							echo $row1["aadharno"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							$sid1=$row1["sid"];
							$abc=$deptid."_fac_bkjrn";
							$sql4="SELECT * FROM `$abc` WHERE sid = '$sid1' && gl IS NOT NULL";
							$result4 = $con->query($sql4);
							
							if($result4->num_rows > 0)
							{
								$row2 = $result4->fetch_assoc();
							?>
							<a href="<?php echo $row2["gl"]; ?>" target="_blank" ><?php echo $row2["gl"] ;?></a>
							<?php
							}
							else
							{	
							echo"--";
							}
							echo '</center></TD>';
							echo'<TD><center>';
							$doj=Date("d-m-Y",strtotime($row1["doj"]));
							//echo date("d-m-y", $doj);
							echo $doj;
							echo '</center></TD>';
						
						/*
						echo'<TD><center>';
							$uploadpic=$row1["uploadpic"];
							$src="../../../gallery/photo/".$abcd."/".$uploadpic;?>
					<img width="50px" height="50px" src="<?php echo $src ; ?>">
			
							<?php echo '</center></TD>';*/
					echo'</TR>';	
			}	}	
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
				<TH>Date Of Birth</TH>
				<TH>Age</TH>
				<TH>Gender</TH>
				<TH>Email</TH>
				<TH>Mobile Number</TH>
				<TH>Address</TH>
				<TH>Aadhar Number</TH>
					<TH>Google Link</TH>
				<TH>Date Of Joining</TH>
				<!--<TH>Photo</TH>-->
			</TR>			
			<?php
			while($row = $result->fetch_assoc()) 
			{
				$sid = 0;
				$deptid=$row['deptid'];
				tab1($deptid,$cat,$sid);
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
					<TH>Date Of Birth</TH>
					<TH>Age</TH>
					<TH>Gender</TH>
					<TH>Email</TH>
					<TH>Mobile Number</TH>
					<TH>Address</TH>
					<TH>Aadhar Number</TH>
					<TH>Google Link</TH>
					<TH>Date Of Joining</TH>
				<!--<TH>Photo</TH>-->
				</TR>

				<?php
				tab1($deptid,$cat,$sid);
				?>
			
			</TABLE>
			
			<?php
		
	}
	if($cat=='in')
	{
			$sid = $_POST['sid'];	
			$deptid=substr($sid, 3, 3);
			echo "<br>";	
			echo "<b>Staff ID </b> : <i><button>",$sid,"</button></i>";
			echo "<br>";
			echo "<b>DEPARTMENT</b> : <i>",$deptid,"</i>";
			?>
			
			<TABLE id="dataTable" width="100%" border="1">
				<TR>	
					<TH>Name</TH>				
					<TH>Date Of Birth</TH>
					<TH>Age</TH>
					<TH>Gender</TH>
					<TH>Email</TH>
					<TH>Mobile Number</TH>
					<TH>Address</TH>
					<TH>Aadhar Number</TH>
					<TH>Google Link</TH>
					<TH>Date Of Joining</TH>
				<!--<TH>Photo</TH>-->
				</TR>

				<?php
				tab1($deptid,$cat,$sid);
				?>
			
			</TABLE>
			
			<?php		
	}
}
else
{
	echo '<script language="javascript">alert("Select anyone option from ALL , DEPARTMENT , INDIVIDUAL");</script>';
	echo '<script type="text/javascript">window.location.href = "faculty_info.php";</script>';
}
?>	
