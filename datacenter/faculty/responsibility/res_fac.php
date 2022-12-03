<?php
session_start();
include("../../conn/config.php");

?>
<html>


<style>
.required:after { content:" *";color: #e32; }

* {
    box-sizing: border-box;
}

input[type=text],input[type=date],td, select, textarea {
 
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
	   background-color: #f2f2f2;
}

label {
    padding: 12px 12px 12px 0;
    display: inline-block;
}

input[type=submit] {
    background-color: #4CAF50;
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

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .col-25, .col-75, input[type=submit] {
        width: 100%;
        margin-top: 0;
    }
}
</style>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/style.min.css" rel="stylesheet">

<style>
.active {
  background-color: #333;
  color: white;
}

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
 <nav class="navbar navbar-inverse navbar-fixed-top">

<ul>
 <h1 align="center">RESPONSIBILITY</h1>
</ul>
</nav>
<br>
<br>
<br>
<br>
<!-- view-->
<div class="container">
<?php
$sid=$_SESSION['sid'];
$deptid=$_SESSION['deptid'];
$aaa=$deptid."_fac_member";
$sql1="SELECT * FROM `$aaa` WHERE sid = '$sid'";
	$result = $con->query($sql1);
	if ($result->num_rows > 0) 
	{		
echo'<br>';
			echo'<div class="row">';
			
			echo'<TABLE id="dataTable" width="100%" border="1">';
			echo'<TR>';
			echo'<TH>Academic Year</TH>';
			echo'<TH>Types of Responsibility</TH>';
			echo'<TH>Level </TH>';			
			echo'</TR>';
		while($row = $result->fetch_assoc()) 
		{
			
			for( $i=1; $i<=$row["reskey"];$i++)
			{
				$res0="res".$i;
				$level0="level".$i;
				
		
				echo'<TR>';
				echo'<TD><center>';
				echo $row["ayear"];
				echo '</center></TD>';
				echo'<TD><center>';
				echo $row["$res0"];
				echo'</center></TD>';
				echo'<TD><center>';
				echo $row["$level0"];
				echo'</center></TD>';
				echo'</TR>';
        
			}
			
		}
	}
?>
</div>
<br>
<!-- close-->

<div class="container">
  <form action="res_fac.php" method="post">
    <div class="row">
      <div class="col-25">
        <label for="fname" class="required">Academic Year</label>
      </div>
      <div class="col-25">
       <select name="ayear" required>
		<?php
$end=date("Y");
if(date("m")<6)
{
	$end=$end-1;
}
for($i=1987;$i<=$end;$i++)
{
	$cu=$i+1;
	$j=$i."-".$cu;
	echo"<option value='". $j ."'> ",$j,"</option>";
}
?> 
</select>
      </div>
    </div>
	 <div class="row">
      <div class="col-25">
        <label for="fname" class="required">Type of Responsibility</label>
      </div>  
	<div class="col-75">
        <input type="text" id="res" name="res" required>
      </div>
    </div>	  
    
	
	 <div class="row">
      <div class="col-25">
        <label for="fname" class="required">Level</label>
      </div>
      <div class="col-75">
	  
	<input type="radio" name="level" value="department"> Depatrment<br>
  <input type="radio" name="level" value="institute"> Institute<br>
  <input type="radio" name="level" value="out"> Out Reach Activity<br>
 
	</div>
	</div>
	  
	
   
	
	 <div class="row">
      <br>
    </div>
	
    <div class="row">
      <input type="submit" value="Submit" name="submit">
    </div>
  </form>
</div>
<br>
</html>
<?php

if(isset($_POST["submit"])){
	
 $ayear=$_POST["ayear"];
 $res=$_POST["res"];
 $level =$_POST["level"];

 $sid=$_SESSION['sid'];
 $deptid=$_SESSION['deptid'];
 $aaa=$deptid."_fac_member";
 


		
		$sql6 = "INSERT into `$aaa` (sid,ayear,res1,level1,reskey) VALUES ('$sid','$ayear','$res','$level',1)";	
		if(mysqli_query($con,$sql6))
		{
			 echo "".$level."".$res;
			echo '<script language="javascript">alert("Responsibility Details Inserted Successfully");</script>';
			echo '<script type="text/javascript">window.location.href = "res_fac.php";</script>';
		}
		
	
}

?>