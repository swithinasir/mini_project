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
include("../../../conn/config.php");

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
							<TD>
							<form action="faculty_info3.php" method="post">
					<input type="hidden" name="sid" value="<?php echo $row1["sid"]; ?>">
					<input type="hidden" name="dept" value="<?php echo $deptid; ?>">
					<input type="hidden" name="cat" value="<?php echo $cat; ?>">
					<button>
						<?php echo $row1["sid"];?>
					</button>
				</form>
							
							</TD>
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
						
						
						echo'<TD><center>';
							$uploadpic=$row1["uploadpic"];
							$src="../../../gallery/photo/".$abcd."/".$uploadpic;?>
					<img width="50px" height="50px" src="<?php echo $src ; ?>">
			
							<?php echo '</center></TD>';
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
		<div align="right">
			<form action="faculty_info2.php" method="post">
				<input type="hidden" name="from" value="<?php echo $from2; ?>">
				<input type="hidden" name="to" value="<?php echo $to2; ?>">
				<input type="hidden" name="cat" value="<?php echo $cat; ?>">
				<button>
					<img width="50px" height="50px" src="../../../images/word.png">
				</button>
			</form><br>
		</div>
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
				<TH>Photo</TH>
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
			<div align="right">
				<form action="faculty_info2.php" method="post">
					<input type="hidden" name="from" value="<?php echo $from2; ?>">
					<input type="hidden" name="to" value="<?php echo $to2; ?>">
					<input type="hidden" name="cat" value="<?php echo $cat; ?>">
					<input type="hidden" name="dept" value="<?php echo $deptid; ?>">
					<button>
						<img width="50px" height="50px" src="../../../images/word.png">
					</button>
				</form><br>
			</div>
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
					<TH>Photo</TH>
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
			echo "<br>";?>
			<form action="faculty_info3.php" method="post">
					<input type="hidden" name="sid" value="<?php echo $sid; ?>">
					<input type="hidden" name="dept" value="<?php echo $deptid; ?>">
					<input type="hidden" name="cat" value="<?php echo $cat; ?>">
			<?php		
			echo "<b>Staff ID </b> : <i><button>",$sid,"</button></i>";?>
			</form>
			<?php
			echo "<br>";
			echo "<b>DEPARTMENT</b> : <i>",$deptid,"</i>";
			?>
			<div align="right">
				<form action="faculty_info2.php" method="post">
					<input type="hidden" name="from" value="<?php echo $from2; ?>">
					<input type="hidden" name="to" value="<?php echo $to2; ?>">
					<input type="hidden" name="cat" value="<?php echo $cat; ?>">
					<input type="hidden" name="sid" value="<?php echo $sid; ?>">
					<button>
						<img width="50px" height="50px" src="../../../images/word.png">
					</button>
				</form><br>
			</div>
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
					<TH>Photo</TH>
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
