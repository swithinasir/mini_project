<?php
include("../../../conn/config1.php");
header("Content-type: application/vnd.ms-word");
header("Content-Disposition: attachment;Filename=profe_society.doc");    
echo "<html>";
echo "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=Windows-1252\">";
echo "<body>";
?>
<p align="center"><b>ADHIYAMAAN COLLEGE OF ENGINEERING (Autonomous)</b></p>
<hr>
<?php
	$sql="SELECT * FROM prof_soci  ORDER BY name_sci ASC";

$result = $con->query($sql);
if ($result->num_rows > 0) {
    // output data of each row
	?>
	<div align="right">
			<form action="soci_name1.php" method="post">
				<button>
					<img width="50px" height="50px" src="../../../images/word.png">
				</button>
			</form><br>
		</div>
	<?php	
	echo'<TABLE id="dataTable" width="100%" border="1">';
			echo'<TR>';
			echo'<TH>Register ID</TH>';
			echo'<TH>Name of the Society</TH>';
			echo'<TH>Name of the Incharge</TH>';
			echo'<TH>Email</TH>';
			echo'<TH>Mobile No.</TH>';
			echo'</TR>';
    while($row = $result->fetch_assoc()) {
		?>
		<TR>
			<TD><?php echo $row["reg"];?></TD>
			<TD><?php echo $row["name_sci"];?></TD>
			<TD><?php echo $row["name_in"];?></TD>
			<TD><?php echo $row["email"];?></TD>
			<TD><?php echo $row["mob"];?></TD>
			
			</TR>	
<?php	
    }?>
	</table>
<?php
	} else {
    echo "0 results";
}

?>