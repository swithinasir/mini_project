<?php
session_start();

//$page = $_SERVER['PHP_SELF'];
//$sec = "2";
/* <meta http-equiv="refresh" content="<?php echo $sec?>;URL='<?php echo $page?>'">*/
include("../../conn/config.php");
?>
<!DOCTYPE html>
<html>
<head>

<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: Skyblue;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 16px 50px;
	border-right:2px solid #bbb;

    text-decoration: none;
}

li a:hover {
    background-color: #111;
}
</style>
<script>
function myFunction() {
    alert("Check Whether You Have Entered Your Previous Education Details");
	parent.frame1.location='ten_fac.php';
}
</script>
</head>
<body>

<ul>
  <li><a class="active"  href="ten_fac.php" target= "frame1" >10<sup>th</sup></a></li>
  <?php
$sid=$_SESSION['sid'];
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac_edu";
$sql1="SELECT * FROM `$aaa` WHERE sid = '$sid'";
	$result = $con->query($sql1);
	if ($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
		
	if ($row["skey"] == 1) {
		?>
		  <li><a href="twelve_fac.php" target= "frame1">12<sup>th</sup>or Diploma</a></li>
		<?php
	}
	
	else
	{
		?>
  <li><a onClick="myFunction()">12<sup>th</sup>or Diploma</a></li>
 <?php
	}
	}
	}
	else
	{
		?>
  <li><a onClick="myFunction()">12<sup>th</sup>or Diploma</a></li>
 <?php
	}
 
	$sql2="SELECT * FROM `$aaa` WHERE sid = '$sid'";
	$result1 = $con->query($sql2);
	if ($result1->num_rows > 0) {
	while($row = $result1->fetch_assoc()) {
		
	if ($row["s2key"] == 1 || $row["dkey"] == 1 ) {
	?>
 <li><a href="ug_fac.php" target= "frame1">UG</a></li>
 <?php
	}
	
	else
	{
		?>
  <li><a onClick="myFunction()">UG</a></li>
  <?php
	}
	}
	}
	else
	{
		?>
  <li><a onClick="myFunction()">UG</a></li>
  <?php
	}
	$sql3="SELECT * FROM `$aaa` WHERE sid = '$sid'";
	$result2 = $con->query($sql3);
	if ($result2->num_rows > 0) {
	while($row = $result2->fetch_assoc()) {
		
	if ($row["ukey"] == 1) {
	?>
	<li><a href="pg_fac.php" target= "frame1">PG</a></li>
	<?php
	}
	
	else
	{
		?>
		 <li><a onClick="myFunction()">PG</a></li>
	 <?php
	}
	}
	}
	else
	{
		?>
		 <li><a onClick="myFunction()">PG</a></li>
	 <?php
	}
	
	$sql4="SELECT * FROM `$aaa` WHERE sid = '$sid'";
	$result3 = $con->query($sql4);
	if ($result3->num_rows > 0) {
	while($row = $result3->fetch_assoc()) {
		
	if ($row["pkey"] == 1) {
	?>	 
   <li><a href="mphil_fac.php" target= "frame1">M.Phil</a></li>
   <?php
	} 
	else
	{
		?>
		   <li><a onClick="myFunction()">M.Phil</a></li>
 <?php
	}
	}
	}
	else
	{
		?>
		   <li><a onClick="myFunction()">M.Phil</a></li>
 <?php
	}
	
	$sql5="SELECT * FROM `$aaa` WHERE sid = '$sid'";
	$result4 = $con->query($sql5);
	if ($result4->num_rows > 0) {
	while($row = $result4->fetch_assoc()) {
		
	if ($row["mkey"] == 1) {
	?>	
  <li><a href="phd_fac.php" target= "frame1">Ph.D</a></li>
  <?php
	}
	
	else
	{
		?>
		 <li><a onClick="myFunction()">Ph.D</a></li>
		 <?php
	}
	}
	}
	else
	{
		?>
		 <li><a onClick="myFunction()">Ph.D</a></li>
		 <?php
	}
	
	?>
</ul>

</body>
</html>
