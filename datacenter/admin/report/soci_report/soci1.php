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
$ayear=$_POST['ayear'];
$soci=$_POST['soci'];
if($ayear == 'all')
{	
	if($soci == 'all')
{
	$sql="SELECT * FROM soci_org  ORDER BY ayear DESC";
}
else
{
	
	$sql="SELECT * FROM soci_org WHERE  name_sci='$soci' ORDER BY ayear DESC";
}
}
else
{
	if($soci == 'all')
{
	$sql="SELECT * FROM soci_org WHERE ayear='$ayear' ORDER BY ayear DESC";
}
else
{
	$sql="SELECT * FROM soci_org WHERE ayear='$ayear' && name_sci='$soci' ORDER BY ayear DESC";
}
}


$result = $con->query($sql);
if ($result->num_rows > 0) {
    // output data of each row
	?>
	<div align="right">
			<form action="soci2.php" method="post">
				<input type="hidden" name="ayear" value="<?php echo $ayear; ?>">
				<input type="hidden" name="soci" value="<?php echo $soci; ?>">
				<button>
					<img width="50px" height="50px" src="../../../images/word.png">
				</button>
			</form><br>
		</div>
	<?php	
	echo'<TABLE id="dataTable" width="100%" border="1">';
			echo'<TR>';
			echo'<TH>Academic Year</TH>';
			echo'<TH>Name of the Society</TH>';
			echo'<TH>Name of the Program</TH>';
			echo'<TH>Title of the Program</TH>';
			echo'<TH>Funded By</TH>';
			echo'<TH>No.Of.Days</TH>';
			echo'<TH>From </TH>';
			echo'<TH>To </TH>';
			echo'<TH>Date </TH>';
			echo'<TH>Resource Person</TH>';
			echo'<TH>No. of Participants</TH>';
			echo'<TH>Level Of The Program</TH>';
			echo'</TR>';
    while($row = $result->fetch_assoc()) {
		?>
		<TR>
			<TD><?php echo $row["ayear"];?></TD>
			<TD><?php echo $row["name_sci"];?></TD>
			<TD><?php echo $row["orgcategory1"];?></TD>
			<TD><?php echo $row["orgtitle1"];?></TD>
			<TD><?php echo $row["orgfun1"];?></TD>
			<TD><?php echo $row["orgdays1"];?></TD>
			
			<TD>
			<?php
				$days=$row["orgdays1"];
				if($days==1)
				{
				echo "--";
				}
				else
				{
					 echo $row["orgfrom1"];
				}
				?>
				</TD>
				<TD>
				<?php
				if($days==1)
				{
				echo "--";
				}
				else
				{
					echo $row["orgto1"];
				}
				?>
				</TD>
				<TD>
				<?php
				if($days==1)
				{
					 echo $row["orgdate1"];
					}
				else
				{
				echo "--";
				}
				?>
				</TD>		
			<TD><?php echo $row["orgres1"];?></TD>
			<TD><?php echo $row["orgpar1"];?></TD>
			<TD><?php echo $row["orglevel1"];?></TD>
			</TR>	
<?php	
    }?>
	</table>
<?php
	} else {
    echo "0 results";
}

?>