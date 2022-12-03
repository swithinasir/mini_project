<?php
session_start();
include("../../../conn/config1.php");
?>
<style>
.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

.col-75 {
    float: left;
    width: 75%;
    margin-top: 6px;
}
.col-50 {
    float: left;
    width: 50%;
    margin-top: 6px;
}
/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .col-25, .col-50, .col-75, input[type=submit] {
        width: 100%;
        margin-top: 0;
    }
}
</style>
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