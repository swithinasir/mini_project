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
$meet=$_POST['meet'];
if($ayear == 'none')
{	
	if($meet == 'all')
{
	$sql="SELECT * FROM ins_info";
}
else
{
	
	$sql="SELECT * FROM ins_info WHERE  meet='$meet'";
}
}
else
{
	if($meet == 'all')
{
	$sql="SELECT * FROM ins_info WHERE ayear='$ayear'";
}
else
{
	$sql="SELECT * FROM ins_info WHERE ayear='$ayear' && meet='$meet'";
}
}


$result = $con->query($sql);
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
		?>
		<div class="row">
			<div class="col-25">
				<?php echo"Academic Year";?>
			</div>  
			<div class="col-75">
				<?php echo $row["ayear"];?>
			</div>
		</div>	
		<div class="row">
			<div class="col-25">
				<?php echo"DATE";?>
			</div>  
			<div class="col-75">
				<?php echo $row["date"];?>
			</div>
		</div>	
		<div class="row">
			<div class="col-25">
				<?php echo"Purpose of Meeting";?>
			</div>  
			<div class="col-75">
				<?php echo $row["meet"];?>
			</div>
		</div>	
		<div class="row">
			<div class="col-25">
				<?php echo"Discription";?>
			</div>  
			<div class="col-75">
				<?php echo $row["dis"];?>
			</div>
		</div>
<br><br><br>		
<?php	
    }
} else {
    echo "0 results";
}

?>