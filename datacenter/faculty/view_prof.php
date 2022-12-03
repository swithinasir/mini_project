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

function tab1($deptid,$sid)
{
	
	include("../conn/config.php");

			$abcd=$deptid."_fac";
				$sid1=$sid;
				$sql3="SELECT * FROM `$abcd` WHERE sid = '$sid1' ";
				$result3 = $con->query($sql3);
			
			if ($result3->num_rows > 0) 
			{
				while($row1 = $result3->fetch_assoc())
				{	
				?>
						<TR>

							<TD><?php echo $row1["sid"];?></TD>
												
							<TD><?php echo $row1["name"] ;?></TD>
							<TD><?php echo $deptid;?></TD>
							<?php
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
							echo $row1["blood"] ;
							echo '</center></TD>';
							echo'<TD><center>';
							$doj=Date("d-m-Y",strtotime($row1["doj"]));
							//echo date("d-m-y", $doj);
							echo $doj;
							echo '</center></TD>';
						
						
						echo'<TD><center>';
							$uploadpic=$row1["uploadpic"];
							$src="../gallery/photo/".$abcd."/".$uploadpic;?>
					<img width="50px" height="50px" src="<?php echo $src ; ?>">
			
							<?php echo '</center></TD>';
					echo'</TR>';	
			}	}	
}

	
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
				<TH>Blood Group</TH>
				<TH>Date Of Joining</TH>
				<TH>Photo</TH>
			</TR>			
			<?php
			
				$sid = $_SESSION['sid'];
				$deptid=$_SESSION['deptid'];
				tab1($deptid,$sid);
			
			?>
			
		</TABLE>
		
		<?php
		
	
	
?>	
