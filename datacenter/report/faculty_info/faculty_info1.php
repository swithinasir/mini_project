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
$from="1987";
$end=date("Y");
if(date("m")<6)
{
	$end=$end-1;
}
$to=$end;
$text2 = "-06";
$text4 = "-06-01";
$from = $from.$text2;
$from1 = Date($from);
$from = $from.$text4;
$from2 = Date($from);
$text3 = "-05";
$text5 = "-05-1";
$to = $to.$text3;
$to1 = Date($to);
$to = $to.$text5;
$to2 = Date($to);
function tab1($deptid,$to2,$from2,$cat,$sid)
{
	$from2 = Date($from2);
	$to2 = Date($to2);
	include("../../conn/config.php");
	
	
			$abcd=$deptid."_fac";
			if($cat=='in')
		    {
				$sid1=$sid;
				$sql3="SELECT * FROM `$abcd` WHERE sid = '$sid1' ";
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
							
							$stid=$row1['sid'];
							$bin = array();
							for($i=0; strlen($stid)>$i; $i++)
							$bin[] = ord($stid[$i]);
							?>
							<TD><a href="faculty_info2.php?stid=<?=implode(' ',$bin);?>" class ="button1" target="frame1"><?php echo $row1['sid']; ?></a></TD>
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
							$doj=Date("d-m-Y",strtotime($row1["doj"]));
							//echo date("d-m-y", $doj);
							echo $doj;
							echo '</center></TD>';
						
						
						echo'<TD><center>';
							$uploadpic=$row1["uploadpic"];
							$src="../../gallery/photo/".$abcd."/".$uploadpic;?>
					<img width="50px" height="50px" src="<?php echo $src ; ?>">
			
							<?php echo '</center></TD>';
					echo'</TR>';	
			}	}	
}
/* -------- The if condn starts from here . --------- */
			$cat="dept";
			$sid = 0;
			$deptid=$_SESSION['deptid'];	
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
					<TH>Date Of Joining</TH>
					<TH>Photo</TH>
				</TR>

				<?php
				tab1($deptid,$to2,$from2,$cat,$sid);
				?>
			
			</TABLE>
			
	
