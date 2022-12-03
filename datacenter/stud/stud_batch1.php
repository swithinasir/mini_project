<?php
session_start();
include("../conn/config1.php");
?>
<html>


<style>
 .required:after { content:" *";color: #e32; }
* {
    box-sizing: border-box;
}

input[type=text],[type=date],[type=email], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}

label {
    padding: 12px 12px 12px 0;
    display: inline-block;
}

input[type=submit] {
    background-color: #4CAF25;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}

.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

.col-25 {
    float: left;
    width: 25%;
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
    .col-25, .col-25, input[type=submit] {
        width: 100%;
        margin-top: 0;
    }
}
.message{color:#FF0000;
font-size: small;
font-weight: bold; 
white-space: pre;
}
.avatar {
  float: right;
  width: 60px;
  height: 60px;
  border-radius: 50%;
  

  position: -webkit-sticky;
  position: sticky;
  top: 0;
}
</style>
<?php
$from1=$_POST['from'];
$to1=$_POST['to'];
$batch="".$from1."-".$to1;
$cat=$_POST['cat'];
$year=$_POST['year'];
$sem=$_POST['sem'];
$sec=$_POST['sec'];
$level=$_POST['level'];
/*----------THE First FUNCTION STARTS FROM HERE . This is used for displaying attend progarm with all  category---------*/ 
function tab($deptid,$batch,$cat,$year,$sem,$level,$sec)
{
	include("../conn/config1.php");
	$abc=$deptid."_stud";
	
		$sql2="SELECT * FROM `$abc` WHERE batch='$batch' && year='$year' && sem='$sem' && level='$level' && sec='$sec'";
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
							?>
							<TR>
			<form action="stud_update.php" method="post" >
			<TD><input type="text" name="g_boys" value="<?php echo $row1["g_boys"];?>"></TD>
			<TD><input type="text" name="g_girls" value="<?php echo $row1["g_girls"];?>"></TD>
			<TD><input type="text" name="c_oc" value="<?php echo $row1["c_oc"];?>"></TD>
			<TD><input type="text" name="c_bc" value="<?php echo $row1["c_bc"];?>"></TD>
			<TD><input type="text" name="c_bcm" value="<?php echo $row1["c_bcm"];?>"></TD>
			<TD><input type="text" name="c_mbc" value="<?php echo $row1["c_mbc"];?>"></TD>
			<TD><input type="text" name="c_sc" value="<?php echo $row1["c_sc"];?>"></TD>
			<TD><input type="text" name="c_sca" value="<?php echo $row1["c_sca"];?>"></TD>
			<TD><input type="text" name="c_st" value="<?php echo $row1["c_st"];?>"></TD>
			<TD><input type="text" name="new_j" value="<?php echo $row1["new_j"];?>"></TD>
			<TD><input type="text" name="drop" value="<?php echo $row1["drop"];?>"></TD>
			<TD><input type="text" name="stud" value="<?php echo $row1["stud"];?>"></TD>
			<input type="hidden" name="id" value="<?php echo $row1["id"];?>">
			<TD><input type="submit" name="update_stud" value="UPDATE"></TD>
			</form>
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
			echo "<br>";
			echo "<b>SECTION</b> : <i>",$sec,"</i>";
		?>
		
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
			<TH>New Join</TH>
			<TH>Drop Out</TH>
			<TH>Total Students</TH>
			</TR>
			
			<?php
			while($row = $result->fetch_assoc()) 
			{
				$sid = 0;
				$deptid=$row['deptid'];
					tab($deptid,$batch,$cat,$year,$sem,$sec);
				
			}
			?>
		</TABLE>
		<?php
	}
	if($cat=='dept')
	{
			$sid = 0;
			$deptid=$_SESSION['deptid'];	
			echo "<br>";
			echo "<b>DEPARTMENT</b> : <i>",$deptid,"</i>";
			echo "<br>";
			echo "<b>BATCH</b> : <i>",$batch,"</i>";
			echo "<br>";
			echo "<b>YEAR</b> : <i>",$year,"</i>";
			echo "<br>";
			echo "<b>SEMESTER</b> : <i>",$sem,"</i>";
			echo "<br>";
			echo "<b>SECTION</b> : <i>",$sec,"</i>";
		?>
		
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
			<TH>New Join</TH>
			<TH>Drop Out</TH>
			<TH>Total Students</TH>
			<TH>Action</TH>
			</TR>
			
			<?php
					tab($deptid,$batch,$cat,$year,$sem,$level,$sec);
			?>			
		</TABLE>		
		<?php
	}
	
}
 
?>	
